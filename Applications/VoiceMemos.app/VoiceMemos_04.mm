id sub_1000EB614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCRecordButtonRepository();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000EB694(void *a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v64 = type metadata accessor for Date();
  v5 = *(v64 - 8);
  v7 = __chkstk_darwin(v64, v6);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v62 = &v61 - v10;
  v11 = sub_1000C773C(&qword_1002CED20);
  v13 = __chkstk_darwin(v11 - 8, v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v61 - v17;
  v19 = sub_1000C773C(&qword_1002D5FA0);
  v21 = __chkstk_darwin(v19 - 8, v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v24);
  v26 = &v61 - v25;
  v27 = [v3 init];
  v28 = [a1 title];
  if (v28)
  {
    v29 = v28;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v30 = String._bridgeToObjectiveC()();

  [v27 setTitle:v30];

  v31 = [a1 url];
  if (v31)
  {
    v32 = v31;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = type metadata accessor for URL();
    (*(*(v33 - 8) + 56))(v23, 0, 1, v33);
  }

  else
  {
    v33 = type metadata accessor for URL();
    (*(*(v33 - 8) + 56))(v23, 1, 1, v33);
  }

  sub_10001DBEC(v23, v26, &qword_1002D5FA0);
  type metadata accessor for URL();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v26, 1, v33) == 1)
  {
    sub_100003CBC(v26, &qword_1002D5FA0);
  }

  else
  {
    URL.path.getter();
    (*(v34 + 8))(v26, v33);
  }

  v35 = String._bridgeToObjectiveC()();

  [v27 setPath:v35];

  v36 = [a1 userFolder];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 name];

    if (!v38)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = String._bridgeToObjectiveC()();
    }
  }

  else
  {
    v38 = 0;
  }

  [v27 setFolder:v38];

  type metadata accessor for RCAudioCodecName(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 setCodecs:isa];

  [a1 length];
  v40 = Double._bridgeToObjectiveC()().super.super.isa;
  [v27 setDurationMillis:v40];

  v41 = [a1 creationDate];
  if (v41)
  {
    v42 = v41;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = v64;
  (*(v5 + 56))(v15, v43, 1, v64);
  sub_10001DBEC(v15, v18, &qword_1002CED20);
  if ((*(v5 + 48))(v18, 1, v44) == 1)
  {
    sub_100003CBC(v18, &qword_1002CED20);
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    (*(v5 + 8))(v18, v44);
  }

  v45 = Double._bridgeToObjectiveC()().super.super.isa;
  [v27 setCreationTimeMillis:v45];

  v46 = [a1 deletionDate];
  if (v46)
  {
    v47 = v61;
    v48 = v46;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v62;
    (*(v5 + 32))(v62, v47, v44);
    Date.timeIntervalSince1970.getter();
    v50 = Double._bridgeToObjectiveC()().super.super.isa;
    [v27 setDeletionTimeMillis:v50];

    (*(v5 + 8))(v49, v44);
  }

  v51 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(a1, "favorite")}];
  [v27 setFavorite:v51];

  v52 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(a1, "recordedOnWatch")}];
  [v27 setRecordedOnWatch:v52];

  v53 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(a1, "enhanced")}];
  [v27 setEnhanced:v53];

  v54 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(a1, "composedAssetHasMultipleTracks")}];
  [v27 setMultiLayer:v54];

  [a1 layerMix];
  v56 = v55;
  v57 = objc_allocWithZone(NSNumber);
  LODWORD(v58) = v56;
  v59 = [v57 initWithFloat:v58];
  [v27 setMultiLayerMix:v59];

  return v27;
}

void sub_1000EBF60(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (v7)
    {
      v10 = sub_1000EC158();
      if (v10)
      {
        sub_10000AACC((v10 + 144), *(v10 + 168));
        Tracker.transaction(block:)();
      }
    }

    else
    {
      Logger.init(subsystem:category:)();
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Recording Stopped", v13, 2u);
      }

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t sub_1000EC158()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_100015FE8();
  if ((v3 & 1) == 0)
  {

    return 0;
  }

  sub_1000CC430(*(v1 + 56) + 40 * v2, v6);

  sub_1000C773C(&qword_1002CFE00);
  type metadata accessor for UserEventsSessionManager();
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EC210()
{
  v1[59] = v0;
  v2 = type metadata accessor for RCAnalyticsAppSessionManagerFactory();
  v1[60] = v2;
  v1[61] = *(v2 - 8);
  v1[62] = swift_task_alloc();
  v3 = type metadata accessor for DiagnosticsConsentProvider();
  v1[63] = v3;
  v1[64] = *(v3 - 8);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v4 = type metadata accessor for Session.Kind();
  v1[69] = v4;
  v1[70] = *(v4 - 8);
  v1[71] = swift_task_alloc();
  v5 = type metadata accessor for UserDataConfiguration();
  v1[72] = v5;
  v1[73] = *(v5 - 8);
  v1[74] = swift_task_alloc();
  sub_1000C773C(&qword_1002CFE08);
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[78] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[79] = v7;
  v1[80] = v6;

  return _swift_task_switch(sub_1000EC490, v7, v6);
}

uint64_t sub_1000EC490()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 472);
  v5 = OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_analyticsAppSessionManagerFactory;
  *(v0 + 648) = OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_analyticsAppSessionManagerFactory;
  swift_beginAccess();
  sub_10000B46C(v4 + v5, v1, &qword_1002CFE08);
  v6 = *(v3 + 48);
  *(v0 + 656) = v6;
  *(v0 + 664) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v2) == 1)
  {
    v7 = *(v0 + 568);
    v8 = *(v0 + 560);
    sub_100003CBC(*(v0 + 616), &qword_1002CFE08);
    *(v0 + 696) = enum case for Session.Kind.userEvents(_:);
    v9 = *(v8 + 104);
    *(v0 + 672) = v9;
    *(v0 + 680) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v9(v7);
    type metadata accessor for AnalyticsActor();
    *(v0 + 688) = static AnalyticsActor.shared.getter();
    sub_1000EF394();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000EC6F4, v11, v10);
  }

  else
  {
    v12 = *(v0 + 616);

    sub_100003CBC(v12, &qword_1002CFE08);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1000EC6F4()
{
  v1 = v0[74];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];

  sub_100191560(v2, v1);
  (*(v3 + 8))(v2, v4);
  v5 = v0[80];
  v6 = v0[79];

  return _swift_task_switch(sub_1000EC798, v6, v5);
}

uint64_t sub_1000EC798()
{
  v73 = v0;
  v70 = *(v0 + 656);
  v1 = *(v0 + 648);
  v2 = *(v0 + 608);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 480);
  v7 = *(v0 + 488);
  v8 = *(v0 + 472);

  (*(v4 + 16))(v2, v3, v5);
  static DiagnosticsConsentProvider.default.getter();
  *(v2 + *(v6 + 24)) = 0;
  (*(v7 + 56))(v2, 0, 1, v6);
  swift_beginAccess();
  sub_1000EF3EC(v2, v8 + v1);
  swift_endAccess();
  v9 = sub_1000EBEFC();
  if (v70(v10, 1, v6))
  {
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    (v9)(v0 + 392, 0);
    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v14 = *(v0 + 656);
    v15 = *(v0 + 648);
    v16 = *(v0 + 600);
    v18 = *(v0 + 472);
    v17 = *(v0 + 480);
    sub_1001A69C8();
    (v9)(v0 + 392, 0);
    sub_10000B46C(v18 + v15, v16, &qword_1002CFE08);
    if (v14(v16, 1, v17))
    {
      v19 = *(v0 + 600);
      (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));

      sub_100003CBC(v19, &qword_1002CFE08);
    }

    else
    {
      v68 = *(v0 + 672);
      v67 = *(v0 + 696);
      v22 = *(v0 + 600);
      v66 = *(v0 + 552);
      v23 = *(v0 + 544);
      v24 = *(v0 + 536);
      v25 = *(v0 + 528);
      v64 = *(v0 + 568);
      v65 = *(v0 + 520);
      v26 = *(v0 + 504);
      v27 = *(v0 + 512);
      v28 = *(v0 + 496);
      sub_1000EF45C(v22, v28);
      sub_100003CBC(v22, &qword_1002CFE08);
      v71 = v27;
      v29 = *(v27 + 16);
      v29(v24, v28 + *(v6 + 20), v26);
      sub_1000EF4C0(v28);
      (*(v27 + 32))(v23, v24, v26);
      v30 = type metadata accessor for Client();
      v31 = [objc_opt_self() mainBundle];
      v32 = Client.__allocating_init(bundle:)();
      *(v0 + 40) = v30;
      *(v0 + 48) = &off_10028EDC0;
      *(v0 + 16) = v32;
      v33 = [objc_opt_self() currentDevice];
      v34 = [v33 userInterfaceIdiom];

      *(v0 + 56) = v34;
      *(v0 + 64) = sub_100015304();
      *(v0 + 72) = v35;
      *(v0 + 80) = RCIsInternalInstall();
      *(v0 + 88) = sub_100015304();
      *(v0 + 96) = v36;
      sub_1000C773C(&qword_1002CFE18);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100242C70;
      sub_100015488(v0 + 16, v0 + 104);
      v29(v25, v23, v26);
      v69 = type metadata accessor for UserEventsSessionManager();
      v38 = swift_allocObject();
      *(v38 + 184) = 0u;
      *(v38 + 200) = 0u;
      *(v38 + 216) = 0;
      sub_100015488(v0 + 104, v0 + 192);
      v68(v64, v67, v66);
      v29(v65, v25, v26);
      type metadata accessor for SessionManagerController();
      swift_allocObject();

      v40 = sub_1001A7624(v39, v0 + 192, v64, v65);
      *(v38 + 16) = v40;
      v41 = type metadata accessor for AppLifecycleTrackingController();
      v42 = swift_allocObject();
      *(v42 + 16) = *(v40 + 56);
      swift_retain_n();
      swift_retain_n();
      Tracker.onSessionChange(block:)();

      *(v38 + 48) = v41;
      *(v38 + 56) = &protocol witness table for AppLifecycleTrackingController;
      *(v38 + 24) = v42;
      v43 = type metadata accessor for RecordingDurationTrackingController();
      v44 = swift_allocObject();
      *(v44 + 16) = v40;
      *(v44 + 24) = *(v40 + 56);
      *(v38 + 88) = v43;
      *(v38 + 96) = &off_100294960;
      *(v38 + 64) = v44;
      v45 = type metadata accessor for SessionSummaryTrackingController();
      swift_allocObject();

      v46 = sub_100015978(v40);

      *(v38 + 128) = v45;
      *(v38 + 136) = &off_100295B48;
      *(v38 + 104) = v46;
      v47 = type metadata accessor for AudioEngineTrackingController();
      v48 = swift_allocObject();

      v49 = Tracker.chain(name:identifier:)();

      *(v48 + 16) = v49;
      *(v38 + 168) = v47;
      *(v38 + 176) = &off_1002934E8;
      *(v38 + 144) = v48;

      v50 = *(v71 + 8);
      v50(v25, v26);
      sub_1000158B8(v0 + 104);
      *(inited + 56) = v69;
      *(inited + 64) = &off_100294C80;
      *(inited + 32) = v38;
      v72 = _swiftEmptyArrayStorage;
      sub_100015A80(0, 1, 0);
      v51 = _swiftEmptyArrayStorage;
      sub_1000CC430(inited + 32, v0 + 352);

      sub_10000AACC((v0 + 352), *(v0 + 376));
      v53 = _swiftEmptyArrayStorage[2];
      v52 = _swiftEmptyArrayStorage[3];
      if (v53 >= v52 >> 1)
      {
        sub_100015A80((v52 > 1), v53 + 1, 1);
        v51 = v72;
      }

      v51[2] = v53 + 1;
      v54 = &v51[5 * v53];
      v55 = *(v0 + 352);
      v56 = *(v0 + 368);
      v54[8] = *(v0 + 384);
      *(v54 + 2) = v55;
      *(v54 + 3) = v56;
      if (v53 == -1)
      {
        v57 = &_swiftEmptyDictionarySingleton;
      }

      else
      {
        sub_1000C773C(&qword_1002CE590);
        v57 = static _DictionaryStorage.allocate(capacity:)();
      }

      v72 = v57;
      sub_100015C50(v51, 1, &v72);
      v58 = *(v0 + 592);
      v59 = *(v0 + 584);
      v60 = *(v0 + 576);
      v61 = *(v0 + 544);
      v62 = *(v0 + 504);
      v63 = *(v0 + 472);

      v50(v61, v62);
      (*(v59 + 8))(v58, v60);
      *(v63 + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager) = v72;

      sub_1000158B8(v0 + 16);
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000ED17C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000ED214, v4, v3);
}

uint64_t sub_1000ED214()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1000ED2C4;

  return sub_1000EC210();
}

uint64_t sub_1000ED2C4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000ED3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  sub_1000C773C(&unk_1002D1D90);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[14] = v5;
  *v5 = v4;
  v5[1] = sub_1000ED4D4;

  return sub_1000EC210();
}

uint64_t sub_1000ED4D4()
{

  return _swift_task_switch(sub_1000ED5D0, 0, 0);
}

uint64_t sub_1000ED5D0()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0[11] + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v27 = *(v0[11] + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v25 = v8;
  v26 = v3;
  while (v7)
  {
LABEL_10:
    v12 = v0[12];
    v13 = v0[13];
    sub_1000CC430(*(v27 + 56) + 40 * (__clz(__rbit64(v7)) | (v10 << 6)), (v0 + 2));
    v14 = *sub_10000AACC(v0 + 2, v0[5]);
    v15 = type metadata accessor for TaskPriority();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v13, 1, 1, v15);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v14;
    sub_10000B46C(v13, v12, &unk_1002D1D90);
    LODWORD(v13) = (*(v16 + 48))(v12, 1, v15);

    v18 = v0[12];
    if (v13 == 1)
    {
      sub_100003CBC(v0[12], &unk_1002D1D90);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v16 + 8))(v18, v15);
    }

    v19 = v17[2];
    swift_unknownObjectRetain();

    if (v19)
    {
      swift_getObjectType();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      v22 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v3 = v26;
    sub_100003CBC(v0[13], &unk_1002D1D90);
    v23 = swift_allocObject();
    *(v23 + 16) = &unk_1002434D8;
    *(v23 + 24) = v17;
    if (v22 | v20)
    {
      v0[7] = 0;
      v0[8] = 0;
      v0[9] = v20;
      v0[10] = v22;
    }

    v7 &= v7 - 1;
    swift_task_create();

    result = sub_100003CBC((v0 + 2), &qword_1002CFDF8);
    v8 = v25;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1000ED964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for Session.Kind();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[11] = v6;
  *v6 = v4;
  v6[1] = sub_1000EDA54;

  return sub_1000EC210();
}

uint64_t sub_1000EDA54()
{

  return _swift_task_switch(sub_1000EDB50, 0, 0);
}

