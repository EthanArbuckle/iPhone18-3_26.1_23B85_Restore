id sub_100193A34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a4;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v27);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  *&v4[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManager] = 0;
  v12 = &v4[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_handler];
  *v12 = 0;
  *(v12 + 1) = 0;
  v4[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_authorized] = 1;
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v17 = 0x8000000100294A20;
    v15 = 0xD000000000000012;
  }

  v26 = sub_10001D630(0, &qword_10035BA10);
  v35 = v15;
  v36 = v17;

  v18._countAndFlagsBits = 46;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a1;
  v19._object = a2;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x69726F687475412ELL;
  v20._object = 0xEE006E6F6974617ALL;
  String.append(_:)(v20);

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  *&v5[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManagerQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = &v5[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_name];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v5[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_effectiveBundlePath];
  v23 = v33;
  *v22 = v32;
  *(v22 + 1) = v23;
  v24 = type metadata accessor for LocationAuthorization();
  v34.receiver = v5;
  v34.super_class = v24;
  return objc_msgSendSuper2(&v34, "init");
}

void sub_100193E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_handler);
  v5 = *(a1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_handler);
  *v4 = a2;
  v4[1] = a3;

  sub_1000949F4(v5);
  v6 = *(a1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManagerQueue);
  v7 = objc_allocWithZone(CLLocationManager);
  v8 = v6;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithEffectiveBundlePath:v9 delegate:a1 onQueue:v8];

  v11 = *(a1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManager);
  *(a1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManager) = v10;
}

uint64_t sub_100193EF0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManager);
  *(a1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManager) = 0;

  v3 = (a1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_handler);
  v4 = *(a1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_handler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1000949F4(v4);
  *(a1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_authorized) = 1;
  return result;
}

void sub_100193F4C(void *a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v1[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManagerQueue];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    p_ivar_base_size = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
    v11 = [a1 authorizationStatus];
    v4 = (v11 < 5) & (0x19u >> v11);
    if (qword_100353A10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381C80);
  v13 = v1;
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v17 = 136446722;
    *(v17 + 4) = sub_10017C9E8(*&v13[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_name], *&v13[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_name + 8], &v23);
    *(v17 + 12) = 2082;
    v22[1] = [v14 *(p_ivar_base_size + 500)];
    type metadata accessor for CLAuthorizationStatus(0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10017C9E8(v18, v19, &v23);

    *(v17 + 14) = v20;
    *(v17 + 22) = 1026;
    *(v17 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s location auth status received: %{public}s, authorized: %{BOOL,public}d", v17, 0x1Cu);
    swift_arrayDestroy();
  }

  if (v4 != v13[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_authorized])
  {
    v13[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_authorized] = v4;
    v21 = *&v13[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_handler];
    if (v21)
    {

      v21(v4);
      sub_1000949F4(v21);
    }
  }
}

id sub_1001942FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationAuthorization();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001943E0()
{
  type metadata accessor for ConsistencyCheckOnMainQueue(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__lastConsistencyCheckAt;
  v2 = type metadata accessor for DispatchTime();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__updatesSinceLastConsistencyCheck) = 0;
  *(v0 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__skippedUpdatesSinceLastConsistencyCheck) = 0;
  qword_100362D20 = v0;
  return result;
}

uint64_t sub_10019447C()
{
  type metadata accessor for ConsistencyCheckOnCMQueue(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10525ConsistencyCheckOnCMQueue__lastPingAt;
  v2 = type metadata accessor for DispatchTime();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_100362D28 = v0;
  return result;
}

uint64_t sub_100194500()
{
  v1 = v0;
  sub_1000040A8(&qword_100363990);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  sub_1000040A8(&unk_100363998);
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  *(v0 + 32) = [objc_allocWithZone(CMMotionManager) init];
  v2 = type metadata accessor for LocationAuthorization();
  v3 = objc_allocWithZone(v2);
  *(v0 + 40) = sub_100193A34(0xD000000000000012, 0x80000001002A2370, 0xD000000000000039, 0x80000001002A2390);
  v4 = objc_allocWithZone(v2);
  *(v0 + 48) = sub_100193A34(0xD000000000000013, 0x80000001002A23D0, 0xD00000000000002ELL, 0x800000010029B3A0);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  v27 = 1;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  v5 = OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__lastDeviceOrientationForwardedToMainThreadAt;
  v6 = type metadata accessor for DispatchTime();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__currentRateRatio) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__skippedDeviceOrientationsSinceLastForwardedToMainThread) = 0;
  *(v1 + OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__coreMotionErrors) = 0;
  v7 = [objc_allocWithZone(NSOperationQueue) init];
  *(v1 + 56) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0x8000000100294A20;
    v12 = 0xD000000000000012;
  }

  v26[0] = v12;
  v26[1] = v14;

  v15._countAndFlagsBits = 0xD000000000000017;
  v15._object = 0x800000010028AF40;
  String.append(_:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v9 setName:v16];

  [*(v1 + 56) setMaxConcurrentOperationCount:1];
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000F53C(v17, qword_100381C80);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = v21;
    *v20 = 136446210;
    type metadata accessor for DeviceOrientationSource(0);

    v22 = String.init<A>(describing:)();
    v24 = sub_10017C9E8(v22, v23, v26);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "init: %{public}s", v20, 0xCu);
    sub_100008964(v21);
  }

  return v1;
}

id *sub_10019492C()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for DeviceOrientationSource(0);

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  sub_100008FA0((v1 + 8), &qword_100356B58);
  sub_100008FA0(v1 + OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__lastDeviceOrientationForwardedToMainThreadAt, &qword_100356518);

  return v1;
}

uint64_t sub_100194B1C()
{
  sub_10019492C();

  return swift_deallocClassInstance();
}

void sub_100194B9C()
{
  sub_10019C790(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100194C98()
{
  v1 = v0[4];
  if (![v1 isDeviceMotionAvailable])
  {
    if (qword_100353A90 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381E00);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Device motion is not available";
    goto LABEL_11;
  }

  if (([v1 isDeviceMotionActive] & 1) == 0)
  {
    [v1 setDeviceMotionUpdateInterval:0.1];
    v7 = v0[7];
    v28 = sub_10019F098;
    v29 = v0;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10001CAA4;
    v27 = &unk_100334E80;
    v8 = _Block_copy(&aBlock);

    [v1 startDeviceMotionUpdatesUsingReferenceFrame:8 toQueue:v7 withHandler:v8];
    _Block_release(v8);
    v9 = v0[5];
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = *&v9[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManagerQueue];
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = sub_10019F09C;
    v12[4] = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10019F0D8;
    *(v13 + 24) = v12;
    v28 = sub_10019F31C;
    v29 = v13;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100193668;
    v27 = &unk_100334EF8;
    v14 = _Block_copy(&aBlock);
    swift_retain_n();
    v15 = v9;

    dispatch_sync(v11, v14);
    _Block_release(v14);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v16 = v0[6];
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = *&v16[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManagerQueue];
      v19 = swift_allocObject();
      v19[2] = v16;
      v19[3] = sub_10019F0E4;
      v19[4] = v17;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_10019F350;
      *(v20 + 24) = v19;
      v28 = sub_10019F31C;
      v29 = v20;
      aBlock = _NSConcreteStackBlock;
      v25 = 1107296256;
      v26 = sub_100193668;
      v27 = &unk_100334F70;
      v21 = _Block_copy(&aBlock);
      swift_retain_n();
      v22 = v16;

      dispatch_sync(v18, v21);
      _Block_release(v21);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if ((v18 & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
    return;
  }

  if (qword_100353A90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381E00);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "DeviceOrientationSource is already active";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);
  }

LABEL_12:
}

uint64_t sub_100195208(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 56);

    v4 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a1 & 1;
    sub_10001D630(0, &qword_100363980);
    sub_10019F028();

    Scheduler.schedule(_:)();
  }

  return result;
}

uint64_t sub_100195354(uint64_t a1, char a2, int a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001962B8(a3, a2 & 1);
  }

  return result;
}

uint64_t sub_1001953C8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A90 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381E00);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "onStartConnectionAssistance", v9, 2u);
  }

  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v10)
  {
    v15 = *(v1 + 56);
    v12 = v15;
    swift_allocObject();
    swift_weakInit();
    sub_10001D630(0, &qword_100363980);
    sub_10019F028();
    v13 = v12;

    Scheduler.schedule(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100195644(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&unk_100363970);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v18 = *(Strong + OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__coreMotionErrors), , , v18))
  {
    sub_10019B0B8(v9);

    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_10019ED5C(v9, v16);
      goto LABEL_8;
    }
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  v19 = *(v10 + 24);
  v20 = type metadata accessor for DeviceOrientationError(0);
  (*(*(v20 - 8) + 56))(&v16[v19], 1, 1, v20);
  *v16 = 257;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_100008FA0(v9, &unk_100363970);
  }

LABEL_8:
  sub_10001D630(0, &qword_10035BA10);
  v21 = static OS_dispatch_queue.main.getter();
  sub_10019ECF0(v16, v13, type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState);
  v22 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  sub_10019ED5C(v13, v23 + v22);
  aBlock[4] = sub_10019F2E4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100334E58;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  v25 = v30;
  v26 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v31 + 8))(v25, v26);
  (*(v28 + 8))(v6, v29);
  return sub_10019EDC4(v16, type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState);
}

uint64_t sub_100195B98()
{
  v21 = *v0;
  v24 = 0;
  aBlock = 0u;
  v23 = 0u;
  swift_beginAccess();
  sub_1000C6F74(&aBlock, (v0 + 8), &qword_100356B58);
  swift_endAccess();
  [v0[4] stopDeviceMotionUpdates];
  v1 = v0[5];
  v2 = *&v1[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManagerQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10019F008;
  *(v4 + 24) = v3;
  v24 = sub_100031EEC;
  v25 = v4;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_100193668;
  *(&v23 + 1) = &unk_100334D68;
  v5 = _Block_copy(&aBlock);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v0[6];
  v8 = *&v7[OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization_locationManagerQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10019F334;
  *(v10 + 24) = v9;
  v24 = sub_10019F31C;
  v25 = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_100193668;
  *(&v23 + 1) = &unk_100334DE0;
  v11 = _Block_copy(&aBlock);
  v12 = v7;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (qword_100353B28 != -1)
  {
LABEL_7:
    swift_once();
  }

  type metadata accessor for ConsistencyCheckOnMainQueue(0);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__lastConsistencyCheckAt;
  v15 = type metadata accessor for DispatchTime();
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  *(v13 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__updatesSinceLastConsistencyCheck) = 0;
  *(v13 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__skippedUpdatesSinceLastConsistencyCheck) = 0;
  qword_100362D20 = v13;

  *&aBlock = v0[7];
  v16 = aBlock;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v21;
  sub_10001D630(0, &qword_100363980);
  sub_10019F028();
  v19 = v16;

  Scheduler.schedule(_:)();
}

uint64_t sub_100196008()
{
  v0 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15[80] = 1;
    *(Strong + 104) = 0u;
    *(Strong + 120) = 0u;
    *(Strong + 136) = 0u;
    *(Strong + 152) = 0u;
    *(Strong + 168) = 0;
    *(Strong + 176) = 1;
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = type metadata accessor for DispatchTime();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    v7 = OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__lastDeviceOrientationForwardedToMainThreadAt;
    swift_beginAccess();
    sub_1000C6F74(v2, v5 + v7, &qword_100356518);
    swift_endAccess();
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    *(v8 + OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__currentRateRatio) = 0x3FF0000000000000;
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    *(v9 + OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__skippedDeviceOrientationsSinceLastForwardedToMainThread) = 0;
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    *(v10 + OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__coreMotionErrors) = 0;
  }

  if (qword_100353B30 != -1)
  {
    swift_once();
  }

  type metadata accessor for ConsistencyCheckOnCMQueue(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10525ConsistencyCheckOnCMQueue__lastPingAt;
  v13 = type metadata accessor for DispatchTime();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  qword_100362D28 = v11;
}

uint64_t sub_1001962B8(int a1, int a2)
{
  v3 = v2;
  v54 = a1;
  v55 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&unk_100363970);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v13;
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  if (qword_100353A90 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000F53C(v17, qword_100381E00);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v46 = v4;
    v47 = v3;
    v45 = v21;
    aBlock[0] = v21;
    *v20 = 136315394;
    v57 = v54 & 1;
    v22 = String.init<A>(describing:)();
    v24 = v10;
    v25 = v9;
    v26 = v11;
    v27 = sub_10017C9E8(v22, v23, aBlock);

    *(v20 + 4) = v27;
    v11 = v26;
    v9 = v25;
    v10 = v24;
    *(v20 + 12) = 1026;
    *(v20 + 14) = v55 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "Location authorization changed for %s: %{BOOL,public}d", v20, 0x12u);
    sub_100008964(v45);
    v4 = v46;
    v3 = v47;
  }

  v28 = OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__coreMotionErrors;
  if (!*(v3 + OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__coreMotionErrors))
  {
    type metadata accessor for CoreMotionErrors(0);
    v29 = swift_allocObject();
    *(v29 + 16) = _swiftEmptyArrayStorage;
    v30 = v11;
    v31 = OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10516CoreMotionErrors__lastPeriodicCheckAt;
    v32 = type metadata accessor for DispatchTime();
    v33 = v29 + v31;
    v11 = v30;
    (*(*(v32 - 8) + 56))(v33, 1, 1, v32);
    *(v3 + v28) = v29;
  }

  sub_10019B840(v54 & 1, v55 & 1);

  v34 = *(v3 + v28);
  if (!v34)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  if (*(*(v34 + 16) + 16))
  {
    if (*(v3 + v28))
    {
      goto LABEL_10;
    }

LABEL_13:
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_14;
  }

  *(v3 + v28) = 0;

  if (!*(v3 + v28))
  {
    goto LABEL_13;
  }

LABEL_10:

  sub_10019B0B8(v9);

  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_10019ED5C(v9, v16);
    goto LABEL_16;
  }

LABEL_14:
  v35 = *(v10 + 24);
  v36 = type metadata accessor for DeviceOrientationError(0);
  (*(*(v36 - 8) + 56))(&v16[v35], 1, 1, v36);
  *v16 = 257;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_100008FA0(v9, &unk_100363970);
  }

LABEL_16:
  sub_10001D630(0, &qword_10035BA10);
  v37 = static OS_dispatch_queue.main.getter();
  v38 = swift_allocObject();
  swift_weakInit();
  sub_10019ECF0(v16, v14, type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState);
  v39 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  sub_10019ED5C(v14, v40 + v39);
  aBlock[4] = sub_10019F2E4;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100334CF0;
  v41 = _Block_copy(aBlock);

  v42 = v50;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  v43 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v41);

  (*(v49 + 8))(v43, v4);
  (*(v51 + 8))(v42, v53);
  return sub_10019EDC4(v16, type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState);
}

