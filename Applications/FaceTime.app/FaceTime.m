uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[FTApplicationServices sharedInstance];
  if (!_os_feature_enabled_impl() || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 userInterfaceIdiom], v6, v7))
  {
    +[TUVideoDeviceController prewarm];
  }

  v8 = UIApplicationMain(a1, a2, 0, 0);
  objc_autoreleasePoolPop(v4);
  return v8;
}

uint64_t sub_1000034CC(uint64_t a1)
{
  qword_100126958 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000361C(uint64_t a1)
{
  +[TUCallCapabilities initializeCachedValues];
  v2 = objc_alloc_init(TUCallProviderManager);
  [*(a1 + 32) setCallProviderManager:v2];
  v3 = +[CNContactStore contactStore];
  [*(a1 + 32) setContactStore:v3];

  v4 = +[CNContactStore suggestedContactStore];
  [*(a1 + 32) setSuggestedContactStore:v4];

  v5 = objc_alloc_init(TUCallDirectoryMetadataCacheDataProvider);
  v14[0] = v5;
  v6 = objc_alloc_init(TUMapsMetadataCacheDataProvider);
  v14[1] = v6;
  v7 = objc_alloc_init(TUSuggestionsMetadataCacheDataProvider);
  v14[2] = v7;
  v8 = objc_alloc_init(TUGeoLocationMetadataCacheDataProvider);
  v14[3] = v8;
  v9 = [NSArray arrayWithObjects:v14 count:4];

  v10 = [[TUMetadataCache alloc] initWithDataProviders:v9];
  [*(a1 + 32) setMetadataCache:v10];

  if (+[PHDevice isGeminiCapable])
  {
    v11 = [v2 telephonyProvider];
    v12 = [v11 identifier];
    v13 = [v2 providerWithIdentifier:v12];
  }

  [*(a1 + 32) setInitializationBlockQueued:0];
}

id sub_100003B9C()
{
  if (qword_100126938 != -1)
  {
    sub_100003BE0();
  }

  v1 = qword_100126930;

  return v1;
}

void sub_100003C14(id a1)
{
  qword_100126930 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

void sub_100003F10(id a1)
{
  v2 = +[_UIBackdropViewSettings settingsForPrivateStyle:](_UIBackdropViewSettings, "settingsForPrivateStyle:", [UIApp backdropStyle]);
  [v2 blurRadius];
  byte_100126A08 = v1 > 0.0;
}

uint64_t sub_100004368()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100123FF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1000046F4(v0, qword_1001250B0);
  (*(v1 + 16))(v3, v4, v0);
  if (qword_100124000 != -1)
  {
    swift_once();
  }

  v5 = qword_1001250C8;
  type metadata accessor for AccelerometerOrientationMonitorWrapper();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000D8280;
  *(v6 + 32) = 0xED0000726574656DLL;
  *(v6 + 40) = nullsub_1;
  *(v6 + 48) = 0;

  sub_100004B7C();

  sub_1000525C4(&qword_100125130);
  swift_allocObject();
  result = sub_100004E68(v3, v5, v6);
  qword_1001250D0 = result;
  return result;
}

uint64_t sub_100004538()
{
  v0 = type metadata accessor for Logger();
  sub_100004690(v0, qword_1001250B0);
  v1 = sub_1000046F4(v0, qword_1001250B0);
  if (qword_100124018 != -1)
  {
    swift_once();
  }

  v2 = sub_1000046F4(v0, qword_100128950);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100004600(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100004690(v3, a2);
  sub_1000046F4(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100004690(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000046F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_10000472C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100123FF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1000046F4(v0, qword_1001250B0);
  (*(v1 + 16))(v3, v4, v0);
  type metadata accessor for SpringBoardOrientationObserver();
  v5 = swift_allocObject();
  v6 = (v5 + OBJC_IVAR____TtC8FaceTime30SpringBoardOrientationObserver_onOrientationLock);
  *v6 = nullsub_1;
  v6[1] = 0;
  *(v5 + OBJC_IVAR____TtC8FaceTime30SpringBoardOrientationObserver____lazy_storage___cfObserver) = 0;
  (*(v1 + 32))(v5 + OBJC_IVAR____TtC8FaceTime30SpringBoardOrientationObserver_logger, v3, v0);
  type metadata accessor for SpringBoardOrientationObserverWrapper();
  result = swift_allocObject();
  result[3] = 0x6F42676E69727053;
  result[4] = 0xEB00000000647261;
  result[5] = nullsub_1;
  result[6] = 0;
  result[2] = v5;
  qword_1001250C8 = result;
  return result;
}

uint64_t type metadata accessor for SpringBoardOrientationObserver()
{
  result = qword_100126560;
  if (!qword_100126560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004960()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100004A8C()
{
  result = type metadata accessor for Logger();
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

void *sub_100004B7C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for OrientationMonitorAccelerometer();
    swift_allocObject();
    v1 = sub_100004C90(sub_100064B18, v2);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_100004C34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100004C90(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v5 = [objc_allocWithZone(BKSAccelerometer) init];
  v2[4] = v5;
  v2[5] = 0;
  v6 = v2[2];
  v2[2] = a1;
  v2[3] = a2;
  v7 = v5;
  sub_100004E30(a1);
  sub_100004E40(v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = type metadata accessor for AccelerometerDelegate();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC8FaceTimeP33_2FA875DA5813DA1C29A712559EA29D9721AccelerometerDelegate_onOrientationChange];
  *v11 = sub_10009A3D0;
  v11[1] = v8;
  *&v10[OBJC_IVAR____TtC8FaceTimeP33_2FA875DA5813DA1C29A712559EA29D9721AccelerometerDelegate_accelerometer] = v7;
  v17.receiver = v10;
  v17.super_class = v9;
  v12 = v7;
  swift_retain_n();
  v13 = objc_msgSendSuper2(&v17, "init");
  v14 = v13;
  [v12 setDelegate:{v14, v17.receiver, v17.super_class}];

  sub_100004E40(a1);

  v15 = v2[5];
  v2[5] = v13;

  return v2;
}

uint64_t sub_100004DF8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004E30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100004E40(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100004E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + *(*v3 + 168)) = 0;
  v7 = qword_100126478;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v7, a1, v8);
  v10 = *(*v3 + 152);
  *(v3 + v10) = a2;
  v11 = *(*v3 + 160);
  *(v3 + v11) = a3;
  v12 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v13 = *(v3 + v11);
  *(v13 + 40) = sub_1000853A4;
  *(v13 + 48) = v12;

  v14 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v15 = *(v3 + v10);
  v15[5] = sub_100085AAC;
  v15[6] = v14;

  v16 = v15[2];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = (v16 + OBJC_IVAR____TtC8FaceTime30SpringBoardOrientationObserver_onOrientationLock);
  *v18 = sub_100085AB8;
  v18[1] = v17;

  swift_endAccess();

  sub_100005104();
  (*(v9 + 8))(a1, v8);
  return v3;
}

uint64_t sub_1000050C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100005104()
{
  v1 = v0;
  swift_beginAccess();

  sub_100004B7C();
  v2 = sub_100005E04();

  *(v1 + 24) = v2;
  if ((*(v1 + 40) & 1) == 0 && v2 - 5 > 0xFFFFFFFFFFFFFFFBLL)
  {
    *(v1 + 32) = v2;
  }

  swift_beginAccess();
  sub_1000525C4(&qword_100125138);
  swift_initStaticObject();

  v3 = sub_100005F00();

  if (v3)
  {
    sub_1000525C4(qword_100125140);
    swift_initStaticObject();

    v4 = sub_1000052D4();

    *(v1 + *(*v1 + 168)) = v4;
    if ((v4 - 1) <= 3)
    {
      *(v1 + 32) = v4;
    }

    v5 = *(v1 + 40);
    *(v1 + 40) = 1;
    sub_1000053D8(v5);
  }
}

uint64_t sub_1000052D4()
{
  if (*(v0 + 20) == 1)
  {
    LODWORD(out_token) = -1;
    v1 = String.utf8CString.getter();
    v2 = notify_register_check((v1 + 32), &out_token);

    if (v2)
    {
      if (*(v0 + 20))
      {
        return *(v0 + 40);
      }
    }

    else
    {
      *(v0 + 16) = out_token;
      *(v0 + 20) = 0;
    }
  }

  v4 = *(v0 + 16);
  v6 = (*(v0 + 48))(v0 + 40);
  notify_get_state(v4, &v6);
  (*(v0 + 64))(&out_token, v6);
  if (v8)
  {
    p_out_token = (v0 + 40);
  }

  else
  {
    p_out_token = &out_token;
  }

  return *p_out_token;
}

void sub_1000053D8(char a1)
{
  if (v1[40] == (a1 & 1))
  {
    return;
  }

  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_20;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v15 = v6;
  *v5 = 67109378;
  *(v5 + 4) = v2[40];
  *(v5 + 8) = 2080;
  v7 = *&v2[*(*v2 + 168)];

  if (v7 > 3)
  {
    if (v7 == 4)
    {
      v8 = 0xEE00746867695265;
      goto LABEL_15;
    }

    if (v7 == 5)
    {
      v8 = 0xE600000000000000;
      v9 = 0x705565636166;
      goto LABEL_19;
    }

    if (v7 != 6)
    {
LABEL_16:
      v8 = 0xE700000000000000;
      v9 = 0x6E776F6E6B6E75;
      goto LABEL_19;
    }

    v8 = 0xE800000000000000;
    v9 = 0x6E776F4465636166;
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v8 = 0x80000001000DCEF0;
        v9 = 0xD000000000000012;
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        v8 = 0xED00007466654C65;
LABEL_15:
        v9 = 0x70616373646E616CLL;
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v8 = 0xE800000000000000;
    v9 = 0x7469617274726F70;
  }

LABEL_19:
  v10 = sub_10000607C(v9, v8, &v15);

  *(v5 + 10) = v10;
  _os_log_impl(&_mh_execute_header, v3, v4, "set orientation locked: %{BOOL}d to orientation: %s", v5, 0x12u);
  sub_100005964(v6);

LABEL_20:

  if ((v2[40] & 1) == 0)
  {
    v11 = [objc_opt_self() defaultCenter];
    if (qword_1001240E0 != -1)
    {
      swift_once();
    }

    v12 = qword_100128A78;
    v13 = sub_100084F2C();
    sub_1000BEBE4(v13);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 postNotificationName:v12 object:0 userInfo:isa];
  }
}

char *sub_100005718(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005894(v5, 0);
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
        v7 = sub_100005894(v10, 0);
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

char *sub_100005848(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005718(a1, a2);
  sub_100006258(&off_10010B850);
  return v3;
}

void *sub_100005894(uint64_t a1, uint64_t a2)
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

  sub_1000525C4(&qword_100124340);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100005908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005964(uint64_t a1)
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

void sub_100005A90()
{
  v1 = v0;
  v2 = *v0;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "setOrientationEventsEnabled: %{BOOL}d", v5, 8u);
  }

  else
  {
  }

  v6 = *(v1 + 16);
  swift_beginAccess();
  (*(*(v2 + 104) + 56))(v6, *(v2 + 88));
  v7 = swift_endAccess();
  if (*(v1 + 16) == 1)
  {
    sub_10000640C(v7);
  }
}

id sub_100005C04(char a1)
{
  v3 = *v1;
  [sub_100004B7C()[4] setOrientationEventsEnabled:a1 & 1];

  v4 = *(*(v3 + 16) + 32);

  return [v4 setPassiveOrientationEvents:(a1 & 1) == 0];
}

unint64_t sub_100005E04()
{
  result = [*(v0 + 32) currentDeviceOrientation];
  if (result >= 7)
  {
    return 1;
  }

  return result;
}

uint64_t sub_100005E48()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100005F00()
{
  if (*(v0 + 20) == 1)
  {
    out_token[0] = -1;
    v1 = String.utf8CString.getter();
    v2 = notify_register_check((v1 + 32), out_token);

    if (v2)
    {
      if (*(v0 + 20))
      {
        v3 = *(v0 + 40);
        return v3 & 1;
      }
    }

    else
    {
      *(v0 + 16) = out_token[0];
      *(v0 + 20) = 0;
    }
  }

  v4 = *(v0 + 16);
  *out_token = (*(v0 + 48))(v0 + 40);
  notify_get_state(v4, out_token);
  (*(v0 + 64))(&v7, *out_token);
  v3 = v7;
  if (v7 == 2)
  {
    v3 = *(v0 + 40);
  }

  return v3 & 1;
}

void sub_100006008(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100006070@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_10000607C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006148(v11, 0, 0, 1, a1, a2);
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
    sub_100005908(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005964(v11);
  return v7;
}

unint64_t sub_100006148(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005848(a5, a6);
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

uint64_t sub_100006258(uint64_t result)
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

  result = sub_1000524D0(result, v11, 1, v3);
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

uint64_t sub_100006344(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100006404(a3);
}

void sub_10000640C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v23[-v7];
  v9 = v3[11];
  v10 = *(v9 - 8);
  __chkstk_darwin(v6);
  v12 = &v23[-v11];
  v13 = v3[20];
  swift_beginAccess();
  (*(v10 + 16))(v12, v1 + v13, v9);
  v14 = (*(v3[13] + 40))(v9);
  (*(v10 + 8))(v12, v9);
  *(v2 + 24) = v14;
  if ((*(v2 + 40) & 1) == 0 && (v14 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    *(v2 + 32) = v14;
  }

  v15 = *(*v2 + 152);
  swift_beginAccess();
  v16 = *(v5 + 16);
  v16(v8, v2 + v15, v4);
  v17 = v3[12];
  v18 = (*(v17 + 48))(v4, v17);
  v19 = *(v5 + 8);
  v19(v8, v4);
  if (v18)
  {
    v16(v8, v2 + v15, v4);
    v20 = (*(v17 + 40))(v4, v17);
    v19(v8, v4);
    *(v2 + *(*v2 + 168)) = v20;
    v21 = *(v2 + *(*v2 + 168));
    if ((v21 - 1) <= 3)
    {
      *(v2 + 32) = v21;
    }

    v22 = *(v2 + 40);
    *(v2 + 40) = 1;
    sub_100006820(v22);
  }
}

unint64_t sub_100006758()
{
  sub_100004B7C();
  v0 = sub_100005E04();

  return v0;
}

uint64_t sub_100006794()
{
  sub_1000525C4(&qword_100125138);
  swift_initStaticObject();
  return sub_100005F00() & 1;
}

uint64_t sub_1000067DC()
{
  sub_1000525C4(qword_100125140);
  swift_initStaticObject();
  return sub_1000052D4();
}

void sub_100006820(char a1)
{
  if (v1[40] == (a1 & 1))
  {
    return;
  }

  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_20;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v15 = v6;
  *v5 = 67109378;
  *(v5 + 4) = v2[40];
  *(v5 + 8) = 2080;
  v7 = *&v2[*(*v2 + 168)];

  if (v7 > 3)
  {
    if (v7 == 4)
    {
      v8 = 0xEE00746867695265;
      goto LABEL_15;
    }

    if (v7 == 5)
    {
      v8 = 0xE600000000000000;
      v9 = 0x705565636166;
      goto LABEL_19;
    }

    if (v7 != 6)
    {
LABEL_16:
      v8 = 0xE700000000000000;
      v9 = 0x6E776F6E6B6E75;
      goto LABEL_19;
    }

    v8 = 0xE800000000000000;
    v9 = 0x6E776F4465636166;
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v8 = 0x80000001000DCEF0;
        v9 = 0xD000000000000012;
        goto LABEL_19;
      }

      if (v7 == 3)
      {
        v8 = 0xED00007466654C65;
LABEL_15:
        v9 = 0x70616373646E616CLL;
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v8 = 0xE800000000000000;
    v9 = 0x7469617274726F70;
  }

LABEL_19:
  v10 = sub_10000607C(v9, v8, &v15);

  *(v5 + 10) = v10;
  _os_log_impl(&_mh_execute_header, v3, v4, "set orientation locked: %{BOOL}d to orientation: %s", v5, 0x12u);
  sub_100005964(v6);

LABEL_20:

  if ((v2[40] & 1) == 0)
  {
    v11 = [objc_opt_self() defaultCenter];
    if (qword_1001240E0 != -1)
    {
      swift_once();
    }

    v12 = qword_100128A78;
    v13 = sub_1000BF2F0();
    sub_1000BEBE4(v13);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 postNotificationName:v12 object:0 userInfo:isa];
  }
}

id sub_100007408(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR___FTRecentsContainerViewController_presentScreenTimeShield];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR___FTRecentsContainerViewController_recentsList] = 0;
  *&v3[OBJC_IVAR___FTRecentsContainerViewController_content] = 0;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for RecentsContainerViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

void sub_10000777C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_100007864()
{
  v1 = v0;
  v2 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - v3;
  v5 = OBJC_IVAR___FTRecentsContainerViewController_recentsList;
  if (*(v1 + OBJC_IVAR___FTRecentsContainerViewController_recentsList))
  {
    if (qword_100124010 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000046F4(v6, qword_100125920);
    v51 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v51, v7, "Already showing RecentsListViewController", v8, 2u);
    }

    v9 = v51;
  }

  else
  {
    if (qword_100124010 != -1)
    {
      swift_once();
    }

    v51 = v5;
    v10 = type metadata accessor for Logger();
    sub_1000046F4(v10, qword_100125920);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Showing RecentsListViewController", v13, 2u);
    }

    v14 = [objc_opt_self() sharedApplication];
    objc_opt_self();
    v50 = v14;
    v15 = swift_dynamicCastObjCClassUnconditional();
    type metadata accessor for RecentsListItemViewHelper();
    [v15 shouldUseCompactHorizontalLayout];
    static RecentsListItemViewHelper.shouldUseCompactHorizontalLayout.setter();
    v16 = [objc_opt_self() sharedInstance];
    v49 = [v16 callProviderManager];
    v17 = [v16 contactStore];
    v18 = [v16 metadataCache];
    v19 = [v16 suggestedContactStore];
    v20 = type metadata accessor for BlockList();
    v21 = static BlockList.shared.getter();
    v56 = v20;
    v57 = &off_10010B918;
    v55[0] = v21;
    type metadata accessor for CoalescedRecentsController();
    v22 = swift_allocObject();
    v23 = sub_10009C3DC(v55, v20);
    __chkstk_darwin(v23);
    v25 = (&v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = sub_10009C42C(0, v49, v17, v18, v19, *v25, v22);
    sub_100005964(v55);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v27;

    sub_10009A64C(0, 0, v4, &unk_1000D6F80, v29);

    v30 = type metadata accessor for RecentCallProvider();
    v31 = objc_allocWithZone(v30);

    v33 = sub_1000927CC(v32);
    v56 = v30;
    v57 = sub_100008BF0(&qword_100125A08, type metadata accessor for RecentCallProvider);
    v58 = sub_100008BF0(&qword_100125A10, type metadata accessor for RecentCallProvider);
    v55[0] = v33;
    v34 = type metadata accessor for RecentCallDetailControllerFactory();
    v35 = swift_allocObject();
    v36 = objc_allocWithZone(TUFeatureFlags);

    v37 = [v36 init];
    *(v35 + 16) = v27;
    *(v35 + 24) = v37;
    v53 = v34;
    v54 = sub_100008BF0(&qword_100125A18, type metadata accessor for RecentCallDetailControllerFactory);
    v52 = v35;
    v38 = [v16 contactStore];
    v39 = objc_allocWithZone(type metadata accessor for RecentsListViewController());
    v40 = RecentsListViewController.init(recentCallProvider:detailControllerFactory:contactStore:)();
    v41 = v51;
    v42 = *(&v51->isa + v1);
    *(&v51->isa + v1) = v40;
    v43 = v40;

    sub_100009158();
    v44 = *(&v41->isa + v1);
    if (v44)
    {
      v56 = &type metadata for VoicemailDetailBuilder;
      v57 = sub_100009758();
      v45 = v44;
      dispatch thunk of RecentsListViewController.voicemailDetailBuilder.setter();

      v46 = *(&v41->isa + v1);
      if (v46)
      {
        v47 = *(v1 + OBJC_IVAR___FTRecentsContainerViewController_presentScreenTimeShield);
        v48 = v46;
        sub_100004E30(v47);
        dispatch thunk of RecentsListViewController.presentScreenTimeShield.setter();
      }
    }
  }
}

uint64_t sub_100007F34()
{
  v0 = type metadata accessor for Logger();
  sub_100004690(v0, qword_100125920);
  v1 = sub_1000046F4(v0, qword_100125920);
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v2 = sub_1000046F4(v0, qword_100128968);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100008420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100008438(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 16);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

void sub_10000865C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100008674(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 24);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

void sub_10000886C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100008884(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 40);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

void sub_100008A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100008A88(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 32);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

char *sub_100008B10()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_100125E80);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100008B40()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_100125E88);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100008B70()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_100125E90);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100008BA0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100008BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009030(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

uint64_t sub_100009084(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8FaceTime18RecentCallProvider_delegate;
  swift_beginAccess();
  sub_1000090E8(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1000090E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000525C4(&qword_100125660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100009158()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___FTRecentsContainerViewController_recentsList];
  if (!v2)
  {
    type metadata accessor for Features();
    v5 = static Features.shared.getter();
    v6 = Features.isFaceTimeLaunchPageEnabled.getter();

    if (v6)
    {
    }

    v7 = *&v1[OBJC_IVAR___FTRecentsContainerViewController_content];
    v12 = v7;
    *&v1[OBJC_IVAR___FTRecentsContainerViewController_content] = 0;
    sub_10000952C(v7);
    goto LABEL_7;
  }

  type metadata accessor for Features();
  v12 = v2;
  v3 = static Features.shared.getter();
  v4 = Features.isFaceTimeLaunchPageEnabled.getter();

  if (v4)
  {

    [v1 pushViewController:v12 animated:1];
LABEL_7:
    v8 = v12;
    goto LABEL_9;
  }

  v9 = [objc_allocWithZone(PHFrecentNavigationController) initWithRootViewController:v12];
  v10 = *&v1[OBJC_IVAR___FTRecentsContainerViewController_content];
  *&v1[OBJC_IVAR___FTRecentsContainerViewController_content] = v9;
  v11 = v9;
  sub_10000952C(v10);

  v8 = v10;
LABEL_9:
}

void sub_10000952C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100008BA0(0, &qword_1001244C0);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  v9 = a1;
  [v9 willMoveToParentViewController:0];
  v10 = [v9 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  [v9 removeFromParentViewController];
LABEL_5:
  v12 = *&v2[OBJC_IVAR___FTRecentsContainerViewController_content];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  [v2 addChildViewController:v13];
  v14 = [v2 view];
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v13 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v17 = v16;
  [v15 addSubview:v16];

  [v13 didMoveToParentViewController:v2];
}

unint64_t sub_100009758()
{
  result = qword_100125A20;
  if (!qword_100125A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125A20);
  }

  return result;
}

uint64_t sub_1000097AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (*v2 + OBJC_IVAR____TtC8FaceTime18RecentCallProvider_presentScreenTimeShield);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  sub_100004E40(v7);
  v8 = *(v5 + OBJC_IVAR____TtC8FaceTime18RecentCallProvider_recentsController);
  v9 = *(v8 + 72);
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;
  sub_100004E30(a1);
  return sub_100004E40(v9);
}