uint64_t sub_1000EDB50()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = v0[9];
  v6 = -1;
  v7 = -1 << *(*(v0[7] + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v2;
  v9 = (63 - v7) >> 6;
  v20 = (v5 + 88);
  v21 = (v5 + 16);
  v19 = enum case for Session.Kind.userEvents(_:);
  v10 = (v5 + 8);
  v22 = *(v0[7] + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v8)
  {
LABEL_10:
    v14 = v0[10];
    v15 = v0[8];
    sub_1000CC430(*(v22 + 56) + 40 * (__clz(__rbit64(v8)) | (v12 << 6)), (v0 + 2));
    v16 = *(*sub_10000AACC(v0 + 2, v0[5]) + 16);
    AppSessionManager.startAppSession()();
    (*v21)(v14, v16 + OBJC_IVAR____TtC10VoiceMemos24SessionManagerController_sessionKind, v15);
    v17 = (*v20)(v14, v15);
    (*v10)(v14, v15);
    if (v17 == v19)
    {
      sub_100016964();

      dispatch thunk of FlushManager.repairThenFlush(repair:completion:)();
    }

    v8 &= v8 - 1;
    result = sub_100003CBC((v0 + 2), &qword_1002CFDF8);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = *(v3 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000EDDCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  sub_100179578(0, 0, v9, a4, v11);
}

uint64_t sub_1000EDEC8()
{
  v1 = sub_1000C773C(&unk_1002D1D90);
  v3 = __chkstk_darwin(v1 - 8, v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v28 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v30 = v9;
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  v28 = v10;
  v29 = v8;
  while (v13)
  {
LABEL_10:
    sub_1000CC430(*(v30 + 56) + 40 * (__clz(__rbit64(v13)) | (v16 << 6)), v35);
    v18 = *sub_10000AACC(v35, v35[3]);
    v19 = type metadata accessor for TaskPriority();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v8, 1, 1, v19);
    type metadata accessor for MainActor();

    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v18;
    sub_10000B46C(v8, v5, &unk_1002D1D90);
    LODWORD(v21) = (*(v20 + 48))(v5, 1, v19);

    if (v21 == 1)
    {
      sub_100003CBC(v5, &unk_1002D1D90);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v20 + 8))(v5, v19);
    }

    v23 = v22[2];
    swift_unknownObjectRetain();

    v8 = v29;
    if (v23)
    {
      swift_getObjectType();
      v24 = dispatch thunk of Actor.unownedExecutor.getter();
      v26 = v25;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v10 = v28;
    sub_100003CBC(v8, &unk_1002D1D90);
    v27 = swift_allocObject();
    *(v27 + 16) = &unk_100243500;
    *(v27 + 24) = v22;
    if (v26 | v24)
    {
      v31 = 0;
      v32 = 0;
      v33 = v24;
      v34 = v26;
    }

    v13 &= v13 - 1;
    swift_task_create();

    result = sub_100003CBC(v35, &qword_1002CFDF8);
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EE2C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = sub_100003CBC(v13, &qword_1002CFDF8))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_1000CC430(*(v1 + 56) + 40 * (v9 | (v8 << 6)), v13);
    v10 = sub_10000AACC(v13, v13[3]);
    v11 = *(*v10 + 48);
    v12 = *(*v10 + 56);
    sub_10000AACC((*v10 + 24), v11);
    (*(v12 + 8))(v11, v12);
    SessionManager.endSync()();
    AppSessionManager.appSessionDidTerminate()();
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EE478()
{
  v1 = sub_1000C773C(&unk_1002D1D90);
  v3 = __chkstk_darwin(v1 - 8, v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v32 = &v28 - v7;
  v8 = *(v0 + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v31 = v8;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v29 = v13;
  v30 = v9;
  while (v12)
  {
LABEL_10:
    sub_1000CC430(*(v31 + 56) + 40 * (__clz(__rbit64(v12)) | (v15 << 6)), v37);
    v17 = *sub_10000AACC(v37, v37[3]);
    v18 = type metadata accessor for TaskPriority();
    v19 = *(v18 - 8);
    v20 = v32;
    (*(v19 + 56))(v32, 1, 1, v18);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v17;
    sub_10000B46C(v20, v5, &unk_1002D1D90);
    v22 = (*(v19 + 48))(v5, 1, v18);

    if (v22 == 1)
    {
      sub_100003CBC(v5, &unk_1002D1D90);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v19 + 8))(v5, v18);
    }

    v23 = v21[2];
    swift_unknownObjectRetain();

    v13 = v29;
    if (v23)
    {
      swift_getObjectType();
      v24 = dispatch thunk of Actor.unownedExecutor.getter();
      v26 = v25;
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v9 = v30;
    sub_100003CBC(v32, &unk_1002D1D90);
    v27 = swift_allocObject();
    *(v27 + 16) = &unk_1002434F0;
    *(v27 + 24) = v21;
    if (v26 | v24)
    {
      v33 = 0;
      v34 = 0;
      v35 = v24;
      v36 = v26;
    }

    v12 &= v12 - 1;
    swift_task_create();

    result = sub_100003CBC(v37, &qword_1002CFDF8);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_1000EE888()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCAnalyticsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000EE928()
{
  sub_1000EE9D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000EE9D0()
{
  if (!qword_1002CFDF0)
  {
    type metadata accessor for RCAnalyticsAppSessionManagerFactory();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002CFDF0);
    }
  }
}

void sub_1000EEA28()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  if (*(v1 + 16))
  {

    v2 = sub_100015FE8();
    if (v3)
    {
      sub_1000CC430(*(v1 + 56) + 40 * v2, v5);

      sub_1000C773C(&qword_1002CFE00);
      type metadata accessor for UserEventsSessionManager();
      if (swift_dynamicCast())
      {
        *(*sub_10000AACC((v4 + 104), *(v4 + 128)) + 34) = 1;
      }
    }

    else
    {
    }
  }
}

void sub_1000EEB40()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  if (*(v1 + 16))
  {

    v2 = sub_100015FE8();
    if (v3)
    {
      sub_1000CC430(*(v1 + 56) + 40 * v2, v5);

      sub_1000C773C(&qword_1002CFE00);
      type metadata accessor for UserEventsSessionManager();
      if (swift_dynamicCast())
      {
        *(*sub_10000AACC((v4 + 104), *(v4 + 128)) + 33) = 1;
      }
    }

    else
    {
    }
  }
}

void sub_1000EECB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  if (*(v1 + 16))
  {

    v2 = sub_100015FE8();
    if (v3)
    {
      sub_1000CC430(*(v1 + 56) + 40 * v2, v4);

      sub_1000C773C(&qword_1002CFE00);
      type metadata accessor for UserEventsSessionManager();
      if (swift_dynamicCast())
      {
        sub_10018BA74(v4);
        sub_10000AACC(v4, v4[3]);
        Tracker.transaction(block:)();

        sub_100014B64(v4);
      }
    }

    else
    {
    }
  }
}

void sub_1000EEE10()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  if (*(v1 + 16))
  {

    v2 = sub_100015FE8();
    if (v3)
    {
      sub_1000CC430(*(v1 + 56) + 40 * v2, v5);

      sub_1000C773C(&qword_1002CFE00);
      type metadata accessor for UserEventsSessionManager();
      if (swift_dynamicCast())
      {
        *(*sub_10000AACC((v4 + 104), *(v4 + 128)) + 32) = 1;
      }
    }

    else
    {
    }
  }
}

void sub_1000EEF28()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos18RCAnalyticsManager_sessionManager);
  if (*(v1 + 16))
  {

    v2 = sub_100015FE8();
    if (v3)
    {
      sub_1000CC430(*(v1 + 56) + 40 * v2, v5);

      sub_1000C773C(&qword_1002CFE00);
      type metadata accessor for UserEventsSessionManager();
      if (swift_dynamicCast())
      {
        sub_10000AACC((v4 + 144), *(v4 + 168));
        Tracker.transaction(block:)();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000EF074(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return sub_100018364(a1, v4);
}

uint64_t sub_1000EF134()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FF1C;

  return sub_10018BCFC();
}

uint64_t sub_1000EF1E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002001C;

  return sub_100018364(a1, v4);
}

uint64_t sub_1000EF2A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000EF2E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001FF1C;

  return sub_10018BD8C(a1, v4, v5, v6);
}

unint64_t sub_1000EF394()
{
  result = qword_1002CFE10;
  if (!qword_1002CFE10)
  {
    type metadata accessor for AnalyticsActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002CFE10);
  }

  return result;
}

uint64_t sub_1000EF3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CFE08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EF45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCAnalyticsAppSessionManagerFactory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EF4C0(uint64_t a1)
{
  v2 = type metadata accessor for RCAnalyticsAppSessionManagerFactory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EF51C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001FF1C;

  return sub_1000ED3FC(a1, v4, v5, v6);
}

uint64_t sub_1000EF5D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002001C;

  return sub_1000ED17C(v2, v3);
}

id sub_1000EF6AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCRecordingCardMoreButtonMenuCreator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000EF6F0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RCMoreActionsMenuCreator();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = &v6[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_recordingUUID];
  *v7 = a1;
  *(v7 + 1) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v8 = &v6[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_accessibilityIdentifierPrefix];
  strcpy(&v6[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_accessibilityIdentifierPrefix], "RecordingView");
  *(v8 + 7) = -4864;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_100005EF4(v12, &v6[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_controller]);
  v11.receiver = v6;
  v11.super_class = v5;
  *&v2[OBJC_IVAR____TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator_menuCreator] = objc_msgSendSuper2(&v11, "init");
  v10.receiver = v2;
  v10.super_class = type metadata accessor for RCRecordingCardMoreButtonMenuCreator();
  return objc_msgSendSuper2(&v10, "init");
}

char *sub_1000EF844(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = (a3 + 40);
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v5;
    v16[0] = *(v5 - 1);
    v16[1] = v8;

    v17(&v14, v16);
    if (v3)
    {
      break;
    }

    v9 = v15;
    if (v15)
    {
      v10 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1000F28B0(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_1000F28B0((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v10;
      *(v7 + 5) = v9;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1000EF984(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C773C(&qword_1002CFFE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v25 - v8;
  v10 = sub_1000C773C(&qword_1002CFFD8);
  __chkstk_darwin(v10, v11);
  v30 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v28 = &v25 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = (a3 + 32);
  v25 = v15;
  v19 = (v15 + 48);
  v20 = _swiftEmptyArrayStorage;
  v26 = v10;
  v27 = a1;
  while (1)
  {
    v29 = *v18;
    a1(&v29);
    if (v3)
    {
      break;
    }

    if ((*v19)(v9, 1, v10) == 1)
    {
      sub_100003CBC(v9, &qword_1002CFFE0);
    }

    else
    {
      v21 = v28;
      sub_1000F51E8(v9, v28);
      sub_1000F51E8(v21, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1000F2A28(0, v20[2] + 1, 1, v20, &qword_1002CFFD0, &unk_100243658, &qword_1002CFFD8);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1000F2A28(v22 > 1, v23 + 1, 1, v20, &qword_1002CFFD0, &unk_100243658, &qword_1002CFFD8);
      }

      v20[2] = v23 + 1;
      sub_1000F51E8(v30, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23);
      v10 = v26;
      a1 = v27;
    }

    ++v18;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_1000EFC64()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C773C(&qword_1002CFFA0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UserInfo();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F0ED8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100003CBC(v8, &qword_1002CFFA0);
    sub_1000EFF90();
    Logger.init(subsystem:category:)();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10001901C(0xD000000000000011, 0x800000010022F350, &v20);
      _os_log_impl(&_mh_execute_header, v14, v15, "%s:  first launch detected", v16, 0xCu);
      sub_100014B64(v17);
    }

    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    sub_1000F4B30(v8, v13);
    if (sub_1000F31A8(v13))
    {
      sub_1000EFF90();
    }

    else if (sub_1000F37D4(v13) & 1) != 0 || (sub_1000F3E10(v13) & 1) != 0 || (sub_1000F2F68())
    {
      sub_1000F0330();
    }

    return sub_1000D686C(v13);
  }
}

uint64_t sub_1000EFF90()
{
  v26 = type metadata accessor for UUID();
  v0 = *(v26 - 8);
  __chkstk_darwin(v26, v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UserInfo();
  __chkstk_darwin(v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "UserInfo: Reset All", v15, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  [v16 removeObjectForKey:v17];

  static Date.now.getter();
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v19(v7, 0, 1, v18);
  sub_1000C773C(&qword_1002CFFA8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100242C70;
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v0 + 8))(v3, v26);
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v24 = *(v4 + 24);
  static Date.now.getter();
  v19(&v7[v24], 0, 1, v18);
  *&v7[*(v4 + 20)] = v20;
  sub_1000F0754();
  return sub_1000D686C(v7);
}

uint64_t sub_1000F0330()
{
  v0 = sub_1000C773C(&qword_1002CFFA0);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v31 - v2;
  v4 = type metadata accessor for UserInfo();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v31 - v11;
  v33 = type metadata accessor for Logger();
  v13 = *(v33 - 8);
  v15 = __chkstk_darwin(v33, v14);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v19 = &v31 - v18;
  v31 = "17KeychainDataStore";
  Logger.init(subsystem:category:)();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "UserInfo: Reset Identifiers", v22, 2u);
  }

  v23 = *(v13 + 8);
  v23(v19, v33);
  v24 = [objc_opt_self() standardUserDefaults];
  v25 = String._bridgeToObjectiveC()();
  [v24 removeObjectForKey:v25];

  sub_1000F0ED8(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100003CBC(v3, &qword_1002CFFA0);
    sub_1000EFF90();
    v26 = v32;
    Logger.init(subsystem:category:)();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "UserInfo is nil, creating new UserInfo", v29, 2u);
    }

    return (v23)(v26, v33);
  }

  else
  {
    sub_1000F4B30(v3, v12);
    sub_1000F0B20(v12, v9);
    sub_1000F0754();
    sub_1000D686C(v9);
    return sub_1000D686C(v12);
  }
}

uint64_t sub_1000F0754()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1, v2);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for UserInfo();
  sub_1000F5258(&qword_1002CFFB8, type metadata accessor for UserInfo);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  v6 = v3;

  v7 = *sub_10000AACC((v0 + 16), *(v0 + 40));
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 ubiquityIdentityToken];

  if (v9)
  {
    swift_unknownObjectRelease();
    if (qword_1002CDD80 != -1)
    {
      swift_once();
    }

    v10 = &off_10028E110;
  }

  else
  {
    v11 = v7;
    v10 = &off_10028E148;
  }

  ObjectType = swift_getObjectType();
  v13 = v10[2];
  sub_1000D4334(v6, v5);
  v13(v6, v5, 0xD000000000000025, 0x800000010022F2A0, ObjectType, v10);
  sub_1000D4388(v6, v5);
  swift_unknownObjectRelease();

  return sub_1000D4388(v6, v5);
}

uint64_t sub_1000F0B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C773C(&qword_1002CED20);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F4BD0(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100003CBC(v12, &qword_1002CED20);
    static Date.now.getter();
    v18 = *(v14 + 56);
    v18(a2, 0, 1, v13);
    sub_1000C773C(&qword_1002CFFA8);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100242C70;
    UUID.init()();
    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v5 + 8))(v8, v4);
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v23 = type metadata accessor for UserInfo();
    v24 = *(v23 + 24);
    static Date.now.getter();
    result = (v18)(a2 + v24, 0, 1, v13);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    (*(v14 + 16))(a2, v17, v13);
    v32 = *(v14 + 56);
    v32(a2, 0, 1, v13);
    sub_1000C773C(&qword_1002CFFA8);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100242C70;
    UUID.init()();
    v26 = UUID.uuidString.getter();
    v27 = v4;
    v29 = v28;
    (*(v5 + 8))(v8, v27);
    *(v19 + 32) = v26;
    *(v19 + 40) = v29;
    v23 = type metadata accessor for UserInfo();
    v30 = *(v23 + 24);
    static Date.now.getter();
    (*(v14 + 8))(v17, v13);
    result = (v32)(a2 + v30, 0, 1, v13);
  }

  *(a2 + *(v23 + 20)) = v19;
  return result;
}

uint64_t sub_1000F0ED8@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = sub_1000C773C(&qword_1002CFFA0);
  __chkstk_darwin(v2 - 8, v3);
  v71 = &v70 - v4;
  v5 = type metadata accessor for Logger();
  v73 = *(v5 - 8);
  v74 = v5;
  v7 = __chkstk_darwin(v5, v6);
  v72 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = &v70 - v10;
  v77 = type metadata accessor for UserInfo();
  v75 = *(v77 - 8);
  v13 = __chkstk_darwin(v77, v12);
  v70 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v18 = &v70 - v17;
  __chkstk_darwin(v16, v19);
  v21 = &v70 - v20;
  v22 = objc_opt_self();
  v23 = [v22 standardUserDefaults];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 BOOLForKey:v24];

  if (v25)
  {
    v26 = [v22 standardUserDefaults];
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 stringForKey:v27];

    if (v28)
    {
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      v33 = v77;
      if (!v32)
      {

        v29 = 0xD000000000000013;
        v31 = 0x800000010022F2F0;
      }
    }

    else
    {
      v29 = 0xD000000000000013;
      v31 = 0x800000010022F2F0;
      v33 = v77;
    }

    static Date.now.getter();
    v39 = type metadata accessor for Date();
    v40 = *(*(v39 - 8) + 56);
    v40(v21, 0, 1, v39);
    sub_1000C773C(&qword_1002CFFA8);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100242C70;
    *(v41 + 32) = v29;
    *(v41 + 40) = v31;
    v42 = *(v33 + 24);
    static Date.now.getter();
    v40(&v21[v42], 0, 1, v39);
    *&v21[*(v33 + 20)] = v41;
    Logger.init(subsystem:category:)();
    sub_1000D6808(v21, v18);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v78 = v46;
      *v45 = 136315138;
      v47 = Array.description.getter();
      v49 = v48;
      sub_1000D686C(v18);
      v50 = sub_10001901C(v47, v49, &v78);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Using UserInfo Debug UserID: %s", v45, 0xCu);
      sub_100014B64(v46);
    }

    else
    {

      sub_1000D686C(v18);
    }

    (*(v73 + 8))(v11, v74);
    v52 = v75;
    v51 = v76;
    sub_1000F4B30(v21, v76);
    return (*(v52 + 56))(v51, 0, 1, v33);
  }

  else
  {
    v34 = *sub_10000AACC((v1 + 16), *(v1 + 40));
    v35 = [objc_opt_self() defaultManager];
    v36 = [v35 ubiquityIdentityToken];

    if (v36)
    {
      swift_unknownObjectRelease();
      v37 = v75;
      if (qword_1002CDD80 != -1)
      {
        swift_once();
      }

      v38 = &off_10028E110;
    }

    else
    {
      v54 = v34;
      v38 = &off_10028E148;
      v37 = v75;
    }

    ObjectType = swift_getObjectType();
    v56 = (v38[1])(0xD000000000000025, 0x800000010022F2A0, ObjectType, v38);
    v58 = v57;
    swift_unknownObjectRelease();
    if (v58 >> 60 == 15)
    {
      v61 = v72;
      Logger.init(subsystem:category:)();
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v78 = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_10001901C(0x6F666E4972657355, 0xE800000000000000, &v78);
        _os_log_impl(&_mh_execute_header, v62, v63, "Error decoding: %s", v64, 0xCu);
        sub_100014B64(v65);
      }

      (*(v73 + 8))(v61, v74);
      return (*(v37 + 56))(v76, 1, 1, v77);
    }

    else
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1000F5258(&qword_1002D0018, type metadata accessor for UserInfo);
      v59 = v71;
      v60 = v77;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_1000D51D8(v56, v58);

      v66 = *(v37 + 56);
      v66(v59, 0, 1, v60);
      v67 = v70;
      sub_1000F4B30(v59, v70);
      v68 = v67;
      v69 = v76;
      sub_1000F4B30(v68, v76);
      return (v66)(v69, 0, 1, v60);
    }
  }
}

