id sub_100001838()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    v3 = [objc_allocWithZone(SKDevice) init];
    if (v0[5])
    {
      v4 = v0[4];
      v5 = String._bridgeToObjectiveC()();
    }

    else
    {
      v5 = 0;
    }

    [v3 setIdentifier:v5];

    v6 = v0[6];
    v0[6] = v3;
    v2 = v3;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void *sub_1000018DC(void *a1)
{
  v1[6] = 0;
  v3 = [a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v1[2] = v5;
  v1[3] = v7;
  v8 = [a1 identifier];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0;
  }

  v1[4] = v10;
  v1[5] = v12;
  return v1;
}

uint64_t sub_100001998()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 56, 7);
}

void sub_100001A04()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for IntroViewController();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v38._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x49545F4F52544E49;
  v3._object = 0xEB00000000454C54;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v38);

  v6 = String._bridgeToObjectiveC()();

  [v0 setTitle:v6];

  v7 = *&v0[OBJC_IVAR____TtC22HomeCaptiveViewService19IntroViewController_deviceName + 8];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *&v0[OBJC_IVAR____TtC22HomeCaptiveViewService19IntroViewController_deviceName];
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_10000225C(&qword_100015598, &qword_10000A5A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10000A550;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000022F0();
    *(v10 + 32) = v8;
    *(v10 + 40) = v7;

    v11 = [v1 mainBundle];
    v39._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0x55535F4F52544E49;
    v12._object = 0xEE00454C54495442;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13.value._object = 0xEB00000000656C62;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v39);

    String.init(format:arguments:)();
  }

  else
  {
LABEL_6:
    v15 = [v1 mainBundle];
    v40._object = 0xE000000000000000;
    v16._object = 0x800000010000A880;
    v16._countAndFlagsBits = 0xD000000000000016;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v40);
  }

  v19 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v19];

  [v0 setDismissalType:3];
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() imageNamed:v20];

  if (v21)
  {
    v22 = [objc_opt_self() systemBlueColor];
    v23 = [v21 imageWithTintColor:v22];

    if (v23)
    {
      sub_10000225C(&qword_100015588, "\b\r");
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10000A560;
      *(v24 + 32) = v23;
      sub_1000022A4();
      v25 = v23;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v0 setImages:isa];
    }
  }

  v27 = [v1 mainBundle];
  v41._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0x45554E49544E4F43;
  v28._object = 0xE800000000000000;
  v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v29.value._object = 0xEB00000000656C62;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v41);

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v32 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000223C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002038;
  aBlock[3] = &unk_100010630;
  v33 = _Block_copy(aBlock);
  v34 = [objc_opt_self() actionWithTitle:v32 style:0 handler:v33];

  _Block_release(v33);

  v35 = [v0 addAction:v34];
}

void sub_100001F70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000049DC();
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = String._bridgeToObjectiveC()();
    [v4 showActivityIndicatorWithStatus:v5];
  }
}

void sub_100002038(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_10000215C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntroViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002204()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000225C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000022A4()
{
  result = qword_100015590;
  if (!qword_100015590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100015590);
  }

  return result;
}

unint64_t sub_1000022F0()
{
  result = qword_1000155A0;
  if (!qword_1000155A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000155A0);
  }

  return result;
}