void sub_100196A5C(char *a1, uint64_t a2)
{
  v3 = v2;
  v148 = a1;
  v147 = *v2;
  v5 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v5 - 8);
  v141 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v146 = &v139 - v8;
  v163 = type metadata accessor for DispatchWorkItemFlags();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v160 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v161 = *(v10 - 8);
  __chkstk_darwin(v10);
  v159 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000040A8(&unk_100363970);
  __chkstk_darwin(v12 - 8);
  v143 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v150 = &v139 - v15;
  v152 = type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState(0);
  v156 = *(v152 - 1);
  __chkstk_darwin(v152);
  v144 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v154 = &v139 - v18;
  v153 = v19;
  __chkstk_darwin(v20);
  v151 = &v139 - v21;
  v22 = type metadata accessor for DispatchTime();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v140 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v142 = &v139 - v26;
  __chkstk_darwin(v27);
  v145 = &v139 - v28;
  __chkstk_darwin(v29);
  v31 = &v139 - v30;
  __chkstk_darwin(v32);
  v34 = &v139 - v33;
  if (qword_100353B30 != -1)
  {
    swift_once();
  }

  static DispatchTime.now()();
  v35 = OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__currentRateRatio;
  sub_100198AA8(v34, *&v2[OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__currentRateRatio]);

  v149 = v23;
  v37 = *(v23 + 8);
  v36 = v23 + 8;
  v165 = v22;
  v164 = v37;
  v37(v34, v22);
  if (a2)
  {
    v158 = v36;
    swift_errorRetain();
    if (qword_100353A90 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000F53C(v38, qword_100381E00);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    v41 = os_log_type_enabled(v39, v40);
    v155 = v10;
    v157 = a2;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock = v43;
      *v42 = 136446210;
      v173 = a2;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0);
      v44 = String.init<A>(describing:)();
      v46 = sub_10017C9E8(v44, v45, &aBlock);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Error getting device motion data: %{public}s", v42, 0xCu);
      sub_100008964(v43);
    }

    v47 = v165;
    v48 = OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__coreMotionErrors;
    if (!*&v3[OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__coreMotionErrors])
    {
      type metadata accessor for CoreMotionErrors(0);
      v49 = swift_allocObject();
      *(v49 + 16) = _swiftEmptyArrayStorage;
      (*(v149 + 56))(v49 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10516CoreMotionErrors__lastPeriodicCheckAt, 1, 1, v47);
      *&v3[v48] = v49;
    }

    v50 = _convertErrorToNSError(_:)();
    static DispatchTime.now()();
    sub_10019B3BC(v50, v34);

    v164(v34, v47);
    v51 = *&v3[v48];
    v52 = v156;
    v53 = v152;
    if (v51)
    {
      swift_beginAccess();
      if (*(*(v51 + 16) + 16))
      {
        if (*&v3[v48])
        {
          goto LABEL_13;
        }
      }

      else
      {
        *&v3[v48] = 0;

        if (*&v3[v48])
        {
LABEL_13:

          v54 = v150;
          sub_10019B0B8(v150);

          if ((*(v52 + 48))(v54, 1, v53) != 1)
          {
            v55 = v151;
            sub_10019ED5C(v54, v151);
LABEL_32:
            sub_10001D630(0, &qword_10035BA10);
            v72 = static OS_dispatch_queue.main.getter();
            v73 = swift_allocObject();
            swift_weakInit();
            v74 = v154;
            sub_10019ECF0(v55, v154, type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState);
            v75 = (*(v52 + 80) + 24) & ~*(v52 + 80);
            v76 = swift_allocObject();
            *(v76 + 16) = v73;
            sub_10019ED5C(v74, v76 + v75);
            v171 = sub_10019F2E4;
            v172 = v76;
            aBlock = _NSConcreteStackBlock;
            v168 = 1107296256;
            v169 = sub_1001D2438;
            v170 = &unk_100334CA0;
            v77 = _Block_copy(&aBlock);

            v78 = v159;
            static DispatchQoS.unspecified.getter();
            aBlock = _swiftEmptyArrayStorage;
            sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000040A8(&unk_100355D70);
            sub_1000112E8(&qword_10035BB50, &unk_100355D70);
            v79 = v160;
            v80 = v163;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v77);

            (*(v162 + 8))(v79, v80);
            (*(v161 + 8))(v78, v155);
            sub_10019EDC4(v55, type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState);
            return;
          }

LABEL_30:
          v70 = *(v53 + 6);
          v71 = type metadata accessor for DeviceOrientationError(0);
          v55 = v151;
          (*(*(v71 - 8) + 56))(&v151[v70], 1, 1, v71);
          *v55 = 257;
          if ((*(v52 + 48))(v54, 1, v53) != 1)
          {
            sub_100008FA0(v54, &unk_100363970);
          }

          goto LABEL_32;
        }
      }
    }

    v54 = v150;
    (*(v52 + 56))(v150, 1, 1, v53);
    goto LABEL_30;
  }

  v157 = v35;
  if (v148)
  {
    v158 = v36;
    v155 = v10;
    v151 = v148;
    sub_10019E710(v151, &v174);
    v56 = OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__coreMotionErrors;
    v57 = *&v2[OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__coreMotionErrors];
    if (!v57)
    {
      goto LABEL_37;
    }

    static DispatchTime.now()();
    swift_beginAccess();
    v58 = *(v57 + 16);
    v59 = *(v58 + 16);
    if (v59)
    {
      v148 = v56;
      v150 = v2;
      v60 = v58 + 32;
      v139 = v58;

      v61 = v151;
      do
      {
        sub_1000089B0(v60, &aBlock);
        v62 = v170;
        v63 = v171;
        sub_1000088DC(&aBlock, v170);
        (*(v63 + 1))(v61, v31, v62, v63);
        sub_100008964(&aBlock);
        v60 += 40;
        --v59;
      }

      while (v59);

      v3 = v150;
      v56 = v148;
    }

    sub_10019BA90(v31);
    v64 = sub_10019BEBC();

    v164(v31, v165);
    if ((v64 & 1) == 0)
    {
LABEL_37:
      if ((v3[176] & 1) != 0 || vabdd_f64(*(v3 + 13), *&v174) >= 0.0436332313 || vabdd_f64(*(v3 + 14), *(&v174 + 1)) >= 0.0436332313)
      {
        static DispatchTime.now()();
        v166 = 0;
        v102 = v176;
        *(v3 + 120) = v175;
        *(v3 + 136) = v102;
        *(v3 + 152) = v177;
        *(v3 + 21) = v178;
        *(v3 + 104) = v174;
        v3[176] = 0;
        v103 = v149;
        v104 = *(v149 + 16);
        v105 = v146;
        v106 = v165;
        v104(v146, v34, v165);
        (*(v103 + 56))(v105, 0, 1, v106);
        v107 = OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__lastDeviceOrientationForwardedToMainThreadAt;
        swift_beginAccess();
        sub_1000C6F74(v105, &v3[v107], &qword_100356518);
        swift_endAccess();
        *&v3[v157] = 0x3FF0000000000000;
        v156 = *&v3[OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__skippedDeviceOrientationsSinceLastForwardedToMainThread];
        *&v3[OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__skippedDeviceOrientationsSinceLastForwardedToMainThread] = 0;
        sub_10001D630(0, &qword_10035BA10);
        v157 = static OS_dispatch_queue.main.getter();
        v108 = v145;
        v104(v145, v34, v106);
        v109 = (*(v103 + 80) + 24) & ~*(v103 + 80);
        v110 = (v24 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
        v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
        v112 = swift_allocObject();
        *(v112 + 16) = v3;
        (*(v103 + 32))(v112 + v109, v108, v106);
        *(v112 + v110) = v156;
        v113 = v112 + v111;
        v114 = v177;
        v115 = v175;
        *(v113 + 32) = v176;
        *(v113 + 48) = v114;
        v116 = v174;
        *(v113 + 64) = v178;
        *v113 = v116;
        *(v113 + 16) = v115;
        *(v112 + ((v111 + 79) & 0xFFFFFFFFFFFFFFF8)) = v147;
        v171 = sub_10019EBB8;
        v172 = v112;
        aBlock = _NSConcreteStackBlock;
        v168 = 1107296256;
        v169 = sub_1001D2438;
        v170 = &unk_100334B88;
        v117 = _Block_copy(&aBlock);

        v118 = v159;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000040A8(&unk_100355D70);
        sub_1000112E8(&qword_10035BB50, &unk_100355D70);
        v119 = v160;
        v120 = v163;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v121 = v157;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v117);

        (*(v162 + 8))(v119, v120);
        (*(v161 + 8))(v118, v155);
        v122 = v34;
        v123 = v106;
LABEL_44:
        v164(v122, v123);
        return;
      }

      v92 = *&v3[OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__skippedDeviceOrientationsSinceLastForwardedToMainThread];
      v93 = __CFADD__(v92, 1);
      v94 = v92 + 1;
      if (v93)
      {
        __break(1u);
      }

      else
      {
        *&v3[OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__skippedDeviceOrientationsSinceLastForwardedToMainThread] = v94;
        v95 = OBJC_IVAR____TtC8SOSBuddy23DeviceOrientationSource__lastDeviceOrientationForwardedToMainThreadAt;
        swift_beginAccess();
        v96 = v141;
        sub_1001451C0(&v3[v95], v141);
        v97 = v149;
        v98 = v165;
        v99 = (*(v149 + 48))(v96, 1, v165);
        v100 = v151;
        v101 = v142;
        if (v99 == 1)
        {

          sub_100008FA0(v96, &qword_100356518);
          return;
        }

        (*(v97 + 32))(v142, v96, v98);
        if (*&v3[v157] >= 10.0)
        {
          v164(v101, v98);
LABEL_54:

          return;
        }

        v124 = v140;
        static DispatchTime.now()();
        v125 = DispatchTime.uptimeNanoseconds.getter();
        if (DispatchTime.uptimeNanoseconds.getter() >= v125)
        {
          v129 = v164;
          v164(v124, v98);
LABEL_53:
          v129(v101, v98);
          goto LABEL_54;
        }

        v126 = DispatchTime.uptimeNanoseconds.getter();
        v127 = DispatchTime.uptimeNanoseconds.getter();
        v164(v124, v98);
        v128 = v126 - v127;
        if (v126 >= v127)
        {
          v129 = v164;
          if (v128 > 0x12A15343FLL)
          {
            *&v3[v157] = 0x4024000000000000;
            sub_10001D630(0, &qword_10035BA10);
            v157 = static OS_dispatch_queue.main.getter();
            v130 = swift_allocObject();
            swift_weakInit();
            v131 = swift_allocObject();
            v132 = v147;
            *(v131 + 16) = v130;
            *(v131 + 24) = v132;
            v171 = sub_10019ECE8;
            v172 = v131;
            aBlock = _NSConcreteStackBlock;
            v168 = 1107296256;
            v169 = sub_1001D2438;
            v170 = &unk_100334C00;
            v133 = _Block_copy(&aBlock);

            v134 = v159;
            static DispatchQoS.unspecified.getter();
            aBlock = _swiftEmptyArrayStorage;
            sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
            v135 = v101;
            sub_1000040A8(&unk_100355D70);
            sub_1000112E8(&qword_10035BB50, &unk_100355D70);
            v136 = v160;
            v137 = v163;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v138 = v157;
            OS_dispatch_queue.async(group:qos:flags:execute:)();

            _Block_release(v133);
            (*(v162 + 8))(v136, v137);
            (*(v161 + 8))(v134, v155);
            v122 = v135;
            v123 = v98;
            goto LABEL_44;
          }

          goto LABEL_53;
        }
      }

      __break(1u);
      return;
    }

    v65 = *&v56[v3];
    v66 = v152;
    v67 = v144;
    v68 = v143;
    if (!v65)
    {
      goto LABEL_33;
    }

    swift_beginAccess();
    if (!*(*(v65 + 16) + 16))
    {
      *&v56[v3] = 0;
    }

    if (*&v56[v3])
    {

      sub_10019B0B8(v68);

      v69 = v156;
      if ((*(v156 + 48))(v68, 1, v66) != 1)
      {
        sub_10019ED5C(v68, v67);
LABEL_36:
        sub_10001D630(0, &qword_10035BA10);
        v150 = static OS_dispatch_queue.main.getter();
        v83 = swift_allocObject();
        swift_weakInit();
        v152 = type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState;
        v84 = v154;
        sub_10019ECF0(v67, v154, type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState);
        v85 = (*(v156 + 80) + 24) & ~*(v156 + 80);
        v86 = swift_allocObject();
        *(v86 + 16) = v83;
        sub_10019ED5C(v84, v86 + v85);
        v171 = sub_10019EDC0;
        v172 = v86;
        aBlock = _NSConcreteStackBlock;
        v168 = 1107296256;
        v169 = sub_1001D2438;
        v170 = &unk_100334C50;
        v87 = _Block_copy(&aBlock);

        v88 = v159;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000040A8(&unk_100355D70);
        sub_1000112E8(&qword_10035BB50, &unk_100355D70);
        v89 = v160;
        v90 = v163;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v91 = v150;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v87);

        (*(v162 + 8))(v89, v90);
        (*(v161 + 8))(v88, v155);
        sub_10019EDC4(v144, v152);
        goto LABEL_37;
      }
    }

    else
    {
LABEL_33:
      v69 = v156;
      (*(v156 + 56))(v68, 1, 1, v66);
    }

    v81 = *(v66 + 6);
    v82 = type metadata accessor for DeviceOrientationError(0);
    (*(*(v82 - 8) + 56))(&v67[v81], 1, 1, v82);
    *v67 = 257;
    if ((*(v69 + 48))(v68, 1, v66) != 1)
    {
      sub_100008FA0(v68, &unk_100363970);
    }

    goto LABEL_36;
  }
}

uint64_t sub_100198274()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_1001982F0()
{
  if (qword_100353A90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381E00);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reducing deviceMotionUpdateInterval due to the lack of motion", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 32);

    [v5 setDeviceMotionUpdateInterval:1.0];
  }
}

uint64_t sub_100198424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  v12 = *(a1 + 32);
  [v12 deviceMotionUpdateInterval];
  if (v13 > 0.1)
  {
    if (qword_100353A90 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F53C(v14, qword_100381E00);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = a2;
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Returning deviceMotionUpdateInterval back to normal rate", v17, 2u);
      a2 = v25;
    }

    [v12 setDeviceMotionUpdateInterval:0.1];
  }

  if (qword_100353B28 != -1)
  {
    swift_once();
  }

  sub_100198F68(a2, v11, a3);

  v18 = *(a4 + 64);

  v19 = sub_1001991FC(v11, v18);

  if (v19)
  {
    sub_1001986C8(v20, a4);
  }

  v21 = *(a4 + 48);
  v28 = *(a4 + 32);
  v29 = v21;
  v30 = *(a4 + 64);
  v22 = *(a4 + 16);
  v26 = *a4;
  v27 = v22;
  PassthroughSubject.send(_:)();
  return (*(v9 + 8))(v11, v8);
}

void sub_1001986C8(uint64_t a1, uint64_t a2)
{
  v4 = [*(v2 + 32) deviceMotion];
  if (!v4)
  {
    if (qword_100353A90 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

  v5 = v4;
  sub_10019E710(v4, v25);
  v6 = round(*a2 * 57.2957795);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v7 = round(v25[0] * 57.2957795);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
LABEL_14:
    v15 = type metadata accessor for Logger();
    sub_10000F53C(v15, qword_100381E00);
    v24 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v24, v16, "DeviceOrientationSource: checkConsistency: deviceMotion is not available", v17, 2u);
    }

    goto LABEL_20;
  }

  v8 = v6;
  v9 = v7;
  if (*&v6 == *&v7)
  {
    if (qword_100353A90 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F53C(v10, qword_100381E00);
    v24 = v5;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349056;
      [v24 timestamp];
      *(v13 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "DeviceOrientationSource: checkConsistency: pull motion recorded at %{public}f", v13, 0xCu);

LABEL_20:
      v23 = v24;
      goto LABEL_21;
    }

    v23 = v11;
  }

  else
  {
    if (qword_100353A90 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000F53C(v18, qword_100381E00);
    v24 = v5;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349824;
      *(v21 + 4) = v8;
      *(v21 + 12) = 2050;
      *(v21 + 14) = *(a2 + 64);
      *(v21 + 22) = 2050;
      *(v21 + 24) = v9;
      *(v21 + 32) = 2050;
      [v24 timestamp];
      *(v21 + 34) = v22;
      _os_log_impl(&_mh_execute_header, v19, v20, "DeviceOrientationSource: checkConsistency: push heading = %{public}lld at %{public}f, pull heading = %{public}lld at %{public}f", v21, 0x2Au);

      goto LABEL_20;
    }

    v23 = v19;
  }

LABEL_21:
}