uint64_t sub_1000F17E0()
{
  sub_100014B64(v0 + 16);
  sub_100014B64(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1000F1820@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v69 = a2;
  v2 = sub_1000C773C(&qword_1002CED20);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v6);
  v8 = &v57 - v7;
  v63 = type metadata accessor for Date();
  v65 = *(v63 - 8);
  v10 = __chkstk_darwin(v63, v9);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v60 = &v57 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v62 = &v57 - v17;
  __chkstk_darwin(v16, v18);
  v64 = &v57 - v19;
  v20 = sub_1000C773C(&qword_1002CFFB0);
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v57 - v22;
  v24 = type metadata accessor for UUID();
  v66 = *(v24 - 8);
  v26 = __chkstk_darwin(v24, v25);
  v59 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v28);
  v30 = &v57 - v29;
  v31 = sub_1000C773C(&qword_1002CFFA0);
  __chkstk_darwin(v31 - 8, v32);
  v34 = &v57 - v33;
  v35 = type metadata accessor for UserInfo();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35, v37);
  v39 = &v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F0ED8(v34);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_100003CBC(v34, &qword_1002CFFA0);
    v40 = 1;
  }

  else
  {
    v41 = sub_1000F4B30(v34, v39);
    __chkstk_darwin(v41, v42);
    *(&v57 - 2) = v67;
    sub_1000F1F94(sub_1000F4BB0, (&v57 - 4), v43);
    if (v44)
    {
      UUID.init(uuidString:)();

      v45 = v66;
      if ((*(v66 + 48))(v23, 1, v24) == 1)
      {
        sub_1000D686C(v39);
        v46 = &qword_1002CFFB0;
        v47 = v23;
      }

      else
      {
        (*(v45 + 32))(v30, v23, v24);
        sub_1000F4BD0(v39, v8);
        v48 = v63;
        v68 = *(v65 + 48);
        if (v68(v8, 1, v63) == 1)
        {
          (*(v45 + 8))(v30, v24);
        }

        else
        {
          v49 = *(v65 + 32);
          v67 = (v65 + 32);
          v57 = v49;
          v49(v64, v8, v48);
          v8 = v61;
          sub_1000F4BD0(&v39[*(v35 + 24)], v61);
          if (v68(v8, 1, v48) != 1)
          {
            v57(v62, v8, v48);
            (*(v66 + 16))(v59, v30, v24);
            v53 = v48;
            v54 = v65;
            v55 = *(v65 + 16);
            v55(v60, v64, v53);
            v55(v58, v62, v53);
            v50 = v69;
            LegacyStoredUserIDComponents.init(id:rotationPeriod:startDate:lastRotation:)();
            v56 = *(v54 + 8);
            v56(v62, v53);
            v56(v64, v53);
            (*(v66 + 8))(v30, v24);
            sub_1000D686C(v39);
            v40 = 0;
            goto LABEL_15;
          }

          (*(v65 + 8))(v64, v48);
          (*(v66 + 8))(v30, v24);
        }

        sub_1000D686C(v39);
        v46 = &qword_1002CED20;
        v47 = v8;
      }

      sub_100003CBC(v47, v46);
    }

    else
    {
      sub_1000D686C(v39);
    }

    v40 = 1;
  }

  v50 = v69;
LABEL_15:
  v51 = type metadata accessor for LegacyStoredUserIDComponents();
  return (*(*(v51 - 8) + 56))(v50, v40, 1, v51);
}

uint64_t sub_1000F1EF8()
{
  if (Session.Kind.description.getter() == 0x6E65764572657375 && v0 == 0xEA00000000007374)
  {

    return 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v2 & 1;
  }
}

uint64_t sub_1000F1F94(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v7 = *i;
    v11[0] = v8;
    v11[1] = v7;

    v9 = a1(v11);
    if (v3)
    {
      break;
    }

    if (v9)
    {
      return v8;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1000F2048@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = *(*(a2 + 48) + 8 * v15);
      v17 = (*(a2 + 56) + 32 * v15);
      v25 = v16;
      v23 = *v17;
      v24 = v17[1];
      v26 = *v17;
      v27 = v24;
      result = a1(&v25);
      if (v3)
      {
      }

      if (result)
      {
        break;
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v22 = 0;
    v19 = *(&v23 + 1);
    v18 = v23;
    v21 = *(&v24 + 1);
    v20 = v24;
LABEL_13:
    *a3 = v16;
    *(a3 + 8) = v18;
    *(a3 + 16) = v19;
    *(a3 + 24) = v20;
    *(a3 + 32) = v21;
    *(a3 + 40) = v22;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        v16 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 1;
        goto LABEL_13;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000F21CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Session.Kind.description.getter() == 0x6E65764572657375 && v7 == 0xEA00000000007374)
  {

LABEL_5:
    LegacyStoredUserIDComponents.id.getter();
    v10 = UUID.uuidString.getter();
    v12 = v11;
    result = (*(v3 + 8))(v6, v2);
    *a1 = v10;
    a1[1] = v12;
    return result;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_5;
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t sub_1000F23C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C773C(&qword_1002CFFA0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v9 - v4;
  sub_1000F0ED8(&v9 - v4);
  v6 = type metadata accessor for UserInfo();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_100003CBC(v5, &qword_1002CFFA0);
    v7 = type metadata accessor for Date();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    sub_1000F4BD0(v5, a1);
    return sub_1000D686C(v5);
  }
}

char *sub_1000F253C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&unk_1002D02A0);
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

char *sub_1000F2648(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&unk_1002CF8B0);
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

char *sub_1000F2768(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&qword_1002CF828);
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

char *sub_1000F28B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&qword_1002CFFA8);
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

size_t sub_1000F2A28(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000C773C(a5);
  v14 = *(sub_1000C773C(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_1000C773C(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1000F2C38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&qword_1002CFFF8);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_1000F2D8C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000C773C(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_1000F2F68()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 BOOLForKey:v6];

  if (v7)
  {
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10001901C(0xD00000000000001CLL, 0x800000010022F370, &v14);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s:  reset override switch enabled", v10, 0xCu);
      sub_100014B64(v11);
    }

    (*(v1 + 8))(v4, v0);
  }

  return v7;
}

uint64_t sub_1000F31A8(uint64_t a1)
{
  v48 = a1;
  v1 = type metadata accessor for Logger();
  v46 = *(v1 - 8);
  v47 = v1;
  v3 = __chkstk_darwin(v1, v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v43 = &v42 - v7;
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Calendar();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C773C(&qword_1002CED20);
  __chkstk_darwin(v17 - 8, v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v24 = __chkstk_darwin(v21, v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v27);
  v29 = &v42 - v28;
  sub_1000F4BD0(v48, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100003CBC(v20, &qword_1002CED20);
    Logger.init(subsystem:category:)();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_10001901C(0xD000000000000021, 0x800000010022F3E0, &v49);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s:  no start date", v32, 0xCu);
      sub_100014B64(v33);
    }

    (*(v46 + 8))(v5, v47);
    return 1;
  }

  (*(v22 + 32))(v29, v20, v21);
  static Calendar.current.getter();
  static Date.now.getter();
  (*(v9 + 104))(v12, enum case for Calendar.Component.day(_:), v8);
  v34 = Calendar.compare(_:to:toGranularity:)();
  (*(v9 + 8))(v12, v8);
  v35 = *(v22 + 8);
  v35(v26, v21);
  (*(v44 + 8))(v16, v45);
  if (v34 == 1)
  {
    v36 = v43;
    Logger.init(subsystem:category:)();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_10001901C(0xD000000000000021, 0x800000010022F3E0, &v49);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s:  start date greater than now", v39, 0xCu);
      sub_100014B64(v40);
    }

    (*(v46 + 8))(v36, v47);
    v35(v29, v21);
    return 1;
  }

  v35(v29, v21);
  return 0;
}

uint64_t sub_1000F37D4(uint64_t a1)
{
  v49 = a1;
  v1 = type metadata accessor for Logger();
  v47 = *(v1 - 8);
  v48 = v1;
  v3 = __chkstk_darwin(v1, v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v44 = &v43 - v7;
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Calendar();
  v45 = *(v13 - 8);
  v46 = v13;
  __chkstk_darwin(v13, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C773C(&qword_1002CED20);
  __chkstk_darwin(v17 - 8, v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v24 = __chkstk_darwin(v21, v23);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v27);
  v29 = &v43 - v28;
  v30 = type metadata accessor for UserInfo();
  sub_1000F4BD0(v49 + *(v30 + 24), v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100003CBC(v20, &qword_1002CED20);
    Logger.init(subsystem:category:)();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10001901C(0xD000000000000028, 0x800000010022F3B0, &v50);
      _os_log_impl(&_mh_execute_header, v31, v32, "%s:  no previous rotation date", v33, 0xCu);
      sub_100014B64(v34);
    }

    (*(v47 + 8))(v5, v48);
    return 1;
  }

  (*(v22 + 32))(v29, v20, v21);
  static Calendar.current.getter();
  static Date.now.getter();
  (*(v9 + 104))(v12, enum case for Calendar.Component.day(_:), v8);
  v35 = Calendar.compare(_:to:toGranularity:)();
  (*(v9 + 8))(v12, v8);
  v36 = *(v22 + 8);
  v36(v26, v21);
  (*(v45 + 8))(v16, v46);
  if (v35 == 1)
  {
    v37 = v44;
    Logger.init(subsystem:category:)();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_10001901C(0xD000000000000028, 0x800000010022F3B0, &v50);
      _os_log_impl(&_mh_execute_header, v38, v39, "%s:  rotation date greater than now", v40, 0xCu);
      sub_100014B64(v41);
    }

    (*(v47 + 8))(v37, v48);
    v36(v29, v21);
    return 1;
  }

  v36(v29, v21);
  return 0;
}

uint64_t sub_1000F3E10(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin(v2, v3);
  v68 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Calendar.Component();
  v76 = *(v74 - 8);
  __chkstk_darwin(v74, v5);
  v73 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Calendar();
  v7 = *(v72 - 8);
  __chkstk_darwin(v72, v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C773C(&qword_1002CED20);
  v13 = __chkstk_darwin(v11 - 8, v12);
  v75 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v17 = &v59 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v21 = __chkstk_darwin(v18, v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v21, v24);
  v27 = &v59 - v26;
  __chkstk_darwin(v25, v28);
  v30 = &v59 - v29;
  v31 = type metadata accessor for UserInfo();
  sub_1000F4BD0(a1 + *(v31 + 24), v17);
  v32 = v19[6];
  if (v32(v17, 1, v18) == 1)
  {
    sub_100003CBC(v17, &qword_1002CED20);
    return 1;
  }

  v66 = v23;
  v67 = v30;
  v33 = v19[4];
  v65 = v19 + 4;
  v63 = v33;
  v33(v27, v17, v18);
  static Calendar.current.getter();
  v34 = v76;
  v35 = *(v76 + 104);
  v36 = v7;
  v37 = v73;
  v62 = enum case for Calendar.Component.month(_:);
  v71 = v18;
  v38 = v74;
  v64 = v76 + 104;
  v61 = v35;
  v35(v73);
  v39 = v75;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v40 = *(v34 + 8);
  v41 = v38;
  v42 = v71;
  v76 = v34 + 8;
  v59 = v40;
  v40(v37, v41);
  v43 = v72;
  v60 = *(v36 + 8);
  v60(v10, v72);
  v44 = v19[1];
  v44(v27, v42);
  if (v32(v39, 1, v42) == 1)
  {
    sub_100003CBC(v75, &qword_1002CED20);
    return 1;
  }

  v45 = v67;
  v63(v67, v75, v42);
  v46 = v45;
  static Calendar.current.getter();
  v47 = v66;
  static Date.now.getter();
  v49 = v73;
  v48 = v74;
  v61(v73, v62, v74);
  v50 = Calendar.compare(_:to:toGranularity:)();
  v51 = v48;
  v52 = v71;
  v59(v49, v51);
  v44(v47, v52);
  v60(v10, v43);
  if ((v50 + 1) < 2)
  {
    v53 = v68;
    Logger.init(subsystem:category:)();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v77 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_10001901C(0xD00000000000001BLL, 0x800000010022F390, &v77);
      _os_log_impl(&_mh_execute_header, v54, v55, "%s:  privacy rotation is needed", v56, 0xCu);
      sub_100014B64(v57);
    }

    (*(v69 + 8))(v53, v70);
    v44(v46, v52);
    return 1;
  }

  if (v50 == 1)
  {
    v44(v46, v52);
    return 0;
  }

  else
  {
    type metadata accessor for ComparisonResult(0);
    v77 = v50;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F44D8()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0, v1);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for UserInfo();
  sub_1000F5258(&qword_1002CFFB8, type metadata accessor for UserInfo);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v2;
}

uint64_t sub_1000F4750(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UUID();
  v5 = *(v38 - 8);
  __chkstk_darwin(v38, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C773C(&qword_1002CFFA0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for UserInfo();
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v13, v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v37 - v20;
  v39 = v2;
  sub_1000F0ED8(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100003CBC(v12, &qword_1002CFFA0);
    static Date.now.getter();
    v22 = type metadata accessor for Date();
    v23 = *(*(v22 - 8) + 56);
    v23(v18, 0, 1, v22);
    sub_1000C773C(&qword_1002CFFA8);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100242C70;
    UUID.init()();
    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*(v5 + 8))(v8, v38);
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    v28 = *(v13 + 24);
    static Date.now.getter();
    v23(&v18[v28], 0, 1, v22);
    *&v18[*(v13 + 20)] = v24;
    sub_1000F0754();
  }

  else
  {
    v29 = sub_1000F4B30(v12, v21);
    __chkstk_darwin(v29, v30);
    *(&v37 - 2) = a2;
    *(&v37 - 1) = a1;
    v32 = sub_1000EF844(sub_1000F4B94, (&v37 - 4), v31);
    LegacyStoredUserIDComponents.startDate.getter();
    v33 = type metadata accessor for Date();
    v34 = *(*(v33 - 8) + 56);
    v34(v18, 0, 1, v33);
    v35 = *(v13 + 24);
    LegacyStoredUserIDComponents.lastRotation.getter();
    v34(&v18[v35], 0, 1, v33);
    *&v18[*(v13 + 20)] = v32;
    sub_1000F0754();
    sub_1000D686C(v18);
    v18 = v21;
  }

  return sub_1000D686C(v18);
}

uint64_t sub_1000F4B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F4BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CED20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F4C40(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1000C773C(&qword_1002CFFA0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v47 - v7;
  v9 = type metadata accessor for UserInfo();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v47 - v16;
  sub_1000F0ED8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100003CBC(v8, &qword_1002CFFA0);
  }

  v50 = v2;
  sub_1000F4B30(v8, v17);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v14, a1, v19);
  (*(v20 + 56))(v14, 0, 1, v19);
  v21 = *&v17[*(v9 + 20)];
  sub_1000F4BD0(&v17[*(v9 + 24)], &v14[*(v9 + 24)]);
  *&v14[*(v9 + 20)] = v21;
  v22 = *sub_10000AACC((v3 + 16), *(v3 + 40));
  v23 = objc_opt_self();

  v47 = v23;
  v24 = [v23 defaultManager];
  v25 = [v24 ubiquityIdentityToken];

  v48 = a1;
  if (v25)
  {
    swift_unknownObjectRelease();
    if (qword_1002CDD80 != -1)
    {
      swift_once();
    }

    v26 = &off_10028E110;
  }

  else
  {
    v27 = v22;
    v26 = &off_10028E148;
  }

  ObjectType = swift_getObjectType();
  v29 = sub_1000F44D8();
  v31 = v30;
  (v26[2])(v29, v30, 0xD000000000000025, 0x800000010022F2A0, ObjectType, v26);
  sub_1000D51D8(v29, v31);
  swift_unknownObjectRelease();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000F5258(&qword_1002CEDE0, &type metadata accessor for Date);
  v32 = v50;
  v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v35 = v34;

  if (v32)
  {
    sub_1000D686C(v14);
    return sub_1000D686C(v17);
  }

  else
  {
    v36 = *sub_10000AACC((v3 + 16), *(v3 + 40));
    v37 = [v47 defaultManager];
    v38 = [v37 ubiquityIdentityToken];

    v50 = 0;
    if (v38)
    {
      swift_unknownObjectRelease();
      if (qword_1002CDD80 != -1)
      {
        swift_once();
      }

      v39 = &off_10028E110;
    }

    else
    {
      v36;
      v39 = &off_10028E148;
    }

    v48 = swift_getObjectType();
    type metadata accessor for Client();
    v40 = objc_opt_self();
    sub_1000D4334(v33, v35);
    v41 = [v40 mainBundle];
    v42 = Client.__allocating_init(bundle:)();
    v43 = Client.identifier.getter();
    v45 = v44;

    strcpy(v49, "userStartDate.");
    HIBYTE(v49[1]) = -18;
    v46._countAndFlagsBits = v43;
    v46._object = v45;
    String.append(_:)(v46);

    (v39[2])(v33, v35, v49[0], v49[1], v48, v39);

    sub_1000D4388(v33, v35);
    swift_unknownObjectRelease();
    sub_1000D4388(v33, v35);
    sub_1000D686C(v14);
    return sub_1000D686C(v17);
  }
}

uint64_t sub_1000F51E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CFFD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F5258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F52B0()
{
  sub_1000C773C(&qword_1002D0028);
  v1 = swift_task_alloc();
  v0[2] = v1;
  v0[3] = type metadata accessor for AnalyticsActor();
  v0[4] = static AnalyticsActor.shared.getter();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1000F539C;

  return static Storefront.current.getter(v1);
}

uint64_t sub_1000F539C()
{

  sub_1000EF394();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F54D8, v1, v0);
}

uint64_t sub_1000F54D8()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for Storefront();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 16);
  if (v4 == 1)
  {
    sub_1000F55F8(*(v0 + 16));
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = Storefront.id.getter();
    v7 = v8;
    (*(v3 + 8))(v5, v2);
  }

  v9 = *(v0 + 8);

  return v9(v6, v7);
}

uint64_t sub_1000F55F8(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D0028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000F5660(void *a1@<X8>)
{
  v3 = *(v1 + 152);
  if (!v3)
  {
    v6 = 0;
    v4 = 0;
    v10 = 0;
    v12 = 0;
    v5 = 0;
LABEL_7:
    v15 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v4 = *(v1 + 128);
  if (!v4)
  {
    v6 = 0;
    v10 = 0;
    v12 = 0;
    v5 = 0;
    v3 = 0;
    goto LABEL_7;
  }

  v5 = *(v1 + 144);
  v6 = *(v1 + 120);
  v7 = objc_opt_self();

  v8 = [v7 currentDevice];
  v9 = [v8 systemVersion];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = *(v1 + 112);
  if (v13 > 5)
  {
    v14 = 4;
  }

  else
  {
    v14 = qword_100243700[v13];
  }

  v15 = (*(v1 + 136) & 1) == 0;
LABEL_10:
  *a1 = v6;
  a1[1] = v4;
  a1[2] = v14;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v15;
  a1[6] = v5;
  a1[7] = v3;
}

void sub_1000F5798()
{
  v0 = sub_1000C773C(&qword_1002D0030);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v0, v3);
  v5 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4, v6);
  v9 = v16 - v8;
  __chkstk_darwin(v7, v10);
  v12 = v16 - v11;
  sub_1000F5660(&v20);
  if (v21)
  {
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v16[0] = v20;
    v16[1] = v21;
    sub_1000F59B8();
    SessionData.init(key:data:)();
    v13 = *(v1 + 32);
    v13(v12, v9, v0);
    (*(v1 + 16))(v5, v12, v0);
    v14 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v15 = swift_allocObject();
    v13((v15 + v14), v5, v0);
    SessionManager.transaction(_:)();

    (*(v1 + 8))(v12, v0);
  }
}

