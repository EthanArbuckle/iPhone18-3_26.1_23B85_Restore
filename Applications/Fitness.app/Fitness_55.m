void sub_100629680(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TrendPairTableViewCell.TrailingMetricType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TrendListMetric();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + 32);
  if (*(v14 + 96) == 2)
  {
    v15 = *(v14 + 88);
    if (a2)
    {
      if ((a1 + 0x4000000000000000) >= 0)
      {
        v16 = 2 * a1;
        if (((2 * a1) & 0x8000000000000000) == 0)
        {
          v17 = *(v15 + 16);
          if (v16 < v17)
          {
            v18 = v16 | 1;
            v19 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
            v20 = *(v11 + 72);
            sub_100073078(v19 + v20 * v16, v13);
            if (v18 >= v17)
            {
              v21 = 1;
            }

            else
            {
              sub_100073078(v19 + v20 * v18, v9);
              v21 = 0;
            }

            (*(v11 + 56))(v9, v21, 2, v10);
            v30 = sub_100140278(&qword_1008E4EC0);
            v31 = *(v30 + 48);
            sub_10007DC74(v13, a3, type metadata accessor for TrendListMetric);
            sub_10007DC74(v9, a3 + v31, type metadata accessor for TrendPairTableViewCell.TrailingMetricType);
            (*(*(v30 - 8) + 56))(a3, 0, 1, v30);
            return;
          }

LABEL_21:
          __break(1u);
          return;
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    if (*(v15 + 16) <= a1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v27 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a1;
    v28 = sub_100140278(&qword_1008E4EC0);
    v29 = *(v28 + 48);
    sub_100073078(v27, a3);
    (*(v11 + 56))(a3 + v29, 2, 2, v10);
    v23 = *(*(v28 - 8) + 56);
    v25 = a3;
    v26 = 0;
    v24 = v28;
  }

  else
  {
    v22 = sub_100140278(&qword_1008E4EC0);
    v23 = *(*(v22 - 8) + 56);
    v24 = v22;
    v25 = a3;
    v26 = 1;
  }

  v23(v25, v26, 1, v24);
}

uint64_t sub_1006299E0()
{

  sub_1000245E0(*(v0 + 56));

  return swift_deallocClassInstance();
}

unint64_t sub_100629A64()
{
  result = qword_1008E4D70;
  if (!qword_1008E4D70)
  {
    type metadata accessor for IndexSet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4D70);
  }

  return result;
}

unint64_t sub_100629ABC()
{
  result = qword_1008E4D80;
  if (!qword_1008E4D80)
  {
    sub_100141EEC(&qword_1008E4D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4D80);
  }

  return result;
}

uint64_t sub_100629B20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100629B74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100629BE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100629C5C(void *a1, void *a2)
{
  v64 = a1;
  v65 = a2;
  v3 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v3 - 8);
  v62 = &v62 - v4;
  v63 = sub_100140278(&qword_1008F6FD8);
  v5 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v62 - v6;
  v8 = sub_100140278(&unk_1008F6FE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v62 - v10;
  v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive] = 0;
  v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists] = 0;
  v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountAssumedToExist] = 0;
  v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountFetchInProgress] = 2;
  v12 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_lastPhoneCloudKitAccountFetchTimestamp;
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(&v2[v12], 1, 1, v13);
  v14(&v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_lastWatchCloudKitAccountFetchTimestamp], 1, 1, v13);
  v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_currentlyPairedWatchIsMinimumVersion] = 0;
  *&v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_activitySharingCloudKitAccountStatusChangedToken] = -1;
  *&v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_activitySharingGatewayStatusChangedToken] = -1;
  v15 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator__activitySharingIsSetup;
  LOBYTE(aBlock) = sub_10062E59C() & 1;
  Published.init(initialValue:)();
  (*(v9 + 32))(&v2[v15], v11, v8);
  v16 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator__setupPhase;
  aBlock = 0;
  type metadata accessor for CHFriendsSetupPhase(0);
  Published.init(initialValue:)();
  (*(v5 + 32))(&v2[v16], v7, v63);
  v18 = v64;
  v17 = v65;
  *&v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_friendManager] = v64;
  *&v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_friendListSectionManager] = v17;
  sub_1000059F8(0, &qword_1008E3FD0);
  v64 = v18;
  v19 = v17;
  v20 = static OS_dispatch_queue.main.getter();
  v21 = [objc_allocWithZone(NSSManager) initWithQueue:v20];

  if (v21)
  {
    *&v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_nanoSystemSettingsManager] = v21;
    v22 = type metadata accessor for FriendsSetupCoordinator();
    v72.receiver = v2;
    v72.super_class = v22;
    v23 = objc_msgSendSuper2(&v72, "init");
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 standardUserDefaults];
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 BOOLForKey:v27];

    v29 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive;
    *(&v25->isa + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive) = v28;
    v30 = [v24 standardUserDefaults];
    v31 = String._bridgeToObjectiveC()();
    LOBYTE(v27) = [v30 BOOLForKey:v31];

    v32 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists;
    *(&v25->isa + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists) = v27;
    v33 = sub_10062E6A8();
    v34 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountAssumedToExist;
    *(&v25->isa + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountAssumedToExist) = v33 & 1;
    v35 = static os_log_type_t.default.getter();
    v36 = HKLogActivity;
    v37 = v25;
    if (os_log_type_enabled(HKLogActivity, v35))
    {
      v38 = v25;
      v37 = v36;
      v39 = swift_slowAlloc();
      *v39 = 67109632;
      *(v39 + 4) = *(&v25->isa + v29);
      *(v39 + 8) = 1024;
      *(v39 + 10) = *(&v25->isa + v32);

      *(v39 + 14) = 1024;
      *(v39 + 16) = *(&v25->isa + v34);

      _os_log_impl(&_mh_execute_header, v37, v35, "Initializing account status from cache: [phone=%{BOOL}d, [watch=%{BOOL}d, [watch(assumed)=%{BOOL}d", v39, 0x14u);
    }

    *(&v25->isa + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_currentlyPairedWatchIsMinimumVersion) = FIDeviceMeetsMinimumOSVersionDaytona();
    v40 = type metadata accessor for TaskPriority();
    v41 = v62;
    (*(*(v40 - 8) + 56))(v62, 1, 1, v40);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v25;
    v42[5] = v19;
    v43 = v25;
    v65 = v19;
    v44 = v43;
    sub_10026E198(0, 0, v41, &unk_100701888, v42);

    v45 = kASCloudKitAccountStatusChangedNotificationKey;
    v46 = static OS_dispatch_queue.main.getter();
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v70 = sub_10062F480;
    v71 = v47;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_100629B20;
    v69 = &unk_100864FB8;
    v48 = _Block_copy(&aBlock);

    v49 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_activitySharingCloudKitAccountStatusChangedToken;
    swift_beginAccess();
    notify_register_dispatch(v45, &v44[v49], v46, v48);
    swift_endAccess();
    _Block_release(v48);

    static os_log_type_t.default.getter();
    v50 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v51 = kASGatewayStatusChangedNotificationKey;
    v52 = static OS_dispatch_queue.main.getter();
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v70 = sub_10062F488;
    v71 = v53;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_100629B20;
    v69 = &unk_100864FE0;
    v54 = _Block_copy(&aBlock);

    v55 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_activitySharingGatewayStatusChangedToken;
    swift_beginAccess();
    notify_register_dispatch(v51, &v44[v55], v52, v54);
    swift_endAccess();
    _Block_release(v54);

    static os_log_type_t.default.getter();
    v56 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.default.getter();
    v57 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v58 = *&v44[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_friendManager];
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v70 = sub_10062F490;
    v71 = v59;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_10000EBBC;
    v69 = &unk_100865008;
    v60 = _Block_copy(&aBlock);

    [v58 cloudKitAccountStatusWithCompletion:v60];
    _Block_release(v60);
    sub_10062C844();
    v61 = [objc_opt_self() defaultCenter];
    [v61 addObserver:v44 selector:"applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10062A610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  sub_100140278(&qword_1008E1760);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10062A6AC, 0, 0);
}

uint64_t sub_10062A6AC()
{
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_currentlyPairedWatchIsMinimumVersion;
  *(v0 + 56) = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_currentlyPairedWatchIsMinimumVersion;
  if (*(v1 + v2) & 1) != 0 || ([*(v0 + 40) hasAnyFriendsSetup])
  {
    goto LABEL_5;
  }

  v3 = [objc_opt_self() sharedBehavior];
  if (!v3)
  {
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v6 = v3;
  v7 = [v3 fitnessMode];

  if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
LABEL_5:
    *(v0 + 72) = type metadata accessor for MainActor();
    *(v0 + 80) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v11 = sub_10062A8B8;
  }

  else
  {
    type metadata accessor for MainActor();
    *(v0 + 64) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v12;
    v11 = sub_10062A800;
  }

  v3 = v11;
  v4 = v8;
  v5 = v10;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10062A800()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = 2;
  v2 = v1;
  static Published.subscript.setter();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10062A8B8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 97) = *(v0 + 96);

  return _swift_task_switch(sub_10062A978, 0, 0);
}

uint64_t sub_10062A978()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 56);
    v3 = *(v0 + 32);
    v4 = sub_10062DBBC();
    v3[v2] = FIDeviceMeetsMinimumOSVersionDaytona();
    static os_log_type_t.default.getter();
    v5 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = v3;
    *(v7 + 40) = v4 & 1;
    v8 = v3;
    sub_10026E198(0, 0, v1, &unk_100701898, v7);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    *(v0 + 88) = static MainActor.shared.getter();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10062AB58, v12, v11);
  }
}

uint64_t sub_10062AB58()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0;
  v2 = v1;
  static Published.subscript.setter();

  v3 = v0[1];

  return v3();
}

void sub_10062AC0C()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    static os_log_type_t.default.getter();
    v3 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v4 = *&v2[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_friendManager];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10062F588;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000EBBC;
    aBlock[3] = &unk_1008650A8;
    v6 = _Block_copy(aBlock);

    [v4 cloudKitAccountStatusWithCompletion:v6];
    _Block_release(v6);
  }
}

void sub_10062ADAC()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10062DA2C();
  }
}

id sub_10062AE98()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for FriendsSetupCoordinator();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10062B10C()
{
  v1 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  if ((*(v0 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists) & 1) == 0)
  {
    static os_log_type_t.default.getter();
    v12 = HKLogActivity;
    goto LABEL_5;
  }

  v11 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_lastWatchCloudKitAccountFetchTimestamp;
  swift_beginAccess();
  sub_1001CE7A0(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000EA04(v3, &unk_1008F73A0);
    static os_log_type_t.default.getter();
    v12 = HKLogActivity;
LABEL_5:
    os_log(_:dso:log:_:_:)();

LABEL_6:
    sub_10062C844();
    return;
  }

  (*(v5 + 32))(v10, v3, v4);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v14 = v13;
  v15 = static os_log_type_t.default.getter();
  v16 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v15))
  {
    v17 = v16;
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v17, v15, "Application active, time since last fetch of watch cloudKit status: %f", v18, 0xCu);
  }

  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  if (v14 > 3600.0)
  {
    goto LABEL_6;
  }
}

void sub_10062B490(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountAssumedToExist) != v2)
  {
    *(v1 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountAssumedToExist) = v2;
    v18 = objc_opt_self();
    v35 = v6;
    v19 = v18;
    v20 = [v18 standardUserDefaults];
    v33 = v3;
    v21 = v20;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v23 = String._bridgeToObjectiveC()();
    v34 = v4;
    v24 = v23;
    [v21 setValue:isa forKey:v23];

    v25 = [v19 standardUserDefaults];
    Date.init()();
    NSUserDefaults.set<A>(_:for:)();

    (*(v15 + 8))(v17, v14);
    sub_1000059F8(0, &qword_1008E3FD0);
    v26 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = v37;
    v36 = *(v36 + 8);
    (v36)(v10, v37);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10062F3B8;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100864F68;
    v29 = _Block_copy(aBlock);

    v30 = v38;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    v31 = v40;
    v32 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v29);

    (*(v34 + 8))(v31, v32);
    (*(v39 + 8))(v30, v35);
    (v36)(v13, v27);
  }
}

void sub_10062B9B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = sub_10062E6A8();
    }

    else
    {
      v4 = 0;
    }

    v1[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountAssumedToExist] = v4 & 1;
  }

  v5 = static os_log_type_t.default.getter();
  v6 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v5))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
    }

    sub_100140278(&qword_1008F6FD0);
    v11 = Optional.description.getter();
    v13 = sub_10000AFDC(v11, v12, &v14);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v5, "No longer assuming parity between phone and watch, resetting assumption to value from cache: %s", v8, 0xCu);
    sub_100005A40(v9);
  }
}

void sub_10062BB7C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0 || a3)
  {
    v19 = static os_log_type_t.default.getter();
    v20 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v19))
    {
      v27 = v20;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      if (a3)
      {
        swift_errorRetain();
        v23 = _swift_stdlib_bridgeErrorToNSError();
        v24 = v23;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      *(v21 + 4) = v23;
      *v22 = v24;
      _os_log_impl(&_mh_execute_header, v27, v19, "Failed to fetch phone account info with error: %@", v21, 0xCu);
      sub_10000EA04(v22, &unk_1008DB8B0);

      v25 = v27;
    }
  }

  else
  {
    sub_1000059F8(0, &qword_1008E3FD0);
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = a1 & 1;
    *(v17 + 24) = a4;
    aBlock[4] = sub_10062F498;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100865058;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v12);
  }
}

void sub_10062BF48(int a1)
{
  v2 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v2 - 8);
  v64 = &v62[-v3];
  v4 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v4 - 8);
  v65 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v62[-v7];
  __chkstk_darwin(v9);
  v11 = &v62[-v10];
  v12 = static os_log_type_t.default.getter();
  v13 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v12))
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v14, v12, "Successfully fetched phone account info from healthstore: %{BOOL}d", v15, 8u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v17 = Strong[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive], Strong, v18 = a1, (v17 & 1) == 0))
  {
    v18 = 0;
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive];

    v21 = v20 & (a1 ^ 1);
  }

  else
  {
    v21 = 0;
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  v66 = a1;
  if (!v22)
  {
    v38 = type metadata accessor for Date();
    (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
    goto LABEL_20;
  }

  v63 = v21;
  v23 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_lastPhoneCloudKitAccountFetchTimestamp;
  v24 = v22;
  swift_beginAccess();
  sub_1001CE7A0(v24 + v23, v11);

  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v11, 1, v25) == 1)
  {
LABEL_20:
    sub_10000EA04(v11, &unk_1008F73A0);
    goto LABEL_21;
  }

  sub_10000EA04(v11, &unk_1008F73A0);
  if (v18)
  {
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_lastPhoneCloudKitAccountFetchTimestamp;
      v30 = v28;
      swift_beginAccess();
      sub_1001CE7A0(v30 + v29, v8);

      if (v27(v8, 1, v25) != 1)
      {
        sub_10000EA04(v8, &unk_1008F73A0);
        static os_log_type_t.default.getter();
        v31 = HKLogActivity;
        os_log(_:dso:log:_:_:)();

        swift_beginAccess();
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          sub_10062B490(1);
        }

        swift_beginAccess();
        v34 = swift_unknownObjectWeakLoadStrong();
        v35 = v66;
        if (v34)
        {
          if (v34[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists] != 1)
          {
            v34[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists] = 1;
            v36 = v34;
            v37 = [objc_opt_self() standardUserDefaults];
            v68 = 1;
            NSUserDefaults.set<A>(_:for:)();

LABEL_21:
            v35 = v66;
            goto LABEL_22;
          }

LABEL_41:

          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    else
    {
      (*(v26 + 56))(v8, 1, 1, v25);
    }

    sub_10000EA04(v8, &unk_1008F73A0);
  }

  v35 = v66;
  if (v63)
  {
    static os_log_type_t.default.getter();
    v57 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    v58 = swift_unknownObjectWeakLoadStrong();
    if (v58)
    {
      v59 = v58;
      sub_10062B490(0);
    }

    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      if (v34[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists])
      {
        v34[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists] = 0;
        v60 = v34;
        v61 = [objc_opt_self() standardUserDefaults];
        v68 = 0;
        NSUserDefaults.set<A>(_:for:)();

        goto LABEL_22;
      }

      goto LABEL_41;
    }
  }

LABEL_22:
  swift_beginAccess();
  v39 = swift_unknownObjectWeakLoadStrong();
  if (!v39 || (v40 = v39[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive], v39, v40 != (v35 & 1)))
  {
    swift_beginAccess();
    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v35 & 1;
      if (*(v41 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive) == (v35 & 1))
      {
      }

      else
      {
        *(v41 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive) = v42;
        v43 = v41;
        v44 = [objc_opt_self() standardUserDefaults];
        v67 = v42;
        NSUserDefaults.set<A>(_:for:)();
      }
    }

    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v46 = v45;
      v47 = sub_10062DBBC();
      *(v46 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_currentlyPairedWatchIsMinimumVersion) = FIDeviceMeetsMinimumOSVersionDaytona();
      static os_log_type_t.default.getter();
      v48 = HKLogActivity;
      os_log(_:dso:log:_:_:)();

      v49 = type metadata accessor for TaskPriority();
      v50 = v64;
      (*(*(v49 - 8) + 56))(v64, 1, 1, v49);
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      *(v51 + 24) = 0;
      *(v51 + 32) = v46;
      *(v51 + 40) = v47 & 1;
      sub_10026E198(0, 0, v50, &unk_100701890, v51);
    }
  }

  swift_beginAccess();
  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    v54 = v65;
    Date.init()();
    v55 = type metadata accessor for Date();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v56 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_lastPhoneCloudKitAccountFetchTimestamp;
    swift_beginAccess();
    sub_100169198(v54, v53 + v56);
    swift_endAccess();
  }
}

void sub_10062C844()
{
  v1 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountFetchInProgress;
  v2 = v0[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountFetchInProgress];
  if (v2 == 2 || (v2 & 1) == 0)
  {
    static os_log_type_t.default.getter();
    v3 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v0[v1] = 1;
    v4 = *&v0[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_nanoSystemSettingsManager];
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    aBlock[4] = sub_10062F3A4;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10062D428;
    aBlock[3] = &unk_100864EA0;
    v6 = _Block_copy(aBlock);
    v7 = v0;

    [v4 getAccountsInfo:v6];
    _Block_release(v6);
  }

  else
  {
    static os_log_type_t.default.getter();
    v8 = HKLogActivity;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_10062CA00(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_10062F3AC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100864EF0;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();

  v15 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_10062CCB4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v6 - 8);
  v8 = v51 - v7;
  v9 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v9 - 8);
  v11 = v51 - v10;
  if (a1)
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v12))
    {
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v14, v12, "Failed to fetch watch accounts info with error: %@", v15, 0xCu);
      sub_10000EA04(v16, &unk_1008DB8B0);
    }

LABEL_35:
    a3[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountFetchInProgress] = 0;
    return;
  }

  static os_log_type_t.default.getter();
  v18 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  if (!a2)
  {
    goto LABEL_22;
  }

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v19;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v20 = sub_1004C5BC0(v55), (v21 & 1) == 0))
  {
    sub_100282EF8(v55);
LABEL_22:
    v56 = 0u;
    v57 = 0u;
    goto LABEL_23;
  }

  sub_10000B1B4(*(a2 + 56) + 32 * v20, &v56);
  sub_100282EF8(v55);
  if (!*(&v57 + 1))
  {
LABEL_23:
    sub_10000EA04(&v56, &qword_1008E51F0);
    goto LABEL_24;
  }

  sub_100140278(&qword_1008F6FC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    static os_log_type_t.fault.getter();
    v34 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

LABEL_25:
    v35 = 0;
LABEL_26:
    if (a3[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountAssumedToExist] == 1)
    {
      static os_log_type_t.default.getter();
      v36 = HKLogActivity;
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      v37 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists;
      if (v35 != a3[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists])
      {
        v38 = static os_log_type_t.default.getter();
        v39 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v38))
        {
          v40 = v39;
          v41 = swift_slowAlloc();
          *v41 = 67109120;
          *(v41 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v40, v38, "Watch CloudKit status changed to %{BOOL}d handling.", v41, 8u);
        }

        if (v35 != a3[v37])
        {
          a3[v37] = v35;
          v42 = [objc_opt_self() standardUserDefaults];
          LOBYTE(v55[0]) = v35;
          NSUserDefaults.set<A>(_:for:)();
        }

        v43 = sub_10062DBBC();
        a3[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_currentlyPairedWatchIsMinimumVersion] = FIDeviceMeetsMinimumOSVersionDaytona();
        static os_log_type_t.default.getter();
        v44 = HKLogActivity;
        os_log(_:dso:log:_:_:)();

        v45 = type metadata accessor for TaskPriority();
        (*(*(v45 - 8) + 56))(v11, 1, 1, v45);
        v46 = swift_allocObject();
        *(v46 + 16) = 0;
        *(v46 + 24) = 0;
        *(v46 + 32) = a3;
        *(v46 + 40) = v43 & 1;
        v47 = a3;
        sub_10026E198(0, 0, v11, &unk_100701860, v46);
      }

      Date.init()();
      v48 = type metadata accessor for Date();
      (*(*(v48 - 8) + 56))(v8, 0, 1, v48);
      v49 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_lastWatchCloudKitAccountFetchTimestamp;
      swift_beginAccess();
      sub_100169198(v8, &a3[v49]);
      swift_endAccess();
    }

    goto LABEL_35;
  }

  v22 = v55[0];
  v52 = *(v55[0] + 16);
  if (!v52)
  {
LABEL_20:

    goto LABEL_25;
  }

  v23 = 0;
  v51[1] = kNSSAccountIsPrimaryiCloudAccountKey;
  while (v23 < *(v22 + 16))
  {
    v24 = *(v22 + 8 * v23 + 32);
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    if (*(v24 + 16) && (v28 = v25, , v29 = sub_100066F20(v28, v27), v31 = v30, , (v31 & 1) != 0))
    {
      sub_10000B1B4(*(v24 + 56) + 32 * v29, v55);

      sub_1000059F8(0, &qword_1008E1750);
      if (swift_dynamicCast())
      {
        isa = v56;
        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_1000059F8(0, &qword_1008E1750);
    isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
LABEL_18:
    v33 = Bool.init(truncating:)();

    if (v33)
    {

      static os_log_type_t.default.getter();
      v50 = HKLogActivity;
      os_log(_:dso:log:_:_:)();

      v35 = 1;
      goto LABEL_26;
    }

    if (v52 == ++v23)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_10062D428(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_10062D4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 24) = a4;
  return _swift_task_switch(sub_10062D4F8, 0, 0);
}

uint64_t sub_10062D4F8()
{
  *(v0 + 32) = type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10062D590, v2, v1);
}

uint64_t sub_10062D590()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 65) = *(v0 + 16);

  return _swift_task_switch(sub_10062D650, 0, 0);
}