uint64_t sub_100002344()
{
  v0 = type metadata accessor for Logger();
  sub_1000041F8(v0, qword_1000155A8);
  v1 = sub_100003CC8(v0, qword_1000155A8);
  if (qword_100015478 != -1)
  {
    swift_once();
  }

  v2 = sub_100003CC8(v0, qword_100015BE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000240C()
{
  v1 = OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController____lazy_storage___remoteViewController;
  v2 = *&v0[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController____lazy_storage___remoteViewController];
  v3 = v2;
  if (v2 == 1)
  {
    if ([v0 _remoteViewControllerProxy])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9[0] = v7;
    v9[1] = v8;
    if (*(&v8 + 1))
    {
      sub_10000225C(&qword_100015640, &qword_10000A610);
      if (swift_dynamicCast())
      {
        v3 = v6;
LABEL_10:
        v4 = *&v0[v1];
        *&v0[v1] = v3;
        swift_unknownObjectRetain();
        sub_1000042A4(v4);
        goto LABEL_11;
      }
    }

    else
    {
      sub_100004458(v9, &qword_100015638, &qword_10000A608);
    }

    v3 = 0;
    goto LABEL_10;
  }

LABEL_11:
  sub_1000042B4(v2);
  return v3;
}

id sub_100002524()
{
  v1 = OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController____lazy_storage___notificationCenter;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController____lazy_storage___notificationCenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController____lazy_storage___notificationCenter);
  }

  else
  {
    sub_10000425C(0, &qword_100015630, NSDistributedNotificationCenter_ptr);
    v4 = [swift_getObjCClassFromMetadata() defaultCenter];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1000025B0(void *a1, void (*a2)(void))
{
  if (!a1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v3 = v2;
  v5 = [a1 userInfo];
  if (v5)
  {
    v6 = v5;
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v7 + 16) && (v8 = sub_100003E4C(v25), (v9 & 1) != 0))
    {
      sub_100004130(*(v7 + 56) + 32 * v8, v26);
      sub_100004404(v25);
      sub_10000225C(&qword_100015648, &qword_10000A618);
      if (swift_dynamicCast())
      {
        v10 = objc_allocWithZone(CBDevice);

        v15 = sub_100003D64();
        type metadata accessor for PeerDevice();
        swift_allocObject();
        v16 = v15;
        v17 = sub_1000018DC(v16);

        v18 = sub_10000240C();
        v19 = objc_allocWithZone(type metadata accessor for SetupCoordinator(0));
        v20 = v3;
        v21 = sub_1000079B4(v17, v20, v18);

        swift_unknownObjectRelease();
        v22 = *&v20[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController_coordinator];
        *&v20[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController_coordinator] = v21;

        v23 = *&v3[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController_coordinator];
        if (v23)
        {
          v24 = v23;
          sub_100004C1C();
        }

        if (a2)
        {
          a2();

          return;
        }

        goto LABEL_19;
      }
    }

    else
    {

      sub_100004404(v25);
    }
  }

  if (qword_100015460 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003CC8(v11, qword_1000155A8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "No user device available to setup", v14, 2u);
  }
}

void sub_100002ACC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for RemoteAlertServiceViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  if (qword_100015460 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003CC8(v1, qword_1000155A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting HomeCaptiveViewService", v4, 2u);
  }
}

void sub_100002C0C(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for RemoteAlertServiceViewController();
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  if (qword_100015460 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003CC8(v4, qword_1000155A8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "viewDidAppear(_:)", v7, 2u);
  }

  v8 = sub_100002524();
  v9 = String._bridgeToObjectiveC()();
  [v8 addObserver:v2 selector:"extensionDeviceLostWithNotification:" name:v9 object:0];
}

void sub_100002DC0(char a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for RemoteAlertServiceViewController();
  objc_msgSendSuper2(&v12, "viewDidDisappear:", a1 & 1);
  if (qword_100015460 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003CC8(v4, qword_1000155A8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "viewDidDisappear(_:)", v7, 2u);
  }

  v8 = sub_100002524();
  v9 = String._bridgeToObjectiveC()();
  [v8 removeObserver:v2 name:v9 object:0];

  v10 = *&v2[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController_coordinator];
  if (v10)
  {
    v11 = v10;
    sub_100004DFC(a1 & 1);
  }
}

uint64_t sub_100002F98(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000425C(0, &qword_100015600, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  aBlock[4] = sub_100003BA4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000050F8;
  aBlock[3] = &unk_100010680;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100003BC4();
  sub_10000225C(&qword_100015610, &qword_10000A5F0);
  sub_100003C1C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

void sub_100003234(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupFlowState(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v30 - v9;
  v11 = [a1 userInfo];
  if (v11)
  {
    v12 = v11;
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = sub_1000035AC(v13);

    if (v14)
    {
      if (*(v14 + 16) && (v15 = sub_100003E90(0xD000000000000010, 0x800000010000A9A0), (v16 & 1) != 0))
      {
        sub_100004130(*(v14 + 56) + 32 * v15, v31);

        if (swift_dynamicCast())
        {
          v18 = v30[0];
          v17 = v30[1];
          goto LABEL_9;
        }
      }

      else
      {
      }
    }
  }

  v18 = 0;
  v17 = 0xE000000000000000;
LABEL_9:
  if (qword_100015460 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003CC8(v19, qword_1000155A8);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136315138;
    v24 = sub_100008EF4(v18, v17, v31);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "BLE Extension device lost: %s", v22, 0xCu);
    sub_1000040E4(v23);
  }

  else
  {
  }

  v25 = *(a2 + OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController_coordinator);
  if (v25)
  {
    v26 = OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_state;
    swift_beginAccess();
    sub_100003D00(v25 + v26, v10);
    swift_storeEnumTagMultiPayload();
    v27 = v25;
    v28 = sub_100007AE8(v10, v8);
    sub_100004088(v8);
    sub_100004088(v10);
    if (v28 & 1) != 0 || (sub_100003D00(v25 + v26, v10), swift_storeEnumTagMultiPayload(), v29 = sub_100007AE8(v10, v8), sub_100004088(v8), sub_100004088(v10), (v29))
    {
      sub_100004DFC(1);
    }
  }
}

unint64_t sub_1000035AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000225C(&qword_100015620, &qword_10000A5F8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_10000418C(*(a1 + 48) + 40 * v14, v29);
        sub_100004130(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_10000418C(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100004130(v27 + 8, v22);
        sub_100004458(v26, &qword_100015628, &qword_10000A600);
        v23 = v20;
        sub_1000041E8(v22, v24);
        v15 = v23;
        sub_1000041E8(v24, v25);
        sub_1000041E8(v25, &v23);
        result = sub_100003E90(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1000040E4(v12);
          result = sub_1000041E8(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1000041E8(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_100004458(v26, &qword_100015628, &qword_10000A600);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_1000038F0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController____lazy_storage___remoteViewController] = 1;
  *&v3[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController_coordinator] = 0;
  *&v3[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController____lazy_storage___notificationCenter] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for RemoteAlertServiceViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_1000039F8(void *a1)
{
  *&v1[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController____lazy_storage___remoteViewController] = 1;
  *&v1[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController_coordinator] = 0;
  *&v1[OBJC_IVAR____TtC22HomeCaptiveViewService32RemoteAlertServiceViewController____lazy_storage___notificationCenter] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoteAlertServiceViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100003AB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertServiceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003B64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003BAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100003BC4()
{
  result = qword_100015608;
  if (!qword_100015608)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015608);
  }

  return result;
}

unint64_t sub_100003C1C()
{
  result = qword_100015618;
  if (!qword_100015618)
  {
    sub_100003C80(&qword_100015610, &qword_10000A5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015618);
  }

  return result;
}

uint64_t sub_100003C80(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003CC8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003D00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupFlowState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100003D64()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_100003E4C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100003F08(a1, v4);
}

unint64_t sub_100003E90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100003FD0(a1, a2, v6);
}

unint64_t sub_100003F08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000418C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100004404(v8);
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

unint64_t sub_100003FD0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100004088(uint64_t a1)
{
  v2 = type metadata accessor for SetupFlowState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000040E4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004130(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1000041E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_1000041F8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000425C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000042A4(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000042B4(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1000043AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000043BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004458(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000225C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000044B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000041F8(v0, qword_100015650);
  v1 = sub_100003CC8(v0, qword_100015650);
  if (qword_100015478 != -1)
  {
    swift_once();
  }

  v2 = sub_100003CC8(v0, qword_100015BE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100004580(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    if (qword_100015468 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003CC8(v3, qword_100015650);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "SKSetupCaptiveNetworkJoinClient was already activated. Ignoring the call", v5, 2u);
    }
  }

  else
  {
    v6 = v2;
    if (qword_100015468 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003CC8(v9, qword_100015650);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Activating SetupKit Client", v12, 2u);
    }

    v13 = [objc_allocWithZone(SKSetupCaptiveNetworkJoinClient) init];
    v14 = *(v6 + 16);
    *(v6 + 16) = v13;

    v15 = *(v6 + 16);
    if (v15)
    {
      [v15 setPeerDevice:*(v6 + 24)];
      v16 = *(v6 + 16);
      if (v16)
      {
        aBlock[4] = a1;
        aBlock[5] = a2;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100002038;
        aBlock[3] = &unk_1000106D0;
        v17 = _Block_copy(aBlock);
        v18 = v16;

        [v18 setEventHandler:v17];
        _Block_release(v17);

        v19 = *(v6 + 16);
        if (v19)
        {
          [v19 activate];
        }
      }
    }

    *(v6 + 32) = 1;
  }
}

void sub_100004840()
{
  v1 = v0;
  if (qword_100015468 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003CC8(v2, qword_100015650);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping SetupKit Client", v5, 2u);
  }

  v6 = *(v1 + 16);
  if (v6 && ([v6 invalidate], (v7 = *(v1 + 16)) != 0))
  {
    [v7 setEventHandler:0];
    v8 = *(v1 + 16);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 16) = 0;

  *(v1 + 32) = 0;
}

uint64_t sub_100004960()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

uint64_t sub_1000049C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000049DC()
{
  v1 = v0;
  v2 = type metadata accessor for SetupFlowState(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100015470 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003CC8(v6, qword_100015720);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100008EF4(0xD000000000000013, 0x800000010000ACD0, &v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_1000040E4(v10);
  }

  v11 = OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_state;
  swift_beginAccess();
  sub_100003D00(v1 + v11, v5);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    return sub_100004088(v5);
  }

  v12 = *(v1 + OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_setup);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100004580(sub_100008654, v13);
}

uint64_t sub_100004C1C()
{
  v1 = v0;
  v2 = type metadata accessor for SetupFlowState(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  if (qword_100015470 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003CC8(v9, qword_100015720);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting SetupCoordinator", v12, 2u);
  }

  v13 = OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_state;
  swift_beginAccess();
  sub_100003D00(v1 + v13, v8);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v13) = sub_100007AE8(v8, v6);
  sub_100004088(v6);
  result = sub_100004088(v8);
  if (v13)
  {
    swift_storeEnumTagMultiPayload();
    sub_100005518(v8);
    return sub_100004088(v8);
  }

  return result;
}

id sub_100004DFC(char a1)
{
  v3 = *(*(type metadata accessor for SetupFlowState(0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100015470 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003CC8(v6, qword_100015720);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v10 = 136315138;
    v11 = OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_state;
    swift_beginAccess();
    sub_100003D00(&v7[v11], v5);
    v12 = sub_100005204();
    v13 = a1;
    v15 = v14;
    sub_100004088(v5);
    v16 = sub_100008EF4(v12, v15, &v26);
    a1 = v13;

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Dismissing UI - Current State: %s", v10, 0xCu);
    sub_1000040E4(v25);
  }

  sub_100006274();
  swift_storeEnumTagMultiPayload();
  sub_100005518(v5);
  sub_100004088(v5);
  v17 = sub_1000054A4();
  [v17 invalidate];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    [Strong dismissViewControllerAnimated:a1 & 1 completion:0];
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Dismissing RemoteViewController", v22, 2u);
  }

  result = *&v7[OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_remoteViewController];
  if (result)
  {
    return [result dismiss];
  }

  return result;
}

uint64_t sub_1000050F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000513C()
{
  v0 = type metadata accessor for Logger();
  sub_1000041F8(v0, qword_100015720);
  v1 = sub_100003CC8(v0, qword_100015720);
  if (qword_100015478 != -1)
  {
    swift_once();
  }

  v2 = sub_100003CC8(v0, qword_100015BE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100005204()
{
  v1 = *(*(type metadata accessor for SetupFlowState(0) - 8) + 64);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003D00(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        return 0x6164696C61766E49;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        return 0x7369442072657355;
      }

      else
      {
        return 0x726F727245;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      return 0xD00000000000001FLL;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return 0xD000000000000020;
    }

    else
    {
      return 0x6574656C706D6F43;
    }
  }

  else if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0x49556F72746E49;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x64657472617453;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = sub_10000225C(&qword_100015988, &unk_10000A760);
      v6 = *&v3[*(v5 + 48) + 8];

      v7 = *&v3[*(v5 + 64) + 8];

      v8 = type metadata accessor for URL();
      (*(*(v8 - 8) + 8))(v3, v8);
      return 0x7465656853626557;
    }

    else
    {
      return 0x6E776F6E6B6E55;
    }
  }

  else
  {
    return 0x72696150206E6950;
  }
}

id sub_1000054A4()
{
  v1 = OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator____lazy_storage___sfClient;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator____lazy_storage___sfClient);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator____lazy_storage___sfClient);
  }

  else
  {
    v4 = [objc_allocWithZone(SFClient) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100005518(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SetupFlowState(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  v11 = OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_state;
  swift_beginAccess();
  sub_100003D00(v1 + v11, v10);
  v12 = sub_100007AE8(v10, a1);
  sub_100004088(v10);
  if ((v12 & 1) == 0)
  {
    if (qword_100015470 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003CC8(v13, qword_100015720);
    sub_100003D00(a1, v8);
    v14 = v2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      v27[0] = v26[0];
      *v17 = 136315394;
      sub_100003D00(v2 + v11, v10);
      v18 = sub_100005204();
      v26[1] = v14;
      v20 = v19;
      sub_100004088(v10);
      v21 = sub_100008EF4(v18, v20, v27);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = sub_100005204();
      v24 = v23;
      sub_100004088(v8);
      v25 = sub_100008EF4(v22, v24, v27);

      *(v17 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Transitioning from %s to %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100004088(v8);
    }

    swift_beginAccess();
    sub_100008568(a1, v2 + v11);
    swift_endAccess();
    sub_100006360();
  }
}

void sub_1000057EC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100005848(a1);
  }
}

void sub_100005848(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for SetupFlowState(0);
  v9 = *(*(v97 - 1) + 64);
  v10 = __chkstk_darwin(v97);
  v95 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v91 - v12);
  if (qword_100015470 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100003CC8(v14, qword_100015720);
  v16 = a1;
  v96 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v93 = v8;
    v20 = v19;
    v92 = swift_slowAlloc();
    aBlock[0] = v92;
    *v20 = 136315138;
    v21 = sub_100008670([v16 eventType]);
    v94 = v4;
    v22 = v21;
    v23 = v5;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v16;
    v26 = v13;
    v27 = v2;
    v29 = v28;

    v30 = v24;
    v5 = v23;
    v31 = sub_100008EF4(v30, v29, aBlock);
    v2 = v27;
    v13 = v26;
    v16 = v25;

    *(v20 + 4) = v31;
    v4 = v94;
    _os_log_impl(&_mh_execute_header, v17, v18, "Recieved SKEvent: %s", v20, 0xCu);
    sub_1000040E4(v92);

    v8 = v93;
  }

  v32 = [v16 error];
  if (v32)
  {
    v33 = v32;
    v34 = v2;
    v35 = v33;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v38 = 136315394;
      v39 = OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_state;
      swift_beginAccess();
      sub_100003D00(v34 + v39, v13);
      v40 = sub_100005204();
      v42 = v41;
      sub_100004088(v13);
      v43 = sub_100008EF4(v40, v42, &v98);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      swift_getErrorValue();
      v44 = Error.localizedDescription.getter();
      v46 = sub_100008EF4(v44, v45, &v98);

      *(v38 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "CurrentState - %s - SetupKit Error: %s", v38, 0x16u);
      swift_arrayDestroy();
    }

    swift_storeEnumTagMultiPayload();
    sub_100005518(v13);

    goto LABEL_56;
  }

  v47 = [v16 eventType];
  if (v47 > 109)
  {
    if (v47 <= 139)
    {
      if (v47 == 110)
      {
        return;
      }

      if (v47 != 120)
      {
        if (v47 == 130)
        {
          return;
        }

        goto LABEL_46;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *v13 = 4;
        swift_storeEnumTagMultiPayload();
        v77 = v16;
        sub_100005518(v13);

LABEL_56:
        sub_100004088(v13);
        return;
      }

      goto LABEL_55;
    }

    if (v47 <= 200)
    {
      if (v47 == 140)
      {
        goto LABEL_55;
      }

      if (v47 != 200)
      {
        goto LABEL_46;
      }

      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
        v49 = v48;
        v50 = v16;
        v51 = [v49 captiveURL];
        if (v51)
        {
          v52 = v51;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v53 = [v49 captiveSSID];
          if (v53)
          {
            v54 = v53;
            v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v56;

            v58 = sub_10000225C(&qword_100015988, &unk_10000A760);
            v59 = v8;
            v60 = &v95[*(v58 + 48)];
            v61 = v59;
            (*(v5 + 16))();
            *v60 = v55;
            v60[1] = v57;
            v62 = [v49 captiveInterfaceIdentifier];
            if (v62)
            {
              v63 = v62;
              v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v66 = v65;
            }

            else
            {
              v64 = 0;
              v66 = 0;
            }

            v88 = *(v58 + 64);
            v89 = v95;
            v90 = &v95[v88];
            *v90 = v64;
            v90[1] = v66;
            swift_storeEnumTagMultiPayload();
            sub_100005518(v89);

            sub_100004088(v89);
            (*(v5 + 8))(v61, v4);
            return;
          }

          (*(v5 + 8))(v8, v4);
        }
      }

      v81 = v16;
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = 138412290;
        *(v84 + 4) = v81;
        *v85 = v81;
        v86 = v81;
        _os_log_impl(&_mh_execute_header, v82, v83, "failed to obtain data from the event: %@", v84, 0xCu);
        sub_100004458(v85, &unk_1000159F0, &unk_10000A620);
      }

      goto LABEL_55;
    }

    if (v47 == 201)
    {
      return;
    }

    if (v47 != 202)
    {
      goto LABEL_46;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v68 = Strong;
      v97 = [Strong presentedViewController];

      if (v97)
      {
        objc_opt_self();
        v69 = swift_dynamicCastObjCClass();
        if (v69)
        {
          v70 = v69;
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&_mh_execute_header, v71, v72, "Informing websheet with a sucess probe result", v73, 2u);
          }

          v74 = swift_allocObject();
          *(v74 + 16) = v70;
          aBlock[4] = sub_10000865C;
          aBlock[5] = v74;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000050F8;
          aBlock[3] = &unk_1000108B0;
          v75 = _Block_copy(aBlock);
          v76 = v97;

          [v70 handleProbeResult:0 completionHandler:v75];
          _Block_release(v75);
        }

        else
        {
          v87 = v97;
        }
      }
    }
  }

  else
  {
    if (v47 > 29)
    {
      if (v47 <= 40)
      {
        if (v47 == 30 || v47 == 40)
        {
          goto LABEL_55;
        }

LABEL_46:
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&_mh_execute_header, v78, v79, "bad state. Invalidating", v80, 2u);
        }

        goto LABEL_55;
      }

      if (v47 != 41)
      {
        if (v47 == 100)
        {
          return;
        }

        goto LABEL_46;
      }

LABEL_55:
      swift_storeEnumTagMultiPayload();
      sub_100005518(v13);
      goto LABEL_56;
    }

    if (v47 && v47 != 10)
    {
      if (v47 != 20)
      {
        goto LABEL_46;
      }

      goto LABEL_55;
    }
  }
}

void sub_100006274()
{
  v1 = v0;
  if (qword_100015470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003CC8(v2, qword_100015720);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping SetupCoordinator", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_setup);
  sub_100004840();
}

void sub_100006360()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v73 - v7;
  v9 = type metadata accessor for SetupFlowState(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_state;
  swift_beginAccess();
  sub_100003D00(&v0[v13], v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100006BE0(*v12);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 3)
      {
        type metadata accessor for IntroViewController();
        v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        swift_unknownObjectWeakAssign();
        v16 = *&v0[OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_device];
        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        v19 = &v15[OBJC_IVAR____TtC22HomeCaptiveViewService19IntroViewController_deviceName];
        v20 = *&v15[OBJC_IVAR____TtC22HomeCaptiveViewService19IntroViewController_deviceName + 8];
        *v19 = v18;
        *(v19 + 1) = v17;

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v22 = Strong;
          [Strong pushViewController:v15 animated:1];
LABEL_7:

          return;
        }

        v59 = v15;
        v60 = sub_1000054A4();
        v61 = swift_allocObject();
        *(v61 + 16) = v0;
        *(v61 + 24) = v59;
        v86 = sub_10000887C;
        v87 = v61;
        aBlock = _NSConcreteStackBlock;
        v83 = 1107296256;
        v84 = sub_100006F8C;
        v85 = &unk_1000107C0;
        v62 = _Block_copy(&aBlock);
        v63 = v59;
        v64 = v0;

        [v60 startProxCardTransactionWithOptions:0 completion:v62];
        _Block_release(v62);

        return;
      }

LABEL_21:
      sub_100004088(v12);
      return;
    }

    v81 = v0;
    v29 = sub_10000225C(&qword_100015988, &unk_10000A760);
    v30 = (v12 + *(v29 + 48));
    v31 = v30[1];
    v79 = *v30;
    v32 = (v12 + *(v29 + 64));
    v33 = *v32;
    v34 = v32[1];
    (*(v2 + 32))(v8, v12, v1);
    v80 = [objc_allocWithZone(WSWebSheetViewController) init];
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    if (qword_100015470 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100003CC8(v37, qword_100015720);
    (*(v2 + 16))(v6, v8, v1);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    v40 = os_log_type_enabled(v38, v39);
    v78 = v2;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v74 = v39;
      v42 = v41;
      v75 = swift_slowAlloc();
      aBlock = v75;
      *v42 = 136315650;
      v43 = URL.absoluteString.getter();
      v73 = v35;
      v45 = v44;
      v46 = *(v2 + 8);
      v76 = v31;
      v77 = v46;
      v46(v6, v1);
      v47 = sub_100008EF4(v43, v45, &aBlock);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_100008EF4(v79, v76, &aBlock);
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_100008EF4(v73, v36, &aBlock);
      _os_log_impl(&_mh_execute_header, v38, v74, "Presenting WebSheet with url: %s ssid: %s interface: %s", v42, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v77 = *(v2 + 8);
      v77(v6, v1);
    }

    URL._bridgeToObjectiveC()(v48);
    v50 = v49;
    v51 = String._bridgeToObjectiveC()();

    v52 = String._bridgeToObjectiveC()();

    v54 = v80;
    v53 = v81;
    [v80 startWithURL:v50 ssid:v51 interface:v52 proxyConfiguration:0 showCancelMenu:0 delegate:v81];

    objc_opt_self();
    v55 = swift_dynamicCastObjCClass();
    if (v55)
    {
      v56 = v55;
      v57 = swift_unknownObjectWeakLoadStrong();
      if (!v57)
      {
        v67 = v54;
        v68 = sub_1000054A4();
        v69 = swift_allocObject();
        *(v69 + 16) = v53;
        *(v69 + 24) = v56;
        v86 = sub_1000085CC;
        v87 = v69;
        aBlock = _NSConcreteStackBlock;
        v83 = 1107296256;
        v84 = sub_100006F8C;
        v85 = &unk_100010770;
        v70 = _Block_copy(&aBlock);
        v71 = v53;
        v72 = v67;

        [v68 startProxCardTransactionWithOptions:0 completion:v70];
        _Block_release(v70);

        goto LABEL_43;
      }

      v58 = v57;
      [v57 pushViewController:v54 animated:1];
    }

    else
    {
      [v54 setModalPresentationCapturesStatusBarAppearance:1];
      [v54 setModalPresentationStyle:5];
      v65 = swift_unknownObjectWeakLoadStrong();
      if (!v65 || (v66 = v65, v58 = [v65 topViewController], v66, !v58))
      {

        goto LABEL_43;
      }

      [v58 presentViewController:v54 animated:1 completion:0];
    }

LABEL_43:
    v77(v8, v1);
    return;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 11)
    {
      sub_100004DFC(1);
      return;
    }

    goto LABEL_21;
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 topViewController];

    if (v26)
    {
      type metadata accessor for PinEntryViewController();
      v27 = swift_dynamicCastClass();

      if (v27)
      {
        v28 = swift_unknownObjectWeakLoadStrong();
        if (v28)
        {
          v15 = v28;
          v22 = [v28 popViewControllerAnimated:1];
          goto LABEL_7;
        }
      }
    }
  }
}