unint64_t sub_1000F59B8()
{
  result = qword_1002D0038;
  if (!qword_1002D0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0038);
  }

  return result;
}

uint64_t sub_1000F5A0C()
{
  sub_1000C773C(&qword_1002D0030);
  sub_1000F59B8();
  return AccessSessionManager.push<A>(_:traits:file:line:)();
}

uint64_t sub_1000F5AB8()
{
  v1 = sub_1000C773C(&qword_1002D0040);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v6 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v9 = v18 - v8;
  sub_10000AACC((v0 + 72), *(v0 + 96));
  v10 = Client.version.getter();
  v12 = v11;
  sub_10000AACC((v0 + 72), *(v0 + 96));
  v13 = Client.buildNumber.getter();
  v18[0] = v10;
  v18[1] = v12;
  v18[2] = v13;
  v18[3] = v14;
  sub_1000F5CB0();
  SessionData.init(key:data:)();
  (*(v2 + 16))(v6, v9, v1);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  (*(v2 + 32))(v16 + v15, v6, v1);
  SessionManager.transaction(_:)();

  return (*(v2 + 8))(v9, v1);
}

unint64_t sub_1000F5CB0()
{
  result = qword_1002D0048;
  if (!qword_1002D0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0048);
  }

  return result;
}

uint64_t sub_1000F5D04()
{
  sub_1000C773C(&qword_1002D0040);
  sub_1000F5CB0();
  return AccessSessionManager.push<A>(_:traits:file:line:)();
}

unint64_t sub_1000F5E18()
{
  result = qword_1002D0050;
  if (!qword_1002D0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0050);
  }

  return result;
}

uint64_t sub_1000F5E6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeZone();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001A943C();
  if (v15)
  {
    v16 = v15;
    v27 = v14;
    v28 = a1;
    static TimeZone.current.getter();
    Date.init()();
    v17 = TimeZone.secondsFromGMT(for:)();
    (*(v5 + 8))(v8, v4);
    result = (*(v10 + 8))(v13, v9);
    if (v17 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      v19 = [objc_opt_self() defaultManager];
      v20 = [v19 ubiquityIdentityToken];

      if (v20)
      {
        swift_unknownObjectRelease();
      }

      sub_10000AACC((v2 + 72), *(v2 + 96));
      v21 = Client.identifier.getter();
      v29 = v17;
      v30 = v27;
      v31 = v16;
      v32 = v20 == 0;
      v33 = v21;
      v34 = v22;
      sub_1000F64E4();
      v23 = v28;
      SessionData.init(key:data:)();
      v24 = sub_1000C773C(&qword_1002D0060);
      return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    }

    __break(1u);
    return result;
  }

  v25 = sub_1000C773C(&qword_1002D0060);
  v26 = *(*(v25 - 8) + 56);

  return v26(a1, 1, 1, v25);
}

uint64_t sub_1000F61A8()
{
  v0 = sub_1000C773C(&qword_1002D0058);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v17 - v2;
  v4 = sub_1000C773C(&qword_1002D0060);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v9 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = &v17 - v11;
  sub_1000F5E6C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000F63D0(v3);
  }

  v14 = *(v5 + 32);
  v14(v12, v3, v4);
  (*(v5 + 16))(v9, v12, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v14((v16 + v15), v9, v4);
  SessionManager.transaction(_:)();

  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1000F63D0(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D0058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F6438()
{
  sub_1000C773C(&qword_1002D0060);
  sub_1000F64E4();
  return AccessSessionManager.push<A>(_:traits:file:line:)();
}

unint64_t sub_1000F64E4()
{
  result = qword_1002D0068;
  if (!qword_1002D0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0068);
  }

  return result;
}

void sub_1000F6538(_BYTE *a1)
{
  if (*a1 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v2 = Strong;
    v3 = [objc_opt_self() sharedApplication];
    v4 = [v3 applicationState];

    if (v4)
    {
      goto LABEL_9;
    }

    v5 = &selRef_stop;
    goto LABEL_8;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    return;
  }

  v2 = v6;
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 applicationState];

  if (!v8)
  {
    v5 = &selRef_start;
LABEL_8:
    [*&v2[OBJC_IVAR___RCLocationManagerStateCoordinator_locationManager] *v5];
  }

LABEL_9:
}

id sub_1000F6688()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationManagerStateCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000F6718()
{
  result = [objc_allocWithZone(type metadata accessor for RecordingTranscriptionService()) init];
  qword_1002E8D20 = result;
  return result;
}

uint64_t sub_1000F6804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return _swift_task_switch(sub_1000F6828, 0, 0);
}