uint64_t sub_10062D650()
{
  v1 = *(v0 + 24);
  if (*(v1 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_currentlyPairedWatchIsMinimumVersion) & 1) != 0 || ([*(v1 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_friendListSectionManager) hasAnyFriendsSetup])
  {
    goto LABEL_5;
  }

  v2 = [objc_opt_self() sharedBehavior];
  if (!v2)
  {
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v5 = v2;
  v6 = [v2 fitnessMode];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
LABEL_5:
    if (*(v0 + 64))
    {
      if ((*(v0 + 65) & 1) == 0)
      {
        *(v0 + 56) = static MainActor.shared.getter();
        v7 = dispatch thunk of Actor.unownedExecutor.getter();
        v9 = v8;
        v10 = sub_10062D980;
        goto LABEL_10;
      }
    }

    else if ((*(v0 + 65) & 1) == 0)
    {
      *(v0 + 48) = static MainActor.shared.getter();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v11;
      v10 = sub_10062D824;
LABEL_10:
      v2 = v10;
      v3 = v7;
      v4 = v9;

      return _swift_task_switch(v2, v3, v4);
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    v12 = HKLogActivity;
    os_log(_:dso:log:_:_:)();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10062D824()
{
  v1 = *(v0 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = 1;
  v2 = v1;
  static Published.subscript.setter();

  return _swift_task_switch(sub_10062D8DC, 0, 0);
}

uint64_t sub_10062D8DC()
{
  static os_log_type_t.default.getter();
  v1 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10062D980()
{
  v1 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0;
  v2 = v1;
  static Published.subscript.setter();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10062DA2C()
{
  v1 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  result = FIDeviceMeetsMinimumOSVersionDaytona();
  v5 = OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_currentlyPairedWatchIsMinimumVersion;
  if (result != v0[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_currentlyPairedWatchIsMinimumVersion])
  {
    v0[v5] = FIDeviceMeetsMinimumOSVersionDaytona();
    v6 = sub_10062DBBC();
    v0[v5] = FIDeviceMeetsMinimumOSVersionDaytona();
    static os_log_type_t.default.getter();
    v7 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v0;
    *(v9 + 40) = v6 & 1;
    v10 = v0;
    sub_10026E198(0, 0, v3, &unk_100701810, v9);
  }

  return result;
}

uint64_t sub_10062DBBC()
{
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v0;
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 67109632;
    *(v5 + 4) = v3[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive];
    *(v5 + 8) = 1024;
    *(v5 + 10) = v3[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists];
    *(v5 + 14) = 1024;
    *(v5 + 16) = v3[OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountAssumedToExist];

    _os_log_impl(&_mh_execute_header, v4, v1, "Deriving account status from: [phone=%{BOOL}d], [watch=%{BOOL}d], [watch(assumed)=%{BOOL}d]", v5, 0x14u);
  }

  if (*(v0 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive) != 1)
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountAssumedToExist))
  {
    return 1;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v7 = result;
    v8 = [result fitnessMode];

    return (v8 & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10062DD70()
{
  sub_10062DF14(319, &qword_1008E0E18, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100055E7C();
    if (v1 <= 0x3F)
    {
      sub_10062DF14(319, &qword_1008F6F58, type metadata accessor for CHFriendsSetupPhase, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10062DF14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10062DF78@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FriendsSetupCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_10062DFF0()
{
  v0 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    URL.init(string:)();
    v5 = type metadata accessor for URL();
    v6 = *(v5 - 8);
    v8 = 0;
    if ((*(v6 + 48))(v2, 1, v5) != 1)
    {
      URL._bridgeToObjectiveC()(v7);
      v8 = v9;
      (*(v6 + 8))(v2, v5);
    }

    sub_1002FC244(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 openSensitiveURL:v8 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10062E198()
{
  v0 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    URL.init(string:)();
    v5 = type metadata accessor for URL();
    v6 = *(v5 - 8);
    v8 = 0;
    if ((*(v6 + 48))(v2, 1, v5) != 1)
    {
      URL._bridgeToObjectiveC()(v7);
      v8 = v9;
      (*(v6 + 8))(v2, v5);
    }

    sub_1002FC244(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 openSensitiveURL:v8 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10062E41C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10062E49C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10062E50C(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_10062E564(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id sub_10062E59C()
{
  v0 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:kASDomain];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 BOOLForKey:kASActivitySharingIsSetup];
  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v5, v3, "Checking defaults for fitness friends setup: %{BOOL}d", v6, 8u);
  }

  return v2;
}

uint64_t sub_10062E6A8()
{
  v0 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v21[-v1];
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v21[-v8];
  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  v22 = [v11 BOOLForKey:v12];

  v13 = [v10 standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    v16 = swift_dynamicCast();
    (*(v4 + 56))(v2, v16 ^ 1u, 1, v3);
    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      (*(v4 + 32))(v9, v2, v3);
      Date.init()();
      Date.timeIntervalSince(_:)();
      v18 = v17;
      v19 = *(v4 + 8);
      v19(v6, v3);
      v19(v9, v3);
      return (v18 < 600.0) & v22;
    }
  }

  else
  {
    sub_10000EA04(v25, &qword_1008E51F0);
    (*(v4 + 56))(v2, 1, 1, v3);
  }

  sub_10000EA04(v2, &unk_1008F73A0);
  return 0;
}

void sub_10062EA1C(char a1)
{
  v2 = kASDomain;
  v3 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:kASDomain];
  v4 = static os_log_type_t.default.getter();
  v5 = HKLogActivity;
  v6 = os_log_type_enabled(HKLogActivity, v4);
  if (v3)
  {
    if (v6)
    {
      v7 = v5;
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v7, v4, "Setting defaults for fitness friends setup: %{BOOL}d", v8, 8u);
    }

    v9 = v3;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v9 setValue:isa forKey:kASActivitySharingIsSetup];

    CFPreferencesAppSynchronize(v2);
    v11 = [objc_allocWithZone(NPSManager) init];
    sub_100140278(&qword_1008DCF58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D46C0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v13;
    v14 = v2;
    sub_10029D2E4(inited);
    swift_setDeallocating();
    sub_100045B78(inited + 32);
    v15 = Set._bridgeToObjectiveC()().super.isa;

    [v11 synchronizeUserDefaultsDomain:v14 keys:v15];
  }

  else if (v6)
  {
    v16 = v5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136315138;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = sub_10000AFDC(v19, v20, &v22);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v16, v4, "Error fetching UserDefaults with suitename %s", v17, 0xCu);
    sub_100005A40(v18);
  }
}

void sub_10062ECD4(uint64_t a1)
{
  v3 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v3 - 8);
  v5 = v31 - v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v20 = [objc_opt_self() defaultWorkspace];
    if (v20)
    {
      v21 = v20;
      URL.init(string:)();
      v22 = type metadata accessor for URL();
      v23 = *(v22 - 8);
      v25 = 0;
      if ((*(v23 + 48))(v5, 1, v22) != 1)
      {
        URL._bridgeToObjectiveC()(v24);
        v25 = v26;
        (*(v23 + 8))(v5, v22);
      }

      sub_1002FC244(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v21 openSensitiveURL:v25 withOptions:isa];
    }

    else
    {
      __break(1u);
    }
  }

  else if (a1 == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_phoneCloudKitAccountIsActive))
    {
      if (*(v1 + OBJC_IVAR____TtC10FitnessApp23FriendsSetupCoordinator_watchCloudKitAccountExists))
      {
        return;
      }

      sub_1000059F8(0, &qword_1008E3FD0);
      v18 = static OS_dispatch_queue.main.getter();
      v36 = sub_10062E198;
      v37 = 0;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v19 = &unk_100864E28;
    }

    else
    {
      v29 = v15;
      sub_1000059F8(0, &qword_1008E3FD0);
      (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v29);
      v18 = static OS_dispatch_queue.global(qos:)();
      (*(v14 + 8))(v17, v29);
      v36 = sub_10062DFF0;
      v37 = 0;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v19 = &unk_100864E00;
    }

    v34 = sub_1000449A8;
    v35 = v19;
    v30 = _Block_copy(&aBlock);
    static DispatchQoS.unspecified.getter();
    v31[1] = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v31[0] + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }

  else if (a1)
  {
    static os_log_type_t.fault.getter();
    v31[0] = HKLogActivity;
    os_log(_:dso:log:_:_:)();
    v28 = v31[0];
  }

  else
  {

    sub_10062EA1C(1);
  }
}

uint64_t sub_10062F2E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_10062D4D4(a1, v4, v5, v6, v7);
}

uint64_t sub_10062F3C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_10062A610(a1, v4, v5, v7, v6);
}

uint64_t sub_10062F4A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_10062D4D4(a1, v4, v5, v6, v7);
}

uint64_t sub_10062F5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_10026E198(0, 0, v6, &unk_1006E7CD8, v8);
}

void sub_10062F6DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator) startAnimating];
    swift_unknownObjectRelease();
  }

  v2 = *&v0[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_dataCalculator];
  v3 = *&v0[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_100630C9C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1006305F4;
  v7[3] = &unk_100865148;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v2 trackLapsForWorkout:v3 completion:v5];
  _Block_release(v5);
}

void sub_10062F81C(id *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100140278(&qword_1008E7590);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    v15 = v79;
    v16 = v80;
    *(v14 + 56) = v80;
    v17 = sub_100005994((v14 + 32));
    (*(*(v16 - 8) + 16))(v17, v15, v16);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  else if (a1)
  {
    v70 = dispatch_group_create();
    v60[0] = sub_1000059F8(0, &qword_1008E3FD0);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a1;
    v86 = sub_100630CA4;
    v87 = v19;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_1000449A8;
    v85 = &unk_100865198;
    v20 = _Block_copy(&aBlock);
    v74 = a1;
    v21 = v20;
    v22 = a3;
    v23 = v9;
    v69 = v22;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v24 = sub_1000261C4();
    v25 = sub_100140278(&unk_1008E7F50);
    v26 = sub_10002621C();
    v67 = v25;
    v66 = v26;
    v68 = v24;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v27 = v74;
    _Block_release(v21);

    v29 = *(v7 + 8);
    v28 = v7 + 8;
    v72 = v23;
    v65 = v29;
    v29(v23, v6);
    v31 = *(v11 + 8);
    v30 = v11 + 8;
    v71 = v13;
    v64 = v31;
    v31(v13, v10);
    v32 = v27 & 0xFFFFFFFFFFFFFF8;
    v73 = v6;
    if (v27 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v34 = 0;
      v63 = v27 & 0xC000000000000001;
      v60[1] = &v84;
      v62 = v10;
      v61 = i;
      while (1)
      {
        if (v63)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v34 >= *(v32 + 16))
          {
            goto LABEL_15;
          }

          v35 = *(v27 + 8 * v34 + 32);
        }

        v27 = v35;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v78 = v34 + 1;
        v36 = v69;
        v77 = *&v69[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_internalQueue];
        v37 = swift_allocObject();
        v37[2] = v36;
        v37[3] = v27;
        v37[4] = v34;
        v86 = sub_100630CAC;
        v87 = v37;
        aBlock = _NSConcreteStackBlock;
        v83 = 1107296256;
        v84 = sub_1000449A8;
        v85 = &unk_1008651E8;
        v38 = _Block_copy(&aBlock);
        v39 = v36;
        v76 = v70;
        v75 = v27;
        v40 = v71;
        static DispatchQoS.unspecified.getter();
        v81 = _swiftEmptyArrayStorage;
        v41 = v32;
        v42 = v30;
        v43 = v72;
        v44 = v28;
        v45 = v73;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v38);

        v46 = v62;
        v47 = v43;
        v30 = v42;
        v32 = v41;
        v48 = v45;
        v28 = v44;
        v65(v47, v48);
        v27 = v74;
        v10 = v46;
        v49 = v46;
        v50 = v61;
        v64(v40, v49);

        ++v34;
        if (v78 == v50)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
    v51 = static OS_dispatch_queue.main.getter();
    v52 = swift_allocObject();
    v53 = v69;
    *(v52 + 16) = v69;
    v86 = sub_100389E30;
    v87 = v52;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_1000449A8;
    v85 = &unk_100865238;
    v54 = _Block_copy(&aBlock);
    v55 = v53;
    v56 = v71;
    static DispatchQoS.unspecified.getter();
    v81 = _swiftEmptyArrayStorage;
    v58 = v72;
    v57 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v59 = v70;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v54);

    v65(v58, v57);
    v64(v56, v10);
  }
}

uint64_t sub_10062FF7C(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    a1;
    static Published.subscript.setter();
    return sub_100309BC4();
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v17 = a1;
    v6 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(a2 + 8 * v6 + 32);
      }

      v15 = v14;
      v16 = [v14 distance];
      if (v16)
      {
        v7 = v16;
        v8 = [objc_opt_self() meterUnit];
        [v7 doubleValueForUnit:v8];
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      ++v6;
      [v15 elapsedTime];
      v12 = v11;

      type metadata accessor for WorkoutDurationMetrics();
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 1;
      *(v13 + 72) = 0;
      *(v13 + 80) = 1;
      *(v13 + 88) = 0u;
      *(v13 + 104) = 0u;
      *(v13 + 120) = 0;
      *(v13 + 128) = 1;
      *(v13 + 144) = 0;
      *(v13 + 152) = 0;
      *(v13 + 136) = 0;
      *(v13 + 32) = v10;
      *(v13 + 40) = 0;
      *(v13 + 64) = v12;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v4 != v6);
    a1 = v17;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006301B4(char *a1, void *a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout];
  v11 = *&a1[OBJC_IVAR___CHWorkoutDetailTrackLapDataSource_distanceUnit];
  v12 = *&a1[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_dataCalculator];
  type metadata accessor for WorkoutDurationMetrics();
  swift_allocObject();
  v13 = v10;
  v14 = v12;
  sub_1003D0F58(v13, v23, v11, v14, 0, 0);
  v16 = v15;
  sub_1000059F8(0, &qword_1008E3FD0);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = v16;
  aBlock[4] = sub_100630CB8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100865288;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v25);
}

uint64_t sub_1006304E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = static Published.subscript.modify();
  v7 = v6;
  v8 = *v6;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v7 = v8;
  if (!result || v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    result = sub_10057FAF8(v8);
    v8 = result;
    *v7 = result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a3;

    v5(&v10, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006305F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000059F8(0, &qword_1008F7028);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100630698(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = v34;
    if (*(v34 + 16) > a2)
    {
      v13 = *(v34 + a2 + 32);

      if (sub_10020ECB8(v13, v14) == 0x65636E6174736964 && v15 == 0xE800000000000000)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          return sub_10030BC50(a1, a2);
        }
      }

      sub_100309440(a1, *(v2 + OBJC_IVAR___CHWorkoutDetailTrackLapDataSource_distanceUnit), 0, v11);
      (*(v6 + 16))(v8, v11, v5);
      v19 = Text.init(_:)();
      v21 = v20;
      v23 = v22;
      sub_10020A2B4(1u);
      v24 = Text.foregroundColor(_:)();
      v32 = v5;
      v33 = v11;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      sub_10004642C(v19, v21, v23 & 1);

      v34 = v24;
      v35 = v26;
      v36 = v28 & 1;
      v37 = v30;
      v18 = AnyView.init<A>(_:)();
      (*(v6 + 8))(v33, v32);
      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10063093C(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v10 + 8 * a1 + 32);

LABEL_5:

  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);

    return v4;
  }

  result = objc_opt_self();
  v5 = __OFADD__(a1, 1);
  v6 = a1 + 1;
  if (!v5)
  {
    v7 = result;
    v8 = [objc_allocWithZone(NSNumber) initWithInteger:v6];
    v9 = [v7 localizedStringFromNumber:v8 numberStyle:0];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_100630BC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailTrackLapDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutDetailTrackLapDataSource()
{
  result = qword_1008F7018;
  if (!qword_1008F7018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100630CE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100630D74(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_100630D20()
{
  result = qword_1008F7030;
  if (!qword_1008F7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7030);
  }

  return result;
}

unint64_t sub_100630D74(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

void sub_100630DC0()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for WorkoutAppRecommendationCollectionViewController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 setDelegate:v0];

  v3 = [v0 collectionView];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 setDataSource:v0];

  v5 = [v0 collectionView];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 setScrollEnabled:0];

  v7 = [v0 collectionView];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  type metadata accessor for WorkoutAppRecommendationCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = String._bridgeToObjectiveC()();
  [v8 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v10];

  v11 = [v0 collectionView];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  v13 = sub_100046170();
  [v12 setBackgroundColor:v13];

  v14 = [v0 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 reloadData];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_100631040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAppRecommendationCollectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100631114(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  type metadata accessor for WorkoutAppRecommendationCollectionViewCell();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC10FitnessApp48WorkoutAppRecommendationCollectionViewController_recentWorkoutAppRecommendations);
  v9 = v5;
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v8 + 16))
  {
    sub_100007C5C(v8 + 40 * result + 32, v12);
    v11 = sub_1000066AC((v1 + OBJC_IVAR____TtC10FitnessApp48WorkoutAppRecommendationCollectionViewController_appRecommendationDataProvider), *(v1 + OBJC_IVAR____TtC10FitnessApp48WorkoutAppRecommendationCollectionViewController_appRecommendationDataProvider + 24));
    sub_1006316D8(v12, *v11, v7);

    sub_100005A40(v12);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100631548(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v17[3] = type metadata accessor for AppRecommendationDataProvider();
  v17[4] = &off_10085F1A0;
  v17[0] = a2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100007C5C(v17, v16);
  sub_100007C5C(a1, v15);
  type metadata accessor for MainActor();

  v10 = a3;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_100006260(v16, (v12 + 5));
  sub_100006260(v15, (v12 + 10));
  sub_10026E198(0, 0, v8, &unk_100701B10, v12);

  return sub_100005A40(v17);
}

uint64_t sub_1006316D8(void *a1, uint64_t a2, char *a3)
{
  v14 = type metadata accessor for AppRecommendationDataProvider();
  v15 = &off_10085F1A0;
  v13[0] = a2;
  v6 = *&a3[OBJC_IVAR____TtC10FitnessApp42WorkoutAppRecommendationCollectionViewCell_titleLabel];
  v7 = a1[3];
  v8 = a1[4];
  sub_1000066AC(a1, v7);
  v9 = *(v8 + 8);

  v9(v7, v8);
  v10 = String._bridgeToObjectiveC()();

  [v6 setText:v10];

  [v6 sizeToFit];
  v11 = sub_1000066AC(v13, v14);
  sub_100631548(a1, *v11, a3);
  return sub_100005A40(v13);
}

unint64_t sub_1006317EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp48WorkoutAppRecommendationCollectionViewController_recentWorkoutAppRecommendations);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (result >= *(v1 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_100007C5C(v1 + 40 * result + 32, v7);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v3 = result;
    v4 = v8;
    v5 = v9;
    sub_1000066AC(v7, v8);
    (*(v5 + 24))(v4, v5);
    v6 = String._bridgeToObjectiveC()();

    [v3 openApplicationWithBundleID:v6];

    return sub_100005A40(v7);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006318EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1003C1240(a1, v4, v5, v6, (v1 + 5), (v1 + 10));
}

id sub_100631ACC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageControlView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100631B78()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(UIPageControl) init];
  [v2 setBackgroundStyle:2];
  [v2 setNumberOfPages:v1];
  sub_100140278(&qword_1008F70A8);
  UIViewRepresentableContext.coordinator.getter();
  [v2 addTarget:v4 action:"updateCurrentPageWithSender:" forControlEvents:4096];

  return v2;
}

id sub_100631C38(void *a1)
{
  sub_100140278(&qword_1008E0EA0);
  Binding.wrappedValue.getter();
  return [a1 setCurrentPage:v3];
}

id sub_100631CA4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = type metadata accessor for PageControlView.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV10FitnessApp15PageControlView11Coordinator_control];
  *v9 = v4;
  *(v9 + 1) = v3;
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  result = objc_msgSendSuper2(&v11, "init");
  *a1 = result;
  return result;
}

uint64_t sub_100631D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100631E24();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100631D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100631E24();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100631DF8()
{
  sub_100631E24();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100631E24()
{
  result = qword_1008F70B0;
  if (!qword_1008F70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F70B0);
  }

  return result;
}

void sub_100631E88(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v45 = a8;
  v40 = a7;
  v43 = a4;
  v44 = a6;
  v13 = a3;
  v14 = type metadata accessor for UUID();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CatalogTipCard();
  __chkstk_darwin(v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v19 - 8);
  v46 = &v39 - v20;
  v21 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v21 - 8);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v39 - v25;
  if (v13 < 3 || a1 ^ 7 | a2)
  {
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
  }

  else
  {
    sub_10001B104(a5, v47, &qword_1008DCC60);
    v27 = v48;
    if (v48)
    {
      v28 = v49;
      sub_1000066AC(v47, v48);
      (*(v28 + 8))(v27, v28);
      v29 = v42;
      (v42[7])(v26, 0, 1, v14);
      sub_100005A40(v47);
    }

    else
    {
      sub_10000EA04(v47, &qword_1008DCC60);
      v29 = v42;
      (v42[7])(v26, 1, 1, v14);
    }

    v30 = *(v40 + 32);
    v31 = *(*v30 + class metadata base offset for ManagedBuffer + 16);
    v32 = (*(*v30 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v30 + v32));
    v33 = type metadata accessor for CatalogTipActivityTileDataModel.State();
    sub_10001B104(v30 + *(v33 + 20) + v31, v46, &qword_1008E4E80);
    os_unfair_lock_unlock((v30 + v32));
    *(a9 + 24) = v16;
    *(a9 + 32) = &off_1008520B0;
    v42 = sub_100005994(a9);
    v34 = &v18[v16[5]];
    *v34 = xmmword_1006D4AA0;
    v34[16] = 3;
    sub_10001B104(v26, v23, &unk_1008DB8A0);
    v35 = v29;
    v36 = v29[6];
    LODWORD(v31) = v36(v23, 1, v14);
    v37 = v45;

    if (v31 == 1)
    {
      v38 = v41;
      UUID.init()();
      sub_10000EA04(v26, &unk_1008DB8A0);
      if (v36(v23, 1, v14) != 1)
      {
        sub_10000EA04(v23, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v26, &unk_1008DB8A0);
      v38 = v41;
      (v35[4])(v41, v23, v14);
    }

    (v35[4])(v18, v38, v14);
    v18[v16[6]] = v43 & 1;
    v18[v16[7]] = v44 & 1;
    v18[v16[8]] = 1;
    sub_10063238C(v46, &v18[v16[9]]);
    *&v18[v16[10]] = v37;
    sub_1006323FC(v18, v42);
  }
}

uint64_t sub_10063238C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E4E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006323FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipCard();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100632460(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10FitnessApp20TrendExplanationView_textView;
  type metadata accessor for TrendsFooterTextView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v36.receiver = v4;
  v36.super_class = type metadata accessor for TrendExplanationView();
  v10 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC10FitnessApp20TrendExplanationView_textView;
  v12 = *&v10[OBJC_IVAR____TtC10FitnessApp20TrendExplanationView_textView];
  v13 = v10;
  [v12 setDelegate:v13];
  v14 = *&v10[v11];
  v15 = v13;
  [v15 addSubview:v14];
  v16 = [*&v10[v11] leadingAnchor];
  v17 = [v15 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:10.0];

  v19 = [*&v10[v11] trailingAnchor];
  v20 = [v15 trailingAnchor];

  v21 = [v19 constraintEqualToAnchor:v20 constant:-10.0];
  v22 = [*&v10[v11] topAnchor];
  v23 = [v15 topAnchor];

  v24 = [v22 constraintEqualToAnchor:v23 constant:10.0];
  v25 = [*&v10[v11] bottomAnchor];
  v26 = [v15 bottomAnchor];

  v27 = [v25 constraintEqualToAnchor:v26 constant:-10.0];
  v28 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1006D5300;
  *(v29 + 32) = v18;
  *(v29 + 40) = v21;
  *(v29 + 48) = v24;
  *(v29 + 56) = v27;
  sub_10019EC5C();
  v30 = v18;
  v31 = v21;
  v32 = v24;
  v33 = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints:isa];

  return v15;
}