void sub_100006BE0(uint64_t a1)
{
  type metadata accessor for PinEntryViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setNumberOfDigits:a1];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_10000864C;
  v17 = v4;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000070D0;
  v15 = &unk_100010810;
  v5 = _Block_copy(&v12);

  [v3 setTextEntryCompletionHandler:v5];
  _Block_release(v5);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong pushViewController:v3 animated:1];
  }

  else
  {
    v8 = v3;
    v7 = sub_1000054A4();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v8;
    v16 = sub_10000887C;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_100006F8C;
    v15 = &unk_100010860;
    v10 = _Block_copy(&v12);
    v3 = v8;
    v11 = v1;

    [v7 startProxCardTransactionWithOptions:0 completion:v10];
    _Block_release(v10);
  }
}

void sub_100006DF8(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v12 = [Strong presentProxCardFlowWithDelegate:a2 initialViewController:a3];
    }

    else
    {
      v12 = 0;
    }

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_100015470 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003CC8(v7, qword_100015720);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "SFClient prevented HomeCaptiveViewService from displaying prox card", v10, 2u);
    }

    v11 = sub_1000054A4();
    [v11 invalidate];

    sub_100004DFC(1);
  }
}

uint64_t sub_100006F8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100006FE0()
{
  v0 = objc_allocWithZone(SKAuthenticationResponseEvent);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithPassword:v1];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_setup);
    v5 = Strong;

    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = v6;

      [v7 postEvent:v2];
    }

    else
    {
    }
  }
}