uint64_t sub_1000F6828()
{
  v1 = [objc_opt_self() sharedContainer];
  if (v1 && (v2 = v1, v3 = [v1 newBackgroundModel], v2, v3))
  {
    v0[5] = &type metadata for TranscriptionStorageService;
    v0[6] = &off_100291490;
    v0[2] = v3;
    v4 = *sub_10000AACC(v0 + 2, &type metadata for TranscriptionStorageService);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1000F6990;
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[7];

    return sub_10012C518(v8, v6, v7, v4);
  }

  else
  {
    sub_1000F9A9C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000F6990()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000F6B08;
  }

  else
  {
    v2 = sub_1000F6AA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F6AA4()
{
  sub_100014B64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F6B08()
{
  sub_100014B64(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F6B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for TranscriptionData(0);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1000F6C54;

  return sub_1000F7104(v9, a5, a6, 0);
}

uint64_t sub_1000F6C54()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1000F6DD0;
  }

  else
  {
    sub_1000FC460(*(v2 + 16));
    v3 = sub_1000F6D70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000F6D70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F6DD0()
{
  v11 = v0;
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100018D90(v1, qword_1002E8CB0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_10001901C(0xD000000000000018, 0x800000010022F780, &v10);
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s failed with error = %@", v4, 0x16u);
    sub_100003CBC(v5, &unk_1002D3690);

    sub_100014B64(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000F7104(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 128) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1000C773C(&unk_1002D1D90);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000F71A8, 0, 0);
}

uint64_t sub_1000F71A8()
{
  v1 = *(v0 + 40);
  if (v1[OBJC_IVAR___RCRecordingTranscriptionService_isTranscribingLive])
  {
LABEL_2:
    sub_1000F9A9C();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = OBJC_IVAR___RCRecordingTranscriptionService_fileTranscriptionTask;
  *(v0 + 56) = OBJC_IVAR___RCRecordingTranscriptionService_fileTranscriptionTask;
  v6 = &v1[v5];
  v7 = *&v1[v5];
  *(v0 + 64) = v7;
  v8 = *(v0 + 32);
  if (!v7)
  {
    v17 = *(v0 + 48);
    v18 = *(v0 + 24);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v1;
    v20[5] = v18;
    v20[6] = v8;
    v21 = v1;

    v7 = sub_10019443C(0, 0, v17, &unk_100243888, v20);
    *(v0 + 104) = v7;
    v22 = *v6;
    *v6 = v7;
    v6[1] = v18;
    v6[2] = v8;

    sub_1000F9994(v22);
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    v14 = type metadata accessor for TranscriptionData(0);
    v15 = sub_1000C773C(&qword_1002D5540);
    *v13 = v0;
    v16 = sub_1000F79A4;
    goto LABEL_13;
  }

  v9 = *(v0 + 24);
  v10 = v6[1];
  v11 = v6[2];
  *(v0 + 72) = v11;
  v12 = v10 == v9 && v11 == v8;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    v14 = type metadata accessor for TranscriptionData(0);
    v15 = sub_1000C773C(&qword_1002D5540);
    *v13 = v0;
    v16 = sub_1000F754C;
LABEL_13:
    v13[1] = v16;
    v23 = *(v0 + 16);

    return Task.value.getter(v23, v7, v14, v15, &protocol self-conformance witness table for Error);
  }

  if (*(v0 + 128) != 1)
  {
    goto LABEL_2;
  }

  v24 = swift_task_alloc();
  *(v0 + 96) = v24;
  *v24 = v0;
  v24[1] = sub_1000F76D4;

  return sub_1000F8FA0();
}

uint64_t sub_1000F754C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000F7B44;
  }

  else
  {
    v2 = sub_1000F7660;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F7660()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F76D4()
{

  return _swift_task_switch(sub_1000F77D0, 0, 0);
}

uint64_t sub_1000F77D0()
{

  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = &v3[v0[7]];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v2;
  v8 = v3;

  v9 = sub_10019443C(0, 0, v1, &unk_100243888, v7);
  v0[13] = v9;
  v10 = *v5;
  *v5 = v9;
  v5[1] = v4;
  v5[2] = v2;

  sub_1000F9994(v10);
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = type metadata accessor for TranscriptionData(0);
  v13 = sub_1000C773C(&qword_1002D5540);
  *v11 = v0;
  v11[1] = sub_1000F79A4;
  v14 = v0[2];

  return Task.value.getter(v14, v9, v12, v13, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000F79A4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000F7BB8;
  }

  else
  {
    v2 = sub_1000F7AB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F7AB8()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = (v2 + v1);
  v4 = *(v2 + v1);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  sub_1000F9994(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000F7B44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F7BB8()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = (v2 + v1);
  v4 = *(v2 + v1);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  sub_1000F9994(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000F7C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a1;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = type metadata accessor for TranscriptionData(0);
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000F7DC0, 0, 0);
}

uint64_t sub_1000F7DC0()
{
  v1 = [objc_opt_self() sharedContainer];
  if (v1 && (v2 = v1, v3 = [v1 newBackgroundModel], v2, v3))
  {
    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    v0[5] = &type metadata for TranscriptionStorageService;
    v0[6] = &off_100291490;
    v0[2] = v3;
    v9 = *sub_10000AACC(v0 + 2, &type metadata for TranscriptionStorageService);
    v10 = swift_allocObject();
    v0[19] = v10;
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = v7;
    v11 = v9;

    v0[20] = [v11 context];
    (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v6);
    v12 = swift_task_alloc();
    v0[21] = v12;
    *v12 = v0;
    v12[1] = sub_1000F8044;
    v13 = v0[16];
    v14 = v0[13];
    v15 = v0[14];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v13, v14, sub_1000FC2DC, v10, v15);
  }

  else
  {
    sub_1000F9A9C();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1000F8044()
{
  v2 = *v1;
  v2[22] = v0;

  v3 = v2[20];
  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v4 = sub_1000F8460;
  }

  else
  {
    v6 = v2[12];
    v5 = v2[13];
    v7 = v2[11];

    (*(v6 + 8))(v5, v7);
    v4 = sub_1000F81F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F81F4()
{
  v1 = [objc_opt_self() sharedService];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[7] = 0;
  v5 = [v1 prepareToExportCompositionAVURL:v3 error:v0 + 7];
  v0[23] = v5;

  v6 = v0[7];
  if (!v5)
  {
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];
    v16 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    goto LABEL_5;
  }

  v7 = v0[22];
  v8 = v6;
  static Task<>.checkCancellation()();
  if (v7)
  {
    v9 = v0[23];
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    sub_10012B320(v9);

    (*(v11 + 8))(v10, v12);
LABEL_5:
    sub_100014B64((v0 + 2));

    v17 = v0[1];

    return v17();
  }

  v19 = v0[16];
  v20 = swift_task_alloc();
  v0[24] = v20;
  *(v20 + 16) = v19;
  v21 = swift_task_alloc();
  v0[25] = v21;
  *v21 = v0;
  v21[1] = sub_1000F8520;

  return sub_1000FAF54(0, 0, &unk_100243890, v20);
}

uint64_t sub_1000F8460()
{

  sub_100014B64(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F8520(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = v2;

  if (v2)
  {
    v5 = sub_1000F8908;
  }

  else
  {

    v5 = sub_1000F8674;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F8674()
{
  v1 = v0;
  v2 = v0[27];
  v3 = v1[26];
  v4 = swift_task_alloc();
  v1[29] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v1[30] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v1[31] = v6;
  *v6 = v1;
  v6[1] = sub_1000F87B0;
  v8 = v1[17];
  v7 = v1[18];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v7, &unk_1002438A0, v4, sub_1000FC458, v5, 0, 0, v8);
}

uint64_t sub_1000F87B0()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1000F8BC4;
  }

  else
  {

    v2 = sub_1000F8A00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F8908()
{

  v1 = v0[23];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  sub_10012B320(v1);

  (*(v3 + 8))(v2, v4);
  sub_100014B64((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000F8A00()
{
  v1 = v0[32];
  v2 = v0[23];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  sub_10012B320(v2);

  (*(v4 + 8))(v3, v5);
  static Task<>.checkCancellation()();
  if (v1)
  {
    sub_1000FC460(v0[18]);
    sub_100014B64((v0 + 2));

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = *sub_10000AACC(v0 + 2, v0[5]);
    v9 = swift_task_alloc();
    v0[33] = v9;
    *v9 = v0;
    v9[1] = sub_1000F8CD8;
    v10 = v0[18];
    v11 = v0[9];
    v12 = v0[10];

    return sub_10012B430(v10, v11, v12, v8);
  }
}

uint64_t sub_1000F8BC4()
{

  v1 = v0[23];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  sub_10012B320(v1);

  (*(v3 + 8))(v2, v4);
  sub_100014B64((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000F8CD8()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1000F8EE0;
  }

  else
  {
    v2 = sub_1000F8E18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F8E18()
{
  sub_1000FC4BC(v0[18], v0[8]);
  sub_100014B64((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000F8EE0()
{
  sub_1000FC460(*(v0 + 144));
  sub_100014B64(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F8FA0()
{
  *(v1 + 16) = v0;
  sub_1000C773C(&unk_1002D4AC0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000F903C, 0, 0);
}

uint64_t sub_1000F903C()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR___RCRecordingTranscriptionService_fileTranscriptionTask);
  if (*(v1 + OBJC_IVAR___RCRecordingTranscriptionService_fileTranscriptionTask) && (sub_1000F9954(*(v1 + OBJC_IVAR___RCRecordingTranscriptionService_fileTranscriptionTask)), v3 = , sub_1000F9994(v3), v4 = type metadata accessor for TranscriptionData(0), sub_1000C773C(&qword_1002D5540), Task.cancel()(), , v5 = *v2, v0[4] = *v2, v5))
  {
    sub_1000F9954(v5);

    sub_1000F9994(v6);
    v7 = swift_task_alloc();
    v0[5] = v7;
    v0[6] = v4;
    v8 = sub_1000C773C(&qword_1002D5540);
    *v7 = v0;
    v7[1] = sub_1000F9250;
    v9 = v0[3];

    return Task.value.getter(v9, v5, v4, v8, &protocol self-conformance witness table for Error);
  }

  else
  {
    v10 = type metadata accessor for TranscriptionData(0);
    v11 = v0[3];
    (*(*(v10 - 8) + 56))(v11, 1, 1, v10);
    sub_100003CBC(v11, &unk_1002D4AC0);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1000F9250()
{

  if (v0)
  {

    v1 = sub_1000F9430;
  }

  else
  {
    v1 = sub_1000F9374;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000F9374()
{

  v1 = v0[3];
  (*(*(v0[6] - 8) + 56))(v1, 0, 1);
  sub_100003CBC(v1, &unk_1002D4AC0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000F9430()
{
  v1 = v0[3];
  (*(*(v0[6] - 8) + 56))(v1, 1, 1);
  sub_100003CBC(v1, &unk_1002D4AC0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000F9658(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000F9700;

  return sub_1000F8FA0();
}

uint64_t sub_1000F9700()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

id sub_1000F9838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordingTranscriptionService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1000F98A8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000F98BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000F9904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F9954(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000F9994(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000F99D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001FF1C;

  return sub_1000F7C44(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1000F9A9C()
{
  result = qword_1002D00E0;
  if (!qword_1002D00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D00E0);
  }

  return result;
}

uint64_t sub_1000F9AF0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 240) = a1;
  sub_1000C773C(&unk_1002D1D90);
  *(v4 + 40) = swift_task_alloc();
  sub_1000C773C(&qword_1002D00E8);
  *(v4 + 48) = swift_task_alloc();
  type metadata accessor for ClientInfo();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = sub_1000C773C(&qword_1002D0138);
  *(v4 + 72) = swift_task_alloc();
  v5 = sub_1000C773C(&qword_1002D0140);
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  sub_1000C773C(&qword_1002D00F8);
  *(v4 + 112) = swift_task_alloc();
  sub_1000C773C(&qword_1002D0100);
  *(v4 + 120) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1000F9D44, 0, 0);
}

uint64_t sub_1000F9D44()
{
  if (qword_1002CDF50 != -1)
  {
    swift_once();
  }

  *(v0 + 136) = qword_1002E90D0;
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1000F9E20;

  return sub_1000213BC();
}

uint64_t sub_1000F9E20(char a1)
{
  *(*v1 + 241) = a1;

  return _swift_task_switch(sub_1000F9F20, 0, 0);
}

uint64_t sub_1000F9F20()
{
  if (*(v0 + 241) == 1)
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 112);
    v3 = *(v0 + 240);
    static Locale.current.getter();
    v4 = type metadata accessor for TaskHint();
    v5 = *(v4 - 8);
    v6 = &enum case for TaskHint.liveTranscription(_:);
    if (!v3)
    {
      v6 = &enum case for TaskHint.offlineTranscription(_:);
    }

    (*(*(v4 - 8) + 104))(v1, *v6, v4);
    (*(v5 + 56))(v1, 0, 1, v4);
    v7 = type metadata accessor for Transcriber.ModelOptions();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    sub_10010C1D0();
    sub_1000C773C(&qword_1002D0108);
    v8 = type metadata accessor for Transcriber.ReportingOption();
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    if (v3)
    {
      *(v12 + 16) = xmmword_100241790;
      v13 = *(v9 + 104);
      v13(v12 + v11, enum case for Transcriber.ReportingOption.multisegmentResults(_:), v8);
      v13(v12 + v11 + v10, enum case for Transcriber.ReportingOption.volatileResults(_:), v8);
      sub_1000C91D8(v12);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      *(v12 + 16) = xmmword_100242C70;
      (*(v9 + 104))(v12 + v11, enum case for Transcriber.ReportingOption.multisegmentResults(_:), v8);
      sub_1000C91D8(v12);
      swift_setDeallocating();
      (*(v9 + 8))(v12 + v11, v8);
    }

    swift_deallocClassInstance();
    sub_1000C773C(&qword_1002D0110);
    v16 = type metadata accessor for TranscriptionResultAttributeOption();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100242C70;
    (*(v17 + 104))(v19 + v18, enum case for TranscriptionResultAttributeOption.audioTimeRange(_:), v16);
    sub_1000C94F8(v19);
    swift_setDeallocating();
    (*(v17 + 8))(v19 + v18, v16);
    swift_deallocClassInstance();
    type metadata accessor for Transcriber();
    swift_allocObject();
    v20 = Transcriber.init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
    *(v0 + 160) = v20;
    *(v0 + 168) = type metadata accessor for SpeechAnalyzer();
    *(v0 + 176) = sub_1000C773C(&qword_1002D0118);
    v21 = swift_allocObject();
    *(v0 + 184) = v21;
    *(v21 + 16) = xmmword_100242C70;
    v22 = sub_1000FC574();
    *(v0 + 192) = v22;
    *(v21 + 32) = v20;
    *(v21 + 40) = v22;

    v23 = swift_task_alloc();
    *(v0 + 200) = v23;
    *v23 = v0;
    v23[1] = sub_1000FA750;
    v24 = *(v0 + 16);

    return static SpeechAnalyzer.bestAudioFormat(compatibleWith:considering:)(v21, v24);
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 152) = v14;
    *v14 = v0;
    v14[1] = sub_1000FA478;

    return sub_10001890C();
  }
}

uint64_t sub_1000FA478(char a1)
{
  *(*v1 + 242) = a1;

  return _swift_task_switch(sub_1000FA578, 0, 0);
}

uint64_t sub_1000FA578()
{
  if (*(v0 + 242))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 40);
    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    type metadata accessor for MainActor();
    v4 = v1;
    v5 = static MainActor.shared.getter();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = &protocol witness table for MainActor;
    v6[4] = v4;
    sub_100179578(0, 0, v2, &unk_100243928, v6);

    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  sub_1000FC520();
  swift_allocError();
  *v8 = v7;
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000FA750(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000FAA70, 0, 0);
  }

  else
  {
    v9 = (v4[3] + *v4[3]);
    v6 = swift_task_alloc();
    v4[28] = v6;
    *v6 = v5;
    v6[1] = sub_1000FA95C;
    v7 = v4[9];

    return v9(v7, a1);
  }
}

uint64_t sub_1000FA95C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000FAE54;
  }

  else
  {
    v2 = sub_1000FAB64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FAA70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FAB64()
{
  v13 = v0[24];
  v1 = v0[20];
  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v12 = v0[6];
  v14 = v0[2];
  type metadata accessor for AnalyzerInput();
  sub_100008034(&qword_1002D0148, &qword_1002D0138);
  AsyncMapSequence.init(_:transform:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  ClientInfo.init(identifier:)();
  (*(v4 + 16))(v3, v2, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100242C70;
  *(v6 + 32) = v1;
  *(v6 + 40) = v13;
  v7 = type metadata accessor for AnalysisOptions();
  (*(*(v7 - 8) + 56))(v12, 1, 1, v7);
  type metadata accessor for AnalysisContext();
  swift_allocObject();
  swift_retain_n();
  AnalysisContext.init()();
  sub_100008034(&qword_1002D0150, &qword_1002D0140);
  v8 = SpeechAnalyzer.__allocating_init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:volatileRangeChangedHandler:)();

  (*(v4 + 8))(v2, v5);

  v9 = v0[1];
  v10 = v0[20];

  return v9(v10, v8);
}

uint64_t sub_1000FAE54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FAF54(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  *(v4 + 80) = a2;
  *(v4 + 288) = a1;
  sub_1000C773C(&unk_1002D1D90);
  *(v4 + 104) = swift_task_alloc();
  sub_1000C773C(&qword_1002D00E8);
  *(v4 + 112) = swift_task_alloc();
  type metadata accessor for ClientInfo();
  *(v4 + 120) = swift_task_alloc();
  v5 = sub_1000C773C(&qword_1002D00F0);
  *(v4 + 128) = v5;
  *(v4 + 136) = *(v5 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  sub_1000C773C(&qword_1002D00F8);
  *(v4 + 160) = swift_task_alloc();
  sub_1000C773C(&qword_1002D0100);
  *(v4 + 168) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v4 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1000FB16C, 0, 0);
}

uint64_t sub_1000FB16C()
{
  if (qword_1002CDF50 != -1)
  {
    swift_once();
  }

  *(v0 + 184) = qword_1002E90D0;
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_1000FB248;

  return sub_1000213BC();
}

uint64_t sub_1000FB248(char a1)
{
  *(*v1 + 289) = a1;

  return _swift_task_switch(sub_1000FB348, 0, 0);
}

uint64_t sub_1000FB348()
{
  if (*(v0 + 289) == 1)
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 160);
    v3 = *(v0 + 288);
    static Locale.current.getter();
    v4 = type metadata accessor for TaskHint();
    v5 = *(v4 - 8);
    v6 = &enum case for TaskHint.liveTranscription(_:);
    if (!v3)
    {
      v6 = &enum case for TaskHint.offlineTranscription(_:);
    }

    (*(*(v4 - 8) + 104))(v1, *v6, v4);
    (*(v5 + 56))(v1, 0, 1, v4);
    v7 = type metadata accessor for Transcriber.ModelOptions();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    sub_10010C1D0();
    sub_1000C773C(&qword_1002D0108);
    v8 = type metadata accessor for Transcriber.ReportingOption();
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    if (v3)
    {
      *(v12 + 16) = xmmword_100241790;
      v13 = *(v9 + 104);
      v13(v12 + v11, enum case for Transcriber.ReportingOption.multisegmentResults(_:), v8);
      v13(v12 + v11 + v10, enum case for Transcriber.ReportingOption.volatileResults(_:), v8);
      sub_1000C91D8(v12);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      *(v12 + 16) = xmmword_100242C70;
      (*(v9 + 104))(v12 + v11, enum case for Transcriber.ReportingOption.multisegmentResults(_:), v8);
      sub_1000C91D8(v12);
      swift_setDeallocating();
      (*(v9 + 8))(v12 + v11, v8);
    }

    swift_deallocClassInstance();
    sub_1000C773C(&qword_1002D0110);
    v16 = type metadata accessor for TranscriptionResultAttributeOption();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100242C70;
    (*(v17 + 104))(v19 + v18, enum case for TranscriptionResultAttributeOption.audioTimeRange(_:), v16);
    sub_1000C94F8(v19);
    swift_setDeallocating();
    (*(v17 + 8))(v19 + v18, v16);
    swift_deallocClassInstance();
    type metadata accessor for Transcriber();
    swift_allocObject();
    v20 = Transcriber.init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
    *(v0 + 208) = v20;
    *(v0 + 216) = type metadata accessor for SpeechAnalyzer();
    *(v0 + 224) = sub_1000C773C(&qword_1002D0118);
    v21 = swift_allocObject();
    *(v0 + 232) = v21;
    *(v21 + 16) = xmmword_100242C70;
    v22 = sub_1000FC574();
    *(v0 + 240) = v22;
    *(v21 + 32) = v20;
    *(v21 + 40) = v22;

    v23 = swift_task_alloc();
    *(v0 + 248) = v23;
    *v23 = v0;
    v23[1] = sub_1000FBB68;
    v24 = *(v0 + 80);

    return static SpeechAnalyzer.bestAudioFormat(compatibleWith:considering:)(v21, v24);
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 200) = v14;
    *v14 = v0;
    v14[1] = sub_1000FB8A0;

    return sub_10001890C();
  }
}

uint64_t sub_1000FB8A0(char a1)
{
  *(*v1 + 290) = a1;

  return _swift_task_switch(sub_1000FB9A0, 0, 0);
}

uint64_t sub_1000FB9A0()
{
  if (*(v0 + 290))
  {
    v1 = *(v0 + 184);
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    type metadata accessor for MainActor();
    v5 = v1;
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;
    sub_100179578(0, 0, v2, &unk_10024C9A0, v7);

    v8 = 4;
  }

  else
  {
    v3 = *(v0 + 80);
    v8 = 5;
  }

  sub_1000FC520();
  swift_allocError();
  *v9 = v8;
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000FBB68(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000FBE78, 0, 0);
  }

  else
  {
    v6 = v4[11];

    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    v4[34] = v7;
    *v7 = v5;
    v7[1] = sub_1000FBD64;

    return (v9)(v4 + 2, a1);
  }
}

uint64_t sub_1000FBD64()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1000FC1FC;
  }

  else
  {
    v2 = sub_1000FBF4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FBE78()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FBF4C()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  v2 = *(v0 + 208);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v13 = *(v0 + 240);
  v14 = *(v0 + 112);
  v15 = *(v0 + 80);
  *(v0 + 64) = v1;
  type metadata accessor for AnalyzerInput();
  sub_1000FC5CC();
  AsyncMapSequence.init(_:transform:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  ClientInfo.init(identifier:)();
  (*(v4 + 16))(v5, v3, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100242C70;
  *(v7 + 32) = v2;
  *(v7 + 40) = v13;
  v8 = type metadata accessor for AnalysisOptions();
  (*(*(v8 - 8) + 56))(v14, 1, 1, v8);
  type metadata accessor for AnalysisContext();
  swift_allocObject();
  swift_retain_n();
  AnalysisContext.init()();
  sub_100008034(&qword_1002D0130, &qword_1002D00F0);
  v9 = SpeechAnalyzer.__allocating_init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:volatileRangeChangedHandler:)();

  (*(v4 + 8))(v3, v6);

  v10 = *(v0 + 8);
  v11 = *(v0 + 208);

  return v10(v11, v9);
}

uint64_t sub_1000FC1FC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FC2FC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002001C;

  return sub_10010AA64(a1, a2, v6);
}

uint64_t sub_1000FC3AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001FF1C;

  return sub_10010B0B4(a1, v5, v4);
}

uint64_t sub_1000FC460(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FC4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000FC520()
{
  result = qword_1002D4AE0;
  if (!qword_1002D4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4AE0);
  }

  return result;
}

unint64_t sub_1000FC574()
{
  result = qword_1002D0120;
  if (!qword_1002D0120)
  {
    type metadata accessor for Transcriber();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0120);
  }

  return result;
}

unint64_t sub_1000FC5CC()
{
  result = qword_1002D0128;
  if (!qword_1002D0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0128);
  }

  return result;
}

uint64_t sub_1000FC620()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002001C;

  return sub_1000F9658(v2, v3);
}

uint64_t sub_1000FC6CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000FC714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001FF1C;

  return sub_1000F6B6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000FC7DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001FF1C;

  return sub_1000212A4(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for TranscriptionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TranscriptionError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000FC9F4()
{
  result = qword_1002D0158;
  if (!qword_1002D0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0158);
  }

  return result;
}

unint64_t sub_1000FCA4C()
{
  result = qword_1002D0160;
  if (!qword_1002D0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0160);
  }

  return result;
}

void sub_1000FCAE8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *&a1[*a4];
  *&a1[*a4] = a3;
  if (v5 != a3)
  {
    v6 = *&a1[OBJC_IVAR___RCShareMemoOptionsManager_onUpdate];
    v8 = a1;

    v6(v7);
  }
}

id sub_1000FCCA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareMemoOptionsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1000FCD4C()
{
  v1 = *(v0 + OBJC_IVAR___RCShareMemoOptionsManager_compositions);
  if (v1 >> 62)
  {
LABEL_20:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = [v5 hasMultipleTracks];

    v3 = v4 + 1;
  }

  while (!v7);

  return v2 != v4 && *(v0 + OBJC_IVAR___RCShareMemoOptionsManager_selectedSendAsOptionIndex) == 1;
}

id sub_1000FCE60()
{
  if (qword_1002CDDC0 != -1)
  {
    swift_once();
  }

  sub_1000C773C(&unk_1002D02A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100241790;
  if (qword_1002CDDD0 != -1)
  {
    swift_once();
  }

  v2 = *algn_1002D0198;
  *(v1 + 32) = qword_1002D0190;
  *(v1 + 40) = v2;
  v3 = qword_1002CDDD8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *algn_1002D01A8;
  *(v1 + 48) = qword_1002D01A0;
  *(v1 + 56) = v4;
  v5 = objc_opt_self();

  v6 = String._bridgeToObjectiveC()();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = *&v0[OBJC_IVAR___RCShareMemoOptionsManager_selectedSendAsOptionIndex];
  if (qword_1002CDDF0 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v22[4] = sub_1000FE058;
  v22[5] = v10;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_1000FD608;
  v22[3] = &unk_10028F208;
  v11 = _Block_copy(v22);
  v12 = v0;

  v13 = [v5 pickerCustomizationWithIdentifier:v6 options:v7.super.isa selectedOptionIndex:v8 footerText:v9 valueChangedHandler:v11];
  _Block_release(v11);

  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  sub_1000C773C(&unk_1002CE190);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002432F0;
  *(v17 + 32) = v13;
  sub_1000067AC(0, &qword_1002D02B0);
  v18 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v14 createWithGroupName:v15 identifier:v16 customizations:isa];

  return v20;
}

id sub_1000FD1F0()
{
  if (qword_1002CDDC8 != -1)
  {
    swift_once();
  }

  sub_1000C773C(&unk_1002D02A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100241790;
  if (qword_1002CDDE0 != -1)
  {
    swift_once();
  }

  v2 = *algn_1002D01B8;
  *(v1 + 32) = qword_1002D01B0;
  *(v1 + 40) = v2;
  v3 = qword_1002CDDE8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *algn_1002D01C8;
  *(v1 + 48) = qword_1002D01C0;
  *(v1 + 56) = v4;
  v5 = objc_opt_self();

  v6 = String._bridgeToObjectiveC()();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = *&v0[OBJC_IVAR___RCShareMemoOptionsManager_selectedExportOptionIndex];
  if (qword_1002CDDF8 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v22[4] = sub_1000FE01C;
  v22[5] = v10;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_1000FD608;
  v22[3] = &unk_10028F1B8;
  v11 = _Block_copy(v22);
  v12 = v0;

  v13 = [v5 pickerCustomizationWithIdentifier:v6 options:v7.super.isa selectedOptionIndex:v8 footerText:v9 valueChangedHandler:v11];
  _Block_release(v11);

  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  sub_1000C773C(&unk_1002CE190);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002432F0;
  *(v17 + 32) = v13;
  sub_1000067AC(0, &qword_1002D02B0);
  v18 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v14 createWithGroupName:v15 identifier:v16 customizations:isa];

  return v20;
}

void sub_1000FD608(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1000FD670(void *a1, uint64_t a2, void *a3)
{
  result = [a1 selectedOptionIndex];
  v6 = *(a2 + *a3);
  *(a2 + *a3) = result;
  if (result != v6)
  {
    v7 = *(a2 + OBJC_IVAR___RCShareMemoOptionsManager_onUpdate);

    v7(v8);
  }

  return result;
}

uint64_t sub_1000FD6F4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1002D0170 = result;
  *algn_1002D0178 = v5;
  return result;
}

uint64_t sub_1000FD7F8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1002D0180 = result;
  *algn_1002D0188 = v5;
  return result;
}

uint64_t sub_1000FD8FC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1002D0190 = result;
  *algn_1002D0198 = v5;
  return result;
}

uint64_t sub_1000FDA00()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1002D01A0 = result;
  *algn_1002D01A8 = v5;
  return result;
}

uint64_t sub_1000FDB04()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1002D01B0 = result;
  *algn_1002D01B8 = v5;
  return result;
}

uint64_t sub_1000FDC08()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1002D01C0 = result;
  *algn_1002D01C8 = v5;
  return result;
}

uint64_t sub_1000FDD0C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1002D01D0 = result;
  *algn_1002D01D8 = v5;
  return result;
}

uint64_t sub_1000FDE10()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8, v3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1002D01E0 = result;
  *algn_1002D01E8 = v5;
  return result;
}

void *sub_1000FDF14()
{
  sub_1000FCE60();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (sub_1000FCD4C())
  {
    sub_1000FD1F0();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000FE040(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000FE0CC()
{
  v1 = *&v0[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_timer];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ShareMemoProgressOverlayPresenter();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000FE1F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8, v12);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8, v14);
  if (*(v5 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_canPresentOverlay) == 1)
  {
    v15 = *(v5 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_parentController);
    *(v5 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_parentController) = a1;
    v30 = a1;

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v16 = String._bridgeToObjectiveC()();

    v17 = [objc_opt_self() alertControllerWithTitle:v16 message:0 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a4;
    v19[4] = a5;

    v20 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1000FF2E4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000FD608;
    aBlock[3] = &unk_10028F348;
    v21 = _Block_copy(aBlock);

    v22 = [objc_opt_self() actionWithTitle:v20 style:1 handler:v21];
    _Block_release(v21);

    [v17 addAction:v22];
    v23 = objc_allocWithZone(_s9UIKitHostCMa());
    v24 = v5;
    v25 = sub_10013AFC4(0.25);
    v26 = *(v5 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_progressViewController);
    *(v5 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_progressViewController) = v25;
    v27 = v25;

    [v17 setContentViewController:v27];
    [v30 presentViewController:v17 animated:1 completion:0];
    v28 = *(v24 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_alertController);
    *(v24 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_alertController) = v17;
    v29 = v17;

    *(v24 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_isPresented) = 1;
    sub_1000FE7F0(a2, a3);
  }
}

uint64_t sub_1000FE5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;

    sub_1000FE670(sub_1000FF364, v8);
  }

  return result;
}

void sub_1000FE670(void (*a1)(void), uint64_t a2)
{
  [*(v2 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_timer) invalidate];
  v5 = *(v2 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_alertController);
  if (v5)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v11[4] = sub_1000FF2D8;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10012ED20;
    v11[3] = &unk_10028F2F8;
    v8 = _Block_copy(v11);
    v9 = v5;
    sub_1000D0DAC(a1);

    [v9 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }

  else
  {
    *(v2 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_isPresented) = 0;
    v10 = *(v2 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_parentController);
    *(v2 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_parentController) = 0;

    if (a1)
    {
      a1();
    }
  }
}

void sub_1000FE7F0(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v6;
  v11[4] = sub_1000FF2F0;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000FD608;
  v11[3] = &unk_10028F398;
  v8 = _Block_copy(v11);

  v9 = [v5 scheduledTimerWithTimeInterval:1 repeats:v8 block:0.25];
  _Block_release(v8);
  v10 = *(v2 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_timer);
  *(v2 + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_timer) = v9;
}

uint64_t sub_1000FEA2C(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v30 = v12;
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v26 - v19;
  sub_100017154();
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v29 = *(v13 + 8);
  v29(v17, v12);
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = a1;
  v21[4] = v27;
  aBlock[4] = sub_1000FEFBC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012ED20;
  aBlock[3] = &unk_10028F280;
  v22 = _Block_copy(aBlock);
  v23 = v2;
  sub_1000D0DAC(a1);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000FF2FC(&qword_1002D1DC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000C773C(&unk_1002D1080);
  sub_1000FF000();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v33 + 8))(v7, v4);
  (*(v31 + 8))(v11, v32);
  return (v29)(v20, v30);
}

id sub_1000FEE9C()
{
  v0[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_canPresentOverlay] = 1;
  v0[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_isPresented] = 0;
  *&v0[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_progressViewController] = 0;
  *&v0[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_parentController] = 0;
  *&v0[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_alertController] = 0;
  *&v0[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_timer] = 0;
  *&v0[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_animationTiming] = 0x3FD0000000000000;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareMemoProgressOverlayPresenter();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1000FEF80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShareMemoProgressOverlayPresenter();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000FEFE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000FF000()
{
  result = qword_1002D1DD0;
  if (!qword_1002D1DD0)
  {
    sub_1000C7784(&unk_1002D1080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1DD0);
  }

  return result;
}

void sub_1000FF064(uint64_t a1, float (*a2)(void))
{
  v2 = a2();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___RCShareMemoProgressOverlayPresenter_progressViewController);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = *&v6[qword_1002D2258];
      swift_getKeyPath();
      sub_1000FF2FC(&qword_1002D0320, _s9ViewModelCMa);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v7 + 24) >= v2)
      {
      }

      else
      {
        v8 = static Animation.linear(duration:)();
        __chkstk_darwin(v8, v9);
        withAnimation<A>(_:_:)();
      }
    }
  }
}

void sub_1000FF1F4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_isPresented] = 0;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_alertController];
    *&v4[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_alertController] = 0;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_parentController];
    *&v6[OBJC_IVAR___RCShareMemoProgressOverlayPresenter_parentController] = 0;
  }

  if (a2)
  {
    a2();
  }
}