void sub_100009AD0(id a1)
{
  v4[0] = CNContactPhoneNumbersKey;
  v4[1] = CNContactEmailAddressesKey;
  v1 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v4[2] = v1;
  v4[3] = CNContactSocialProfilesKey;
  v2 = [NSArray arrayWithObjects:v4 count:4];
  v3 = qword_100126988;
  qword_100126988 = v2;
}

void sub_100009C58()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for RecentsContainerViewController();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR___FTRecentsContainerViewController_content];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_100009D40()
{
  v1 = v0;
  v52 = type metadata accessor for ServiceProvider();
  v2 = *(v52 - 8);
  v3 = __chkstk_darwin(v52);
  v51 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v50 = &v37 - v5;
  v59 = type metadata accessor for RecentCall();
  v6 = *(v59 - 8);
  __chkstk_darwin(v59);
  v49 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HistoryItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GroupedHistoryItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v1 + OBJC_IVAR____TtC8FaceTime18RecentCallProvider_recentsController) + 88);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);

  v18 = (v16 + 24);
  v19 = v17;
  os_unfair_lock_unlock(v18);
  v20 = *(v17 + 16);
  if (v20)
  {
    v53 = 0;
    v21 = v6;
    v24 = *(v13 + 16);
    v22 = v13 + 16;
    v23 = v24;
    v25 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v37 = v19;
    v26 = v19 + v25;
    v55 = *(v22 + 56);
    v58 = (v9 + 88);
    v57 = enum case for HistoryItem.recentCall(_:);
    v56 = (v22 - 8);
    v47 = (v9 + 96);
    v48 = (v9 + 8);
    v46 = (v21 + 32);
    v45 = enum case for ServiceProvider.faceTime(_:);
    v43 = (v2 + 8);
    v44 = (v2 + 104);
    v41 = v8;
    v42 = (v21 + 8);
    v39 = v22;
    v40 = v11;
    v38 = v24;
    v24(v15, v26, v12);
    while (1)
    {
      GroupedHistoryItem.mostRecentItem.getter();
      v27 = (*v58)(v11, v8);
      if (v27 == v57)
      {
        (*v47)(v11, v8);
        v28 = v49;
        (*v46)(v49, v11, v59);
        v29 = v50;
        RecentCall.serviceProvider.getter();
        v30 = v15;
        v31 = v12;
        v32 = v51;
        v33 = v52;
        (*v44)(v51, v45, v52);
        v54 = static ServiceProvider.== infix(_:_:)();
        v34 = *v43;
        v35 = v32;
        v12 = v31;
        v15 = v30;
        (*v43)(v35, v33);
        v34(v29, v33);
        (*v42)(v28, v59);
        result = (*v56)(v30, v12);
        if (v54)
        {
          if (__OFADD__(v53, 1))
          {
            __break(1u);
            return result;
          }

          ++v53;
        }

        v11 = v40;
        v8 = v41;
        v23 = v38;
      }

      else
      {
        (*v56)(v15, v12);
        (*v48)(v11, v8);
      }

      v26 += v55;
      if (!--v20)
      {

        return v53;
      }

      v23(v15, v26, v12);
    }
  }

  return 0;
}

void sub_10000A3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000A400(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 120);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

uint64_t sub_10000A52C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A53C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A54C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A55C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A56C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A57C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A58C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A59C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A5AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000A5BC()
{
  result = qword_1001244C8;
  if (!qword_1001244C8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001244C8);
  }

  return result;
}

unint64_t sub_10000A614()
{
  result = qword_1001244D8;
  if (!qword_1001244D8)
  {
    sub_10005BA5C(&qword_1001244D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001244D8);
  }

  return result;
}

uint64_t sub_10000A6C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_10000A74C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000525C4(&qword_100124418);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_10000AB38(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_10000A844()
{
  result = qword_1001256C0;
  if (!qword_1001256C0)
  {
    sub_100008BA0(255, &qword_1001243D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001256C0);
  }

  return result;
}

id sub_10000A9C0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10000AB38(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10000AB7C(v13, a3 & 1);
      v8 = sub_10000AB38(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100008BA0(0, &qword_1001243D0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1000B929C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

unint64_t sub_10000AB38(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000AB90(a1, v4);
}

unint64_t sub_10000AB90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100008BA0(0, &qword_1001243D0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_10000ADD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000ADF0(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    qword_100126980 = *v1;
  }
}

void sub_10000AEBC(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"UNKNOWN_LABEL" value:&stru_10010E930 table:@"PHRecents"];
  v4 = qword_100126968;
  qword_100126968 = v3;

  v5 = [*(a1 + 32) featureFlags];
  LODWORD(v2) = [v5 callHistorySearchEnabled];

  if (v2)
  {
    v8 = TUBundle();
    v6 = [v8 localizedStringForKey:@"UNKNOWN_LABEL" value:&stru_10010E930 table:@"TelephonyUtilities"];
    v7 = qword_100126968;
    qword_100126968 = v6;
  }
}

uint64_t sub_10000AFFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000525C4(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000B08C(uint64_t a1)
{
  v2 = type metadata accessor for RecentsCallHandle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10000B228(&qword_100125668, &type metadata accessor for RecentsCallHandle);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10000B270(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10000B228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000B270(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for RecentsCallHandle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10000B228(&qword_100125668, &type metadata accessor for RecentsCallHandle);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10000B228(&qword_100125670, &type metadata accessor for RecentsCallHandle);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10000B550(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10000B550(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for RecentsCallHandle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100095B20();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100097120(&type metadata accessor for RecentsCallHandle, &qword_100125678);
      goto LABEL_12;
    }

    sub_100097910();
  }

  v12 = *v3;
  sub_10000B228(&qword_100125668, &type metadata accessor for RecentsCallHandle);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10000B228(&qword_100125670, &type metadata accessor for RecentsCallHandle);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10000B818(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000525C4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000B880(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000525C4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000B8E0()
{
  v1 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = *(*v0 + OBJC_IVAR____TtC8FaceTime18RecentCallProvider_recentsController);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_100091AFC(0, 0, v3, &unk_1000D8BC8, v6);
}

void sub_10000BAD8(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentCallsAsRead];
}

uint64_t sub_10000BBC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000BC24(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000BF04@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000BF54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BFD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C014()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10000C084@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isAnyAccountSubscribed];
  *a2 = result;
  return result;
}

char *sub_10000C0B8()
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  type metadata accessor for Optional();
  return type metadata accessor for Mutex();
}

char *sub_10000C104()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_1001248A8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10000C134()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_1001248B0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10000C164()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_1001248B8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10000C194()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return type metadata accessor for Mutex();
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10000C1D4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C20C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C244()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C28C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C350()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C388()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1000525C4(&qword_100124348) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_10000C550()
{
  v1 = *(sub_1000525C4(&qword_100124348) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C678()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

__n128 sub_10000C6C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10000C6DC()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10000C714@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transcriptionProgress];
  *a2 = result;
  return result;
}

id sub_10000C75C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 transcriptionEnabled];
  *a2 = result;
  return result;
}

id sub_10000C79C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storageUsage];
  *a2 = result;
  return result;
}

id sub_10000C7DC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMessageWaiting];
  *a2 = result;
  return result;
}

uint64_t sub_10000C81C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C854()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_10000C88C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 online];
  *a2 = result;
  return result;
}

id sub_10000C8CC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 anyAccountSubscribed];
  *a2 = result;
  return result;
}

uint64_t sub_10000C96C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C9A4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000C9DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CA14()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10000CA54()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_100124CA0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10000CA84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CABC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CAF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CB2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000CB6C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000CBB8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000CC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10000CCE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CD20()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10000CD60()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000CDC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CDF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CE30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CE68()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000CF30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000CF70()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000CFB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CFF8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D038()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10000D0D0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_100125220);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10000D100()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_1001248B0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10000D130()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D168()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000D248()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000D2E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D31C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D368()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D3A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D3D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D420()
{

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10000D464()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&unk_100125430);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10000D494()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D4CC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000D630()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D66C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D6A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D6E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D728()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D760()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000D898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52) + 8) = (a2 - 1);
  }

  return result;
}

char *sub_10000D954()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_100126220);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10000D984()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(&qword_100126228);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10000D9B4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000525C4(qword_100126230);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10000D9E4()
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  type metadata accessor for FTMessage.Lazy.State();
  return type metadata accessor for Mutex();
}

uint64_t sub_10000DA34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DA6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DAA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DAF0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DB28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000DB70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DBAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DBE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DC24()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10000F848()
{
  if (qword_1001268B8 != -1)
  {
    sub_1000C40E4();
  }

  v1 = qword_1001268B0;

  return v1;
}

void sub_10000F88C(id a1)
{
  qword_1001268B0 = CUTWeakLinkClass();
  if (!qword_1001268B0)
  {
    v1 = sub_100003B9C();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find class RTTUIConversationViewController; RTTUI may have failed to link.", v2, 2u);
    }
  }
}

id sub_10000F914()
{
  if (qword_1001268C8 != -1)
  {
    sub_1000C40F8();
  }

  v1 = qword_1001268C0;

  return v1;
}

void sub_10000F958(id a1)
{
  qword_1001268C0 = CUTWeakLinkClass();
  if (!qword_1001268C0)
  {
    v1 = sub_100003B9C();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find class RTTUIUtilities; RTTUI.framework may have failed to link.", v2, 2u);
    }
  }
}

void sub_100011730(id a1)
{
  v1 = sub_100003B9C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "prewarming InCallService...", buf, 2u);
  }

  v2 = objc_alloc_init(CUTWeakLinkClass());
  v3 = TUBundleIdentifierInCallServiceApplication;
  if ([v2 pidForApplication:TUBundleIdentifierInCallServiceApplication] == -1)
  {
    [v2 openApplication:v3 options:&__NSDictionary0__struct withResult:&stru_10010AD20];
  }

  else
  {
    v4 = sub_100003B9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InCallService is already running...", v5, 2u);
    }
  }
}

void sub_100011838(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100003B9C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000C410C(v2, v3);
    }
  }
}

void sub_100012370(id a1)
{
  v1 = +[UIDevice currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if ((v2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = 1024.0;
  }

  else
  {
    v3 = 480.0;
  }

  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;

  byte_1001268D4 = v6 > v3;
}

void sub_10001252C(id a1)
{
  v1 = +[UIDevice currentDevice];
  qword_1001268E0 = [v1 _graphicsQuality];
}

void sub_100013FE4(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = [*(a1 + 32) tableView];
  [v3 setNeedsLayout];
}

void sub_1000146C8(id a1)
{
  v4 = [UIImage tpImageForSymbolType:29 textStyle:UIFontTextStyleCaption1 scale:1 isStaticSize:0];
  v1 = [UIColor colorWithWhite:0.800000012 alpha:1.0];
  v2 = [v4 _flatImageWithColor:v1];
  v3 = qword_1001268F0;
  qword_1001268F0 = v2;
}

void sub_1000147B4(id a1)
{
  v4 = [UIImage tpImageForSymbolType:29 textStyle:UIFontTextStyleCaption1 scale:1 isStaticSize:0];
  v1 = [UIColor colorWithWhite:0.800000012 alpha:1.0];
  v2 = [v4 _flatImageWithColor:v1];
  v3 = qword_1001268F8;
  qword_1001268F8 = v2;
}

void sub_1000148A0(id a1)
{
  v4 = [UIImage tpImageForSymbolType:37 textStyle:UIFontTextStyleCaption1 scale:1 isStaticSize:0];
  v1 = [UIColor colorWithWhite:0.800000012 alpha:1.0];
  v2 = [v4 _flatImageWithColor:v1];
  v3 = qword_100126900;
  qword_100126900 = v2;
}

void sub_10001498C(id a1)
{
  v4 = [UIImage tpImageForSymbolType:36 textStyle:UIFontTextStyleCaption1 scale:1 isStaticSize:0];
  v1 = [UIColor colorWithWhite:0.800000012 alpha:1.0];
  v2 = [v4 _flatImageWithColor:v1];
  v3 = qword_100126908;
  qword_100126908 = v2;
}

void sub_1000167D4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    IOHIDEventSystemClientUnscheduleFromDispatchQueue();
    v2 = *(a1 + 40);

    CFRelease(v2);
  }
}