uint64_t sub_1000070D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

id sub_10000716C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007268()
{
  result = type metadata accessor for SetupFlowState(319);
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

uint64_t sub_100007340(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000737C()
{
  if (qword_100015470 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003CC8(v0, qword_100015720);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100008EF4(0xD000000000000018, 0x800000010000AC60, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_1000040E4(v4);
  }

  return sub_100004DFC(1);
}

void sub_100007588()
{
  v1 = v0;
  if (qword_100015470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003CC8(v2, qword_100015720);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100008EF4(0xD000000000000011, 0x800000010000ABF0, v15);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s called", v5, 0xCu);
    sub_1000040E4(v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong topViewController];

    v10 = [v9 presentedViewController];
    if (v10)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      v15[4] = sub_100008528;
      v15[5] = v11;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_1000050F8;
      v15[3] = &unk_100010720;
      v12 = _Block_copy(v15);
      v13 = v10;
      v14 = v1;

      [v13 dismissViewControllerAnimated:1 completion:v12];

      _Block_release(v12);
    }
  }
}

void sub_100007888()
{
  sub_1000078FC();
  if (v0 <= 0x3F)
  {
    sub_10000792C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *sub_1000078FC()
{
  result = qword_100015940;
  if (!qword_100015940)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_100015940);
  }

  return result;
}

void sub_10000792C()
{
  if (!qword_100015948)
  {
    type metadata accessor for URL();
    sub_100003C80(&unk_100015950, "N\v");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100015948);
    }
  }
}