uint64_t sub_100198AA8(uint64_t a1, double a2)
{
  v4 = v2;
  v7 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10525ConsistencyCheckOnCMQueue__lastPingAt;
  swift_beginAccess();
  sub_1001451C0(v4 + v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    v18 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() < v18)
    {
      v19 = DispatchTime.uptimeNanoseconds.getter();
      v20 = DispatchTime.uptimeNanoseconds.getter();
      v21 = v19 - v20;
      if (v19 >= v20)
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    v21 = 0;
LABEL_7:
    v22 = a2 * 100.0;
    if (COERCE__INT64(fabs(a2 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -1.0)
    {
      if (v22 < 1.84467441e19)
      {
        if (v22 < 0xFFFFFFFFFFFFFF9CLL)
        {
          v3 = v21 / 0xF4240;
          if (v22 + 100 >= v21 / 0xF4240)
          {
LABEL_16:
            (*(v14 + 8))(v16, v13);
            goto LABEL_17;
          }

          if (qword_100353A90 == -1)
          {
LABEL_13:
            v23 = type metadata accessor for Logger();
            sub_10000F53C(v23, qword_100381E00);
            v24 = Logger.logObject.getter();
            v25 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              v29 = a1;
              *v26 = 134349056;
              *(v26 + 4) = v3;
              _os_log_impl(&_mh_execute_header, v24, v25, "DeviceOrientationSource: updates from CoreMotion are lagging, delay is %{public}llu ms", v26, 0xCu);
              a1 = v29;
            }

            goto LABEL_16;
          }

LABEL_22:
          swift_once();
          goto LABEL_13;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_20;
  }

  sub_100008FA0(v12, &qword_100356518);
LABEL_17:
  (*(v14 + 16))(v9, a1, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_1000C6F74(v9, v4 + v17, &qword_100356518);
  return swift_endAccess();
}

void sub_100198EBC()
{
  sub_10019C790(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100198F68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v12)
  {
    goto LABEL_10;
  }

  v13 = DispatchTime.uptimeNanoseconds.getter();
  v14 = DispatchTime.uptimeNanoseconds.getter();
  v15 = v13 >= v14;
  a2 = v13 - v14;
  if (v15)
  {
    if (a2 >= 0x6052340)
    {
      if (qword_100353A90 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

    goto LABEL_10;
  }

  while (1)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_7:
    v16 = type metadata accessor for Logger();
    sub_10000F53C(v16, qword_100381E00);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = a2 / 0xF4240;
      a2 = swift_slowAlloc();
      *a2 = 134349056;
      *(a2 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "DeviceOrientationSource: updates on main thread are lagging, delay is %{public}llu ms", a2, 0xCu);
    }

LABEL_10:
    v20 = *(v4 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__updatesSinceLastConsistencyCheck);
    v15 = __CFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v15)
    {
      break;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  *(v4 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__updatesSinceLastConsistencyCheck) = v21;
  v22 = *(v4 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__skippedUpdatesSinceLastConsistencyCheck);
  v15 = __CFADD__(v22, a3);
  v23 = v22 + a3;
  if (v15)
  {
    goto LABEL_15;
  }

  *(v4 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__skippedUpdatesSinceLastConsistencyCheck) = v23;
}

uint64_t sub_1001991FC(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__lastConsistencyCheckAt;
  swift_beginAccess();
  sub_1001451C0(v3 + v16, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100008FA0(v11, &qword_100356518);
    (*(v13 + 16))(v8, a1, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    swift_beginAccess();
    sub_1000C6F74(v8, v3 + v16, &qword_100356518);
    swift_endAccess();
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v17)
  {
    goto LABEL_9;
  }

  v18 = DispatchTime.uptimeNanoseconds.getter();
  v19 = DispatchTime.uptimeNanoseconds.getter();
  v20 = v18 - v19;
  if (v18 < v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v20 < 0x12A153440)
  {
LABEL_9:
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  if (qword_100353A90 != -1)
  {
LABEL_14:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000F53C(v21, qword_100381E00);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v27 = v20 / 0xF4240;
    v24 = swift_slowAlloc();
    *v24 = 134349824;
    *(v24 + 4) = v27;
    *(v24 + 12) = 2050;
    *(v24 + 14) = *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__updatesSinceLastConsistencyCheck);
    *(v24 + 22) = 2050;
    *(v24 + 24) = *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__skippedUpdatesSinceLastConsistencyCheck);

    *(v24 + 32) = 2050;
    *(v24 + 34) = a2;
    _os_log_impl(&_mh_execute_header, v22, v23, "DeviceOrientationSource: checkConsistency: in last %{public}llu ms received %{public}llu (+ %{public}llu skipped) CoreMotion updates on main queue, last one recorded at %{public}f", v24, 0x2Au);
  }

  else
  {
  }

  (*(v13 + 8))(v15, v12);
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__updatesSinceLastConsistencyCheck) = 0;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10527ConsistencyCheckOnMainQueue__skippedUpdatesSinceLastConsistencyCheck) = 0;
  (*(v13 + 16))(v8, a1, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_1000C6F74(v8, v3 + v16, &qword_100356518);
  swift_endAccess();
  return 1;
}

uint64_t sub_1001996A4(void *a1)
{
  sub_100008FA0(v1 + *a1, &qword_100356518);

  return swift_deallocClassInstance();
}

void sub_10019973C()
{
  sub_10019C790(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10019982C()
{
  result = type metadata accessor for DeviceOrientationError(319);
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

uint64_t sub_100199A4C(void *a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v38 = a1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v43._object = 0x80000001002A2140;
  v9._countAndFlagsBits = 0xD000000000000041;
  v9._object = 0x80000001002A2240;
  v43._countAndFlagsBits = 0xD000000000000068;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v43);
  countAndFlagsBits = v11._countAndFlagsBits;

  v12 = [v7 mainBundle];
  v44._object = 0x80000001002A21D0;
  v13._object = 0x80000001002A21B0;
  v44._countAndFlagsBits = 0xD000000000000066;
  v13._countAndFlagsBits = 0xD000000000000015;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v44);

  v16 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error;
  v17 = type metadata accessor for DeviceOrientationError(0);
  v18 = *(v17 + 24);
  v39 = v5;
  v40 = v4;
  v19 = *(v5 + 16);
  v19(v16 + v18, v41, v4);
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__isExpired) = 0;
  v20 = countAndFlagsBits;
  v21 = v38;
  *v16 = v38;
  *(v16 + 8) = v20;
  *(v16 + 16) = v11._object;
  *(v16 + 24) = v15;
  v22 = qword_100353A90;
  v23 = v21;

  if (v22 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000F53C(v24, qword_100381E00);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 136446210;
    v29 = v40;
    v19(v36, v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error + *(v17 + 24), v40);
    v30 = String.init<A>(describing:)();
    v32 = v31;

    v33 = sub_10017C9E8(v30, v32, &v42);

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "SatelliteErrorLocationAccessNotAuthorized reported at %{public}s", v27, 0xCu);
    sub_100008964(v28);

    (*(v39 + 8))(v41, v29);
  }

  else
  {

    (*(v39 + 8))(v41, v40);
  }

  return v3;
}

void sub_100199E20(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 & 1) != 0 && (a2)
  {
    v11 = v8;
    *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__isExpired) = 1;
    if (qword_100353A90 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F53C(v12, qword_100381E00);

    v22 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446210;
      v16 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error;
      v17 = type metadata accessor for DeviceOrientationError(0);
      (*(v7 + 16))(v10, v16 + *(v17 + 24), v11);
      v18 = String.init<A>(describing:)();
      v20 = sub_10017C9E8(v18, v19, &v23);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v22, v13, "SatelliteErrorLocationAccessNotAuthorized reported at %{public}s has expired", v14, 0xCu);
      sub_100008964(v15);
    }

    else
    {
      v21 = v22;
    }
  }
}

uint64_t sub_10019A0A8(void *a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v38 = a1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v43._object = 0x80000001002A2140;
  v9._countAndFlagsBits = 0xD000000000000040;
  v9._object = 0x80000001002A20F0;
  v43._countAndFlagsBits = 0xD000000000000068;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v43);
  countAndFlagsBits = v11._countAndFlagsBits;

  v12 = [v7 mainBundle];
  v44._object = 0x80000001002A21D0;
  v13._object = 0x80000001002A21B0;
  v44._countAndFlagsBits = 0xD000000000000066;
  v13._countAndFlagsBits = 0xD000000000000015;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v44);

  v16 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error;
  v17 = type metadata accessor for DeviceOrientationError(0);
  v18 = *(v17 + 24);
  v39 = v5;
  v40 = v4;
  v19 = *(v5 + 16);
  v19(v16 + v18, v41, v4);
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__isExpired) = 0;
  v20 = countAndFlagsBits;
  v21 = v38;
  *v16 = v38;
  *(v16 + 8) = v20;
  *(v16 + 16) = v11._object;
  *(v16 + 24) = v15;
  v22 = qword_100353A90;
  v23 = v21;

  if (v22 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000F53C(v24, qword_100381E00);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 136446210;
    v29 = v40;
    v19(v36, v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error + *(v17 + 24), v40);
    v30 = String.init<A>(describing:)();
    v32 = v31;

    v33 = sub_10017C9E8(v30, v32, &v42);

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "CompassErrorLocationAccessNotAuthorized reported at %{public}s", v27, 0xCu);
    sub_100008964(v28);

    (*(v39 + 8))(v41, v29);
  }

  else
  {

    (*(v39 + 8))(v41, v40);
  }

  return v3;
}

void sub_10019A47C(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 & 1) == 0 && (a2)
  {
    v11 = v8;
    *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__isExpired) = 1;
    if (qword_100353A90 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F53C(v12, qword_100381E00);

    v22 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446210;
      v16 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error;
      v17 = type metadata accessor for DeviceOrientationError(0);
      (*(v7 + 16))(v10, v16 + *(v17 + 24), v11);
      v18 = String.init<A>(describing:)();
      v20 = sub_10017C9E8(v18, v19, &v23);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v22, v13, "CompassErrorLocationAccessNotAuthorized reported at %{public}s has expired", v14, 0xCu);
      sub_100008964(v15);
    }

    else
    {
      v21 = v22;
    }
  }
}

uint64_t sub_10019A710(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() mainBundle];
  v37._object = 0x80000001002A22B0;
  v9._object = 0x80000001002A2290;
  v37._countAndFlagsBits = 0xD00000000000006FLL;
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v37);

  v12 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error;
  v13 = type metadata accessor for DeviceOrientationError(0);
  v14 = *(v13 + 24);
  v34 = v6;
  v35 = a2;
  v15 = *(v6 + 16);
  v15(v12 + v14, a2, v5);
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__isExpired) = 0;
  v16 = v33;
  *v12 = v33;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = v11;
  v17 = qword_100353A90;
  v18 = v16;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000F53C(v19, qword_100381E00);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 136446210;
    v24 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error + *(v13 + 24);
    v33 = v18;
    v15(v32, v24, v5);
    v25 = v5;
    v26 = String.init<A>(describing:)();
    v28 = v27;

    v29 = sub_10017C9E8(v26, v28, &v36);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "CoreMotionErrorDeviceNeedsToBeMoved reported at %{public}s", v22, 0xCu);
    sub_100008964(v23);

    (*(v34 + 8))(v35, v25);
  }

  else
  {

    (*(v34 + 8))(v35, v5);
  }

  return v3;
}

void sub_10019AA78(void *a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__isExpired;
  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__isExpired) & 1) == 0)
  {
    [a1 magneticField];
    v9 = v24 == -1;
    *(v1 + v8) = v24 != -1;
    if (!v9)
    {
      if (qword_100353A90 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000F53C(v10, qword_100381E00);

      v11 = v1;
      v22 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23[0] = v14;
        *v13 = 136446210;
        v15 = v11 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error;
        v16 = type metadata accessor for DeviceOrientationError(0);
        (*(v4 + 16))(v7, v15 + *(v16 + 24), v3);
        v17 = String.init<A>(describing:)();
        v19 = sub_10017C9E8(v17, v18, v23);

        *(v13 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v22, v12, "CoreMotionErrorDeviceNeedsToBeMoved reported at %{public}s has expired", v13, 0xCu);
        sub_100008964(v14);
      }

      else
      {
        v20 = v22;
      }
    }
  }
}

uint64_t sub_10019AD00()
{
  sub_10019EDC4(v0 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error, type metadata accessor for DeviceOrientationError);

  return swift_deallocClassInstance();
}

void sub_10019ADA0()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__isExpired;
  if (*(v0 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__isExpired))
  {
    return;
  }

  v6 = v0 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10519CoreMotionErrorBase__error;
  v7 = *(type metadata accessor for DeviceOrientationError(0) + 24);
  v8 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v8)
  {
    return;
  }

  v9 = DispatchTime.uptimeNanoseconds.getter();
  v10 = DispatchTime.uptimeNanoseconds.getter();
  if (v9 < v10)
  {
    __break(1u);
  }

  else
  {
    if (v9 - v10 < 0x37E11D600)
    {
      return;
    }

    *(v0 + v5) = 1;
    if (qword_100353A90 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v11 = type metadata accessor for Logger();
  sub_10000F53C(v11, qword_100381E00);

  v19 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446210;
    (*(v2 + 16))(v4, v6 + v7, v1);
    v15 = String.init<A>(describing:)();
    v17 = sub_10017C9E8(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v19, v12, "CoreMotionErrorGeneric reported at %{public}s has expired", v13, 0xCu);
    sub_100008964(v14);
  }

  else
  {
    v18 = v19;
  }
}

uint64_t sub_10019B0B8@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1000040A8(&qword_1003638A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v21 = a1;
    v8 = v6 + 32;

    v9 = 1;
    v10 = 1;
    do
    {
      sub_1000089B0(v8, &v23);
      sub_1000089B0(&v23, v22);
      sub_1000040A8(&unk_100363950);
      type metadata accessor for SatelliteErrorLocationAccessNotAuthorized(0);
      if (swift_dynamicCast())
      {

        v10 = 0;
      }

      sub_100008A18(&v23, v22);
      type metadata accessor for CompassErrorLocationAccessNotAuthorized(0);
      if (swift_dynamicCast())
      {

        v9 = 0;
      }

      v8 += 40;
      --v7;
    }

    while (v7);

    v11 = *(v1 + 16);
    if (*(v11 + 16))
    {
      sub_1000089B0(v11 + 32, &v23);
      v12 = v24;
      v13 = v25;
      sub_1000088DC(&v23, v24);
      (*(v13 + 32))(v12, v13);
      v14 = type metadata accessor for DeviceOrientationError(0);
      (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
      sub_100008964(&v23);
    }

    else
    {
      v17 = type metadata accessor for DeviceOrientationError(0);
      (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    }

    v18 = v21;
    *v21 = v10 & 1;
    v18[1] = v9 & 1;
    v19 = type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState(0);
    sub_10019EA68(v5, &v18[*(v19 + 24)]);
    return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v15 = type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState(0);
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }
}

void sub_10019B3BC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 domain];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      if (qword_100353A90 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000F53C(v17, qword_100381E00);
      v18 = a1;
      v39 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v40 = v21;
        *v20 = 136446210;
        v22 = [v18 domain];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = sub_10017C9E8(v23, v25, &v40);

        *(v20 + 4) = v26;
        v27 = "Error domain %{public}s != CMErrorDomain";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v39, v19, v27, v20, 0xCu);
        sub_100008964(v21);

        return;
      }

      goto LABEL_19;
    }
  }

  v28 = [a1 code];
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v28))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_16;
  }

  if (v28 == 101)
  {
    (*(v6 + 16))(v9, a2, v5);
    type metadata accessor for CoreMotionErrorDeviceNeedsToBeMoved(0);
    swift_allocObject();
    v29 = sub_10019A710(a1, v9);
    sub_10019DF8C(v29, v2, type metadata accessor for CoreMotionErrorDeviceNeedsToBeMoved, sub_10019F300);

    return;
  }

  if (qword_100353A90 != -1)
  {
    goto LABEL_24;
  }

LABEL_16:
  v30 = type metadata accessor for Logger();
  sub_10000F53C(v30, qword_100381E00);
  v31 = a1;
  v39 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = v21;
    *v20 = 136446210;
    v32 = v31;
    v33 = [v32 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_10017C9E8(v34, v36, &v40);

    *(v20 + 4) = v37;
    v27 = "Ignoring error: %{public}s";
    goto LABEL_18;
  }

LABEL_19:
  v38 = v39;
}

uint64_t sub_10019B840(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v6 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    static POSIXError.errorDomain.getter();
    v9 = POSIXErrorCode.rawValue.getter();
    v10 = objc_allocWithZone(NSError);
    v11 = String._bridgeToObjectiveC()();

    v12 = [v10 initWithDomain:v11 code:v9 userInfo:0];

    static DispatchTime.now()();
    if (a1)
    {
      type metadata accessor for SatelliteErrorLocationAccessNotAuthorized(0);
      swift_allocObject();
      v13 = sub_100199A4C(v12, v8);
      v14 = type metadata accessor for SatelliteErrorLocationAccessNotAuthorized;
      v15 = sub_10019F300;
    }

    else
    {
      type metadata accessor for CompassErrorLocationAccessNotAuthorized(0);
      swift_allocObject();
      v13 = sub_10019A0A8(v12, v8);
      v14 = type metadata accessor for CompassErrorLocationAccessNotAuthorized;
      v15 = sub_10019EA48;
    }

    sub_10019DF8C(v13, v3, v14, v15);
  }

  swift_beginAccess();
  v16 = *(v3 + 16);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 32;

    do
    {
      sub_1000089B0(v18, v22);
      v19 = v23;
      v20 = v24;
      sub_1000088DC(v22, v23);
      (*(v20 + 16))(a1 & 1, a2 & 1, v19, v20);
      sub_100008964(v22);
      v18 += 40;
      --v17;
    }

    while (v17);
  }

  return sub_10019BEBC();
}

unint64_t sub_10019BA90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10516CoreMotionErrors__lastPeriodicCheckAt;
  swift_beginAccess();
  sub_1001451C0(v2 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100008FA0(v9, &qword_100356518);
    (*(v11 + 16))(v6, a1, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    v15 = v2 + v14;
    v16 = v6;
LABEL_3:
    sub_1000C6F74(v16, v15, &qword_100356518);
    return swift_endAccess();
  }

  (*(v11 + 32))(v13, v9, v10);
  v18 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() < v18)
  {
    v19 = DispatchTime.uptimeNanoseconds.getter();
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v19 < result)
    {
      __break(1u);
      return result;
    }

    if (v19 - result >= 0x12A153440)
    {
      swift_beginAccess();
      v20 = *(v2 + 16);
      v21 = *(v20 + 16);
      if (v21)
      {
        v26 = v6;
        v27 = v2;
        v22 = v20 + 32;
        v25 = v20;

        do
        {
          sub_1000089B0(v22, v28);
          v23 = v29;
          v24 = v30;
          sub_1000088DC(v28, v29);
          (*(v24 + 24))(a1, v23, v24);
          sub_100008964(v28);
          v22 += 40;
          --v21;
        }

        while (v21);

        v6 = v26;
        v2 = v27;
      }

      (*(v11 + 8))(v13, v10);
      (*(v11 + 16))(v6, a1, v10);
      (*(v11 + 56))(v6, 0, 1, v10);
      swift_beginAccess();
      v15 = v2 + v14;
      v16 = v6;
      goto LABEL_3;
    }
  }

  return (*(v11 + 8))(v13, v10);
}

BOOL sub_10019BE4C(void *a1, void *a2)
{
  sub_1000088DC(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  sub_1000088DC(a2, a2[3]);
  return DynamicType == swift_getDynamicType();
}

uint64_t sub_10019BEBC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = v2[2];
  result = swift_beginAccess();
  if (v3)
  {
    v5 = 0;
    v6 = 9;
    while (1)
    {
      if (v5 >= v2[2])
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_1000089B0(&v2[v6 - 5], &v18);
      v7 = v19;
      v8 = v20;
      sub_1000088DC(&v18, v19);
      v9 = (*(v8 + 40))(v7, v8);
      result = sub_100008964(&v18);
      v10 = v5 + 1;
      if (v9)
      {
        break;
      }

      v6 += 5;
      ++v5;
      if (v3 == v10)
      {
        goto LABEL_6;
      }
    }

    v11 = v2[2];
    if (v11 - 1 == v5)
    {
      goto LABEL_7;
    }

    while (v10 < v11)
    {
      sub_1000089B0(&v2[v6], &v18);
      v12 = v19;
      v13 = v20;
      sub_1000088DC(&v18, v19);
      v14 = (*(v13 + 40))(v12, v13);
      result = sub_100008964(&v18);
      if ((v14 & 1) == 0)
      {
        if (v10 != v5)
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          v15 = v2[2];
          if (v5 >= v15)
          {
            goto LABEL_28;
          }

          result = sub_1000089B0(&v2[5 * v5 + 4], &v18);
          if (v10 >= v15)
          {
            goto LABEL_29;
          }

          sub_1000089B0(&v2[v6], v17);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(v1 + 16) = v2;
          if ((result & 1) == 0)
          {
            result = sub_10019D0A4(v2);
            v2 = result;
            *(v1 + 16) = result;
          }

          if (v5 >= v2[2])
          {
            goto LABEL_30;
          }

          v16 = &v2[5 * v5];
          sub_100008964((v16 + 4));
          result = sub_100008A18(v17, (v16 + 4));
          *(v1 + 16) = v2;
          if (v10 >= v2[2])
          {
            goto LABEL_31;
          }

          sub_100008964(&v2[v6]);
          result = sub_100008A18(&v18, &v2[v6]);
          *(v1 + 16) = v2;
        }

        ++v5;
      }

      ++v10;
      v11 = v2[2];
      v6 += 5;
      if (v10 == v11)
      {
        if (v10 >= v5)
        {
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_25;
      }
    }

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
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_6:
    v5 = v2[2];
    v10 = v5;
LABEL_7:
    sub_10019E970(v5, v10, sub_10017C470, sub_10019E884);
    swift_endAccess();
    return v3 != *(*(v1 + 16) + 16);
  }

  return result;
}

uint64_t sub_10019C164()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10516CoreMotionErrors__lastPeriodicCheckAt, &qword_100356518);

  return swift_deallocClassInstance();
}