id sub_1000168AC(uint64_t a1)
{
  result = [*(a1 + 32) HIDEventSystemClient];
  if (!result)
  {
    result = IOHIDEventSystemClientCreate();
    if (result)
    {
      v3 = result;
      v5[0] = @"DeviceUsagePage";
      v5[1] = @"DeviceUsage";
      v6[0] = &off_100110E98;
      v6[1] = &off_100110EB0;
      [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
      IOHIDEventSystemClientSetMatching();
      IOHIDEventSystemClientRegisterEventBlock();
      v4 = [*(a1 + 32) dispatchQueue];
      IOHIDEventSystemClientScheduleWithDispatchQueue();

      return [*(a1 + 32) setHIDEventSystemClient:v3];
    }
  }

  return result;
}

void sub_1000169BC(id a1, void *a2, void *a3, void *a4, __IOHIDEvent *a5)
{
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = a2;
      if (IOHIDEventGetType() == 3)
      {
        [v9 handleKeyboardEvent:a5];
      }

      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }
}

void sub_1000175AC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001765C;
  v4[3] = &unk_10010AEE0;
  v4[4] = *(a1 + 32);
  v3 = [v2 addObserverForName:TUCallCapabilitiesThumperCallingChangedNotification object:0 queue:0 usingBlock:v4];
}

void sub_100017664(id a1, IMUserNotification *a2)
{
  v2 = [(IMUserNotification *)a2 response];
  v3 = sub_100003B9C();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User tapped Not Now on the Thumper Available Alert in FaceTime", v5, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User tapped Turn On on the Thumper Available Alert in FaceTime", buf, 2u);
    }

    +[TUCallCapabilities requestPinFromPrimaryDevice];
  }
}

uint64_t sub_1000177BC(uint64_t a1)
{
  qword_100126948 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100018004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) _accessibilityHigherContrastTintColorForColor:a2];
  v8 = *(a1 + 40);
  v10 = NSForegroundColorAttributeName;
  v11 = v7;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v8 setAttributes:v9 range:{a3, a4}];
}

void sub_100018490(uint64_t a1)
{
  v2 = objc_alloc_init(PhoneRootViewController);
  [UIApp setRootViewController:v2];

  v5 = [UIApp rootViewController];
  v3 = [v5 view];
  v4 = [v3 window];

  if (!v4)
  {
    [*(*(a1 + 32) + 16) setRootViewController:v5];
  }

  [*(a1 + 32) _initializeUI];
  [*(a1 + 32) setIsUIInitialized:1];
  [*(*(a1 + 32) + 16) makeKeyAndVisible];
}

id sub_10001C6E4(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationDelegate];
  [v2 registrationViewSignInPhoneAccount:*(a1 + 32)];

  [*(a1 + 32) setSigningIn:1];
  v3 = *(a1 + 32);

  return [v3 setActivationFailed:0];
}

void sub_10001C744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100003B9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4450(v4, v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001E11C(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  v2 = v1 == 0;

  if (v2)
  {
    v6 = sub_100003B9C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopped loadRTTConversations because MPRecentsContactHeaderViewController was deallocated before starting", buf, 2u);
    }
  }

  else
  {
    v16 = +[NSMutableDictionary dictionary];
    v3 = objc_loadWeakRetained(&to);
    v4 = [v3 recentCall];
    v5 = [v4 callOccurrences];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v7)
    {
      v8 = *v22;
      v9 = kCHCallOccurrenceUniqueIdKey;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v21 + 1) + 8 * v10) objectForKeyedSubscript:{v9, v16}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = [*(a1 + 40) sharedUtilityProvider];
            v14 = [v13 conversationForCallUID:v12];

            if (v14)
            {
              [v16 setObject:v14 forKeyedSubscript:v12];
            }
          }

          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v7);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001E414;
    block[3] = &unk_10010AFB8;
    objc_copyWeak(&v20, (a1 + 32));
    v19 = v16;
    v15 = v16;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v20);
  }

  objc_destroyWeak(&to);
}

void sub_10001E414(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setRttConversations:*(a1 + 32)];
    v4 = sub_100003B9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully finished loadRTTConversations", buf, 2u);
    }

    v5 = sub_100003B9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading conversation list", v8, 2u);
    }

    v6 = [v3 detailsView];
    [v6 reloadCallOccurences];
  }

  else
  {
    v6 = sub_100003B9C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopped loadRTTConversations because MPRecentsContactHeaderViewController was deallocated when trying to write rttConversations", v7, 2u);
    }
  }
}

void sub_10001EC38(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactFormatter];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = [*(a1 + 32) fetchNumberFormatter];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = *(a1 + 32);
  v10 = *(v9 + 88);
  *(v9 + 88) = v8;

  [*(a1 + 32) updateRecentCalls];
  [*(a1 + 32) setUnreadCallCount:{objc_msgSend(*(*(a1 + 32) + 24), "unreadCallCount")}];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:*(a1 + 32) selector:"handleCNContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];
  [*(a1 + 32) addAcceptedIntroductionsNotifier];
  [v11 addObserver:*(a1 + 32) selector:"handleIDSServiceAvailabilityDidChangeNotification:" name:IDSServiceAvailabilityDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleNSCurrentLocaleDidChangeNotification:" name:NSCurrentLocaleDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleTUCallHistoryControllerRecentCallsDidChangeNotification:" name:TUCallHistoryControllerRecentCallsDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:" name:TUCallHistoryControllerUnreadCallCountDidChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleTUMetadataCacheDidFinishUpdatingNotification:" name:TUMetadataCacheDidFinishUpdatingNotification object:*(*(a1 + 32) + 112)];
  [v11 addObserver:*(a1 + 32) selector:"handleUIApplicationSignificantTimeChangeNotification:" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v11 addObserver:*(a1 + 32) selector:"handleUIApplicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];
  objc_initWeak(&location, *(a1 + 32));
  if (qword_100126978 != -1)
  {
    sub_1000C450C();
  }

  v12 = qword_100126980;
  v13 = *(a1 + 32);
  v14 = *(v13 + 56);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001EF08;
  handler[3] = &unk_10010B030;
  objc_copyWeak(&v17, &location);
  v16 = *(a1 + 32);
  notify_register_dispatch(v12, (v13 + 16), v14, handler);
  [*(a1 + 32) setInitializationBlockQueued:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void sub_10001EEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001EF08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_100003B9C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_100126978 != -1)
      {
        sub_1000C4534();
      }

      *buf = 136315138;
      v10 = qword_100126980;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling %s by fetching metadata for recent calls", buf, 0xCu);
    }

    v4 = [*(a1 + 32) recentCalls];
    if ([v4 count])
    {
      v5 = [*(a1 + 32) serialQueue];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10001F08C;
      v6[3] = &unk_10010B008;
      v7 = *(a1 + 32);
      v8 = v4;
      dispatch_async(v5, v6);
    }
  }
}

uint64_t sub_10001F158(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001F430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001F44C(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) contactForHandle:*(a1 + 40)];

  return _objc_release_x1();
}

void sub_10001F5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F5C4(uint64_t a1)
{
  v6 = [*(a1 + 32) itemCache];
  v2 = [*(a1 + 40) uniqueId];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001F79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F7B4(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  v3 = [v2 coalescingStrategy];

  if (v3 == 2)
  {
    v4 = &kCHCoalescingStrategyCollapseIfEqual;
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = &kCHCoalescingStrategyRecents;
  }

  v5 = *v4;
  if (v5)
  {
    v9 = v5;
    v6 = [*(a1 + 40) coalescedCallWithCall:*(a1 + 48) usingStrategy:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_10001F90C(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 deleteAllRecentCalls];
}

void sub_10001FA04(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 deleteRecentCalls:*(a1 + 40)];
}

void sub_10001FAE0(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentAudioCallsAsRead];
}

void sub_10001FBAC(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentVideoCallsAsRead];
}

void sub_10001FD50(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 updateReminderUUID:*(a1 + 40) forRecentCall:*(a1 + 48)];
}

void sub_10001FF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001FF78(uint64_t a1)
{
  v7 = [*(a1 + 32) contactsByHandleForRecentCall:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  v2 = [v7 allValues];
  v3 = [v2 firstObject];
  v4 = [v3 firstObject];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100020150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020168(uint64_t a1)
{
  v2 = [*(a1 + 32) contactsByHandleForRecentCall:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v2 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v2 objectForKeyedSubscript:v11];
          v13 = [v12 firstObject];
          [*(*(*(a1 + 56) + 8) + 40) setObject:v13 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

void sub_1000202E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdatedContacts];
}

void sub_10002043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020454(uint64_t a1)
{
  v2 = sub_100003B9C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to create a dial request for recent call %@", &v12, 0xCu);
  }

  v4 = [*(a1 + 40) callProviderManager];
  v5 = [v4 dialRequestForRecentCall:*(a1 + 32)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = [*(a1 + 32) validRemoteParticipantHandles];
    v9 = [v8 anyObject];

    if (v9)
    {
      v10 = [*(a1 + 40) contactForHandle:v9];
      v11 = [v10 identifier];
      [*(*(*(a1 + 48) + 8) + 40) setContactIdentifier:v11];
    }

    [*(*(*(a1 + 48) + 8) + 40) setOriginatingUIType:8];
  }

  else
  {
    v9 = sub_100003B9C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4548((a1 + 32), v9);
    }
  }
}

void sub_100020730(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100003B9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000C45C4(a1, v3, v4);
    }
  }
}

void sub_100022B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100022B6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = +[CNContactViewController descriptorForRequiredKeys];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v6 = [v2 fetchUnifiedContactForID:v3 withDescriptors:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_100024A2C(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 phoneRecentsAvatarsEnabled];

  if (v3)
  {
    v4 = [*(a1 + 32) serialQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100024AF8;
    v7[3] = &unk_10010B008;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, v7);
  }
}

void sub_100024AF8(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [v7 uniqueId];
          v9 = [*(a1 + 40) itemCache];
          v10 = [v9 objectForKeyedSubscript:v8];
          v11 = [v10 mutableCopy];

          if (v11)
          {
            v12 = [*(a1 + 40) localizedSubtitleForRecentCall:v7];
            [v11 setLocalizedSubtitle:v12];

            v13 = [v11 copy];
            v14 = [*(a1 + 40) itemCache];
            [v14 setObject:v13 forKeyedSubscript:v8];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
    }

    os_unfair_lock_lock((*(a1 + 40) + 12));
    [*(a1 + 40) notifyDelegatesRecentsController:*(a1 + 40) didUpdateCalls:*(a1 + 32)];
    os_unfair_lock_unlock((*(a1 + 40) + 12));
  }
}

void sub_100024E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100024E90(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained serialQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024F68;
  v9[3] = &unk_10010B1E8;
  v9[4] = WeakRetained;
  v10 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  dispatch_async(v5, v9);
}

void sub_100024F68(uint64_t a1)
{
  [*(a1 + 32) setBlockedStatusCache:*(a1 + 40)];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 48);
  v2 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v28;
    v20 = *v28;
    do
    {
      v5 = 0;
      v21 = v3;
      do
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        v7 = [v6 uniqueId];
        v8 = [*(a1 + 32) itemCache];
        v9 = [v8 objectForKeyedSubscript:v7];
        v10 = [v9 mutableCopy];

        if (v10)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = [v6 remoteParticipantHandles];
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = *v24;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v23 + 1) + 8 * i);
                v16 = [*(a1 + 32) blockedStatusCache];
                v17 = [v16 objectForKeyedSubscript:v15];

                if (v17 && [v17 intValue] == 1)
                {

                  v12 = 1;
                  goto LABEL_18;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }

LABEL_18:
            v4 = v20;
            v3 = v21;
          }

          [v10 setIsBlocked:v12];
          v18 = [v10 copy];
          v19 = [*(a1 + 32) itemCache];
          [v19 setObject:v18 forKeyedSubscript:v7];
        }

        v5 = v5 + 1;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v3);
  }

  os_unfair_lock_lock((*(a1 + 56) + 12));
  [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didUpdateCalls:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 56) + 12));
}

void sub_100025CDC(uint64_t a1)
{
  v6 = [*(a1 + 32) recentCalls];
  if ([v6 count])
  {
    v2 = [*(a1 + 32) contactCache];
    [v2 removeAllObjects];

    v3 = *(a1 + 32);
    v4 = [v3 recentCalls];
    [v3 fetchContactsForRecentCalls:v4];

    v5 = [*(a1 + 32) itemCache];
    [v5 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v6];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v6];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

void sub_1000261A4(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactFormatter];
  [*(a1 + 32) setContactFormatter:v2];

  v3 = [*(a1 + 32) fetchNumberFormatter];
  [*(a1 + 32) setNumberFormatter:v3];

  v8 = [*(a1 + 32) recentCalls];
  if ([v8 count])
  {
    v4 = [*(a1 + 32) itemCache];
    [v4 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v8];
    v5 = [*(a1 + 32) featureFlags];
    v6 = [v5 phoneRecentsAvatarsEnabled];

    os_unfair_lock_lock((*(a1 + 32) + 12));
    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 notifyDelegatesRecentsController:v7 didUpdateCalls:v8];
    }

    else
    {
      [v7 notifyDelegatesRecentsController:v7 didChangeCalls:v8];
    }

    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

id sub_100026488(uint64_t a1)
{
  [*(a1 + 32) setStartedLoadingOlderCalls:0];
  v2 = *(a1 + 32);

  return [v2 updateRecentCalls];
}

void sub_1000267B8(uint64_t a1)
{
  v2 = [*(a1 + 32) recentCalls];
  if ([v2 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 uniqueId];
          v10 = [*(a1 + 32) itemCache];
          v11 = [v10 objectForKeyedSubscript:v9];
          v12 = [v11 mutableCopy];

          if (v12)
          {
            v13 = [*(a1 + 32) localizedSubtitleForRecentCall:v8];
            [v12 setLocalizedSubtitle:v13];

            v14 = [v12 copy];
            v15 = [*(a1 + 32) itemCache];
            [v15 setObject:v14 forKeyedSubscript:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
    v2 = v16;
  }
}

void sub_100026B04(uint64_t a1)
{
  v3 = [*(a1 + 32) recentCalls];
  if ([v3 count])
  {
    v2 = [*(a1 + 32) itemCache];
    [v2 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v3];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

id sub_10002A2A0(uint64_t a1)
{
  v2 = sub_100003B9C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PHLocalVideoViewController calling startPreivew on the main thread.", v4, 2u);
  }

  return [*(a1 + 32) startPreview];
}

void sub_10002A6B0(uint64_t a1)
{
  v2 = [*(a1 + 32) localVideoView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) backVideoView];
  [v3 setAlpha:1.0];
}

void sub_10002A720(uint64_t a1)
{
  v1 = [*(a1 + 32) localVideoView];
  [v1 setAlpha:1.0];
}

void *sub_10002B420(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1001269A0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10002B548;
    v4[4] = &unk_10010AF00;
    v4[5] = v4;
    v5 = off_10010B2C0;
    v6 = 0;
    qword_1001269A0 = _sl_dlopen();
  }

  v2 = qword_1001269A0;
  if (!qword_1001269A0)
  {
    sub_1000C47AC(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "SBSGetScreenLockStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100126998 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10002B548()
{
  result = _sl_dlopen();
  qword_1001269A0 = result;
  return result;
}

id sub_10002BCBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 handle];
  v8 = [v7 value];

  if ([v8 length])
  {
    v9 = *(a1 + 32);
    v10 = [v6 UUID];
    LODWORD(v9) = [v9 isEmergencyNumberForDigits:v8 senderIdentityUUID:v10];

    if (v9)
    {
      [v5 setDialType:1];
    }
  }

  if ([v5 dialType] == 1 && objc_msgSend(*(a1 + 40), "canMakeEmergencyCallForSenderIdentity:", v6))
  {
    v11 = v6;
    v12 = sub_100003B9C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating emergency dial request %@ to use sender identity %@", &v16, 0x16u);
    }

    v13 = [v11 UUID];
    [v5 setLocalSenderIdentityUUID:v13];

    v14 = [v11 accountUUID];
    [v5 setLocalSenderIdentityAccountUUID:v14];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_10002CC64(uint64_t a1)
{
  v3 = [*(a1 + 32) tableViewModel];
  v2 = [*(a1 + 32) unknownContacts];
  [v3 blockContacts:v2 safetyCheckPresenter:*(a1 + 32)];
}

void sub_10002CEB4(uint64_t a1)
{
  v3 = [*(a1 + 32) tableViewModel];
  v2 = [*(a1 + 32) unknownContacts];
  [v3 blockContacts:v2 safetyCheckPresenter:*(a1 + 32)];
}

void sub_10002D25C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  v2 = [v1 recentCall];
  [v1 reportWithRecentCall:v2];
}

void sub_10002D768(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = [*(a1 + 32) tableView];
  [v3 setNeedsLayout];
}

void sub_10002D90C(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v4 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 reconfigureRowsAtIndexPaths:v3];
}

uint64_t sub_10002DDF8(uint64_t a1)
{
  qword_1001269A8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_10002DEB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10002DED0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

uint64_t sub_10002E084(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

uint64_t sub_10002E14C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

uint64_t sub_10002E214(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return _objc_release_x1();
}

void sub_10002ED04(id a1, NSNotification *a2)
{
  v2 = qword_1001269C8;
  qword_1001269C8 = 0;

  v3 = qword_1001269D0;
  qword_1001269D0 = 0;

  v4 = qword_1001269E0;
  qword_1001269E0 = 0;

  v5 = qword_1001269D8;
  qword_1001269D8 = 0;

  dispatch_async(&_dispatch_main_q, &stru_10010B3E0);
}

void sub_10002ED78(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"PHRecentCallDetailsViewFormattersDidChangeNotification" object:0];
}

void sub_100030D3C(id *a1)
{
  objc_copyWeak(&to, a1 + 5);
  v2 = objc_loadWeakRetained(&to);

  if (v2)
  {
    v3 = [a1[6] sharedUtilityProvider];
    v4 = [a1[4] UUIDString];
    v5 = [v3 conversationForCallUID:v4];

    if (v5)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100030EC4;
      block[3] = &unk_10010B408;
      objc_copyWeak(&v9, a1 + 5);
      v5 = v5;
      v7 = v5;
      v8 = a1[4];
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v9);
    }
  }

  else
  {
    v5 = sub_100003B9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because MPRTTTranscriptionMessage was deallocated before starting", buf, 2u);
    }
  }

  objc_destroyWeak(&to);
}