id sub_1000079B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_remoteViewController;
  *&v4[OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_remoteViewController] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SetupFlowState(0);
  swift_storeEnumTagMultiPayload();
  *&v4[OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator____lazy_storage___sfClient] = 0;
  *&v4[OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_device] = a1;

  v9 = sub_100001838();
  type metadata accessor for Setup();
  v10 = swift_allocObject();
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = v9;
  *&v4[OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_setup] = v10;
  swift_unknownObjectWeakAssign();
  v11 = *&v4[v8];
  *&v4[v8] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_100007AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SetupFlowState(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v39 - v14);
  v16 = sub_10000225C(&qword_100015980, &qword_10000A758);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v39 - v19;
  v21 = (&v39 + *(v18 + 56) - v19);
  sub_100003D00(a1, &v39 - v19);
  sub_100003D00(a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_41;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          goto LABEL_41;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_41;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_41;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_41;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_41;
    }
  }

  else if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_41;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_41;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_41;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100003D00(v20, v13);
      v23 = sub_10000225C(&qword_100015988, &unk_10000A760);
      v24 = *(v23 + 48);
      v25 = *&v13[v24 + 8];
      v43 = *&v13[v24];
      v44 = v25;
      v26 = *(v23 + 64);
      v27 = *&v13[v26 + 8];
      v42 = *&v13[v26];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v41 = v27;
        v29 = *(v21 + v24);
        v28 = *(v21 + v24 + 8);
        v30 = *(v21 + v26 + 8);
        v40 = *(v21 + v26);
        (*(v5 + 32))(v8, v21, v4);
        v31 = static URL.== infix(_:_:)();
        v32 = *(v5 + 8);
        v32(v13, v4);
        if ((v31 & 1) == 0)
        {
          v32(v8, v4);

          goto LABEL_46;
        }

        if (v43 == v29 && v44 == v28)
        {
        }

        else
        {
          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v34 & 1) == 0)
          {
            v32(v8, v4);
LABEL_46:

LABEL_47:

LABEL_48:
            sub_100004088(v20);
            return 0;
          }
        }

        if (v41)
        {
          if (!v30)
          {

            v32(v8, v4);
            goto LABEL_48;
          }

          if (v42 == v40 && v41 == v30)
          {

            v32(v8, v4);
          }

          else
          {
            v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v32(v8, v4);
            if ((v38 & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          v32(v8, v4);
          if (v30)
          {
            goto LABEL_47;
          }
        }

LABEL_41:
        sub_100004088(v20);
        return 1;
      }

      (*(v5 + 8))(v13, v4);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_41;
    }
  }

  else
  {
    sub_100003D00(v20, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      v35 = *v15 == *v21;
      sub_100004088(v20);
      return v35;
    }
  }

  sub_100004458(v20, &qword_100015980, &qword_10000A758);
  return 0;
}