id sub_100632828(unsigned __int8 a1)
{
  sub_100140278(&qword_1008F7150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp20TrendExplanationView_textView);
  v5 = NSForegroundColorAttributeName;
  *(inited + 40) = [v4 textColor];
  *(inited + 48) = NSFontAttributeName;
  v6 = NSFontAttributeName;
  *(inited + 56) = [v4 font];
  v7 = sub_1004CB458(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008F7158);
  swift_arrayDestroy();
  sub_100376DB4(v7);

  v8 = objc_allocWithZone(NSMutableAttributedString);
  v9 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10017597C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithString:v9 attributes:isa];

  v12 = [v4 textColor];
  v13 = [v4 font];
  v14 = sub_100584380(v13, a1);

  if (v14)
  {
    v15 = sub_1004552F0(v14);

    [v11 appendAttributedString:v15];
  }

  return v11;
}

id sub_100632B2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendExplanationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100632B98@<X0>(uint64_t *a1@<X8>)
{
  result = Date.hashValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100632BC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100632C08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100632C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v32 = a1;
  v33 = a2;
  v10 = StateObject.wrappedValue.getter();
  v11 = *&v10[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  v12 = [v11 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = v36;
  v14 = StateObject.wrappedValue.getter();
  v15 = *&v14[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  v16 = [v15 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10021D8EC(&qword_1008E1D78, &type metadata accessor for Date);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v13 + 8);
  v13 += 8;
  v17(v6, v4);
  v30 = v9;
  v31 = v4;
  v29 = v17;
  v17(v9, v4);
  sub_100140278(&unk_1008E51C0);
  v18 = (*(v13 + 72) + 32) & ~*(v13 + 72);
  v36 = *(v13 + 64);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006D1F70;
  v20 = StateObject.wrappedValue.getter();
  v21 = *&v20[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  v22 = [v21 startDate];
  v35 = v19 + v18;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = StateObject.wrappedValue.getter();
  v24 = *&v23[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  if (v34)
  {
    v25 = [v24 startDate];

    v26 = v30;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.addingTimeInterval(_:)();
    v29(v26, v31);
  }

  else
  {
    v27 = [v24 endDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v19;
}

uint64_t sub_100633098@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = [objc_opt_self() systemGray6Color];
  v9 = Color.init(_:)();
  v27 = static HorizontalAlignment.leading.getter();
  v41 = 1;
  sub_1006333E0(a1, a2, a3 & 0x101, &v29);
  v50 = v37;
  v51 = v38;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v49 = v36;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v53[8] = v37;
  v53[9] = v38;
  v53[4] = v33;
  v53[5] = v34;
  v53[6] = v35;
  v53[7] = v36;
  v53[0] = v29;
  v53[1] = v30;
  v52 = v39;
  v54 = v39;
  v53[2] = v31;
  v53[3] = v32;
  sub_10001B104(&v42, v57, &qword_1008F7168);
  sub_10000EA04(v53, &qword_1008F7168);
  *(&v40[4] + 7) = v46;
  *(&v40[3] + 7) = v45;
  *(&v40[7] + 7) = v49;
  *(&v40[8] + 7) = v50;
  *(&v40[9] + 7) = v51;
  *(&v40[10] + 7) = v52;
  *(&v40[5] + 7) = v47;
  *(&v40[6] + 7) = v48;
  *(v40 + 7) = v42;
  *(&v40[1] + 7) = v43;
  *(&v40[2] + 7) = v44;
  v10 = v41;
  v55 = v27;
  LOBYTE(v56[0]) = v41;
  v11 = v40[7];
  *(&v56[7] + 1) = v40[7];
  v12 = v40[8];
  *(&v56[8] + 1) = v40[8];
  v13 = v40[9];
  *(&v56[9] + 1) = v40[9];
  *(&v56[9] + 10) = *(&v40[9] + 9);
  v14 = v40[3];
  *(&v56[3] + 1) = v40[3];
  v15 = v40[4];
  *(&v56[4] + 1) = v40[4];
  v16 = v40[5];
  *(&v56[5] + 1) = v40[5];
  v17 = v40[6];
  *(&v56[6] + 1) = v40[6];
  v18 = v40[0];
  *(v56 + 1) = v40[0];
  v19 = v40[1];
  *(&v56[1] + 1) = v40[1];
  v20 = v40[2];
  *(&v56[2] + 1) = v40[2];
  v21 = v56[8];
  *(a4 + 136) = v56[7];
  *(a4 + 152) = v21;
  *(a4 + 168) = v56[9];
  *(a4 + 178) = *(&v56[9] + 10);
  v22 = v56[4];
  *(a4 + 72) = v56[3];
  *(a4 + 88) = v22;
  v23 = v56[6];
  *(a4 + 104) = v56[5];
  *(a4 + 120) = v23;
  v24 = v56[0];
  *(a4 + 8) = v55;
  *(a4 + 24) = v24;
  v25 = v56[2];
  *(a4 + 40) = v56[1];
  *(a4 + 56) = v25;
  v66 = v11;
  v67 = v12;
  v68[0] = v13;
  *(v68 + 9) = *(&v40[9] + 9);
  v62 = v14;
  v63 = v15;
  v64 = v16;
  v65 = v17;
  v59 = v18;
  v60 = v19;
  *a4 = v9;
  v57[0] = v27;
  v57[1] = 0;
  v58 = v10;
  v61 = v20;

  sub_10001B104(&v55, v28, &qword_1008F7170);
  sub_10000EA04(v57, &qword_1008F7170);
}

uint64_t sub_1006333E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v42 = a3 & 0x100;
  v44 = a3;
  if ((a3 & 0x100) != 0)
  {
    v40 = 0;
    v41 = 0;
    v6 = a2;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v52 = 0;
    v43 = 0;
    v46 = 0;
    v48 = 0;
    v49 = 0;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v10 = Text.init(_:tableName:bundle:comment:)();
    v12 = v11;
    v14 = v13;
    static Font.body.getter();
    v15 = Text.font(_:)();
    v37 = v16;
    v38 = v15;
    v53 = v17;
    v39 = v18;

    sub_10004642C(v10, v12, v14 & 1);

    type metadata accessor for DivingDataCalculator(0);
    sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
    v19 = StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v87 = v76;
    v88 = v77;
    v89[0] = v78[0];
    *(v89 + 9) = *(v78 + 9);
    v83 = *&v72[16];
    v84 = v73;
    v85 = v74;
    v86 = v75;
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v82 = *v72;

    sub_10021D28C(&v79);
    *(&v69 + 1) = *&v72[16];
    sub_10000FCBC();
    v20 = Text.init<A>(_:)();
    v22 = v21;
    LOBYTE(v12) = v23;
    static Font.body.getter();
    v24 = Text.font(_:)();
    v50 = v25;
    v51 = v24;
    v36 = a2;
    v27 = v26;

    sub_10004642C(v20, v22, v12 & 1);

    *&v69 = static Color.teal.getter();
    v28 = Text.foregroundStyle<A>(_:)();
    v30 = v29;
    v47 = v31;
    v43 = v32;
    sub_10004642C(v51, v50, v27 & 1);

    LOBYTE(v69) = v53 & 1;
    LOBYTE(v63[0]) = v53 & 1;
    LOBYTE(v61) = v47 & 1;
    LOBYTE(v90) = 0;
    v48 = v53 & 1;
    v49 = v47 & 1;
    v7 = v38;
    sub_10006965C(v38, v37, v53 & 1);

    sub_10006965C(v28, v30, v47 & 1);

    v41 = v28;
    v52 = v30;
    sub_10004642C(v28, v30, v47 & 1);

    v6 = v36;
    v8 = v37;
    sub_10004642C(v38, v37, v69);
    v9 = v39;

    v46 = 0x4020000000000000;
    v40 = 0x4040000000000000;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = v6;
  *(v33 + 32) = v44 & 1;
  *(v33 + 33) = BYTE1(v42);
  sub_10021D48C(a1, v6, v44 & 1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v68 + 6) = v90;
  *(&v68[1] + 6) = v91;
  *(&v68[2] + 6) = v92;
  *&v69 = v7;
  *(&v69 + 1) = v8;
  *&v70 = v48;
  *(&v70 + 1) = v9;
  *&v71 = v41;
  *(&v71 + 1) = v52;
  *v72 = v49;
  *&v72[8] = v43;
  *&v72[16] = v46;
  v72[24] = 0;
  *&v55[9] = *&v72[9];
  v54 = v71;
  *v55 = *v72;
  *&v61 = sub_1006367A4;
  *(&v61 + 1) = v33;
  *v62 = 0;
  *&v62[48] = *(&v92 + 1);
  *&v62[34] = v68[2];
  *&v62[18] = v68[1];
  *&v62[2] = v68[0];
  v60 = *&v62[48];
  v59 = *&v62[32];
  v57 = *v62;
  v58 = *&v62[16];
  v56 = v61;
  v34 = v70;
  *a4 = v69;
  *(a4 + 16) = v34;
  *(a4 + 64) = *&v55[16];
  *(a4 + 80) = v56;
  *(a4 + 32) = v54;
  *(a4 + 48) = *v55;
  *(a4 + 112) = v58;
  *(a4 + 128) = v59;
  *(a4 + 96) = v57;
  *(a4 + 144) = v60;
  *(a4 + 152) = v40;
  *(a4 + 160) = 0;
  *(a4 + 161) = v42 != 0;
  v63[0] = sub_1006367A4;
  v63[1] = v33;
  v64 = 0;
  v65 = v68[0];
  v66 = v68[1];
  *v67 = v68[2];
  *&v67[14] = *(&v68[2] + 14);
  sub_1006367BC(&v69, &v79);
  sub_10001B104(&v61, &v79, &qword_1008F7180);
  sub_10000EA04(v63, &qword_1008F7180);
  *&v79 = v7;
  *(&v79 + 1) = v8;
  *&v80 = v48;
  *(&v80 + 1) = v9;
  *&v81 = v41;
  *(&v81 + 1) = v52;
  *&v82 = v49;
  *(&v82 + 1) = v43;
  *&v83 = v46;
  BYTE8(v83) = 0;
  return sub_10000EA04(&v79, &qword_1008F7178);
}

id sub_1006339E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v61 = a1;
  v56 = a5;
  v55 = a4 & 0x100;
  v60 = type metadata accessor for GeometryProxy();
  v58 = *(v60 - 8);
  v59 = *(v58 + 64);
  __chkstk_darwin(v60);
  v57 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E1C78);
  __chkstk_darwin(v9 - 8);
  v54 = &v43 - v10;
  v11 = sub_100140278(&qword_1008E1C80);
  v46 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v50 = sub_100140278(&qword_1008E1C88);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v63 = &v43 - v14;
  v52 = sub_100140278(&qword_1008F7188);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = &v43 - v15;
  v62 = a2;
  v71 = a2;
  v72 = a3;
  v47 = a4;
  v16 = a4 & 1;
  v73 = a4 & 0x101;
  v17 = (a4 >> 8) & 1;
  sub_100140278(&qword_1008E1CD0);
  sub_10021D2EC();
  Chart.init(content:)();
  v68 = a2;
  v69 = a3;
  v44 = a3;
  v70 = a4 & 0x101;
  v48 = a4 & 1;
  v49 = v17;
  v18 = sub_100140278(&qword_1008E1CE8);
  v19 = sub_10014A6B0(&qword_1008E1CF0, &qword_1008E1C80);
  v20 = sub_10014A6B0(&qword_1008E1CF8, &qword_1008E1CE8);
  View.chartYAxis<A>(content:)();
  (*(v46 + 8))(v13, v11);
  v21 = v62;
  v64 = v62;
  v65 = a3;
  v66 = v16;
  v67 = v17;
  v22 = sub_100140278(&qword_1008F7190);
  v75 = v11;
  v76 = v18;
  v77 = v19;
  v78 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_10014A6B0(&qword_1008F7198, &qword_1008F7190);
  v25 = v45;
  v26 = v50;
  v27 = v63;
  View.chartXAxis<A>(content:)();
  (*(v51 + 8))(v27, v26);
  v28 = v21;
  v29 = v44;
  v74 = sub_100632C78(v28, v44);
  v30 = type metadata accessor for ScaleType();
  v31 = v54;
  (*(*(v30 - 8) + 56))(v54, 1, 1, v30);
  sub_100140278(&qword_1008E1D00);
  v75 = v26;
  v76 = v22;
  v77 = OpaqueTypeConformance2;
  v78 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1002335B8();
  v32 = v56;
  v33 = v52;
  View.chartXScale<A>(domain:type:)();
  sub_10000EA04(v31, &qword_1008E1C78);

  (*(v53 + 8))(v25, v33);
  v34 = v58;
  v35 = v57;
  v36 = v60;
  (*(v58 + 16))(v57, v61, v60);
  v37 = v34;
  v38 = (*(v34 + 80) + 34) & ~*(v34 + 80);
  v39 = swift_allocObject();
  v40 = v62;
  *(v39 + 16) = v62;
  *(v39 + 24) = v29;
  LOBYTE(v22) = v48;
  *(v39 + 32) = v48;
  *(v39 + 33) = v49;
  (*(v37 + 32))(v39 + v38, v35, v36);
  v41 = (v32 + *(sub_100140278(&qword_1008F71A0) + 36));
  *v41 = sub_1006368A4;
  v41[1] = v39;
  v41[2] = 0;
  v41[3] = 0;
  return sub_10021D48C(v40, v29, v22);
}

uint64_t sub_100634150()
{
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v0 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13[8] = v10;
  v13[9] = v11;
  v14[0] = *v12;
  *(v14 + 9) = *&v12[9];
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;

  sub_10021D28C(v13);
  sub_100140278(&qword_1008E1DC8);
  sub_100140278(&qword_1008E1DD0);
  sub_10014A6B0(&qword_1008E1DD8, &qword_1008E1DC8);
  sub_100141EEC(&qword_1008E1CE0);
  type metadata accessor for RuleMark();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10021D8EC(&qword_1008E1DE0, type metadata accessor for WorkoutChartDataElement);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100634408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100140278(&qword_1008E1DE8);
  __chkstk_darwin(v3 - 8);
  v24 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v22[1] = v22 - v6;
  v7 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v7 - 8);
  v22[0] = v22 - v8;
  v9 = type metadata accessor for RuleMark();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008E1CE0);
  v14 = *(v13 - 8);
  v27 = v13;
  v28 = v14;
  __chkstk_darwin(v13);
  v23 = v22 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for Date();
  v16 = a1;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v17 = type metadata accessor for WorkoutChartDataElement(0);
  v34[0] = -*(v16 + *(v17 + 24));
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v34[0] = -*(v16 + *(v17 + 28));
  static PlottableValue.value(_:_:)();

  RuleMark.init<A, B>(x:yStart:yEnd:)();
  v34[0] = COERCE_DOUBLE(static Color.teal.getter());
  v18 = v23;
  v19 = v25;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v26 + 8))(v12, v19);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v30 = v19;
  v31 = &type metadata for Color;
  v32 = &protocol witness table for RuleMark;
  v33 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v20 = v27;
  ChartContent.lineStyle(_:)();
  sub_10021D934(v34);
  return (*(v28 + 8))(v18, v20);
}

uint64_t sub_10063488C(uint64_t a1, void *a2, __int16 a3)
{
  v6 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v8 - 8);
  static AxisMarkPreset.inset.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3 & 1;
  *(v9 + 33) = HIBYTE(a3) & 1;
  sub_10021D48C(a1, a2, a3 & 1);
  static AxisMarkPosition.automatic.getter();
  static AxisMarkValues.automatic.getter();
  sub_100140278(&qword_1008E1D80);
  sub_10021D600();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_100634A40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v76 = a2;
  v74 = a1;
  v78 = a4;
  v77 = a3;
  v75 = a3 & 0x100;
  v69 = sub_100140278(&qword_1008E1DB0);
  __chkstk_darwin(v69);
  v68 = &v61 - v4;
  v5 = sub_100140278(&qword_1008E1DA8);
  __chkstk_darwin(v5 - 8);
  v70 = &v61 - v6;
  v7 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008E1D50);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  v71 = sub_100140278(&qword_1008E1DB8);
  v17 = *(v71 - 8);
  __chkstk_darwin(v71);
  v73 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  v67 = type metadata accessor for AxisGridLine();
  v22 = *(v67 - 8);
  __chkstk_darwin(v67);
  v72 = (&v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = &v61 - v25;
  if (AxisValue.index.getter())
  {
    v67 = v9;
    v68 = v12;
    v69 = v16;
    v70 = v13;
    v72 = v14;
    v73 = v17;
    v27 = v78;
    v28 = AxisValue.index.getter();
    result = AxisValue.count.getter();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if (v28 == result - 1)
    {
      v30 = static UnitPoint.trailing.getter();
      __chkstk_darwin(v30);
      static AxisValueLabelCollisionResolution.automatic.getter();
      static AxisValueLabelOrientation.automatic.getter();
      v60 = &protocol witness table for Text;
      v58 = &v55;
      v59 = &type metadata for Text;
      v57 = sub_100636AD0;
      v56 = 1;
      v55 = 0;
      v31 = v69;
      AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
      sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
      v32 = v70;
      AxisMark.offset(x:y:)();
      v72[1](v31, v32);
      v73[4](v27, v21, v71);
      sub_100140278(&qword_1008E1DC0);
      swift_storeEnumTagMultiPayload();
      v33 = sub_100140278(&qword_1008E1D98);
      return (*(*(v33 - 8) + 56))(v27, 0, 1, v33);
    }

    else
    {
      v53 = sub_100140278(&qword_1008E1D98);
      v54 = *(*(v53 - 8) + 56);

      return v54(v27, 1, 1, v53);
    }
  }

  else
  {
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v65 = v26;
    AxisGridLine.init(centered:stroke:)();
    v34 = static UnitPoint.bottomTrailing.getter();
    v66 = &v61;
    v63 = v36;
    v64 = v35;
    __chkstk_darwin(v34);
    static AxisValueLabelCollisionResolution.automatic.getter();
    static AxisValueLabelOrientation.automatic.getter();
    v60 = &protocol witness table for Text;
    v58 = &v55;
    v59 = &type metadata for Text;
    v57 = sub_100636AE8;
    v56 = 1;
    v55 = 0;
    AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
    v62 = v21;
    AxisMark.offset(x:y:)();
    v14[1](v16, v13);
    v37 = *(v22 + 16);
    v38 = v72;
    v39 = v26;
    v40 = v67;
    v37(v72, v39, v67);
    v41 = v17[2];
    v42 = v21;
    v43 = v71;
    v41(v73, v42, v71);
    v44 = v68;
    v37(v68, v38, v40);
    v45 = v69;
    v46 = *(v69 + 48);
    v47 = v73;
    v41(&v44[v46], v73, v43);
    v48 = v70;
    (*(v22 + 32))(v70, v44, v40);
    v17[4](v48 + *(v45 + 48), &v44[v46], v43);
    v49 = v17[1];
    (v49)(v62, v43);
    v50 = *(v22 + 8);
    v50(v65, v40);
    (v49)(v47, v43);
    v50(v72, v40);
    v51 = v78;
    sub_1000A3C0C(v48, v78);
    sub_100140278(&qword_1008E1DC0);
    swift_storeEnumTagMultiPayload();
    v52 = sub_100140278(&qword_1008E1D98);
    return (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  }

  return result;
}

uint64_t sub_100635348@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v1 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v4 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v33[8] = v30;
  v33[9] = v31;
  v34[0] = v32[0];
  *(v34 + 9) = *(v32 + 9);
  v33[4] = v26;
  v33[5] = v27;
  v33[6] = v28;
  v33[7] = v29;
  v33[0] = v22;
  v33[1] = v23;
  v33[2] = v24;
  v33[3] = v25;
  v5 = *(&v25 + 1);
  v6 = v26;

  sub_10021D28C(v33);
  *&v22 = v5;
  *(&v22 + 1) = v6;
  sub_10000FCBC();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  static Font.system(size:weight:design:)();
  sub_10000EA04(v3, &qword_1008DC448);
  v13 = Text.font(_:)();
  v15 = v14;
  LOBYTE(v3) = v16;
  v18 = v17;

  sub_10004642C(v7, v9, v11 & 1);

  v20 = v21;
  *v21 = v13;
  v20[1] = v15;
  *(v20 + 16) = v3 & 1;
  v20[3] = v18;
  return result;
}

uint64_t sub_1006355DC@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v1 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v4 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v33[8] = v30;
  v33[9] = v31;
  v34[0] = v32[0];
  *(v34 + 9) = *(v32 + 9);
  v33[4] = v26;
  v33[5] = v27;
  v33[6] = v28;
  v33[7] = v29;
  v33[0] = v22;
  v33[1] = v23;
  v33[2] = v24;
  v33[3] = v25;
  v5 = *(&v24 + 1);
  v6 = v25;

  sub_10021D28C(v33);
  *&v22 = v5;
  *(&v22 + 1) = v6;
  sub_10000FCBC();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  static Font.system(size:weight:design:)();
  sub_10000EA04(v3, &qword_1008DC448);
  v13 = Text.font(_:)();
  v15 = v14;
  LOBYTE(v3) = v16;
  v18 = v17;

  sub_10004642C(v7, v9, v11 & 1);

  v20 = v21;
  *v21 = v13;
  v20[1] = v15;
  *(v20 + 16) = v3 & 1;
  v20[3] = v18;
  return result;
}

uint64_t sub_100635870(uint64_t a1, void *a2, __int16 a3)
{
  v6 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v7 - 8);
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v8 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22[8] = v19;
  v22[9] = v20;
  v23[0] = *v21;
  *(v23 + 9) = *&v21[9];
  v22[4] = v15;
  v22[5] = v16;
  v22[6] = v17;
  v22[7] = v18;
  v22[0] = v11;
  v22[1] = v12;
  v22[2] = v13;
  v22[3] = v14;

  sub_10021D28C(v22);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3 & 1;
  *(v9 + 33) = HIBYTE(a3) & 1;
  sub_10021D48C(a1, a2, a3 & 1);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100140278(&qword_1008F71A8);
  type metadata accessor for Date();
  sub_100636940();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_100635B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v47 = a2;
  v49 = a1;
  v54 = a5;
  v53 = sub_100140278(&qword_1008F71B8) - 8;
  __chkstk_darwin(v53);
  v52 = &v40 - v6;
  v7 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100140278(&qword_1008E1D50);
  v50 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v51 = sub_100140278(&qword_1008E1D68);
  v55 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v41 = &v40 - v14;
  v45 = type metadata accessor for AxisGridLine();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v20 = &v40 - v19;
  v43 = &v40 - v19;
  AxisGridLine.init(centered:stroke:)();
  static UnitPoint.topLeading.getter();
  v56 = v47;
  v57 = v48;
  v58 = a4 & 0x101;
  v59 = v49;
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  static Color.gray.getter();
  v21 = Color.opacity(_:)();

  v60 = v21;
  sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
  AxisMark.foregroundStyle<A>(_:)();

  (*(v50 + 8))(v11, v9);
  v22 = v44;
  v23 = *(v44 + 16);
  v42 = v17;
  v24 = v20;
  v25 = v45;
  v23(v17, v24, v45);
  v26 = *(v55 + 16);
  v27 = v46;
  v28 = v15;
  v29 = v51;
  v26(v46, v28, v51);
  v30 = v52;
  v31 = v17;
  v32 = v25;
  v23(v52, v31, v25);
  v33 = v53;
  v34 = *(v53 + 56);
  v26(&v30[v34], v27, v29);
  v35 = v54;
  (*(v22 + 32))(v54, v30, v32);
  v36 = v55;
  (*(v55 + 32))(v35 + *(v33 + 56), &v30[v34], v29);
  v37 = *(v36 + 8);
  v37(v41, v29);
  v38 = *(v22 + 8);
  v38(v43, v32);
  v37(v27, v29);
  return (v38)(v42, v32);
}