void sub_100030EC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setConversation:*(a1 + 32)];
    v4 = sub_100003B9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully finished fetchRTTConversationForCallUUID", v8, 2u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    v9 = @"MPVoicemailRTTTranscriptDidLoadCallIDKey";
    v6 = [*(a1 + 40) UUIDString];
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v5 postNotificationName:@"MPVoicemailRTTTranscriptDidLoadNotification" object:0 userInfo:v7];
  }

  else
  {
    v5 = sub_100003B9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped fetchRTTConversationForCallUUID because MPRTTTranscriptionMessage was deallocated when trying to write conversation", v8, 2u);
    }
  }
}

void sub_100031A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100031A34(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setSigningIn:1];
}

uint64_t sub_100031A7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100031EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100031EE0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setSigningIn:0];

  v3 = [*(a1 + 32) completionBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) completionBlock];
    v4[2](v4, 0);
  }
}

void sub_100031F80(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1001269E8, v2);
}

void sub_100031FD0(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1001269F8, v2);
}

void sub_100032020(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setSigningIn:1];
}

void sub_100032078(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setSigningIn:0];
}

void sub_10003222C(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setSigningIn:0];
}

void sub_100032568(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[IMAccountController sharedInstance];
    [v6 activateAccount:*(a1 + 32)];

    [*(a1 + 32) registerAccount];
  }

  else
  {
    v7 = sub_100003B9C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Registration enable failed: %@", &v8, 0xCu);
    }
  }
}

void sub_100032DEC(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setSigningIn:0];

  v3 = [*(a1 + 32) view];
  [v3 setActivationFailed:1];
}

void sub_100032F48(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100033D44(uint64_t a1, int a2)
{
  if (a2 && (*(a1 + 40) & 1) == 0)
  {
    v4 = [*(a1 + 32) contentUnavailableView];
    v3 = [*(a1 + 32) tableView];
    [v4 setHidden:1];
    [v3 setBackgroundView:0];
    [v3 setSeparatorStyle:1];
  }
}

void sub_100033DE4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) contentUnavailableView];
  if (v2 == 1)
  {
    v3 = [*(a1 + 32) tableView];
    [v4 setHidden:0];
    [v4 setAlpha:1.0];
    [v3 setBackgroundView:v4];
    [v3 setSeparatorStyle:0];
  }

  else
  {
    [v4 setAlpha:0.0];
  }
}

uint64_t sub_1000346A4(uint64_t a1)
{
  [*(a1 + 32) setReloadingData:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000357F0(id a1)
{
  v4[0] = @"group-facetime-participant-join";
  v4[1] = @"group-facetime-moments-request";
  v4[2] = @"group-facetime-let-me-in-request-pre-conversation";
  v1 = [NSArray arrayWithObjects:v4 count:3];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_100126A18;
  qword_100126A18 = v2;
}

void sub_100035A10(id a1, NSNotification *a2)
{
  v2 = qword_100126A38;
  qword_100126A38 = 0;

  v3 = qword_100126A40;
  qword_100126A40 = 0;

  v4 = qword_100126A48;
  qword_100126A48 = 0;

  dispatch_async(&_dispatch_main_q, &stru_10010B5B8);
}

void sub_100035A74(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"PHRecentHeaderViewFormattersDidChangeNotification" object:0];
}

id sub_100036F4C(double a1)
{
  if (a1 < 0.0)
  {
    v2 = [NSString stringWithFormat:@"Negative time interval passed into PHRecentsPersonHeaderViewStringForTimeInterval"];
    NSLog(@"** TUCAssertion failure: %@", v2);

    if (_TUAssertShouldCrashApplication())
    {
      v3 = +[NSAssertionHandler currentHandler];
      v4 = [NSString stringWithUTF8String:"NSString *PHRecentsPersonHeaderViewStringForTimeInterval(NSTimeInterval)"];
      [v3 handleFailureInFunction:v4 file:@"PHRecentsHeaderView.m" lineNumber:349 description:@"Negative time interval passed into PHRecentsPersonHeaderViewStringForTimeInterval"];
    }
  }

  v5 = a1;
  v6 = v5 & ~(v5 >> 31);
  v7 = SharedNumberFormatter();
  if (a1 > 59)
  {
    if (v5 > 0xE0F)
    {
      if (v6 % 0xE10 > 0x3B)
      {
        v18 = v6 % 0xE10;
        v8 = [NSNumber numberWithInt:?];
        v9 = [v7 stringFromNumber:v8];
        v19 = v6 - 7200;
        v20 = +[NSBundle mainBundle];
        v11 = v20;
        if (v19 >= 0xFFFFF1F0)
        {
          v21 = @"HOUR_UNIT";
        }

        else
        {
          v21 = @"HOUR_UNIT_PLURAL";
        }

        v15 = [v20 localizedStringForKey:v21 value:&stru_10010E930 table:@"Recents"];
        v22 = [NSNumber numberWithInt:(v18 / 60)];
        v23 = [v7 stringFromNumber:v22];
        if ((v18 - 120) >= 0xFFFFFFC4)
        {
          v24 = @"MINUTE_UNIT";
        }

        else
        {
          v24 = @"MINUTE_UNIT_PLURAL";
        }

        v25 = +[NSBundle mainBundle];
        v26 = [v25 localizedStringForKey:v24 value:&stru_10010E930 table:@"Recents"];
        v16 = [NSString stringWithFormat:@"%@ %@ %@ %@", v9, v15, v23, v26];

        goto LABEL_20;
      }

      v8 = [NSNumber numberWithInt:?];
      v9 = [v7 stringFromNumber:v8];
      v14 = v6 - 7200;
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      if (v14 >= 0xFFFFF1F0)
      {
        v12 = @"HOUR_UNIT";
      }

      else
      {
        v12 = @"HOUR_UNIT_PLURAL";
      }
    }

    else
    {
      if (v6 / 0x3C <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v6 / 0x3C;
      }

      v8 = [NSNumber numberWithInt:v13];
      v9 = [v7 stringFromNumber:v8];
      v10 = +[NSBundle mainBundle];
      v11 = v10;
      if (v5 <= 0x77)
      {
        v12 = @"MINUTE_UNIT";
      }

      else
      {
        v12 = @"MINUTE_UNIT_PLURAL";
      }
    }
  }

  else
  {
    v8 = [NSNumber numberWithInt:v5 & ~(v5 >> 31)];
    v9 = [v7 stringFromNumber:v8];
    v10 = +[NSBundle mainBundle];
    v11 = v10;
    if (v5 == 1)
    {
      v12 = @"SECOND_UNIT";
    }

    else
    {
      v12 = @"SECOND_UNIT_PLURAL";
    }
  }

  v15 = [v10 localizedStringForKey:v12 value:&stru_10010E930 table:@"Recents"];
  v16 = [NSString stringWithFormat:@"%@ %@", v9, v15];
LABEL_20:

  return v16;
}

void sub_100037540(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id sub_100037564(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained localVideoViewController];
    v7 = [v6 deviceIsFrontFacingOrExternal:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1000375D8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained localVideoViewController];
    [v4 updateVideoLayers:a2];

    WeakRetained = v5;
  }
}

uint64_t sub_1000381B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  if (CGAffineTransformIsIdentity(&v6))
  {
    [*(a1 + 32) setHidden:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100038494(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) contentView];
  v5 = v4;
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  if (!CGAffineTransformIsIdentity(&v7))
  {
    [v5 setHidden:1];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }
}

id sub_1000388AC(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(*(a1 + 40) + 24);
  v3 = *(a1 + 48);

  return [v2 viewDidDisappear:v3];
}

id sub_1000393EC(uint64_t a1)
{
  [*(a1 + 32) fadeInAnimated:*(a1 + 56)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 updateVideoViewControllerWithOrientationMonitor:v3];
}

void sub_100039594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000395BC(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    if ([WeakRetained needsSplitView])
    {
      v5 = [v4 splitViewController];
      [v5 setViewController:v4[10] forColumn:0];

      v6 = [v4[10] view];
      [v6 setAlpha:0.0];
    }

    [v4[12] showContent];
    if ([v4[2] isViewLoaded])
    {
      [v4[2] viewWillDisappear:1];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100039768;
      v10[3] = &unk_10010AD48;
      v10[4] = v4;
      v7 = objc_retainBlock(v10);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100039880;
      v9[3] = &unk_10010B6D0;
      v9[4] = v4;
      v8 = objc_retainBlock(v9);
      [UIView animateWithDuration:0 delay:v7 options:v8 animations:0.400000006 completion:0.0500000007];
    }

    else
    {
      [v4 _destroyFirstRunController];
    }
  }

  else
  {
    [WeakRetained _constrainRegistrationView];
  }
}

void sub_100039768(uint64_t a1)
{
  v2 = [*(a1 + 32) needsSplitView];
  v3 = *(a1 + 32);
  if (v2)
  {
    v13 = [*(v3 + 80) view];
    [v13 setAlpha:1.0];
  }

  else
  {
    v13 = [*(v3 + 16) view];
    [v13 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [*(*(a1 + 32) + 8) bounds];
    [v13 setFrame:{v5, v10, v7, v9}];
    if ([UIApp userInterfaceStyle] == 1)
    {
      v11 = [*(a1 + 32) baseViewController];
      v12 = [v11 view];
      [v12 setAlpha:1.0];
    }
  }
}

id sub_100039880(uint64_t a1)
{
  [*(*(a1 + 32) + 16) viewDidDisappear:1];
  v2 = *(a1 + 32);

  return [v2 _destroyFirstRunController];
}

void sub_10003A878(id a1)
{
  v1 = sub_100003B9C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Finished test", v2, 2u);
  }
}

void sub_10003AA84(uint64_t a1)
{
  v2 = sub_100003B9C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32) + 1;
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished test %ld", &v4, 0xCu);
  }
}

void sub_10003AB30(uint64_t a1)
{
  v2 = sub_100003B9C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished test %ld", &v4, 0xCu);
  }
}

void sub_10003AC44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10003ADA0(void *a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  *a1 = v3;
}

uint64_t sub_10003AE74()
{
  v0 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v0 - 8);
  v2 = v49 - v1;
  v3 = [objc_opt_self() defaultCenter];
  sub_1000525C4(&qword_100124548);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000D6C40;
  v5 = v4;
  v51 = v4;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v9 = v7 + 56;
  v8(v2, 1, 1, v6);
  v10 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();
  v11 = v3;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  v13[5] = v10;

  *(v5 + 32) = sub_10009A64C(0, 0, v2, &unk_1000D7050, v13);
  v49[0] = v6;
  v8(v2, 1, 1, v6);
  v49[1] = v9;
  v52 = v8;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = v11;

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  v17[5] = v14;

  v18 = v2;
  v50 = v2;
  v19 = sub_10009A64C(0, 0, v2, &unk_1000D7060, v17);
  v20 = v51;
  *(v51 + 40) = v19;
  v8(v18, 1, 1, v6);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v15;

  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = &protocol witness table for MainActor;
  v24[4] = v22;
  v24[5] = v21;

  v25 = v50;
  *(v20 + 48) = sub_10009A64C(0, 0, v50, &unk_1000D7070, v24);
  v26 = v20;
  v27 = v49[0];
  v28 = v52;
  v52(v25, 1, 1, v49[0]);
  v29 = swift_allocObject();
  v30 = v53;
  swift_weakInit();
  v31 = v22;

  v32 = static MainActor.shared.getter();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = &protocol witness table for MainActor;
  v33[4] = v31;
  v33[5] = v29;

  v34 = v50;
  *(v26 + 56) = sub_10009A64C(0, 0, v50, &unk_1000D7080, v33);
  v35 = v34;
  v28(v34, 1, 1, v27);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = v31;

  v38 = static MainActor.shared.getter();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = &protocol witness table for MainActor;
  v39[4] = v37;
  v39[5] = v36;

  v40 = sub_10009A64C(0, 0, v35, &unk_1000D7090, v39);
  v42 = v51;
  v41 = v52;
  *(v51 + 64) = v40;
  v43 = v35;
  v41(v35, 1, 1, v27);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = v37;

  v46 = static MainActor.shared.getter();
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = &protocol witness table for MainActor;
  v47[4] = v45;
  v47[5] = v44;

  *(v42 + 72) = sub_10009A64C(0, 0, v43, &unk_1000D70A0, v47);

  *(v30 + 192) = v42;
}

uint64_t sub_10003B42C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10003B4EC();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 56);
    if (v1)
    {
      sub_100004E30(*(result + 56));

      v1(v2);
      return sub_100004E40(v1);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10003B4EC()
{
  v1 = v0;
  v2 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000046F4(v5, qword_100128968);
  v6 = static os_log_type_t.info.getter();
  v7 = Logger.logObject.getter();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10000607C(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v7, v6, "%s handling CNContactStoreDidChange notification", v8, 0xCu);
    sub_100005964(v9);
  }

  v13 = *(v1 + 88);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  os_unfair_lock_unlock((v13 + 24));
  v15 = *(v14 + 16);

  if (v15)
  {
    sub_1000A5CAC();
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v1;

    sub_10009A64C(0, 0, v4, &unk_1000D7038, v18);
  }

  return result;
}

uint64_t sub_10003B778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for VersionedChange();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_1000525C4(&qword_100124460);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_1000525C4(&qword_100124468);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_1000525C4(&unk_100124470);
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_10003B97C, 0, 0);
}

uint64_t sub_10003B97C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v3 = v0[18];
    v2 = v0[19];
    v4 = v0[17];
    dispatch thunk of HistoryCoalescingManager.historyChanges.getter();
    AsyncThrowingStream.makeAsyncIterator()();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_10003BB40;
    v6 = v0[20];
    v7 = v0[16];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v7, 0, 0, v6, v0 + 5);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10003BB40()
{

  if (v0)
  {
    v1 = sub_10003C2D4;
  }

  else
  {
    v1 = sub_10003BC50;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10003BC50()
{
  v1 = v0[16];
  v2 = v0[8];
  v3 = v0[9];
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *(v3 + 32);
    v7(v0[13], v1, v2);
    if (qword_100124020 != -1)
    {
      swift_once();
    }

    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[8];
    v11 = v0[9];
    v12 = type metadata accessor for Logger();
    sub_1000046F4(v12, qword_100128968);
    v46 = *(v11 + 16);
    v46(v8, v9, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v40 = v7;
      v44 = v14;
      log = v13;
      v15 = v0[14];
      v16 = v0[15];
      v41 = v0[12];
      v18 = v0[8];
      v17 = v0[9];
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v0[6] = v42;
      buf = v19;
      *v19 = 136315138;
      v46(v16, v41, v18);
      (*(v17 + 56))(v16, 0, 1, v18);
      sub_10000B818(v16, v15, &qword_100124460);
      v20 = v4(v15, 1, v18);
      v21 = v0[15];
      v22 = v0[12];
      if (v20 == 1)
      {
        v24 = v0[8];
        v23 = v0[9];
        sub_10000B880(v0[14], &qword_100124460);
        sub_10000B880(v21, &qword_100124460);
        v25 = *(v23 + 8);
        v25(v22, v24);
        v26 = 0xE300000000000000;
        v27 = 7104878;
      }

      else
      {
        v32 = v0[10];
        v31 = v0[11];
        v34 = v0[8];
        v33 = v0[9];
        v40(v31, v0[14], v34);
        v46(v32, v31, v34);
        v35 = String.init<A>(reflecting:)();
        v26 = v36;
        v25 = *(v33 + 8);
        v25(v31, v34);
        sub_10000B880(v21, &qword_100124460);
        v25(v22, v34);
        v27 = v35;
      }

      v37 = sub_10000607C(v27, v26, v0 + 6);

      *(buf + 4) = v37;
      _os_log_impl(&_mh_execute_header, log, v44, "Got progressive update event: %s", buf, 0xCu);
      sub_100005964(v42);
    }

    else
    {
      v28 = v0[12];
      v30 = v0[8];
      v29 = v0[9];

      v25 = *(v29 + 8);
      v25(v28, v30);
    }

    v0[25] = v25;
    v38 = swift_task_alloc();
    v0[26] = v38;
    *v38 = v0;
    v38[1] = sub_10003C110;
    v39 = v0[13];

    return sub_10003C4FC(v39);
  }
}

uint64_t sub_10003C110()
{

  return _swift_task_switch(sub_10003C20C, 0, 0);
}

uint64_t sub_10003C20C()
{
  (*(v0 + 200))(*(v0 + 104), *(v0 + 64));
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_10003BB40;
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v3, 0, 0, v2, v0 + 40);
}