void sub_1000081C8(uint64_t a1, uint64_t a2)
{
  if (qword_100015470 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003CC8(v4, qword_100015720);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100008EF4(0xD000000000000027, 0x800000010000AC30, &v14);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s called", v7, 0xCu);
    sub_1000040E4(v8);
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Posting CaptiveNetworkNavigation event with unkown probe result", v11, 2u);
  }

  v13 = [objc_allocWithZone(SKEvent) initWithEventType:201];
  v12 = *(*(a1 + OBJC_IVAR____TtC22HomeCaptiveViewService16SetupCoordinator_setup) + 16);
  if (v12)
  {
    [v12 postEvent:v13];
  }

  (*(a2 + 16))(a2, 4);
}

void sub_1000083F0(uint64_t a1)
{
  if (qword_100015470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003CC8(v2, qword_100015720);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "WebSheetResult: %ld", v4, 0xCu);
  }
}

uint64_t sub_1000084F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupFlowState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000085D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008614()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__CFString *sub_100008670(int a1)
{
  if (a1 > 119)
  {
    if (a1 > 200)
    {
      if (a1 > 202)
      {
        switch(a1)
        {
          case 203:
            v1 = @"CaptiveNetworkIPAssignFailed";
            goto LABEL_43;
          case 204:
            v1 = @"CaptiveNetworkFailed";
            goto LABEL_43;
          case 300:
            v1 = @"BasicConfigUpdated";
            goto LABEL_43;
        }

        goto LABEL_42;
      }

      if (a1 == 201)
      {
        v1 = @"CaptiveNetworkNavigation";
      }

      else
      {
        v1 = @"CaptiveNetworkAuthenticated";
      }

      goto LABEL_43;
    }

    if (a1 > 139)
    {
      if (a1 == 140)
      {
        v1 = @"AuthenticationCompleted";
        goto LABEL_43;
      }

      if (a1 == 200)
      {
        v1 = @"CaptiveNetworkPresent";
        goto LABEL_43;
      }
    }

    else
    {
      if (a1 == 120)
      {
        v1 = @"AuthenticationRequest";
        goto LABEL_43;
      }

      if (a1 == 130)
      {
        v1 = @"AuthenticationResponse";
        goto LABEL_43;
      }
    }

LABEL_42:
    v1 = @"?";
    goto LABEL_43;
  }

  if (a1 <= 39)
  {
    if (a1 > 19)
    {
      if (a1 == 20)
      {
        v1 = @"Completed";
        goto LABEL_43;
      }

      if (a1 == 30)
      {
        v1 = @"Invalidated";
        goto LABEL_43;
      }
    }

    else
    {
      if (!a1)
      {
        v1 = @"Unknown";
        goto LABEL_43;
      }

      if (a1 == 10)
      {
        v1 = @"Started";
        goto LABEL_43;
      }
    }

    goto LABEL_42;
  }

  if (a1 > 41)
  {
    switch(a1)
    {
      case '*':
        v1 = @"Error";
        goto LABEL_43;
      case 'd':
        v1 = @"AuthenticationTypeChanged";
        goto LABEL_43;
      case 'n':
        v1 = @"AuthenticationPresent";
        goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (a1 == 40)
  {
    v1 = @"ConnectionStarted";
  }

  else
  {
    v1 = @"ConnectionEnded";
  }

LABEL_43:
  v2 = v1;

  return v1;
}

void sub_100008880()
{
  v0 = type metadata accessor for Logger();
  sub_1000041F8(v0, qword_100015BE0);
  sub_100003CC8(v0, qword_100015BE0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100008998()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_100008A7C()
{
  v0 = type metadata accessor for Logger();
  sub_1000041F8(v0, qword_100015AF0);
  v1 = sub_100003CC8(v0, qword_100015AF0);
  if (qword_100015478 != -1)
  {
    swift_once();
  }

  v2 = sub_100003CC8(v0, qword_100015BE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100008B44()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PinEntryViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v14._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x49544E4548545541;
  v3._object = 0xEE004E4F49544143;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v14);

  v6 = String._bridgeToObjectiveC()();

  [v0 setTitle:v6];

  v7 = [v1 mainBundle];
  v15._object = 0xE000000000000000;
  v8._object = 0x800000010000AEF0;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v15);

  v11 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v11];

  [v0 setDismissalType:3];
  return [v0 setUseMonospacedFont:1];
}

id sub_100008E8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PinEntryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008EF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008FC0(v11, 0, 0, 1, a1, a2);
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
    sub_100004130(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000040E4(v11);
  return v7;
}

unint64_t sub_100008FC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000090CC(a5, a6);
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

char *sub_1000090CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100009118(a1, a2);
  sub_100009248(&off_1000105E0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100009118(uint64_t a1, unint64_t a2)
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

  v6 = sub_100009334(v5, 0);
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
        v7 = sub_100009334(v10, 0);
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

uint64_t sub_100009248(uint64_t result)
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

  result = sub_1000093A8(result, v12, 1, v3);
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

void *sub_100009334(uint64_t a1, uint64_t a2)
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

  sub_10000225C(&qword_100015B38, qword_10000A7A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000093A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000225C(&qword_100015B38, qword_10000A7A8);
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

void sub_10000949C()
{
  v1 = v0;
  if (qword_100015480 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003CC8(v2, qword_100015AF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100008EF4(0xD000000000000018, 0x800000010000AED0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000040E4(v6);
  }

  v7 = String._bridgeToObjectiveC()();
  [v1 showActivityIndicatorWithStatus:v7];
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}