unint64_t sub_1006360EC@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v38 = a1;
  v2 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v2 - 8);
  v36 = &v34 - v3;
  v35 = type metadata accessor for Date();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v34 = StateObject.wrappedValue.getter();
  v7 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v50[8] = v47;
  v50[9] = v48;
  v51[0] = v49[0];
  *(v51 + 9) = *(v49 + 9);
  v50[4] = v43;
  v50[5] = v44;
  v50[6] = v45;
  v50[7] = v46;
  v50[0] = v39;
  v50[1] = v40;
  v50[2] = v41;
  v50[3] = v42;
  v8 = v40;

  sub_10021D28C(v50);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  result = AxisValue.index.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < v9[2])
  {
    v11 = v35;
    (*(v4 + 16))(v6, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * result, v35);

    v12 = v34;
    v13 = *(v34 + OBJC_IVAR___CHDivingDataCalculator_axisFormatter);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v15 = [v13 stringFromDate:isa];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    (*(v4 + 8))(v6, v11);
    *&v39 = v16;
    *(&v39 + 1) = v18;
    sub_10000FCBC();
    v19 = Text.init<A>(_:)();
    v21 = v20;
    v23 = v22;
    v24 = type metadata accessor for Font.Design();
    v25 = v36;
    (*(*(v24 - 8) + 56))(v36, 1, 1, v24);
    static Font.system(size:weight:design:)();
    sub_10000EA04(v25, &qword_1008DC448);
    v26 = Text.font(_:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_10004642C(v19, v21, v23 & 1);

    v33 = v37;
    *v37 = v26;
    v33[1] = v28;
    *(v33 + 16) = v30 & 1;
    v33[3] = v32;
    return result;
  }

  __break(1u);
  return result;
}

void sub_100636500()
{
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator);
  v1 = StateObject.wrappedValue.getter();
  GeometryProxy.size.getter();
  DivingDataCalculator.chartWidth.setter(v0, 0);
}

__n128 sub_1006365C8@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  v7 = static Alignment.center.getter();
  v9 = v8;
  if (v6)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  sub_100633098(v3, v4, v10 | v5, &v18);
  v41 = v28;
  v42 = v29;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v31 = v18;
  v32 = v19;
  v44[10] = v28;
  v44[11] = v29;
  v44[6] = v24;
  v44[7] = v25;
  v44[8] = v26;
  v44[9] = v27;
  v44[2] = v20;
  v44[3] = v21;
  v44[4] = v22;
  v44[5] = v23;
  v43 = v30;
  v45 = v30;
  v44[0] = v18;
  v44[1] = v19;
  sub_10001B104(&v31, &v17, &qword_1008F7160);
  sub_10000EA04(v44, &qword_1008F7160);
  a1->n128_u64[0] = v7;
  a1->n128_u64[1] = v9;
  v11 = v42;
  a1[11] = v41;
  a1[12] = v11;
  a1[13].n128_u16[0] = v43;
  v12 = v38;
  a1[7] = v37;
  a1[8] = v12;
  v13 = v40;
  a1[9] = v39;
  a1[10] = v13;
  v14 = v34;
  a1[3] = v33;
  a1[4] = v14;
  v15 = v36;
  a1[5] = v35;
  a1[6] = v15;
  result = v32;
  a1[1] = v31;
  a1[2] = result;
  return result;
}

uint64_t sub_1006367BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F7178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100636874(uint64_t (*a1)(void, void, void))
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

void sub_1006368A4()
{
  type metadata accessor for GeometryProxy();

  sub_100636500();
}

unint64_t sub_100636940()
{
  result = qword_1008F71B0;
  if (!qword_1008F71B0)
  {
    sub_100141EEC(&qword_1008F71A8);
    sub_100141EEC(&qword_1008E1D50);
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F71B0);
  }

  return result;
}

uint64_t sub_100636AA0(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void))
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return a2(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32));
}

uint64_t sub_100636B00(uint64_t (*a1)(void, void, void))
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

unint64_t sub_100636B44()
{
  result = qword_1008F71D0;
  if (!qword_1008F71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F71D0);
  }

  return result;
}

void sub_100636B98(void *a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  [v2 BOOLForKey:v3];

  sub_100140278(&qword_1008ED0C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D6950;
  *(inited + 32) = 0x6570795464726163;
  *(inited + 40) = 0xE800000000000000;
  v5 = a1[3];
  v6 = a1[4];
  sub_1000066AC(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  LOBYTE(v6) = v10;
  isa = sub_1006375EC(v7, v8, v10).super.super.isa;
  sub_10001D4F8(v7, v9, v6);
  *(inited + 48) = isa;
  *(inited + 56) = 0x657A695364726163;
  *(inited + 64) = 0xE800000000000000;
  v12 = a1[3];
  v13 = a1[4];
  sub_1000066AC(a1, v12);
  (*(v13 + 24))(v12, v13);
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x65646E4964726163;
  *(inited + 88) = 0xE900000000000078;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000016;
  *(inited + 112) = 0x80000001007684C0;
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v14 = sub_1004C9520(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008ED0D0);
  swift_arrayDestroy();
  v15 = String._bridgeToObjectiveC()();
  sub_1003784EC(v14);

  sub_1000059F8(0, &qword_1008DB898);
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  FIActivityAnalyticsSubmissionWithPayload();
}

void sub_100636E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 BOOLForKey:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [v5 standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    [v9 setBool:1 forKey:v10];
  }

  sub_100140278(&qword_1008ED0C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006E87A0;
  *(inited + 32) = 0x6570795474696465;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x546472614377656ELL;
  *(inited + 64) = 0xEB00000000657079;
  sub_1004D9430(a2, v33);
  v12 = v34;
  if (v34)
  {
    v13 = v35;
    sub_1000066AC(v33, v34);
    v14 = (*(v13 + 16))(v12, v13);
    v12 = v15;
    v17 = v16;
    sub_100005A40(v33);
  }

  else
  {
    sub_100637A5C(v33);
    v14 = 0;
    v17 = -1;
  }

  isa = sub_1006375EC(v14, v12, v17).super.super.isa;
  sub_100158B44(v14, v12, v17);
  *(inited + 72) = isa;
  *(inited + 80) = 0x5464726143646C6FLL;
  *(inited + 88) = 0xEB00000000657079;
  sub_1004D9430(a3, v33);
  v19 = v34;
  if (v34)
  {
    v20 = v35;
    sub_1000066AC(v33, v34);
    v21 = (*(v20 + 16))(v19, v20);
    v19 = v22;
    v24 = v23;
    sub_100005A40(v33);
  }

  else
  {
    sub_100637A5C(v33);
    v21 = 0;
    v24 = -1;
  }

  v25 = sub_1006375EC(v21, v19, v24).super.super.isa;
  sub_100158B44(v21, v19, v24);
  *(inited + 96) = v25;
  *(inited + 104) = 0x536472614377656ELL;
  *(inited + 112) = 0xEB00000000657A69;
  sub_1004D9430(a2, v33);
  v26 = v34;
  if (v34)
  {
    v27 = v35;
    sub_1000066AC(v33, v34);
    (*(v27 + 24))(v26, v27);
    sub_100005A40(v33);
  }

  else
  {
    sub_100637A5C(v33);
  }

  *(inited + 120) = Int._bridgeToObjectiveC()();
  *(inited + 128) = 0x5364726143646C6FLL;
  *(inited + 136) = 0xEB00000000657A69;
  sub_1004D9430(a3, v33);
  v28 = v34;
  if (v34)
  {
    v29 = v35;
    sub_1000066AC(v33, v34);
    (*(v29 + 24))(v28, v29);
    sub_100005A40(v33);
  }

  else
  {
    sub_100637A5C(v33);
  }

  *(inited + 144) = Int._bridgeToObjectiveC()();
  *(inited + 152) = 0x65646E4964726163;
  *(inited + 160) = 0xE900000000000078;
  *(inited + 168) = Int._bridgeToObjectiveC()();
  v30 = sub_1004C9520(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008ED0D0);
  swift_arrayDestroy();
  v31 = String._bridgeToObjectiveC()();
  sub_1003784EC(v30);

  sub_1000059F8(0, &qword_1008DB898);
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  FIActivityAnalyticsSubmissionWithPayload();
}

void sub_100637300(void *a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  [v2 BOOLForKey:v3];

  sub_100140278(&qword_1008ED0C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D6BC0;
  *(inited + 32) = 0x7463617265746E69;
  *(inited + 40) = 0xEF657079546E6F69;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x6570795464726163;
  *(inited + 64) = 0xE800000000000000;
  v5 = a1[3];
  v6 = a1[4];
  sub_1000066AC(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  LOBYTE(v6) = v10;
  isa = sub_1006375EC(v7, v8, v10).super.super.isa;
  sub_10001D4F8(v7, v9, v6);
  *(inited + 72) = isa;
  *(inited + 80) = 0x657A695364726163;
  *(inited + 88) = 0xE800000000000000;
  v12 = a1[3];
  v13 = a1[4];
  sub_1000066AC(a1, v12);
  (*(v13 + 24))(v12, v13);
  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0x65646E4964726163;
  *(inited + 112) = 0xE900000000000078;
  *(inited + 120) = Int._bridgeToObjectiveC()();
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001007684C0;
  *(inited + 144) = Bool._bridgeToObjectiveC()();
  v14 = sub_1004C9520(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008ED0D0);
  swift_arrayDestroy();
  v15 = String._bridgeToObjectiveC()();
  sub_1003784EC(v14);

  sub_1000059F8(0, &qword_1008DB898);
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  FIActivityAnalyticsSubmissionWithPayload();
}

NSNumber sub_1006375EC(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a1;
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_1000059F8(0, &qword_1008E1750);
      v4 = 17;
    }

    else
    {
      sub_1000059F8(0, &qword_1008E1750);
      switch(v3)
      {
        case 1u:
          v4 = 33;
          break;
        case 2u:
          v4 = 2;
          break;
        case 3u:
          v4 = 3;
          break;
        case 4u:
          v4 = 34;
          break;
        case 5u:
          v4 = 35;
          break;
        case 6u:
          v4 = 36;
          break;
        case 7u:
          v4 = 37;
          break;
        case 8u:
          v4 = 38;
          break;
        case 9u:
          v4 = 39;
          break;
        case 0xAu:
          v4 = 40;
          break;
        case 0xBu:
          v4 = 41;
          break;
        case 0xCu:
          v4 = 42;
          break;
        case 0xDu:
          v4 = 43;
          break;
        case 0xEu:
          v4 = 44;
          break;
        case 0xFu:
          v4 = 45;
          break;
        case 0x10u:
          v4 = 46;
          break;
        case 0x11u:
          v4 = 47;
          break;
        case 0x12u:
          v4 = 48;
          break;
        case 0x13u:
          v4 = 49;
          break;
        case 0x14u:
          v4 = 50;
          break;
        case 0x15u:
          v4 = 51;
          break;
        case 0x16u:
          v4 = 52;
          break;
        case 0x17u:
          v4 = 53;
          break;
        case 0x18u:
          v4 = 54;
          break;
        case 0x19u:
          v4 = 55;
          break;
        case 0x1Au:
          v4 = 56;
          break;
        case 0x1Bu:
          v4 = 13;
          break;
        case 0x1Cu:
          v4 = 12;
          break;
        case 0x1Du:
          v4 = 14;
          break;
        case 0x1Eu:
          v4 = 9;
          break;
        case 0x1Fu:
          v4 = 8;
          break;
        case 0x20u:
          v4 = 10;
          break;
        case 0x21u:
          v4 = 11;
          break;
        case 0x22u:
          v4 = 5;
          break;
        case 0x23u:
          v4 = 4;
          break;
        case 0x24u:
          v4 = 6;
          break;
        case 0x25u:
          v4 = 7;
          break;
        case 0x26u:
          v4 = 15;
          break;
        default:
          v4 = 32;
          break;
      }
    }
  }

  else if (a3 == 2)
  {
    sub_1000059F8(0, &qword_1008E1750);
    if (v3 <= 3u)
    {
      if (v3 > 1u)
      {
        if (v3 == 2)
        {
          v4 = 24;
        }

        else
        {
          v4 = 25;
        }
      }

      else if (v3)
      {
        v4 = 23;
      }

      else
      {
        v4 = 22;
      }
    }

    else if (v3 <= 5u)
    {
      if (v3 == 4)
      {
        v4 = 26;
      }

      else
      {
        v4 = 27;
      }
    }

    else if (v3 == 6)
    {
      v4 = 28;
    }

    else if (v3 == 7)
    {
      v4 = 29;
    }

    else
    {
      v4 = 31;
    }
  }

  else if (a3 == 255)
  {
    sub_1000059F8(0, &qword_1008E1750);
    v4 = 57;
  }

  else if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 ^ 5 | a2)
      {
        sub_1000059F8(0, &qword_1008E1750);
        v4 = 59;
      }

      else
      {
        sub_1000059F8(0, &qword_1008E1750);
        v4 = 19;
      }
    }

    else if (a1 ^ 7 | a2)
    {
      if (a1 ^ 8 | a2)
      {
        sub_1000059F8(0, &qword_1008E1750);
        v4 = 60;
      }

      else
      {
        sub_1000059F8(0, &qword_1008E1750);
        v4 = 21;
      }
    }

    else
    {
      sub_1000059F8(0, &qword_1008E1750);
      v4 = 20;
    }
  }

  else if (a1 <= 1)
  {
    if (a1 | a2)
    {
      sub_1000059F8(0, &qword_1008E1750);
      v4 = 30;
    }

    else
    {
      sub_1000059F8(0, &qword_1008E1750);
      v4 = 0;
    }
  }

  else if (a1 ^ 2 | a2)
  {
    if (a1 ^ 3 | a2)
    {
      sub_1000059F8(0, &qword_1008E1750);
      v4 = 18;
    }

    else
    {
      sub_1000059F8(0, &qword_1008E1750);
      v4 = 16;
    }
  }

  else
  {
    sub_1000059F8(0, &qword_1008E1750);
    v4 = 1;
  }

  return NSNumber.init(integerLiteral:)(v4);
}

uint64_t sub_100637A5C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DCC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100637B1C(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_iconImageView) *a2];
    v7 = [v6 constraintEqualToConstant:43.0];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

void sub_100637BC4()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008F71D8 = v2;
}

char *sub_100637C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_mindfulnessSessionViewModel] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_fitnessAppContext] = 0;
  v7 = OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_iconImageView;
  v8 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = UIView.withContentMode(_:)();

  v10 = [v9 layer];
  [v10 setCornerRadius:10.0];

  [v9 setClipsToBounds:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v7] = v9;
  v11 = OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_titleLabel;
  v12 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DAF60 != -1)
  {
    swift_once();
  }

  v13 = UILabel.withFont(_:)();

  [v13 setLineBreakMode:0];
  [v13 setNumberOfLines:0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v11] = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_subtitleLabel;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell____lazy_storage___imageViewWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell____lazy_storage___imageViewHeightConstraint] = 0;
  if (a3)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v27.receiver = v4;
  v27.super_class = type metadata accessor for MindfulnessSessionDetailHeaderCell();
  v17 = objc_msgSendSuper2(&v27, "initWithStyle:reuseIdentifier:", a1, v16);

  v18 = objc_allocWithZone(UITapGestureRecognizer);
  v19 = v17;
  v20 = [v18 initWithTarget:v19 action:"navigateToCatalogItem"];
  v21 = v19;
  v22 = [v21 contentView];
  [v22 addGestureRecognizer:v20];

  v23 = [v21 contentView];
  [v23 addSubview:*&v21[OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_iconImageView]];

  v24 = [v21 contentView];
  [v24 addSubview:*&v21[OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_titleLabel]];

  v25 = [v21 contentView];
  [v25 addSubview:*&v21[OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_subtitleLabel]];

  sub_100637FF0();
  return v21;
}

void sub_100637FF0()
{
  v42 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006E8710;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_iconImageView];
  v3 = [v2 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:16.0];
  *(v1 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:16.0];
  *(v1 + 40) = v10;
  *(v1 + 48) = sub_100637AF4();
  *(v1 + 56) = sub_100637B08();
  v11 = [v2 bottomAnchor];
  v12 = [v0 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v11 constraintLessThanOrEqualToAnchor:v13 constant:-27.0];
  *(v1 + 64) = v14;
  v15 = *&v0[OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_titleLabel];
  v16 = [v15 topAnchor];
  v17 = [v0 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  *(v1 + 72) = v19;
  v20 = [v15 leadingAnchor];
  v21 = [v2 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:19.0];

  *(v1 + 80) = v22;
  v23 = [v15 trailingAnchor];
  v24 = [v0 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-16.0];
  *(v1 + 88) = v26;
  v27 = *&v0[OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_subtitleLabel];
  v28 = [v27 topAnchor];
  v29 = [v15 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:4.0];

  *(v1 + 96) = v30;
  v31 = [v27 leadingAnchor];
  v32 = [v15 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v1 + 104) = v33;
  v34 = [v27 trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:-16.0];
  *(v1 + 112) = v37;
  v38 = [v27 bottomAnchor];
  v39 = [v0 contentView];
  v40 = [v39 bottomAnchor];

  v41 = [v38 constraintLessThanOrEqualToAnchor:v40 constant:-27.0];
  *(v1 + 120) = v41;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];
}

void sub_100638590(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a3;
  v63 = a5;
  v10 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - v11;
  v13 = *(v5 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_mindfulnessSessionViewModel);
  *(v5 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_mindfulnessSessionViewModel) = a1;
  v14 = a1;

  v15 = *(v5 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_fitnessAppContext);
  *(v5 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_fitnessAppContext) = a2;
  v16 = a2;

  v17 = *(v5 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_titleLabel);
  v18 = type metadata accessor for Trainer();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_1005577DC(v14, v12);
  sub_10000EA04(v12, &unk_1008E9B20);
  [v17 setAttributedText:v19];

  v20 = *(v5 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_subtitleLabel);
  v21 = sub_100558B34();
  [v20 setAttributedText:v21];

  v22 = *(v6 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_iconImageView);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = v22;
  v25 = MindfulnessSessionViewModel.sourceRevision.getter();
  v26 = [v25 source];

  LODWORD(v25) = [v26 _hasFirstPartyBundleID];
  if (v25)
  {
    v27 = sub_1005587DC();
    [v24 setImage:{v27, v62}];
  }

  else
  {
    v28 = swift_allocObject();
    *(v28 + 16) = sub_10063BAC8;
    *(v28 + 24) = v23;

    v29 = MindfulnessSessionViewModel.sourceRevision.getter();
    v30 = [v29 source];

    LOBYTE(v29) = [v30 _isAppleWatch];
    if (v29)
    {
      v31 = sub_1005588A8(43.0);
      v32 = objc_opt_self();
      v68 = sub_1001E9CBC;
      v69 = v28;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v66 = sub_100212B08;
      v67 = &unk_1008657C8;
      v33 = _Block_copy(&aBlock);

      [v32 fetchWatchIconWithParameters:v31 completion:v33];

      v34 = v33;
    }

    else
    {
      v31 = sub_1005589F8(43.0);
      v35 = objc_opt_self();
      v68 = sub_1001E9CBC;
      v69 = v28;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v66 = sub_100212B08;
      v67 = &unk_100865778;
      v36 = _Block_copy(&aBlock);

      [v35 fetchPhoneIconWithParameters:v31 completion:v36];

      v34 = v36;
    }

    _Block_release(v34);
  }

  v37 = dispatch thunk of MindfulnessSessionViewModel.sessionType.getter();
  if ((v38 & 1) != 0 || v37 != 3)
  {
    goto LABEL_23;
  }

  v39 = MindfulnessSessionViewModel.mindfulnessSessions.getter();
  if (v39 >> 62)
  {
    v55 = v39;
    v56 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v55;
    if (v56)
    {
      goto LABEL_11;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v40 = *(v39 + 32);
  }

  v41 = v40;

  v42 = [v41 metadata];
  if (v42)
  {
    v43 = v42;
    v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v44 + 16))
    {
      v47 = sub_100066F20(v45, v46);
      v49 = v48;

      if (v49)
      {
        sub_10000B1B4(*(v44 + 56) + 32 * v47, v64);

        sub_1001AA76C(v64, &aBlock);
        *&v64[0] = 0;
        *(&v64[0] + 1) = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v50 = v64[0];
        v51 = *&v16[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v53 = v14;
        v54 = v62;
        sub_100426B60(v50, *(&v50 + 1), v51, v52, v54, v53);

        sub_100005A40(&aBlock);

        return;
      }
    }

    else
    {
    }
  }

LABEL_23:
  v57 = *&v16[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
  if (sub_100698958())
  {
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v59 = v14;
    v60 = v16;
    v61 = v63;
    sub_10000B210(a4);
    sub_1004274E4(v59, v57, v59, v58, v60, a4, v61);
    sub_1000245E0(a4);
  }
}

uint64_t sub_100638C8C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR___CHCatalogItemViewModel_title];
    v11 = objc_allocWithZone(NSMutableAttributedString);
    v12 = a1;
    v13 = [v11 initWithAttributedString:v9];
    v14 = objc_allocWithZone(NSAttributedString);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithString:v15];

    [v13 appendAttributedString:v16];
    [v13 appendAttributedString:*&v12[OBJC_IVAR___CHCatalogItemViewModel_subtitle]];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = *(Strong + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_titleLabel);

      [v19 setAttributedText:v13];
    }

    v20 = swift_allocObject();
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a3;
    sub_10000B210(a5);

    sub_100419358(v12, sub_10042914C, v20);
  }

  else
  {
    static os_log_type_t.error.getter();
    v23 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1006D1F70;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_10000A788();
    *(v24 + 32) = 0xD000000000000050;
    *(v24 + 40) = 0x800000010075CBD0;
    *(v24 + 96) = type metadata accessor for MindfulnessSessionViewModel();
    *(v24 + 104) = sub_10063BD58();
    *(v24 + 72) = a2;
    v25 = v23;
    v26 = a2;
    os_log(_:dso:log:_:_:)();
  }
}

void sub_100638F74(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = sub_100637AF4();

      [v6 setConstant:135.0];
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = sub_100637B08();

      [v9 setConstant:76.0];
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_iconImageView);

      [v12 setImage:a1];
    }
  }

  if (a2)
  {
    a2();
  }
}

void sub_1006390C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_mindfulnessSessionViewModel);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_fitnessAppContext);
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      if (sub_100698958())
      {
        sub_10063ADE0(v3, v4);
      }
    }
  }
}