uint64_t sub_10003C2D4()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000046F4(v4, qword_100128968);
  v5 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v6, v5, "Failed to fetch initial recent calls: %@", v7, 0xCu);
    sub_10000B880(v8, &qword_1001250A0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003C4FC(uint64_t a1)
{
  v2[173] = v1;
  v2[167] = a1;
  sub_1000525C4(&qword_100124480);
  v2[179] = swift_task_alloc();
  v2[185] = sub_1000525C4(&qword_100124488);
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  sub_1000525C4(&qword_100124360);
  v2[188] = swift_task_alloc();
  v2[189] = swift_task_alloc();
  v2[190] = swift_task_alloc();
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  v2[193] = swift_task_alloc();
  v2[194] = swift_task_alloc();
  v3 = type metadata accessor for ParticipantKey();
  v2[195] = v3;
  v2[196] = *(v3 - 8);
  v2[197] = swift_task_alloc();
  v2[198] = swift_task_alloc();
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();
  v2[201] = swift_task_alloc();
  v2[202] = swift_task_alloc();
  v4 = type metadata accessor for GroupedHistoryItem();
  v2[203] = v4;
  v2[204] = *(v4 - 8);
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v5 = type metadata accessor for HistoryChangeEvent();
  v2[212] = v5;
  v2[213] = *(v5 - 8);
  v2[214] = swift_task_alloc();
  v2[215] = swift_task_alloc();
  v2[216] = swift_task_alloc();
  v6 = sub_1000525C4(&qword_100124490);
  v2[217] = v6;
  v2[218] = *(v6 - 8);
  v2[219] = swift_task_alloc();
  v7 = type metadata accessor for VersionedChange();
  v2[220] = v7;
  v2[221] = *(v7 - 8);
  v2[222] = swift_task_alloc();
  v2[223] = swift_task_alloc();

  return _swift_task_switch(sub_10003C8E4, 0, 0);
}

uint64_t sub_10003C8E4()
{
  v299 = v0;
  v1 = v0[173];
  v2 = *(v1 + 176) + 1;
  if (v2 != VersionedChange.version.getter())
  {
    v19 = v0[179];
    v20 = v0[173];
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;

    sub_10009A64C(0, 0, v19, &unk_1000D6F80, v22);

LABEL_9:

    v23 = v0[1];

    return v23();
  }

  v244 = v1;
  v3 = *(v0[173] + 88);
  v0[224] = v3;
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  v5 = VersionedChange.events.getter();
  v255 = *(v5 + 16);
  if (!v255)
  {

LABEL_8:

    *(v244 + 176) = VersionedChange.version.getter();
    goto LABEL_9;
  }

  v256 = v5;
  if (qword_100124020 != -1)
  {
    goto LABEL_159;
  }

  while (1)
  {
    v6 = v0[223];
    v7 = v0[221];
    v8 = v0[220];
    v9 = v0[167];
    v10 = type metadata accessor for Logger();
    sub_1000046F4(v10, qword_100128968);
    v240 = *(v7 + 16);
    v240(v6, v9, v8);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[223];
    v15 = v0[221];
    v16 = v0[220];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      v18 = VersionedChange.version.getter();
      v239 = *(v15 + 8);
      v239(v14, v16);
      *(v17 + 4) = v18;
      *(v17 + 12) = 2048;
      *(v17 + 14) = *(v256 + 16);

      _os_log_impl(&_mh_execute_header, v11, v12, "Applying v%llu with %ld events", v17, 0x16u);
    }

    else
    {
      v239 = *(v15 + 8);
      v239(v0[223], v0[220]);
    }

    v25 = v4[2];
    v26 = _swiftEmptyArrayStorage;
    v259 = v4;
    if (v25)
    {
      v27 = v0[218];
      v297 = v0[217];
      v298[0] = _swiftEmptyArrayStorage;
      v28 = v0[204];
      sub_1000A8E10(0, v25, 0);
      v26 = v298[0];
      v29 = *(v28 + 16);
      v28 += 16;
      v291 = v29;
      v30 = v4 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
      v31 = *(v28 + 56);
      do
      {
        v291(v0[219] + *(v297 + 48), v30, v0[203]);
        GroupedHistoryItem.key.getter();
        v298[0] = v26;
        v33 = v26[2];
        v32 = v26[3];
        if (v33 >= v32 >> 1)
        {
          sub_1000A8E10(v32 > 1, v33 + 1, 1);
          v26 = v298[0];
        }

        v34 = v0[219];
        v26[2] = v33 + 1;
        sub_10000AFFC(v34, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33, &qword_100124490);
        v30 += v31;
        --v25;
      }

      while (v25);
      v4 = v259;
    }

    if (v26[2])
    {
      sub_1000525C4(&qword_100124498);
      v35 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v35 = &_swiftEmptyDictionarySingleton;
    }

    v298[0] = v35;

    sub_10005260C(v36, 1, v298);
    v37 = v0[213];
    v284 = v0[204];
    v257 = v0[196];
    v279 = v0[185];

    if (*(v256 + 16))
    {
      break;
    }

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
    swift_once();
  }

  v249 = 0;
  v38 = 0;
  v253 = v256 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v252 = (v37 + 88);
  v248 = (v37 + 8);
  v247 = (v37 + 96);
  v39 = v298[0];
  v262 = (v284 + 32);
  v251 = enum case for HistoryChangeEvent.inserted(_:);
  v286 = (v257 + 8);
  v285 = (v284 + 8);
  v245 = enum case for HistoryChangeEvent.updated(_:);
  v246 = (v284 + 40);
  v283 = (v284 + 56);
  v278 = (v284 + 48);
  v254 = *(v37 + 16);
  v242 = enum case for HistoryChangeEvent.deleted(_:);
  v241 = enum case for HistoryChangeEvent.contactsChanged(_:);
  v238 = enum case for HistoryChangeEvent.finishedInitialFetch(_:);
  v250 = *(v37 + 72);
  v277 = v0;
  while (1)
  {
    v40 = v0[216];
    v41 = v0[215];
    v258 = v38 + 1;
    v42 = v254;
    v43 = v0[212];
    v254(v40, v253 + v250 * v38, v43);
    v254(v41, v40, v43);
    v44 = (*v252)(v41, v43);
    if (v44 == v251)
    {
      v45 = v0[215];
      (*v247)(v45, v0[212]);
      v46 = *v45;
      v47 = *(*v45 + 16);
      if (!v47)
      {
        goto LABEL_83;
      }

      v48 = 0;
      v267 = v46 + ((*(v284 + 80) + 32) & ~*(v284 + 80));
      v260 = v47 - 1;
      v265 = *v45;
      v263 = *(*v45 + 16);
      while (1)
      {
        v49 = v48;
        v287 = v39;
        while (1)
        {
          if (v49 >= *(v46 + 16))
          {
            __break(1u);
            goto LABEL_146;
          }

          v50 = *(v284 + 72);
          v51 = *(v284 + 16);
          v51(v0[211], v267 + v50 * v49, v0[203]);
          GroupedHistoryItem.key.getter();
          v292 = v49;
          v271 = v50;
          if (v39[2] && (v52 = sub_100052CE4(v0[202]), (v53 & 1) != 0))
          {
            v51(v0[194], v39[7] + v52 * v50, v0[203]);
            v54 = 0;
          }

          else
          {
            v54 = 1;
          }

          v55 = v0[211];
          v42 = v0[203];
          v56 = v0[194];
          v57 = v0[193];
          v45 = v0[187];
          v269 = *v286;
          (*v286)(v0[202], v0[195]);
          v58 = *v283;
          (*v283)(v56, v54, 1, v42);
          v273 = v51;
          v51(v57, v55, v42);
          v58(v57, 0, 1, v42);
          v59 = *(v279 + 48);
          v4 = &unk_1000D6E48;
          sub_10000B818(v56, v45, &qword_100124360);
          sub_10000B818(v57, v45 + v59, &qword_100124360);
          v60 = *v278;
          v61 = (*v278)(v45, 1, v42);
          v41 = v0[203];
          if (v61 != 1)
          {
            break;
          }

          v62 = v0[194];
          sub_10000B880(v0[193], &qword_100124360);
          sub_10000B880(v62, &qword_100124360);
          v39 = v287;
          if (v60(v45 + v59, 1, v41) != 1)
          {
            goto LABEL_41;
          }

          sub_10000B880(v0[187], &qword_100124360);
          v63 = *v285;
LABEL_28:
          v49 = v292 + 1;
          v63(v0[211], v0[203]);
          v46 = v265;
          if (v263 == v292 + 1)
          {
            goto LABEL_83;
          }
        }

        sub_10000B818(v0[187], v0[192], &qword_100124360);
        if (v60(v45 + v59, 1, v41) != 1)
        {
          break;
        }

        v70 = v0[203];
        v71 = v0[194];
        v72 = v0[192];
        sub_10000B880(v0[193], &qword_100124360);
        sub_10000B880(v71, &qword_100124360);
        (*v285)(v72, v70);
        v39 = v287;
LABEL_41:
        sub_10000B880(v0[187], &qword_100124488);
LABEL_42:
        v73 = v0[211];
        v74 = v0[209];
        v75 = v0[203];
        v76 = v0[201];
        GroupedHistoryItem.key.getter();
        v273(v74, v73, v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v298[0] = v39;
        v78 = sub_100052CE4(v76);
        v80 = v39[2];
        v81 = (v79 & 1) == 0;
        v82 = __OFADD__(v80, v81);
        v83 = v80 + v81;
        if (v82)
        {
          goto LABEL_155;
        }

        v41 = v79;
        if (v39[3] >= v83)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v91 = v78;
            sub_1000B8B50();
            v78 = v91;
            v39 = v298[0];
          }
        }

        else
        {
          v84 = v0[201];
          sub_100057884(v83, isUniquelyReferenced_nonNull_native);
          v39 = v298[0];
          v78 = sub_100052CE4(v84);
          if ((v41 & 1) != (v85 & 1))
          {
            goto LABEL_138;
          }
        }

        v86 = v0[211];
        v45 = v0[209];
        v42 = v0[203];
        v87 = v0[201];
        v88 = v0[195];
        if (v41)
        {
          (*v246)(v39[7] + v78 * v271, v0[209], v0[203]);
          v269(v87, v88);
          (*v285)(v86, v42);
        }

        else
        {
          v39[(v78 >> 6) + 8] |= 1 << v78;
          v41 = v78;
          (*(v257 + 16))(v39[6] + *(v257 + 72) * v78, v87, v88);
          (*v262)(v39[7] + v41 * v271, v45, v42);
          v269(v87, v88);
          (*v285)(v86, v42);
          v89 = v39[2];
          v82 = __OFADD__(v89, 1);
          v90 = v89 + 1;
          if (v82)
          {
            goto LABEL_158;
          }

          v39[2] = v90;
        }

        v48 = v292 + 1;
        v249 = 1;
        v46 = v265;
        if (v260 == v292)
        {
LABEL_83:
          v149 = v0[216];
          v150 = v0[212];

          (*v248)(v149, v150);
          v4 = v259;
          goto LABEL_84;
        }
      }

      v64 = v0[210];
      v65 = v0[203];
      v66 = v0[194];
      v42 = v0[193];
      v67 = v0[192];
      v68 = v277[187];
      (*v262)(v64, v45 + v59, v65);
      sub_10005B5FC(&qword_1001244A8, &type metadata accessor for GroupedHistoryItem);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = *v285;
      (*v285)(v64, v65);
      v41 = &unk_1000D6E48;
      sub_10000B880(v42, &qword_100124360);
      sub_10000B880(v66, &qword_100124360);
      v63(v67, v65);
      v69 = v68;
      v39 = v287;
      v0 = v277;
      sub_10000B880(v69, &qword_100124360);
      if ((v45 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_28;
    }

    if (v44 == v245)
    {
      v92 = v0[215];
      (*v247)(v92, v0[212]);
      v93 = *v92;
      v94 = *(*v92 + 16);
      if (!v94)
      {
        goto LABEL_83;
      }

      v95 = 0;
      v268 = v93 + ((*(v284 + 80) + 32) & ~*(v284 + 80));
      v243 = v94 - 1;
      v266 = *v92;
      v264 = *(*v92 + 16);
LABEL_57:
      v96 = v95;
      v288 = v39;
      while (v96 < *(v93 + 16))
      {
        v97 = *(v284 + 72);
        v98 = *(v284 + 16);
        v98(v0[208], v268 + v97 * v96, v0[203]);
        GroupedHistoryItem.key.getter();
        v293 = v96;
        v272 = v97;
        if (v39[2] && (v99 = sub_100052CE4(v0[200]), (v100 & 1) != 0))
        {
          v98(v0[191], v39[7] + v99 * v97, v0[203]);
          v101 = 0;
        }

        else
        {
          v101 = 1;
        }

        v102 = v0[208];
        v103 = v0[203];
        v104 = v0[191];
        v105 = v0[190];
        v106 = v0[186];
        v270 = *v286;
        (*v286)(v0[200], v0[195]);
        v107 = *v283;
        (*v283)(v104, v101, 1, v103);
        v274 = v98;
        v98(v105, v102, v103);
        v107(v105, 0, 1, v103);
        v108 = *(v279 + 48);
        v4 = &unk_1000D6E48;
        sub_10000B818(v104, v106, &qword_100124360);
        sub_10000B818(v105, v106 + v108, &qword_100124360);
        v109 = *v278;
        v110 = (*v278)(v106, 1, v103);
        v111 = v0[203];
        if (v110 == 1)
        {
          v112 = v0[191];
          sub_10000B880(v0[190], &qword_100124360);
          sub_10000B880(v112, &qword_100124360);
          if (v109(v106 + v108, 1, v111) != 1)
          {
            goto LABEL_71;
          }

          sub_10000B880(v0[186], &qword_100124360);
          v113 = *v285;
          v39 = v288;
        }

        else
        {
          sub_10000B818(v0[186], v0[189], &qword_100124360);
          if (v109(v106 + v108, 1, v111) == 1)
          {
            v120 = v0[203];
            v121 = v0[191];
            v122 = v0[189];
            sub_10000B880(v0[190], &qword_100124360);
            sub_10000B880(v121, &qword_100124360);
            (*v285)(v122, v120);
LABEL_71:
            sub_10000B880(v0[186], &qword_100124488);
            v39 = v288;
LABEL_72:
            v123 = v0[208];
            v124 = v0[207];
            v125 = v0[203];
            v126 = v0[199];
            GroupedHistoryItem.key.getter();
            v274(v124, v123, v125);
            v127 = swift_isUniquelyReferenced_nonNull_native();
            v298[0] = v39;
            v128 = sub_100052CE4(v126);
            v130 = v39[2];
            v131 = (v129 & 1) == 0;
            v82 = __OFADD__(v130, v131);
            v132 = v130 + v131;
            if (v82)
            {
              goto LABEL_157;
            }

            v133 = v129;
            if (v39[3] >= v132)
            {
              if ((v127 & 1) == 0)
              {
                v148 = v128;
                sub_1000B8B50();
                v128 = v148;
                v39 = v298[0];
              }
            }

            else
            {
              v134 = v0[199];
              sub_100057884(v132, v127);
              v39 = v298[0];
              v128 = sub_100052CE4(v134);
              if ((v133 & 1) != (v135 & 1))
              {
                goto LABEL_138;
              }
            }

            v136 = v0[208];
            v137 = v0[207];
            v138 = v0[203];
            v139 = v0[199];
            v140 = v0[195];
            if ((v133 & 1) == 0)
            {
              v39[(v128 >> 6) + 8] |= 1 << v128;
              v141 = v128;
              (*(v257 + 16))(v39[6] + *(v257 + 72) * v128, v139, v140);
              (*v262)(v39[7] + v141 * v272, v137, v138);
              v270(v139, v140);
              v142 = (*v285)(v136, v138);
              v146 = v39[2];
              v82 = __OFADD__(v146, 1);
              v147 = v146 + 1;
              if (!v82)
              {
                v39[2] = v147;
                goto LABEL_82;
              }

              __break(1u);
LABEL_161:
              __break(1u);
              return _swift_asyncLet_get(v142, v143, v144, v145);
            }

            (*v246)(v39[7] + v128 * v272, v0[207], v0[203]);
            v270(v139, v140);
            (*v285)(v136, v138);
LABEL_82:
            v93 = v266;
            v95 = v293 + 1;
            v249 = 1;
            if (v243 == v293)
            {
              goto LABEL_83;
            }

            goto LABEL_57;
          }

          v114 = v0[210];
          v115 = v0[203];
          v116 = v0[191];
          v117 = v0[190];
          v118 = v0[189];
          v261 = v0[186];
          (*v262)(v114, v106 + v108, v115);
          sub_10005B5FC(&qword_1001244A8, &type metadata accessor for GroupedHistoryItem);
          v119 = dispatch thunk of static Equatable.== infix(_:_:)();
          v113 = *v285;
          (*v285)(v114, v115);
          sub_10000B880(v117, &qword_100124360);
          sub_10000B880(v116, &qword_100124360);
          v113(v118, v115);
          sub_10000B880(v261, &qword_100124360);
          v39 = v288;
          if ((v119 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        v96 = v293 + 1;
        v113(v0[208], v0[203]);
        v93 = v266;
        if (v264 == v293 + 1)
        {
          goto LABEL_83;
        }
      }

      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (v44 == v242)
    {
      v289 = v39;
      v153 = v0[215];
      (*v247)(v153, v0[212]);
      v154 = 0;
      v155 = *v153 + 56;
      v280 = *v153;
      v156 = -1 << *(*v153 + 32);
      if (-v156 < 64)
      {
        v157 = ~(-1 << -v156);
      }

      else
      {
        v157 = -1;
      }

      v158 = v157 & *(*v153 + 56);
      v159 = (63 - v156) >> 6;
      while (v158)
      {
LABEL_99:
        v163 = v0[198];
        v164 = v0[195];
        v294 = *(v257 + 72);
        (*(v257 + 16))(v163, *(v280 + 48) + v294 * (__clz(__rbit64(v158)) | (v154 << 6)), v164);
        v165 = v289;
        v166 = sub_100052CE4(v163);
        v168 = v167;
        v169 = *(v257 + 8);
        v169(v163, v164);
        if (v168)
        {
          v170 = v166;
          v171 = swift_isUniquelyReferenced_nonNull_native();
          v298[0] = v289;
          if (!v171)
          {
            sub_1000B8B50();
            v165 = v298[0];
          }

          v0 = v277;
          v172 = v277[203];
          v173 = v277[188];
          v169(v165[6] + v170 * v294, v277[195]);
          (*(v284 + 32))(v173, v165[7] + *(v284 + 72) * v170, v172);
          v289 = v165;
          sub_1000B81AC(v170, v165);
          v160 = 0;
          v249 = 1;
        }

        else
        {
          v160 = 1;
          v0 = v277;
        }

        v158 &= v158 - 1;
        v161 = v0[188];
        (*v283)(v161, v160, 1, v0[203]);
        sub_10000B880(v161, &qword_100124360);
        v4 = v259;
      }

      while (1)
      {
        v162 = v154 + 1;
        if (__OFADD__(v154, 1))
        {
          goto LABEL_151;
        }

        if (v162 >= v159)
        {
          break;
        }

        v158 = *(v155 + 8 * v162);
        ++v154;
        if (v158)
        {
          v154 = v162;
          goto LABEL_99;
        }
      }

      (*v248)(v0[216], v0[212]);

      goto LABEL_133;
    }

    if (v44 != v241)
    {
      break;
    }

    v174 = v0[215];
    (*v247)(v174, v0[212]);
    v175 = *v174;

    v295 = *(v175 + 16);
    if (v295)
    {
      v176 = 0;
      v281 = v175 + ((*(v284 + 80) + 32) & ~*(v284 + 80));
      v290 = &_swiftEmptyDictionarySingleton;
      v275 = v175;
      while (1)
      {
        if (v176 >= *(v175 + 16))
        {
          goto LABEL_153;
        }

        v177 = v0[206];
        v178 = v0[205];
        v179 = v0[203];
        v180 = v0[197];
        v181 = *(v284 + 72);
        v182 = *(v284 + 16);
        v182(v177, v281 + v181 * v176, v179);
        GroupedHistoryItem.key.getter();
        v182(v178, v177, v179);
        v183 = swift_isUniquelyReferenced_nonNull_native();
        v298[0] = v290;
        v184 = sub_100052CE4(v180);
        v186 = v290[2];
        v187 = (v185 & 1) == 0;
        v82 = __OFADD__(v186, v187);
        v188 = v186 + v187;
        if (v82)
        {
          goto LABEL_154;
        }

        v189 = v185;
        if (v290[3] >= v188)
        {
          if ((v183 & 1) == 0)
          {
            v199 = v184;
            sub_1000B8B50();
            v184 = v199;
            v290 = v298[0];
          }
        }

        else
        {
          v190 = v0[197];
          sub_100057884(v188, v183);
          v290 = v298[0];
          v184 = sub_100052CE4(v190);
          if ((v189 & 1) != (v191 & 1))
          {
LABEL_138:

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }
        }

        v192 = v0[206];
        v4 = v0[205];
        v193 = v0[203];
        v194 = v0[197];
        v195 = v0[195];
        if (v189)
        {
          (*v246)(v290[7] + v184 * v181, v0[205], v0[203]);
          (*v286)(v194, v195);
          (*v285)(v192, v193);
        }

        else
        {
          v0 = v290;
          v290[(v184 >> 6) + 8] |= 1 << v184;
          v196 = v184;
          (*(v257 + 16))(v290[6] + *(v257 + 72) * v184, v194, v195);
          (*v262)(v290[7] + v196 * v181, v4, v193);
          (*(v257 + 8))(v194, v195);
          (*v285)(v192, v193);
          v197 = v290[2];
          v82 = __OFADD__(v197, 1);
          v198 = v197 + 1;
          if (v82)
          {
            goto LABEL_156;
          }

          v290[2] = v198;
          v0 = v277;
        }

        ++v176;
        v4 = v259;
        v175 = v275;
        if (v295 == v176)
        {
          goto LABEL_126;
        }
      }
    }

    v290 = &_swiftEmptyDictionarySingleton;
LABEL_126:

    v219 = Logger.logObject.getter();
    v220 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v219, v220))
    {
      v221 = swift_slowAlloc();
      *v221 = 134217984;
      v222 = *(v175 + 16);

      *(v221 + 4) = v222;

      _os_log_impl(&_mh_execute_header, v219, v220, "Got contacts change, starting over with %ld", v221, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v39 = v290;

    (*v248)(v0[216], v0[212]);
    v151 = v258;
    if (v258 == v255)
    {
      goto LABEL_135;
    }

    v249 = 1;
    v152 = v256;
LABEL_85:
    v38 = v151;
    if (v151 >= *(v152 + 16))
    {
      goto LABEL_152;
    }
  }

  if (v44 != v238)
  {
    v289 = v39;
    v254(v0[214], v0[216], v0[212]);
    v206 = Logger.logObject.getter();
    v207 = static os_log_type_t.fault.getter();
    v208 = os_log_type_enabled(v206, v207);
    v209 = v0[216];
    v210 = v0[214];
    v211 = v0[212];
    if (v208)
    {
      v212 = swift_slowAlloc();
      v296 = swift_slowAlloc();
      v298[0] = v296;
      *v212 = 136315138;
      sub_10005B5FC(&qword_1001244A0, &type metadata accessor for HistoryChangeEvent);
      v276 = v207;
      v213 = dispatch thunk of CustomStringConvertible.description.getter();
      v282 = v209;
      v215 = v214;
      v216 = *v248;
      (*v248)(v210, v211);
      v217 = sub_10000607C(v213, v215, v298);

      *(v212 + 4) = v217;
      _os_log_impl(&_mh_execute_header, v206, v276, "Unknown HistoryChangeEvent in batch: %s", v212, 0xCu);
      sub_100005964(v296);

      v4 = v259;

      v218 = v282;
    }

    else
    {

      v216 = *v248;
      (*v248)(v210, v211);
      v218 = v209;
    }

    v216(v218, v211);
    v216(v0[215], v0[212]);
LABEL_133:
    v39 = v289;
    goto LABEL_84;
  }

  v200 = Logger.logObject.getter();
  v201 = static os_log_type_t.default.getter();
  v202 = os_log_type_enabled(v200, v201);
  v203 = v0[216];
  v204 = v0[212];
  if (v202)
  {
    v205 = swift_slowAlloc();
    *v205 = 0;
    _os_log_impl(&_mh_execute_header, v200, v201, "Finished initial message/call fetches", v205, 2u);
  }

  (*v248)(v203, v204);
LABEL_84:
  v151 = v258;
  v152 = v256;
  if (v258 != v255)
  {
    goto LABEL_85;
  }

  if ((v249 & 1) == 0)
  {

    goto LABEL_8;
  }

LABEL_135:
  v0[225] = v39;
  v223 = v39[2];
  if (v223)
  {
    v224 = sub_100052348(v39[2], 0, &qword_1001244E8, &unk_1000D6FE0, &type metadata accessor for GroupedHistoryItem);
    v225 = sub_10005A270(v298, &v224[(*(v284 + 80) + 32) & ~*(v284 + 80)], v223, v39);
    swift_bridgeObjectRetain_n();
    v142 = sub_10000AC64();
    if (v225 != v223)
    {
      goto LABEL_161;
    }

    v0 = v277;
  }

  else
  {

    v224 = _swiftEmptyArrayStorage;
  }

  v298[0] = v224;
  sub_100047B24(v298);
  v0[226] = 0;
  v226 = v0[222];
  v227 = v0[220];
  v228 = v0[167];

  v41 = v298[0];
  v0[227] = v298[0];
  v240(v226, v228, v227);

  v49 = Logger.logObject.getter();
  v229 = static os_log_type_t.default.getter();
  v230 = os_log_type_enabled(v49, v229);
  v45 = v0[222];
  v42 = v0[220];
  if (v230)
  {
    v231 = swift_slowAlloc();
    *v231 = 134218240;
    v232 = VersionedChange.version.getter();
    v239(v45, v42);
    *(v231 + 4) = v232;
    *(v231 + 12) = 2048;
    *(v231 + 14) = *(v41 + 16);

    _os_log_impl(&_mh_execute_header, v49, v229, "After v%llu we have %ld buckets", v231, 0x16u);
  }

  else
  {
LABEL_146:
    v239(v45, v42);
  }

  v233 = v0[173];
  v234 = swift_allocObject();
  v0[228] = v234;
  *(v234 + 16) = v233;
  *(v234 + 24) = v41;
  v235 = swift_task_alloc();
  v0[229] = v235;
  *(v235 + 16) = &unk_1000D6F98;
  *(v235 + 24) = v234;

  swift_asyncLet_begin();
  v236 = swift_allocObject();
  v0[230] = v236;
  *(v236 + 16) = v233;
  *(v236 + 24) = v41;
  v237 = swift_task_alloc();
  v0[231] = v237;
  *(v237 + 16) = &unk_1000D6FB8;
  *(v237 + 24) = v236;

  swift_asyncLet_begin();
  v144 = sub_10003EA5C;
  v142 = (v0 + 2);
  v145 = v0 + 162;

  return _swift_asyncLet_get(v142, v143, v144, v145);
}

void sub_10003EA94()
{
  v1 = v0[227];
  v2 = v0[226];
  v3 = v0[224];
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_10005C9B4((v3 + 16));
  if (v2)
  {
    v4 = (v0[224] + 24);

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = v0[227];
    os_unfair_lock_unlock((v0[224] + 24));

    sub_1000A1E84(v5);

    sub_1000457C4();

    _swift_asyncLet_finish(v0 + 82, v6, sub_10003EB9C, v0 + 174);
  }
}

uint64_t sub_10003EBB8()
{

  return _swift_asyncLet_finish(v0 + 16, v1, sub_10003EC2C, v0 + 1440);
}

uint64_t sub_10003EC48()
{
  v1 = *(v0 + 1384);

  *(v1 + 176) = VersionedChange.version.getter();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003EE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1000525C4(&qword_100124550);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_10003EFA0, v8, v7);
}

uint64_t sub_10003EFA0()
{
  NSNotificationCenter.notifications(named:object:)();
  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v0[16] = static MainActor.shared.getter();
  v1 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_10003F0C8;
  v3 = v0[8];
  v4 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_10003F0C8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10005C9E8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10003F260;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10003F260()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_10003F2C4, v1, v2);
}

uint64_t sub_10003F2C4()
{
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_10003F49C();
    }

    sub_10000B880(v0[8], &qword_100124550);
    v0[16] = static MainActor.shared.getter();
    v5 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10003F0C8;
    v7 = v0[8];
    v8 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
  }
}

void sub_10003F49C()
{
  v1 = v0;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000046F4(v2, qword_100128968);
  v3 = static os_log_type_t.info.getter();
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10000607C(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v4, v3, "%s handling NSCurrentLocaleDidChange notification", v5, 0xCu);
    sub_100005964(v6);
  }

  v10 = [objc_allocWithZone(CNContactFormatter) init];
  [v10 setStyle:0];
  v11 = *(v1 + 120);
  v12 = *(v11 + 64);
  *(v11 + 64) = v10;
  v17 = v10;

  v13 = [objc_allocWithZone(NSNumberFormatter) init];
  v14 = *(v11 + 72);
  *(v11 + 72) = v13;

  v15 = *(v1 + 88);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));
  if (*(v16 + 16))
  {
    sub_1000A5CAC();
    sub_1000A1E84(v16);

    sub_1000457C4();
  }

  else
  {
  }
}