uint64_t sub_1000FF2FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FF3B8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000FF41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return _swift_task_switch(sub_1000FF444, 0, 0);
}

uint64_t sub_1000FF444()
{
  v1 = *(v0[9] + 16);
  v0[10] = v1;
  os_unfair_lock_lock((v1 + 24));
  sub_100103988(*(v1 + 16));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 24));
  v2 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4 options:0];
  v0[11] = v6;

  if ([v6 rc_hasSpatialTracks])
  {
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_1000FF5D8;
    v8 = v0[8];
    v10 = v0[6];
    v9 = v0[7];

    return sub_1000FFB38(v6, v9, v8, v10);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_1000FF704;
    v13 = v0[8];
    v15 = v0[6];
    v14 = v0[7];

    return sub_10010054C(v6, v14, v13, v15);
  }
}

uint64_t sub_1000FF5D8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[14] = v1;
    v5 = sub_1000FF8C8;
  }

  else
  {
    v4[2] = v2;
    v4[3] = a1;
    v4[4] = 0;
    v5 = sub_1000FF830;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000FF704(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[14] = v1;
    v5 = sub_1000FF8C8;
  }

  else
  {
    v4[2] = v2;
    v4[3] = a1;
    v4[4] = 0;
    v5 = sub_1000FF830;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000FF830()
{
  v1 = *(v0 + 80);

  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16) == 1)
  {
    *(*(v0 + 80) + 16) = 2;
  }

  v2 = *(v0 + 24);
  os_unfair_lock_unlock((*(v0 + 80) + 24));
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000FF8C8()
{
  v1 = *(v0 + 80);

  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16) == 1)
  {
    *(*(v0 + 80) + 16) = 2;
  }

  os_unfair_lock_unlock((*(v0 + 80) + 24));
  v2 = *(v0 + 8);

  return v2();
}

float sub_1000FF958()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  os_unfair_lock_unlock((v1 + 24));
  os_unfair_lock_lock((v1 + 24));
  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(v4 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_14;
        }
      }

      [v9 progress];
      v12 = v11;
      swift_unknownObjectRelease();
      v7 = v7 + v12;
      ++v8;
    }

    while (v10 != v5);
  }

  os_unfair_lock_unlock((v1 + 24));
  if (v3 >= 1)
  {
    return v7 / v3;
  }

  return v6;
}

void sub_1000FFAC4()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_100103988(*(v1 + 16));
  *(v1 + 16) = 3;

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1000FFB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = *(sub_1000C773C(&qword_1002D5FA0) - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v5[14] = *(v7 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000FFC84, 0, 0);
}

uint64_t sub_1000FFC84()
{
  v1 = [*(v0 + 32) rc_audioTracksPreferringSpatial];
  sub_100103998();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      *(v0 + 136) = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([*(v0 + 32) rc_trackIsSpatial:v6])
      {
        if (v2 >> 62)
        {
          v16 = _CocoaArrayWrapper.endIndex.getter();
          if (v16 < 2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16 < 2)
          {
LABEL_14:

            sub_1001039E4();
            swift_allocError();
            *v17 = xmmword_100243B90;
            *(v17 + 16) = 1;
            swift_willThrow();

            goto LABEL_27;
          }
        }

        if (v5)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
          *(v0 + 144) = v18;
          v19 = *(v0 + 128);
          v20 = *(v0 + 104);
          v21 = *(v0 + 96);
          v41 = *(v0 + 56);
          v22 = *(v0 + 48);
          v43 = *(v0 + 40);
          v44 = *(v0 + 32);
          v23 = v18;
          v42 = v18;

          sub_1000C773C(&unk_1002CE190);
          v24 = swift_allocObject();
          *(v0 + 152) = v24;
          *(v24 + 16) = xmmword_1002432E0;
          *(v24 + 32) = v7;
          *(v24 + 40) = v23;
          v25 = swift_allocObject();
          swift_weakInit();
          v26 = v19;
          (*(v20 + 16))(v19, v41, v21);
          v27 = *(v20 + 80);
          *(v0 + 208) = v27;
          v28 = (v27 + 56) & ~v27;
          v29 = swift_allocObject();
          *(v0 + 160) = v29;
          *(v29 + 2) = v7;
          *(v29 + 3) = v43;
          *(v29 + 4) = v22;
          *(v29 + 5) = v25;
          *(v29 + 6) = v44;
          v30 = *(v20 + 32);
          *(v0 + 168) = v30;
          *(v0 + 176) = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v30(&v29[v28], v26, v21);
          *(v0 + 16) = v24;
          v31 = v7;
          v32 = v42;

          v33 = v44;
          v34 = sub_1000C773C(&qword_1002D0458);
          v35 = swift_task_alloc();
          *(v0 + 184) = v35;
          v35[2] = v0 + 16;
          v35[3] = &unk_100243C68;
          v35[4] = v29;
          v36 = sub_1000C773C(&qword_1002D0460);
          v37 = swift_task_alloc();
          *(v0 + 192) = v37;
          *v37 = v0;
          v37[1] = sub_100100134;
          v13 = &unk_100243C80;
          v16 = v0 + 24;
          v9 = v34;
          v10 = v36;
          v11 = 0;
          v12 = 0;
          v14 = v35;
          v15 = v34;
        }

        else
        {
          if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v18 = *(v2 + 40);
            goto LABEL_20;
          }

          __break(1u);
        }

        return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v16, v9, v10, v11, v12, v13, v14, v15);
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  sub_1001039E4();
  swift_allocError();
  *v38 = xmmword_100243BA0;
  *(v38 + 16) = 1;
  swift_willThrow();
LABEL_27:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100100134()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10010049C;
  }

  else
  {

    v2 = sub_100100250;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100100250()
{

  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 72);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v18 = *(v0 + 104);
    v19 = *(v3 + 72);
    v17 = (*(v0 + 208) + 32) & ~*(v0 + 208);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      v8 = *(v0 + 80);
      sub_10000B46C(v4, v7, &qword_1002D5FA0);
      sub_10001DBEC(v7, v8, &qword_1002D5FA0);
      if ((*(v18 + 48))(v8, 1, v6) == 1)
      {
        sub_100003CBC(*(v0 + 80), &qword_1002D5FA0);
      }

      else
      {
        (*(v0 + 168))(*(v0 + 120), *(v0 + 80), *(v0 + 96));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1000F2888(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_1000F2888(v9 > 1, v10 + 1, 1, v5);
        }

        v11 = *(v0 + 168);
        v12 = *(v0 + 120);
        v13 = *(v0 + 96);
        *(v5 + 2) = v10 + 1;
        v11(&v5[v17 + *(v18 + 72) * v10], v12, v13);
      }

      v4 += v19;
      --v2;
    }

    while (v2);
    v14 = *(v0 + 144);
  }

  else
  {
    v14 = *(v0 + 144);

    v5 = _swiftEmptyArrayStorage;
  }

  v15 = *(v0 + 8);

  return v15(v5);
}

uint64_t sub_10010049C()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10010054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = *(sub_1000C773C(&qword_1002D5FA0) - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v5[14] = *(v7 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100100698, 0, 0);
}

uint64_t sub_100100698()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  v5 = *(v0 + 48);
  v21 = *(v0 + 40);
  v6 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v1, v4, v3);
  v8 = *(v2 + 80);
  *(v0 + 200) = v8;
  v9 = (v8 + 48) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 136) = v10;
  *(v10 + 2) = v21;
  *(v10 + 3) = v5;
  *(v10 + 4) = v7;
  *(v10 + 5) = v6;
  v11 = *(v2 + 32);
  *(v0 + 144) = v11;
  *(v0 + 152) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(&v10[v9], v1, v3);

  v12 = [v6 rc_audioTracks];
  sub_100103998();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 160) = v13;

  v14 = swift_allocObject();
  *(v0 + 168) = v14;
  *(v14 + 16) = &unk_100243CF0;
  *(v14 + 24) = v10;
  *(v0 + 16) = v13;

  v15 = sub_1000C773C(&qword_1002D0458);
  v16 = swift_task_alloc();
  *(v0 + 176) = v16;
  v16[2] = v0 + 16;
  v16[3] = &unk_100243D00;
  v16[4] = v14;
  v17 = sub_1000C773C(&qword_1002D0460);
  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_100100924;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 24, v15, v17, 0, 0, &unk_100243D10, v16, v15);
}

uint64_t sub_100100924()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100100C8C;
  }

  else
  {

    v2 = sub_100100A40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100100A40()
{

  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 72);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v17 = *(v0 + 104);
    v18 = *(v3 + 72);
    v16 = (*(v0 + 200) + 32) & ~*(v0 + 200);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      v8 = *(v0 + 80);
      sub_10000B46C(v4, v7, &qword_1002D5FA0);
      sub_10001DBEC(v7, v8, &qword_1002D5FA0);
      if ((*(v17 + 48))(v8, 1, v6) == 1)
      {
        sub_100003CBC(*(v0 + 80), &qword_1002D5FA0);
      }

      else
      {
        (*(v0 + 144))(*(v0 + 120), *(v0 + 80), *(v0 + 96));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1000F2888(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_1000F2888(v9 > 1, v10 + 1, 1, v5);
        }

        v11 = *(v0 + 144);
        v12 = *(v0 + 120);
        v13 = *(v0 + 96);
        *(v5 + 2) = v10 + 1;
        v11(&v5[v16 + *(v17 + 72) * v10], v12, v13);
      }

      v4 += v18;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v14 = *(v0 + 8);

  return v14(v5);
}

uint64_t sub_100100C8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100D50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a1;
  v8[8] = a3;
  v9 = *a2;
  v8[13] = a8;
  v8[14] = v9;
  return _swift_task_switch(sub_100100D80, 0, 0);
}

uint64_t sub_100100D80()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 112) trackID];
  v3 = [v1 trackID];
  v4 = [objc_opt_self() mainBundle];
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  if (v2 == v3)
  {
    v24 = 0x800000010022FDC0;
    v7 = 0x800000010022FDA0;
    v8 = 0xD00000000000004BLL;
  }

  else
  {
    v24 = 0x800000010022FD10;
    v7 = 0x800000010022FCF0;
    v8 = 0xD000000000000045;
  }

  v9 = 0xD000000000000016;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(*(&v7 - 1), 0, v4, v10, *&v8);

  String.append(_:)(v11);

  *(v0 + 120) = v6;
  *(v0 + 128) = v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v13 = *(Strong + 16);
    os_unfair_lock_lock((v13 + 24));
    v14 = *(v13 + 16);
    os_unfair_lock_unlock((v13 + 24));
    if (v14 == 1)
    {
      [*(v0 + 96) rc_trackIsSpatial:*(v0 + 112)];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 144) = v16;
      *(v0 + 152) = v15;
      v17 = swift_task_alloc();
      *(v0 + 160) = v17;
      *v17 = v0;
      v17[1] = sub_100101064;
      v18 = *(v0 + 112);
      v19 = *(v0 + 96);

      return sub_100105F10(v18, v19);
    }

    v21 = *(v0 + 56);
  }

  else
  {
    v21 = *(v0 + 56);
  }

  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100101064(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 168) = a1;

  if (v1)
  {

    *(v3 + 232) = v1;
    v4 = sub_100101A90;
  }

  else
  {
    v4 = sub_10010119C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10010119C()
{
  if ([*(v0 + 96) rc_trackIsSpatial:*(v0 + 112)])
  {
    v1 = *(v0 + 168);
    v2 = type metadata accessor for RCSpatialExporter();
    v3 = objc_allocWithZone(v2);
    v4 = &v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_exporter];
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *&v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_composition] = v1;
    *&v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_metadata] = 0;
    *(v0 + 40) = v3;
    *(v0 + 48) = v2;
    v5 = objc_msgSendSuper2((v0 + 40), "init");
    *(v0 + 192) = v5;
    v6 = *(*(v0 + 136) + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_lock((v6 + 24));
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v7 = *(v0 + 152);
    v8 = *(v0 + 104);
    v18 = *(v0 + 136);
    v19 = *(v0 + 120);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    os_unfair_lock_unlock((v6 + 24));
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *(v9 + 16) = v5;
    *(v9 + 24) = v8;
    *(v9 + 32) = v19;
    *(v9 + 48) = v7;
    *(v9 + 56) = vextq_s8(v18, v18, 8uLL);
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    v11 = sub_1000C773C(&qword_1002D5FA0);
    *v10 = v0;
    v10[1] = sub_1001015A4;
    v12 = *(v0 + 56);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, 0, 0, 0xD00000000000003FLL, 0x800000010022FD60, sub_100106498, v9, v11);
  }

  else
  {
    v13 = *(v0 + 168);
    objc_allocWithZone(type metadata accessor for RCExportSessionComposedAssetWriter());
    v14 = v13;
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_100101468;
    v16 = *(v0 + 168);

    return sub_100191C5C(v16);
  }
}

uint64_t sub_100101468(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    v5 = sub_100101A20;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_10010185C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001015A4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100101758;
  }

  else
  {
    swift_unknownObjectRelease();

    v2 = sub_1001016E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001016E8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100101758()
{
  v1 = v0[27];
  v2 = v0[17];
  swift_unknownObjectRelease();

  v3 = *(v2 + 16);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_10010649C((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010185C()
{
  v1 = *(v0 + 224);
  *(v0 + 192) = v1;
  v2 = *(*(v0 + 136) + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v2 + 24));
  swift_unknownObjectRetain();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v3 = *(v0 + 152);
  v4 = *(v0 + 104);
  v10 = *(v0 + 136);
  v11 = *(v0 + 120);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  os_unfair_lock_unlock((v2 + 24));
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v11;
  *(v5 + 48) = v3;
  *(v5 + 56) = vextq_s8(v10, v10, 8uLL);
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  v7 = sub_1000C773C(&qword_1002D5FA0);
  *v6 = v0;
  v6[1] = sub_1001015A4;
  v8 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000003FLL, 0x800000010022FD60, sub_100106498, v5, v7);
}

uint64_t sub_100101A20()
{
  *(v0 + 232) = *(v0 + 184);

  return _swift_task_switch(sub_100101A90, 0, 0);
}

uint64_t sub_100101A90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100101AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  return _swift_task_switch(sub_100101B20, 0, 0);
}

void sub_100101B20()
{
  v1 = *(v0 + 72);
  v17 = *(v0 + 88);
  v18 = *(v0 + 96);

  v2._countAndFlagsBits = 95;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    return;
  }

  *(v0 + 56) = v1 + 1;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v5);

  *(v0 + 128) = v17;
  *(v0 + 136) = v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v7 = *(Strong + 16);
    os_unfair_lock_lock((v7 + 24));
    v8 = *(v7 + 16);
    os_unfair_lock_unlock((v7 + 24));
    if (v8 == 1)
    {
      [*(v0 + 112) rc_trackIsSpatial:*(v0 + 80)];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 152) = v10;
      *(v0 + 160) = v9;
      v11 = swift_task_alloc();
      *(v0 + 168) = v11;
      *v11 = v0;
      v11[1] = sub_100101D94;
      v12 = *(v0 + 112);
      v13 = *(v0 + 80);

      sub_100105F10(v13, v12);
      return;
    }

    v14 = *(v0 + 64);
  }

  else
  {
    v14 = *(v0 + 64);
  }

  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = *(v0 + 8);

  v16();
}