id sub_1006391C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindfulnessSessionDetailHeaderCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006392B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return Promise.init(asyncOperation:)();
}

uint64_t sub_100639344(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v6);
  v4 = v6;
  v7 = 0;
  a1(&v6);

  return sub_1000A7360(v4, 0);
}

uint64_t sub_1006393D4(void *a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F2010);
  v93 = *(v4 - 8);
  v5 = *(v93 + 64);
  __chkstk_darwin(v4);
  v88 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v98 = &v72 - v7;
  __chkstk_darwin(v8);
  v91 = &v72 - v9;
  __chkstk_darwin(v10);
  v92 = &v72 - v11;
  v12 = type metadata accessor for NavigationPriority();
  v87 = *(v12 - 8);
  __chkstk_darwin(v12);
  v86 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for NavigationRoutingBehavior();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v85 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for NavigationSource();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for NavigationIntent();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v78 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NavigationAnnotation();
  __chkstk_darwin(v17 - 8);
  v77 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for NavigationRequest();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v96 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for NavigationResource();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v94 = (&v72 - v23);
  v24 = type metadata accessor for Logger();
  v74 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103[3] = sub_1000059F8(0, &qword_1008ED7C0);
  v103[4] = &off_10084F7C0;
  v103[0] = a1;
  v82 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v70 = a1;
    return sub_100005A40(v103);
  }

  v72 = v12;
  v28 = Strong;
  v73 = v4;
  v29 = a1;
  v30 = sub_100289324();
  if (!v30)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return sub_100005A40(v103);
  }

  v31 = v30;
  v32 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v31 + 16))
  {

    goto LABEL_10;
  }

  v34 = sub_100066F20(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_10000B1B4(*(v31 + 56) + 32 * v34, &v99);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v37 = v101;
  v38 = v102;
  if ([v28 navigateToSeymourTab])
  {
    static Log.default.getter();
    v39._countAndFlagsBits = 0xD000000000000022;
    v39._object = 0x80000001007514B0;
    v40._object = 0x8000000100768590;
    v40._countAndFlagsBits = 0xD000000000000019;
    Logger.trace(file:function:)(v39, v40);
    (*(v74 + 8))(v26, v24);
    v41 = *(v82 + OBJC_IVAR___CHFitnessAppContext_navigator);
    sub_100007C5C(v41 + 88, &v99);
    sub_1000066AC(&v99, v100);
    dispatch thunk of MetricSceneLifecycleReporting.reportDidSelectTab()();
    sub_100005A40(&v99);
    v42 = v94;
    *v94 = v37;
    v42[1] = v38;
    v43 = enum case for WorkoutNavigationResource.identifier(_:);
    v44 = type metadata accessor for WorkoutNavigationResource();
    (*(*(v44 - 8) + 104))(v42, v43, v44);
    v45 = v95;
    v46 = v97;
    (*(v95 + 104))(v42, enum case for NavigationResource.workout(_:), v97);
    (*(v45 + 16))(v21, v42, v46);
    static NavigationAnnotation.tabSwitch.getter();
    v47 = v78;
    *v78 = 1;
    (*(v75 + 104))(v47, enum case for NavigationIntent.push(_:), v76);
    (*(v79 + 104))(v81, enum case for NavigationSource.default(_:), v80);
    (*(v83 + 104))(v85, enum case for NavigationRoutingBehavior.default(_:), v84);
    v87[13](v86, enum case for NavigationPriority.default(_:), v72);
    NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
    sub_1000066AC((v41 + 48), *(v41 + 72));
    v48 = v98;
    AppCoordinator.navigateToRequest(_:)();
    sub_100007C5C(v103, &v99);
    v49 = swift_allocObject();
    sub_100006260(&v99, v49 + 16);
    v50 = swift_allocObject();
    *(v50 + 16) = sub_10063C0AC;
    *(v50 + 24) = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_10063C0D4;
    *(v51 + 24) = v50;
    v52 = v93;
    v53 = *(v93 + 16);
    v85 = (v93 + 16);
    v86 = v53;
    v54 = v88;
    v87 = v28;
    v55 = v73;
    (v53)(v88, v48, v73);
    v56 = *(v52 + 80);
    v84 = (v56 + 16) & ~v56;
    v57 = (v5 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v83 = *(v52 + 32);
    (v83)(v58 + ((v56 + 16) & ~v56), v54, v55);
    v59 = (v58 + v57);
    *v59 = sub_1004FF334;
    v59[1] = v51;
    v60 = v91;
    Promise.init(asyncOperation:)();
    v93 = *(v52 + 8);
    v61 = v98;
    (v93)(v98, v55);
    sub_100007C5C(v103, &v99);
    v62 = swift_allocObject();
    sub_100006260(&v99, v62 + 16);
    v63 = swift_allocObject();
    *(v63 + 16) = sub_10063C0B0;
    *(v63 + 24) = v62;
    (v86)(v61, v60, v55);
    v64 = swift_allocObject();
    (v83)(v64 + v84, v61, v55);
    v65 = (v64 + v57);
    *v65 = sub_100173EDC;
    v65[1] = v63;
    v66 = v92;
    Promise.init(asyncOperation:)();
    v67 = v93;
    (v93)(v60, v55);
    v68 = Promise.operation.getter();
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    *(v69 + 24) = 0;
    v68(sub_100173F20, v69);
    swift_unknownObjectRelease();

    v67(v66, v55);
    (*(v89 + 8))(v96, v90);
    (*(v95 + 8))(v94, v97);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_100005A40(v103);
}

uint64_t sub_10063A080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&unk_1008F2010);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v92 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v101 = &v75 - v10;
  __chkstk_darwin(v11);
  v95 = &v75 - v12;
  __chkstk_darwin(v13);
  v96 = &v75 - v14;
  v15 = type metadata accessor for NavigationPriority();
  v91 = *(v15 - 8);
  __chkstk_darwin(v15);
  v90 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for NavigationRoutingBehavior();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v89 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for NavigationSource();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v85 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for NavigationIntent();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v82 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NavigationAnnotation();
  __chkstk_darwin(v20 - 8);
  v81 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for NavigationRequest();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v99 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for NavigationResource();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v97 = (&v75 - v26);
  v27 = type metadata accessor for Logger();
  v78 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106[3] = &type metadata for SeymourWorkoutRecommendation;
  v106[4] = &off_10085FF18;
  v106[0] = a1;
  v106[1] = a2;
  v86 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return sub_100005A40(v106);
  }

  v75 = v15;
  v31 = Strong;
  v76 = v7;
  v77 = v6;
  sub_100140278(&qword_1008DD8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  swift_bridgeObjectRetain_n();
  *(inited + 32) = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v33;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v34 = sub_1002FC244(inited);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &qword_1008DD8E8);
  v35 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v34 + 16))
  {

    goto LABEL_9;
  }

  v37 = sub_100066F20(v35, v36);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_10000B1B4(*(v34 + 56) + 32 * v37, &v102);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    swift_unknownObjectRelease();
    return sub_100005A40(v106);
  }

  v40 = v104;
  v41 = v105;
  if ([v31 navigateToSeymourTab])
  {
    static Log.default.getter();
    v42._countAndFlagsBits = 0xD000000000000022;
    v42._object = 0x80000001007514B0;
    v43._object = 0x8000000100768590;
    v43._countAndFlagsBits = 0xD000000000000019;
    Logger.trace(file:function:)(v42, v43);
    (*(v78 + 8))(v29, v27);
    v44 = *(v86 + OBJC_IVAR___CHFitnessAppContext_navigator);
    sub_100007C5C(v44 + 88, &v102);
    sub_1000066AC(&v102, v103);
    dispatch thunk of MetricSceneLifecycleReporting.reportDidSelectTab()();
    sub_100005A40(&v102);
    v45 = v97;
    *v97 = v40;
    v45[1] = v41;
    v46 = enum case for WorkoutNavigationResource.identifier(_:);
    v47 = type metadata accessor for WorkoutNavigationResource();
    (*(*(v47 - 8) + 104))(v45, v46, v47);
    v48 = v98;
    v49 = v100;
    (*(v98 + 104))(v45, enum case for NavigationResource.workout(_:), v100);
    (*(v48 + 16))(v24, v45, v49);
    static NavigationAnnotation.tabSwitch.getter();
    v50 = v82;
    *v82 = 1;
    (*(v79 + 104))(v50, enum case for NavigationIntent.push(_:), v80);
    (*(v83 + 104))(v85, enum case for NavigationSource.default(_:), v84);
    (*(v87 + 104))(v89, enum case for NavigationRoutingBehavior.default(_:), v88);
    v51 = v91[13];
    v91 = v31;
    v51(v90, enum case for NavigationPriority.default(_:), v75);
    NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
    sub_1000066AC((v44 + 48), *(v44 + 72));
    v52 = v101;
    AppCoordinator.navigateToRequest(_:)();
    sub_100007C5C(v106, &v102);
    v53 = swift_allocObject();
    sub_100006260(&v102, v53 + 16);
    v54 = swift_allocObject();
    *(v54 + 16) = sub_10063C0AC;
    *(v54 + 24) = v53;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_10063C0D4;
    *(v55 + 24) = v54;
    v56 = v76;
    v57 = *(v76 + 16);
    v89 = (v76 + 16);
    v90 = v57;
    v58 = v92;
    v59 = v77;
    (v57)(v92, v52, v77);
    v60 = *(v56 + 80);
    v88 = (v60 + 16) & ~v60;
    v61 = (v8 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v87 = *(v56 + 32);
    (v87)(v62 + ((v60 + 16) & ~v60), v58, v59);
    v63 = (v62 + v61);
    *v63 = sub_1004FF334;
    v63[1] = v55;
    v64 = v95;
    Promise.init(asyncOperation:)();
    v92 = *(v56 + 8);
    v65 = v101;
    (v92)(v101, v59);
    sub_100007C5C(v106, &v102);
    v66 = swift_allocObject();
    sub_100006260(&v102, v66 + 16);
    v67 = swift_allocObject();
    *(v67 + 16) = sub_10063C0B0;
    *(v67 + 24) = v66;
    (v90)(v65, v64, v59);
    v68 = swift_allocObject();
    (v87)(v68 + v88, v65, v59);
    v69 = (v68 + v61);
    *v69 = sub_100173EDC;
    v69[1] = v67;
    v70 = v96;
    Promise.init(asyncOperation:)();
    v71 = v92;
    (v92)(v64, v59);
    v72 = Promise.operation.getter();
    v73 = swift_allocObject();
    *(v73 + 16) = 0;
    *(v73 + 24) = 0;
    v72(sub_100173F20, v73);
    swift_unknownObjectRelease();

    v71(v70, v59);
    (*(v93 + 8))(v99, v94);
    (*(v98 + 8))(v97, v100);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_100005A40(v106);
}

uint64_t sub_10063ADE0(void *a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F2010);
  v97 = *(v4 - 8);
  v5 = *(v97 + 64);
  __chkstk_darwin(v4);
  v93 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v102 = &v76 - v7;
  __chkstk_darwin(v8);
  v96 = &v76 - v9;
  __chkstk_darwin(v10);
  v12 = &v76 - v11;
  v13 = type metadata accessor for NavigationPriority();
  v92 = *(v13 - 8);
  __chkstk_darwin(v13);
  v91 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for NavigationRoutingBehavior();
  v88 = *(v89 - 1);
  __chkstk_darwin(v89);
  v90 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for NavigationSource();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v87 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for NavigationIntent();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v84 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NavigationAnnotation();
  __chkstk_darwin(v18 - 8);
  v83 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NavigationRequest();
  v94 = *(v20 - 8);
  v95 = v20;
  __chkstk_darwin(v20);
  v100 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for NavigationResource();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v98 = (&v76 - v25);
  v26 = type metadata accessor for Logger();
  v80 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107[3] = type metadata accessor for MindfulnessSessionViewModel();
  v107[4] = &off_10084F7A8;
  v107[0] = a1;
  v29 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v74 = a1;
    return sub_100005A40(v107);
  }

  v79 = v13;
  v31 = Strong;
  v32 = a1;
  v33 = MindfulnessSessionViewModel.metadata.getter();
  if (!v33)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return sub_100005A40(v107);
  }

  v34 = v33;
  v78 = v12;
  v35 = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  if (!*(v34 + 16))
  {

    goto LABEL_10;
  }

  v77 = v4;
  v37 = sub_100066F20(v35, v36);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_10000B1B4(*(v34 + 56) + 32 * v37, &v103);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v41 = v105;
  v40 = v106;
  if ([v31 navigateToSeymourTab])
  {
    static Log.default.getter();
    v42._countAndFlagsBits = 0xD000000000000022;
    v42._object = 0x80000001007514B0;
    v43._object = 0x8000000100768590;
    v43._countAndFlagsBits = 0xD000000000000019;
    v44 = v41;
    Logger.trace(file:function:)(v42, v43);
    (*(v80 + 8))(v28, v26);
    v45 = *(v29 + OBJC_IVAR___CHFitnessAppContext_navigator);
    sub_100007C5C(v45 + 88, &v103);
    sub_1000066AC(&v103, v104);
    dispatch thunk of MetricSceneLifecycleReporting.reportDidSelectTab()();
    sub_100005A40(&v103);
    v46 = v98;
    *v98 = v44;
    v46[1] = v40;
    v47 = enum case for WorkoutNavigationResource.identifier(_:);
    v48 = type metadata accessor for WorkoutNavigationResource();
    (*(*(v48 - 8) + 104))(v46, v47, v48);
    v49 = v99;
    v50 = v101;
    (*(v99 + 104))(v46, enum case for NavigationResource.workout(_:), v101);
    (*(v49 + 16))(v23, v46, v50);
    static NavigationAnnotation.tabSwitch.getter();
    v51 = v84;
    *v84 = 1;
    (*(v81 + 104))(v51, enum case for NavigationIntent.push(_:), v82);
    (*(v85 + 104))(v87, enum case for NavigationSource.default(_:), v86);
    (*(v88 + 104))(v90, enum case for NavigationRoutingBehavior.default(_:), v89);
    (*(v92 + 13))(v91, enum case for NavigationPriority.default(_:), v79);
    NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
    sub_1000066AC((v45 + 48), *(v45 + 72));
    v52 = v102;
    AppCoordinator.navigateToRequest(_:)();
    sub_100007C5C(v107, &v103);
    v53 = swift_allocObject();
    sub_100006260(&v103, v53 + 16);
    v54 = swift_allocObject();
    *(v54 + 16) = sub_10063BA54;
    *(v54 + 24) = v53;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_10063BA5C;
    *(v55 + 24) = v54;
    v56 = v97;
    v57 = *(v97 + 16);
    v91 = (v97 + 16);
    v92 = v57;
    v58 = v93;
    v59 = v77;
    v57(v93, v52, v77);
    v60 = *(v56 + 80);
    v90 = ((v60 + 16) & ~v60);
    v61 = &v90[v5 + 7] & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v89 = *(v56 + 32);
    v89(v62 + ((v60 + 16) & ~v60), v58, v59);
    v63 = (v62 + v61);
    *v63 = sub_1001CE8A4;
    v63[1] = v55;
    v64 = v96;
    Promise.init(asyncOperation:)();
    v97 = *(v56 + 8);
    v65 = v102;
    (v97)(v102, v59);
    sub_100007C5C(v107, &v103);
    v66 = swift_allocObject();
    sub_100006260(&v103, v66 + 16);
    v67 = swift_allocObject();
    *(v67 + 16) = sub_10063BAA4;
    *(v67 + 24) = v66;
    v92(v65, v64, v59);
    v68 = swift_allocObject();
    v89(&v90[v68], v65, v59);
    v69 = (v68 + v61);
    *v69 = sub_100173A14;
    v69[1] = v67;
    v70 = v78;
    Promise.init(asyncOperation:)();
    v71 = v97;
    (v97)(v64, v59);
    v72 = Promise.operation.getter();
    v73 = swift_allocObject();
    *(v73 + 16) = 0;
    *(v73 + 24) = 0;
    v72(sub_100173A1C, v73);
    swift_unknownObjectRelease();

    v71(v70, v59);
    (*(v94 + 8))(v100, v95);
    (*(v99 + 8))(v98, v101);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_100005A40(v107);
}

uint64_t sub_10063BADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100140278(&unk_1008E9B20);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Trainer();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10034C4E0(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000EA04(v10, &unk_1008E9B20);
  }

  (*(v12 + 32))(v14, v10, v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(Strong + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_titleLabel);

    (*(v12 + 16))(v8, v14, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    v19 = sub_1005577DC(a3, v8);
    sub_10000EA04(v8, &unk_1008E9B20);
    [v18 setAttributedText:v19];
  }

  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_10063BD58()
{
  result = qword_1008E0A98;
  if (!qword_1008E0A98)
  {
    type metadata accessor for MindfulnessSessionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0A98);
  }

  return result;
}

void sub_10063BDB0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_mindfulnessSessionViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_fitnessAppContext) = 0;
  v2 = OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_iconImageView;
  v3 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = UIView.withContentMode(_:)();

  v5 = [v4 layer];
  [v5 setCornerRadius:10.0];

  [v4 setClipsToBounds:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v4;
  v6 = OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_titleLabel;
  v7 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DAF60 != -1)
  {
    swift_once();
  }

  v8 = UILabel.withFont(_:)();

  [v8 setLineBreakMode:0];
  [v8 setNumberOfLines:0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v6) = v8;
  v9 = OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell_subtitleLabel;
  v10 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell____lazy_storage___imageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp34MindfulnessSessionDetailHeaderCell____lazy_storage___imageViewHeightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10063BFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100140278(&unk_1008F2010) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

double sub_10063C0EC(void (*a1)(double *__return_ptr, double *, unint64_t), double a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(type metadata accessor for DateInterval() - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = *(v9 + 72);
    a1(&v15, &v16, a4 + v10);
    if (!v4)
    {
      for (i = a4 + v11 + v10; ; i = v13)
      {
        a2 = v15;
        v16 = v15;
        if (!--v6)
        {
          break;
        }

        v13 = i + v11;
        (a1)(&v15, &v16);
      }
    }
  }

  return a2;
}

uint64_t sub_10063C1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&unk_1008F73A0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(a1 + 32);
  if (a2)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v9, v15, 1, v16);

  v12(v11, v9);

  sub_1001F145C(v9);
  return sub_1001F145C(v11);
}

void sub_10063C484()
{
  v1 = v0;
  v2 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for WorkoutDetailedMetricsViewController();
  v46.receiver = v0;
  v46.super_class = v5;
  objc_msgSendSuper2(&v46, "viewDidLoad");
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  [v7 setBackgroundColor:v9];

  v10 = [v1 navigationItem];
  v11 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"close"];
  [v10 setRightBarButtonItem:v11];

  v12 = [v1 navigationItem];
  v13 = [objc_opt_self() mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v12 setTitle:v15];
  if (v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_isRouteable] == 1)
  {
    v16 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView;
    [*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView] setDelegate:v1];
    [*&v1[v16] _setEdgeInsets:{12.0, 12.0, 60.0, 12.0}];
    [*&v1[v16] setShowsScale:1];
    [*&v1[v16] setShowsCompass:0];
    [*&v1[v16] setShowsAttribution:0];
    [*&v1[v16] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v1[v16] setMapType:5];
    v17 = [*&v1[v16] layer];
    [v17 setCornerRadius:12.0];

    v45 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topView;
    [*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topView] addSubview:*&v1[v16]];
    v18 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapGradientView;
    v19 = *&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapGradientView];
    sub_100140278(&unk_1008E4E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D68D0;
    v21 = v19;
    v22 = [v8 blackColor];
    v23 = [v22 colorWithAlphaComponent:0.0];

    *(inited + 32) = v23;
    v24 = [v8 blackColor];
    v25 = [v24 colorWithAlphaComponent:0.5];

    *(inited + 40) = v25;
    sub_1004620E4(inited);

    v26 = *&v1[v18];
    sub_100462330(&off_100846438);

    [*&v1[v18] setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [*&v1[v18] layer];
    [v27 setCornerRadius:12.0];

    [*&v1[v45] addSubview:*&v1[v18]];
  }

  *(*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartProperties] + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8) = &off_100865A98;
  swift_unknownObjectWeakAssign();
  sub_10063E78C(0);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
  sub_10063DDC0(v4);
  sub_1001F145C(v4);
  v29 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topView;
  [*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topView] addSubview:*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartHeaderView]];
  v30 = *&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_durationControl];
  if (v30)
  {
    v31 = v30;
    [v31 addTarget:v1 action:"durationChanged:" forControlEvents:4096];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v1[v29] addSubview:v31];
  }

  [*&v1[v29] setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [v1 view];
  if (!v32)
  {
    goto LABEL_15;
  }

  v33 = v32;
  [v32 addSubview:*&v1[v29]];

  v34 = *&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartsController];
  v35 = [v34 view];
  if (!v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = v35;
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = [v34 view];
  if (!v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v38 = v37;
  v39 = [v8 clearColor];
  [v38 setBackgroundColor:v39];

  v40 = [v1 view];
  if (!v40)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v41 = v40;
  v42 = [v34 view];
  if (v42)
  {
    v43 = v42;
    [v41 addSubview:v42];

    [v1 addChildViewController:v34];
    [v34 didMoveToParentViewController:v1];
    sub_10063CE68();
    sub_10063EC54();
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_10063CBC8(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for WorkoutDetailedMetricsViewController();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v3 configureWithOpaqueBackground];
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor:v5];

    v6 = [v4 systemBackgroundColor];
    [v3 setShadowColor:v6];

    v7 = [v1 navigationItem];
    [v7 setScrollEdgeAppearance:v3];

    v8 = [v1 tabBarController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 tabBar];

      v11 = [objc_allocWithZone(UITabBarAppearance) init];
      [v10 setScrollEdgeAppearance:v11];
    }
  }
}