uint64_t sub_10003F6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1000525C4(&qword_100124550);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_10003F808, v8, v7);
}

uint64_t sub_10003F808()
{
  NSNotificationCenter.notifications(named:object:)();
  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v0[16] = static MainActor.shared.getter();
  v1 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_10003F930;
  v3 = v0[8];
  v4 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_10003F930()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10003FD28;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10003FAC8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10003FAC8()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_10003FB2C, v1, v2);
}

uint64_t sub_10003FB2C()
{
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_100040404("%s handling IDSServiceAvailabilityDidChange notification", &unk_10010BC20, &unk_1000D70C8);
    }

    sub_10000B880(v0[8], &qword_100124550);
    v0[16] = static MainActor.shared.getter();
    v5 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10003F930;
    v7 = v0[8];
    v8 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
  }
}

uint64_t sub_10003FD28()
{
  *(v0 + 40) = *(v0 + 144);
  sub_1000525C4(&qword_100124538);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10003FDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1000525C4(&qword_100124550);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_10003FEE4, v8, v7);
}

uint64_t sub_10003FEE4()
{
  NSNotificationCenter.notifications(named:object:)();
  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v0[16] = static MainActor.shared.getter();
  v1 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_10004000C;
  v3 = v0[8];
  v4 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_10004000C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10005C9E8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000401A4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000401A4()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_100040208, v1, v2);
}

uint64_t sub_100040208()
{
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_100040404("%s handling UIApplicationDidBecomeActive notification", &unk_10010BBF8, &unk_1000D70C0);
    }

    sub_10000B880(v0[8], &qword_100124550);
    v0[16] = static MainActor.shared.getter();
    v5 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10004000C;
    v7 = v0[8];
    v8 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
  }
}

uint64_t sub_100040404(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000046F4(v10, qword_100128968);
  v11 = static os_log_type_t.info.getter();
  v12 = Logger.logObject.getter();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v22 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10000607C(v16, v17, &v23);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v11, a1, v14, 0xCu);
    sub_100005964(v15);

    a3 = v22;
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v6;

  sub_10009A64C(0, 0, v9, a3, v20);
}

uint64_t sub_10004065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1000525C4(&qword_100124550);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_10004078C, v8, v7);
}

uint64_t sub_10004078C()
{
  NSNotificationCenter.notifications(named:object:)();
  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v0[16] = static MainActor.shared.getter();
  v1 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1000408B4;
  v3 = v0[8];
  v4 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_1000408B4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10005C9E8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100040A4C;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100040A4C()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_100040AB0, v1, v2);
}

uint64_t sub_100040AB0()
{
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_100040C88();
    }

    sub_10000B880(v0[8], &qword_100124550);
    v0[16] = static MainActor.shared.getter();
    v5 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_1000408B4;
    v7 = v0[8];
    v8 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
  }
}

uint64_t sub_100040C88()
{
  v1 = v0;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000046F4(v2, qword_100128968);
  v3 = static os_log_type_t.info.getter();
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10000607C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v4, v3, "%s handling UIApplicationSignificantTimeChange notification", v5, 0xCu);
    sub_100005964(v6);
  }

  v10 = *(v1 + 88);
  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);

  os_unfair_lock_unlock((v10 + 24));
  if (*(v11 + 16))
  {
    sub_1000A5CAC();
    sub_1000A1E84(v11);

    return sub_1000457C4();
  }

  else
  {
  }
}

uint64_t sub_100040E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1000525C4(&qword_100124550);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_100040FAC, v8, v7);
}

uint64_t sub_100040FAC()
{
  NSNotificationCenter.notifications(named:object:)();
  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v0[16] = static MainActor.shared.getter();
  v1 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1000410D4;
  v3 = v0[8];
  v4 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_1000410D4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10005C9E8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10004126C;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10004126C()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1000412D0, v1, v2);
}

uint64_t sub_1000412D0()
{
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_10003B4EC();
    }

    sub_10000B880(v0[8], &qword_100124550);
    v0[16] = static MainActor.shared.getter();
    v5 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_1000410D4;
    v7 = v0[8];
    v8 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
  }
}

uint64_t sub_1000414A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1000525C4(&qword_100124550);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_1000415D8, v8, v7);
}

uint64_t sub_1000415D8()
{
  NSNotificationCenter.notifications(named:object:)();
  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v0[16] = static MainActor.shared.getter();
  v1 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100041724;
  v3 = v0[8];
  v4 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_100041724()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10005C9E8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000418BC;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000418BC()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_100041920, v1, v2);
}

uint64_t sub_100041920()
{
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      sub_100041AF8();
    }

    sub_10000B880(v0[8], &qword_100124550);
    v0[16] = static MainActor.shared.getter();
    v5 = sub_10005B5FC(&qword_100124558, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_100041724;
    v7 = v0[8];
    v8 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v5);
  }
}