void sub_10019C208()
{
  sub_10019C790(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10019C2D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DispatchTime();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10019C398(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DispatchTime();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10019C43C()
{
  sub_10001D630(319, &qword_100363868);
  if (v0 <= 0x3F)
  {
    sub_10019C4E8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DispatchTime();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10019C4E8()
{
  if (!qword_100363870)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100363870);
    }
  }
}

uint64_t sub_10019C55C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1000040A8(&qword_1003638A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10019C62C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1000040A8(&qword_1003638A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10019C6F8()
{
  sub_10019C790(319, &unk_100363918, type metadata accessor for DeviceOrientationError);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10019C790(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10019C7E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10019C804(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

uint64_t sub_10019C850(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = *v2;
  result = sub_1001DDFA4(a1, a2, *v2);
  if (!v3)
  {
    v40 = v15;
    v43 = 0;
    if (v18)
    {
      return v16[2];
    }

    v33 = v2;
    v34 = v9;
    v37 = a1;
    v41 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v16 + 2;
      v20 = v16[2];
      v22 = v40;
      if (v19 == v20)
      {
        return v41;
      }

      v35 = a2;
      v36 = v7;
      while (v19 < v20)
      {
        v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v42 = v16;
        v38 = v23;
        v24 = v16 + v23;
        v25 = *(v7 + 72);
        v39 = v25 * v19;
        sub_10019ECF0(&v24[v25 * v19], v22, type metadata accessor for MessageSimulationEngineImplementation.MessageProgress);
        v26 = v43;
        v27 = v37(v22);
        result = sub_10019EDC4(v22, type metadata accessor for MessageSimulationEngineImplementation.MessageProgress);
        v43 = v26;
        if (v26)
        {
          return result;
        }

        if (v27)
        {
          v7 = v36;
          v22 = v40;
          v16 = v42;
        }

        else
        {
          v22 = v40;
          v28 = v41;
          if (v19 == v41)
          {
            v7 = v36;
            v16 = v42;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v29 = *v21;
            if (v41 >= *v21)
            {
              goto LABEL_27;
            }

            v30 = v25 * v41;
            result = sub_10019ECF0(&v24[v25 * v41], v12, type metadata accessor for MessageSimulationEngineImplementation.MessageProgress);
            if (v19 >= v29)
            {
              goto LABEL_28;
            }

            v31 = v39;
            sub_10019ECF0(&v24[v39], v34, type metadata accessor for MessageSimulationEngineImplementation.MessageProgress);
            v16 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_10019CFF0(v16);
            }

            v32 = v16 + v38;
            result = sub_10019F1DC(v34, v16 + v38 + v30);
            v7 = v36;
            if (v19 >= v16[2])
            {
              goto LABEL_29;
            }

            result = sub_10019F1DC(v12, &v32[v31]);
            *v33 = v16;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v19;
        v21 = v16 + 2;
        v20 = v16[2];
        if (v19 == v20)
        {
          return v41;
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
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10019CB78(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_1001DE0C0(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_10019D004(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_10019D004(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10019CDFC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = a2;
  v7 = *v2;
  result = sub_1001DE1DC(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v9)
  {
    return v7[2];
  }

  v4 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v12 = v7 + 2;
    v11 = v7[2];
    if (v10 == v11)
    {
      return v4;
    }

    v20 = a1;
    v13 = 40 * result + 72;
    while (v10 < v11)
    {
      sub_1000089B0(v7 + v13, v19);
      v14 = v5;
      v15 = v20(v19);
      result = sub_100008964(v19);
      if (v15)
      {
        v5 = v14;
      }

      else
      {
        if (v10 == v4)
        {
          v5 = v14;
        }

        else
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v16 = *v12;
          if (v4 >= v16)
          {
            goto LABEL_24;
          }

          result = sub_1000089B0(&v7[5 * v4 + 4], v19);
          if (v10 >= v16)
          {
            goto LABEL_25;
          }

          sub_1000089B0(v7 + v13, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_10019D0A4(v7);
          }

          v5 = v14;
          v17 = &v7[5 * v4];
          sub_100008964((v17 + 4));
          result = sub_100008A18(v18, (v17 + 4));
          if (v10 >= v7[2])
          {
            goto LABEL_26;
          }

          sub_100008964(v7 + v13);
          result = sub_100008A18(v19, v7 + v13);
          *v2 = v7;
        }

        ++v4;
      }

      ++v10;
      v12 = v7 + 2;
      v11 = v7[2];
      v13 += 40;
      if (v10 == v11)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10019D004(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

Swift::Int sub_10019D0B8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000040A8(&unk_100363950);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10019D32C(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_10019D1C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10019D1C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v7 = v6;
    v16 = v5;
    while (1)
    {
      sub_1000089B0(v5, &v20);
      sub_1000089B0(v5 - 40, v17);
      v8 = v21;
      v9 = v22;
      sub_1000088DC(&v20, v21);
      LOBYTE(v8) = (*(v9 + 48))(v8, v9);
      v10 = v18;
      v11 = v19;
      sub_1000088DC(v17, v18);
      v12 = (*(v11 + 48))(v10, v11);
      sub_100008964(v17);
      result = sub_100008964(&v20);
      if (v12 < v8)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v16 + 40;
        --v6;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_100008A18(v5, &v20);
      v13 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v13;
      *(v5 + 32) = *(v5 - 8);
      result = sub_100008A18(&v20, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10019D32C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v105 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_91:
    v8 = *v105;
    if (!*v105)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_10019DF64(v9);
      v9 = result;
    }

    v119 = v9;
    v92 = *(v9 + 16);
    if (v92 >= 2)
    {
      while (1)
      {
        v93 = *v6;
        if (!*v6)
        {
          goto LABEL_127;
        }

        v6 = (v92 - 1);
        v94 = *(v9 + 16 * v92);
        v95 = v9;
        v96 = *(v9 + 16 * (v92 - 1) + 32);
        v9 = *(v9 + 16 * (v92 - 1) + 40);
        sub_10019DB00((v93 + 40 * v94), (v93 + 40 * v96), v93 + 40 * v9, v8);
        if (v5)
        {
        }

        if (v9 < v94)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_10019DF64(v95);
        }

        if (v92 - 2 >= *(v95 + 2))
        {
          goto LABEL_117;
        }

        v97 = &v95[16 * v92];
        *v97 = v94;
        *(v97 + 1) = v9;
        v119 = v95;
        result = sub_10019DED8(v6);
        v9 = v119;
        v92 = *(v119 + 16);
        v6 = a3;
        if (v92 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if ((v8 + 1) >= v7)
    {
      goto LABEL_21;
    }

    v111 = v7;
    v101 = v5;
    v12 = *v6;
    sub_1000089B0(*v6 + 40 * v11, &v116);
    v13 = 40 * v8;
    v14 = v12 + 40 * v8;
    sub_1000089B0(v14, v113);
    v15 = v117;
    v16 = v118;
    sub_1000088DC(&v116, v117);
    v109 = (*(v16 + 48))(v15, v16);
    v18 = v114;
    v17 = v115;
    sub_1000088DC(v113, v114);
    v107 = (*(v17 + 48))(v18, v17);
    sub_100008964(v113);
    result = sub_100008964(&v116);
    v103 = v8;
    v19 = v8 + 2;
    v20 = v14 + 80;
    while (1)
    {
      v11 = v111;
      if (v111 == v19)
      {
        break;
      }

      sub_1000089B0(v20, &v116);
      sub_1000089B0(v20 - 40, v113);
      v22 = v117;
      v21 = v118;
      sub_1000088DC(&v116, v117);
      v8 = (*(v21 + 48))(v22, v21);
      v24 = v114;
      v23 = v115;
      sub_1000088DC(v113, v114);
      v25 = (*(v23 + 48))(v24, v23);
      sub_100008964(v113);
      result = sub_100008964(&v116);
      ++v19;
      v20 += 40;
      if (v107 >= v109 == v25 < v8)
      {
        v11 = v19 - 1;
        break;
      }
    }

    v5 = v101;
    v6 = a3;
    if (v107 >= v109)
    {
      v8 = v103;
      if (v11 < v103)
      {
        goto LABEL_120;
      }

      if (v103 >= v11)
      {
        v10 = v103;
        goto LABEL_21;
      }

      v98 = v9;
      v26 = 40 * v11 - 40;
      v27 = v11;
      do
      {
        if (v8 != --v27)
        {
          v32 = *a3;
          if (!*a3)
          {
            goto LABEL_126;
          }

          v28 = v32 + v13;
          v29 = v32 + v26;
          sub_100008A18((v32 + v13), &v116);
          v30 = *(v29 + 32);
          v31 = *(v29 + 16);
          *v28 = *v29;
          *(v28 + 16) = v31;
          *(v28 + 32) = v30;
          result = sub_100008A18(&v116, v29);
        }

        ++v8;
        v26 -= 40;
        v13 += 40;
      }

      while (v8 < v27);
      v9 = v98;
    }

    v10 = v103;
LABEL_21:
    v33 = v6[1];
    if (v11 < v33)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_119;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (&v10[a4] >= v33)
        {
          v8 = v6[1];
        }

        else
        {
          v8 = &v10[a4];
        }

        if (v8 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v11 != v8)
        {
          break;
        }
      }
    }

    v8 = v11;
    if (v11 < v10)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10017C168(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v35 = *(v9 + 16);
    v34 = *(v9 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_10017C168((v34 > 1), v35 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v36;
    v37 = v9 + 16 * v35;
    *(v37 + 32) = v10;
    *(v37 + 40) = v8;
    v38 = *v105;
    if (!*v105)
    {
      goto LABEL_128;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v9 + 32);
          v41 = *(v9 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_50:
          if (v43)
          {
            goto LABEL_107;
          }

          v56 = (v9 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_110;
          }

          v62 = (v9 + 32 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_114;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v66 = (v9 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_64:
        if (v61)
        {
          goto LABEL_109;
        }

        v69 = v9 + 16 * v39;
        v71 = *(v69 + 32);
        v70 = *(v69 + 40);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_112;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_71:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_125;
        }

        v78 = *(v9 + 32 + 16 * v77);
        v79 = *(v9 + 32 + 16 * v39 + 8);
        sub_10019DB00((*v6 + 40 * v78), (*v6 + 40 * *(v9 + 32 + 16 * v39)), *v6 + 40 * v79, v38);
        if (v5)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10019DF64(v9);
        }

        if (v77 >= *(v9 + 16))
        {
          goto LABEL_104;
        }

        v80 = v9 + 16 * v77;
        *(v80 + 32) = v78;
        *(v80 + 40) = v79;
        v119 = v9;
        result = sub_10019DED8(v39);
        v9 = v119;
        v36 = *(v119 + 16);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = v9 + 32 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_105;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_106;
      }

      v51 = (v9 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_108;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_111;
      }

      if (v55 >= v47)
      {
        v73 = (v9 + 32 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_115;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v99 = v9;
  v102 = v5;
  v104 = v10;
  v81 = *v6;
  v82 = *v6 + 40 * v11;
  v83 = v10 - v11;
  v108 = v8;
LABEL_82:
  v110 = v82;
  v112 = v11;
  v84 = v83;
  while (1)
  {
    sub_1000089B0(v82, &v116);
    sub_1000089B0(v82 - 40, v113);
    v85 = v117;
    v86 = v118;
    sub_1000088DC(&v116, v117);
    LOBYTE(v85) = (*(v86 + 48))(v85, v86);
    v87 = v114;
    v88 = v115;
    sub_1000088DC(v113, v114);
    v89 = (*(v88 + 48))(v87, v88);
    sub_100008964(v113);
    result = sub_100008964(&v116);
    if (v89 < v85)
    {
LABEL_81:
      ++v11;
      v82 = v110 + 40;
      --v83;
      v8 = v108;
      if (v112 + 1 != v108)
      {
        goto LABEL_82;
      }

      v5 = v102;
      v10 = v104;
      v6 = a3;
      v9 = v99;
      if (v108 < v104)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v81)
    {
      break;
    }

    sub_100008A18(v82, &v116);
    v90 = *(v82 - 24);
    *v82 = *(v82 - 40);
    *(v82 + 16) = v90;
    *(v82 + 32) = *(v82 - 8);
    sub_100008A18(&v116, v82 - 40);
    v82 -= 40;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_10019DB00(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst - __src;
  v7 = (__dst - __src) / 40;
  v8 = a3 - __dst;
  v9 = (a3 - __dst) / 40;
  if (v7 >= v9)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      v25 = __dst;
      memmove(a4, __dst, 40 * v9);
      __dst = v25;
    }

    v12 = &v13[40 * v9];
    if (v8 < 40)
    {
      v24 = __dst;
    }

    else
    {
      v26 = __dst;
      if (__dst <= v5)
      {
        v24 = __dst;
      }

      else
      {
        v47 = v5;
        v48 = v13;
        do
        {
          v55 = v26;
          v27 = (v26 - 40);
          v28 = (v12 - 40);
          v29 = v4 - 40;
          while (1)
          {
            v32 = v28 + 40;
            v33 = v29;
            v34 = (v29 + 40);
            sub_1000089B0(v28, v52);
            v35 = v27;
            sub_1000089B0(v27, v49);
            v37 = v53;
            v36 = v54;
            sub_1000088DC(v52, v53);
            LOBYTE(v36) = (*(v36 + 48))(v37, v36);
            v39 = v50;
            v38 = v51;
            sub_1000088DC(v49, v50);
            v40 = (*(v38 + 48))(v39, v38);
            sub_100008964(v49);
            sub_100008964(v52);
            if (v40 >= v36)
            {
              break;
            }

            if (v34 != v32)
            {
              v41 = *v28;
              v42 = *(v28 + 16);
              *(v33 + 32) = *(v28 + 32);
              *v33 = v41;
              *(v33 + 16) = v42;
            }

            v30 = v28 - 40;
            v29 = v33 - 40;
            v13 = v48;
            v31 = v28 > v48;
            v28 -= 40;
            v27 = v35;
            if (!v31)
            {
              v12 = (v30 + 40);
              v24 = v55;
              goto LABEL_36;
            }
          }

          v24 = v35;
          v4 = v33;
          if (v34 != v55)
          {
            v43 = *v35;
            v44 = *(v35 + 1);
            *(v33 + 32) = *(v35 + 4);
            *v33 = v43;
            *(v33 + 16) = v44;
          }

          v13 = v48;
          v12 = (v28 + 40);
          if (v32 <= v48)
          {
            break;
          }

          v26 = v35;
        }

        while (v35 > v47);
        v12 = (v28 + 40);
      }
    }
  }

  else
  {
    v10 = __dst;
    if (a4 != __src || &__src[40 * v7] <= a4)
    {
      v11 = a4;
      memmove(a4, __src, 40 * v7);
      a4 = v11;
    }

    v12 = &a4[40 * v7];
    v13 = a4;
    if (v6 >= 40 && v10 < v4)
    {
      v55 = v12;
      while (1)
      {
        v14 = v4;
        sub_1000089B0(v10, v52);
        sub_1000089B0(v13, v49);
        v15 = v53;
        v16 = v54;
        sub_1000088DC(v52, v53);
        LOBYTE(v15) = (*(v16 + 48))(v15, v16);
        v17 = v50;
        v18 = v51;
        sub_1000088DC(v49, v50);
        v19 = (*(v18 + 48))(v17, v18);
        sub_100008964(v49);
        sub_100008964(v52);
        if (v19 >= v15)
        {
          break;
        }

        v20 = v13;
        v21 = v5 == v13;
        v13 += 40;
        v12 = v55;
        if (!v21)
        {
          goto LABEL_13;
        }

LABEL_14:
        v5 += 40;
        if (v13 < v12)
        {
          v4 = v14;
          if (v10 < v14)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      v20 = v10;
      v21 = v5 == v10;
      v10 += 40;
      v12 = v55;
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_13:
      v22 = *v20;
      v23 = *(v20 + 1);
      *(v5 + 4) = *(v20 + 4);
      *v5 = v22;
      *(v5 + 1) = v23;
      goto LABEL_14;
    }

LABEL_16:
    v24 = v5;
  }

LABEL_36:
  v45 = (v12 - v13) / 40;
  if (v24 != v13 || v24 >= &v13[40 * v45])
  {
    memmove(v24, v13, 40 * v45);
  }

  return 1;
}

uint64_t sub_10019DED8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10019DF64(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10019DF8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v16[3] = a3(0);
  v16[4] = &off_100334B28;
  v16[0] = a1;
  v14[2] = v16;
  swift_beginAccess();

  v7 = (a2 + 16);
  v8 = sub_10019CDFC(a4, v14);
  v9 = *(*(a2 + 16) + 16);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_10019E970(v8, v9, sub_10017C470, sub_10019E884);
    sub_1000089B0(v16, v15);
    v7 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v7 = sub_10017C470(0, v7[2] + 1, 1, v7);
  *(a2 + 16) = v7;
LABEL_3:
  v12 = v7[2];
  v11 = v7[3];
  if (v12 >= v11 >> 1)
  {
    v7 = sub_10017C470((v11 > 1), v12 + 1, 1, v7);
  }

  v7[2] = v12 + 1;
  sub_100008A18(v15, &v7[5 * v12 + 4]);
  *(a2 + 16) = v7;
  sub_100193690((a2 + 16));
  swift_endAccess();
  return sub_100008964(v16);
}

BOOL sub_10019E10C(double *a1, double *a2)
{
  if ((static Angle.== infix(_:_:)() & 1) == 0 || (static Angle.== infix(_:_:)() & 1) == 0 || (static Angle.== infix(_:_:)() & 1) == 0 || (static Angle.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (a1[4] == a2[4] && a1[5] == a2[5] && a1[6] == a2[6] && a1[7] == a2[7])
  {
    return a1[8] == a2[8];
  }

  return result;
}

unint64_t sub_10019E1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10019E340(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
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

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019E42C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  type metadata accessor for TryOutTranscriptMessageItem(0);
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

uint64_t sub_10019E54C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1000F4814(result, 1);

  return sub_10019E42C(v6, v5, 1, v3);
}

unint64_t sub_10019E638(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
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

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

id sub_10019E710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 heading];
  v5 = v4 * 0.0174532925;
  if (v4 * 0.0174532925 < 0.0 || v5 >= 6.28318531)
  {
    v5 = v5 - floor(v5 / 6.28318531) * 6.28318531;
  }

  v6 = [a1 attitude];
  [v6 pitch];
  v8 = v7;

  v9 = [a1 attitude];
  [v9 roll];
  v11 = v10;

  v12 = [a1 attitude];
  [v12 yaw];
  v14 = v13;

  v15 = [a1 attitude];
  [v15 quaternion];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  result = [a1 timestamp];
  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  *(a2 + 64) = v25;
  return result;
}

unint64_t sub_10019E884(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_1000040A8(&unk_100363950);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019E970(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_10019EA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003638A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019EAD8()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10019EBB8()
{
  v1 = *(type metadata accessor for DispatchTime() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + 16);

  return sub_100198424(v5, v0 + v2, v4, v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_10019EC60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019EC78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10019ECB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10019ECF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10019ED5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019EDC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10019EE24()
{
  v1 = (type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v1[8] + v3;
  v6 = type metadata accessor for DeviceOrientationError(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    if (*(v5 + 16) != 1)
    {
    }

    v7 = *(v6 + 24);
    v8 = type metadata accessor for DispatchTime();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10019EFD0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10019F028()
{
  result = qword_100363988;
  if (!qword_100363988)
  {
    sub_10001D630(255, &qword_100363980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363988);
  }

  return result;
}

uint64_t sub_10019F11C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10019F15C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10019F1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019F254()
{
  result = qword_1003639A8;
  if (!qword_1003639A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003639A8);
  }

  return result;
}

uint64_t sub_10019F354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019F39C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10019F424()
{
  v1 = sub_1000040A8(&qword_1003639B0);
  __chkstk_darwin(v1);
  v3 = &v22[-v2];
  v4 = *(v0 + 32);
  if (v4)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 32))(v24, v5, v6);
    *v3 = static Alignment.center.getter();
    *(v3 + 1) = v7;
    v8 = sub_1000040A8(&qword_1003639B8);
    sub_10019F6D8(v0, v24, &v3[*(v8 + 44)]);
    v9 = swift_allocObject();
    v10 = *(v0 + 80);
    *(v9 + 5) = *(v0 + 64);
    *(v9 + 6) = v10;
    *(v9 + 7) = *(v0 + 96);
    v11 = *(v0 + 16);
    *(v9 + 1) = *v0;
    *(v9 + 2) = v11;
    v12 = *(v0 + 48);
    *(v9 + 3) = *(v0 + 32);
    *(v9 + 4) = v12;
    v13 = &v3[*(v1 + 36)];
    *v13 = sub_1001A106C;
    v13[1] = v9;
    v13[2] = 0;
    v13[3] = 0;
    v14 = *(v0 + 16);
    if (v14)
    {
      v22[7] = *(*(v14 + 56) + 122) & 1;
      v15 = swift_allocObject();
      v16 = *(v0 + 80);
      v15[5] = *(v0 + 64);
      v15[6] = v16;
      v15[7] = *(v0 + 96);
      v17 = *(v0 + 16);
      v15[1] = *v0;
      v15[2] = v17;
      v18 = *(v0 + 48);
      v15[3] = *(v0 + 32);
      v15[4] = v18;
      sub_1001A1074(v0, v23);
      sub_1001A1074(v0, v23);
      sub_1001A10E0();
      View.onChange<A>(of:initial:_:)();

      sub_1001A1198(v3);
      return sub_100008964(v24);
    }

    sub_1001A1074(v0, v23);
    type metadata accessor for ConnectionModel(0);
    v20 = &qword_100354F88;
    v21 = type metadata accessor for ConnectionModel;
  }

  else
  {
    type metadata accessor for UIMetrics();
    v20 = &qword_100354D40;
    v21 = type metadata accessor for UIMetrics;
  }

  sub_1001A1614(v20, v21);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10019F6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = a1;
  v34 = a1;
  v40 = a3;
  v5 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000040A8(&qword_1003639E0);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v34 - v9;
  v11 = sub_1000040A8(&qword_1003639E8);
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin(v11);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v41 = &v34 - v14;
  v15 = static HorizontalAlignment.center.getter();
  LOBYTE(v42) = 0;
  sub_10019FC3C(v4, a2, &v58);
  v53 = v64;
  v54 = v65;
  v49 = v60;
  v50 = v61;
  v51 = v62;
  v52 = v63;
  v47 = v58;
  v48 = v59;
  v56[6] = v64;
  v56[7] = v65;
  v56[2] = v60;
  v56[3] = v61;
  v56[4] = v62;
  v56[5] = v63;
  v55 = v66;
  v57 = v66;
  v56[0] = v58;
  v56[1] = v59;
  sub_100006C20(&v47, &v44, &qword_1003639F0);
  sub_100008FA0(v56, &qword_1003639F0);
  *(&v46[5] + 7) = v52;
  *(&v46[6] + 7) = v53;
  *(&v46[7] + 7) = v54;
  *(&v46[1] + 7) = v48;
  *(&v46[2] + 7) = v49;
  *(&v46[3] + 7) = v50;
  *(&v46[4] + 7) = v51;
  *(&v46[8] + 7) = v55;
  *(v46 + 7) = v47;
  LOBYTE(v4) = v42;
  v16 = static SafeAreaRegions.all.getter();
  v17 = v16 & ~static SafeAreaRegions.keyboard.getter();
  v18 = static Edge.Set.all.getter();
  *(&v45[5] + 1) = v46[5];
  *(&v45[6] + 1) = v46[6];
  *(&v45[7] + 1) = v46[7];
  v45[8] = *(&v46[7] + 15);
  *(&v45[1] + 1) = v46[1];
  *(&v45[2] + 1) = v46[2];
  *(&v45[3] + 1) = v46[3];
  *(&v45[4] + 1) = v46[4];
  v44 = v15;
  LOBYTE(v45[0]) = v4;
  *(v45 + 1) = v46[0];
  *&v45[9] = v17;
  BYTE8(v45[9]) = v18;
  (*(v6 + 104))(v8, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v5);
  v19 = sub_1000040A8(&qword_1003639F8);
  v20 = sub_1001A1340();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v6 + 8))(v8, v5);
  v66 = v45[7];
  v67[0] = v45[8];
  *(v67 + 9) = *(&v45[8] + 9);
  v62 = v45[3];
  v63 = v45[4];
  v64 = v45[5];
  v65 = v45[6];
  v58 = v44;
  v59 = v45[0];
  v60 = v45[1];
  v61 = v45[2];
  sub_100008FA0(&v58, &qword_1003639F8);
  *&v44 = v19;
  *(&v44 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v41;
  v22 = v35;
  View.navigationBarBackButtonHidden(_:)();
  (*(v37 + 8))(v10, v22);
  v42 = *(v34 + 64);
  v43 = *(v34 + 80);
  sub_1000040A8(&qword_100363A18);
  State.projectedValue.getter();
  v23 = v44;
  v24 = *&v45[0];
  LODWORD(v37) = BYTE8(v45[0]);
  v25 = v38;
  v26 = *(v38 + 16);
  v27 = v36;
  v28 = v21;
  v29 = v39;
  v26(v36, v28, v39);
  v30 = v40;
  v26(v40, v27, v29);
  v31 = &v30[*(sub_1000040A8(&qword_100363A20) + 48)];
  *v31 = v23;
  *(v31 + 2) = v24;
  v31[24] = v37;
  v32 = *(v25 + 8);

  v32(v41, v29);

  return (v32)(v27, v29);
}

uint64_t sub_10019FC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v66._object = 0x800000010029FB70;
  v8._object = 0x800000010029C8E0;
  v66._countAndFlagsBits = 0xD00000000000004ELL;
  v8._countAndFlagsBits = 0xD000000000000012;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v66);

  v11 = [v6 mainBundle];
  v67._object = 0x80000001002A2420;
  v12._countAndFlagsBits = 0xD000000000000028;
  v12._object = 0x80000001002A23F0;
  v67._countAndFlagsBits = 0xD00000000000003FLL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v67);

  v50 = *(a1 + 64);
  v51 = *(a1 + 80);
  sub_1000040A8(&qword_100363A18);
  State.wrappedValue.getter();
  v15 = v60;
  type metadata accessor for UIMetrics();
  sub_1001A1614(&qword_100354D40, type metadata accessor for UIMetrics);
  v35 = EnvironmentObject.init()();
  v17 = v16;
  v36 = v16;
  v57 = BYTE8(v60);
  sub_1000089B0(a2, &v50);
  v18 = swift_allocObject();
  v19 = *(a1 + 80);
  v18[5] = *(a1 + 64);
  v18[6] = v19;
  v18[7] = *(a1 + 96);
  v20 = *(a1 + 16);
  v18[1] = *a1;
  v18[2] = v20;
  v21 = *(a1 + 48);
  v18[3] = *(a1 + 32);
  v18[4] = v21;
  sub_100008A18(&v50, (v18 + 8));
  sub_1001A1074(a1, &v50);
  v22 = EnvironmentObject.init()();
  v24 = v23;
  type metadata accessor for CGSize(0);
  v60 = 0uLL;
  State.init(wrappedValue:)();
  v25 = v50;
  v26 = v51;
  v27 = v57;
  *&v58[0] = v35;
  *(&v58[0] + 1) = v17;
  v58[1] = v10;
  *v59 = v14;
  *&v59[16] = v15;
  v59[24] = v57;
  *&v44[9] = *&v59[9];
  v43 = v10;
  *v44 = v14;
  v42 = v58[0];
  *&v60 = v22;
  *(&v60 + 1) = v24;
  v61 = sub_10019FFE4;
  v62 = 0;
  *&v63 = sub_1001A1470;
  *(&v63 + 1) = v18;
  v64 = v50;
  v65 = v51;
  v49 = v51;
  v47 = v63;
  v48 = v50;
  v45 = v60;
  v46 = sub_10019FFE4;
  v28 = v58[0];
  v29 = *&v44[16];
  *(a3 + 32) = v14;
  *(a3 + 48) = v29;
  *a3 = v28;
  *(a3 + 16) = v10;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  *(a3 + 128) = v49;
  *(a3 + 96) = v32;
  *(a3 + 112) = v33;
  *(a3 + 64) = v30;
  *(a3 + 80) = v31;
  *&v50 = v22;
  *(&v50 + 1) = v24;
  v51 = sub_10019FFE4;
  v52 = 0;
  v53 = sub_1001A1470;
  v54 = v18;
  v55 = v25;
  v56 = v26;
  sub_1001A147C(v58, v37);
  sub_100006C20(&v60, v37, &qword_100363A28);
  sub_100008FA0(&v50, &qword_100363A28);
  v37[0] = v35;
  v37[1] = v36;
  v38 = v10;
  v39 = v14;
  v40 = v15;
  v41 = v27;
  return sub_1001A14D8(v37);
}

double sub_10019FFE4@<D0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v25 = 0;
  sub_1001A016C(&v12);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v38[8] = v20;
  v38[9] = v21;
  v38[10] = v22;
  v38[11] = v23;
  v38[4] = v16;
  v38[5] = v17;
  v38[6] = v18;
  v38[7] = v19;
  v38[0] = v12;
  v38[1] = v13;
  v38[2] = v14;
  v38[3] = v15;
  sub_100006C20(&v26, &v11, &qword_100363A30);
  sub_100008FA0(v38, &qword_100363A30);
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[167] = v36;
  *&v24[183] = v37;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[119] = v33;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  *&v24[55] = v29;
  v3 = *&v24[128];
  *(a1 + 161) = *&v24[144];
  v4 = *&v24[176];
  *(a1 + 177) = *&v24[160];
  *(a1 + 193) = v4;
  v5 = *&v24[64];
  *(a1 + 97) = *&v24[80];
  v6 = *&v24[112];
  *(a1 + 113) = *&v24[96];
  *(a1 + 129) = v6;
  *(a1 + 145) = v3;
  v7 = *v24;
  *(a1 + 33) = *&v24[16];
  result = *&v24[32];
  v9 = *&v24[48];
  *(a1 + 49) = *&v24[32];
  *(a1 + 65) = v9;
  *(a1 + 81) = v5;
  v10 = v25;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 208) = *&v24[191];
  *(a1 + 17) = v7;
  return result;
}

uint64_t sub_1001A016C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConnectionClosedModel(0);
  sub_1001A1614(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for ConnectivityModel();
  sub_1001A1614(&qword_100354F78, type metadata accessor for ConnectivityModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for GuidanceModel(0);
  sub_1001A1614(&qword_100354F80, type metadata accessor for GuidanceModel);
  v8 = EnvironmentObject.init()();
  v38 = v9;
  v39 = v8;
  type metadata accessor for OrientationModel();
  sub_1001A1614(&qword_10035B1B0, type metadata accessor for OrientationModel);
  v10 = EnvironmentObject.init()();
  v36 = v11;
  v37 = v10;
  type metadata accessor for StewieModel(0);
  sub_1001A1614(&qword_1003561B8, type metadata accessor for StewieModel);
  v35 = EnvironmentObject.init()();
  v42 = v12;
  type metadata accessor for UIMetrics();
  sub_1001A1614(&qword_100354D40, type metadata accessor for UIMetrics);
  v13 = EnvironmentObject.init()();
  v40 = v14;
  v41 = v13;
  v15 = EnvironmentObject.init()();
  v33 = v16;
  v34 = v15;
  v17 = EnvironmentObject.init()();
  v31 = v18;
  v32 = v17;
  type metadata accessor for GuidanceMessagesModel();
  sub_1001A1614(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
  v19 = EnvironmentObject.init()();
  v29 = v20;
  v30 = v19;
  v21 = EnvironmentObject.init()();
  *&v43 = v2;
  *(&v43 + 1) = v4;
  *&v44 = v5;
  *(&v44 + 1) = v7;
  *&v45 = v39;
  *(&v45 + 1) = v38;
  *&v46 = v37;
  *(&v46 + 1) = v36;
  *&v47 = v35;
  *(&v47 + 1) = v42;
  *&v48 = v41;
  *(&v48 + 1) = v40;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = 0;
  v22 = v44;
  *a1 = v43;
  *(a1 + 16) = v22;
  v23 = v45;
  v24 = v46;
  v25 = v49;
  v26 = v47;
  *(a1 + 80) = v48;
  *(a1 + 96) = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v26;
  *(a1 + 32) = v23;
  *(a1 + 112) = v34;
  *(a1 + 120) = v33;
  *(a1 + 128) = v32;
  *(a1 + 136) = v31;
  *(a1 + 144) = 32;
  *(a1 + 152) = 0xE100000000000000;
  *(a1 + 160) = v30;
  *(a1 + 168) = v29;
  *(a1 + 176) = v21;
  *(a1 + 184) = v27;
  sub_1000E091C(&v43, v50);
  v50[0] = v2;
  v50[1] = v4;
  v50[2] = v5;
  v50[3] = v7;
  v50[4] = v39;
  v50[5] = v38;
  v50[6] = v37;
  v50[7] = v36;
  v50[8] = v35;
  v50[9] = v42;
  v50[10] = v41;
  v50[11] = v40;
  v51 = 0;
  v52 = 0;
  return sub_1000E0978(v50);
}

void *sub_1001A049C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  __dst[0] = *(a1 + 48);
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.getter();
  if (LOBYTE(__src[0]) != 1)
  {
    sub_1001A152C(__dst);
    return memcpy(a3, __dst, 0x139uLL);
  }

  v44 = a3;
  v6 = [objc_opt_self() mainBundle];
  v59._object = 0x80000001002A2490;
  v7._object = 0x80000001002A2460;
  v7._countAndFlagsBits = 0x1000000000000026;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0xD000000000000067;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v59);

  __dst[0] = v9;
  sub_100031770();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.title2.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v42 = v16;
  v43 = v15;
  v18 = v17;
  v41 = v19;

  sub_1000317C4(v10, v12, v14 & 1);

  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = *(v20 + 112);

    v22 = v21;
    v23 = static UIContentSizeCategory.>= infix(_:_:)();

    v40 = (v23 & 1) == 0;
    KeyPath = swift_getKeyPath();
    v24 = *(v20 + 112);
    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v46[55] = v54;
    *&v46[71] = v55;
    *&v46[87] = v56;
    *&v46[103] = v57;
    *&v46[7] = v51;
    *&v46[23] = v52;
    v25 = v18 & 1;
    v47 = v18 & 1;
    *&v46[39] = v53;
    v26 = *(v20 + 112);

    v27 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v27)
    {
      v28 = 1.0;
    }

    else
    {
      v28 = 0.5;
    }

    v29 = swift_getKeyPath();
    v30 = static Edge.Set.top.getter();
    v48 = 1;
    v31 = sub_1000088DC(a2, a2[3]);
    v37 = *(*v31 + 200);
    v38 = *(*v31 + 184);
    v32 = static Edge.Set.all.getter();
    v49 = 0;
    v33 = sub_1000088DC(a2, a2[3]);
    v35 = *(*v33 + 96);
    v36 = *(*v33 + 80);
    *(&__src[13] + 1) = *&v46[64];
    *(&__src[15] + 1) = *&v46[80];
    *(&__src[17] + 1) = *&v46[96];
    *(&__src[5] + 1) = *v46;
    *(&__src[7] + 1) = *&v46[16];
    *(&__src[9] + 1) = *&v46[32];
    v50 = 0;
    __src[0] = v43;
    __src[1] = v42;
    LOBYTE(__src[2]) = v25;
    __src[3] = v41;
    __src[4] = KeyPath;
    LOBYTE(__src[5]) = v40;
    *(&__src[11] + 1) = *&v46[48];
    __src[19] = *&v46[111];
    __src[20] = v29;
    *&__src[21] = v28;
    LOBYTE(__src[22]) = v30;
    memset(&__src[23], 0, 32);
    LOBYTE(__src[27]) = 1;
    LOBYTE(__src[28]) = v32;
    *&__src[31] = v37;
    *&__src[29] = v38;
    LOBYTE(__src[33]) = 0;
    LOBYTE(__src[34]) = static Edge.Set.all.getter();
    *&__src[35] = v36;
    *&__src[37] = v35;
    LOBYTE(__src[39]) = 0;
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(__src);
    memcpy(__dst, __src, 0x139uLL);
    a3 = v44;
    return memcpy(a3, __dst, 0x139uLL);
  }

  type metadata accessor for UIMetrics();
  sub_1001A1614(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001A0930(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(*(v1 + 56) + 122);
    if (v2 != 2 && (v2 & 1) != 0)
    {
      return sub_1001A09CC();
    }
  }

  else
  {
    type metadata accessor for ConnectionModel(0);
    sub_1001A1614(&qword_100354F88, type metadata accessor for ConnectionModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A09CC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v23 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchTime();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v28 = v0[3];
  v26[0] = v0[3];
  v29 = *(&v28 + 1);
  sub_100006C20(&v29, aBlock, &qword_100354AB0);
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.getter();
  if (aBlock[0])
  {
    return sub_100008FA0(&v28, &qword_100354AA8);
  }

  v26[0] = v28;
  LOBYTE(aBlock[0]) = 1;
  v22 = v2;
  State.wrappedValue.setter();
  sub_100008FA0(&v28, &qword_100354AA8);
  sub_10000F574();
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v7 + 8);
  v21(v9, v25);
  v14 = swift_allocObject();
  v15 = v0[5];
  v14[5] = v0[4];
  v14[6] = v15;
  v14[7] = v0[6];
  v16 = v0[1];
  v14[1] = *v0;
  v14[2] = v16;
  v17 = v0[3];
  v14[3] = v0[2];
  v14[4] = v17;
  aBlock[4] = sub_1001A1270;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100335180;
  v18 = _Block_copy(aBlock);
  sub_1001A1074(v0, v26);

  static DispatchQoS.unspecified.getter();
  *&v26[0] = _swiftEmptyArrayStorage;
  sub_1001A1614(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v20;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v4, v1);
  (*(v23 + 8))(v6, v24);
  return (v21)(v12, v25);
}

uint64_t sub_1001A0EB0(void *a1)
{
  v2 = a1[11];
  v1 = a1[12];
  v3 = a1[13];
  v10 = v3;
  v11 = v2;
  v9[3] = v2;
  v9[4] = v1;
  v9[5] = v3;
  sub_1001A1290(&v11, v9);

  sub_100006C20(&v10, v9, &qword_100355E30);
  sub_1000040A8(&qword_1003639D8);
  Binding.wrappedValue.getter();
  v4 = v9[6];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10017B338(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_10017B338((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 0xD000000000000024;
  *(v7 + 5) = 0x800000010029E870;
  v9[0] = v2;
  v9[1] = v1;
  v9[2] = v3;
  Binding.wrappedValue.setter();
  sub_1001A12EC(&v11);

  return sub_100008FA0(&v10, &qword_100355E30);
}

uint64_t sub_1001A10AC(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    return sub_1001A09CC();
  }

  return result;
}

unint64_t sub_1001A10E0()
{
  result = qword_1003639C0;
  if (!qword_1003639C0)
  {
    sub_100008CF0(&qword_1003639B0);
    sub_100009274(&qword_1003639C8, &qword_1003639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003639C0);
  }

  return result;
}

uint64_t sub_1001A1198(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003639B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A1200()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1001A1278(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001A1340()
{
  result = qword_100363A00;
  if (!qword_100363A00)
  {
    sub_100008CF0(&qword_1003639F8);
    sub_100009274(&qword_100363A08, &qword_100363A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363A00);
  }

  return result;
}

uint64_t sub_1001A13F8()
{

  sub_100008964(v0 + 128);

  return _swift_deallocObject(v0, 168, 7);
}

double sub_1001A152C(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 297) = 0u;
  return result;
}

uint64_t sub_1001A156C@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1001A1598@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1001A1614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A165C()
{
  sub_100008CF0(&qword_1003639B0);
  sub_1001A10E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001A16DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A1724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001A17A0()
{
  v1 = sub_1000040A8(&qword_100357568);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - v3;
  v5 = v0[2];
  v6 = *(v5 + 24);
  *&v18[0] = *(v5 + 16);
  *(&v18[0] + 1) = v6;
  sub_100031770();

  Button<>.init<A>(_:action:)();
  v7 = *v0;
  if (*v0)
  {
    v8 = v0[3];
    v9 = v0[4];
    KeyPath = swift_getKeyPath();
    v17 = 0;
    *&v12 = KeyPath;
    BYTE8(v12) = 0;
    v13 = v5;
    *&v14 = 0xE000000000000000;
    *(&v14 + 1) = v8;
    *&v15 = v9;
    BYTE8(v15) = 0;
    v16 = v7;
    sub_100009274(&qword_100357588, &qword_100357568);
    sub_1001A4C40();

    View.buttonStyle<A>(_:)();
    v18[2] = v14;
    v18[3] = v15;
    v19 = v16;
    v18[0] = v12;
    v18[1] = v13;
    sub_1001A4C94(v18);
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001A582C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A19FC()
{
  v1 = sub_1000040A8(&qword_100357568);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - v3;
  v20 = *(v0 + 1);
  v18[0] = *(v0 + 1);

  sub_100032618(&v20, &v12);
  sub_100031770();

  Button<>.init<A>(_:action:)();
  type metadata accessor for OptionPresentation();
  v5 = swift_allocObject();
  *(v5 + 16) = v20;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = static Color.clear.getter();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  v6 = v0[5];
  v7 = *v0;
  if (*v0)
  {
    v8 = v0[4];
    v9 = *(v0 + 48);
    KeyPath = swift_getKeyPath();
    v17 = 0;
    *&v12 = KeyPath;
    BYTE8(v12) = 0;
    *&v13 = v5;
    *(&v13 + 1) = v8;
    *&v15 = 0;
    v14 = v6;
    BYTE8(v15) = v9;
    v16 = v7;
    sub_100009274(&qword_100357588, &qword_100357568);
    sub_1001A4C40();

    View.buttonStyle<A>(_:)();
    v18[2] = v14;
    v18[3] = v15;
    v19 = v16;
    v18[0] = v12;
    v18[1] = v13;
    sub_1001A4C94(v18);
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001A582C(&qword_100354D40, type metadata accessor for UIMetrics);

    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A1C9C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 8);
  v5 = *v0;
  v9 = *v0;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100008FA0(&v9, &qword_100359078);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1001A1E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = type metadata accessor for OpacityTransition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v35 = sub_1000040A8(&qword_100363A40);
  __chkstk_darwin(v35);
  v12 = &v35 - v11;
  v13 = *(v2 + 64);
  v15 = v13[9];
  v14 = v13[10];
  sub_1000088DC(v13 + 6, v15);
  (*(v14 + 24))(v40, v15, v14);
  v36 = static HorizontalAlignment.center.getter();
  v37 = a1;
  sub_1001A2170(v2, a1, &v39);
  v16 = v39;
  OpacityTransition.init()();
  (*(v5 + 16))(v7, v10, v4);
  sub_1001A582C(&qword_100356B88, &type metadata accessor for OpacityTransition);
  v17 = AnyTransition.init<A>(_:)();
  (*(v5 + 8))(v10, v4);
  if (sub_1001A1C9C())
  {
    v18 = static Color.white.getter();
  }

  else
  {
    v19 = [objc_opt_self() systemGrayColor];
    v18 = Color.init(uiColor:)();
  }

  v20 = v18;
  v21 = static Edge.Set.all.getter();
  LOBYTE(v39) = 0;
  v22 = &v12[*(v35 + 36)];
  v23 = *(type metadata accessor for RoundedRectangle() + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = type metadata accessor for RoundedCornerStyle();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #16.0 }

  *v22 = _Q0;
  *&v22[*(sub_1000040A8(&qword_10035FFF0) + 36)] = 256;
  *v12 = v36;
  *(v12 + 1) = 0;
  v12[16] = 0;
  *(v12 + 3) = v16;
  *(v12 + 4) = v17;
  v12[40] = 0;
  *(v12 + 6) = v20;
  v12[56] = v21;
  v31 = ButtonStyleConfiguration.isPressed.getter();
  sub_100008964(v40);
  if (v31)
  {
    v32 = 0.8;
  }

  else
  {
    v32 = 1.0;
  }

  v33 = v38;
  sub_10000CF4C(v12, v38, &qword_100363A40);
  result = sub_1000040A8(&qword_100363A48);
  *(v33 + *(result + 36)) = v32;
  return result;
}

uint64_t sub_1001A2170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v5 = sub_1000040A8(&qword_100363A50);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_1000040A8(&qword_100363A58);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = sub_1000040A8(&qword_100363A60);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = sub_1000040A8(&qword_100363A68);
  __chkstk_darwin(v14);
  if ((*(a1 + 56) & 1) == 0)
  {
    v16 = *(a1 + 16);
    if (*(v16 + 40) || *(v16 + 56))
    {
      sub_1001A27EC(a2, v13);
      sub_1001A52DC();
      goto LABEL_6;
    }

    v18 = *(a1 + 32);
    if ((v18 & 0x2000000000000000) != 0)
    {
      if ((v18 & 0xF00000000000000) != 0)
      {
        goto LABEL_9;
      }
    }

    else if ((*(a1 + 24) & 0xFFFFFFFFFFFFLL) != 0)
    {
LABEL_9:
      sub_1001A2DAC(v7);
      sub_1001A4D9C();
      goto LABEL_6;
    }

    sub_1001A2A28(v10);
    sub_1001A4EE0();
    goto LABEL_6;
  }

  sub_1001A23D0(&v19 - v15);
  sub_1001A5394();
LABEL_6:
  result = AnyView.init<A>(_:)();
  *v20 = result;
  return result;
}

__n128 sub_1001A23D0@<Q0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = type metadata accessor for CircularProgressViewStyle();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000040A8(&qword_100354FA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = sub_1000040A8(&qword_100357C88);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = *(v1 + 64);
  v14 = v13[9];
  v15 = v13[10];
  sub_1000088DC(v13 + 6, v14);
  (*(v15 + 24))(v32, v14, v15);
  ProgressView<>.init<>()();
  CircularProgressViewStyle.init()();
  sub_100009274(&qword_100355088, &qword_100354FA0);
  sub_1001A582C(&qword_100355090, &type metadata accessor for CircularProgressViewStyle);
  v16 = v30;
  View.progressViewStyle<A>(_:)();
  (*(v2 + 8))(v4, v16);
  (*(v6 + 8))(v8, v5);
  v17 = &v12[*(sub_1000040A8(&qword_100354FA8) + 36)];
  v18 = *(sub_1000040A8(&qword_1003550A0) + 28);
  v19 = enum case for ControlSize.regular(_:);
  v20 = type metadata accessor for ControlSize();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  v21 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  *&v33 = v21;
  v23 = AnyShapeStyle.init<A>(_:)();
  v24 = &v12[*(v10 + 44)];
  *v24 = KeyPath;
  v24[1] = v23;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100008964(v32);
  v25 = v31;
  sub_10000CF4C(v12, v31, &qword_100357C88);
  v26 = v25 + *(sub_1000040A8(&qword_100363A68) + 36);
  v27 = v38;
  *(v26 + 64) = v37;
  *(v26 + 80) = v27;
  *(v26 + 96) = v39;
  v28 = v34;
  *v26 = v33;
  *(v26 + 16) = v28;
  result = v36;
  *(v26 + 32) = v35;
  *(v26 + 48) = result;
  return result;
}

uint64_t sub_1001A27EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000040A8(&qword_100363B08);
  __chkstk_darwin(v5 - 8);
  v7 = &v29[-1] - v6;
  v8 = *(v2 + 64);
  v9 = v8[9];
  v10 = v8[10];
  sub_1000088DC(v8 + 6, v9);
  (*(v10 + 24))(v29, v9, v10);
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v11 = &v7[*(sub_1000040A8(&qword_100363B18) + 44)];
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = sub_1000040A8(&qword_100363B20);
  sub_1001A3F70(v2, a1, &v11[*(v12 + 44)]);
  v13 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v11[*(sub_1000040A8(&qword_100363B28) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000CF4C(v7, a2, &qword_100363B08);
  v23 = (a2 + *(sub_1000040A8(&qword_100363A60) + 36));
  v24 = v35;
  v23[4] = v34;
  v23[5] = v24;
  v23[6] = v36;
  v25 = v31;
  *v23 = v30;
  v23[1] = v25;
  v26 = v33;
  v23[2] = v32;
  v23[3] = v26;
  return sub_100008964(v29);
}

__n128 sub_1001A2A28@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100363AA8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v35 - v9;
  v11 = *(v1 + 64);
  v13 = v11[9];
  v12 = v11[10];
  sub_1000088DC(v11 + 6, v13);
  (*(v12 + 24))(v35, v13, v12);
  ButtonStyleConfiguration.label.getter();
  v10[*(sub_1000040A8(&qword_100363AE8) + 36)] = 0;
  v14 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v16 = &v10[*(sub_1000040A8(&qword_100363AD8) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v4 + 104))(v6, enum case for Font.Leading.tight(_:), v3);
  v17 = Font.leading(_:)();

  (*(v4 + 8))(v6, v3);
  v18 = swift_getKeyPath();
  v19 = &v10[*(sub_1000040A8(&qword_100363AC8) + 36)];
  *v19 = v18;
  v19[1] = v17;
  LOBYTE(v17) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v10[*(sub_1000040A8(&qword_100363AB8) + 36)];
  *v28 = v17;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = swift_getKeyPath();
  v30 = &v10[*(v8 + 44)];
  *v30 = v29;
  v30[8] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100008964(v35);
  sub_10000CF4C(v10, a1, &qword_100363AA8);
  v31 = a1 + *(sub_1000040A8(&qword_100363A58) + 36);
  v32 = v41;
  *(v31 + 64) = v40;
  *(v31 + 80) = v32;
  *(v31 + 96) = v42;
  v33 = v37;
  *v31 = v36;
  *(v31 + 16) = v33;
  result = v39;
  *(v31 + 32) = v38;
  *(v31 + 48) = result;
  return result;
}

uint64_t sub_1001A2DAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100363A80);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v22 - v5;
  v7 = *(v1 + 64);
  v8 = v7[9];
  v9 = v7[10];
  sub_1000088DC(v7 + 6, v8);
  (*(v9 + 24))(v22, v8, v9);
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v10 = sub_1000040A8(&qword_100363BF8);
  sub_1001A2F9C(v1, &v6[*(v10 + 44)]);
  v11 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v12 = &v6[*(v4 + 44)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000CF4C(v6, a1, &qword_100363A80);
  v17 = (a1 + *(sub_1000040A8(&qword_100363A50) + 36));
  v18 = v28;
  v17[4] = v27;
  v17[5] = v18;
  v17[6] = v29;
  v19 = v24;
  *v17 = v23;
  v17[1] = v19;
  v20 = v26;
  v17[2] = v25;
  v17[3] = v20;
  return sub_100008964(v22);
}

uint64_t sub_1001A2F9C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v74 = a1;
  v75 = a2;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100363B38);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v71 - v8;
  v10 = sub_1000040A8(&qword_100363B40);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v71[0] = v71 - v12;
  v73 = sub_1000040A8(&qword_100363B48) - 8;
  __chkstk_darwin(v73);
  v77 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v71 - v15;
  __chkstk_darwin(v17);
  v76 = v71 - v18;
  ButtonStyleConfiguration.label.getter();
  v19 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v21 = &v9[*(sub_1000040A8(&qword_100363BB8) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  v22 = Font.leading(_:)();

  (*(v3 + 8))(v5, v2);
  v23 = swift_getKeyPath();
  v24 = &v9[*(sub_1000040A8(&qword_100363B30) + 36)];
  *v24 = v23;
  v24[1] = v22;
  v25 = swift_getKeyPath();
  v26 = &v9[*(v7 + 44)];
  *v26 = v25;
  v26[8] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v71[0];
  sub_10000CF4C(v9, v71[0], &qword_100363B38);
  v28 = (v27 + *(v11 + 44));
  v29 = v104;
  v30 = v106;
  v28[4] = v105;
  v28[5] = v30;
  v28[6] = v107;
  v31 = v102;
  *v28 = v101;
  v28[1] = v31;
  v28[2] = v103;
  v28[3] = v29;
  v32 = v74;
  v72 = *(v74 + 64);
  v33 = *(v72 + 112);
  v71[1] = UIContentSizeCategoryAccessibilityExtraLarge;
  v34 = v33;
  LOBYTE(v23) = static UIContentSizeCategory.>= infix(_:_:)();

  v35 = 0.5;
  if (v23)
  {
    v36 = 1.0;
  }

  else
  {
    v36 = 0.5;
  }

  v37 = swift_getKeyPath();
  sub_10000CF4C(v27, v16, &qword_100363B40);
  v38 = &v16[*(v73 + 44)];
  *v38 = v37;
  *(v38 + 1) = v36;
  sub_10000CF4C(v16, v76, &qword_100363B48);
  v39 = *(v32 + 32);
  v82 = *(v32 + 24);
  v83 = v39;
  sub_100031770();

  v40 = Text.init<A>(_:)();
  v42 = v41;
  v44 = v43;
  static Color.black.getter();
  v45 = Text.foregroundColor(_:)();
  v47 = v46;
  v49 = v48;

  sub_1000317C4(v40, v42, v44 & 1);

  static Font.caption.getter();
  v50 = Text.font(_:)();
  v73 = v51;
  v74 = v52;
  LOBYTE(v42) = v53;

  sub_1000317C4(v45, v47, v49 & 1);

  v71[0] = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v98[55] = v111;
  *&v98[71] = v112;
  *&v98[87] = v113;
  *&v98[103] = v114;
  *&v98[7] = v108;
  *&v98[23] = v109;
  v54 = v42 & 1;
  v100 = v42 & 1;
  *&v98[39] = v110;
  v55 = *(v72 + 112);
  LOBYTE(v42) = static UIContentSizeCategory.>= infix(_:_:)();

  if (v42)
  {
    v35 = 1.0;
  }

  v56 = swift_getKeyPath();
  v58 = v76;
  v57 = v77;
  sub_100006C20(v76, v77, &qword_100363B48);
  v59 = v75;
  sub_100006C20(v57, v75, &qword_100363B48);
  v60 = (v59 + *(sub_1000040A8(&qword_100363C00) + 48));
  v61 = v50;
  v62 = v73;
  *&v78 = v50;
  *(&v78 + 1) = v73;
  LOBYTE(v79) = v54;
  *(&v79 + 1) = *v99;
  DWORD1(v79) = *&v99[3];
  v63 = v74;
  v64 = v71[0];
  *(&v79 + 1) = v74;
  *&v80[0] = v71[0];
  BYTE8(v80[0]) = 1;
  *(&v80[4] + 9) = *&v98[64];
  *(&v80[5] + 9) = *&v98[80];
  *(&v80[6] + 9) = *&v98[96];
  *(v80 + 9) = *v98;
  *(&v80[1] + 9) = *&v98[16];
  *(&v80[2] + 9) = *&v98[32];
  *(&v80[3] + 9) = *&v98[48];
  *(&v80[7] + 1) = *&v98[111];
  *&v81 = v56;
  *(&v81 + 1) = v35;
  v65 = v80[7];
  v60[8] = v80[6];
  v60[9] = v65;
  v66 = v80[3];
  v60[4] = v80[2];
  v60[5] = v66;
  v67 = v80[5];
  v60[6] = v80[4];
  v60[7] = v67;
  v68 = v79;
  *v60 = v78;
  v60[1] = v68;
  v69 = v80[1];
  v60[2] = v80[0];
  v60[3] = v69;
  v60[10] = v81;
  sub_100006C20(&v78, &v82, &qword_100356C48);
  sub_100008FA0(v58, &qword_100363B48);
  v93 = *&v98[64];
  v94 = *&v98[80];
  *v95 = *&v98[96];
  v89 = *v98;
  v90 = *&v98[16];
  v91 = *&v98[32];
  v82 = v61;
  v83 = v62;
  v84 = v54;
  *v85 = *v99;
  *&v85[3] = *&v99[3];
  v86 = v63;
  v87 = v64;
  v88 = 1;
  v92 = *&v98[48];
  *&v95[15] = *&v98[111];
  v96 = v56;
  v97 = v35;
  sub_100008FA0(&v82, &qword_100356C48);
  return sub_100008FA0(v77, &qword_100363B48);
}

uint64_t sub_1001A376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v42 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v42);
  v47 = &v40 - v3;
  v4 = type metadata accessor for Font.Leading();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000040A8(&qword_100363BC8);
  __chkstk_darwin(v49);
  v43 = &v40 - v6;
  v51 = sub_1000040A8(&qword_100363BD0);
  __chkstk_darwin(v51);
  v8 = &v40 - v7;
  v48 = sub_1000040A8(&qword_100363BD8);
  __chkstk_darwin(v48);
  v10 = &v40 - v9;
  v50 = sub_1000040A8(&qword_100363BE0);
  __chkstk_darwin(v50);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Image.ResizingMode();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 64);
  v18 = v17[9];
  v19 = v17[10];
  sub_1000088DC(v17 + 6, v18);
  (*(v19 + 24))(v56, v18, v19);
  v20 = *(a1 + 16);
  if (*(v20 + 40))
  {

    Image.init(_:bundle:)();
    (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
    v21 = Image.resizable(capInsets:resizingMode:)();

    (*(v14 + 8))(v16, v13);
    *v10 = v21;
    *(v10 + 1) = 0;
    *(v10 + 8) = 1;
    swift_storeEnumTagMultiPayload();

    sub_1000040A8(&qword_100357BD0);
    sub_10005D204();
    sub_1001A56D8();
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v12, v8, &qword_100363BE0);
    swift_storeEnumTagMultiPayload();
    sub_1001A564C();
    _ConditionalContent<>.init(storage:)();

    v22 = v12;
    v23 = &qword_100363BE0;
LABEL_6:
    sub_100008FA0(v22, v23);
    return sub_100008964(v56);
  }

  v25 = v44;
  v24 = v45;
  v27 = v46;
  v26 = v47;
  v40 = v10;
  v41 = v12;
  if (!*(v20 + 56))
  {
    swift_storeEnumTagMultiPayload();
    sub_1001A564C();
    _ConditionalContent<>.init(storage:)();
    return sub_100008964(v56);
  }

  v28 = Image.init(systemName:)();
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v29 = v27;
  (*(v24 + 104))(v25, enum case for Font.Leading.tight(_:), v27);
  v30 = Font.leading(_:)();

  (*(v24 + 8))(v25, v29);
  KeyPath = swift_getKeyPath();
  v45 = v30;
  v46 = v28;
  v53 = v28;
  v54 = KeyPath;
  v55 = v30;
  v32 = enum case for DynamicTypeSize.accessibility2(_:);
  v33 = type metadata accessor for DynamicTypeSize();
  (*(*(v33 - 8) + 104))(v26, v32, v33);
  sub_1001A582C(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1000040A8(&qword_100355050);
    sub_10000C700();
    sub_100009274(&qword_100354D78, &qword_100354D60);
    v35 = v43;
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v26, &qword_100354D60);

    v36 = static Color.green.getter();
    v37 = swift_getKeyPath();
    v38 = (v35 + *(v49 + 36));
    *v38 = v37;
    v38[1] = v36;
    sub_100006C20(v35, v40, &qword_100363BC8);
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100357BD0);
    sub_10005D204();
    sub_1001A56D8();
    v39 = v41;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v39, v8, &qword_100363BE0);
    swift_storeEnumTagMultiPayload();
    sub_1001A564C();
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(v39, &qword_100363BE0);
    v22 = v35;
    v23 = &qword_100363BC8;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A3F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v89 = a2;
  v105 = a3;
  v94 = type metadata accessor for Font.Leading();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1000040A8(&qword_100363B30);
  __chkstk_darwin(v91);
  v96 = &v83 - v5;
  v95 = sub_1000040A8(&qword_100363B38);
  __chkstk_darwin(v95);
  v99 = &v83 - v6;
  v98 = sub_1000040A8(&qword_100363B40);
  __chkstk_darwin(v98);
  v102 = &v83 - v7;
  v101 = sub_1000040A8(&qword_100363B48);
  __chkstk_darwin(v101);
  v104 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v83 - v10;
  __chkstk_darwin(v11);
  v103 = &v83 - v12;
  v85 = sub_1000040A8(&qword_100363B50);
  __chkstk_darwin(v85);
  v14 = &v83 - v13;
  v86 = sub_1000040A8(&qword_100363B58);
  __chkstk_darwin(v86);
  v16 = &v83 - v15;
  v88 = sub_1000040A8(&qword_100363B60);
  __chkstk_darwin(v88);
  v18 = &v83 - v17;
  v19 = sub_1000040A8(&qword_100363B68);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v87 = &v83 - v21;
  v22 = sub_1000040A8(&qword_100363B70);
  __chkstk_darwin(v22 - 8);
  v97 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v83 - v25;
  v27 = a1;
  v28 = *(a1 + 64);
  v29 = *(v28 + 112);
  v90 = UIContentSizeCategoryAccessibilityExtraLarge;
  v30 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v30)
  {
    (*(v20 + 56))(v26, 1, 1, v19);
  }

  else
  {
    v84 = v19;
    v31 = *(v28 + 72);
    v32 = *(v28 + 80);
    sub_1000088DC((v28 + 48), v31);
    (*(v32 + 24))(v113, v31, v32);
    sub_100008964(v113);
    *v14 = static HorizontalAlignment.center.getter();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v33 = sub_1000040A8(&qword_100363B78);
    sub_1001A376C(v27, &v14[*(v33 + 44)]);
    v34 = static Alignment.center.getter();
    v35 = &v14[*(v85 + 36)];
    *v35 = v34;
    v35[1] = v36;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v14, v16, &qword_100363B50);
    v37 = &v16[*(v86 + 36)];
    v38 = v111;
    *(v37 + 4) = v110;
    *(v37 + 5) = v38;
    *(v37 + 6) = v112;
    v39 = v107;
    *v37 = v106;
    *(v37 + 1) = v39;
    v40 = v109;
    *(v37 + 2) = v108;
    *(v37 + 3) = v40;
    v41 = static Edge.Set.all.getter();
    sub_10000CF4C(v16, v18, &qword_100363B58);
    v42 = &v18[*(v88 + 36)];
    *v42 = v41;
    *(v42 + 8) = xmmword_10028B470;
    *(v42 + 24) = xmmword_10028B480;
    v42[40] = 0;
    sub_1001A5430();
    v43 = v87;
    View.accessibilityHidden(_:)();
    sub_100008FA0(v18, &qword_100363B60);
    sub_10000CF4C(v43, v26, &qword_100363B68);
    (*(v20 + 56))(v26, 0, 1, v84);
  }

  v44 = v105;
  v45 = v96;
  ButtonStyleConfiguration.label.getter();
  v46 = static Color.black.getter();
  KeyPath = swift_getKeyPath();
  v48 = (v45 + *(sub_1000040A8(&qword_100363BB8) + 36));
  *v48 = KeyPath;
  v48[1] = v46;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v49 = v93;
  v50 = v92;
  v51 = v94;
  (*(v93 + 104))(v92, enum case for Font.Leading.tight(_:), v94);
  v52 = Font.leading(_:)();

  (*(v49 + 8))(v50, v51);
  v53 = swift_getKeyPath();
  v54 = (v45 + *(v91 + 36));
  *v54 = v53;
  v54[1] = v52;
  v55 = *(v28 + 112);
  LOBYTE(KeyPath) = static UIContentSizeCategory.>= infix(_:_:)();

  v56 = v99;
  if (KeyPath)
  {
    v57 = 1;
  }

  else
  {
    v58 = *(v28 + 72);
    v59 = *(v28 + 80);
    sub_1000088DC((v28 + 48), v58);
    (*(v59 + 24))(v113, v58, v59);
    sub_100008964(v113);
    v57 = 0;
  }

  v60 = swift_getKeyPath();
  sub_10000CF4C(v45, v56, &qword_100363B30);
  v61 = v56 + *(v95 + 36);
  *v61 = v60;
  *(v61 + 8) = v57;
  v62 = *(v28 + 112);
  v63 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v63)
  {
    static Alignment.center.getter();
  }

  else
  {
    v64 = *(v28 + 72);
    v65 = *(v28 + 80);
    sub_1000088DC((v28 + 48), v64);
    (*(v65 + 24))(v113, v64, v65);
    sub_100008964(v113);
    static Alignment.leading.getter();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v66 = v102;
  sub_10000CF4C(v56, v102, &qword_100363B38);
  v67 = (v66 + *(v98 + 36));
  v68 = v113[5];
  v67[4] = v113[4];
  v67[5] = v68;
  v67[6] = v113[6];
  v69 = v113[1];
  *v67 = v113[0];
  v67[1] = v69;
  v70 = v113[3];
  v67[2] = v113[2];
  v67[3] = v70;
  v71 = *(v28 + 112);
  v72 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v72)
  {
    v73 = 1.0;
  }

  else
  {
    v73 = 0.5;
  }

  v74 = swift_getKeyPath();
  v75 = v66;
  v76 = v100;
  sub_10000CF4C(v75, v100, &qword_100363B40);
  v77 = v76 + *(v101 + 36);
  *v77 = v74;
  *(v77 + 8) = v73;
  v78 = v103;
  sub_10000CF4C(v76, v103, &qword_100363B48);
  v79 = v97;
  sub_100006C20(v26, v97, &qword_100363B70);
  v80 = v104;
  sub_100006C20(v78, v104, &qword_100363B48);
  sub_100006C20(v79, v44, &qword_100363B70);
  v81 = sub_1000040A8(&qword_100363BC0);
  sub_100006C20(v80, v44 + *(v81 + 48), &qword_100363B48);
  sub_100008FA0(v78, &qword_100363B48);
  sub_100008FA0(v26, &qword_100363B70);
  sub_100008FA0(v80, &qword_100363B48);
  return sub_100008FA0(v79, &qword_100363B70);
}

float64x2_t sub_1001A4B9C(float64x2_t *a1, void (*a2)(float64x2_t *__return_ptr))
{
  a2(&v4);
  result = vbslq_s8(vcgeq_f64(v4, *a1), v4, *a1);
  *a1 = result;
  return result;
}

uint64_t sub_1001A4BE8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1001A4C40()
{
  result = qword_100363A38;
  if (!qword_100363A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363A38);
  }

  return result;
}

uint64_t sub_1001A4CD4()
{
  sub_100008CF0(&qword_100357568);
  sub_100009274(&qword_100357588, &qword_100357568);
  sub_1001A4C40();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1001A4D9C()
{
  result = qword_100363A70;
  if (!qword_100363A70)
  {
    sub_100008CF0(&qword_100363A50);
    sub_1001A4E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363A70);
  }

  return result;
}

unint64_t sub_1001A4E28()
{
  result = qword_100363A78;
  if (!qword_100363A78)
  {
    sub_100008CF0(&qword_100363A80);
    sub_100009274(&qword_100363A88, &qword_100363A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363A78);
  }

  return result;
}

unint64_t sub_1001A4EE0()
{
  result = qword_100363A98;
  if (!qword_100363A98)
  {
    sub_100008CF0(&qword_100363A58);
    sub_1001A4F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363A98);
  }

  return result;
}

unint64_t sub_1001A4F6C()
{
  result = qword_100363AA0;
  if (!qword_100363AA0)
  {
    sub_100008CF0(&qword_100363AA8);
    sub_1001A5024();
    sub_100009274(&qword_100356750, &qword_100356758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363AA0);
  }

  return result;
}

unint64_t sub_1001A5024()
{
  result = qword_100363AB0;
  if (!qword_100363AB0)
  {
    sub_100008CF0(&qword_100363AB8);
    sub_1001A50B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363AB0);
  }

  return result;
}

unint64_t sub_1001A50B0()
{
  result = qword_100363AC0;
  if (!qword_100363AC0)
  {
    sub_100008CF0(&qword_100363AC8);
    sub_1001A5168();
    sub_100009274(&qword_100355058, &qword_100355060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363AC0);
  }

  return result;
}

unint64_t sub_1001A5168()
{
  result = qword_100363AD0;
  if (!qword_100363AD0)
  {
    sub_100008CF0(&qword_100363AD8);
    sub_1001A5220();
    sub_100009274(&qword_100355068, &qword_100355070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363AD0);
  }

  return result;
}

unint64_t sub_1001A5220()
{
  result = qword_100363AE0;
  if (!qword_100363AE0)
  {
    sub_100008CF0(&qword_100363AE8);
    sub_1001A582C(&qword_100363AF0, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363AE0);
  }

  return result;
}

unint64_t sub_1001A52DC()
{
  result = qword_100363AF8;
  if (!qword_100363AF8)
  {
    sub_100008CF0(&qword_100363A60);
    sub_100009274(&qword_100363B00, &qword_100363B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363AF8);
  }

  return result;
}

unint64_t sub_1001A5394()
{
  result = qword_100363B10;
  if (!qword_100363B10)
  {
    sub_100008CF0(&qword_100363A68);
    sub_1000C8ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363B10);
  }

  return result;
}

unint64_t sub_1001A5430()
{
  result = qword_100363B80;
  if (!qword_100363B80)
  {
    sub_100008CF0(&qword_100363B60);
    sub_1001A54BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363B80);
  }

  return result;
}

unint64_t sub_1001A54BC()
{
  result = qword_100363B88;
  if (!qword_100363B88)
  {
    sub_100008CF0(&qword_100363B58);
    sub_1001A5548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363B88);
  }

  return result;
}

unint64_t sub_1001A5548()
{
  result = qword_100363B90;
  if (!qword_100363B90)
  {
    sub_100008CF0(&qword_100363B50);
    sub_100009274(&qword_100363B98, &qword_100363BA0);
    sub_100009274(&qword_100363BA8, &qword_100363BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363B90);
  }

  return result;
}

unint64_t sub_1001A564C()
{
  result = qword_100363BE8;
  if (!qword_100363BE8)
  {
    sub_100008CF0(&qword_100363BE0);
    sub_10005D204();
    sub_1001A56D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363BE8);
  }

  return result;
}

unint64_t sub_1001A56D8()
{
  result = qword_100363BF0;
  if (!qword_100363BF0)
  {
    sub_100008CF0(&qword_100363BC8);
    sub_100008CF0(&qword_100355050);
    sub_100008CF0(&qword_100354D60);
    sub_10000C700();
    sub_100009274(&qword_100354D78, &qword_100354D60);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100355068, &qword_100355070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363BF0);
  }

  return result;
}

uint64_t sub_1001A582C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001A5888()
{
  result = qword_100363C08;
  if (!qword_100363C08)
  {
    sub_100008CF0(&qword_100363A48);
    sub_1001A5914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363C08);
  }

  return result;
}

unint64_t sub_1001A5914()
{
  result = qword_100363C10;
  if (!qword_100363C10)
  {
    sub_100008CF0(&qword_100363A40);
    sub_1001A59CC();
    sub_100009274(&qword_100360008, &qword_10035FFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363C10);
  }

  return result;
}

unint64_t sub_1001A59CC()
{
  result = qword_100363C18;
  if (!qword_100363C18)
  {
    sub_100008CF0(&qword_100363C20);
    sub_1001A5A84();
    sub_100009274(&qword_100357A28, &qword_100357A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363C18);
  }

  return result;
}

unint64_t sub_1001A5A84()
{
  result = qword_100363C28;
  if (!qword_100363C28)
  {
    sub_100008CF0(&qword_100363C30);
    sub_1001A5B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363C28);
  }

  return result;
}

unint64_t sub_1001A5B10()
{
  result = qword_100363C38;
  if (!qword_100363C38)
  {
    sub_100008CF0(&qword_100363C40);
    sub_100009274(&qword_100363C48, &qword_100363C50);
    sub_100009274(&qword_100356BD8, &qword_100356BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363C38);
  }

  return result;
}

uint64_t sub_1001A5D60@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WelcomeAction();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_1001A5DF0()
{
  result = qword_100363C58;
  if (!qword_100363C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363C58);
  }

  return result;
}

unint64_t sub_1001A5E94(uint64_t a1)
{
  result = sub_1001A5EBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001A5EBC()
{
  result = qword_100363C60;
  if (!qword_100363C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363C60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectivityModel.ConnectivityStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectivityModel.ConnectivityStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001A6088()
{
  result = qword_100363C68;
  if (!qword_100363C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363C68);
  }

  return result;
}

unint64_t sub_1001A60E0()
{
  result = qword_100363C70;
  if (!qword_100363C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100363C70);
  }

  return result;
}

uint64_t sub_1001A6134(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = result;

    a3(v5, v4);
  }

  return result;
}

void *sub_1001A61BC()
{
  v1 = v0;
  type metadata accessor for HapticAgent();
  swift_allocObject();
  v0[2] = sub_1000A7F94();
  type metadata accessor for ToneLibraryAgent();
  swift_allocObject();
  v0[3] = sub_100161FFC();
  type metadata accessor for TorchAgent();
  swift_allocObject();
  v0[4] = sub_10015B3D8();
  v0[5] = 750;
  v0[7] = 0;
  swift_unknownObjectWeakInit();
  v0[8] = 0;
  v0[9] = 0;
  v2 = v0 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
  *v2 = 13;
  v3 = type metadata accessor for _HapticFeedback.Cached(0);
  v4 = v3[5];
  v5 = type metadata accessor for DispatchTime();
  v6 = *(*(v5 - 8) + 56);
  v6(&v2[v4], 1, 1, v5);
  v6(&v2[v3[6]], 1, 1, v5);
  v2[v3[7]] = 9;
  *&v2[v3[8]] = &_swiftEmptySetSingleton;
  v7 = v3[9];
  v8 = type metadata accessor for TransmissionProgress(0);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v2[v3[10]] = 0;
  v2[v3[11]] = 0;
  v9 = &v2[v3[12]];
  *v9 = 0;
  v9[8] = 1;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381D88);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    type metadata accessor for _HapticFeedback(0);

    v15 = String.init<A>(describing:)();
    v17 = sub_10017C9E8(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] init", v13, 0xCu);
    sub_100008964(v14);
  }

  return v1;
}

uint64_t sub_1001A64B8()
{
  v1 = v0;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381D88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for _HapticFeedback(0);

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  sub_10002B558(v1 + 48);

  sub_1001A6C30(v1 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached);
  return v1;
}

uint64_t sub_1001A6670()
{
  sub_1001A64B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A66F0()
{
  result = type metadata accessor for _HapticFeedback.Cached(319);
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

uint64_t sub_1001A67EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000040A8(&qword_100356518);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1000040A8(&qword_100354FD8);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1001A6940(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000040A8(&qword_100356518);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v13 = sub_1000040A8(&qword_100354FD8);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_1001A6A80()
{
  sub_100087F94(319, &unk_100363EC0);
  if (v0 <= 0x3F)
  {
    sub_1001A6BDC(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
    if (v1 <= 0x3F)
    {
      sub_100087F94(319, &qword_100359ED8);
      if (v2 <= 0x3F)
      {
        sub_100087E8C();
        if (v3 <= 0x3F)
        {
          sub_1001A6BDC(319, &qword_100359EF8, type metadata accessor for TransmissionProgress);
          if (v4 <= 0x3F)
          {
            sub_100087F94(319, &qword_10035E0C0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1001A6BDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1001A6C30(uint64_t a1)
{
  v2 = type metadata accessor for _HapticFeedback.Cached(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001A6C8C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 56);
    sub_10000F574();
    v5 = static OS_dispatch_queue.main.getter();
    sub_1000040A8(&qword_100363F10);
    v6 = swift_allocObject();
    swift_weakInit();
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {

      v7 = sub_100233B1C(_swiftEmptyArrayStorage);
    }

    else
    {

      v7 = &_swiftEmptySetSingleton;
    }

    *(v6 + 32) = v7;
    swift_weakAssign();
    *(v6 + 24) = v5;

    sub_1001ACCA4(v8, sub_1001A705C, 0);

    sub_1001ACCA4(v9, sub_1001A7080, 0);

    sub_1001ACCA4(v10, sub_1001A70A4, 0);

    sub_1001ACFA8(v11, sub_1001A70C8, 0);

    v12 = *(*(v3 + 24) + 24);
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = v4;

    swift_unknownObjectRetain();
    sub_1001ACCA4(v12, sub_1001AD8EC, v13);

    v15 = sub_1001ACCA4(v14, ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter, 0);

    swift_unknownObjectRelease();

    *(v1 + 64) = v15;
  }

  else
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000F53C(v16, qword_100381D88);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Unexpected _deps == nil", v18, 2u);
    }
  }
}

void sub_1001A70F0(char a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
  swift_beginAccess();
  v5 = type metadata accessor for _HapticFeedback.Cached(0);
  *(v4 + *(v5 + 40)) = a1;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381D88);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67240192;
    if (*(v4 + *(v5 + 40)))
    {
      v10 = 1;
    }

    else
    {
      v10 = *(v4 + *(v5 + 44));
    }

    *(v9 + 1) = v10;
    v11 = v9;

    _os_log_impl(&_mh_execute_header, v7, v8, "onAppActiveChanged, haptic allowed: %{BOOL,public}d", v11, 8u);
  }

  else
  {
  }

  sub_1001A7F58();
  sub_1001A8394();
}

void sub_1001A7268(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
  swift_beginAccess();
  v2 = type metadata accessor for _HapticFeedback.Cached(0);
  v3 = *(v2 + 44);
  if (*(v1 + v3) == 1)
  {
    v4 = v2;
    *(v1 + v3) = 0;
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F53C(v5, qword_100381D88);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      if (*(v1 + *(v4 + 40)))
      {
        v9 = 1;
      }

      else
      {
        v9 = *(v1 + *(v4 + 44));
      }

      *(v8 + 1) = v9;
      v10 = v8;

      _os_log_impl(&_mh_execute_header, v6, v7, "onAlertActiveChanged, haptic allowed: %{BOOL,public}d", v10, 8u);
    }

    else
    {
    }

    sub_1001A7F58();
    sub_1001A8394();
  }
}

void sub_1001A73E8()
{
  v1 = v0;
  v2 = type metadata accessor for _HapticFeedback.Cached(0);
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  *v4 = 13;
  v10 = v2[5];
  v11 = type metadata accessor for DispatchTime();
  v12 = *(*(v11 - 8) + 56);
  v12(&v4[v10], 1, 1, v11);
  v12(&v4[v2[6]], 1, 1, v11);
  v4[v2[7]] = 9;
  *&v4[v2[8]] = &_swiftEmptySetSingleton;
  v13 = v2[9];
  v14 = type metadata accessor for TransmissionProgress(0);
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v4[v2[10]] = 0;
  v4[v2[11]] = 0;
  v15 = &v4[v2[12]];
  *v15 = 0;
  v15[8] = 1;
  v16 = OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
  swift_beginAccess();
  sub_1001A85EC(v4, v1 + v16);
  swift_endAccess();
  LOBYTE(v16) = sub_1000A82E0();
  v17 = sub_1001641AC();
  v18 = sub_10015D274();
  if (v16 & 1) != 0 && (v17 & 1) != 0 && (v18)
  {
    return;
  }

  if (qword_100353A68 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v19 = type metadata accessor for Logger();
  sub_10000F53C(v19, qword_100381D88);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to start hapticFeedback", v22, 2u);
  }
}

uint64_t sub_1001A7750()
{
  v1 = v0;
  v2 = type metadata accessor for _HapticFeedback.Cached(0);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    sub_10015B9F0();
    sub_100162610();
    sub_1000A8910();
    [*(v1 + 72) invalidate];
    v11 = *(v1 + 72);
    *(v1 + 72) = 0;

    *v4 = 13;
    v12 = v2[5];
    v13 = type metadata accessor for DispatchTime();
    v14 = *(*(v13 - 8) + 56);
    v14(&v4[v12], 1, 1, v13);
    v14(&v4[v2[6]], 1, 1, v13);
    v4[v2[7]] = 9;
    *&v4[v2[8]] = &_swiftEmptySetSingleton;
    v15 = v2[9];
    v16 = type metadata accessor for TransmissionProgress(0);
    (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
    v4[v2[10]] = 0;
    v4[v2[11]] = 0;
    v17 = &v4[v2[12]];
    *v17 = 0;
    v17[8] = 1;
    v18 = OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
    swift_beginAccess();
    sub_1001A85EC(v4, v1 + v18);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001A7A14(int a1)
{
  v3 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = (v1 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached);
  swift_beginAccess();
  v7 = type metadata accessor for _HapticFeedback.Cached(0);
  if (v6[*(v7 + 40)] & 1) != 0 || (v6[*(v7 + 44)])
  {
    if (a1 == 1)
    {
      sub_10022649C();
    }

    else
    {
      sub_1001A7C9C(a1);
    }
  }

  else
  {
    v8 = v7;
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F53C(v9, qword_100381D88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136315138;
      v18[15] = a1;
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "onHapticRequired - %s not allowed right now, cached till allowed", v12, 0xCu);
      sub_100008964(v13);
    }

    *v6 = a1;
    static DispatchTime.now()();
    v17 = type metadata accessor for DispatchTime();
    (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
    swift_beginAccess();
    sub_10002B4A0(v5, &v6[*(v8 + 20)]);
    swift_endAccess();
  }
}

void sub_1001A7C9C(int a1)
{
  if (a1 > 3u)
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F53C(v10, qword_100381D88);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Haptic type %s not allowed on this platform", v12, 0xCu);
      sub_100008964(v13);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F53C(v2, qword_100381D88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      v7 = String.init<A>(describing:)();
      v9 = sub_10017C9E8(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "play haptic: %s", v5, 0xCu);
      sub_100008964(v6);
    }

    sub_1000A8FD8(a1);
  }
}

int *sub_1001A7F58()
{
  v1 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v1 - 8);
  v3 = &v28[-v2];
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v28[-v9];
  v11 = (v0 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached);
  swift_beginAccess();
  result = type metadata accessor for _HapticFeedback.Cached(0);
  if ((v11[result[10]] & 1) != 0 || v11[result[11]] == 1)
  {
    v13 = *v11;
    if (v13 != 13)
    {
      v14 = result;
      sub_1001451C0(&v11[result[5]], v3);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        return sub_100008FA0(v3, &qword_100356518);
      }

      (*(v5 + 32))(v10, v3, v4);
      swift_beginAccess();
      *v11 = 13;
      v15 = v14[5];
      sub_100008FA0(&v11[v15], &qword_100356518);
      (*(v5 + 56))(&v11[v15], 1, 1, v4);
      swift_endAccess();
      static DispatchTime.now()();
      v16 = DispatchTime.uptimeNanoseconds.getter();
      if (DispatchTime.uptimeNanoseconds.getter() >= v16)
      {
        v19 = *(v5 + 8);
        v19(v8, v4);
      }

      else
      {
        v17 = DispatchTime.uptimeNanoseconds.getter();
        v18 = DispatchTime.uptimeNanoseconds.getter();
        v19 = *(v5 + 8);
        v19(v8, v4);
        if (v17 < v18)
        {
          __break(1u);
          goto LABEL_17;
        }

        if (v17 - v18 >= 0x30A32C0)
        {
          if (qword_100353A68 == -1)
          {
LABEL_10:
            v20 = type metadata accessor for Logger();
            sub_10000F53C(v20, qword_100381D88);
            v21 = Logger.logObject.getter();
            v22 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              v24 = swift_slowAlloc();
              v29[0] = v24;
              *v23 = 136446210;
              v28[15] = v13;
              v25 = String.init<A>(describing:)();
              v27 = sub_10017C9E8(v25, v26, v29);

              *(v23 + 4) = v27;
              _os_log_impl(&_mh_execute_header, v21, v22, "Pending haptic expired - %{public}s", v23, 0xCu);
              sub_100008964(v24);
            }

            return (v19)(v10, v4);
          }

LABEL_17:
          swift_once();
          goto LABEL_10;
        }
      }

      sub_1000A8FD8(v13);
      return (v19)(v10, v4);
    }
  }

  return result;
}

void sub_1001A8394()
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    v0 = sub_1001DEDEC();

    if (v0 != 13)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = *(Strong[5] + 41);
        if (v2 == 2 || (v2 & 1) == 0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v3 = Strong[31];
          v4 = Strong[32];
          sub_1000088DC(Strong + 28, v3);
          if ((*(v4 + 112))(v3, v4))
          {

            swift_unknownObjectRelease();
            return;
          }

          v5 = sub_100179A30();
          swift_unknownObjectRelease();
          if (v5)
          {
            return;
          }
        }
      }
    }
  }

  sub_1001A84D0();
}

void sub_1001A84D0()
{
  if (*(v0 + 72))
  {
    v1 = v0;
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F53C(v2, qword_100381D88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Cancelling loop timer", v5, 2u);
    }

    [*(v1 + 72) invalidate];
    v6 = *(v1 + 72);
    *(v1 + 72) = 0;
  }
}

uint64_t sub_1001A85EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _HapticFeedback.Cached(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__int128 *sub_1001A8650(__int128 *result, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v5 = *result;
  if (a2)
  {

    a3(v4, &v5);
  }

  return result;
}

_OWORD *sub_1001A86D0(_OWORD *result, uint64_t a2, void (*a3)(uint64_t, _OWORD *))
{
  v3 = result[1];
  v7[0] = *result;
  v7[1] = v3;
  v4 = result[3];
  v7[2] = result[2];
  v7[3] = v4;
  if (a2)
  {

    a3(v6, v7);
  }

  return result;
}

uint64_t sub_1001A8758(uint64_t result, uint64_t a2, void (*a3)(uint64_t, void *))
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v7[0] = *result;
  v7[1] = v3;
  v8 = v4;
  if (a2)
  {

    a3(v6, v7);
  }

  return result;
}

char *sub_1001A87E0(char *result, uint64_t a2, void (*a3)(uint64_t, char *))
{
  v5 = *result;
  if (a2)
  {

    a3(v4, &v5);
  }

  return result;
}

void *sub_1001A8860(void *result, uint64_t a2, void (*a3)(uint64_t, void *))
{
  v3 = result[1];
  v6[0] = *result;
  v6[1] = v3;
  if (a2)
  {

    a3(v5, v6);
  }

  return result;
}

uint64_t sub_1001A88E0(uint64_t result, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v3 = *(result + 8);
  v6[0] = *result;
  v7 = v3;
  v8 = *(result + 16);
  if (a2)
  {

    a3(v5, v6);
  }

  return result;
}

uint64_t *sub_1001A8970(uint64_t *result, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v5 = *result;
  if (a2)
  {

    a3(v4, &v5);
  }

  return result;
}

void sub_1001A89F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    a3(v4);
  }
}

uint64_t sub_1001A8A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_10035EE98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100359B30);
  sub_100009274(&qword_10035EEA0, &unk_100359B30);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035EEA8, &qword_10035EE98);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001A8D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100363F60);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_10035BB68);
  sub_100009274(&qword_100363F68, &qword_10035BB68);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100363F70, &qword_100363F60);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001A9054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_1003560A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF60, &unk_100365610);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035CF70, &qword_1003560A0);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001A9358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361A98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100365630);
  sub_100009274(&qword_100361AA0, &unk_100365630);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361AA8, &qword_100361A98);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001A965C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100363F30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_10035CEE0);
  sub_100009274(&qword_100363F38, &qword_10035CEE0);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100363F40, &qword_100363F30);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001A9960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_10035EE98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100359B30);
  sub_100009274(&qword_10035EEA0, &unk_100359B30);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035EEA8, &qword_10035EE98);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001A9C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100363F18);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_10035CEE8);
  sub_100009274(&qword_100363F20, &qword_10035CEE8);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100363F28, &qword_100363F18);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001A9F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361928);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_10035F530);
  sub_100009274(&qword_10035F538, &qword_10035F530);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361930, &qword_100361928);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AA26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361B40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_100361B48);
  sub_100009274(&qword_100361B50, &qword_100361B48);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361B58, &qword_100361B40);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AA570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361938);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_100361940);
  sub_100009274(&qword_100361948, &qword_100361940);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361950, &qword_100361938);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AA874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_1003560A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF60, &unk_100365610);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035CF70, &qword_1003560A0);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AAB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361A98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100365630);
  sub_100009274(&qword_100361AA0, &unk_100365630);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361AA8, &qword_100361A98);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AAE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_10035EE98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100359B30);
  sub_100009274(&qword_10035EEA0, &unk_100359B30);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035EEA8, &qword_10035EE98);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AB180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361A38);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_100365640);
  sub_100009274(&qword_100361A40, &qword_100365640);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361A48, &qword_100361A38);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AB484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361B40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_100361B48);
  sub_100009274(&qword_100361B50, &qword_100361B48);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361B58, &qword_100361B40);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AB788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361928);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_10035F530);
  sub_100009274(&qword_10035F538, &qword_10035F530);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361930, &qword_100361928);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001ABA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361938);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_100361940);
  sub_100009274(&qword_100361948, &qword_100361940);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361950, &qword_100361938);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001ABD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_1003560A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF60, &unk_100365610);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035CF70, &qword_1003560A0);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AC094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361B40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_100361B48);
  sub_100009274(&qword_100361B50, &qword_100361B48);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361B58, &qword_100361B40);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AC398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361938);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_100361940);
  sub_100009274(&qword_100361948, &qword_100361940);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361950, &qword_100361938);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AC69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_10035EE98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100359B30);
  sub_100009274(&qword_10035EEA0, &unk_100359B30);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035EEA8, &qword_10035EE98);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AC9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100361A68);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_100356500);
  sub_100009274(&qword_100361A70, &qword_100356500);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100361A78, &qword_100361A68);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001ACCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_1003560A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF60, &unk_100365610);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035CF70, &qword_1003560A0);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001ACFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_10035EE98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100359B30);
  sub_100009274(&qword_10035EEA0, &unk_100359B30);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035EEA8, &qword_10035EE98);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}