void sub_10063CE68()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v139.origin.x = v4;
  v139.origin.y = v6;
  v139.size.width = v8;
  v139.size.height = v10;
  Width = CGRectGetWidth(v139);
  sub_100140278(&unk_1008E4E20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006D68C0;
  v13 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topView;
  v14 = [*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topView] topAnchor];
  v15 = [v1 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v15 safeAreaLayoutGuide];

  v18 = [v17 topAnchor];
  v19 = [v14 constraintEqualToAnchor:v18];

  *(v12 + 32) = v19;
  v20 = [*&v1[v13] leadingAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21;
  v23 = [v21 safeAreaLayoutGuide];

  v24 = [v23 leadingAnchor];
  v25 = [v20 constraintEqualToAnchor:v24 constant:16.0];

  *(v12 + 40) = v25;
  v26 = [*&v1[v13] trailingAnchor];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v27;
  v29 = (Width + -32.0) * 0.7;
  v30 = objc_opt_self();
  v31 = [v28 safeAreaLayoutGuide];

  v32 = [v31 trailingAnchor];
  v33 = [v26 constraintEqualToAnchor:v32 constant:-16.0];

  *(v12 + 48) = v33;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:isa];

  v35 = [*&v1[v13] heightAnchor];
  v36 = [v35 constraintEqualToConstant:0.0];

  v37 = *&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topViewHiddenConstraint];
  *&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topViewHiddenConstraint] = v36;

  if (v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_isRouteable] == 1)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1006EE9A0;
    v39 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView;
    v40 = [*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView] topAnchor];
    v41 = [*&v1[v13] topAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    *(v38 + 32) = v42;
    v43 = [*&v1[v39] leadingAnchor];
    v44 = [*&v1[v13] leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v38 + 40) = v45;
    v46 = [*&v1[v39] trailingAnchor];
    v47 = [*&v1[v13] trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v38 + 48) = v48;
    v49 = [*&v1[v39] heightAnchor];
    v50 = [v49 constraintEqualToConstant:v29];

    *(v38 + 56) = v50;
    v51 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapGradientView;
    v52 = [*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapGradientView] topAnchor];
    v53 = [*&v1[v39] topAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    *(v38 + 64) = v54;
    v55 = [*&v1[v51] leadingAnchor];
    v56 = [*&v1[v39] leadingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];

    *(v38 + 72) = v57;
    v58 = [*&v1[v51] trailingAnchor];
    v59 = [*&v1[v39] trailingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    *(v38 + 80) = v60;
    v61 = [*&v1[v51] bottomAnchor];
    v62 = [*&v1[v39] bottomAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    *(v38 + 88) = v63;
    v64 = *&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartHeaderView];
    v65 = [v64 bottomAnchor];
    v66 = [*&v1[v39] bottomAnchor];
    v67 = [v65 constraintEqualToAnchor:v66 constant:-6.0];

    *(v38 + 96) = v67;
    v68 = [v64 leadingAnchor];
    v69 = [*&v1[v13] leadingAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:16.0];

    *(v38 + 104) = v70;
    v71 = (v38 + 112);
    v72 = [v64 trailingAnchor];
    v73 = [*&v1[v13] trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73 constant:-16.0];
  }

  else
  {
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1006D68C0;
    v64 = *&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartHeaderView];
    v76 = [v64 topAnchor];
    v77 = [*&v1[v13] topAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];

    *(v75 + 32) = v78;
    v79 = [v64 leadingAnchor];
    v80 = [*&v1[v13] leadingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];

    *(v75 + 40) = v81;
    v71 = (v75 + 48);
    v72 = [v64 trailingAnchor];
    v73 = [*&v1[v13] trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];
  }

  v82 = v74;

  *v71 = v82;
  v83 = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:v83];

  v84 = *&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_durationControl];
  if (v84)
  {
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1006D5300;
    v86 = v84;
    v87 = [v86 topAnchor];
    v88 = [v64 bottomAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:22.0];

    v90 = NSLayoutConstraint.priority(_:)();
    *(v85 + 32) = v90;
    v91 = [v86 leadingAnchor];
    v92 = [*&v1[v13] leadingAnchor];
    v93 = [v91 constraintEqualToAnchor:v92];

    *(v85 + 40) = v93;
    v94 = [v86 trailingAnchor];
    v95 = [*&v1[v13] trailingAnchor];
    v96 = [v94 constraintEqualToAnchor:v95];

    *(v85 + 48) = v96;
    v97 = [v86 bottomAnchor];

    v98 = [*&v1[v13] bottomAnchor];
    v99 = [v97 constraintEqualToAnchor:v98];

    *(v85 + 56) = v99;
    v100.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 activateConstraints:v100.super.isa];
  }

  else
  {
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1006D4E70;
    v102 = [*&v1[v13] bottomAnchor];
    v103 = [v64 bottomAnchor];
    v104 = [v102 constraintEqualToAnchor:v103];

    *(v101 + 32) = v104;
    v100.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 activateConstraints:v100.super.isa];
  }

  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1006D9810;
  v106 = *&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartsController];
  v107 = [v106 view];
  if (!v107)
  {
    goto LABEL_24;
  }

  v108 = v107;
  v109 = [v107 topAnchor];

  v110 = [*&v1[v13] bottomAnchor];
  v111 = [v109 constraintEqualToAnchor:v110 constant:16.0];

  *(v105 + 32) = v111;
  v112 = [v106 view];
  if (!v112)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v113 = v112;
  v114 = [v112 leadingAnchor];

  v115 = [v1 view];
  if (!v115)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v116 = v115;
  v117 = [v115 leadingAnchor];

  v118 = [v114 constraintEqualToAnchor:v117];
  *(v105 + 40) = v118;
  v119 = [v106 view];
  if (!v119)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v120 = v119;
  v121 = [v119 trailingAnchor];

  v122 = [v1 view];
  if (!v122)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v123 = v122;
  v124 = [v122 trailingAnchor];

  v125 = [v121 constraintEqualToAnchor:v124];
  *(v105 + 48) = v125;
  v126 = [v106 view];
  if (!v126)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v127 = v126;
  v128 = [v126 bottomAnchor];

  v129 = [v1 view];
  if (!v129)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v130 = v129;
  v131 = [v129 bottomAnchor];

  v132 = [v128 constraintEqualToAnchor:v131];
  *(v105 + 56) = v132;
  v133 = [v106 view];
  if (!v133)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v134 = v133;
  v135 = [v133 heightAnchor];

  v136 = [v135 constraintGreaterThanOrEqualToConstant:v29];
  *(v105 + 64) = v136;
  v137 = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:v137];
}

void sub_10063DDC0(uint64_t a1)
{
  v3 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - v12;
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  sub_1001CE7A0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1001F145C(v5);
    v16 = *(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartProperties);
    v17 = *(v16 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration);
    v18 = *(v16 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) * *(v16 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
    if (v17 < v18 || v17 - v18 < 0.01)
    {
      v38 = *(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartHeaderView);
      (*(v7 + 16))(v13, v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_endDate, v6);
      sub_10063E33C(v13);
      (*(v7 + 8))(v13, v6);
      v39 = *(v38 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_timeLabel);
      v40 = String._bridgeToObjectiveC()();

      [v39 setText:v40];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v19 = v1;
      sub_10063E33C(v13);
      v42 = v20;
      v22 = v21;
      v23 = *(v7 + 8);
      v23(v13, v6);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      Date.addingTimeInterval(_:)();

      v23(v10, v6);
      sub_10063E33C(v13);
      v25 = v24;
      v27 = v26;
      v23(v13, v6);
      v28 = [objc_opt_self() mainBundle];
      v29 = String._bridgeToObjectiveC()();
      v30 = [v28 localizedStringForKey:v29 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1006D1F70;
      *(v31 + 56) = &type metadata for String;
      v32 = sub_10000A788();
      *(v31 + 32) = v42;
      *(v31 + 40) = v22;
      *(v31 + 96) = &type metadata for String;
      *(v31 + 104) = v32;
      *(v31 + 64) = v32;
      *(v31 + 72) = v25;
      *(v31 + 80) = v27;
      String.init(format:_:)();

      v33 = *(*(v19 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartHeaderView) + OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_timeLabel);
      v34 = String._bridgeToObjectiveC()();

      [v33 setText:v34];
    }
  }

  else
  {
    (*(v7 + 32))(v15, v5, v6);
    v35 = *(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartHeaderView);
    sub_10063E33C(v15);
    v36 = *(v35 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_timeLabel);
    v37 = String._bridgeToObjectiveC()();

    [v36 setText:v37];

    (*(v7 + 8))(v15, v6);
  }
}

void sub_10063E33C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workoutActivity);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = _swiftEmptyArrayStorage;
    v20 = sub_100642D5C;
    v21 = v4;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v5 = sub_100640DAC;
    v6 = &unk_100865CC0;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workout);
    v4 = swift_allocObject();
    *(v4 + 16) = _swiftEmptyArrayStorage;
    v20 = sub_10025F110;
    v21 = v4;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v5 = sub_10063C1F4;
    v6 = &unk_100865CE8;
  }

  v18 = v5;
  v19 = v6;
  v7 = _Block_copy(&aBlock);
  v8 = v3;

  [v8 _enumerateActiveTimePeriods:v7];

  _Block_release(v7);
  swift_beginAccess();
  v9 = *(v4 + 16);

  __chkstk_darwin(v10);
  v15[2] = a1;
  v11 = floor(sub_10063C0EC(sub_100642D64, 0.0, v15, v9));
  if (v11 < 3600.0)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  v13 = [*(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_formattingManager) fitnessUIFormattingManager];
  v14 = [v13 stringWithDuration:v12 durationFormat:v11];

  if (v14)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10063E5F4@<X0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  DateInterval.end.getter();
  v9 = Date.compare(_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9 == 1)
  {
    result = DateInterval.duration.getter();
    v8 = v8 + v12;
  }

  else
  {
    DateInterval.start.getter();
    v13 = Date.compare(_:)();
    result = (v10)(v7, v4);
    if (v13 == 1)
    {
      DateInterval.start.getter();
      Date.timeIntervalSince(_:)();
      v15 = v14;
      result = (v10)(v7, v4);
      v8 = v8 + v15;
    }
  }

  *a2 = v8;
  return result;
}

void sub_10063E78C(void *a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_supportsDistance) != 1)
  {
    return;
  }

  v4 = *(v2 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workoutActivity);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 distanceType];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 statisticsForType:v6];
      if (v8)
      {
        v9 = v8;
        v10 = a1;
        if (!a1)
        {
          v10 = [v9 sumQuantity];
        }

        v41 = v10;
        v11 = v10;
        v12 = a1;
        v39 = [v5 fiui_activityType];

        goto LABEL_14;
      }
    }

    else
    {
      v7 = v5;
    }
  }

  v13 = a1;
  if (!a1)
  {
    v13 = [*(v2 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workout) totalDistance];
  }

  v14 = *(v2 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workout);
  v41 = v13;
  v15 = v13;
  v16 = a1;
  v39 = [v14 fiui_activityType];
  if (!v39)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_14:
  if (v41)
  {
    sub_1000059F8(0, &qword_1008F73C0);
    v17 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
    v18 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    v19 = [v17 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v18];

    if (v19)
    {
      v20 = FIUIDistanceTypeForActivityType();
      v42 = 1;
      v21 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_formattingManager;
      v22 = [*(v2 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_formattingManager) fitnessUIFormattingManager];
      v23 = [objc_opt_self() meterUnit];
      [v41 doubleValueForUnit:v23];
      v25 = v24;

      v26 = [v22 localizedNaturalScaleStringWithDistanceInMeters:v20 distanceType:0 unitStyle:&v42 usedUnit:v25];
      if (v26)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      v31 = [*(v2 + v21) fitnessUIFormattingManager];
      v32 = [v31 localizedShortUnitStringForDistanceUnit:v42];

      if (v32)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000FCBC();
        v33 = StringProtocol.localizedUppercase.getter();
        v35 = v34;

        if (v29)
        {
          v36 = v27;
        }

        else
        {
          v36 = 11565;
        }

        if (v29)
        {
          v37 = v29;
        }

        else
        {
          v37 = 0xE200000000000000;
        }

        v38 = sub_1004C154C(v36, v37, v33, v35, v19);

        [*(*(v2 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartHeaderView) + OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_distanceLabel) setAttributedText:v38];

        return;
      }

LABEL_34:
      __break(1u);
      return;
    }

    v30 = v41;
  }

  else
  {
    v30 = v39;
  }
}

void sub_10063EC54()
{
  v5 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_locationReadings;
  v6 = [*(v0 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_locationReadings) allValidLocations];
  v7 = sub_1000059F8(0, &qword_1008E55D0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_30;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v2 = &selRef_initWithLayer_;
  [v10 coordinate];
  v3 = v11;
  v4 = v12;

  v13 = [*(v0 + v5) allValidLocations];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
LABEL_8:
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (!v16)
      {
        if ((v14 & 0xC000000000000001) == 0)
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v17 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v18 = *(v14 + 8 * v17 + 32);
            goto LABEL_13;
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_35:
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
        v19 = v18;

        [v19 v2[122]];
        v21 = v20;
        v23 = v22;

        v43 = [objc_allocWithZone(type metadata accessor for WorkoutStartLocationAnnotation()) init];
        [v43 setCoordinate:{v3, v4}];
        v1 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView;
        [*(v0 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView) addAnnotation:v43];
        if ([*(v0 + v5) count] == 1)
        {
          v45.latitude = v3;
          v45.longitude = v4;
          v24 = MKMapPointForCoordinate(v45);
          v25 = *(v0 + v1);
          [v25 setVisibleMapRect:{v24.x, v24.y, 1500.0, 1500.0}];

          v26 = *(v0 + v1);
          [v26 setCenterCoordinate:{v3, v4}];

LABEL_41:

          return;
        }

        v27 = [objc_allocWithZone(type metadata accessor for WorkoutEndLocationAnnotation()) init];
        [v27 setCoordinate:{v21, v23}];
        v42 = v27;
        [*(v0 + v1) addAnnotation:v27];
        v28 = [*(v0 + v5) allValidLocations];
        v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v7 >> 62))
        {
          v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v29)
          {
LABEL_17:
            v40 = v1;
            v41 = v0;
            sub_10018609C(0, v29 & ~(v29 >> 63), 0);
            if (v29 < 0)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v29; ++i)
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v31 = *(v7 + 8 * i + 32);
              }

              v32 = v31;
              [v31 v2[122]];
              v33 = MKMapPointForCoordinate(v46);

              v35 = _swiftEmptyArrayStorage[2];
              v34 = _swiftEmptyArrayStorage[3];
              if (v35 >= v34 >> 1)
              {
                sub_10018609C((v34 > 1), v35 + 1, 1);
                v0 = v41;
              }

              _swiftEmptyArrayStorage[2] = v35 + 1;
              *&_swiftEmptyArrayStorage[2 * v35 + 4] = v33;
            }

            v1 = v40;
            goto LABEL_40;
          }

LABEL_39:

LABEL_40:
          v36 = [objc_opt_self() polylineWithPoints:&_swiftEmptyArrayStorage[4] count:{objc_msgSend(*(v0 + v5), "count")}];

          v37 = *(v0 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapRoutePolyline);
          *(v0 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapRoutePolyline) = v36;
          v38 = v36;

          [*(v0 + v1) addOverlay:v38 level:1];
          v39 = *(v0 + v1);
          [v38 boundingMapRect];
          [v39 setVisibleMapRect:1 animated:?];

          goto LABEL_41;
        }

LABEL_38:
        v29 = _CocoaArrayWrapper.endIndex.getter();
        if (v29)
        {
          goto LABEL_17;
        }

        goto LABEL_39;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_8;
    }
  }

LABEL_30:
}

void sub_10063F19C(double a1, double a2)
{
  v3 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_scrubbedAnnotation;
  v4 = *(v2 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_scrubbedAnnotation);
  if (v4)
  {

    [v4 setCoordinate:?];
  }

  else
  {
    v7 = type metadata accessor for WorkoutScrubbedLocationAnnotation();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR____TtC10FitnessApp33WorkoutScrubbedLocationAnnotation_coordinate];
    *v9 = a1;
    v9[1] = a2;
    v13.receiver = v8;
    v13.super_class = v7;
    v10 = objc_msgSendSuper2(&v13, "init");
    v11 = *(v2 + v3);
    *(v2 + v3) = v10;
    v12 = v10;

    [*(v2 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView) addAnnotation:v12];
  }
}

uint64_t sub_10063F280(void *a1)
{
  v3 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for WorkoutChartGroupView();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v23 - v11;
  v13 = [a1 selectedSegmentIndex];
  v14 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_durationOptions;
  swift_beginAccess();
  if (v13 == (*(*(v1 + v14) + 16) - 1))
  {
    dispatch thunk of UIHostingController.rootView.getter();
    v15 = *&v12[*(v6 + 24) + 8];
    sub_1002E552C(1, 10.0, 90.0);
    v16 = &unk_1007020E8;
  }

  else
  {
    v17 = [a1 selectedSegmentIndex];
    dispatch thunk of UIHostingController.rootView.getter();
    v15 = *&v12[*(v6 + 24) + 8];
    if (v17)
    {
      sub_1002E552C(0, 60.0, 60.0);
      v16 = &unk_1007020D8;
    }

    else
    {
      sub_1002E552C(0, 15.0, 60.0);
      v16 = &unk_1007020E0;
    }
  }

  *(*&v12[*(v6 + 28) + 8] + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_chartProperties) = v15;

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_100642850(v12, v8);
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  v20 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = &protocol witness table for MainActor;
  sub_1006428B4(v8, v21 + v20);
  sub_10026E198(0, 0, v5, v16, v21);

  return sub_100642A08(v12);
}

id sub_10063F664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailedMetricsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutDetailedMetricsViewController()
{
  result = qword_1008F7328;
  if (!qword_1008F7328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10063F8CC()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1001F3724();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10063FAC0(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v36 - v8;
  v10 = sub_100140278(&unk_1008F73A0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  sub_1001CE7A0(a1, &v36 - v14);
  v16 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_selectedDate;
  swift_beginAccess();
  sub_100169198(v15, &v1[v16]);
  swift_endAccess();
  [*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_feedback] selectionChanged];
  sub_1001CE7A0(a1, v13);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    sub_1001F145C(v13);
    v17 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_scrubbedAnnotation;
    if (*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_scrubbedAnnotation])
    {
      [*&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView] removeAnnotation:?];
      v18 = *&v1[v17];
      *&v1[v17] = 0;
    }

    sub_10063E78C(0);
    (*(v4 + 56))(v15, 1, 1, v3);
    sub_10063DDC0(v15);
    return sub_1001F145C(v15);
  }

  else
  {
    v37 = *(v4 + 32);
    v37(v9, v13, v3);
    v20 = *(v4 + 16);
    v20(v15, v9, v3);
    (*(v4 + 56))(v15, 0, 1, v3);
    sub_10063DDC0(v15);
    sub_1001F145C(v15);
    if (v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_supportsDistance] == 1)
    {
      v21 = *&v1[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_distanceQueue];
      [v21 cancelAllOperations];
      v20(v7, v9, v3);
      v22 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v1;
      v37((v23 + v22), v7, v3);
      aBlock[4] = sub_100640C94;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_100865AE0;
      v24 = _Block_copy(aBlock);
      v25 = v1;

      [v21 addOperationWithBlock:v24];
      _Block_release(v24);
      v26 = *(*&v25[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartProperties] + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration) * 0.5;
      v27 = *&v25[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_locationReadings];
      sub_10065CEC0(v26);
      v29 = v28;

      if (v29)
      {
        [v29 coordinate];
        v31 = v30;
        v33 = v32;

        sub_10063F19C(v31, v33);
      }

      else
      {
        v34 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_scrubbedAnnotation;
        if (*&v25[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_scrubbedAnnotation])
        {
          [*&v25[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView] removeAnnotation:?];
          v35 = *&v25[v34];
          *&v25[v34] = 0;
        }
      }
    }

    return (*(v4 + 8))(v9, v3);
  }
}

void sub_10063FF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = *(a1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_dataCalculator);
  v8 = *(a1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workout);
  v18 = *(a1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workoutActivity);
  v9 = v7;
  v10 = v8;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v5 + 32))(v14 + v13, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_100640CF8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100212B08;
  aBlock[3] = &unk_100865B58;
  v15 = _Block_copy(aBlock);

  v16 = v18;
  [v9 totalDistanceForWorkout:v10 workoutActivity:v18 atDate:isa completion:v15];
  _Block_release(v15);
}

void sub_1006401BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = a2;
    v20 = v18;
    if (v19)
    {
      v47 = v18;
      v48 = v7;
      swift_errorRetain();
      v21 = static os_log_type_t.error.getter();
      v22 = HKLogWorkouts;
      (*(v14 + 16))(v16, a4, v13);
      v46 = v21;
      if (os_log_type_enabled(v22, v21))
      {
        v45 = v22;
        v23 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock = v44;
        *v23 = 136315394;
        v24 = Date.debugDescription.getter();
        v26 = v25;
        (*(v14 + 8))(v16, v13);
        v27 = sub_10000AFDC(v24, v26, &aBlock);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2080;
        swift_getErrorValue();
        v28 = Error.localizedDescription.getter();
        v30 = sub_10000AFDC(v28, v29, &aBlock);

        *(v23 + 14) = v30;
        v31 = v45;
        _os_log_impl(&_mh_execute_header, v45, v46, "Error receiving distance for %s: %s", v23, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        (*(v14 + 8))(v16, v13);
      }

      v20 = v47;
      sub_1000059F8(0, &qword_1008E3FD0);
      v32 = static OS_dispatch_queue.main.getter();
      v33 = swift_allocObject();
      *(v33 + 16) = v20;
      v56 = sub_100640DA4;
      v57 = v33;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1000449A8;
      v55 = &unk_100865BF8;
      v34 = _Block_copy(&aBlock);
      v35 = v20;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000261C4();
      sub_100140278(&unk_1008E7F50);
      sub_10002621C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v34);

      v7 = v48;
      (*(v48 + 8))(v9, v6);
      (*(v50 + 8))(v12, v51);
    }

    v36 = v49;
    if (v49)
    {
      sub_1000059F8(0, &qword_1008E3FD0);
      v37 = v7;
      v38 = v36;
      v39 = static OS_dispatch_queue.main.getter();
      v40 = swift_allocObject();
      *(v40 + 16) = v20;
      *(v40 + 24) = v38;
      v56 = sub_100640D7C;
      v57 = v40;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1000449A8;
      v55 = &unk_100865BA8;
      v41 = _Block_copy(&aBlock);
      v42 = v20;
      v43 = v38;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000261C4();
      sub_100140278(&unk_1008E7F50);
      sub_10002621C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v41);

      (*(v37 + 8))(v9, v6);
      (*(v50 + 8))(v12, v51);
    }

    else
    {
    }
  }
}

void sub_10064084C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartHeaderView);
  v2 = objc_allocWithZone(NSAttributedString);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithString:v3];

  [*(v1 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartHeaderView_distanceLabel) setAttributedText:v4];
}

uint64_t sub_1006408F0(void *a1)
{
  v3 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_locationReadings);
  *(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_locationReadings) = a1;
  v14 = a1;

  v15 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView;
  v16 = *(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView);
  isa = [v16 annotations];
  if (!isa)
  {
    sub_100140278(&qword_1008E7568);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v16 removeAnnotations:isa];

  v18 = *(v1 + v15);
  v19 = [v18 overlays];
  if (!v19)
  {
    sub_100140278(&unk_1008E7570);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v18 removeOverlays:v19];

  sub_10063EC54();
  v20 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_selectedDate;
  swift_beginAccess();
  sub_1001CE7A0(v1 + v20, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1001F145C(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  (*(v10 + 16))(v5, v12, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  sub_10063FAC0(v5);
  sub_1001F145C(v5);
  return (*(v10 + 8))(v12, v9);
}

void sub_100640C94()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10063FF80(v2, v3);
}

void sub_100640CF8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1006401BC(a1, a2, v6, v7);
}

uint64_t sub_100640DAC(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *(a1 + 32);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v9(v8, v6);

  v10 = *(v3 + 8);
  v10(v6, v2);
  return (v10)(v8, v2);
}