uint64_t sub_100041AF8()
{
  v0 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  if (qword_100124020 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000046F4(v3, qword_100128968);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10000607C(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s handling TUPrivacyRulesChangedNotification notification", v6, 0xCu);
    sub_100005964(v7);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  sub_10009A64C(0, 0, v2, &unk_1000D70B8, v13);
}

uint64_t sub_100041D68()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    while (v4 < *(v1 + 16))
    {
      v5 = v4 + 1;

      Task.cancel()();

      v4 = v5;
      if (v2 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v6 = *(v0 + 184);
    if (v6)
    {
      [v6 stopObserving];
    }

    sub_100004E40(*(v0 + 40));
    sub_100004E40(*(v0 + 56));
    sub_100004E40(*(v0 + 72));

    sub_100005964(v0 + 128);

    return v0;
  }

  return result;
}

uint64_t sub_100041EB4()
{
  sub_100041D68();

  return swift_deallocClassInstance();
}

void sub_100041EE8()
{
  v1 = type metadata accessor for HistoryItem();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = __chkstk_darwin(v1);
  v55 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v51 = &v48 - v4;
  v5 = sub_1000525C4(&qword_100124400);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v48 - v9;
  v59 = type metadata accessor for UUID();
  v11 = *(v59 - 8);
  __chkstk_darwin(v59);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for GroupedHistoryItem();
  v14 = *(v60 - 8);
  __chkstk_darwin(v60);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000525C4(&qword_100124360);
  v18 = __chkstk_darwin(v17 - 8);
  v54 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v48 - v20;
  v61 = RecentsCallItem.callUniqueId.getter();
  v23 = v22;
  v24 = *(v0 + 88);
  os_unfair_lock_lock((v24 + 24));
  v25 = *(v24 + 16);

  os_unfair_lock_unlock((v24 + 24));
  v58 = *(v25 + 16);
  if (!v58)
  {

    v36 = 1;
    v30 = v60;
    v27 = v14;
    v37 = v8;
LABEL_15:
    v40 = v54;
    v39 = v55;
    (*(v27 + 56))(v21, v36, 1, v30);
    sub_10000B818(v21, v40, &qword_100124360);
    if ((*(v27 + 48))(v40, 1, v30) == 1)
    {
      sub_10000B880(v40, &qword_100124360);
    }

    else
    {
      v41 = v51;
      GroupedHistoryItem.mostRecentItem.getter();
      (*(v27 + 8))(v40, v30);
      v42 = v52;
      v43 = v41;
      v44 = v53;
      (*(v52 + 32))(v39, v43, v53);
      if ((*(v42 + 88))(v39, v44) == enum case for HistoryItem.recentCall(_:))
      {
        (*(v42 + 96))(v39, v44);
        v45 = type metadata accessor for RecentCall();
        v46 = *(v45 - 8);
        (*(v46 + 32))(v10, v39, v45);
        (*(v46 + 56))(v10, 0, 1, v45);
        goto LABEL_21;
      }

      (*(v42 + 8))(v39, v44);
    }

    v45 = type metadata accessor for RecentCall();
    (*(*(v45 - 8) + 56))(v10, 1, 1, v45);
LABEL_21:
    sub_10000B818(v10, v37, &qword_100124400);
    type metadata accessor for RecentCall();
    v47 = *(v45 - 8);
    if ((*(v47 + 48))(v37, 1, v45) == 1)
    {
      sub_10000B880(v10, &qword_100124400);
      sub_10000B880(v21, &qword_100124360);
      sub_10000B880(v37, &qword_100124400);
    }

    else
    {
      RecentCall.chRecentCall.getter();
      sub_10000B880(v10, &qword_100124400);
      sub_10000B880(v21, &qword_100124360);
      (*(v47 + 8))(v37, v45);
    }

    return;
  }

  v48 = v21;
  v49 = v10;
  v50 = v8;
  v26 = 0;
  v27 = v14;
  v57 = v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v56 = v14 + 16;
  v28 = (v11 + 8);
  v29 = (v27 + 8);
  v30 = v60;
  while (v26 < *(v25 + 16))
  {
    v31 = v27;
    (*(v27 + 16))(v16, v57 + *(v27 + 72) * v26, v30);
    GroupedHistoryItem.uniqueID.getter();
    v32 = UUID.uuidString.getter();
    v34 = v33;
    (*v28)(v13, v59);
    if (v23)
    {
      if (v32 == v61 && v23 == v34)
      {

        goto LABEL_14;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {

LABEL_14:

        v27 = v31;
        v38 = *(v31 + 32);
        v21 = v48;
        v30 = v60;
        v38(v48, v16, v60);
        v36 = 0;
        v10 = v49;
        v37 = v50;
        goto LABEL_15;
      }
    }

    else
    {
    }

    ++v26;
    v30 = v60;
    (*v29)(v16, v60);
    v27 = v31;
    if (v58 == v26)
    {

      v36 = 1;
      v10 = v49;
      v37 = v50;
      v21 = v48;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1000426D4()
{
  v0[3] = *(v0[2] + 16);
  type metadata accessor for HistoryCoalescingManager();
  sub_10005B5FC(&qword_100124458, &type metadata accessor for HistoryCoalescingManager);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[4] = v2;
  v0[5] = v1;

  return _swift_task_switch(sub_100042794, v2, v1);
}

uint64_t sub_100042794()
{
  *(v0 + 48) = dispatch thunk of HistoryCoalescingManager.currentGroups.getter();

  return _swift_task_switch(sub_100042800, 0, 0);
}

uint64_t sub_100042800()
{
  v1 = v0[6];
  v2 = *(v0[2] + 88);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_10005BB0C((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));

  v3 = v0[4];
  v4 = v0[5];

  return _swift_task_switch(sub_1000428E8, v3, v4);
}

uint64_t sub_1000428E8()
{
  *(v0 + 56) = dispatch thunk of HistoryCoalescingManager.currentVersion.getter();

  return _swift_task_switch(sub_100042954, 0, 0);
}

uint64_t sub_100042974(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100042A10;

  return sub_100042B04(a2);
}

uint64_t sub_100042A10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100042B04(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_1000525C4(&qword_100124518);
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = sub_1000525C4(&unk_100124520);
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v5 = type metadata accessor for HistoryItem();
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  sub_1000525C4(&qword_100124400);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v6 = type metadata accessor for RecentCall();
  v2[48] = v6;
  v2[49] = *(v6 - 8);
  v2[50] = swift_task_alloc();
  v7 = type metadata accessor for GroupedHistoryItem();
  v2[51] = v7;
  v2[52] = *(v7 - 8);
  v2[53] = swift_task_alloc();

  return _swift_task_switch(sub_100042D9C, 0, 0);
}

uint64_t sub_100042D9C()
{
  v1 = v0[34];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[52];
    v4 = v0[49];
    v5 = v0[43];
    v6 = *(v3 + 16);
    v3 += 16;
    v60 = v6;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v58 = (v5 + 16);
    v59 = *(v3 + 56);
    v8 = (v5 + 8);
    v56 = (v4 + 56);
    v57 = (v5 + 88);
    v51 = (v5 + 96);
    v52 = v4;
    v61 = (v4 + 32);
    v54 = (v4 + 48);
    v55 = (v3 - 8);
    v9 = &_swiftEmptyArrayStorage;
    v53 = enum case for HistoryItem.recentCall(_:);
    do
    {
      v63 = v2;
      v64 = v9;
      v11 = v0[44];
      v10 = v0[45];
      v12 = v0[42];
      v62 = v7;
      v60(v0[53]);
      GroupedHistoryItem.mostRecentItem.getter();
      (*v58)(v11, v10, v12);
      if ((*v57)(v11, v12) == v53)
      {
        v13 = v0[48];
        v14 = v0[46];
        v15 = v0[44];
        (*v51)(v15, v0[42]);
        (*v61)(v14, v15, v13);
        v16 = 0;
      }

      else
      {
        (*v8)(v0[44], v0[42]);
        v16 = 1;
      }

      v17 = v0[53];
      v18 = v0[51];
      v20 = v0[47];
      v19 = v0[48];
      v21 = v0[45];
      v22 = v0[46];
      v23 = v0[42];
      (*v56)(v22, v16, 1, v19);
      sub_10000AFFC(v22, v20, &qword_100124400);
      (*v8)(v21, v23);
      (*v55)(v17, v18);
      if ((*v54)(v20, 1, v19) == 1)
      {
        sub_10000B880(v0[47], &qword_100124400);
        v9 = v64;
      }

      else
      {
        v24 = *v61;
        (*v61)(v0[50], v0[47], v0[48]);
        v9 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100051C3C(0, v64[2] + 1, 1, v64, &qword_100124530, &unk_1000D7018, &type metadata accessor for RecentCall);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = sub_100051C3C(v25 > 1, v26 + 1, 1, v9, &qword_100124530, &unk_1000D7018, &type metadata accessor for RecentCall);
        }

        v27 = v0[50];
        v28 = v0[48];
        v9[2] = v26 + 1;
        v24(v9 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v26, v27, v28);
      }

      v7 = v62 + v59;
      v2 = v63 - 1;
    }

    while (v63 != 1);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v0[54] = v9;
  if (v9[2])
  {
    v29 = sub_10009F978(v9);
    if (qword_100124020 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000046F4(v30, qword_100128968);
    v31 = static os_log_type_t.info.getter();

    v32 = Logger.logObject.getter();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      *(v33 + 4) = v9[2];

      *(v33 + 12) = 2048;
      if (v29 >> 62)
      {
        v34 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v34 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v33 + 14) = v34;

      _os_log_impl(&_mh_execute_header, v32, v31, "Fetching metadata for %ld recent calls using %ld handles", v33, 0x16u);
    }

    else
    {
    }

    v37 = v0[35];
    if ([*(v37 + 104) phoneRecentsAvatarsEnabled])
    {
      v38 = v0 + 10;
      v40 = v0[40];
      v39 = v0[41];
      v41 = v0[39];
      v42 = *(v37 + 112);
      sub_100008BA0(0, &qword_100125FA0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v0[55] = isa;

      v0[10] = v0;
      v0[15] = v0 + 57;
      v0[11] = sub_100043620;
      swift_continuation_init();
      v0[33] = v41;
      v44 = sub_10005BEA4(v0 + 30);
      CheckedContinuation.init(continuation:function:)();
      (*(v40 + 32))(v44, v39, v41);
      v0[26] = _NSConcreteStackBlock;
      v0[27] = 1107296256;
      v0[28] = sub_10004F9A8;
      v0[29] = &unk_10010BA58;
      [v42 updateCacheWithDestinationIDs:isa didMakeChanges:v0 + 26];
      (*(v40 + 8))(v44, v41);
    }

    else
    {
      v38 = v0 + 2;
      v46 = v0[37];
      v45 = v0[38];
      v47 = v0[36];

      v48 = *(v37 + 112);
      sub_100008BA0(0, &qword_100125FA0);
      v49 = Array._bridgeToObjectiveC()().super.isa;
      v0[56] = v49;

      v0[2] = v0;
      v0[3] = sub_1000437F4;
      swift_continuation_init();
      v0[25] = v47;
      v50 = sub_10005BEA4(v0 + 22);
      CheckedContinuation.init(continuation:function:)();
      (*(v46 + 32))(v50, v45, v47);
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_10004FA04;
      v0[21] = &unk_10010BA30;
      [v48 updateCacheWithDestinationIDs:v49 completion:v0 + 18];
      (*(v46 + 8))(v50, v47);
    }

    return _swift_continuation_await(v38);
  }

  else
  {

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_100043620()
{

  return _swift_task_switch(sub_100043700, 0, 0);
}

uint64_t sub_100043700()
{
  v1 = *(v0 + 456);

  if (v1 == 1)
  {
    sub_1000A37D0(*(v0 + 432));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000437F4()
{

  return _swift_task_switch(sub_1000438D4, 0, 0);
}

uint64_t sub_1000438D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000439A0(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100043A88;

  return v5();
}

uint64_t sub_100043A88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100043B80(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005C9E4;

  return sub_100043C1C(a2);
}

uint64_t sub_100043C1C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for HandleType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Handle.Kind();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for Person();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = type metadata accessor for RecentCall();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v9 = type metadata accessor for HistoryItem();
  v2[29] = v9;
  v2[30] = *(v9 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v10 = type metadata accessor for GroupedHistoryItem();
  v2[35] = v10;
  v2[36] = *(v10 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_100043FE4, 0, 0);
}

uint64_t sub_100043FE4()
{
  if (![*(v0[4] + 104) betterBlockingEnabled])
  {
    goto LABEL_19;
  }

  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[36];
    v184 = *(v4 + 16);
    v5 = v0[30];
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    v180 = (v5 + 88);
    v182 = (v5 + 32);
    v178 = enum case for HistoryItem.recentCall(_:);
    v174 = (v4 + 8);
    v176 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v8 = (v5 + 8);
    v172 = (v4 + 32);
    do
    {
      v11 = v0[34];
      v12 = v0[33];
      v13 = v0[29];
      v184(v0[39], v6, v0[35]);
      GroupedHistoryItem.mostRecentItem.getter();
      (*v182)(v12, v11, v13);
      if ((*v180)(v12, v13) == v178)
      {
        (*v8)(v0[33], v0[29]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100051C3C(0, *(v3 + 2) + 1, 1, v3, &qword_1001244E8, &unk_1000D6FE0, &type metadata accessor for GroupedHistoryItem);
        }

        v15 = *(v3 + 2);
        v14 = *(v3 + 3);
        if (v15 >= v14 >> 1)
        {
          v3 = sub_100051C3C(v14 > 1, v15 + 1, 1, v3, &qword_1001244E8, &unk_1000D6FE0, &type metadata accessor for GroupedHistoryItem);
        }

        v16 = v0[39];
        v17 = v0[35];
        *(v3 + 2) = v15 + 1;
        (*v172)(&v3[v176 + v15 * v7], v16, v17);
      }

      else
      {
        v9 = v0[33];
        v10 = v0[29];
        (*v174)(v0[39], v0[35]);
        (*v8)(v9, v10);
      }

      v6 += v7;
      --v2;
    }

    while (v2);
  }

  v18 = *(v3 + 2);
  if (!v18)
  {
LABEL_18:

LABEL_19:

    v37 = v0[1];

    return v37();
  }

  v19 = v0[36];
  v22 = *(v19 + 16);
  v20 = v19 + 16;
  v21 = v22;
  v23 = &v3[(*(v20 + 64) + 32) & ~*(v20 + 64)];
  v24 = *(v20 + 56);
  v25 = (v20 - 8);
  v143 = v23;
  v144 = v3;
  v139 = *(v3 + 2);
  do
  {
    v26 = v0[38];
    v27 = v0[35];
    v21(v26, v23, v27);
    v28 = GroupedHistoryItem.people.getter();
    v29 = v27;
    v30 = *v25;
    (*v25)(v26, v29);
    sub_1000BA358(v28);
    v23 += v24;
    --v18;
  }

  while (v18);
  v138 = v30;
  v31 = &_swiftEmptyArrayStorage;
  if (qword_100124020 != -1)
  {
LABEL_121:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v0[40] = sub_1000046F4(v32, qword_100128968);
  v33 = static os_log_type_t.info.getter();

  v34 = Logger.logObject.getter();
  if (os_log_type_enabled(v34, v33))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    v36 = *(v31 + 2);

    *(v35 + 4) = v36;

    _os_log_impl(&_mh_execute_header, v34, v33, "Fetching blocked status for %ld people", v35, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v39 = v0[30];
  v40 = v0[27];
  v41 = v0[24];
  v181 = v0[19];
  v42 = v0[15];
  v31 = v0[10];
  v43 = v0[6];
  v0[2] = &_swiftEmptySetSingleton;
  v150 = sub_1000BF978(&_swiftEmptyArrayStorage);
  v44 = 0;
  v141 = (v39 + 88);
  v142 = (v39 + 32);
  v140 = enum case for HistoryItem.recentCall(_:);
  v136 = (v39 + 96);
  v137 = (v39 + 8);
  v135 = (v40 + 32);
  v171 = (v43 + 88);
  v170 = enum case for HandleType.unknown(_:);
  v164 = enum case for HandleType.generic(_:);
  v162 = enum case for HandleType.phoneNumber(_:);
  v159 = enum case for HandleType.emailAddress(_:);
  v160 = enum case for Handle.Kind.phoneNumber(_:);
  v169 = (v31 + 104);
  v153 = (v43 + 8);
  v167 = (v31 + 8);
  v168 = (v31 + 16);
  v173 = v42;
  v166 = (v42 + 8);
  v154 = v41;
  v151 = (v41 + 8);
  v134 = (v40 + 8);
  v152 = enum case for Handle.Kind.emailAddress(_:);
  v165 = enum case for Handle.Kind.generic(_:);
  v146 = v21;
  v147 = v20;
  v145 = v24;
  while (2)
  {
    if (v44 >= *(v144 + 2))
    {
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v47 = v0[31];
    v46 = v0[32];
    v155 = v44;
    v48 = v0[29];
    v21(v0[37], &v143[v44 * v24], v0[35]);
    GroupedHistoryItem.mostRecentItem.getter();
    (*v142)(v47, v46, v48);
    if ((*v141)(v47, v48) != v140)
    {
      v31 = v0[31];
      v45 = v0[29];
      v138(v0[37], v0[35]);
      (*v137)(v31, v45);
      goto LABEL_25;
    }

    v31 = v0[31];
    v49 = v0[28];
    v50 = v0[26];
    (*v136)(v31, v0[29]);
    (*v135)(v49, v31, v50);
    v51 = GroupedHistoryItem.people.getter();
    v149 = v51 + 56;
    v52 = -1 << *(v51 + 32);
    if (-v52 < 64)
    {
      v53 = ~(-1 << -v52);
    }

    else
    {
      v53 = -1;
    }

    v54 = v53 & *(v51 + 56);
    v148 = (63 - v52) >> 6;
    v156 = v51;

    v55 = v54;
    v56 = 0;
    v57 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v161 = v57;
      if (!v55)
      {
        break;
      }

LABEL_38:
      v157 = v56;
      v158 = v55;
      (*(v154 + 16))(v0[25], *(v156 + 48) + *(v154 + 72) * (__clz(__rbit64(v55)) | (v56 << 6)), v0[23]);
      v59 = Person.contacts.getter();
      if (v59 >> 62)
      {
        v31 = v59;
        v126 = _CocoaArrayWrapper.endIndex.getter();

        if (v126)
        {
LABEL_40:
          v61 = Person.handles.getter();
          v62 = 0;
          v63 = 0;
          v64 = 1 << *(v61 + 32);
          while (1)
          {
            v65 = *(v61 + 8 * v63 + 56);
            if (v65)
            {
              break;
            }

            ++v63;
            v62 -= 64;
            if ((v64 + 63) >> 6 == v63)
            {
              goto LABEL_45;
            }
          }

          v66 = __clz(__rbit64(v65));
          if (v66 - v64 == v62)
          {
LABEL_45:

            goto LABEL_46;
          }

          if (-v62 < 0)
          {
            goto LABEL_119;
          }

          v99 = v66 - v62;
          if (v99 >= v64)
          {
            goto LABEL_119;
          }

          if (((*(v61 + 56 + 8 * (v63 & 0x3FFFFFFFFFFFFFFLL)) >> v66) & 1) == 0)
          {
            goto LABEL_120;
          }

          v100 = v0[8];
          v101 = v0[5];
          (*(v173 + 16))(v0[17], *(v61 + 48) + *(v173 + 72) * v99, v0[14]);

          Handle.type.getter();
          v102 = (*v171)(v100, v101);
          if (v102 == v170 || v102 == v164)
          {
            (*v169)(v0[13], v165, v0[9]);
          }

          else if (v102 == v162)
          {
            (*v169)(v0[13], v160, v0[9]);
          }

          else
          {
            v103 = *v169;
            v104 = v0[9];
            if (v102 == v159)
            {
              v103(v0[13], v152, v104);
            }

            else
            {
              v105 = v0[8];
              v106 = v0[5];
              v103(v0[13], v160, v104);
              (*v153)(v105, v106);
            }
          }

          v107 = v0[22];
          v186 = v0[23];
          v188 = v0[25];
          v108 = v0[21];
          v109 = v0;
          v110 = v0[17];
          v111 = v0[18];
          v113 = v0[13];
          v112 = v0[14];
          v114 = v0[9];
          (*v168)(v0[12], v113, v114);
          Handle.value.getter();
          Handle.init(type:value:displayName:)();
          (*v167)(v113, v114);
          (*v166)(v110, v112);
          v115 = *(v181 + 32);
          v115(v107, v108, v111);
          sub_1000525C4(&qword_1001244E0);
          v116 = (*(v181 + 80) + 32) & ~*(v181 + 80);
          v98 = swift_allocObject();
          v98[1] = xmmword_1000D6C50;
          v117 = v98 + v116;
          v0 = v109;
          v115(v117, v107, v111);
          (*v151)(v188, v186);
          v21 = v146;
          v20 = v147;
          v24 = v145;
          goto LABEL_86;
        }
      }

      else
      {
        v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v60)
        {
          goto LABEL_40;
        }
      }

LABEL_46:
      v67 = Person.handles.getter();
      v68 = *(v67 + 16);
      if (v68)
      {
        sub_1000A8E30(0, v68, 0);
        v187 = &_swiftEmptyArrayStorage;
        v69 = v67 + 56;
        v70 = _HashTable.startBucket.getter();
        v71 = 0;
        v163 = v67 + 64;
        v72 = v67;
        v177 = v67 + 56;
        v179 = v67;
        v175 = v68;
        while ((v70 & 0x8000000000000000) == 0 && v70 < 1 << *(v72 + 32))
        {
          v74 = v70 >> 6;
          if ((*(v69 + 8 * (v70 >> 6)) & (1 << v70)) == 0)
          {
            goto LABEL_108;
          }

          v183 = v71;
          v185 = *(v72 + 36);
          v75 = v0[7];
          v76 = v0[5];
          (*(v173 + 16))(v0[16], *(v72 + 48) + *(v173 + 72) * v70, v0[14]);
          Handle.type.getter();
          v77 = (*v171)(v75, v76);
          if (v77 == v170 || v77 == v164)
          {
            (*v169)(v0[11], v165, v0[9]);
          }

          else if (v77 == v162)
          {
            (*v169)(v0[11], v160, v0[9]);
          }

          else
          {
            v78 = *v169;
            v79 = v0[9];
            if (v77 == v159)
            {
              v78(v0[11], v152, v79);
            }

            else
            {
              v80 = v0[7];
              v81 = v0[5];
              v78(v0[11], v160, v79);
              (*v153)(v80, v81);
            }
          }

          v82 = v0[16];
          v83 = v0[14];
          v84 = v0[11];
          v85 = v0[9];
          (*v168)(v0[12], v84, v85);
          Handle.value.getter();
          Handle.init(type:value:displayName:)();
          (*v167)(v84, v85);
          (*v166)(v82, v83);
          v86 = v187;
          v88 = v187[2];
          v87 = v187[3];
          if (v88 >= v87 >> 1)
          {
            sub_1000A8E30(v87 > 1, v88 + 1, 1);
            v86 = v187;
          }

          v89 = v0[20];
          v90 = v0[18];
          v86[2] = v88 + 1;
          v187 = v86;
          (*(v181 + 32))(v86 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v88, v89, v90);
          v69 = v177;
          v72 = v179;
          v73 = 1 << *(v179 + 32);
          if (v70 >= v73)
          {
            goto LABEL_109;
          }

          v91 = *(v177 + 8 * v74);
          if ((v91 & (1 << v70)) == 0)
          {
            goto LABEL_110;
          }

          if (v185 != *(v179 + 36))
          {
            goto LABEL_111;
          }

          v92 = v91 & (-2 << (v70 & 0x3F));
          if (v92)
          {
            v73 = __clz(__rbit64(v92)) | v70 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v93 = v74 << 6;
            v94 = (v163 + 8 * v74);
            v95 = v74 + 1;
            while (v95 < (v73 + 63) >> 6)
            {
              v97 = *v94++;
              v96 = v97;
              v93 += 64;
              ++v95;
              if (v97)
              {
                sub_10005BE98(v70, v185, 0);
                v73 = __clz(__rbit64(v96)) + v93;
                goto LABEL_49;
              }
            }

            sub_10005BE98(v70, v185, 0);
          }

LABEL_49:
          v71 = v183 + 1;
          v70 = v73;
          if (v183 + 1 == v175)
          {
            (*v151)(v0[25], v0[23]);

            v21 = v146;
            v20 = v147;
            v24 = v145;
            v98 = v187;
            goto LABEL_86;
          }
        }

        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      (*v151)(v0[25], v0[23]);

      v98 = &_swiftEmptyArrayStorage;
LABEL_86:
      v118 = *(v98 + 2);
      v119 = v161[2];
      v31 = (v119 + v118);
      if (__OFADD__(v119, v118))
      {
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121 = v161;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v31 > v161[3] >> 1)
      {
        if (v119 <= v31)
        {
          v122 = v119 + v118;
        }

        else
        {
          v122 = v119;
        }

        v121 = sub_100051C3C(isUniquelyReferenced_nonNull_native, v122, 1, v161, &qword_1001244E0, &unk_1000D6FD8, &type metadata accessor for Handle);
      }

      if (*(v98 + 2))
      {
        if ((*(v121 + 24) >> 1) - *(v121 + 16) < v118)
        {
          goto LABEL_116;
        }

        v31 = v121;
        swift_arrayInitWithCopy();

        v55 = (v158 - 1) & v158;
        v57 = v31;
        v56 = v157;
        if (v118)
        {
          v123 = *(v31 + 2);
          v124 = __OFADD__(v123, v118);
          v125 = v123 + v118;
          if (v124)
          {
            goto LABEL_118;
          }

          *(v31 + 2) = v125;
        }
      }

      else
      {
        v31 = v121;

        v55 = (v158 - 1) & v158;
        v57 = v31;
        v56 = v157;
        if (v118)
        {
          goto LABEL_115;
        }
      }
    }

    while (1)
    {
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
        goto LABEL_114;
      }

      if (v58 >= v148)
      {
        break;
      }

      v55 = *(v149 + 8 * v58);
      ++v56;
      if (v55)
      {
        v56 = v58;
        goto LABEL_38;
      }
    }

    if (v161[2])
    {
      v127 = v0[28];

      v128 = swift_isUniquelyReferenced_nonNull_native();
      sub_1000B9584(v161, v127, v128);
      sub_10005AD28(v161);
    }

    v129 = v0[37];
    v31 = v0[35];
    v130 = v0[28];
    v131 = v0[26];

    (*v134)(v130, v131);
    v138(v129, v31);
LABEL_25:
    v44 = v155 + 1;
    v0[41] = v150;
    if (v155 + 1 != v139)
    {
      continue;
    }

    break;
  }

  v132 = v0[2];
  v0[42] = v132;
  if (!*(v132 + 16))
  {
LABEL_112:

    goto LABEL_18;
  }

  sub_10000BC24((v0[4] + 128), *(v0[4] + 152));
  v133 = swift_task_alloc();
  v0[43] = v133;
  *v133 = v0;
  v133[1] = sub_1000452A0;

  return BlockList.areHandlesBlocked(_:)(v132);
}

uint64_t sub_1000452A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {

    v5 = sub_1000453D8;
  }

  else
  {
    *(v4 + 360) = a1;
    v5 = sub_100045620;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000453D8()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch blocked status: %@", v3, 0xCu);
    sub_10000B880(v4, &qword_1001250A0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100045620()
{
  v1 = v0[45];
  v2 = v0[41];

  v3 = sub_10005AE70(v2, v1);
  swift_bridgeObjectRelease_n();

  sub_1000A3D20(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000457C4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BA0(0, &qword_1001244C0);
  v7 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10005BE48;
  v15 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A6C0;
  aBlock[3] = &unk_10010BA08;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_10005B5FC(&qword_1001244C8, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000525C4(&qword_1001244D0);
  sub_10005BE50(&qword_1001244D8, &qword_1001244D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_100045AA0()
{
  v1 = v0;
  v95 = type metadata accessor for HandleType();
  v2 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v98 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v97 = &v85 - v5;
  v96 = type metadata accessor for Handle();
  v6 = *(v96 - 8);
  v7 = __chkstk_darwin(v96);
  v94 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v85 - v9;
  v10 = type metadata accessor for CoalescedRecentItem();
  __chkstk_darwin(v10 - 8);
  v109 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for Person();
  v12 = *(v133 - 8);
  __chkstk_darwin(v133);
  v137 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for RecentCall();
  v14 = *(v129 - 8);
  __chkstk_darwin(v129);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for HistoryItem();
  v17 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = (&v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1000525C4(&qword_100124358);
  __chkstk_darwin(v19 - 8);
  v111 = &v85 - v20;
  v110 = type metadata accessor for RecentsCallItem();
  v21 = *(v110 - 8);
  __chkstk_darwin(v110);
  v128 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for GroupedHistoryItem();
  v23 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v1;
  v25 = *(v1 + 88);
  os_unfair_lock_lock((v25 + 24));
  v26 = *(v25 + 16);

  os_unfair_lock_unlock((v25 + 24));
  v127 = *(v26 + 16);
  if (v127)
  {
    v27 = v21;
    v28 = 0;
    v126 = v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v124 = (v17 + 88);
    v125 = v23 + 16;
    v123 = enum case for HistoryItem.recentCall(_:);
    v120 = (v23 + 8);
    v108 = (v27 + 56);
    v107 = enum case for HistoryItem.message(_:);
    v101 = (v17 + 8);
    v114 = (v17 + 96);
    v106 = (v14 + 32);
    v135 = v12 + 16;
    v136 = v12;
    v134 = (v12 + 8);
    v92 = v6 + 16;
    v91 = v6 + 32;
    v90 = enum case for HandleType.phoneNumber(_:);
    v89 = (v2 + 104);
    v88 = (v2 + 8);
    v93 = v6;
    v87 = (v6 + 8);
    v103 = (v14 + 8);
    v119 = (v27 + 48);
    v105 = v27;
    v118 = (v27 + 32);
    v130 = &_swiftEmptyArrayStorage;
    v29 = v133;
    v30 = v137;
    v31 = v113;
    v32 = v112;
    v33 = v111;
    v34 = v110;
    v104 = v16;
    v121 = v26;
    v122 = v23;
    while (v28 < *(v26 + 16))
    {
      (*(v23 + 16))(v131, v126 + *(v23 + 72) * v28, v132);
      GroupedHistoryItem.mostRecentItem.getter();
      v35 = (*v124)(v32, v31);
      if (v35 == v123)
      {
        (*v114)(v32, v31);
        (*v106)(v16, v32, v129);
        v116 = RecentCall.chRecentCall.getter();
        v36 = GroupedHistoryItem.people.getter();
        v102 = RecentCall.isoCountryCode.getter();
        v117 = v37;
        v38 = &_swiftEmptyArrayStorage;
        v140 = &_swiftEmptyArrayStorage;
        v39 = 1 << *(v36 + 32);
        if (v39 < 64)
        {
          v40 = ~(-1 << v39);
        }

        else
        {
          v40 = -1;
        }

        v41 = v40 & *(v36 + 56);
        v42 = (v39 + 63) >> 6;

        v43 = 0;
        if (!v41)
        {
          goto LABEL_13;
        }

LABEL_17:
        while (2)
        {
          while (1)
          {
            (*(v136 + 16))(v30, *(v36 + 48) + *(v136 + 72) * (__clz(__rbit64(v41)) | (v43 << 6)), v29);
            v45 = Person.contacts.getter();
            if (v45 >> 62)
            {
              v74 = v45;
              v46 = _CocoaArrayWrapper.endIndex.getter();
              v45 = v74;
              v29 = v133;
            }

            else
            {
              v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v41 &= v41 - 1;
            if (!v46)
            {
              break;
            }

            if ((v45 & 0xC000000000000001) != 0)
            {
              v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_64;
              }

              v57 = *(v45 + 32);
            }

            v100 = v57;

LABEL_45:
            (*v134)(v30, v29);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v38 = v140;
            if (!v41)
            {
              goto LABEL_13;
            }
          }

          v47 = Person.handles.getter();
          v48 = 0;
          v49 = 0;
          v50 = 1 << *(v47 + 32);
          while (1)
          {
            v51 = *(v47 + 8 * v49 + 56);
            if (v51)
            {
              break;
            }

            ++v49;
            v48 -= 64;
            if ((v50 + 63) >> 6 == v49)
            {
              goto LABEL_25;
            }
          }

          v52 = __clz(__rbit64(v51));
          if (v52 - v50 != v48)
          {
            if (-v48 < 0)
            {
              goto LABEL_65;
            }

            v58 = v52 - v48;
            if (v58 >= v50)
            {
              goto LABEL_65;
            }

            if (((*(v47 + 56 + 8 * (v49 & 0x3FFFFFFFFFFFFFFLL)) >> v52) & 1) == 0)
            {
              goto LABEL_66;
            }

            v59 = v93;
            v60 = v94;
            v61 = v96;
            (*(v93 + 16))(v94, *(v47 + 48) + *(v93 + 72) * v58, v96);

            (*(v59 + 32))(v99, v60, v61);
            Handle.type.getter();
            v62 = v95;
            (*v89)(v98, v90, v95);
            sub_10005B5FC(&qword_1001243B0, &type metadata accessor for HandleType);
            dispatch thunk of RawRepresentable.rawValue.getter();
            v63 = v98;
            dispatch thunk of RawRepresentable.rawValue.getter();
            v64 = *v88;
            (*v88)(v63, v62);
            v64(v97, v62);
            v65 = 2;
            if (v139 != v138)
            {
              v65 = 3;
            }

            v100 = v65;
            Handle.value.getter();
            Handle.normalizedValue.getter();
            v67 = v66;
            v85 = String._bridgeToObjectiveC()();

            if (v67)
            {
              v68 = String._bridgeToObjectiveC()();
            }

            else
            {
              v68 = 0;
            }

            v29 = v133;
            v69 = objc_allocWithZone(TUHandle);
            v70 = v85;
            v86 = [v69 initWithType:v100 value:v85 normalizedValue:v68];

            v30 = v137;
            if (v117)
            {

              v71 = String._bridgeToObjectiveC()();
            }

            else
            {
              v71 = 0;
            }

            v72 = objc_opt_self();
            v73 = v86;
            v100 = [v72 contactForHandle:v86 isoCountryCode:v71 metadataCache:0];

            (*v87)(v99, v96);
            goto LABEL_45;
          }

LABEL_25:

          if (qword_100124020 != -1)
          {
            swift_once();
          }

          v53 = type metadata accessor for Logger();
          sub_1000046F4(v53, qword_100128968);
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&_mh_execute_header, v54, v55, "No handle or contact found for person", v56, 2u);
            v29 = v133;
          }

          v30 = v137;
          (*v134)(v137, v29);
          if (v41)
          {
            continue;
          }

          break;
        }

LABEL_13:
        while (1)
        {
          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v44 >= v42)
          {

            v77 = v109;
            v16 = v104;
            sub_1000A52FC(v104, v38, v109);

            v33 = v111;
            v78 = v116;
            sub_10009E49C(v116, v77, v38, v111);

            v79 = v77;
            v29 = v133;
            sub_10005B5A0(v79);
            (*v103)(v16, v129);
            (*v120)(v131, v132);
            v31 = v113;
            v32 = v112;
            v34 = v110;
            goto LABEL_55;
          }

          v41 = *(v36 + 56 + 8 * v44);
          ++v43;
          if (v41)
          {
            v43 = v44;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      if (v35 == v107)
      {
        (*v114)(v32, v31);
        v75 = *v32;
        v76 = v131;
        sub_1000483D8(*v32, v131, v33);

        v30 = v137;
        (*v120)(v76, v132);
        (*v108)(v33, 0, 1, v34);
      }

      else
      {
        (*v120)(v131, v132);
        (*v108)(v33, 1, 1, v34);
        (*v101)(v32, v31);
      }

LABEL_55:
      v26 = v121;
      if ((*v119)(v33, 1, v34) == 1)
      {
        sub_10000B880(v33, &qword_100124358);
      }

      else
      {
        v80 = *v118;
        (*v118)(v128, v33, v34);
        v81 = v130;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_100051C3C(0, v81[2] + 1, 1, v81, &qword_100124370, &unk_1000D6E50, &type metadata accessor for RecentsCallItem);
        }

        v83 = v81[2];
        v82 = v81[3];
        v130 = v81;
        if (v83 >= v82 >> 1)
        {
          v130 = sub_100051C3C(v82 > 1, v83 + 1, 1, v130, &qword_100124370, &unk_1000D6E50, &type metadata accessor for RecentsCallItem);
        }

        v84 = v130;
        v130[2] = v83 + 1;
        v80(&v84[((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v83], v128, v34);
        v29 = v133;
        v30 = v137;
      }

      ++v28;
      v23 = v122;
      if (v28 == v127)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  else
  {
LABEL_61:
  }
}