uint64_t sub_100101D94(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 176) = a1;

  if (v1)
  {

    *(v3 + 240) = v1;
    v4 = sub_1001027C0;
  }

  else
  {
    v4 = sub_100101ECC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100101ECC()
{
  if ([*(v0 + 112) rc_trackIsSpatial:*(v0 + 80)])
  {
    v1 = *(v0 + 176);
    v2 = type metadata accessor for RCSpatialExporter();
    v3 = objc_allocWithZone(v2);
    v4 = &v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_exporter];
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *&v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_composition] = v1;
    *&v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_metadata] = 0;
    *(v0 + 40) = v3;
    *(v0 + 48) = v2;
    v5 = objc_msgSendSuper2((v0 + 40), "init");
    *(v0 + 200) = v5;
    v6 = *(*(v0 + 144) + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_lock((v6 + 24));
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v7 = *(v0 + 160);
    v8 = *(v0 + 136);
    v18 = *(v0 + 144);
    v19 = *(v0 + 120);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    os_unfair_lock_unlock((v6 + 24));
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *(v9 + 16) = v5;
    *(v9 + 24) = v19;
    *(v9 + 40) = v8;
    *(v9 + 48) = v7;
    *(v9 + 56) = vextq_s8(v18, v18, 8uLL);
    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    v11 = sub_1000C773C(&qword_1002D5FA0);
    *v10 = v0;
    v10[1] = sub_1001022D4;
    v12 = *(v0 + 64);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, 0, 0, 0xD00000000000003FLL, 0x800000010022FD60, sub_100107084, v9, v11);
  }

  else
  {
    v13 = *(v0 + 176);
    objc_allocWithZone(type metadata accessor for RCExportSessionComposedAssetWriter());
    v14 = v13;
    v15 = swift_task_alloc();
    *(v0 + 184) = v15;
    *v15 = v0;
    v15[1] = sub_100102198;
    v16 = *(v0 + 176);

    return sub_100191C5C(v16);
  }
}

uint64_t sub_100102198(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {

    v5 = sub_100102750;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_10010258C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001022D4()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_100102488;
  }

  else
  {
    swift_unknownObjectRelease();

    v2 = sub_100102418;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100102418()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100102488()
{
  v1 = v0[28];
  v2 = v0[18];
  swift_unknownObjectRelease();

  v3 = *(v2 + 16);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_100107064((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010258C()
{
  v1 = *(v0 + 232);
  *(v0 + 200) = v1;
  v2 = *(*(v0 + 144) + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v2 + 24));
  swift_unknownObjectRetain();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  os_unfair_lock_unlock((v2 + 24));
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v11;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;
  *(v5 + 56) = vextq_s8(v10, v10, 8uLL);
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  v7 = sub_1000C773C(&qword_1002D5FA0);
  *v6 = v0;
  v6[1] = sub_1001022D4;
  v8 = *(v0 + 64);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000003FLL, 0x800000010022FD60, sub_100107084, v5, v7);
}

uint64_t sub_100102750()
{
  *(v0 + 240) = *(v0 + 192);

  return _swift_task_switch(sub_1001027C0, 0, 0);
}

uint64_t sub_1001027C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100102824(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002001C;

  return v9(a1, v5, v6);
}

void sub_100102930(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v37 = a2;
  v10 = type metadata accessor for URL();
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C773C(&qword_1002D0490);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v30 - v18;
  (*(v15 + 16))(&v30 - v18, a1, v14);
  (*(v11 + 16))(&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + *(v11 + 80) + v20) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v15 + 32))(v24 + v20, v19, v14);
  (*(v11 + 32))(v24 + v21, v31, v30);
  v25 = (v24 + v22);
  v26 = v33;
  *v25 = v32;
  v25[1] = v26;
  v27 = (v24 + v23);
  v28 = v35;
  *v27 = v34;
  v27[1] = v28;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
  aBlock[4] = sub_1001064B4;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100194F40;
  aBlock[3] = &unk_10028F520;
  v29 = _Block_copy(aBlock);

  [v37 writeCompositionWithCompletionBlock:v29];
  _Block_release(v29);
}

uint64_t sub_100102C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52[4] = a7;
  v52[5] = a8;
  v52[2] = a4;
  v52[3] = a6;
  v52[1] = a5;
  v52[6] = a3;
  v11 = sub_1000C773C(&qword_1002D5FA0);
  v13 = __chkstk_darwin(v11 - 8, v12);
  v52[0] = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v17 = v52 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v21 = __chkstk_darwin(v18, v20);
  v23 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v21, v24);
  v27 = v52 - v26;
  __chkstk_darwin(v25, v28);
  v30 = v52 - v29;
  sub_10000B46C(a1, v17, &qword_1002D5FA0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100003CBC(v17, &qword_1002D5FA0);
    sub_1001039E4();
    v31 = swift_allocError();
    *v32 = a2;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    v53 = v31;
    swift_errorRetain();
    sub_1000C773C(&qword_1002D0490);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v19 + 32))(v30, v17, v18);
    URL.appendingPathComponent(_:)();
    URL.appendingPathExtension(_:)();
    v34 = v23;
    v35 = *(v19 + 8);
    v35(v34, v18);
    v36 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    URL._bridgeToObjectiveC()(v40);
    v42 = v41;
    v53 = 0;
    v43 = [v36 moveItemAtURL:v39 toURL:v41 error:&v53];

    if (v43)
    {
      v44 = *(a9 + 16);
      v45 = v53;
      os_unfair_lock_lock((v44 + 24));
      v46 = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 24));
      if (v46 == 1)
      {
        v47 = v52[0];
        (*(v19 + 16))(v52[0], v27, v18);
        (*(v19 + 56))(v47, 0, 1, v18);
      }

      else
      {
        (*(v19 + 56))(v52[0], 1, 1, v18);
      }

      sub_1000C773C(&qword_1002D0490);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      v48 = v53;
      v49 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1001039E4();
      v50 = swift_allocError();
      *v51 = v49;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0;
      v53 = v50;
      sub_1000C773C(&qword_1002D0490);
      CheckedContinuation.resume(throwing:)();
    }

    v35(v27, v18);
    return (v35)(v30, v18);
  }
}

uint64_t type metadata accessor for TrackSplitRenderer.Settings()
{
  result = qword_1002D0400;
  if (!qword_1002D0400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001031B4()
{
  result = type metadata accessor for URL();
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

void sub_10010324C(void *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v33 - v12;
  __chkstk_darwin(v11, v14);
  v16 = &v33 - v15;
  v17 = String._bridgeToObjectiveC()();
  v18 = [a1 recordingWithUniqueID:v17];

  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = [v18 url];
  if (!v19)
  {
LABEL_6:

LABEL_7:
    v31 = 0;
    goto LABEL_8;
  }

  v20 = v19;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v16, v13, v4);
  v21 = [v18 fileNameForSharing];
  if (!v21)
  {
    (*(v5 + 8))(v16, v4);
    goto LABEL_6;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v24;
  v35 = v23;

  v25 = *(v5 + 16);
  v25(v9, v16, v4);
  v26 = type metadata accessor for TrackSplitRenderer.Settings();
  v27 = objc_allocWithZone(v26);
  v36 = v2;
  v28 = v27;
  v25(&v27[OBJC_IVAR____TtCC10VoiceMemos18TrackSplitRenderer8Settings_sourceURL], v9, v4);
  v29 = &v28[OBJC_IVAR____TtCC10VoiceMemos18TrackSplitRenderer8Settings_destinationFileName];
  v30 = v34;
  *v29 = v35;
  v29[1] = v30;
  v37.receiver = v28;
  v37.super_class = v26;
  v31 = objc_msgSendSuper2(&v37, "init");

  v32 = *(v5 + 8);
  v32(v9, v4);
  v32(v16, v4);
LABEL_8:
  *v38 = v31;
}

uint64_t sub_100103684(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_10010376C;

  return (sub_100106AAC)(v5, v7);
}

uint64_t sub_10010376C(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

id sub_10010392C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100103988(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_100103998()
{
  result = qword_1002D0440;
  if (!qword_1002D0440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D0440);
  }

  return result;
}

unint64_t sub_1001039E4()
{
  result = qword_1002D0448;
  if (!qword_1002D0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0448);
  }

  return result;
}

uint64_t sub_100103A38(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001FF1C;

  return sub_100100D50(a1, a2, v8, v9, v10, v11, v12, v2 + v7);
}

uint64_t sub_100103B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000C773C(&qword_1002D5FA0);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_1000C773C(&qword_1002D0468);
  v4[17] = swift_task_alloc();
  v6 = sub_1000C773C(&unk_1002D0470);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  sub_1000C773C(&unk_1002D1D90);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = *(sub_1000C773C(&unk_1002D0480) - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100103D84, 0, 0);
}

uint64_t sub_100103D84()
{
  v1 = v0[11];
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while ((v1 & 0xC000000000000001) == 0)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      ++v3;
LABEL_8:
      if (v3 == i)
      {
        goto LABEL_16;
      }
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (!__OFADD__(v3++, 1))
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v5 = v0[26];
  v6 = v0[14];
  v7 = v0[15];
  v8 = *(v7 + 56);
  v0[27] = v8;
  v0[28] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v5, 1, 1, v6);
  v32 = sub_100105428(v5, i);
  if (!i)
  {
LABEL_32:
    v0[29] = sub_1000C773C(&qword_1002D0458);
    sub_1000C773C(&qword_1002D5540);
    ThrowingTaskGroup.makeAsyncIterator()();
    v10 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v9 = 0;
  v37 = v1 & 0xFFFFFFFFFFFFFF8;
  v38 = v1 & 0xC000000000000001;
  v33 = v0 + 2;
  v34 = v0[11] + 32;
  v10 = &unk_1002D1D90;
  v35 = v0;
  v36 = i;
  while (v38)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_22:
    v42 = v14;
    v16 = v0[21];
    v15 = v0[22];
    v39 = v0[12];
    v40 = v0[13];
    v17 = v13;
    v18 = type metadata accessor for TaskPriority();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v15, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v21 = v20 + 2;
    v20[3] = 0;
    v20[4] = v9;
    v20[5] = v39;
    v20[6] = v40;
    v20[7] = v17;
    sub_10000B46C(v15, v16, &unk_1002D1D90);
    LODWORD(v16) = (*(v19 + 48))(v16, 1, v18);

    v41 = v17;
    v22 = v0[21];
    if (v16 == 1)
    {
      sub_100003CBC(v0[21], &unk_1002D1D90);
      if (!*v21)
      {
        goto LABEL_26;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v19 + 8))(v22, v18);
      if (!*v21)
      {
LABEL_26:
        v23 = 0;
        v25 = 0;
        goto LABEL_27;
      }
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    v23 = dispatch thunk of Actor.unownedExecutor.getter();
    v25 = v24;
    swift_unknownObjectRelease();
LABEL_27:
    v0 = v35;
    v26 = *v35[10];
    sub_1000C773C(&qword_1002D0458);
    v27 = (v25 | v23);
    if (v25 | v23)
    {
      v27 = v33;
      *v33 = 0;
      v33[1] = 0;
      v35[4] = v23;
      v35[5] = v25;
    }

    v11 = v35[22];
    v35[6] = 1;
    v35[7] = v27;
    v35[8] = v26;
    swift_task_create();

    v12 = v11;
    v10 = &unk_1002D1D90;
    sub_100003CBC(v12, &unk_1002D1D90);

    ++v9;
    if (v42 == v36)
    {
      goto LABEL_32;
    }
  }

  if (v9 < *(v37 + 16))
  {
    v13 = *(v34 + 8 * v9);
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_37:
  v10 = sub_1001B46E4(v10);
LABEL_33:
  v0[30] = v10;
  v28 = swift_task_alloc();
  v0[31] = v28;
  *v28 = v0;
  v28[1] = sub_10010424C;
  v29 = v0[17];
  v30 = v0[18];

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v29, 0, 0, v30, v0 + 9);
}

uint64_t sub_10010424C()
{

  if (v0)
  {

    v1 = sub_100104738;
  }

  else
  {
    v1 = sub_100104364;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100104364()
{
  v1 = v0[29];
  v2 = v0[17];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v16 = v0[27];
    v17 = v0[26];
    v18 = v0[14];
    v19 = *v2;
    sub_10001DBEC(v2 + *(v1 + 48), v17, &qword_1002D5FA0);
    v20 = v16(v17, 0, 1, v18);
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v25 = v0[30];
      if (v19 < *(v25 + 16))
      {
        sub_100105B6C(v0[26], v25 + ((*(v0[23] + 80) + 32) & ~*(v0[23] + 80)) + *(v0[23] + 72) * v19);
        v26 = swift_task_alloc();
        v0[31] = v26;
        *v26 = v0;
        v26[1] = sub_10010424C;
        v20 = v0[17];
        v23 = v0[18];
        v24 = v0 + 9;
        v21 = 0;
        v22 = 0;

        return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v20, v21, v22, v23, v24);
      }
    }

    __break(1u);
    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v20, v21, v22, v23, v24);
  }

  v3 = v0[30];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[23];
    v6 = v0[30] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v29 = v0[15];
    v7 = _swiftEmptyArrayStorage;
    v30 = *(v5 + 72);
    do
    {
      v9 = v0[24];
      v8 = v0[25];
      v10 = v0[14];
      sub_10000B46C(v6, v8, &unk_1002D0480);
      sub_10001DBEC(v8, v9, &unk_1002D0480);
      v11 = (*(v29 + 48))(v9, 1, v10);
      v12 = v0[24];
      if (v11 == 1)
      {
        sub_100003CBC(v12, &unk_1002D0480);
      }

      else
      {
        sub_10001DBEC(v12, v0[16], &qword_1002D5FA0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1000F29BC(0, v7[2] + 1, 1, v7);
        }

        v14 = v7[2];
        v13 = v7[3];
        if (v14 >= v13 >> 1)
        {
          v7 = sub_1000F29BC(v13 > 1, v14 + 1, 1, v7);
        }

        v15 = v0[16];
        v7[2] = v14 + 1;
        sub_10001DBEC(v15, v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v14, &qword_1002D5FA0);
      }

      v6 += v30;
      --v4;
    }

    while (v4);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v27 = v0[1];

  return v27(v7);
}

uint64_t sub_100104738()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100104820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000C773C(&qword_1002D5FA0);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_1000C773C(&qword_1002D0468);
  v4[17] = swift_task_alloc();
  v6 = sub_1000C773C(&unk_1002D0470);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  sub_1000C773C(&unk_1002D1D90);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = *(sub_1000C773C(&unk_1002D0480) - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100104A50, 0, 0);
}

uint64_t sub_100104A50()
{
  v1 = v0;
  v2 = v0[11];
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      ++v4;
LABEL_8:
      if (v4 == i)
      {
        goto LABEL_16;
      }
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (!__OFADD__(v4++, 1))
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v6 = v0[26];
  v7 = v0[14];
  v8 = v0[15];
  v9 = *(v8 + 56);
  v0[27] = v9;
  v0[28] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v6, 1, 1, v7);
  v32 = sub_100105428(v6, i);
  if (v2 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
LABEL_36:
      v1[29] = sub_1000C773C(&qword_1002D0458);
      sub_1000C773C(&qword_1002D5540);
      ThrowingTaskGroup.makeAsyncIterator()();
      v10 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }
  }

  v11 = 0;
  v36 = v2 & 0xFFFFFFFFFFFFFF8;
  v37 = v2 & 0xC000000000000001;
  v33 = v0 + 2;
  v34 = v0[11] + 32;
  v35 = v10;
  while (v37)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v14 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_25:
    v40 = v14;
    v16 = v1[21];
    v15 = v1[22];
    v17 = v1[13];
    v38 = v1[12];
    v18 = v13;
    v19 = type metadata accessor for TaskPriority();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v15, 1, 1, v19);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v11;
    v21[5] = v38;
    v21[6] = v17;
    v21[7] = v11;
    v21[8] = v18;
    sub_10000B46C(v15, v16, &unk_1002D1D90);
    LODWORD(v15) = (*(v20 + 48))(v16, 1, v19);

    v39 = v18;
    v22 = v1[21];
    if (v15 == 1)
    {
      sub_100003CBC(v1[21], &unk_1002D1D90);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v20 + 8))(v22, v19);
    }

    if (v21[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = dispatch thunk of Actor.unownedExecutor.getter();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v26 = *v1[10];
    sub_1000C773C(&qword_1002D0458);
    v27 = (v25 | v23);
    if (v25 | v23)
    {
      v27 = v33;
      *v33 = 0;
      v33[1] = 0;
      v1[4] = v23;
      v1[5] = v25;
    }

    v12 = v1[22];
    v1[6] = 1;
    v1[7] = v27;
    v1[8] = v26;
    swift_task_create();

    sub_100003CBC(v12, &unk_1002D1D90);

    ++v11;
    v10 = v35;
    if (v40 == v35)
    {
      goto LABEL_36;
    }
  }

  if (v11 < *(v36 + 16))
  {
    v13 = *(v34 + 8 * v11);
    v14 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_41:
  v10 = sub_1001B46E4(v10);
LABEL_37:
  v1[30] = v10;
  v28 = swift_task_alloc();
  v1[31] = v28;
  *v28 = v1;
  v28[1] = sub_100104F3C;
  v29 = v1[17];
  v30 = v1[18];

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v29, 0, 0, v30, v1 + 9);
}