id sub_100640EF4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v178 = a5;
  v10 = type metadata accessor for WorkoutChartGroupView();
  __chkstk_darwin(v10 - 8);
  v157 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v158 = (&v155 - v13);
  v14 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v14 - 8);
  v172 = &v155 - v15;
  v177 = sub_100140278(&unk_1008F73D0);
  v170 = *(v177 - 8);
  __chkstk_darwin(v177);
  v167 = &v155 - v16;
  v17 = type metadata accessor for Date();
  __chkstk_darwin(v17);
  v169 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v168 = &v155 - v20;
  __chkstk_darwin(v21);
  v179 = &v155 - v22;
  __chkstk_darwin(v23);
  v174 = &v155 - v24;
  v26 = __chkstk_darwin(v25);
  v28 = &v155 - v27;
  v29 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workoutActivity;
  *&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workoutActivity] = 0;
  v180 = v30;
  v31 = v30[7];
  v171 = v32;
  v175 = v31;
  v176 = v30 + 7;
  (v31)(&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_selectedDate], 1, 1, v26);
  v33 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topView;
  *&v5[v33] = [objc_allocWithZone(UIView) init];
  *&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topViewHiddenConstraint] = 0;
  v34 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView;
  *&v5[v34] = [objc_allocWithZone(MKMapView) init];
  v35 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapGradientView;
  type metadata accessor for WorkoutGradientView();
  *&v5[v35] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_scrubbedAnnotation] = 0;
  *&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapRoutePolyline] = 0;
  v36 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_feedback;
  *&v5[v36] = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  v162 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_durationOptions;
  *&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_durationOptions] = _swiftEmptyArrayStorage;
  v37 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartHeaderView;
  v38 = [objc_allocWithZone(type metadata accessor for WorkoutChartHeaderView()) init];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v37] = v38;
  v39 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_distanceQueue;
  v40 = [objc_allocWithZone(NSOperationQueue) init];
  [v40 setQualityOfService:25];
  [v40 setMaxConcurrentOperationCount:1];

  *&v5[v39] = v40;
  *&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_dataCalculator] = a3;
  *&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_formattingManager] = a4;
  v41 = v178;
  *&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_locationReadings] = v178;
  *&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workout] = a1;
  v42 = *&v5[v29];
  *&v5[v29] = a2;
  v43 = a3;
  v44 = v5;
  v45 = a4;
  v165 = v41;
  v46 = a1;
  v178 = a2;
  v47 = a2;

  *&v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_downhillRunDateIntervals] = sub_1001454C8();
  v48 = [v46 isFirstPartyWorkout];
  v49 = &selRef_supportsDistanceForWorkout_workoutActivity_;
  if (!v48)
  {
    v49 = &selRef_hasDistanceForWorkout_workoutActivity_;
  }

  v50 = *v49;
  v166 = v45;
  v173 = v47;
  v51 = [v45 v50];
  v5[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_supportsDistance] = v51;
  v52 = [v46 fiui_activityType];
  if (!v52)
  {
    sub_1000059F8(0, &qword_1008E1768);
    v52 = static FIUIWorkoutActivityType.other.getter();
  }

  [v52 effectiveTypeIdentifier];
  [v52 isIndoor];
  [v52 swimmingLocationType];
  IsRouteable = _HKWorkoutActivityTypeIsRouteable();
  v54 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_isRouteable;
  v44[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_isRouteable] = IsRouteable;
  if ([v46 wasUserEntered])
  {
    v44[v54] = 0;
  }

  v55 = v180;
  v181 = v44;
  v156 = v52;
  v164 = v46;
  if (v178)
  {
    v56 = v173;
    v57 = [v56 endDate];
    if (v57)
    {
      v58 = v57;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = [v56 startDate];
      v60 = v174;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = v55[4];
      v62 = v171;
      v63 = v28;
      v64 = v60;
      v65 = v181;
      v61(&v181[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_startDate], v60, v171);
      v61(&v65[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_endDate], v63, v62);
      goto LABEL_12;
    }
  }

  v66 = v46;
  v67 = [v66 startDate];
  v64 = v174;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = v180[4];
  v62 = v171;
  v68(&v181[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_startDate], v64, v171);
  v69 = [v66 endDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v68(&v181[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_endDate], v64, v62);
  v55 = v180;
  v65 = v181;
LABEL_12:
  v70 = v55[2];
  v160 = &v65[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_endDate];
  v70(v64);
  v71 = v179;
  v159 = &v65[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_startDate];
  v163 = v55 + 2;
  v161 = v70;
  v70(v179);
  Date.timeIntervalSince(_:)();
  v73 = v72;
  v74 = v55[1];
  v74(v71, v62);
  v180 = v55 + 1;
  v171 = v74;
  v74(v64, v62);
  v75 = v162;
  if (v73 > 1350.0)
  {
    v76 = [objc_opt_self() mainBundle];
    v77 = String._bridgeToObjectiveC()();
    v78 = [v76 localizedStringForKey:v77 value:0 table:0];

    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    swift_beginAccess();
    v82 = *&v65[v75];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v65[v75] = v82;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v82 = sub_100042744(0, *(v82 + 2) + 1, 1, v82);
      *&v65[v75] = v82;
    }

    v85 = *(v82 + 2);
    v84 = *(v82 + 3);
    if (v85 >= v84 >> 1)
    {
      v82 = sub_100042744((v84 > 1), v85 + 1, 1, v82);
    }

    *(v82 + 2) = v85 + 1;
    v86 = &v82[16 * v85];
    *(v86 + 4) = v79;
    *(v86 + 5) = v81;
    *&v65[v75] = v82;
    swift_endAccess();
  }

  if (v73 > 5400.0)
  {
    v87 = [objc_opt_self() mainBundle];
    v88 = String._bridgeToObjectiveC()();
    v89 = [v87 localizedStringForKey:v88 value:0 table:0];

    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    swift_beginAccess();
    v93 = *&v65[v75];
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v65[v75] = v93;
    if ((v94 & 1) == 0)
    {
      v93 = sub_100042744(0, *(v93 + 2) + 1, 1, v93);
      *&v65[v75] = v93;
    }

    v96 = *(v93 + 2);
    v95 = *(v93 + 3);
    if (v96 >= v95 >> 1)
    {
      v93 = sub_100042744((v95 > 1), v96 + 1, 1, v93);
    }

    *(v93 + 2) = v96 + 1;
    v97 = &v93[16 * v96];
    *(v97 + 4) = v90;
    *(v97 + 5) = v92;
    *&v65[v75] = v93;
    swift_endAccess();
  }

  swift_beginAccess();
  if (*(*&v65[v75] + 16))
  {
    v98 = [objc_opt_self() mainBundle];
    v99 = String._bridgeToObjectiveC()();
    v100 = [v98 localizedStringForKey:v99 value:0 table:0];

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    swift_beginAccess();
    v104 = *&v65[v75];
    v105 = swift_isUniquelyReferenced_nonNull_native();
    *&v65[v75] = v104;
    if ((v105 & 1) == 0)
    {
      v104 = sub_100042744(0, *(v104 + 2) + 1, 1, v104);
      *&v65[v75] = v104;
    }

    v107 = *(v104 + 2);
    v106 = *(v104 + 3);
    if (v107 >= v106 >> 1)
    {
      v104 = sub_100042744((v106 > 1), v107 + 1, 1, v104);
    }

    *(v104 + 2) = v107 + 1;
    v108 = &v104[16 * v107];
    *(v108 + 4) = v101;
    *(v108 + 5) = v103;
    *&v65[v75] = v104;
    swift_endAccess();

    sub_10019F3D0(v109);

    v110 = objc_allocWithZone(UISegmentedControl);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v112 = [v110 initWithItems:isa];

    *&v65[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_durationControl] = v112;
    if (v112)
    {
      [v112 setSelectedSegmentIndex:*(*&v65[v75] + 16) - 1];
    }
  }

  else
  {
    *&v65[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_durationControl] = 0;
  }

  v113 = v161;
  (v161)(v64, v159, v62);
  v114 = v64;
  (v113)(v179, v160, v62);
  type metadata accessor for WorkoutChartProperties();
  v115 = swift_allocObject();
  *(v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) = 0x404E000000000000;
  *(v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration) = 0x404E000000000000;
  v116 = v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth;
  *v116 = 0;
  *(v116 + 8) = 1;
  v117 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__touchPoint;
  v185 = 0;
  v186 = 1;
  v162 = sub_100140278(&unk_1008F73E0);
  v118 = v167;
  Published.init(initialValue:)();
  v119 = v170;
  (*(v170 + 32))(v115 + v117, v118, v177);
  *(v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v167 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  v175(v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate, 1, 1, v62);
  *(v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) = 0;
  v120 = v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom;
  *v120 = 0;
  *(v120 + 8) = 1;
  v121 = v168;
  (v113)(v168, v114, v62);
  swift_beginAccess();
  (v113)(v169, v121, v62);
  Published.init(initialValue:)();
  v122 = v121;
  v123 = v171;
  v171(v122, v62);
  swift_endAccess();
  v124 = v174;
  (v113)(v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBucketStartDate, v174, v62);
  swift_beginAccess();
  (*(v119 + 8))(v115 + v117, v177);
  v183 = 0;
  v184 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  *v116 = 0;
  *(v116 + 8) = 1;
  (v113)(v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate, v124, v62);
  v125 = v179;
  (v113)(v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutEndDate, v179, v62);
  Date.timeIntervalSince(_:)();
  *(v115 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration) = v126;
  sub_1002E552C(1, 10.0, 90.0);
  v123(v125, v62);
  v123(v124, v62);
  v127 = v172;
  v175(v172, 1, 1, v62);
  v128 = v167;
  swift_beginAccess();
  sub_100169198(v127, &v128[v115]);
  swift_endAccess();
  v129 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartProperties;
  v130 = v181;
  *&v181[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartProperties] = v115;
  v131 = v164;
  v132 = v173;
  v133 = v166;
  v134 = [v166 dataCalculator];
  v135 = *&v130[v129];
  type metadata accessor for WorkoutChartDataStore();
  v136 = swift_allocObject();
  v185 = &_swiftEmptyDictionarySingleton;
  v137 = v133;
  v138 = v165;

  sub_100140278(&unk_1008F2D88);
  Published.init(initialValue:)();
  *(v136 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData) = _swiftEmptyArrayStorage;
  *(v136 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_chartProperties) = v135;
  *(v136 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_dataCalculator) = v134;
  v139 = [v137 fitnessUIFormattingManager];
  type metadata accessor for WorkoutChartDataElementFormattingManager();
  v140 = swift_allocObject();
  v141 = v131;
  v142 = v132;
  v143 = sub_10005772C();
  *(v136 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_formattingManager) = v140;
  v140[2] = v139;
  v140[3] = v141;
  *(v136 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_locationReadings) = v138;
  *(v136 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout) = v141;
  v144 = v178;
  v140[4] = v178;
  v140[5] = v143;
  *(v136 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity) = v144;
  *(v136 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutFormattingManager) = v137;
  if (v144)
  {
    result = [v142 fiui_activityType];
LABEL_35:
    *(v136 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_activityType) = result;
    v146 = result;
    v147 = sub_1005E9598(v146);
    v148 = sub_1005D6348();
    v149 = sub_1005E9B90(v147, v148);

    *(v136 + 16) = v149;
    v150 = v181;

    v151 = v158;
    sub_1005B2BB8(v158);
    sub_100642850(v151, v157);
    v152 = objc_allocWithZone(sub_100140278(&unk_1008F73F0));
    *&v150[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartsController] = UIHostingController.init(rootView:)();
    v153 = type metadata accessor for WorkoutDetailedMetricsViewController();
    v182.receiver = v150;
    v182.super_class = v153;
    v154 = objc_msgSendSuper2(&v182, "initWithNibName:bundle:", 0, 0);

    sub_100642A08(v151);
    return v154;
  }

  result = [v141 fiui_activityType];
  if (result)
  {
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

void sub_1006421D0()
{
  *(v0 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workoutActivity) = 0;
  v1 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_selectedDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_topViewHiddenConstraint) = 0;
  v4 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView;
  *(v0 + v4) = [objc_allocWithZone(MKMapView) init];
  v5 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapGradientView;
  type metadata accessor for WorkoutGradientView();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_scrubbedAnnotation) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapRoutePolyline) = 0;
  v6 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_feedback;
  *(v0 + v6) = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  *(v0 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_durationOptions) = _swiftEmptyArrayStorage;
  v7 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_chartHeaderView;
  v8 = [objc_allocWithZone(type metadata accessor for WorkoutChartHeaderView()) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR___CHWorkoutDetailedMetricsViewController_distanceQueue;
  v10 = [objc_allocWithZone(NSOperationQueue) init];
  [v10 setQualityOfService:25];
  [v10 setMaxConcurrentOperationCount:1];

  *(v0 + v9) = v10;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1006423D0(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for Date();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v32 - v7;
  __chkstk_darwin(v8);
  v34 = &v32 - v9;
  v10 = type metadata accessor for DateInterval();
  v38 = *(v10 - 8);
  v39 = v10;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v1 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_workout) metadata];
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_100066F20(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_10000B1B4(*(v16 + 56) + 32 * v19, v43);

  sub_1000059F8(0, &qword_1008E1750);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v33 = 0;
    goto LABEL_9;
  }

  v22 = v41;
  v33 = [v41 BOOLValue];

LABEL_9:
  v23 = *(v2 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_locationReadings);
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v23;

  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  Date.addingTimeInterval(_:)();

  (*(v36 + 8))(v5, v37);
  DateInterval.init(start:end:)();
  v24 = *(v2 + OBJC_IVAR___CHWorkoutDetailedMetricsViewController_downhillRunDateIntervals);
  v25 = objc_allocWithZone(type metadata accessor for WorkoutChartedDistancePathRenderer());
  v26 = OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_downhillRunDateIntervals;
  *&v25[OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_downhillRunDateIntervals] = 0;
  v28 = v38;
  v27 = v39;
  (*(v38 + 16))(&v25[OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_highlightInterval], v13, v39);
  *&v25[v26] = v24;
  v25[OBJC_IVAR____TtC10FitnessApp34WorkoutChartedDistancePathRenderer_extendedMode] = v33;
  *&v25[OBJC_IVAR____TtC10FitnessApp26WorkoutOverlayPathRenderer_locationReadings] = v32;
  v29 = type metadata accessor for WorkoutOverlayPathRenderer();
  v42.receiver = v25;
  v42.super_class = v29;

  v30 = objc_msgSendSuper2(&v42, "initWithOverlay:", v40);
  (*(v28 + 8))(v13, v27);
  return v30;
}

uint64_t sub_100642850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutChartGroupView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006428B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutChartGroupView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100642918(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutChartGroupView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_1005B8A04(a1, v6, v7, v1 + v5);
}

uint64_t sub_100642A08(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutChartGroupView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100642A64(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutChartGroupView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_1005B8A04(a1, v6, v7, v1 + v5);
}

uint64_t sub_100642B54()
{
  v1 = type metadata accessor for WorkoutChartGroupView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_100140278(&qword_1008E66B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for LayoutDirection();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(v1 + 40);
  v8 = type metadata accessor for AccessibilityTechnologies();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  sub_100140278(&unk_1008F73B0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100642DA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR___CHMoveModeChangePromptViewController_nextMoveMode] = a1;
  *&v4[OBJC_IVAR___CHMoveModeChangePromptViewController_notificationType] = a2;
  *&v4[OBJC_IVAR___CHMoveModeChangePromptViewController_healthStore] = a3;
  *&v4[OBJC_IVAR___CHMoveModeChangePromptViewController_formattingManager] = a4;
  v7 = a3;
  v8 = a4;
  sub_1006435F0(a2);
  sub_1006438E0(a2);
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v13.receiver = v4;
  v13.super_class = type metadata accessor for MoveModeChangePromptViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithTitle:detailText:icon:contentLayout:", v9, v10, 0, 2);

  return v11;
}

void sub_100642F1C()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008DC990);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for MoveModeChangePromptViewController();
  v24.receiver = v0;
  v24.super_class = v8;
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_self();
    v12 = [v11 secondarySystemGroupedBackgroundColor];
    [v10 setBackgroundColor:v12];

    v13 = [objc_opt_self() boldButton];
    [v13 addTarget:v1 action:"didTapAcceptButton" forControlEvents:64];
    v14 = *&v1[OBJC_IVAR___CHMoveModeChangePromptViewController_notificationType];
    sub_100643BD0(v14);
    v15 = v13;
    v16 = String._bridgeToObjectiveC()();

    [v15 setTitle:v16 forState:0];

    UIButton.configuration.getter();
    v17 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v17 - 8) + 48))(v7, 1, v17))
    {
      sub_10015DEBC(v7, v4);
      UIButton.configuration.setter();

      sub_10015DF2C(v7);
    }

    else
    {
      v18 = [v11 blackColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    v19 = [v1 buttonTray];
    [v19 addButton:v15];

    sub_100643E60(v14);
    if (v20)
    {
      v21 = [objc_opt_self() linkButton];
      [v21 addTarget:v1 action:"didTapSkipButton" forControlEvents:64];
      v22 = String._bridgeToObjectiveC()();

      [v21 setTitle:v22 forState:0];

      v23 = [v1 buttonTray];
      [v23 addButton:v21];
    }

    [v1 setModalInPresentation:1];
  }

  else
  {
    __break(1u);
  }
}

id sub_1006432CC()
{
  v1 = *&v0[OBJC_IVAR___CHMoveModeChangePromptViewController_notificationType];
  if (v1 > 6)
  {
    v2 = static os_log_type_t.fault.getter();
    v9 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v2))
    {
      v10 = v0;
      v4 = v9;
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v1;

      v7 = "MoveModeChangePromptViewController attempted to handle accept button for unknown notification type: %ld";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v4, v2, v7, v6, 0xCu);
    }
  }

  else
  {
    if (((1 << v1) & 0x71) != 0)
    {
      v2 = static os_log_type_t.fault.getter();
      v3 = HKLogActivity;
      if (!os_log_type_enabled(HKLogActivity, v2))
      {
        goto LABEL_8;
      }

      v4 = v3;
      v5 = v0;
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v1;

      v7 = "MoveModeChangePromptViewController attempted to handle accept button for unexpected notification type: %ld";
      goto LABEL_5;
    }

    if (((1 << v1) & 6) != 0)
    {
      [objc_opt_self() saveActivityMoveModeAndDefaultGoalSamplesForActivityMoveMode:*&v0[OBJC_IVAR___CHMoveModeChangePromptViewController_nextMoveMode] healthStore:*&v0[OBJC_IVAR___CHMoveModeChangePromptViewController_healthStore] formattingManager:*&v0[OBJC_IVAR___CHMoveModeChangePromptViewController_formattingManager]];
    }
  }

LABEL_8:

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

id sub_10064354C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MoveModeChangePromptViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1006435F0(uint64_t a1)
{
  v2 = 0xD000000000000025;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1 || a1 == 2)
      {
        goto LABEL_15;
      }

LABEL_12:
      v7 = static os_log_type_t.fault.getter();
      v8 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, v7))
      {
        v9 = v8;
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v9, v7, "MoveModeChangePromptViewController attempted to localize title for unknown notification type: %ld", v10, 0xCu);
      }

      return v2;
    }
  }

  else if ((a1 - 4) >= 3)
  {
    if (a1 == 3)
    {
LABEL_15:
      v11 = [objc_opt_self() mainBundle];
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 localizedStringForKey:v12 value:0 table:0];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v2;
    }

    goto LABEL_12;
  }

  v3 = static os_log_type_t.fault.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v3, "MoveModeChangePromptViewController attempted to localize title for unexpected notification type: %ld", v6, 0xCu);
  }

  return 0xD000000000000028;
}

unint64_t sub_1006438E0(uint64_t a1)
{
  v2 = 0xD00000000000002BLL;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1 || a1 == 2)
      {
        goto LABEL_15;
      }

LABEL_12:
      v7 = static os_log_type_t.fault.getter();
      v8 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, v7))
      {
        v9 = v8;
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v9, v7, "MoveModeChangePromptViewController attempted to localize description for unknown notification type: %ld", v10, 0xCu);
      }

      return v2;
    }
  }

  else if ((a1 - 4) >= 3)
  {
    if (a1 == 3)
    {
LABEL_15:
      v11 = [objc_opt_self() mainBundle];
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 localizedStringForKey:v12 value:0 table:0];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v2;
    }

    goto LABEL_12;
  }

  v3 = static os_log_type_t.fault.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v3, "MoveModeChangePromptViewController attempted to localize description for unexpected notification type: %ld", v6, 0xCu);
  }

  return 0xD00000000000002ELL;
}

unint64_t sub_100643BD0(unint64_t a1)
{
  if (a1 > 6)
  {
    v11 = static os_log_type_t.fault.getter();
    v12 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v11))
    {
      v13 = v12;
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v13, v11, "MoveModeChangePromptViewController attempted to localize accept button title for unknown notification type: %ld", v14, 0xCu);
    }

    return 0xD000000000000033;
  }

  else if (((1 << a1) & 0x71) != 0)
  {
    v2 = static os_log_type_t.fault.getter();
    v3 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v2))
    {
      v4 = v3;
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v4, v2, "MoveModeChangePromptViewController attempted to localize accept button title for unexpected notification type: %ld", v5, 0xCu);
    }

    return 0xD000000000000036;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v10;
  }
}

uint64_t sub_100643E60(uint64_t a1)
{
  if (a1 > 2)
  {
    if ((a1 - 4) >= 3)
    {
      if (a1 != 3)
      {
LABEL_13:
        v2 = static os_log_type_t.fault.getter();
        v8 = HKLogActivity;
        if (!os_log_type_enabled(HKLogActivity, v2))
        {
          return 0;
        }

        v4 = v8;
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = a1;
        v6 = "MoveModeChangePromptViewController attempted to localize skip button title for unknown notification type: %ld";
        goto LABEL_11;
      }

      return 0;
    }

LABEL_9:
    v2 = static os_log_type_t.fault.getter();
    v3 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v2))
    {
      v4 = v3;
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = a1;
      v6 = "MoveModeChangePromptViewController attempted to localize skip button title for unexpected notification type: %ld";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v4, v2, v6, v5, 0xCu);

      return 0;
    }

    return 0;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 != 1 && a1 != 2)
  {
    goto LABEL_13;
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

uint64_t sub_1006440A4(double a1, double a2, double a3)
{
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  return _swift_task_switch(sub_1006440CC, 0, 0);
}

uint64_t sub_1006440CC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = objc_allocWithZone(ISIcon);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithBundleIdentifier:v5];
  *(v0 + 7) = v6;

  v7 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v3 scale:{v2, v1}];
  *(v0 + 8) = v7;
  v8 = swift_task_alloc();
  *(v0 + 9) = v8;
  *(v8 + 2) = v6;
  *(v8 + 3) = v7;
  v8[4] = v1;
  v9 = swift_task_alloc();
  *(v0 + 10) = v9;
  v10 = sub_100140278(&qword_1008E9B30);
  *v9 = v0;
  v9[1] = sub_100644260;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000019, 0x8000000100768C30, sub_100644AEC, v8, v10);
}

uint64_t sub_100644260()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1006443E8;
  }

  else
  {

    v2 = sub_10064437C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10064437C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1006443E8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10064445C(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = sub_100140278(&qword_1008EEEF8);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  (*(v9 + 32))(v14 + v13, v12, v8);
  aBlock[4] = sub_100644AF8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100644714;
  aBlock[3] = &unk_100865D68;
  v15 = _Block_copy(aBlock);

  [a2 getCGImageForImageDescriptor:a3 completion:v15];
  _Block_release(v15);
}

void sub_100644624(void *a1, double a2)
{
  if (a1)
  {
    v4 = objc_allocWithZone(UIImage);
    v5 = a1;
    v6 = [v4 initWithCGImage:v5 scale:0 orientation:a2];
    sub_100140278(&qword_1008EEEF8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    sub_100644B78();
    swift_allocError();
    sub_100140278(&qword_1008EEEF8);
    CheckedContinuation.resume(throwing:)();
  }
}

void sub_100644714(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100644780(double a1, double a2, double a3)
{
  v8 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v8;
  *(v4 + 48) = v3[2];
  *(v4 + 57) = *(v3 + 41);
  v9 = swift_task_alloc();
  *(v4 + 80) = v9;
  *v9 = v4;
  v9[1] = sub_100644848;

  return sub_1006440A4(a1, a2, a3);
}

uint64_t sub_100644848(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

Swift::Int sub_100644948()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1006449B0()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100644A00()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100644A64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_100644A98()
{
  result = qword_1008F7448;
  if (!qword_1008F7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7448);
  }

  return result;
}

void sub_100644AF8(void *a1)
{
  sub_100140278(&qword_1008EEEF8);
  v3 = *(v1 + 16);

  sub_100644624(a1, v3);
}

unint64_t sub_100644B78()
{
  result = qword_1008F7450;
  if (!qword_1008F7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7450);
  }

  return result;
}

unint64_t sub_100644BF0()
{
  result = qword_1008F7458;
  if (!qword_1008F7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7458);
  }

  return result;
}

void sub_100644C8C()
{
  sub_100644ED4(319, &qword_1008E3D10, type metadata accessor for TrendListMetric, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100644D40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100644D40()
{
  if (!qword_1008F74C8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F74C8);
    }
  }
}

void sub_100644DB8()
{
  sub_100644ED4(319, &qword_1008DC720, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TrendsCard();
    if (v1 <= 0x3F)
    {
      sub_10005C6EC();
      if (v2 <= 0x3F)
      {
        sub_100644ED4(319, &qword_1008E63B8, type metadata accessor for DashboardCardCellViewCache, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100644ED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100644F54(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for TrendListMetric();
    return a2;
  }

  return result;
}

__n128 sub_100644FE8@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&qword_1008F7598);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  sub_100645104(v1);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000A45D4(v5, a1);
  v6 = a1 + *(sub_100140278(&qword_1008F75A0) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_100645104(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F75A8);
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  v5 = sub_100140278(&qword_1008F75B0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_100140278(&qword_1008F75B8);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = a1 + *(type metadata accessor for TrendsCardView(0) + 20);
  if (*(v11 + *(type metadata accessor for TrendsCard() + 24)) == 1)
  {
    sub_100645400(a1, v10);
    sub_10001B104(v10, v7, &qword_1008F75B8);
    swift_storeEnumTagMultiPayload();
    sub_100647B9C(&qword_1008F75C0, &qword_1008F75B8, &unk_1007023B8, sub_100647370);
    sub_100647B9C(&qword_1008F7628, &qword_1008F75A8, &unk_1007023A8, sub_100647680);
    _ConditionalContent<>.init(storage:)();
    v12 = v10;
    v13 = &qword_1008F75B8;
  }

  else
  {
    sub_1006458A8(a1, v4);
    sub_10001B104(v4, v7, &qword_1008F75A8);
    swift_storeEnumTagMultiPayload();
    sub_100647B9C(&qword_1008F75C0, &qword_1008F75B8, &unk_1007023B8, sub_100647370);
    sub_100647B9C(&qword_1008F7628, &qword_1008F75A8, &unk_1007023A8, sub_100647680);
    _ConditionalContent<>.init(storage:)();
    v12 = v4;
    v13 = &qword_1008F75A8;
  }

  return sub_10000EA04(v12, v13);
}

uint64_t sub_100645400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_100140278(&qword_1008F75F8);
  __chkstk_darwin(v24);
  v23 = &v23 - v3;
  v4 = sub_100140278(&qword_1008F7668);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_100140278(&qword_1008F7670);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_100140278(&qword_1008F75E0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for TrendsCardView(0);
  v14 = a1 + v13[5];
  v15 = type metadata accessor for TrendsCard();
  v16 = v14 + *(v15 + 36);
  v17 = *(v16 + 8);
  if ((v17 - 1) >= 2)
  {
    v23 = v10;
    if (v17)
    {
      swift_storeEnumTagMultiPayload();
      sub_1006473FC();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v21 = v15;
      sub_10001B104(a1 + v13[6], v26, &qword_1008DC808);
      v27[3] = v21;
      v27[4] = &off_100860780;
      v22 = sub_100005994(v27);
      sub_100647950(v14, v22, type metadata accessor for TrendsCard);
      v27[5] = *(a1 + v13[8]);
      sub_10006946C(v26, v9);
      swift_storeEnumTagMultiPayload();
      sub_1006474B4();
      sub_100647B9C(&qword_1008F75F0, &qword_1008F75F8, &unk_1007023D0, sub_100647508);
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v12, v6, &qword_1008F75E0);
      swift_storeEnumTagMultiPayload();
      sub_1006473FC();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v12, &qword_1008F75E0);
      return sub_1006478B4(v26);
    }
  }

  else
  {
    v18 = *v16;

    v19 = v23;
    sub_100646344(a1, v14, v18, v23);

    sub_10001B104(v19, v9, &qword_1008F75F8);
    swift_storeEnumTagMultiPayload();
    sub_1006474B4();
    sub_100647B9C(&qword_1008F75F0, &qword_1008F75F8, &unk_1007023D0, sub_100647508);
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v12, v6, &qword_1008F75E0);
    swift_storeEnumTagMultiPayload();
    sub_1006473FC();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v12, &qword_1008F75E0);
    return sub_10000EA04(v19, &qword_1008F75F8);
  }
}

uint64_t sub_1006458A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v63 = sub_100140278(&qword_1008DC0E0);
  v62 = *(v63 - 1);
  __chkstk_darwin(v63);
  v61 = &v54 - v3;
  v69 = sub_100140278(&qword_1008E3C18);
  __chkstk_darwin(v69);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v54 - v7;
  v68 = sub_100140278(&qword_1008F76A8);
  __chkstk_darwin(v68);
  v9 = &v54 - v8;
  v10 = type metadata accessor for TrendsCardView(0);
  v55 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = v11;
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100140278(&qword_1008F7650);
  __chkstk_darwin(v59);
  v13 = (&v54 - v12);
  v14 = sub_100140278(&qword_1008F76B0);
  v66 = *(v14 - 8);
  v67 = v14;
  __chkstk_darwin(v14);
  v58 = &v54 - v15;
  v16 = type metadata accessor for TrendListMetric();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v54 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  v22 = sub_100140278(&qword_1008F7648);
  __chkstk_darwin(v22);
  v65 = &v54 - v23;
  v24 = *(v10 + 20);
  v60 = a1;
  v25 = a1 + v24;
  v26 = type metadata accessor for TrendsCard();
  v27 = v25 + *(v26 + 36);
  if (*(v27 + 8) - 1 > 1)
  {
    v47 = v61;
    ProgressView<>.init<>()();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v62 + 32))(v5, v47, v63);
    v48 = &v5[*(v69 + 36)];
    v49 = v76;
    *(v48 + 4) = v75;
    *(v48 + 5) = v49;
    *(v48 + 6) = v77;
    v50 = v72;
    *v48 = v71;
    *(v48 + 1) = v50;
    v51 = v74;
    *(v48 + 2) = v73;
    *(v48 + 3) = v51;
    v52 = v64;
    sub_100015E80(v5, v64, &qword_1008E3C18);
    sub_10001B104(v52, v9, &qword_1008E3C18);
    swift_storeEnumTagMultiPayload();
    sub_10064770C();
    sub_10025BA1C();
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v52, &qword_1008E3C18);
  }

  else
  {
    v64 = v22;
    v63 = v9;
    v28 = *v27;
    if (*(v28 + 16))
    {
      v29 = v26;
      v30 = *(v17 + 80);
      v31 = v21;
      sub_100647950(v28 + ((v30 + 32) & ~v30), v21, type metadata accessor for TrendListMetric);
      v32 = type metadata accessor for VerticalLayoutTrendView();
      sub_100647950(v31, v13 + v32[5], type metadata accessor for TrendListMetric);
      v33 = (v13 + v32[6]);
      v33[3] = v29;
      v33[4] = &off_100860780;
      v34 = sub_100005994(v33);
      sub_100647950(v25, v34, type metadata accessor for TrendsCard);
      v35 = v60;
      v36 = *(v60 + *(v10 + 28));
      *v13 = swift_getKeyPath();
      sub_100140278(&qword_1008EE6A0);
      swift_storeEnumTagMultiPayload();
      *(v13 + v32[7]) = v36;
      *(v13 + *(v59 + 36)) = 0;
      v37 = v54;
      sub_100647950(v31, v54, type metadata accessor for TrendListMetric);
      v38 = v57;
      sub_100647950(v35, v57, type metadata accessor for TrendsCardView);
      v39 = (v30 + 16) & ~v30;
      v40 = (v39 + v18 + *(v55 + 80)) & ~*(v55 + 80);
      v41 = swift_allocObject();
      sub_10007DCDC(v37, v41 + v39, type metadata accessor for TrendListMetric);
      sub_10007DCDC(v38, v41 + v40, type metadata accessor for TrendsCardView);
      sub_1006477CC();

      v42 = v58;
      View.onTapGesture(count:perform:)();

      sub_10000EA04(v13, &qword_1008F7650);
      sub_100647A84(v31, type metadata accessor for TrendListMetric);
      v44 = v65;
      v43 = v66;
      v45 = v42;
      v46 = v67;
      (*(v66 + 32))(v65, v45, v67);
      (*(v43 + 56))(v44, 0, 1, v46);
    }

    else
    {
      v44 = v65;
      (*(v66 + 56))(v65, 1, 1, v67);
    }

    sub_10001B104(v44, v63, &qword_1008F7648);
    swift_storeEnumTagMultiPayload();
    sub_10064770C();
    sub_10025BA1C();
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v44, &qword_1008F7648);
  }
}

uint64_t sub_100646154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendsActionContext(0);
  __chkstk_darwin(v4);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100647950(a1, v6, type metadata accessor for TrendListMetric);
  v7 = type metadata accessor for TrendListMetric();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = &v6[*(v4 + 20)];
  *v8 = 0;
  v8[8] = -1;
  v9 = type metadata accessor for TrendsCardView(0);
  sub_10001B104(a2 + *(v9 + 24), v16, &qword_1008DC808);
  if (v17)
  {
    v10 = sub_1000066AC(v16, v17);
    v11 = *(v9 + 20);
    v15[3] = v4;
    v12 = sub_100005994(v15);
    sub_100647950(v6, v12, type metadata accessor for TrendsActionContext);
    sub_1004A57AC(a2 + v11, v15, *v10);
    sub_100647A84(v6, type metadata accessor for TrendsActionContext);
    sub_10000EA04(v15, &qword_1008E51F0);
    return sub_100005A40(v16);
  }

  else
  {
    sub_100647A84(v6, type metadata accessor for TrendsActionContext);
    return sub_10000EA04(v16, &qword_1008DC808);
  }
}

uint64_t sub_100646344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v69 = a4;
  v70 = a2;
  v68 = sub_100140278(&qword_1008F7620);
  __chkstk_darwin(v68);
  v62 = (&v53 - v5);
  v65 = sub_100140278(&qword_1008F7678);
  __chkstk_darwin(v65);
  v67 = &v53 - v6;
  v57 = sub_100140278(&qword_1008E2B40);
  __chkstk_darwin(v57);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v53 - v10;
  v64 = sub_100140278(&qword_1008E2B48);
  __chkstk_darwin(v64);
  v12 = (&v53 - v11);
  v73 = type metadata accessor for TrendsStack();
  __chkstk_darwin(v73);
  v63 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_100140278(&qword_1008F7680);
  v59 = *(v66 - 8);
  __chkstk_darwin(v66);
  v58 = &v53 - v14;
  v15 = type metadata accessor for DynamicTypeSize();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  v71 = a1;
  sub_10005491C(&v53 - v20);
  v61 = v16[13];
  v61(v18, enum case for DynamicTypeSize.xLarge(_:), v15);
  v60 = sub_100647908(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  LOBYTE(a1) = dispatch thunk of static Comparable.< infix(_:_:)();
  v22 = v16[1];
  v22(v18, v15);
  v55 = v22;
  v22(v21, v15);
  if (a1)
  {
    v54 = v8;
    v62 = v12;
    v23 = v73;
    v24 = v63;
    v25 = (v63 + *(v73 + 20));
    v25[3] = type metadata accessor for TrendsCard();
    v25[4] = &off_100860780;
    v26 = sub_100005994(v25);
    sub_100647950(v70, v26, type metadata accessor for TrendsCard);
    v27 = type metadata accessor for TrendsCardView(0);
    v28 = v71;
    sub_10001B104(v71 + *(v27 + 24), v24 + v23[6], &qword_1008DC808);
    v29 = *(v28 + *(v27 + 28));
    *v24 = swift_getKeyPath();
    sub_100140278(&qword_1008EE6A0);
    swift_storeEnumTagMultiPayload();
    *(v24 + v23[7]) = v72;
    *(v24 + v23[8]) = v29;
    v30 = v61;
    v61(v21, enum case for DynamicTypeSize.xxLarge(_:), v15);
    v30(v18, enum case for DynamicTypeSize.accessibility4(_:), v15);

    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v32 = v16[4];
      v33 = v56;
      v32(v56, v21, v15);
      v34 = v57;
      v32((v33 + *(v57 + 48)), v18, v15);
      v35 = v54;
      sub_10001B104(v33, v54, &qword_1008E2B40);
      v36 = *(v34 + 48);
      v37 = v62;
      v32(v62, v35, v15);
      v38 = v35 + v36;
      v39 = v55;
      v55(v38, v15);
      sub_100015E80(v33, v35, &qword_1008E2B40);
      v40 = v64;
      v32((v37 + *(v64 + 36)), (v35 + *(v34 + 48)), v15);
      v39(v35, v15);
      v41 = sub_100647908(&qword_1008F7610, type metadata accessor for TrendsStack);
      v42 = sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
      v43 = v58;
      v44 = v73;
      v45 = v63;
      View.dynamicTypeSize<A>(_:)();
      sub_10000EA04(v37, &qword_1008E2B48);
      sub_100647A84(v45, type metadata accessor for TrendsStack);
      v46 = v59;
      v47 = v66;
      (*(v59 + 16))(v67, v43, v66);
      swift_storeEnumTagMultiPayload();
      v74 = v44;
      v75 = v40;
      v76 = v41;
      v77 = v42;
      swift_getOpaqueTypeConformance2();
      sub_10014A6B0(&qword_1008F7618, &qword_1008F7620);
      _ConditionalContent<>.init(storage:)();
      return (*(v46 + 8))(v43, v47);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v48 = static VerticalAlignment.center.getter();
    v49 = v62;
    *v62 = v48;
    *(v49 + 8) = 0x4024000000000000;
    *(v49 + 16) = 0;
    v50 = sub_100140278(&qword_1008F7688);
    sub_100646C84(v71, v72, v70, v49 + *(v50 + 44));
    sub_10001B104(v49, v67, &qword_1008F7620);
    swift_storeEnumTagMultiPayload();
    v51 = sub_100647908(&qword_1008F7610, type metadata accessor for TrendsStack);
    v52 = sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    v74 = v73;
    v75 = v64;
    v76 = v51;
    v77 = v52;
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008F7618, &qword_1008F7620);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v49, &qword_1008F7620);
  }

  return result;
}

uint64_t sub_100646C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v7 = sub_100140278(&qword_1008F7690);
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  __chkstk_darwin(v7);
  v10 = (&v47 - v9);
  v11 = sub_100140278(&qword_1008F7698);
  __chkstk_darwin(v11 - 8);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = &v47 - v14;
  v15 = type metadata accessor for TrendsStack();
  __chkstk_darwin(v15);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v47 - v18);
  v20 = sub_100647120(a2);
  v22 = v21;
  v23 = (v19 + v15[5]);
  v24 = type metadata accessor for TrendsCard();
  v23[3] = v24;
  v23[4] = &off_100860780;
  v25 = sub_100005994(v23);
  v48 = a3;
  sub_100647950(a3, v25, type metadata accessor for TrendsCard);
  v26 = type metadata accessor for TrendsCardView(0);
  v27 = *(v26 + 24);
  sub_10001B104(a1 + v27, v19 + v15[6], &qword_1008DC808);
  v28 = a1;
  v29 = *(a1 + *(v26 + 28));
  *v19 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  *(v19 + v15[7]) = v20;
  *(v19 + v15[8]) = v29;
  if (*(v22 + 16))
  {
    v30 = (v10 + v15[5]);
    v30[3] = v24;
    v30[4] = &off_100860780;
    v31 = sub_100005994(v30);
    sub_100647950(v48, v31, type metadata accessor for TrendsCard);
    sub_10001B104(v28 + v27, v10 + v15[6], &qword_1008DC808);
    *v10 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v10 + v15[7]) = v22;
    *(v10 + v15[8]) = v29;
    swift_retain_n();
    v32 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v34 = v49;
    v33 = v50;
    v35 = v10 + *(v50 + 36);
    *v35 = v32;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_100015E80(v10, v34, &qword_1008F7690);
    v40 = 0;
    v41 = v33;
  }

  else
  {

    v40 = 1;
    v34 = v49;
    v41 = v50;
  }

  (*(v51 + 56))(v34, v40, 1, v41);
  v42 = v52;
  sub_100647950(v19, v52, type metadata accessor for TrendsStack);
  v43 = v53;
  sub_10001B104(v34, v53, &qword_1008F7698);
  v44 = v54;
  sub_100647950(v42, v54, type metadata accessor for TrendsStack);
  v45 = sub_100140278(&qword_1008F76A0);
  sub_10001B104(v43, v44 + *(v45 + 48), &qword_1008F7698);
  sub_10000EA04(v34, &qword_1008F7698);
  sub_100647A84(v19, type metadata accessor for TrendsStack);
  sub_10000EA04(v43, &qword_1008F7698);
  return sub_100647A84(v42, type metadata accessor for TrendsStack);
}

void *sub_100647120(uint64_t a1)
{
  v7 = *(a1 + 16);
  v8 = ceil(vcvtd_n_f64_u64(v7, 1uLL));
  if (v8 == INFINITY)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v1 = a1;
  v3 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = sub_100644F54(v8, a1);
  v2 = v9;
  v5 = v10;
  v6 = v11;
  if (v11)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();

    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      swift_unknownObjectRelease();
      v13 = _swiftEmptyArrayStorage;
    }

    v14 = v13[2];

    if (!__OFSUB__(v6 >> 1, v5))
    {
      if (v14 != (v6 >> 1) - v5)
      {
        goto LABEL_31;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_15;
      }

      v2 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
    sub_1003116FC(v4, v2, v5, v6);
    v2 = v12;
LABEL_14:
    swift_unknownObjectRelease();
LABEL_15:
    v3 = sub_10051C3BC(v3, v1);
    v4 = v15;
    v5 = v16;
    v6 = v17;
    if ((v17 & 1) == 0)
    {

LABEL_17:
      sub_1003116FC(v3, v4, v5, v6);
      goto LABEL_23;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();

    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      swift_unknownObjectRelease();
      v18 = _swiftEmptyArrayStorage;
    }

    v1 = v18[2];

    if (!__OFSUB__(v6 >> 1, v5))
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    swift_unknownObjectRelease();
  }

  if (v1 != (v6 >> 1) - v5)
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v19 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v19)
  {
    return v2;
  }

LABEL_23:
  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_100647370()
{
  result = qword_1008F75C8;
  if (!qword_1008F75C8)
  {
    sub_100141EEC(&qword_1008F75D0);
    sub_1006473FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F75C8);
  }

  return result;
}

unint64_t sub_1006473FC()
{
  result = qword_1008F75D8;
  if (!qword_1008F75D8)
  {
    sub_100141EEC(&qword_1008F75E0);
    sub_1006474B4();
    sub_100647B9C(&qword_1008F75F0, &qword_1008F75F8, &unk_1007023D0, sub_100647508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F75D8);
  }

  return result;
}

unint64_t sub_1006474B4()
{
  result = qword_1008F75E8;
  if (!qword_1008F75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F75E8);
  }

  return result;
}

unint64_t sub_100647508()
{
  result = qword_1008F7600;
  if (!qword_1008F7600)
  {
    sub_100141EEC(&qword_1008F7608);
    type metadata accessor for TrendsStack();
    sub_100141EEC(&qword_1008E2B48);
    sub_100647908(&qword_1008F7610, type metadata accessor for TrendsStack);
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008F7618, &qword_1008F7620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7600);
  }

  return result;
}

unint64_t sub_100647680()
{
  result = qword_1008F7630;
  if (!qword_1008F7630)
  {
    sub_100141EEC(&qword_1008F7638);
    sub_10064770C();
    sub_10025BA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7630);
  }

  return result;
}

unint64_t sub_10064770C()
{
  result = qword_1008F7640;
  if (!qword_1008F7640)
  {
    sub_100141EEC(&qword_1008F7648);
    sub_100141EEC(&qword_1008F7650);
    sub_1006477CC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7640);
  }

  return result;
}

unint64_t sub_1006477CC()
{
  result = qword_1008F7658;
  if (!qword_1008F7658)
  {
    sub_100141EEC(&qword_1008F7650);
    sub_100647908(&qword_1008F7660, type metadata accessor for VerticalLayoutTrendView);
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F7658);
  }

  return result;
}

uint64_t sub_100647908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100647950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006479B8()
{
  v1 = *(type metadata accessor for TrendListMetric() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for TrendsCardView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100646154(v0 + v2, v5);
}

uint64_t sub_100647A84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100647AE4()
{
  result = qword_1008F76B8;
  if (!qword_1008F76B8)
  {
    sub_100141EEC(&qword_1008F75A0);
    sub_100647B9C(&qword_1008F76C0, &qword_1008F7598, &unk_100702398, sub_100647C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F76B8);
  }

  return result;
}

uint64_t sub_100647B9C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100647C18()
{
  result = qword_1008F76C8;
  if (!qword_1008F76C8)
  {
    sub_100141EEC(&qword_1008F76D0);
    sub_100647B9C(&qword_1008F75C0, &qword_1008F75B8, &unk_1007023B8, sub_100647370);
    sub_100647B9C(&qword_1008F7628, &qword_1008F75A8, &unk_1007023A8, sub_100647680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F76C8);
  }

  return result;
}

id sub_100647D0C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController_dataProviderObserver] = 0;
  *&v1[OBJC_IVAR____TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController_dataProvider] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ActivitySharingFriendDetailWorkoutListViewController();

  v2 = objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
  result = [v2 tableView];
  if (result)
  {
    v4 = result;
    [result setSeparatorStyle:0];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100647DD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ActivitySharingFriendDetailWorkoutListViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode:1];

  v4 = [v1 navigationItem];
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v4 setTitle:v7];
  result = [v1 tableView];
  if (result)
  {
    v9 = result;
    type metadata accessor for WorkoutsListTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = String._bridgeToObjectiveC()();
    [v9 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v11];

    type metadata accessor for ActivitySharingFriendDetailDataProvider();
    sub_100648DDC(&unk_1008E8770, type metadata accessor for ActivitySharingFriendDetailDataProvider);
    ObservableObject<>.objectWillChange.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = ObjectType;
    type metadata accessor for ObservableObjectPublisher();
    v14 = Publisher<>.sink(receiveValue:)();

    *&v1[OBJC_IVAR____TtC10FitnessApp52ActivitySharingFriendDetailWorkoutListViewController_dataProviderObserver] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}