uint64_t sub_100104F3C()
{

  if (v0)
  {

    v1 = sub_100107080;
  }

  else
  {
    v1 = sub_100105054;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100105054()
{
  v1 = v0[29];
  v2 = v0[17];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v16 = v0[27];
    v17 = v0[26];
    v18 = v0[14];
    v19 = *v2;
    sub_10001DBEC(v2 + *(v1 + 48), v17, &qword_1002D5FA0);
    v20 = v16(v17, 0, 1, v18);
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v25 = v0[30];
      if (v19 < *(v25 + 16))
      {
        sub_100105B6C(v0[26], v25 + ((*(v0[23] + 80) + 32) & ~*(v0[23] + 80)) + *(v0[23] + 72) * v19);
        v26 = swift_task_alloc();
        v0[31] = v26;
        *v26 = v0;
        v26[1] = sub_100104F3C;
        v20 = v0[17];
        v23 = v0[18];
        v24 = v0 + 9;
        v21 = 0;
        v22 = 0;

        return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v20, v21, v22, v23, v24);
      }
    }

    __break(1u);
    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v20, v21, v22, v23, v24);
  }

  v3 = v0[30];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[23];
    v6 = v0[30] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v29 = v0[15];
    v7 = _swiftEmptyArrayStorage;
    v30 = *(v5 + 72);
    do
    {
      v9 = v0[24];
      v8 = v0[25];
      v10 = v0[14];
      sub_10000B46C(v6, v8, &unk_1002D0480);
      sub_10001DBEC(v8, v9, &unk_1002D0480);
      v11 = (*(v29 + 48))(v9, 1, v10);
      v12 = v0[24];
      if (v11 == 1)
      {
        sub_100003CBC(v12, &unk_1002D0480);
      }

      else
      {
        sub_10001DBEC(v12, v0[16], &qword_1002D5FA0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1000F29BC(0, v7[2] + 1, 1, v7);
        }

        v14 = v7[2];
        v13 = v7[3];
        if (v14 >= v13 >> 1)
        {
          v7 = sub_1000F29BC(v13 > 1, v14 + 1, 1, v7);
        }

        v15 = v0[16];
        v7[2] = v14 + 1;
        sub_10001DBEC(v15, v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v14, &qword_1002D5FA0);
      }

      v6 += v30;
      --v4;
    }

    while (v4);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v27 = v0[1];

  return v27(v7);
}

void *sub_100105428(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      sub_1000C773C(&unk_1002D0480);
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4[2] = a2;
      v5 = *(sub_1000C773C(&unk_1002D0480) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_10000B46C(v3, v4 + v6, &unk_1002D0480);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_10000B46C(v3, v9, &unk_1002D0480);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    sub_100003CBC(v3, &unk_1002D0480);
    return v4;
  }

  return result;
}

uint64_t sub_100105560(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_100105618;

  return sub_100103B54(a2, v9, a4, a5);
}

uint64_t sub_100105618(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100105728(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001FF1C;

  return sub_100105560(a1, a2, v6, v7, v8);
}

uint64_t sub_1001057F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[5] = a5;
  v7[6] = a6;
  v7[3] = a1;
  v7[4] = a4;
  v7[2] = *a7;
  return _swift_task_switch(sub_100105824, 0, 0);
}

uint64_t sub_100105824()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = *(sub_1000C773C(&qword_1002D0458) + 48);
  *v3 = v1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100105948;

  return (v7)(v3 + v4, v0 + 2);
}

uint64_t sub_100105948()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100105A74;
  }

  else
  {
    v2 = sub_100105A5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100105A8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001FF1C;

  return sub_1001057F8(a1, v4, v5, v6, v7, v8, v1 + 7);
}

uint64_t sub_100105B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D0480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105BDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_10010707C;

  return sub_100104820(a2, v9, a4, a5);
}

uint64_t sub_100105C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a1;
  v7[5] = a4;
  v8 = a7[1];
  v7[2] = *a7;
  v7[3] = v8;
  return _swift_task_switch(sub_100105CC0, 0, 0);
}

uint64_t sub_100105CC0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(sub_1000C773C(&qword_1002D0458) + 48);
  *v3 = v1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100105DE4;

  return (v7)(v3 + v4, v0 + 2);
}

uint64_t sub_100105DE4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100105EF8;
  }

  else
  {
    v2 = sub_100105A5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100105F10(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return _swift_task_switch(sub_100105FA0, 0, 0);
}

uint64_t sub_100105FA0()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(AVMutableComposition) init];
  v0[5] = v2;
  v3 = [v1 mediaType];
  v0[6] = [v2 addMutableTrackWithMediaType:v3 preferredTrackID:0];

  sub_1000C773C(&qword_1002D0498);
  v4 = static AVPartialAsyncProperty<A>.duration.getter();
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100106108;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 16, v4, 0, 0);
}

uint64_t sub_100106108()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1001063F0;
  }

  else
  {

    v2 = sub_100106258;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100106258()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
LABEL_4:
    v13 = *(v0 + 8);
    v14 = *(v0 + 40);

    return v13(v14);
  }

  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  *(v0 + 16) = 0;
  v5 = *(v0 + 24);
  epoch = kCMTimeZero.epoch;
  timescale = kCMTimeZero.timescale;
  flags = kCMTimeZero.flags;
  *(v0 + 80) = kCMTimeZero.value;
  *(v0 + 88) = timescale;
  *(v0 + 92) = flags;
  *(v0 + 96) = epoch;
  *(v0 + 104) = v2;
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  *(v0 + 152) = kCMTimeZero.value;
  *(v0 + 160) = timescale;
  *(v0 + 164) = flags;
  *(v0 + 168) = epoch;
  v9 = [v1 insertTimeRange:v0 + 80 ofTrack:v5 atTime:v0 + 152 error:v0 + 16];
  v10 = *(v0 + 16);
  v11 = *(v0 + 48);
  if (v9)
  {
    v12 = v10;

    goto LABEL_4;
  }

  v16 = *(v0 + 40);
  v17 = v10;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1001063F0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001064B4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000C773C(&qword_1002D0490) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100102C1C(a1, a2, v2 + v6, v2 + v9, *(v2 + v10), *(v2 + v10 + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001065F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100106608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  v13 = v3[5];
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_10002001C;

  return sub_100101AF4(a1, a2, a3, v10, v11, v12, v13, v3 + v9);
}

uint64_t sub_100106724(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001FF1C;

  return sub_100102824(a1, a2, v6);
}

uint64_t sub_1001067EC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001FF1C;

  return sub_100105BDC(a1, a2, v6, v7, v8);
}

uint64_t sub_1001068BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001FF1C;

  return sub_100105C94(a1, v4, v5, v6, v7, v8, v1 + 7);
}

uint64_t sub_1001069B0(unint64_t *a1)
{
  v3 = *(v1 + 16);
  sub_100103988(*a1);
  *a1 = v3;
  return swift_errorRetain();
}

uint64_t sub_1001069F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002001C;

  return sub_100103684(v2, v3, v4);
}

uint64_t sub_100106AAC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100106B6C, 0, 0);
}

uint64_t sub_100106B6C()
{
  v1 = [objc_opt_self() sharedContainer];
  if (v1 && (v2 = v1, v3 = [v1 newBackgroundModel], v0[8] = v3, v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = swift_allocObject();
    v0[9] = v9;
    v9[2] = v3;
    v9[3] = v8;
    v9[4] = v7;
    v10 = v3;

    v0[10] = [v10 context];
    (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v6);
    v11 = swift_task_alloc();
    v0[11] = v11;
    v12 = sub_1000C773C(&unk_1002D04A0);
    *v11 = v0;
    v11[1] = sub_100106D64;
    v13 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_100106F74, v9, v12);
  }

  else
  {

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_100106D64()
{
  v2 = *v1;
  v3 = *(*v1 + 48);

  v4 = (v3 + 8);
  if (v0)
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);

    (*v4)(v6, v7);
    v8 = DebugData.init(name:);
  }

  else
  {
    v9 = *(v2 + 56);
    v10 = *(v2 + 40);

    (*v4)(v9, v10);
    *(v2 + 96) = *(v2 + 16);
    v8 = sub_100106F04;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100106F04()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100106F94(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100106FB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100106FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10010703C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100107088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100015FCC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1000CB4CC(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_100109FF0(a1);
    sub_100109A60(a2, a3, v9);

    return sub_100109FF0(v9);
  }

  return result;
}

void sub_100107130(uint64_t a1, void *a2)
{
  v3 = v2;
  if ((a1 & 0x100000000) != 0)
  {
    v6 = sub_10002454C(a2);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1000CBF20();
        v10 = v13;
      }

      sub_100109CC8(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }

  else
  {
    v4 = *&a1;
    v5 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1000CB620(a2, v5, v4);

    *v2 = v12;
  }
}

uint64_t sub_100107240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v7;
  v5[29] = v6;

  return _swift_task_switch(sub_1001072E0, v7, v6);
}

uint64_t sub_1001072E0()
{
  v1 = v0[25];
  v2 = String._bridgeToObjectiveC()();
  v0[30] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_100107418;
  v3 = swift_continuation_init();
  v0[17] = sub_1000C773C(&qword_1002D0568);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10010A9D0;
  v0[13] = &unk_10028F7A8;
  v0[14] = v3;
  [v1 rendererSettingsFromRecordingWithId:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100107418()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return _swift_task_switch(sub_100107520, v2, v1);
}

uint64_t sub_100107520()
{
  v1 = v0[21];
  v2 = v0[30];
  v0[31] = v1;

  if (v1)
  {
    v3 = objc_allocWithZone(type metadata accessor for ComposedAudioEffectRenderer());
    v4 = v1;
    v5 = sub_1001802B0(v4);
    v0[32] = v5;
    v7 = v5;
    v8 = v0[26];
    v10 = v0[22];
    v9 = v0[23];
    v11 = OBJC_IVAR___RCShareMemoExporter_inProgressOperations;
    v0[33] = OBJC_IVAR___RCShareMemoExporter_inProgressOperations;
    v12 = *(v8 + v11);
    v13 = swift_task_alloc();
    v13[2] = v10;
    v13[3] = v9;
    v13[4] = v7;

    os_unfair_lock_lock((v12 + 24));
    sub_10010A0F8((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));

    v16 = OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_sourceURL;
    v17 = *&v4[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_destinationFileName];
    v18 = *&v4[OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_destinationFileName + 8];
    v0[34] = v18;

    v19 = swift_task_alloc();
    v0[35] = v19;
    *v19 = v0;
    v19[1] = sub_100107770;
    v20 = v0[24];

    return sub_10017ED54(&v4[v16], v20, v17, v18);
  }

  else
  {

    sub_10010A0A4();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 2;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100107770(uint64_t a1)
{
  v3 = *v2;
  v3[18] = v2;
  v3[19] = a1;
  v3[20] = v1;
  v3[36] = v1;

  if (v1)
  {
    v4 = v3[28];
    v5 = v3[29];
    v6 = sub_10010799C;
  }

  else
  {

    v4 = v3[28];
    v5 = v3[29];
    v6 = sub_100107894;
  }

  return _swift_task_switch(v6, v4, v5);
}

void sub_100107894()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];

  v6 = *(v3 + v2);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;

  os_unfair_lock_lock(v6 + 6);
  sub_10010A9B8();
  if (v1)
  {

    os_unfair_lock_unlock(v6 + 6);
  }

  else
  {
    v8 = v0[19];
    v10 = v0[31];
    v9 = v0[32];
    os_unfair_lock_unlock(v6 + 6);

    v11 = v0[1];

    v11(v8);
  }
}

uint64_t sub_10010799C()
{
  v1 = v0[33];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];

  v5 = *(v2 + v1);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;

  os_unfair_lock_lock(v5 + 6);
  sub_10010A118();
  v8 = v0[31];
  v7 = v0[32];
  os_unfair_lock_unlock(v5 + 6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100107AA4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_1000D2E40(a2, a3), (v9 & 1) != 0))
  {
    sub_1000CC430(*(v7 + 56) + 40 * v8, &v13);
    sub_100109FF0(&v13);
    sub_10010A0A4();
    swift_allocError();
    *v10 = a2;
    *(v10 + 8) = a3;
    *(v10 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_100109FF0(&v13);
    *(&v14 + 1) = type metadata accessor for ComposedAudioEffectRenderer();
    v15 = &off_100294048;
    *&v13 = a4;

    v12 = a4;
    return sub_100107088(&v13, a2, a3);
  }
}

uint64_t sub_100107D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for URL();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100107E58, v8, v7);
}

uint64_t sub_100107E58()
{
  v1 = v0[5];
  v2 = v0[6];

  v0[11] = _Block_copy(v1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v0[12] = v4;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = v2;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_100107F58;
  v8 = v0[9];
  v9 = v0[4];

  return sub_100107240(v3, v5, v8, v9);
}

uint64_t sub_100107F58()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = v3[6];
  (*(v3[8] + 8))(v3[9], v3[7]);
  swift_unknownObjectRelease();

  if (v2)
  {
    isa = _convertErrorToNSError(_:)();

    v8 = isa;
    v9 = 0;
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
  }

  v10 = isa;
  v11 = v4[11];
  v11[2](v11, v9, v8);

  _Block_release(v11);

  v12 = v5[1];

  return v12();
}

uint64_t sub_100108180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v7;
  v5[29] = v6;

  return _swift_task_switch(sub_100108220, v7, v6);
}

uint64_t sub_100108220()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  type metadata accessor for TrackSplitRenderer();
  v4 = swift_allocObject();
  v0[30] = v4;
  sub_1000C773C(&unk_1002D4E80);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  sub_1000C773C(&qword_1002D0550);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = _swiftEmptyArrayStorage;
  *(v4 + 24) = v6;
  v7 = OBJC_IVAR___RCShareMemoExporter_inProgressOperations;
  v0[31] = OBJC_IVAR___RCShareMemoExporter_inProgressOperations;
  v8 = *(v1 + v7);
  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v4;

  os_unfair_lock_lock((v8 + 24));
  sub_10010A058((v8 + 16));
  v10 = v0[25];
  os_unfair_lock_unlock((v8 + 24));

  v11 = String._bridgeToObjectiveC()();
  v0[32] = v11;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1001084C0;
  v12 = swift_continuation_init();
  v0[17] = sub_1000C773C(&qword_1002D0558);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10010A9D0;
  v0[13] = &unk_10028F780;
  v0[14] = v12;
  [v10 rendererSettingsFromRecordingWithId:v11 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001084C0()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return _swift_task_switch(sub_1001085C8, v2, v1);
}

uint64_t sub_1001085C8()
{
  v1 = v0[21];
  v2 = v0[32];
  v0[33] = v1;

  if (v1)
  {
    v3 = OBJC_IVAR____TtCC10VoiceMemos18TrackSplitRenderer8Settings_sourceURL;
    v5 = *(v1 + OBJC_IVAR____TtCC10VoiceMemos18TrackSplitRenderer8Settings_destinationFileName);
    v4 = *(v1 + OBJC_IVAR____TtCC10VoiceMemos18TrackSplitRenderer8Settings_destinationFileName + 8);
    v0[34] = v4;

    v6 = swift_task_alloc();
    v0[35] = v6;
    *v6 = v0;
    v6[1] = sub_1001087C0;
    v7 = v0[24];

    return sub_1000FF41C(v1 + v3, v7, v5, v4);
  }

  else
  {
    v9 = v0[31];
    v10 = v0[26];
    v12 = v0[22];
    v11 = v0[23];

    sub_10010A0A4();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 2;
    swift_willThrow();
    v14 = *(v10 + v9);
    v15 = swift_task_alloc();
    *(v15 + 16) = v12;
    *(v15 + 24) = v11;

    os_unfair_lock_lock(v14 + 6);
    sub_10010A9B8();
    os_unfair_lock_unlock(v14 + 6);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1001087C0(uint64_t a1)
{
  v3 = *v2;
  v3[18] = v2;
  v3[19] = a1;
  v3[20] = v1;
  v3[36] = v1;

  if (v1)
  {
    v4 = v3[28];
    v5 = v3[29];
    v6 = sub_100108A00;
  }

  else
  {

    v4 = v3[28];
    v5 = v3[29];
    v6 = sub_1001088E4;
  }

  return _swift_task_switch(v6, v4, v5);
}

void sub_1001088E4()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];

  v7 = *(v4 + v3);
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;

  os_unfair_lock_lock(v7 + 6);
  sub_10010A9B8();
  if (v1)
  {

    os_unfair_lock_unlock(v7 + 6);
  }

  else
  {
    v9 = v0[19];
    os_unfair_lock_unlock(v7 + 6);

    v10 = v0[1];

    v10(v9);
  }
}

uint64_t sub_100108A00()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];

  v6 = *(v3 + v2);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;

  os_unfair_lock_lock(v6 + 6);
  sub_10010A9B8();
  os_unfair_lock_unlock(v6 + 6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100108B1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_1000D2E40(a2, a3), (v9 & 1) != 0))
  {
    sub_1000CC430(*(v7 + 56) + 40 * v8, &v12);
    sub_100109FF0(&v12);
    sub_10010A0A4();
    swift_allocError();
    *v10 = a2;
    *(v10 + 8) = a3;
    *(v10 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_100109FF0(&v12);
    *(&v13 + 1) = type metadata accessor for TrackSplitRenderer();
    v14 = &off_10028F460;
    *&v12 = a4;

    return sub_100107088(&v12, a2, a3);
  }
}

uint64_t sub_100108C30(uint64_t a1, void *a2)
{
  v3 = sub_10000AACC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}