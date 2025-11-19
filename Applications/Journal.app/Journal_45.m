id sub_1004CAE98()
{
  sub_1000F24EC(&unk_100AD4780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100941D50;
  v2 = *(v0 + 72);
  *(v1 + 32) = v2;
  v3 = objc_allocWithZone(MPNowPlayingSession);
  sub_1000065A8(0, &qword_100AE6238);
  v4 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v3 initWithPlayers:isa];

  [v6 setAutomaticallyPublishesNowPlayingInfo:1];
  v7 = [v6 remoteCommandCenter];
  v8 = [v7 playCommand];

  v9 = swift_allocObject();
  swift_weakInit();
  v50 = sub_1004CC150;
  v51 = v9;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_1004CB71C;
  v49 = &unk_100A6FB18;
  v10 = _Block_copy(&aBlock);

  v11 = [v8 addTargetWithHandler:v10];
  _Block_release(v10);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000BA7C(&aBlock);
  v12 = [v6 remoteCommandCenter];
  v13 = [v12 stopCommand];

  v14 = swift_allocObject();
  swift_weakInit();
  v50 = sub_1004CC180;
  v51 = v14;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_1004CB71C;
  v49 = &unk_100A6FB40;
  v15 = _Block_copy(&aBlock);

  v16 = [v13 addTargetWithHandler:v15];
  _Block_release(v15);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000BA7C(&aBlock);
  v17 = [v6 remoteCommandCenter];
  v18 = [v17 pauseCommand];

  v19 = swift_allocObject();
  swift_weakInit();
  v50 = sub_1004CC1B0;
  v51 = v19;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_1004CB71C;
  v49 = &unk_100A6FB68;
  v20 = _Block_copy(&aBlock);

  v21 = [v18 addTargetWithHandler:v20];
  _Block_release(v20);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000BA7C(&aBlock);
  v22 = [v6 remoteCommandCenter];
  v23 = [v22 skipBackwardCommand];

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100941D50;
  *(v24 + 32) = [objc_allocWithZone(NSNumber) initWithDouble:15.0];
  sub_1000065A8(0, &unk_100ADE730);
  v25 = Array._bridgeToObjectiveC()().super.isa;

  [v23 setPreferredIntervals:v25];

  v26 = [v6 remoteCommandCenter];
  v27 = [v26 skipBackwardCommand];

  v28 = swift_allocObject();
  swift_weakInit();
  v50 = sub_1004CC1B8;
  v51 = v28;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_1004CB71C;
  v49 = &unk_100A6FB90;
  v29 = _Block_copy(&aBlock);

  v30 = [v27 addTargetWithHandler:v29];
  _Block_release(v29);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000BA7C(&aBlock);
  v31 = [v6 remoteCommandCenter];
  v32 = [v31 skipForwardCommand];

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100941D50;
  *(v33 + 32) = [objc_allocWithZone(NSNumber) initWithDouble:15.0];
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v32 setPreferredIntervals:v34];

  v35 = [v6 remoteCommandCenter];
  v36 = [v35 skipForwardCommand];

  v37 = swift_allocObject();
  swift_weakInit();
  v50 = sub_1004CC1C0;
  v51 = v37;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_1004CB71C;
  v49 = &unk_100A6FBB8;
  v38 = _Block_copy(&aBlock);

  v39 = [v36 addTargetWithHandler:v38];
  _Block_release(v38);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000BA7C(&aBlock);
  v40 = [v6 remoteCommandCenter];
  v41 = [v40 changePlaybackPositionCommand];

  v42 = swift_allocObject();
  swift_weakInit();
  v50 = sub_1004CC1C8;
  v51 = v42;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_1004CB71C;
  v49 = &unk_100A6FBE0;
  v43 = _Block_copy(&aBlock);

  v44 = [v41 addTargetWithHandler:v43];
  _Block_release(v43);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000BA7C(&aBlock);
  return v6;
}

uint64_t sub_1004CB71C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1004CB774(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 200;
  }

  a3();

  return 0;
}

uint64_t sub_1004CB7E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 200;
  }

  v1 = Strong;
  [*(Strong + 72) pause];
  if (*(v1 + 88) != 2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_1004C8F94();

  return 0;
}

uint64_t sub_1004CB928(void *a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 200;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    return 200;
  }

  v3 = v2;
  v4 = a1;
  [v3 interval];
  v6 = v5;
  v7 = sub_100084FF0(&qword_100AE4060);
  v8 = *(v7 + 40);
  v9 = type metadata accessor for AudioPlayer();
  v10 = v8(v9, v7) - v6;
  if (v10 <= 0.0)
  {
    v10 = 0.0;
  }

  sub_1004C9C34(v10);

  return 0;
}

uint64_t sub_1004CBA44(void *a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 200;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    return 200;
  }

  v3 = v2;
  v4 = a1;
  [v3 interval];
  v6 = v5;
  v7 = sub_100084FF0(&qword_100AE4060);
  v8 = *(v7 + 40);
  v9 = type metadata accessor for AudioPlayer();
  v10 = v6 + v8(v9, v7);
  v11 = sub_100084FF0(&qword_100AE6230);
  v12 = (*(v11 + 24))(v9, v11);
  if (v12 >= v10)
  {
    v12 = v10;
  }

  sub_1004C9C34(v12);

  return 0;
}

uint64_t sub_1004CBBB4(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = a1;
      [v3 positionTime];
      sub_1004C9C34(v5);

      return 0;
    }
  }

  return 200;
}

uint64_t sub_1004CBC68()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_100361EDC(v8), (v5 & 1) == 0))
  {

    sub_100177B94(v8);
LABEL_11:
    v9 = 0u;
    v10 = 0u;
    return sub_100004F84(&v9, &qword_100AD13D0);
  }

  sub_10000BA20(*(v3 + 56) + 32 * v4, &v9);
  sub_100177B94(v8);

  if (!*(&v10 + 1))
  {
    return sub_100004F84(&v9, &qword_100AD13D0);
  }

  result = swift_dynamicCast();
  if ((result & 1) != 0 && v8[0] == 1)
  {
    [*(v1 + 72) pause];
    if (*(v1 + 88) != 2)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v8[0] = v1;
      sub_100084FF0(&qword_100AE6220);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return sub_1004C8F94();
  }

  return result;
}

unint64_t sub_1004CBF5C()
{
  result = qword_100AE6218;
  if (!qword_100AE6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6218);
  }

  return result;
}

uint64_t sub_1004CBFB0(double a1)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_100084FF0(&qword_100AE6220);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return sub_1004C9C34(*(v3 + 80) * a1);
}

double sub_1004CC054()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) = result;
  return result;
}

uint64_t sub_1004CC06C(uint64_t a1)
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
  v10[1] = sub_100032EC8;

  return sub_1004C9EA8(a1, v4, v5, v6, v7, v9, v8);
}

double sub_1004CC1F8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 80) = result;
  return result;
}

double sub_1004CC208()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 64) = result;
  return result;
}

uint64_t sub_1004CC218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v51 = &v47 - v9;
  v10 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[3] = a3;
  v53[4] = a4;
  v17 = sub_10001A770(v53);
  (*(*(a3 - 8) + 16))(v17, a1, a3);
  (*(a4 + 16))(a3, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100004F84(v12, &unk_100AD6DD0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Tried to play attachment but couldn't find a valid url", v20, 2u);
    }
  }

  else
  {
    v47 = v14;
    (*(v14 + 32))(v16, v12, v13);
    v21 = sub_1004CCD9C(v16);

    v22 = *(a2 + 72);
    v48 = v21;
    [v22 replaceCurrentItemWithPlayerItem:v21];
    sub_100086C04(v53, v52);
    swift_beginAccess();
    sub_100014318(v52, a2 + 16, &unk_100AE9D30);
    swift_endAccess();
    v23 = COERCE_DOUBLE((*(a4 + 40))(a3, a4));
    if (v24)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v23;
    }

    v26 = *(a2 + 80);
    v49 = v16;
    if (v26 == v25)
    {
      *(a2 + 80) = v25;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v50 = &v47;
      __chkstk_darwin(KeyPath);
      *(&v47 - 2) = a2;
      *(&v47 - 1) = v25;
      v52[0] = a2;
      sub_100084FF0(&qword_100AE6220);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v50 = v13;
    if (*(a2 + 88))
    {
      v28 = swift_getKeyPath();
      __chkstk_darwin(v28);
      *(&v47 - 2) = a2;
      *(&v47 - 8) = 0;
      v52[0] = a2;
      sub_100084FF0(&qword_100AE6220);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v29 = (*(a4 + 24))(a3, a4);
    if (v29)
    {
      v30 = *(v29 + 16);

      if (v30)
      {
        v31 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v31 + 16) = v30;
        memset_pattern16((v31 + 32), &unk_100958CD0, 8 * v30);
        v32 = v31;
      }

      else
      {
        v32 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v32 = _swiftEmptyArrayStorage;
    }

    v33 = v47;
    sub_1004C6E34(v32);
    swift_getKeyPath();
    v52[0] = a2;
    sub_100084FF0(&qword_100AE6220);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(a2 + 80) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      swift_getKeyPath();
      v52[0] = a2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v34 = *(*(a2 + 56) + 16);
      swift_getKeyPath();
      v52[0] = a2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = floor(v34 / *(a2 + 80) + 0.2);
    }

    else
    {
      v35 = 0.0;
    }

    if (*(a2 + 64) == v35)
    {
      *(a2 + 64) = v35;
    }

    else
    {
      v36 = swift_getKeyPath();
      __chkstk_darwin(v36);
      *(&v47 - 2) = a2;
      *(&v47 - 1) = v35;
      v52[0] = a2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v37 = type metadata accessor for TaskPriority();
    v38 = *(*(v37 - 8) + 56);
    v39 = v51;
    v38(v51, 1, 1, v37);
    type metadata accessor for MainActor();

    v40 = v48;
    v41 = static MainActor.shared.getter();
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = &protocol witness table for MainActor;
    v42[4] = a2;
    v42[5] = v40;
    sub_1003E9628(0, 0, v39, &unk_100958F68, v42);

    v38(v39, 1, 1, v37);

    v43 = v40;
    v44 = static MainActor.shared.getter();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = &protocol witness table for MainActor;
    v45[4] = v43;
    v45[5] = a2;
    sub_1003E9628(0, 0, v39, &unk_10095A660, v45);

    (*(v33 + 8))(v49, v50);
  }

  return sub_10000BA7C(v53);
}

id sub_1004CCA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v7 = sub_10001A770(v30);
  (*(*(a3 - 8) + 16))(v7, a1, a3);
  v8 = qword_100B2FC98;
  if (qword_100B2FC98)
  {
    v9 = qword_100B2FCA0;
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 88);
    swift_unknownObjectRetain();
    v11(v27, ObjectType, v9);
    v12 = v28;
    if (v28)
    {
      v13 = v29;
      sub_10000CA14(v27, v28);
      v14 = (*(v13 + 8))(v12, v13);
      v12 = v15;
      sub_10000BA7C(v27);
    }

    else
    {
      sub_100004F84(v27, &unk_100AE9D30);
      v14 = 0;
    }

    v16 = (*(a4 + 8))(a3, a4);
    if (v12)
    {
      if (v14 == v16 && v12 == v17)
      {

        goto LABEL_20;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  if (qword_100ACFE50 != -1)
  {
    swift_once();
  }

  v20 = qword_100AE5F60;
  v21 = v31;
  v26 = v32;
  sub_10000CA14(v30, v31);
  v22 = *(a4 + 8);
  v22(a3, a4);
  v23 = String._bridgeToObjectiveC()();

  v8 = [v20 objectForKey:v23];

  if (!v8)
  {
    type metadata accessor for AudioPlayer();
    v8 = swift_allocObject();
    sub_100084D8C();

    v22(v21, v26);
    v24 = String._bridgeToObjectiveC()();

    [v20 setObject:v8 forKey:v24];
  }

  sub_100084FF0(&qword_100AE4060);
LABEL_20:
  sub_10000BA7C(v30);
  return v8;
}

id sub_1004CCD9C(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 options:0];

  v9 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v8];
  sub_1000F24EC(&qword_100AD6BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941FE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v14;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v15;
  *(inited + 104) = v16;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v17;
  *(inited + 168) = &type metadata for UInt;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v18;
  v19 = type metadata accessor for URL();
  *(inited + 216) = v19;
  v20 = sub_10001A770((inited + 192));
  (*(*(v19 - 8) + 16))(v20, a1, v19);
  sub_100363528(inited);
  swift_setDeallocating();
  sub_1000F24EC(&qword_100ADFEB0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 setNowPlayingInfo:isa];

  return v9;
}

uint64_t sub_1004CD104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1004C7BDC(a1, v4, v5, v7, v6);
}

uint64_t sub_1004CD1C4()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_1004CD280()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE6250);
  v1 = sub_10000617C(v0, qword_100AE6250);
  if (qword_100AD01D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004CD348(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100005508();
  v17 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  aBlock[4] = sub_1004CDE68;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A6FD88;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = v17;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v20 + 8))(v4, v2);
  return (*(v18 + 8))(v7, v19);
}

void sub_1004CD6BC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (!v44)
  {
    sub_1000261D4(&v42);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_100ACFE58 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000617C(v14, qword_100AE6250);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_16;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "No systemAlert object found in notification";
    goto LABEL_15;
  }

  v5 = aBlock;
  v4 = v37;
  v7 = v38;
  v6 = v39;
  v8 = v40;
  if (v40)
  {
    if (v40 == 1 && byte_100AD3DA0 == 1)
    {
      v42 = aBlock;
      v43 = v37;
      sub_10004D740(&v42);
      aBlock = v7;
      v37 = v6;
      sub_10004D740(&aBlock);
      if (qword_100ACFE58 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000617C(v9, qword_100AE6250);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_16;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "iCloudManateeUnavailable dialog was already displayed, ignoring.";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

LABEL_16:

      return;
    }
  }

  else if (byte_100AD3DA1 == 1)
  {
    v42 = aBlock;
    v43 = v37;
    sub_10004D740(&v42);
    aBlock = v7;
    v37 = v6;
    sub_10004D740(&aBlock);
    if (qword_100ACFE58 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000617C(v15, qword_100AE6250);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_16;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "quotaExceeded dialog was already displayed, ignoring.";
    goto LABEL_15;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_37;
  }

  v17 = Strong;
  v18 = *&Strong[OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertWindow];
  if (!v18)
  {

LABEL_37:
    v45[0] = v5;
    v45[1] = v4;
    sub_10004D740(v45);
    aBlock = v7;
    v37 = v6;
    sub_10004D740(&aBlock);
    return;
  }

  v19 = v18;
  if (([v19 isKeyWindow] & 1) != 0 && v17[OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertDialogLastTypeShowed] != 3)
  {

    goto LABEL_37;
  }

  v35 = v19;
  v17[OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertDialogLastTypeShowed] = v8;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v21 = v20;
  (*(v1 + 8))(v3, v0);
  v22 = &v17[OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertDialogLastDate];
  if ((v17[OBJC_IVAR____TtC7Journal13SceneDelegate_systemAlertDialogLastDate + 8] & 1) == 0 && v21 - *v22 <= 5.0)
  {

    goto LABEL_37;
  }

  *v22 = v21;
  *(v22 + 8) = 0;
  [v35 makeKeyAndVisible];
  type metadata accessor for JurassicAlertController();
  v23 = String._bridgeToObjectiveC()();
  v24 = String._bridgeToObjectiveC()();
  v25 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

  if (qword_100AD0428 != -1)
  {
    swift_once();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  *(v26 + 24) = v4;
  *(v26 + 32) = v7;
  *(v26 + 40) = v6;
  *(v26 + 48) = v8;
  v27 = v35;
  *(v26 + 56) = v35;
  v28 = v27;
  v29 = String._bridgeToObjectiveC()();
  v40 = sub_1004CDEF4;
  v41 = v26;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_10016B4D8;
  v39 = &unk_100A6FDD8;
  v30 = _Block_copy(&aBlock);

  v31 = [objc_opt_self() actionWithTitle:v29 style:0 handler:v30];
  _Block_release(v30);

  [v25 addAction:v31];
  v32 = [v28 rootViewController];
  if (v32)
  {
    v33 = v32;
    [v32 presentViewController:v25 animated:1 completion:0];
  }

  else
  {
  }
}

unint64_t sub_1004CDE14()
{
  result = qword_100AE6268;
  if (!qword_100AE6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6268);
  }

  return result;
}

void sub_1004CDE68()
{
  type metadata accessor for Notification();

  sub_1004CD6BC();
}

id sub_1004CDEF4()
{
  v1 = *(v0 + 56);
  if (*(v0 + 48) == 1)
  {
    v2 = &byte_100AD3DA0;
  }

  else
  {
    if (*(v0 + 48))
    {
      goto LABEL_6;
    }

    v2 = &byte_100AD3DA1;
  }

  *v2 = 1;
LABEL_6:
  [v1 resignKeyWindow];

  return [v1 setHidden:1];
}

__n128 sub_1004CDF70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1004CDF84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1004CDFCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004CE020()
{
  v1 = v0;
  v2 = type metadata accessor for EntryListType();
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController____lazy_storage___model;
  if (*(v1 + OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController____lazy_storage___model))
  {
    v6 = *(v1 + OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController____lazy_storage___model);
  }

  else
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v7 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    v8 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v8 - 8) + 56))(v4, 2, 2, v8);
    type metadata accessor for EntryListViewModel(0);
    swift_allocObject();
    v6 = sub_100010AF4(v4, v7);
    *(v1 + v5) = v6;
  }

  return v6;
}

id sub_1004CE198()
{
  v1 = type metadata accessor for EntriesSortOrder();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EntryMapEntriesViewController();
  v17.receiver = v0;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, "viewDidLoad");
  if (!_UISolariumEnabled())
  {
LABEL_7:
    v13 = sub_1004CE020();
    (*(v2 + 104))(v4, enum case for EntriesSortOrder.entryDate(_:), v1);
    v14 = OBJC_IVAR____TtC7Journal18EntryListViewModel_sortOrder;
    swift_beginAccess();
    (*(v2 + 24))(v13 + v14, v4, v1);
    swift_endAccess();
    sub_100022BB4();

    (*(v2 + 8))(v4, v1);

    sub_1003032B4(v15, 0, 1);
  }

  result = [v0 view];
  if (result)
  {
    v7 = result;
    [result setBackgroundColor:0];

    v8 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView;
    v9 = *&v0[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (v9)
    {
      [v9 setBackgroundColor:0];
      v10 = *&v0[v8];
      if (v10)
      {
        v11 = [v10 backgroundView];
        if (v11)
        {
          v12 = v11;
          [v11 setAlpha:0.4];
        }
      }
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1004CE410(char a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for EntryMapEntriesViewController();
  objc_msgSendSuper2(&v8, "viewIsAppearing:", a1 & 1);
  v4 = v1[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entriesViewType];
  v5 = [v2 navigationController];
  if (v5)
  {
    v6 = a1 & 1;
    v7 = v5;
    [v5 setNavigationBarHidden:v4 animated:v6];
  }
}

uint64_t sub_1004CE4FC(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EntryMapEntriesViewController();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = OBJC_IVAR____TtC7Journal22EntryMapViewController_needsToRemoveSelection;
    if (*(result + OBJC_IVAR____TtC7Journal22EntryMapViewController_needsToRemoveSelection) == 1)
    {
      v5 = result;
      v6 = [*(result + OBJC_IVAR____TtC7Journal22EntryMapViewController_mapController) mapView];
      [v6 deselectAllAnnotationsAnimated:1];

      result = v5;
    }

    *(result + v4) = 1;
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1004CE620()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v5[4] = sub_100166008;
  v5[5] = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100029CCC;
  v5[3] = &unk_100A6FFB8;
  v2 = _Block_copy(v5);

  v3 = [v1 initWithSectionProvider:v2];
  _Block_release(v2);

  return v3;
}

uint64_t sub_1004CE724()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000F24EC(&qword_100ADE620);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v29 - v7;
  v8 = sub_1000F24EC(&qword_100AF1550);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!v15)
  {
    return 0;
  }

  v30 = v11;
  v31 = v4;
  v16 = v12;
  swift_allocObject();
  v34 = ObjectType;
  swift_unknownObjectWeakInit();
  type metadata accessor for JournalEntryCollectionViewCell();
  sub_1000065A8(0, &qword_100AD43F0);
  v17 = v15;
  v32 = v14;
  v33 = v17;
  UICollectionView.CellRegistration.init(handler:)();
  sub_1000065A8(0, &qword_100ADE560);
  v18 = v36;
  UICollectionView.CellRegistration.init(handler:)();
  v19 = *(v16 + 16);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v30;
  v19(v29, v14, v30);
  v21 = v31;
  v22 = v35;
  (*(v31 + 16))(v35, v18, v3);
  v23 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v24 = (v9 + *(v21 + 80) + v23) & ~*(v21 + 80);
  v25 = swift_allocObject();
  (*(v16 + 32))(v25 + v23, v29, v20);
  (*(v21 + 32))(v25 + v24, v22, v3);
  *(v25 + ((v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v26 = objc_allocWithZone(sub_1000F24EC(&unk_100AD7CC0));
  v27 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  (*(v21 + 8))(v36, v3);
  (*(v16 + 8))(v32, v20);
  return v27;
}

void sub_1004CEB04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext) objectWithID:v4];
    type metadata accessor for JournalEntryMO();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      v11 = [v9 managedObjectContext];
      if (!v11)
      {
        v11 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      type metadata accessor for EntryViewModel();
      swift_allocObject();
      sub_100035ADC(v9, 0, 0, v11);
      v12 = [v6 view];
      if (v12)
      {
        v13 = v12;
        [v12 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v25.origin.x = v15;
        v25.origin.y = v17;
        v25.size.width = v19;
        v25.size.height = v21;
        Height = CGRectGetHeight(v25);
        v23 = a1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_maxCellHeight;
        *v23 = Height * 0.6;
        *(v23 + 8) = 0;
        *(a1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate + 8) = &off_100A66DF8;
        swift_unknownObjectWeakAssign();

        sub_10005A9EC(v24);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1004CED0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100165F48(a3, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v15 = *v6;
    v7 = v15;
    type metadata accessor for JournalEntryCollectionViewCell();
    sub_1000065A8(0, &qword_100AD43F0);
    v8 = v7;
    v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    if (qword_100ACFBF8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000617C(v10, qword_100B2F718);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "EntryMapEntriesViewController - Unhandled cell type", v13, 2u);
    }

    v15 = xmmword_100943C10;
    sub_1000065A8(0, &qword_100ADE560);
    v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_100165FAC(v6);
  }

  return v9;
}

uint64_t sub_1004CEF34(char a1)
{
  if ((a1 & 1) == 0)
  {
    return UIViewController.contentUnavailableConfiguration.setter();
  }

  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 == 1)
  {
    return sub_1004CF010();
  }

  else
  {
    return sub_1004CF31C();
  }
}

uint64_t sub_1004CF010()
{
  v1 = v0;
  v2 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for UIContentUnavailableConfiguration();
  v5 = swift_allocBox();
  static UIContentUnavailableConfiguration.empty()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.secondaryText.setter();
  v6 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
  *(v7 + 8) = 0x4034000000000000;
  v6(aBlock, 0);
  v8 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
  *(v9 + 24) = 0x4034000000000000;
  v8(aBlock, 0);
  static UIBackgroundConfiguration.clear()();
  UIContentUnavailableConfiguration.background.setter();
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v5;
  aBlock[4] = sub_1004CFEA4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A70058;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  [v10 animateWithDuration:0 delay:v12 options:0 animations:0.44 completion:0.0];
  _Block_release(v12);
}

uint64_t sub_1004CF31C()
{
  v1 = v0;
  v2 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for UIContentUnavailableConfiguration();
  v5 = swift_allocBox();
  static UIContentUnavailableConfiguration.loading()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  v6 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
  *(v7 + 8) = 0x4034000000000000;
  v6(aBlock, 0);
  v8 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
  *(v9 + 24) = 0x4034000000000000;
  v8(aBlock, 0);
  static UIBackgroundConfiguration.clear()();
  UIContentUnavailableConfiguration.background.setter();
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v5;
  aBlock[4] = sub_1004CFE80;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A70008;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  [v10 animateWithDuration:0 delay:v12 options:0 animations:0.44 completion:0.0];
  _Block_release(v12);
}

uint64_t sub_1004CF5C8()
{
  v0 = type metadata accessor for UIContentUnavailableConfiguration();
  v1 = swift_projectBox();
  swift_beginAccess();
  v4[3] = v0;
  v4[4] = &protocol witness table for UIContentUnavailableConfiguration;
  v2 = sub_10001A770(v4);
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t sub_1004CF670(unint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_1000F24EC(&unk_100AD4780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941D50;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() systemImageNamed:v5];

  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  sub_1000065A8(0, &qword_100AD4420);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  *(v4 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v9 = sub_1005F9B54(a1, v4);

  return v9;
}

id sub_1004CF920(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController____lazy_storage___model] = 0;
  *&v1[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryMapEntriesDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entriesViewType] = 1;
  *&v1[OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryIds] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EntryMapEntriesViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1004CF9F4()
{

  sub_100038534(v0 + OBJC_IVAR____TtC7Journal29EntryMapEntriesViewController_entryMapEntriesDelegate);
}

id sub_1004CFA44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryMapEntriesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EntryMapEntriesViewController()
{
  result = qword_100AE62A0;
  if (!qword_100AE62A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004CFB98()
{
  result = qword_100AE62B0;
  if (!qword_100AE62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE62B0);
  }

  return result;
}

void sub_1004CFBF4(void *a1)
{
  if (qword_100ACFBF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100B2F718);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Empty cell dequeued in EntryMapEntriesViewController! This should not happen. Please debug me.", v5, 2u);
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [a1 heightAnchor];
  v7 = [v6 constraintEqualToConstant:0.0];

  [v7 setActive:1];
}

uint64_t sub_1004CFD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100AF1550);
  sub_1000F24EC(&qword_100ADE620);

  return sub_1004CED0C(a1, a2, a3);
}

uint64_t sub_1004CFEEC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Duration.TimeFormatStyle();
  __chkstk_darwin(v6);
  sub_1005F02FC();
  v30 = static Duration.seconds(_:)();
  v31 = v7;
  static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
  static FormatStyle<>.time(pattern:)();
  (*(v3 + 8))(v5, v2);
  sub_10043C588();
  v8 = Text.init<A>(_:format:)();
  v10 = v9;
  LOBYTE(v5) = v11;
  static Font.subheadline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  sub_1000594D0(v8, v10, v5 & 1);

  LODWORD(v30) = static HierarchicalShapeStyle.secondary.getter();
  v17 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  LOBYTE(v5) = v20;
  v22 = v21;
  sub_1000594D0(v12, v14, v16 & 1);

  v23 = static Edge.Set.top.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  *(a1 + 48) = v26;
  *(a1 + 56) = v27;
  *(a1 + 64) = v28;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1004D0168@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title3.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_1000594D0(v2, v4, v6 & 1);

  static HierarchicalShapeStyle.tertiary.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1000594D0(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_1004D02C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_1000F24EC(&unk_100AD5B30);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for MultiPinMapAssetMetadata();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[14] = v8;
  v4[15] = v10;

  return _swift_task_switch(sub_1004D0458, v8, v10);
}

uint64_t sub_1004D0458()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC7Journal5Asset_context);
  v0[16] = v1;
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v5 = swift_allocObject();
    v0[17] = v5;
    swift_unknownObjectWeakInit();
    (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
    v1;
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1004D079C;
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v9, sub_1004D1D38, v5, v8);
  }

  else
  {
    (*(v0[12] + 56))(v0[10], 1, 1, v0[11]);
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[10];
    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      sub_1004D1274(v12);
      sub_1004D12DC();
      swift_allocError();
      *v13 = 2;
      swift_willThrow();

      v14 = v0[1];

      return v14();
    }

    else
    {
      (*(v11 + 32))(v0[13], v12, v10);
      v15 = sub_1004D0D7C();
      sub_10031BCE4(v15, v16, 0xD000000000000015, 0x80000001008F7680, 0xD000000000000020, 0x80000001008F76A0);
      v0[19] = v17;

      v18 = swift_task_alloc();
      v0[20] = v18;
      *v18 = v0;
      v18[1] = sub_1004D0AF0;
      v19 = v0[4];
      v21 = v0[2];
      v20 = v0[3];

      return sub_100847498(v21, v20, v19, 0, 0, 0, 0, 0);
    }
  }
}

uint64_t sub_1004D079C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    (*(v2[7] + 8))(v2[8], v2[6]);

    v5 = v2[14];
    v6 = v2[15];

    return _swift_task_switch(sub_1004D08F0, v5, v6);
  }
}

uint64_t sub_1004D08F0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1004D1274(v3);
    sub_1004D12DC();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v7 = sub_1004D0D7C();
    sub_10031BCE4(v7, v8, 0xD000000000000015, 0x80000001008F7680, 0xD000000000000020, 0x80000001008F76A0);
    v0[19] = v9;

    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_1004D0AF0;
    v11 = v0[4];
    v13 = v0[2];
    v12 = v0[3];

    return sub_100847498(v13, v12, v11, 0, 0, 0, 0, 0);
  }
}

uint64_t sub_1004D0AF0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v7 = v6[14];
    v8 = v6[15];
    v9 = sub_1004D0CE0;
  }

  else
  {
    v6[22] = a2;
    v6[23] = a1;
    v7 = v6[14];
    v8 = v6[15];
    v9 = sub_1004D0C40;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1004D0C40()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];
  v3 = v0[22];
  v2 = v0[23];

  return v1(v2, v3);
}

uint64_t sub_1004D0CE0()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004D0D7C()
{
  v0 = type metadata accessor for VisitAssetMetadata();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MultiPinMapAssetMetadata.visitsData.getter();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = sub_1000782E4(v6);
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    if (v5)
    {
      if (*(v5 + 16))
      {
        (*(v1 + 16))(v3, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

        v7 = VisitAssetMetadata.city.getter();
        (*(v1 + 8))(v3, v0);
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

uint64_t sub_1004D0F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_10031AED0;

  return sub_1004D02C0(a1, a2, a3);
}

double sub_1004D0FC0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for MultiPinMapAssetMetadata();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - v12;
  if (*(v1 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {

    sub_1000768B4(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v13, v5, v6);
      (*(v7 + 16))(v9, v13, v6);
      v14 = sub_1004D19C8(v9);
      *(a1 + 24) = &_s6ResultVN_1;
      *(a1 + 32) = sub_1004D1D54();
      *(a1 + 40) = sub_1004D1DA8();
      *a1 = v14;
      (*(v7 + 8))(v13, v6);
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v11);
  }

  sub_1004D1274(v5);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

unint64_t sub_1004D11F4(uint64_t a1)
{
  result = sub_1004D121C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004D121C()
{
  result = qword_100AE62B8;
  if (!qword_100AE62B8)
  {
    type metadata accessor for MultiPinMapAsset();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE62B8);
  }

  return result;
}

uint64_t sub_1004D1274(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD5B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004D12DC()
{
  result = qword_100AE62C0;
  if (!qword_100AE62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE62C0);
  }

  return result;
}

uint64_t sub_1004D1330(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AE6328);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_1004D2798();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004D1518()
{
  v1 = *v0;
  v2 = 0x6D614E6563616C70;
  v3 = 0x6C50664F65707974;
  v4 = 0x656475746974616CLL;
  if (v1 != 3)
  {
    v4 = 0x64757469676E6F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2037672291;
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

uint64_t sub_1004D15B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004D1F04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004D15DC(uint64_t a1)
{
  v2 = sub_1004D2798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004D1618(uint64_t a1)
{
  v2 = sub_1004D2798();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1004D1654@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1004D20C8(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1004D16E4(void *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE6300);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000CA14(a1, a1[3]);
  sub_1004D2624();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000F24EC(&qword_100AE62E8);
  sub_1004D26CC(&qword_100AE6308, sub_1004D2744);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1004D1884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737469736976 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1004D1908(uint64_t a1)
{
  v2 = sub_1004D2624();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004D1944(uint64_t a1)
{
  v2 = sub_1004D2624();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004D1980@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1004D2470(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double *sub_1004D19C8(uint64_t a1)
{
  v45 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v38 - v6;
  v7 = MultiPinMapAssetMetadata.visitsData.getter();
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v39 = a1;
      v57 = _swiftEmptyArrayStorage;
      v9 = v7;
      sub_100199C94(0, v8, 0);
      v10 = v57;
      v42 = *(v2 + 16);
      v43 = v2 + 16;
      v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v38 = v9;
      v12 = v9 + v11;
      v40 = *(v2 + 72);
      v41 = (v2 + 8);
      v52 = v8 - 1;
      while (1)
      {
        v14 = v44;
        v13 = v45;
        v46 = v12;
        v15 = v42;
        (v42)(v44);
        v15(v4, v14, v13);
        v16 = VisitAssetMetadata.placeName.getter();
        v50 = v17;
        v51 = v16;
        v18 = VisitAssetMetadata.city.getter();
        v48 = v19;
        v49 = v18;
        v47 = VisitAssetMetadata.typeOfPlace.getter();
        v21 = v20;
        v22 = VisitAssetMetadata.latitude.getter();
        v55 = v23 & 1;
        v24 = VisitAssetMetadata.longitude.getter();
        v26 = v25;
        v27 = *v41;
        (*v41)(v4, v13);
        v27(v14, v13);
        v53 = v26 & 1;
        v28 = v55;
        v56[0] = *v54;
        *(v56 + 3) = *&v54[3];
        v57 = v10;
        v30 = *(v10 + 2);
        v29 = *(v10 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_100199C94((v29 > 1), v30 + 1, 1);
          v10 = v57;
        }

        *(v10 + 2) = v30 + 1;
        v31 = &v10[10 * v30];
        v32 = v50;
        *(v31 + 4) = v51;
        *(v31 + 5) = v32;
        v33 = v48;
        *(v31 + 6) = v49;
        *(v31 + 7) = v33;
        *(v31 + 8) = v47;
        *(v31 + 9) = v21;
        *(v31 + 10) = v22;
        *(v31 + 88) = v28;
        LODWORD(v33) = *(v56 + 3);
        *(v31 + 89) = v56[0];
        *(v31 + 23) = v33;
        *(v31 + 12) = v24;
        *(v31 + 104) = v26 & 1;
        if (!v52)
        {
          break;
        }

        --v52;
        v12 = v46 + v40;
      }

      v34 = type metadata accessor for MultiPinMapAssetMetadata();
      (*(*(v34 - 8) + 8))(v39, v34);
    }

    else
    {

      v36 = type metadata accessor for MultiPinMapAssetMetadata();
      (*(*(v36 - 8) + 8))(a1, v36);
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v35 = type metadata accessor for MultiPinMapAssetMetadata();
    (*(*(v35 - 8) + 8))(a1, v35);
    return 0;
  }

  return v10;
}

unint64_t sub_1004D1D54()
{
  result = qword_100AE62C8;
  if (!qword_100AE62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE62C8);
  }

  return result;
}

unint64_t sub_1004D1DA8()
{
  result = qword_100AE62D0;
  if (!qword_100AE62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE62D0);
  }

  return result;
}

__n128 sub_1004D1DFC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004D1E20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
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

uint64_t sub_1004D1E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1004D1F04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C50664F65707974 && a2 == 0xEB00000000656361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1004D20C8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AE6318);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_1004D2798();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v10;
  LOBYTE(v35[0]) = 1;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v12;
  v27 = v11;
  LOBYTE(v35[0]) = 2;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v13;
  LOBYTE(v35[0]) = 3;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v14 & 1;
  v41 = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v8, v5);
  v17 &= 1u;
  v39 = v17;
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v19 = v29;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  v20 = v28;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  *v34 = v25;
  v21 = v40;
  v34[8] = v40;
  *&v34[16] = v18;
  v34[24] = v17;
  sub_1004D27EC(&v31, v35);
  sub_10000BA7C(a1);
  v35[0] = v9;
  v35[1] = v30;
  v35[2] = v27;
  v35[3] = v19;
  v35[4] = v26;
  v35[5] = v20;
  v35[6] = v25;
  v36 = v21;
  v37 = v18;
  v38 = v17;
  result = sub_1004D2824(v35);
  v23 = *v34;
  a2[2] = v33;
  a2[3] = v23;
  *(a2 + 57) = *&v34[9];
  v24 = v32;
  *a2 = v31;
  a2[1] = v24;
  return result;
}

void *sub_1004D2470(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AE62D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000CA14(a1, a1[3]);
  sub_1004D2624();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000BA7C(a1);
  }

  else
  {
    sub_1000F24EC(&qword_100AE62E8);
    sub_1004D26CC(&qword_100AE62F0, sub_1004D2678);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000BA7C(a1);
  }

  return v7;
}

unint64_t sub_1004D2624()
{
  result = qword_100AE62E0;
  if (!qword_100AE62E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE62E0);
  }

  return result;
}

unint64_t sub_1004D2678()
{
  result = qword_100AE62F8;
  if (!qword_100AE62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE62F8);
  }

  return result;
}

uint64_t sub_1004D26CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(&qword_100AE62E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004D2744()
{
  result = qword_100AE6310;
  if (!qword_100AE6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6310);
  }

  return result;
}

unint64_t sub_1004D2798()
{
  result = qword_100AE6320;
  if (!qword_100AE6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6320);
  }

  return result;
}

unint64_t sub_1004D2878()
{
  result = qword_100AE6330;
  if (!qword_100AE6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6330);
  }

  return result;
}

unint64_t sub_1004D28D0()
{
  result = qword_100AE6338;
  if (!qword_100AE6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6338);
  }

  return result;
}

unint64_t sub_1004D2928()
{
  result = qword_100AE6340;
  if (!qword_100AE6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6340);
  }

  return result;
}

unint64_t sub_1004D2980()
{
  result = qword_100AE6348;
  if (!qword_100AE6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6348);
  }

  return result;
}

unint64_t sub_1004D29D8()
{
  result = qword_100AE6350;
  if (!qword_100AE6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6350);
  }

  return result;
}

unint64_t sub_1004D2A30()
{
  result = qword_100AE6358;
  if (!qword_100AE6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6358);
  }

  return result;
}

uint64_t sub_1004D2A84()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE6360);
  v1 = sub_10000617C(v0, qword_100AE6360);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004D2B4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000F24EC(&qword_100AE64A0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004D2C24, v1, 0);
}

uint64_t sub_1004D2C24()
{
  v1 = v0[3];
  type metadata accessor for SiriSpeechRecognitionManager();
  swift_allocObject();
  v2 = sub_1006EEED4();
  v0[8] = v2;
  *(v1 + 112) = v2;

  v3 = sub_1004D7B0C(&qword_100AE64B8, type metadata accessor for SiriTranscriptionMethod);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1004D2D3C;
  v5 = v0[6];

  return sub_1006EB7F8(v5, v1, v3);
}

uint64_t sub_1004D2D3C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1004D2F30;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1004D2E64;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004D2E64()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  (*(v3 + 32))(v1, v0[6], v2);
  sub_1004D6468(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004D2F30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D2FA8()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for TranscriptionUpdate();
  v1[10] = swift_task_alloc();
  v2 = sub_1000F24EC(&qword_100ADA4E0);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64A8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64D0);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1004D312C, v0, 0);
}

uint64_t sub_1004D312C()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC7Journal23SiriTranscriptionMethod_transcriptionContinuation;
  v0[18] = OBJC_IVAR____TtC7Journal23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  sub_1004D7970(v4 + v5, v1);
  v6 = *(v3 + 48);
  v0[19] = v6;
  v0[20] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v2))
  {
    sub_100004F84(v0[16], &qword_100AE64A8);
    v7 = 1;
  }

  else
  {
    v8 = v0[16];
    v10 = v0[12];
    v9 = v0[13];
    v12 = v0[10];
    v11 = v0[11];
    (*(v10 + 16))(v9, v8, v11);
    sub_100004F84(v8, &qword_100AE64A8);
    *v12 = 1;
    swift_storeEnumTagMultiPayload();
    AsyncStream.Continuation.yield(_:)();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v13 = v0[17];
  v14 = v0[8];
  v15 = sub_1000F24EC(&qword_100AE64D8);
  (*(*(v15 - 8) + 56))(v13, v7, 1, v15);
  sub_100004F84(v13, &qword_100AE64D0);
  v16 = *(v14 + 112);
  v0[21] = v16;
  if (v16)
  {
    v17 = v0[8];
    sub_1004D7B0C(&qword_100AE64B8, type metadata accessor for SiriTranscriptionMethod);

    v18 = swift_task_alloc();
    v0[22] = v18;
    *v18 = v0;
    v18[1] = sub_1004D3534;

    return sub_1006ED158(v17);
  }

  else
  {
    v20 = v0[19];
    v21 = v0[18];
    v22 = v0[15];
    v23 = v0[11];
    v24 = v0[8];
    *(v24 + 112) = 0;
    sub_1004D7970(v24 + v21, v22);
    v25 = v20(v22, 1, v23);
    v26 = v0[15];
    if (v25)
    {
      sub_100004F84(v0[15], &qword_100AE64A8);
    }

    else
    {
      v28 = v0[12];
      v27 = v0[13];
      v29 = v0[11];
      (*(v28 + 16))(v27, v0[15], v29);
      sub_100004F84(v26, &qword_100AE64A8);
      AsyncStream.Continuation.finish()();
      (*(v28 + 8))(v27, v29);
    }

    v30 = v0[18];
    v31 = v0[14];
    v32 = v0[8];
    (*(v0[12] + 56))(v31, 1, 1, v0[11]);
    swift_beginAccess();
    sub_1004D77FC(v31, v32 + v30);
    swift_endAccess();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1004D3534()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_1004D3820;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1004D365C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004D365C()
{
  v1 = v0[8];
  v2 = v0[19];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[11];
  *(v1 + 112) = 0;

  sub_1004D7970(v1 + v3, v4);
  v6 = v2(v4, 1, v5);
  v7 = v0[15];
  if (v6)
  {
    sub_100004F84(v0[15], &qword_100AE64A8);
  }

  else
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    (*(v9 + 16))(v8, v0[15], v10);
    sub_100004F84(v7, &qword_100AE64A8);
    AsyncStream.Continuation.finish()();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[8];
  (*(v0[12] + 56))(v12, 1, 1, v0[11]);
  swift_beginAccess();
  sub_1004D77FC(v12, v13 + v11);
  swift_endAccess();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1004D3820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004D38D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000F24EC(&qword_100AD5170);
  v3[5] = swift_task_alloc();
  v4 = sub_1000F24EC(&qword_100AE64B0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64E0);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for ClientInfo();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for AVAssetReaderSequence();
  v3[14] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AE64E8);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64F0);
  v3[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64F8);
  v3[20] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1350);
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for Locale();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004D3C30, v2, 0);
}

uint64_t sub_1004D3C30()
{
  *(v0 + 216) = type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004D3CC8, v2, v1);
}

uint64_t sub_1004D3CC8()
{

  if (qword_100AD0A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);

  return _swift_task_switch(sub_1004D3D60, v1, 0);
}

uint64_t sub_1004D3D60()
{
  *(v0 + 232) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004D3DEC, v2, v1);
}

uint64_t sub_1004D3DEC()
{
  v1 = *(v0 + 32);

  *(v0 + 240) = qword_100B31070;

  return _swift_task_switch(sub_1004D3E64, v1, 0);
}

uint64_t sub_1004D3E64()
{
  v49 = v0;
  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  sub_1000A6318(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v0[21], &qword_100AD1350);
LABEL_4:
    static Locale.autoupdatingCurrent.getter();
    goto LABEL_6;
  }

  (*(v0[23] + 32))(v0[26], v0[21], v0[22]);
LABEL_6:
  type metadata accessor for SiriSpeechRecognitionManager();
  swift_allocObject();
  v0[31] = sub_1006EEED4();
  if (qword_100ACFE60 != -1)
  {
    swift_once();
  }

  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  v8 = type metadata accessor for Logger();
  sub_10000617C(v8, qword_100AE6360);
  v9 = *(v7 + 16);
  v9(v4, v5, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[25];
  v15 = v0[22];
  v14 = v0[23];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v16 = 136315138;
    sub_1004D7B0C(&qword_100ADA558, &type metadata accessor for Locale);
    v46 = v11;
    v17 = v9;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = v18;
    v9 = v17;
    v22 = sub_100008458(v21, v20, &v48);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v10, v46, "Will transcribe using locale: %s", v16, 0xCu);
    sub_10000BA7C(v47);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v24 = v0[19];
  v23 = v0[20];
  v9(v0[24], v0[26], v0[22]);
  v25 = enum case for TaskHint.offlineTranscription(_:);
  v26 = type metadata accessor for TaskHint();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v23, v25, v26);
  (*(v27 + 56))(v23, 0, 1, v26);
  v28 = type metadata accessor for Transcriber.ModelOptions();
  (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
  sub_1006EF004();
  sub_1000F24EC(&qword_100AE6500);
  v29 = type metadata accessor for Transcriber.ReportingOption();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100940080;
  (*(v30 + 104))(v32 + v31, enum case for Transcriber.ReportingOption.multisegmentResults(_:), v29);
  sub_100496714(v32);
  swift_setDeallocating();
  (*(v30 + 8))(v32 + v31, v29);
  swift_deallocClassInstance();
  sub_1000F24EC(&qword_100AE6508);
  v33 = type metadata accessor for TranscriptionResultAttributeOption();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100940080;
  (*(v34 + 104))(v36 + v35, enum case for TranscriptionResultAttributeOption.audioTimeRange(_:), v33);
  sub_100496A34(v36);
  swift_setDeallocating();
  (*(v34 + 8))(v36 + v35, v33);
  swift_deallocClassInstance();
  type metadata accessor for Transcriber();
  swift_allocObject();
  v37 = Transcriber.init(locale:taskHint:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  v0[32] = v37;
  v38 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v39);
  v41 = v40;
  v0[33] = [v38 initWithURL:v40 options:0];

  v0[34] = type metadata accessor for SpeechAnalyzer();
  v0[35] = sub_1000F24EC(&qword_100AE6510);
  v42 = swift_allocObject();
  v0[36] = v42;
  *(v42 + 16) = xmmword_100940080;
  v43 = sub_1004D7B0C(&qword_100AE6518, &type metadata accessor for Transcriber);
  v0[37] = v43;
  *(v42 + 32) = v37;
  *(v42 + 40) = v43;

  v44 = swift_task_alloc();
  v0[38] = v44;
  *v44 = v0;
  v44[1] = sub_1004D456C;

  return static SpeechAnalyzer.bestAudioFormat(compatibleWith:)(v42);
}

uint64_t sub_1004D456C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_1004D4F64;
  }

  else
  {
    v6 = sub_1004D46BC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004D46BC()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[4];
  v4 = sub_1004D7B0C(&qword_100AE64B8, type metadata accessor for SiriTranscriptionMethod);
  v0[41] = v4;
  v5 = v2;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_1004D47C8;
  v8 = v0[39];
  v9 = v0[33];
  v10 = v0[14];

  return AVAssetReaderSequence.init(asset:audioFormat:)(v10, v3, v4, v9, v8);
}

uint64_t sub_1004D47C8()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1004D50AC;
  }

  else
  {
    v4 = sub_1004D48F4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004D48F4()
{
  v16 = v0[37];
  v17 = v0[39];
  v1 = v0[31];
  v14 = v0[32];
  v2 = v0[18];
  v3 = v0[16];
  v12 = v0[15];
  v13 = v0[17];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  v15 = v0[9];
  type metadata accessor for AnalyzerInput();
  sub_1004D7B0C(&qword_100AE6520, &type metadata accessor for AVAssetReaderSequence);
  AsyncMapSequence.init(_:transform:)();
  (*(v4 + 16))(v5, v1 + OBJC_IVAR____TtC7Journal28SiriSpeechRecognitionManager_clientInfo, v6);
  (*(v3 + 16))(v13, v2, v12);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100940080;
  *(v7 + 32) = v14;
  *(v7 + 40) = v16;
  v8 = type metadata accessor for AnalysisOptions();
  (*(*(v8 - 8) + 56))(v15, 1, 1, v8);
  type metadata accessor for AnalysisContext();
  swift_allocObject();

  v9 = v17;
  AnalysisContext.init()();
  sub_1004D79E0();
  v0[44] = SpeechAnalyzer.__allocating_init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:volatileRangeChangedHandler:)();
  v10 = swift_task_alloc();
  v0[45] = v10;
  *v10 = v0;
  v10[1] = sub_1004D4B78;

  return SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()();
}

uint64_t sub_1004D4B78()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1004D51FC;
  }

  else
  {
    v4 = sub_1004D4CA4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004D4CA4()
{
  v12 = v0[41];
  v14 = v0[39];
  v1 = v0[32];
  v19 = v0[26];
  v16 = v0[33];
  v17 = v0[23];
  v18 = v0[22];
  v15 = v0[18];
  v2 = v0[16];
  v13 = v0[15];
  v3 = v0[8];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  type metadata accessor for TranscriptionUpdate();
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v12;
  v9[4] = v7;
  v9[5] = v1;
  swift_retain_n();

  sub_1004EC158(0, 0, v6, &unk_100959770, v9);

  (*(v2 + 8))(v15, v13);
  (*(v17 + 8))(v19, v18);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004D4F64()
{
  v1 = v0[33];

  (*(v0[23] + 8))(v0[26], v0[22]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1004D50AC()
{
  v1 = v0[39];
  v2 = v0[33];

  (*(v0[23] + 8))(v0[26], v0[22]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004D51FC()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];

  (*(v5 + 8))(v3, v4);
  (*(v0[23] + 8))(v0[26], v0[22]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004D5378(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1004D539C, 0, 0);
}

uint64_t sub_1004D539C()
{
  v1 = *(v0 + 24);
  AnalyzerInput.init(buffer:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004D5404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE64A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1000F24EC(&qword_100ADA4E0);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC7Journal23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  sub_1004D77FC(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_1004D553C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v7 = type metadata accessor for Transcriber.MultisegmentResult();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64C0);
  v5[11] = swift_task_alloc();
  v5[12] = sub_1000F24EC(&qword_100AE6530);
  v5[13] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AE6538);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for TranscriptionUpdate();
  v5[18] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100ADA4E0);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64A8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64D0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1004D5814, a4, 0);
}

uint64_t sub_1004D5814()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC7Journal23SiriTranscriptionMethod_transcriptionContinuation;
  v0[28] = OBJC_IVAR____TtC7Journal23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  sub_1004D7970(v4 + v5, v1);
  v6 = *(v3 + 48);
  v0[29] = v6;
  v0[30] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v2))
  {
    sub_100004F84(v0[24], &qword_100AE64A8);
    v7 = 1;
  }

  else
  {
    v8 = v0[24];
    v10 = v0[20];
    v9 = v0[21];
    v12 = v0[18];
    v11 = v0[19];
    (*(v10 + 16))(v9, v8, v11);
    sub_100004F84(v8, &qword_100AE64A8);
    *v12 = 0;
    swift_storeEnumTagMultiPayload();
    AsyncStream.Continuation.yield(_:)();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v13 = v0[27];
  v14 = sub_1000F24EC(&qword_100AE64D8);
  (*(*(v14 - 8) + 56))(v13, v7, 1, v14);
  sub_100004F84(v13, &qword_100AE64D0);
  Transcriber.multisegmentResults.getter();
  v0[31] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v15 = sub_1004D7B0C(&qword_100AE64B8, type metadata accessor for SiriTranscriptionMethod);
  v0[32] = v15;
  v16 = v0[6];
  swift_getAssociatedConformanceWitness();
  v17 = swift_task_alloc();
  v0[33] = v17;
  *v17 = v0;
  v17[1] = sub_1004D5B04;
  v18 = v0[11];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v18, v16, v15);
}

uint64_t sub_1004D5B04()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1004D634C;
  }

  else
  {
    v4 = sub_1004D5C18;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004D5C18()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[29];
  v6 = v0[28];
  v7 = v0[19];
  if (v4 == 1)
  {
    v8 = v0[23];
    v9 = v0[6];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_1004D7970(v9 + v6, v8);
    if (v5(v8, 1, v7))
    {
      sub_100004F84(v0[23], &qword_100AE64A8);
      v10 = 1;
    }

    else
    {
      v15 = v0[23];
      v17 = v0[20];
      v16 = v0[21];
      v19 = v0[18];
      v18 = v0[19];
      (*(v17 + 16))(v16, v15, v18);
      sub_100004F84(v15, &qword_100AE64A8);
      *v19 = 1;
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v17 + 8))(v16, v18);
      v10 = 0;
    }

    v20 = v0[26];
    v21 = sub_1000F24EC(&qword_100AE64D8);
    (*(*(v21 - 8) + 56))(v20, v10, 1, v21);
    sub_100004F84(v20, &qword_100AE64D0);
    v22 = swift_task_alloc();
    v0[34] = v22;
    *v22 = v0;
    v22[1] = sub_1004D60D4;

    return sub_1004D2FA8();
  }

  else
  {
    v11 = v0[22];
    v12 = v0[6];
    (*(v3 + 32))(v0[10], v1, v2);
    sub_1004D7970(v12 + v6, v11);
    if (v5(v11, 1, v7))
    {
      v13 = v0[22];
      (*(v0[9] + 8))(v0[10], v0[8]);
      sub_100004F84(v13, &qword_100AE64A8);
      v14 = 1;
    }

    else
    {
      v25 = v0[21];
      v24 = v0[22];
      v26 = v0[19];
      v27 = v0[20];
      v28 = v0[18];
      v29 = v0[9];
      v30 = v0[10];
      v31 = v0[8];
      (*(v27 + 16))(v25, v24, v26);
      sub_100004F84(v24, &qword_100AE64A8);
      (*(v29 + 16))(v28, v30, v31);
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v27 + 8))(v25, v26);
      (*(v29 + 8))(v30, v31);
      v14 = 0;
    }

    v32 = v0[25];
    v33 = sub_1000F24EC(&qword_100AE64D8);
    (*(*(v33 - 8) + 56))(v32, v14, 1, v33);
    sub_100004F84(v32, &qword_100AE64D0);
    v34 = v0[32];
    v35 = v0[6];
    swift_getAssociatedConformanceWitness();
    v36 = swift_task_alloc();
    v0[33] = v36;
    *v36 = v0;
    v36[1] = sub_1004D5B04;
    v37 = v0[11];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v37, v35, v34);
  }
}

uint64_t sub_1004D60D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004D634C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004D6468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v36 = a1;
  v40 = sub_1000F24EC(&qword_100AE64A0);
  v4 = *(v40 - 8);
  v38 = *(v4 + 64);
  __chkstk_darwin(v40);
  v39 = &v34 - v5;
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v37 = &v34 - v7;
  v8 = sub_1000F24EC(&qword_100AE64A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1000F24EC(&qword_100AE64B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v15 = sub_1000F24EC(&qword_100ADA4E0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - v17;
  type metadata accessor for TranscriptionUpdate();
  (*(v12 + 104))(v14, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v11);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v12 + 8))(v14, v11);
  (*(v16 + 16))(v10, v18, v15);
  v19 = *(v16 + 56);
  v35 = v15;
  v19(v10, 0, 1, v15);
  v20 = OBJC_IVAR____TtC7Journal23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  v21 = v3;
  sub_1004D77FC(v10, v3 + v20);
  swift_endAccess();
  if (qword_100ACFE60 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000617C(v22, qword_100AE6360);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Recognition stream task started", v25, 2u);
  }

  v26 = type metadata accessor for TaskPriority();
  v27 = v37;
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  v29 = v39;
  v28 = v40;
  (*(v4 + 16))(v39, v36, v40);
  v30 = sub_1004D7B0C(&qword_100AE64B8, type metadata accessor for SiriTranscriptionMethod);
  v31 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = v21;
  *(v32 + 3) = v30;
  *(v32 + 4) = v21;
  (*(v4 + 32))(&v32[v31], v29, v28);
  swift_retain_n();
  sub_1003E9628(0, 0, v27, &unk_100959708, v32);

  return (*(v16 + 8))(v18, v35);
}

uint64_t sub_1004D69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = type metadata accessor for Transcriber.MultisegmentResult();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64C0);
  v5[10] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AE64C8);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for TranscriptionUpdate();
  v5[15] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100ADA4E0);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64A8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE64D0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004D6C50, a4, 0);
}

uint64_t sub_1004D6C50()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC7Journal23SiriTranscriptionMethod_transcriptionContinuation;
  v0[26] = OBJC_IVAR____TtC7Journal23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  sub_1004D7970(v4 + v5, v1);
  v6 = *(v3 + 48);
  v0[27] = v6;
  v0[28] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v2))
  {
    sub_100004F84(v0[22], &qword_100AE64A8);
    v7 = 1;
  }

  else
  {
    v8 = v0[22];
    v10 = v0[17];
    v9 = v0[18];
    v12 = v0[15];
    v11 = v0[16];
    (*(v10 + 16))(v9, v8, v11);
    sub_100004F84(v8, &qword_100AE64A8);
    *v12 = 0;
    swift_storeEnumTagMultiPayload();
    AsyncStream.Continuation.yield(_:)();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v13 = v0[25];
  v14 = sub_1000F24EC(&qword_100AE64D8);
  (*(*(v14 - 8) + 56))(v13, v7, 1, v14);
  sub_100004F84(v13, &qword_100AE64D0);
  sub_1000F24EC(&qword_100AE64A0);
  AsyncStream.makeAsyncIterator()();
  v15 = sub_1004D7B0C(&qword_100AE64B8, type metadata accessor for SiriTranscriptionMethod);
  v0[29] = v15;
  v16 = v0[5];
  v17 = swift_task_alloc();
  v0[30] = v17;
  *v17 = v0;
  v17[1] = sub_1004D6EEC;
  v18 = v0[10];
  v19 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v18, v16, v15, v19);
}

uint64_t sub_1004D6EEC()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1004D6FFC, v1, 0);
}

uint64_t sub_1004D6FFC()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[27];
  v6 = v0[26];
  v7 = v0[16];
  if (v4 == 1)
  {
    v8 = v0[21];
    v9 = v0[5];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_1004D7970(v9 + v6, v8);
    if (v5(v8, 1, v7))
    {
      sub_100004F84(v0[21], &qword_100AE64A8);
      v10 = 1;
    }

    else
    {
      v15 = v0[21];
      v17 = v0[17];
      v16 = v0[18];
      v19 = v0[15];
      v18 = v0[16];
      (*(v17 + 16))(v16, v15, v18);
      sub_100004F84(v15, &qword_100AE64A8);
      *v19 = 1;
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v17 + 8))(v16, v18);
      v10 = 0;
    }

    v20 = v0[27];
    v21 = v0[26];
    v22 = v0[24];
    v23 = v0[19];
    v24 = v0[16];
    v25 = v0[5];
    v26 = sub_1000F24EC(&qword_100AE64D8);
    (*(*(v26 - 8) + 56))(v22, v10, 1, v26);
    sub_100004F84(v22, &qword_100AE64D0);
    sub_1004D7970(v25 + v21, v23);
    v27 = v20(v23, 1, v24);
    v28 = v0[19];
    if (v27)
    {
      sub_100004F84(v0[19], &qword_100AE64A8);
    }

    else
    {
      v45 = v0[17];
      v44 = v0[18];
      v46 = v0[16];
      (*(v45 + 16))(v44, v0[19], v46);
      sub_100004F84(v28, &qword_100AE64A8);
      AsyncStream.Continuation.finish()();
      (*(v45 + 8))(v44, v46);
    }

    if (qword_100ACFE60 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000617C(v47, qword_100AE6360);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Recognition stream task completed", v50, 2u);
    }

    v51 = v0[1];

    return v51();
  }

  else
  {
    v11 = v0[20];
    v12 = v0[5];
    (*(v3 + 32))(v0[9], v1, v2);
    sub_1004D7970(v12 + v6, v11);
    if (v5(v11, 1, v7))
    {
      v13 = v0[20];
      (*(v0[8] + 8))(v0[9], v0[7]);
      sub_100004F84(v13, &qword_100AE64A8);
      v14 = 1;
    }

    else
    {
      v29 = v0[20];
      v31 = v0[17];
      v30 = v0[18];
      v33 = v0[15];
      v32 = v0[16];
      v34 = v0[8];
      v35 = v0[9];
      v36 = v0[7];
      (*(v31 + 16))(v30, v29, v32);
      sub_100004F84(v29, &qword_100AE64A8);
      (*(v34 + 16))(v33, v35, v36);
      swift_storeEnumTagMultiPayload();
      AsyncStream.Continuation.yield(_:)();
      (*(v31 + 8))(v30, v32);
      (*(v34 + 8))(v35, v36);
      v14 = 0;
    }

    v37 = v0[23];
    v38 = sub_1000F24EC(&qword_100AE64D8);
    (*(*(v38 - 8) + 56))(v37, v14, 1, v38);
    sub_100004F84(v37, &qword_100AE64D0);
    v39 = v0[29];
    v40 = v0[5];
    v41 = swift_task_alloc();
    v0[30] = v41;
    *v41 = v0;
    v41[1] = sub_1004D6EEC;
    v42 = v0[10];
    v43 = v0[11];

    return AsyncStream.Iterator.next(isolation:)(v42, v40, v39, v43);
  }
}

uint64_t sub_1004D7648()
{

  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal23SiriTranscriptionMethod_transcriptionContinuation, &qword_100AE64A8);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SiriTranscriptionMethod()
{
  result = qword_100AE63A8;
  if (!qword_100AE63A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D76F4()
{
  sub_1004D7798();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004D7798()
{
  if (!qword_100AE63B8)
  {
    sub_1000F2A18(&qword_100ADA4E0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE63B8);
    }
  }
}

uint64_t sub_1004D77FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE64A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D786C(uint64_t a1)
{
  v4 = *(sub_1000F24EC(&qword_100AE64A0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_1004D69A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004D7970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE64A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004D79E0()
{
  result = qword_100AE6528;
  if (!qword_100AE6528)
  {
    sub_1000F2A18(&qword_100AE64E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6528);
  }

  return result;
}

uint64_t sub_1004D7A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1004D553C(a1, v4, v5, v7, v6);
}

uint64_t sub_1004D7B0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004D7B54(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  sub_1000F24EC(&qword_100AE6698);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v8(v9, a5, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1004D7C10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006A84(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_1004D7CBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10024057C(v1, v2);
}

uint64_t sub_1004D7CFC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE6540);
  v1 = sub_10000617C(v0, qword_100AE6540);
  if (qword_100AD01D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30028);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004D7DC4()
{
  v0 = type metadata accessor for UUID();
  sub_100006118(v0, qword_100AE6558);
  sub_10000617C(v0, qword_100AE6558);
  return UUID.init()();
}

uint64_t sub_1004D7E10()
{
  v2 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl);

  result = [v4 currentPage];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v3 >> 62;
    if (!(v3 >> 62))
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v19 = result;
  v6 = _CocoaArrayWrapper.endIndex.getter();
  result = v19;
LABEL_4:
  if (v6 >= result)
  {
    v7 = result;
  }

  else
  {
    v7 = v6;
  }

  if (v6 < 0)
  {
    v7 = result;
  }

  if (result)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < v8)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v1)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= v8)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_18;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < v8)
  {
    goto LABEL_38;
  }

LABEL_18:
  if (result < v6)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v6 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v3 & 0xC000000000000001) == 0 || v8 == v6)
  {

    goto LABEL_27;
  }

  if (v8 < v6)
  {
    type metadata accessor for Asset();

    v9 = v8;
    do
    {
      v10 = v9 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v9);
      v9 = v10;
    }

    while (v6 != v10);
LABEL_27:

    if (v1)
    {
      _CocoaArrayWrapper.subscript.getter();
      v11 = v15;
      v8 = v16;
      v18 = v17;

      v18 = v18 >> 1;
      v12 = v8 < v18;
      if (v8 != v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v11 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
      v12 = v8 < v6;
      if (v8 != v6)
      {
LABEL_29:
        if (!v12)
        {
          goto LABEL_42;
        }

        v13 = *(v11 + 8 * v8);
        v14 = v13;
LABEL_34:
        swift_unknownObjectRelease();
        return v13;
      }
    }

    v13 = 0;
    goto LABEL_34;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

objc_class *sub_1004D8008()
{
  v1 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___removeButton;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___removeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___removeButton);
  }

  else
  {
    v4 = v0;
    sub_1000065A8(0, &qword_100AD4420);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = v5;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1000065A8(0, &qword_100AD43B0);
    v7 = v6;
    v16.value.super.super.isa = v6;
    v16.is_nil = 0;
    v8.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemTrash, v16, v17).super.super.isa;
    v9 = qword_100AD0458;
    v10 = v8.super.super.isa;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = String._bridgeToObjectiveC()();
    [(objc_class *)v10 setAccessibilityLabel:v11, 0, 2, 0, sub_1004E5994, v15];

    v12 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_1004D81A4()
{
  v1 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___videoMuteButton;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___videoMuteButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___videoMuteButton);
  }

  else
  {
    v4 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:0 style:0 target:v0 action:"videoMuteButtonTapped:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

objc_class *sub_1004D8230()
{
  v1 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___closeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___closeButton);
  }

  else
  {
    sub_1000065A8(0, &qword_100AD4420);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v0;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1000065A8(0, &qword_100AD43B0);
    v7 = [objc_opt_self() mainBundle];
    v24._object = 0x80000001008F79D0;
    v8._countAndFlagsBits = 0x65736F6C43;
    v8._object = 0xE500000000000000;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000020;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v24);

    v11 = v6;
    v21.value.super.isa = 0;
    v21.is_nil = v6;
    v22.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v10, v21, v22, v23).super.super.isa;
    sub_1000F24EC(&unk_100AD9200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSForegroundColorAttributeName;
    v14 = objc_opt_self();
    v15 = NSForegroundColorAttributeName;
    v16 = [v14 systemIndigoColor];
    *(inited + 64) = sub_1000065A8(0, &qword_100AD4C70);
    *(inited + 40) = v16;
    sub_10007BDBC(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &unk_100AD9210);
    type metadata accessor for Key(0);
    sub_100006A84(&qword_100ADC650, type metadata accessor for Key);
    v17 = Dictionary._bridgeToObjectiveC()().super.isa;

    [(objc_class *)isa setTitleTextAttributes:v17 forState:0];

    v18 = *(v5 + v1);
    *(v5 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

void sub_1004D8534()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10080D688(v1, 0, 1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_1004D8610()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl);
  v7 = v5;
  [v6 currentPage];
  IndexPath.init(row:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v9 = [v7 cellForItemAtIndexPath:isa];

  if (!v9)
  {
    return 0;
  }

  v10 = [v9 contentView];

  return v10;
}

char *sub_1004D8774(uint64_t a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_assetLoadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_hasLoaded] = 0;
  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry] = 0;
  v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldSave] = 2;
  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView] = 0;
  v5 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_textExists;
  v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_textExists] = 0;
  v6 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl;
  *&v3[v6] = [objc_allocWithZone(UIPageControl) init];
  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___removeButton] = 0;
  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___videoMuteButton] = 0;
  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___closeButton] = 0;
  v7 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_trashAndOpenInContextMenuButton;
  *&v3[v7] = [objc_allocWithZone(UIBarButtonItem) init];
  v8 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_isMuted;
  v3[v8] = UIAccessibilityIsVideoAutoplayEnabled();
  v9 = String._bridgeToObjectiveC()();
  v10 = objc_opt_self();
  v11 = [v10 systemImageNamed:v9];

  if (v11)
  {
    v12 = [objc_opt_self() systemIndigoColor];
    v13 = [v11 imageWithTintColor:v12];
  }

  else
  {
    v13 = 0;
  }

  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_unmuteSymbol] = v13;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v10 systemImageNamed:v14];

  if (v15)
  {
    v16 = [objc_opt_self() systemIndigoColor];
    v17 = [v15 imageWithTintColor:v16];
  }

  else
  {
    v17 = 0;
  }

  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_muteSymbol] = v17;
  v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_didScrollToInitIndexPath] = 0;
  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_imageryIndexes] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset] = 0;
  v18 = &v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_currentMapPin];
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_didDeleteItemsObserver;
  v20 = type metadata accessor for NSNotificationCenter.ObservationToken();
  (*(*(v20 - 8) + 56))(&v3[v19], 1, 1, v20);
  v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden] = 0;
  v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_hasAppeared] = 0;
  v21 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_initIndexPath;
  v22 = type metadata accessor for IndexPath();
  v23 = *(v22 - 8);
  v24 = a1;
  (*(v23 + 16))(&v3[v21], a1, v22);
  *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets] = a2;
  v3[v5] = a3 & 1;
  v37.receiver = v3;
  v37.super_class = type metadata accessor for FullScreenLegacyCollectionViewController();
  v25 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
  sub_1004DBC88();
  sub_1004DC294();
  sub_1004DB854();
  sub_1004E0FD4();
  v26 = *&v25[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView];
  if (v26)
  {
    type metadata accessor for FullScreenLegacyCollectionViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = v26;
    v29 = String._bridgeToObjectiveC()();
    [v28 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v29];

    v30 = objc_opt_self();
    v31 = v28;
    v32 = [v30 clearColor];
    [v31 setBackgroundColor:v32];

    [v31 setDelegate:v25];
    [v31 setDataSource:v25];
    v33 = v31;
    [v33 setPagingEnabled:1];
    [v33 setShowsHorizontalScrollIndicator:0];
    [v33 setShowsVerticalScrollIndicator:0];
    [v33 setAlwaysBounceVertical:0];

    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  (*(v23 + 8))(v24, v22);
  return v25;
}

id sub_1004D8CFC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FullScreenLegacyCollectionViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for FullScreenLegacyCollectionViewController()
{
  result = qword_100AE6650;
  if (!qword_100AE6650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D8FC8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AE4340);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for FullScreenLegacyCollectionViewController();
  v45.receiver = v0;
  v45.super_class = v5;
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v6 = *&v0[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  [v8 setAccessibilityViewIsModal:1];

  v10 = [objc_allocWithZone(UINavigationBarAppearance) init];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 effectWithStyle:8];
  [v12 setBackgroundEffect:v13];

  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  [v12 setShadowColor:v15];

  v16 = [v1 navigationItem];
  v17 = v12;
  [v16 setScrollEdgeAppearance:v17];

  v18 = [v1 navigationItem];
  [v18 setCompactAppearance:v17];

  v19 = [v1 navigationItem];
  [v19 setStandardAppearance:v17];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = v20;
  v22 = [v14 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  [v23 addSubview:v7];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl;
  [v25 addSubview:*&v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl]];

  v28 = *&v1[v27];
  v29 = [v28 superview];
  if (v29)
  {
    v30 = v29;
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [v30 centerXAnchor];
    v32 = [v28 centerXAnchor];
    v33 = [v32 constraintEqualToAnchor:v31];

    [v33 setConstant:0.0];
    if (v33)
    {
      [v33 setActive:1];
    }
  }

  else
  {
    v33 = 0;
    v30 = v28;
  }

  v34 = *&v1[v27];
  v35 = sub_10031BD74(0, 0.0);

  sub_100013178(0.0);

  v36 = objc_opt_self();
  v37 = [v36 defaultCenter];
  [v37 addObserver:v1 selector:"handleAppWillMoveToBackground" name:UIApplicationWillResignActiveNotification object:0];

  v38 = [v36 defaultCenter];
  [v38 addObserver:v1 selector:"handleAppWillMoveToForeground" name:UIApplicationDidBecomeActiveNotification object:0];

  v39 = [v36 defaultCenter];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100356B90();
  NSNotificationCenter.addObserver<A>(of:for:using:)();

  v40 = type metadata accessor for NSNotificationCenter.ObservationToken();
  (*(*(v40 - 8) + 56))(v4, 0, 1, v40);
  v41 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_didDeleteItemsObserver;
  swift_beginAccess();
  sub_100439C1C(v4, &v1[v41]);
  swift_endAccess();
  [v7 reloadData];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004E5A48;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003264C;
  aBlock[3] = &unk_100A708B8;
  v43 = _Block_copy(aBlock);

  [v7 performBatchUpdates:0 completion:v43];
  _Block_release(v43);
}

uint64_t sub_1004D9628(_OWORD *a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 48) = *a1;
  return _swift_task_switch(sub_1004D9650, 0, 0);
}

uint64_t sub_1004D9650()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    v0[9] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1004D973C, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1004D973C()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];

  sub_1004DAE90(v3, v2);

  v4 = v0[1];

  return v4();
}

void sub_1004D97B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_hasLoaded) = 1;
    v2 = Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_loadingDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1004D98AC(char a1)
{
  v36.receiver = v1;
  v36.super_class = type metadata accessor for FullScreenLegacyCollectionViewController();
  objc_msgSendSuper2(&v36, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView];
  if (v3)
  {
    v28 = v1;
    v27 = v3;
    v4 = [v27 visibleCells];
    sub_1000065A8(0, &qword_100ADE560);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return;
        }

        v7 = 0;
        v29 = v6;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v9 = *(v5 + 8 * v7 + 32);
          }

          v10 = v9;
          type metadata accessor for FullScreenLivePhotoCollectionViewCell();
          v11 = swift_dynamicCastClass();
          if (v11)
          {
            v8 = *(v11 + qword_100B2F5A0);
            v12 = *(v11 + qword_100B2F5B0);
            v13 = v12 ^ 1;
            v8[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLiveSymbol] = v12 ^ 1;
            if ((v12 & 1) != 0 || (v14 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView, (v15 = *&v8[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView]) == 0))
            {
              v19 = v8;
            }

            else
            {
              v16 = v8;
              if ([v15 isHidden])
              {
                v17 = *&v8[v14];
                if (v17)
                {
                  [v17 setAlpha:0.0];
                  v18 = *&v8[v14];
                  if (v18)
                  {
                    [v18 setHidden:0];
                  }
                }
              }
            }

            v20 = objc_opt_self();
            v21 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v22 = swift_allocObject();
            *(v22 + 16) = v21;
            *(v22 + 24) = v13;
            v34 = sub_1002AC488;
            v35 = v22;
            aBlock = _NSConcreteStackBlock;
            v31 = 1107296256;
            v32 = sub_100006C7C;
            v33 = &unk_100A70840;
            v23 = _Block_copy(&aBlock);

            v24 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v13;
            v34 = sub_1002AC494;
            v35 = v25;
            aBlock = _NSConcreteStackBlock;
            v31 = 1107296256;
            v32 = sub_10003264C;
            v33 = &unk_100A70890;
            v26 = _Block_copy(&aBlock);

            [v20 animateWithDuration:0 delay:v23 options:v26 animations:0.0 completion:0.0];
            _Block_release(v26);
            _Block_release(v23);

            v6 = v29;
          }

          else
          {
            v8 = v10;
          }

          ++v7;
        }

        while (v6 != v7);
      }
    }

    v28[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_hasAppeared] = 1;
  }
}

void sub_1004D9CC4(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v4 - 8);
  v6 = v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v141 - v8;
  v10 = sub_1004D7E10();
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC7Journal5Asset_type;
    v13 = type metadata accessor for AssetType();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v9, v11 + v12, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    sub_100439218(v9, v6);
    v15 = (*(v14 + 88))(v6, v13);
    if (v15 == enum case for AssetType.photo(_:) || v15 == enum case for AssetType.livePhoto(_:))
    {
      v17 = objc_opt_self();
      v18 = [v17 mainBundle];
      v142._object = 0x80000001008F3C90;
      v19._countAndFlagsBits = 0x502065766F6D6552;
      v19._object = 0xEC0000006F746F68;
      v142._countAndFlagsBits = 0xD000000000000019;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v142);
      v141[0] = v21._countAndFlagsBits;
      v22 = a1;
      v23 = v11;
      object = v21._object;

      v25 = [v17 mainBundle];
      v143._object = 0x80000001008F3CE0;
      v26._countAndFlagsBits = 0xD00000000000002BLL;
      v26._object = 0x80000001008F3CB0;
      v143._countAndFlagsBits = 0xD000000000000048;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v143);
      countAndFlagsBits = v28._countAndFlagsBits;
      v30 = v28._object;

      v31 = [v17 mainBundle];
      v139 = 0x80000001008F3D90;
      v32 = 0xD000000000000051;
      v33 = 0x80000001008F3D30;
LABEL_15:
      v68 = 0xD000000000000087;
LABEL_16:
      v58 = v23;
      a1 = v22;
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v32, 0, v31, v69, *(&v139 - 1));
      v55 = v70._countAndFlagsBits;
      v56 = v70._object;

      v57 = object;
      v40 = v141[0];
      goto LABEL_17;
    }

    if (v15 == enum case for AssetType.video(_:))
    {
      v59 = objc_opt_self();
      v60 = [v59 mainBundle];
      v146._object = 0x80000001008F3B00;
      v61._countAndFlagsBits = 0x562065766F6D6552;
      v61._object = 0xEC0000006F656469;
      v146._countAndFlagsBits = 0xD000000000000019;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, 0, v60, v62, v146);
      v141[0] = v63._countAndFlagsBits;
      v22 = a1;
      v23 = v11;
      object = v63._object;

      v64 = [v59 mainBundle];
      v147._object = 0x80000001008F3B50;
      v65._countAndFlagsBits = 0xD00000000000002BLL;
      v65._object = 0x80000001008F3B20;
      v147._countAndFlagsBits = 0xD000000000000048;
      v66._countAndFlagsBits = 0;
      v66._object = 0xE000000000000000;
      v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v65, 0, v64, v66, v147);
      countAndFlagsBits = v67._countAndFlagsBits;
      v30 = v67._object;

      v31 = [v59 mainBundle];
      v139 = 0x80000001008F3C00;
      v32 = 0xD000000000000051;
      v33 = 0x80000001008F3BA0;
      goto LABEL_15;
    }

    if (v15 == enum case for AssetType.music(_:))
    {
      v71 = objc_opt_self();
      v72 = [v71 mainBundle];
      v148._object = 0x80000001008F3780;
      v73._countAndFlagsBits = 0x532065766F6D6552;
      v73._object = 0xEB00000000676E6FLL;
      v148._countAndFlagsBits = 0xD000000000000018;
      v74._countAndFlagsBits = 0;
      v74._object = 0xE000000000000000;
      v75 = NSLocalizedString(_:tableName:bundle:value:comment:)(v73, 0, v72, v74, v148);
      v141[0] = v75._countAndFlagsBits;
      v22 = a1;
      v23 = v11;
      object = v75._object;

      v76 = [v71 mainBundle];
      v149._object = 0x80000001008F37D0;
      v77._countAndFlagsBits = 0xD00000000000002ALL;
      v77._object = 0x80000001008F37A0;
      v149._countAndFlagsBits = 0xD000000000000047;
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v77, 0, v76, v78, v149);
      countAndFlagsBits = v79._countAndFlagsBits;
      v30 = v79._object;

      v80 = "emoved from this entry.";
      v81 = 0x80000001008F3880;
      v82 = [v71 mainBundle];
LABEL_20:
      v31 = v82;
      v139 = v81;
      v32 = 0xD000000000000050;
      v33 = v80 | 0x8000000000000000;
      v68 = 0xD000000000000085;
      goto LABEL_16;
    }

    if (v15 == enum case for AssetType.podcast(_:))
    {
      v83 = objc_opt_self();
      v84 = [v83 mainBundle];
      v150._object = 0x80000001008F35F0;
      v85._countAndFlagsBits = 0x502065766F6D6552;
      v85._object = 0xEE0074736163646FLL;
      v150._countAndFlagsBits = 0xD00000000000001BLL;
      v86._countAndFlagsBits = 0;
      v86._object = 0xE000000000000000;
      v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v84, v86, v150);
      v141[0] = v87._countAndFlagsBits;
      v22 = a1;
      v23 = v11;
      object = v87._object;

      v88 = [v83 mainBundle];
      v151._object = 0x80000001008F3640;
      v89._countAndFlagsBits = 0xD00000000000002DLL;
      v89._object = 0x80000001008F3610;
      v151._countAndFlagsBits = 0xD00000000000004ALL;
      v90._countAndFlagsBits = 0;
      v90._object = 0xE000000000000000;
      v91 = NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v151);
      countAndFlagsBits = v91._countAndFlagsBits;
      v30 = v91._object;

      v31 = [v83 mainBundle];
      v139 = 0x80000001008F36F0;
      v32 = 0xD000000000000053;
      v33 = 0x80000001008F3690;
      v68 = 0xD00000000000008BLL;
      goto LABEL_16;
    }

    if (v15 == enum case for AssetType.audio(_:))
    {
      v92 = objc_opt_self();
      v93 = [v92 mainBundle];
      v152._object = 0x80000001008F3930;
      v94._countAndFlagsBits = 0xD000000000000016;
      v94._object = 0x80000001008F3910;
      v152._countAndFlagsBits = 0xD000000000000023;
      v95._countAndFlagsBits = 0;
      v95._object = 0xE000000000000000;
      v96 = NSLocalizedString(_:tableName:bundle:value:comment:)(v94, 0, v93, v95, v152);
      v141[0] = v96._countAndFlagsBits;
      v22 = a1;
      v23 = v11;
      object = v96._object;

      v97 = [v92 mainBundle];
      v153._object = 0x80000001008F39A0;
      v98._countAndFlagsBits = 0xD000000000000035;
      v98._object = 0x80000001008F3960;
      v153._countAndFlagsBits = 0xD000000000000052;
      v99._countAndFlagsBits = 0;
      v99._object = 0xE000000000000000;
      v100 = NSLocalizedString(_:tableName:bundle:value:comment:)(v98, 0, v97, v99, v153);
      countAndFlagsBits = v100._countAndFlagsBits;
      v30 = v100._object;

      v31 = [v92 mainBundle];
      v139 = 0x80000001008F3A60;
      v32 = 0xD00000000000005BLL;
      v33 = 0x80000001008F3A00;
      v68 = 0xD00000000000009BLL;
      goto LABEL_16;
    }

    if (v15 == enum case for AssetType.multiPinMap(_:))
    {
      v101 = objc_opt_self();
      v102 = [v101 mainBundle];
      v154._object = 0x80000001008F3310;
      v103._countAndFlagsBits = 0x4D2065766F6D6552;
      v154._countAndFlagsBits = 0xD000000000000017;
      v103._object = 0xEA00000000007061;
      v104._countAndFlagsBits = 0;
      v104._object = 0xE000000000000000;
      v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, 0, v102, v104, v154);
      v141[0] = v105._countAndFlagsBits;
      v22 = a1;
      v23 = v11;
      object = v105._object;

      v106 = [v101 mainBundle];
      v155._object = 0x80000001008F3330;
      v107._countAndFlagsBits = 0xD000000000000029;
      v107._object = 0x80000001008ECA70;
      v155._countAndFlagsBits = 0xD000000000000046;
      v108._countAndFlagsBits = 0;
      v108._object = 0xE000000000000000;
      v109 = NSLocalizedString(_:tableName:bundle:value:comment:)(v107, 0, v106, v108, v155);
      countAndFlagsBits = v109._countAndFlagsBits;
      v30 = v109._object;

      v31 = [v101 mainBundle];
      v139 = 0x80000001008F33D0;
      v32 = 0xD00000000000004FLL;
      v33 = 0x80000001008F3380;
      v68 = 0xD000000000000083;
      goto LABEL_16;
    }

    if (v15 == enum case for AssetType.link(_:))
    {
      v110 = objc_opt_self();
      v111 = [v110 mainBundle];
      v156._object = 0x80000001008F3180;
      v112._countAndFlagsBits = 0x4C2065766F6D6552;
      v112._object = 0xEB000000006B6E69;
      v156._countAndFlagsBits = 0xD000000000000018;
      v113._countAndFlagsBits = 0;
      v113._object = 0xE000000000000000;
      v114 = NSLocalizedString(_:tableName:bundle:value:comment:)(v112, 0, v111, v113, v156);
      v141[0] = v114._countAndFlagsBits;
      v22 = a1;
      v23 = v11;
      object = v114._object;

      v115 = [v110 mainBundle];
      v157._object = 0x80000001008F31D0;
      v116._countAndFlagsBits = 0xD00000000000002ALL;
      v116._object = 0x80000001008F31A0;
      v157._countAndFlagsBits = 0xD000000000000047;
      v117._countAndFlagsBits = 0;
      v117._object = 0xE000000000000000;
      v118 = NSLocalizedString(_:tableName:bundle:value:comment:)(v116, 0, v115, v117, v157);
      countAndFlagsBits = v118._countAndFlagsBits;
      v30 = v118._object;

      v80 = "emoved from this entry.";
      v81 = 0x80000001008F3280;
      v82 = [v110 mainBundle];
      goto LABEL_20;
    }

    v141[0] = v11;
    if (v15 == enum case for AssetType.contact(_:))
    {
      v119 = objc_opt_self();
      v120 = [v119 mainBundle];
      v158._object = 0x80000001008F2FD0;
      v121._object = 0x80000001008F2FB0;
      v158._countAndFlagsBits = 0xD00000000000001ELL;
      v121._countAndFlagsBits = 0xD000000000000011;
      v122._countAndFlagsBits = 0;
      v122._object = 0xE000000000000000;
      v123 = NSLocalizedString(_:tableName:bundle:value:comment:)(v121, 0, v120, v122, v158);
      v40 = v123._countAndFlagsBits;
      v41 = v123._object;

      v124 = [v119 mainBundle];
      v159._object = 0x80000001008F3030;
      v125._countAndFlagsBits = 0xD000000000000030;
      v125._object = 0x80000001008F2FF0;
      v159._countAndFlagsBits = 0xD00000000000004DLL;
      v126._countAndFlagsBits = 0;
      v126._object = 0xE000000000000000;
      v127 = NSLocalizedString(_:tableName:bundle:value:comment:)(v125, 0, v124, v126, v159);
      countAndFlagsBits = v127._countAndFlagsBits;
      v30 = v127._object;

      v46 = "l be removed from this entry.";
      v47 = 0x80000001008F30E0;
      v48 = [v119 mainBundle];
      goto LABEL_10;
    }

    if (v15 == enum case for AssetType.workoutIcon(_:) || v15 == enum case for AssetType.workoutRoute(_:))
    {
      goto LABEL_38;
    }

    if (v15 == enum case for AssetType.stateOfMind(_:))
    {
      if (qword_100AD0450 != -1)
      {
        swift_once();
      }

      v40 = qword_100B30480;
      v57 = *algn_100B30488;

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
      v30 = v128;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v55 = String.init(localized:table:bundle:locale:comment:)();
      v56 = v129;
      goto LABEL_12;
    }

    if (v15 == enum case for AssetType.motionActivity(_:))
    {
LABEL_38:
      v130 = objc_opt_self();
      v131 = [v130 mainBundle];
      v160._object = 0x80000001008F3460;
      v132._countAndFlagsBits = 0x412065766F6D6552;
      v132._object = 0xEF79746976697463;
      v160._countAndFlagsBits = 0xD00000000000001CLL;
      v133._countAndFlagsBits = 0;
      v133._object = 0xE000000000000000;
      v134 = NSLocalizedString(_:tableName:bundle:value:comment:)(v132, 0, v131, v133, v160);
      v40 = v134._countAndFlagsBits;
      v41 = v134._object;

      v135 = [v130 mainBundle];
      v161._object = 0x80000001008F34B0;
      v136._countAndFlagsBits = 0xD00000000000002ELL;
      v136._object = 0x80000001008F3480;
      v161._countAndFlagsBits = 0xD00000000000004BLL;
      v137._countAndFlagsBits = 0;
      v137._object = 0xE000000000000000;
      v138 = NSLocalizedString(_:tableName:bundle:value:comment:)(v136, 0, v135, v137, v161);
      countAndFlagsBits = v138._countAndFlagsBits;
      v30 = v138._object;

      v49 = [v130 mainBundle];
      v140 = 0x80000001008F3560;
      v50 = 0xD000000000000054;
      v51 = 0x80000001008F3500;
      v52 = 0xD00000000000008DLL;
      goto LABEL_11;
    }

    (*(v14 + 8))(v6, v13);
  }

  else
  {
    v34 = type metadata accessor for AssetType();
    (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
    sub_100004F84(v9, &qword_100AE4290);
    v141[0] = 0;
  }

  v35 = objc_opt_self();
  v36 = [v35 mainBundle];
  v144._object = 0x80000001008F2AB0;
  v37._object = 0x80000001008F2A90;
  v144._countAndFlagsBits = 0xD00000000000001ELL;
  v37._countAndFlagsBits = 0xD000000000000011;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v144);
  v40 = v39._countAndFlagsBits;
  v41 = v39._object;

  v42 = [v35 mainBundle];
  v145._object = 0x80000001008F2B10;
  v43._countAndFlagsBits = 0xD000000000000030;
  v43._object = 0x80000001008F2AD0;
  v145._countAndFlagsBits = 0xD00000000000004DLL;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v145);
  countAndFlagsBits = v45._countAndFlagsBits;
  v30 = v45._object;

  v46 = "l be removed from this entry.";
  v47 = 0x80000001008F2BC0;
  v48 = [v35 mainBundle];
LABEL_10:
  v49 = v48;
  v140 = v47;
  v50 = 0xD000000000000056;
  v51 = v46 | 0x8000000000000000;
  v52 = 0xD000000000000091;
LABEL_11:
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v50, 0, v49, v53, *&v52);
  v55 = v54._countAndFlagsBits;
  v56 = v54._object;

  v57 = v41;
LABEL_12:
  v58 = v141[0];
LABEL_17:

  *a1 = v40;
  a1[1] = v57;
  a1[2] = countAndFlagsBits;
  a1[3] = v30;
  a1[4] = v55;
  a1[5] = v56;
}

uint64_t sub_1004DAE90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v6 - 8);
  v8 = v38 - v7;
  v9 = *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry];
  if (v9)
  {
    sub_1000082B4(v9 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v8, &qword_100AD1420);
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_100004F84(v8, &qword_100AD1420);
    }

    else
    {
      v12 = v3;
      v13 = UUID.uuidString.getter();
      v15 = v14;
      (*(v11 + 8))(v8, v10);
      v16 = v13;
      v3 = v12;
      v17 = sub_1006274B4(v16, v15, a1);

      if (v17)
      {
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          sub_10080D688(v12, 0, 1);
          return swift_unknownObjectRelease();
        }

        return result;
      }
    }
  }

  v19 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v20 = *&v3[v19];
  if (v20 >> 62)
  {
    goto LABEL_38;
  }

  v42 = v20 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v38[0] = v3;

    v38[1] = v20;
    if (!i)
    {
      break;
    }

    v22 = 0;
    v40 = v20 + 32;
    v41 = v20 & 0xC000000000000001;
    v23 = a2 + 56;
    v39 = _swiftEmptyArrayStorage;
    while (1)
    {
      v24 = v22;
      if (v41)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v42 + 16))
        {
          goto LABEL_37;
        }

        v25 = *(v40 + 8 * v22);
      }

      v26 = v25;
      ++v22;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v3 = i;
      v27 = UUID.uuidString.getter();
      v29 = v28;
      if (*(a2 + 16) && (v30 = v27, Hasher.init(_seed:)(), String.hash(into:)(), v31 = Hasher._finalize()(), v32 = -1 << *(a2 + 32), v33 = v31 & ~v32, ((*(v23 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v20 = ~v32;
        while (1)
        {
          v34 = (*(a2 + 48) + 16 * v33);
          v35 = *v34 == v30 && v34[1] == v29;
          if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v20;
          if (((*(v23 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_1003E5564(0, *(v39 + 2) + 1, 1, v39);
        }

        i = v3;
        v20 = *(v39 + 2);
        v36 = *(v39 + 3);
        if (v20 >= v36 >> 1)
        {
          v39 = sub_1003E5564((v36 > 1), v20 + 1, 1, v39);
        }

        v37 = v39;
        *(v39 + 2) = v20 + 1;
        *&v37[8 * v20 + 32] = v24;
        if (v22 == v3)
        {
          goto LABEL_34;
        }
      }

      else
      {
LABEL_11:

        i = v3;
        if (v22 == v3)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v42 = v20 & 0xFFFFFFFFFFFFFF8;
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_34:

  sub_1004DDDD0(v39);
}

void sub_1004DB308()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
  if (!v1)
  {
    return;
  }

  v20 = v1;
  v2 = [v20 subviews];
  sub_1000065A8(0, &qword_100ADC670);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = &OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView;
      v21 = v3;
      v22 = v3 & 0xC000000000000001;
      do
      {
        if (v6)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v3 + 8 * v5 + 32);
        }

        v9 = v8;
        type metadata accessor for FullScreenLegacyCollectionViewCell();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = *(v10 + *v7);
          if (v11)
          {
            v12 = &v11[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia];
            if (swift_unknownObjectWeakLoadStrong())
            {
              v13 = *(v12 + 1);
              v14 = v7;
              ObjectType = swift_getObjectType();
              v16 = *(v13 + 8);
              v17 = v11;
              v18 = ObjectType;
              v7 = v14;
              v19 = v13;
              v3 = v21;
              v6 = v22;
              v16(v18, v19);
              swift_unknownObjectRelease();
            }
          }
        }

        ++v5;
      }

      while (v4 != v5);
    }
  }
}

void sub_1004DB540()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 subviews];
    sub_1000065A8(0, &qword_100ADC670);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = v2;
    if (v4 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v29 = i;
      while (1)
      {
        if (v7)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v8 = *(v4 + 32 + 8 * v6);
        }

        v9 = v8;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        type metadata accessor for FullScreenLegacyCollectionViewCell();
        v11 = swift_dynamicCastClass();
        if (v11 && (v12 = *(v11 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView)) != 0)
        {
          v13 = &v12[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v14 = *(v13 + 1);
            ObjectType = swift_getObjectType();
            v16 = *(v14 + 24);
            v17 = v12;
            v16(ObjectType, v14);
            swift_unknownObjectRelease();
          }

          else
          {
            v18 = v12;
          }

          v19 = [v12 subviews];
          v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v20 >> 62)
          {
            v21 = _CocoaArrayWrapper.endIndex.getter();
            if (!v21)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v21)
            {
              goto LABEL_28;
            }
          }

          if (v21 < 1)
          {
            goto LABEL_35;
          }

          for (j = 0; j != v21; ++j)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v23 = *(v20 + 8 * j + 32);
            }

            v24 = v23;
            swift_getObjectType();
            v25 = swift_conformsToProtocol2();
            if (v25 && v24)
            {
              v26 = v25;
              v27 = swift_getObjectType();
              (*(v26 + 24))(v27, v26);
            }
          }

LABEL_28:

          v7 = v4 & 0xC000000000000001;
          i = v29;
          if (v6 == v29)
          {
            goto LABEL_29;
          }
        }

        else
        {

          if (v6 == i)
          {
            goto LABEL_29;
          }
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

LABEL_29:
  }
}

void sub_1004DB854()
{
  v1 = objc_opt_self();
  v2 = [v1 fractionalWidthDimension:1.0];
  v3 = [v1 fractionalHeightDimension:1.0];
  v4 = objc_opt_self();
  v5 = [v4 sizeWithWidthDimension:v2 heightDimension:v3];

  v6 = [objc_opt_self() itemWithLayoutSize:v5];
  v7 = [v1 fractionalWidthDimension:1.0];
  v8 = [v1 fractionalHeightDimension:1.0];
  v9 = [v4 sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100941D50;
  *(v11 + 32) = v6;
  sub_1000065A8(0, &unk_100AD8A80);
  v25 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v10 horizontalGroupWithLayoutSize:v9 subitems:isa];

  v14 = [objc_opt_self() sectionWithGroup:v13];
  [v14 setOrthogonalScrollingBehavior:5];
  [v14 setInterGroupSpacing:20.0];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004E5984;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004D7B54;
  aBlock[3] = &unk_100A707C8;
  v16 = _Block_copy(aBlock);

  [v14 setVisibleItemsInvalidationHandler:v16];
  _Block_release(v16);
  v17 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v18 = [objc_allocWithZone(UICollectionViewCompositionalLayout) initWithSection:v14 configuration:v17];
  v19 = [objc_allocWithZone(UICollectionView) initWithFrame:v18 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v20 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView;
  v21 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView) = v19;
  v22 = v19;

  if (v22)
  {
    [v22 setAutomaticallyAdjustsScrollIndicatorInsets:0];
  }

  v23 = *(v0 + v20);
  if (v23)
  {
    v24 = v23;
    [v24 setContentInsetAdjustmentBehavior:2];
  }
}

void sub_1004DBC2C(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1004E4B5C(a1);
  }
}

id sub_1004DBC88()
{
  v1 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl);
  v3 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v2 setNumberOfPages:v5];
  [*(v0 + v1) setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *(v0 + v1);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 labelColor];
  [v8 setCurrentPageIndicatorTintColor:v9];

  v10 = *(v0 + v1);
  v11 = [v7 grayColor];
  v12 = [v11 colorWithAlphaComponent:0.5];

  [v10 setPageIndicatorTintColor:v12];
  [*(v0 + v1) addTarget:v0 action:"pageControlTapped" forControlEvents:4096];
  [*(v0 + v1) setAccessibilityContainerType:4];
  return [*(v0 + v1) setHidesForSinglePage:1];
}

void sub_1004DBE9C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
  if (v9)
  {
    v10 = v9;
    IndexPath.init(item:section:)();
    v11 = [v10 numberOfItemsInSection:0];
    if (v11 <= a1 || v11 <= 1)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v12 = [v10 indexPathsForVisibleItems];
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v12) = sub_1006B7854(v8, v13);

      if ((v12 & 1) != 0 && !UIAccessibilityIsVoiceOverRunning())
      {
        sub_1004DC294();
      }

      else
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v10 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:a2 & 1];
      }

      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_1004DC060()
{
  v0 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = sub_1004D7E10();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC7Journal5Asset_type;
    v8 = type metadata accessor for AssetType();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, v6 + v7, v8);

    v6 = 1;
    (*(v9 + 56))(v5, 0, 1, v8);
    sub_1000082B4(v5, v2, &qword_100AE4290);
    v10 = (*(v9 + 88))(v2, v8);
    if (v10 != enum case for AssetType.photo(_:) && v10 != enum case for AssetType.livePhoto(_:) && v10 != enum case for AssetType.video(_:))
    {
      (*(v9 + 8))(v2, v8);
      v6 = 0;
    }
  }

  else
  {
    v13 = type metadata accessor for AssetType();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  }

  sub_100004F84(v5, &qword_100AE4290);
  return v6;
}

void sub_1004DC294()
{
  sub_1004DCFA0();
  v1 = [v0 navigationItem];
  sub_1000F24EC(&unk_100AD4780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100941D50;
  *(v2 + 32) = sub_1004D8230();
  sub_1000065A8(0, &qword_100AD43B0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setLeftBarButtonItems:isa];

  v8 = sub_1004D7E10();
  v4 = [v0 navigationItem];
  if (sub_1004DC460(v8))
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  [v4 setRightBarButtonItems:v5.super.isa animated:1];

  v6 = [v0 navigationItem];
  sub_1004DC77C(v8);
  sub_1000065A8(0, &unk_100AEBED0);
  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v6 setCenterItemGroups:v7];
}

double *sub_1004DC460(char *a1)
{
  v3 = type metadata accessor for AssetType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (*&a1[OBJC_IVAR____TtC7Journal5Asset_assetMO])
    {
      v19[1] = *&a1[OBJC_IVAR____TtC7Journal5Asset_assetMO];
      type metadata accessor for JournalEntryAssetMO();
      v7 = a1;
      if (MinimumSupportedVersion.isEditingSupported.getter())
      {
        (*(v4 + 16))(v6, &v7[OBJC_IVAR____TtC7Journal5Asset_type], v3);
        v8 = (*(v4 + 88))(v6, v3);
        if (v8 == enum case for AssetType.video(_:))
        {
          if ((*(v1 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset) & 1) == 0)
          {
            sub_1000F24EC(&unk_100AD4780);
            v9 = swift_allocObject();
            *(v9 + 16) = xmmword_100941D60;
            *(v9 + 32) = sub_1004D8008();
            *(v9 + 40) = sub_1004D81A4();
LABEL_21:

            (*(v4 + 8))(v6, v3);
            return v9;
          }
        }

        else if (v8 == enum case for AssetType.audio(_:))
        {
          type metadata accessor for AudioAsset();
          if (swift_dynamicCastClass())
          {
            v12 = v7;
            v13 = sub_1000A98A0();
            v15 = v14;

            if (v15)
            {

              v16 = HIBYTE(v15) & 0xF;
              if ((v15 & 0x2000000000000000) == 0)
              {
                v16 = v13 & 0xFFFFFFFFFFFFLL;
              }

              if (v16)
              {

                (*(v4 + 8))(v6, v3);
                return 0;
              }
            }
          }
        }

        else if (v8 == enum case for AssetType.stateOfMind(_:))
        {
          sub_1004E3530();
          sub_1000F24EC(&unk_100AD4780);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_100941D50;
          v17 = *(v1 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_trashAndOpenInContextMenuButton);
          *(v9 + 32) = v17;
          v18 = v17;
          goto LABEL_21;
        }

        sub_1000F24EC(&unk_100AD4780);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100941D50;
        *(v9 + 32) = sub_1004D8008();
        goto LABEL_21;
      }
    }

    else
    {
      v10 = a1;
    }
  }

  return _swiftEmptyArrayStorage;
}

double *sub_1004DC77C(void *a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AssetType();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v6 + 16))(v9, a1 + OBJC_IVAR____TtC7Journal5Asset_type, v5, v7);
    if ((*(v6 + 88))(v9, v5) == enum case for AssetType.audio(_:))
    {
      type metadata accessor for AudioAsset();
      v10 = swift_dynamicCastClass();
      v11 = a1;
      if (v10)
      {
        v12 = v11;
        v47 = v1;
        v13 = sub_1000A98A0();
        if (v14)
        {
          v15 = v13;
          v16 = v14;

          v17 = HIBYTE(v16) & 0xF;
          if ((v16 & 0x2000000000000000) == 0)
          {
            v17 = v15 & 0xFFFFFFFFFFFFLL;
          }

          if (v17)
          {
            if (*&v12[OBJC_IVAR____TtC7Journal5Asset_assetMO])
            {
              v48 = *&v12[OBJC_IVAR____TtC7Journal5Asset_assetMO];
              type metadata accessor for JournalEntryAssetMO();
              if (MinimumSupportedVersion.isEditingSupported.getter())
              {
                sub_1000F24EC(&unk_100AD4780);
                v18 = swift_allocObject();
                *(v18 + 1) = xmmword_100941D50;
                v44 = swift_allocObject();
                *(v44 + 16) = xmmword_100941D70;
                String.LocalizationValue.init(stringLiteral:)();
                static Locale.current.getter();
                v45 = String.init(localized:table:bundle:locale:comment:)();
                v42 = v19;
                v20 = String._bridgeToObjectiveC()();
                v43 = objc_opt_self();
                v40 = [v43 systemImageNamed:v20];

                v46 = sub_1000065A8(0, &qword_100AD4420);
                swift_allocObject();
                swift_unknownObjectWeakInit();
                v41 = v40;
                v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                v45 = sub_1000065A8(0, &qword_100AD43B0);
                v50.value.super.isa = 0;
                v50.is_nil = v21;
                v53.value.super.super.isa = 0;
                isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v50, v53, v55).super.super.isa;

                *(v44 + 32) = isa;
                String.LocalizationValue.init(stringLiteral:)();
                static Locale.current.getter();
                v23 = String.init(localized:table:bundle:locale:comment:)();
                v41 = v24;
                v42 = v23;
                v25 = String._bridgeToObjectiveC()();
                v26 = [v43 systemImageNamed:v25];

                swift_allocObject();
                swift_unknownObjectWeakInit();
                v27 = v26;
                v51.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                v51.value.super.isa = 0;
                v54.value.super.super.isa = 0;
                v28 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v51, v54, v56).super.super.isa;

                v29 = v44;
                *(v44 + 40) = v28;
                String.LocalizationValue.init(stringLiteral:)();
                static Locale.current.getter();
                String.init(localized:table:bundle:locale:comment:)();
                if (qword_100AD0978 != -1)
                {
                  swift_once();
                }

                v30 = qword_100B30E50;
                swift_allocObject();
                swift_unknownObjectWeakInit();
                v31 = v30;
                v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                v33 = v32;
                v49.value.super.super.isa = v32;
                v49.is_nil = 0;
                v34 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemTrash, v49, v52).super.super.isa;
                [(objc_class *)v34 setMenuRepresentation:v33];

                *(v29 + 48) = v34;
                v35 = objc_allocWithZone(UIBarButtonItemGroup);
                v36 = Array._bridgeToObjectiveC()().super.isa;

                v37 = [v35 initWithBarButtonItems:v36 representativeItem:0];

                *(v18 + 4) = v37;
                goto LABEL_16;
              }
            }
          }
        }
      }
    }

    else
    {
      v38 = a1;
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_16:

    (*(v6 + 8))(v9, v5);
    return v18;
  }

  return _swiftEmptyArrayStorage;
}

id sub_1004DCEA8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v5 = a1;
  v6 = IndexPath.item.getter();
  if (v4 >> 62)
  {
    v5 = v6;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v9 = v8;

    return v9;
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < v7)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          goto LABEL_10;
        }

        if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v4 + 8 * v6 + 32);
          goto LABEL_7;
        }

        __break(1u);
LABEL_12:
        v7 = v6;
        v6 = v5;
        if ((v5 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    return 0;
  }
}

void sub_1004DCFA0()
{
  v1 = sub_1004D81A4();
  v2 = v1;
  v3 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_isMuted;
  if (*(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_isMuted))
  {
    v4 = &OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_muteSymbol;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_unmuteSymbol;
  }

  [v1 setImage:*(v0 + *v4)];

  v5 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___videoMuteButton);
  if (*(v0 + v3) != 1)
  {
    v8 = qword_100AD0860;
    v9 = v5;
    if (v8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v6 = qword_100AD08B8;
  v7 = v5;
  if (v6 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_8:

  v10 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityLabel:v10];
}

void sub_1004DD154(uint64_t a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl] currentPage];
  v4 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    if (v3 < _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (v3 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_1004D9CC4(&aBlock);
    v6 = *&v1[v4];
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 == 1 && v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_textExists] != 1)
    {

      v8 = [objc_opt_self() mainBundle];
      v40._object = 0x80000001008F2830;
      v9._countAndFlagsBits = 0x45206574656C6544;
      v9._object = 0xEC0000007972746ELL;
      v40._countAndFlagsBits = 0xD000000000000022;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v40);
    }

    else
    {
    }

    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() alertControllerWithTitle:0 message:v11 preferredStyle:0];

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = String._bridgeToObjectiveC()();

    v38 = sub_1004E5860;
    v39 = v13;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_10016B4D8;
    v37 = &unk_100A70750;
    v15 = _Block_copy(&aBlock);

    v16 = objc_opt_self();
    v17 = [v16 actionWithTitle:v14 style:2 handler:v15];
    _Block_release(v15);

    v18 = [objc_opt_self() mainBundle];
    v41._object = 0x80000001008E0EF0;
    v19._countAndFlagsBits = 0x6C65636E6143;
    v19._object = 0xE600000000000000;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0xD00000000000001BLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v41);

    v21 = String._bridgeToObjectiveC()();

    v38 = DebugData.init(name:);
    v39 = 0;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_10016B4D8;
    v37 = &unk_100A70778;
    v22 = _Block_copy(&aBlock);

    v23 = [v16 actionWithTitle:v21 style:1 handler:v22];
    _Block_release(v22);

    [v12 addAction:v17];
    [v12 addAction:v23];
    v24 = [v12 popoverPresentationController];
    [v24 setSourceItem:a1];

    [v1 presentViewController:v12 animated:1 completion:0];
    return;
  }

  if (qword_100ACFE68 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000617C(v25, qword_100AE6540);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136315138;
    if (qword_100ACFE70 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for UUID();
    sub_10000617C(v30, qword_100AE6558);
    sub_100006A84(&qword_100AE19B0, &type metadata accessor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = sub_100008458(v31, v32, &aBlock);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s journalAssets out of bounds error", v28, 0xCu);
    sub_10000BA7C(v29);
  }
}

uint64_t sub_1004DD790()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl);

    v3 = [v2 currentPage];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = result;
      sub_1000F24EC(&unk_100AD8A90);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100940080;
      *(v5 + 32) = v3;
      sub_1004DDDD0(v5);
    }
  }

  return result;
}

void sub_1004DD880(void *a1)
{
  v33 = a1;
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - v3;
  v30 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v30);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StateOfMindAssetMetadata();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE6680);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [*(v1 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl) currentPage];
  v20 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_21:

      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_7;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 >= v22)
  {
    return;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (v19 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v23 = *(v21 + 8 * v19 + 32);
LABEL_7:
  type metadata accessor for StateOfMindAsset();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {

    return;
  }

  if (*(v24 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {

    sub_10025BAFC(v10);

    v25 = v34;
    if (!(*(v34 + 48))(v10, 1, v5))
    {
      (*(v25 + 16))(v7, v10, v5);
      sub_100004F84(v10, &qword_100AE6680);
      StateOfMindAssetMetadata.date.getter();
      (*(v25 + 8))(v7, v5);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        (*(v15 + 32))(v18, v13, v14);
        v26 = v31;
        (*(v15 + 16))(v31, v18, v14);
        swift_storeEnumTagMultiPayload();
        v27 = v33;
        v28 = v33;
        v29 = v32;
        sub_1008B4384(v32);
        sub_1008B4EFC(v29, 0, v27, 0);

        sub_100004F84(v29, &unk_100AD6DD0);
        sub_1001295EC(v26);
        (*(v15 + 8))(v18, v14);
        return;
      }

      goto LABEL_14;
    }

    sub_100004F84(v10, &qword_100AE6680);
  }

  else
  {
  }

  (*(v15 + 56))(v13, 1, 1, v14);
LABEL_14:
  sub_100004F84(v13, &unk_100AD4790);
}

void sub_1004DDDD0(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  if (*(a1 + 16))
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    v8[5] = a1;

    sub_1003E9628(0, 0, v4, &unk_100959938, v8);
  }
}

uint64_t sub_1004DDF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v6 = type metadata accessor for IndexPath();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  v5[30] = swift_task_alloc();
  v5[31] = type metadata accessor for MainActor();
  v5[32] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[33] = v8;
  v5[34] = v7;

  return _swift_task_switch(sub_1004DE078, v8, v7);
}

uint64_t sub_1004DE078()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[35] = Strong;
  if (!Strong)
  {

LABEL_32:

    v37 = v0[1];

    return v37();
  }

  v2 = Strong;
  v3 = *(Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry);
  v0[36] = v3;
  if (!v3)
  {

    goto LABEL_32;
  }

  v59 = v0 + 23;
  v4 = v0[25];
  v0[23] = _swiftEmptyArrayStorage;
  v5 = swift_allocObject();
  v0[37] = v5;
  *(v5 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  v6 = *(v4 + 16);
  p_info = _TtC7Journal11AudioPlayer.info;
  if (!v6)
  {

LABEL_39:

    v39 = v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldSave];
    if (v39 != 2 && (v39 & 1) != 0)
    {
      v40 = v0[35];
      v41 = v0[30];
      v42 = type metadata accessor for TaskPriority();
      (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
      v43 = v40;
      v44 = static MainActor.shared.getter();
      v45 = swift_allocObject();
      v45[2] = v44;
      v45[3] = &protocol witness table for MainActor;
      v45[4] = v43;
      sub_1003E9BBC(0, 0, v41, &unk_100959940, v45);
    }

    p_info = v0[35];
    v46 = v0[36];
    v47 = *(p_info + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
    v48 = v0[37];
    if (v47)
    {
      v49 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = swift_allocObject();
      v50[2] = v49;
      v50[3] = v59;
      v50[4] = v48;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1004E5844;
      *(v51 + 24) = v50;
      v0[6] = sub_100028EF4;
      v0[7] = v51;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_10001A7D4;
      v0[5] = &unk_100A70660;
      v52 = _Block_copy(v0 + 2);
      v53 = p_info;
      v54 = v47;

      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v46;
      v0[12] = sub_1004E5850;
      v0[13] = v56;
      v0[8] = _NSConcreteStackBlock;
      v0[9] = 1107296256;
      v0[10] = sub_10003264C;
      v0[11] = &unk_100A706B0;
      v57 = _Block_copy(v0 + 8);

      [v54 performBatchUpdates:v52 completion:v57];

      _Block_release(v57);
      _Block_release(v52);
    }

    else
    {
LABEL_45:
    }

    goto LABEL_32;
  }

  v8 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  v0[38] = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView;
  v0[39] = v8;

  swift_beginAccess();
  while (1)
  {
    v0[40] = v6;
    v9 = *(v0[25] + 8 * v6 + 24);
    v0[41] = v9;
    IndexPath.init(row:section:)();
    v10 = v0[23];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[23] = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1003E4B58(0, v10[2] + 1, 1, v10);
      *v59 = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1003E4B58(v12 > 1, v13 + 1, 1, v10);
    }

    v14 = v0[37];
    v15 = v0[29];
    v16 = v0[26];
    v17 = v0[27];
    v10[2] = v13 + 1;
    (*(v17 + 32))(v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v13, v15, v16);
    v0[23] = v10;
    if (*(v14 + 16) >= v9)
    {
      if (__OFSUB__(v9, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      *(v0[37] + 16) = (v9 - 1) & ~((v9 - 1) >> 63);
    }

    v20 = *(v0[35] + v0[38]);
    if (v20)
    {
      v22 = v0[27];
      v21 = v0[28];
      v23 = v0[26];
      v24 = v20;
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v22 + 8))(v21, v23);
      v26 = [v24 cellForItemAtIndexPath:isa];

      if (v26)
      {
        type metadata accessor for FullScreenLegacyCollectionViewCell();
        v27 = swift_dynamicCastClass();
        if (v27)
        {
          v28 = *(v27 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
          if (v28)
          {
            v29 = v28;
            sub_100581FF8();
          }
        }
      }
    }

    v30 = *(v0[35] + v0[39]);
    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_20;
    }

    v31 = _CocoaArrayWrapper.endIndex.getter();
    if ((v31 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_20:
    if (v9 < v31)
    {
      goto LABEL_25;
    }

    v32 = v0[40];
    v6 = v32 - 1;
    if (v32 == 1)
    {
      v2 = v0[35];
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_25:
  if ((v30 & 0xC000000000000001) != 0)
  {

    v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v33 = v58;
    goto LABEL_28;
  }

  if (v9 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  else
  {
    v33 = *(v30 + 8 * v9 + 32);
LABEL_28:
    v0[42] = v33;
    v34 = v0[32];

    if (v34)
    {
      swift_getObjectType();
      v35 = dispatch thunk of Actor.unownedExecutor.getter();
      v19 = v36;
    }

    else
    {
      v35 = 0;
      v19 = 0;
    }

    v0[43] = v35;
    v0[44] = v19;
    v31 = sub_1004DE7B8;
    v18 = v35;
  }

  return _swift_task_switch(v31, v18, v19);
}

uint64_t sub_1004DE7B8()
{
  v1 = v0[42];
  v2 = v0[32];
  sub_1000F24EC(&unk_100AE1A40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v1 + OBJC_IVAR____TtC7Journal5Asset_id, v3);
  v7 = sub_1004960D4(v6);
  v0[45] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[46] = v8;
  *v8 = v0;
  v8[1] = sub_1004DE978;

  return sub_10056824C(v2, &protocol witness table for MainActor, v7);
}

uint64_t sub_1004DE978()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return _swift_task_switch(sub_1004DEABC, v3, v2);
}

uint64_t sub_1004DEABC()
{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_1004DEB20, v1, v2);
}

uint64_t sub_1004DEB20()
{
  aBlock = v0 + 2;
  v57 = v0 + 8;
  v1 = v0 + 23;
  v3 = v0[41];
  v2 = v0[42];
  swift_beginAccess();
  v4 = sub_100692B14(v3);
  swift_endAccess();

  while (1)
  {
    v5 = v0[40];
    if (v5 == 1)
    {
      break;
    }

    v0[40] = v5 - 1;
    v6 = *(v0[25] + 8 * v5 + 16);
    v0[41] = v6;
    IndexPath.init(row:section:)();
    v7 = v0[23];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[23] = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1003E4B58(0, v7[2] + 1, 1, v7);
      *v1 = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_1003E4B58(v9 > 1, v10 + 1, 1, v7);
    }

    v11 = v0[37];
    v12 = v0[29];
    v13 = v0[26];
    v14 = v0[27];
    v7[2] = v10 + 1;
    (*(v14 + 32))(v7 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10, v12, v13);
    v0[23] = v7;
    if (*(v11 + 16) >= v6)
    {
      if (__OFSUB__(v6, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      *(v0[37] + 16) = (v6 - 1) & ~((v6 - 1) >> 63);
    }

    v17 = *(v0[35] + v0[38]);
    if (v17)
    {
      v19 = v0[27];
      v18 = v0[28];
      v20 = v0[26];
      v21 = v17;
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v19 + 8))(v18, v20);
      v23 = [v21 cellForItemAtIndexPath:{isa, aBlock, v57}];

      if (v23)
      {
        type metadata accessor for FullScreenLegacyCollectionViewCell();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v25 = *(v24 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
          if (v25)
          {
            v26 = v25;
            sub_100581FF8();
          }
        }
      }
    }

    v27 = *(v0[35] + v0[39]);
    if (v27 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
      if ((v28 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_22:
        if ((v27 & 0xC000000000000001) != 0)
        {

          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v29 = v55;
LABEL_25:
          v0[42] = v29;
          v30 = v0[32];

          if (v30)
          {
            swift_getObjectType();
            v31 = dispatch thunk of Actor.unownedExecutor.getter();
            v16 = v32;
          }

          else
          {
            v31 = 0;
            v16 = 0;
          }

          v0[43] = v31;
          v0[44] = v16;
          v28 = sub_1004DE7B8;
          v15 = v31;
        }

        else
        {
          if (v6 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v29 = *(v27 + 8 * v6 + 32);
            goto LABEL_25;
          }

          __break(1u);
        }

        return _swift_task_switch(v28, v15, v16);
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 < v28)
    {
      goto LABEL_22;
    }
  }

  v33 = v0[35];

  v34 = *(v33 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldSave);
  if (v34 != 2 && (v34 & 1) != 0)
  {
    v35 = v0[35];
    v36 = v0[30];
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
    v38 = v35;
    v39 = static MainActor.shared.getter();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = &protocol witness table for MainActor;
    v40[4] = v38;
    sub_1003E9BBC(0, 0, v36, &unk_100959940, v40);
  }

  v10 = v0[35];
  v41 = v0[36];
  v42 = *(v10 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
  v43 = v0[37];
  if (v42)
  {
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = v1;
    v45[4] = v43;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1004E5844;
    *(v46 + 24) = v45;
    v0[6] = sub_100028EF4;
    v0[7] = v46;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10001A7D4;
    v0[5] = &unk_100A70660;
    v47 = _Block_copy(aBlock);
    v48 = v10;
    v49 = v42;

    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = v41;
    v0[12] = sub_1004E5850;
    v0[13] = v51;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_10003264C;
    v0[11] = &unk_100A706B0;
    v52 = _Block_copy(v57);

    [v49 performBatchUpdates:v47 completion:v52];

    _Block_release(v52);
    _Block_release(v47);

    goto LABEL_38;
  }

LABEL_37:

LABEL_38:

  v53 = v0[1];

  return v53();
}

void sub_1004DF1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView];
    if (v6)
    {
      type metadata accessor for IndexPath();
      v7 = v6;

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 deleteItemsAtIndexPaths:isa];

      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      *(v10 + 24) = a3;
      aBlock[4] = sub_1004E5858;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A70728;
      v11 = _Block_copy(aBlock);
      v12 = v5;

      [v9 animateWithDuration:0 delay:v11 options:0 animations:0.3 completion:0.0];

      _Block_release(v11);
    }

    else
    {
    }
  }
}

void sub_1004DF374(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl);
  v5 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v4 setNumberOfPages:v7];
  swift_beginAccess();
  sub_1004DBE9C(*(a2 + 16), 0);
}

void sub_1004DF42C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((a1 & 1) == 0)
    {
LABEL_6:

      return;
    }

    v4 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
    swift_beginAccess();
    v5 = *&v3[v4];
    if (v5 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      sub_1004E0FD4();
      goto LABEL_6;
    }

    v6 = *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry];
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = *(v6 + 16);
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_5;
      }

      if ((sub_10005AAB0(1) & 1) == 0)
      {
        v9 = sub_10005AAB0(16) ^ 1;
        goto LABEL_17;
      }
    }

    v9 = 0;
LABEL_17:
    sub_10080D688(v3, v9 & 1, 1);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }
}

void sub_1004DF558(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004D7E10();
  if (v4)
  {
    v51 = v4;
    type metadata accessor for MultiPinMapAsset();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *&v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_currentMapPin + 8];
      if (v6)
      {
        v7 = v5;
        v49 = *&v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_currentMapPin];

        v8 = sub_100076E78();
        v50 = a1;
        if ((v9 & 1) == 0 && v8 == 1)
        {
          v10 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
          swift_beginAccess();
          v11 = *&v2[v10];
          if (v11 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter() != 1)
            {
              goto LABEL_9;
            }
          }

          else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
          {
            goto LABEL_9;
          }

          if ((v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_textExists] & 1) == 0)
          {
            v44 = objc_opt_self();
            v45 = [v44 mainBundle];
            v63._object = 0x80000001008ECBC0;
            v46._countAndFlagsBits = 0xD000000000000051;
            v46._object = 0x80000001008ECB60;
            v63._countAndFlagsBits = 0xD000000000000095;
            v47._countAndFlagsBits = 0;
            v47._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v63);

            v20 = [v44 mainBundle];
            v48 = 0x80000001008ECC60;
            v21 = 0x45206574656C6544;
            v23 = 0xEC0000007972746ELL;
            v22 = 0xD000000000000034;
            goto LABEL_19;
          }
        }

LABEL_9:
        v12 = sub_100076E78();
        if ((v13 & 1) == 0 && v12 == 1)
        {
          v14 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
          swift_beginAccess();
          v15 = *&v2[v14];
          if (v15 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter() > 1)
            {
              goto LABEL_14;
            }
          }

          else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
          {
LABEL_14:
            v16 = objc_opt_self();
            v17 = [v16 mainBundle];
            v60._object = 0x80000001008ECAA0;
            v18._object = 0x80000001008ECA70;
            v60._countAndFlagsBits = 0xD00000000000007ALL;
            v18._countAndFlagsBits = 0xD000000000000029;
            v19._countAndFlagsBits = 0;
            v19._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v60);

            v20 = [v16 mainBundle];
            v48 = 0x80000001008ECB20;
            v21 = 0x4D2065766F6D6552;
            v22 = 0xD000000000000032;
            v23 = 0xEA00000000007061;
LABEL_19:
            v28._countAndFlagsBits = 0;
            v28._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(*&v21, 0, v20, v28, *&v22);

            v29 = String._bridgeToObjectiveC()();

            v30 = [objc_opt_self() alertControllerWithTitle:0 message:v29 preferredStyle:0];

            v31 = swift_allocObject();
            v31[2] = v2;
            v31[3] = v7;
            v31[4] = v49;
            v31[5] = v6;
            v32 = v2;
            v52 = v51;
            v33 = String._bridgeToObjectiveC()();

            v57 = sub_1004E55E8;
            v58 = v31;
            aBlock = _NSConcreteStackBlock;
            v54 = 1107296256;
            v55 = sub_10016B4D8;
            v56 = &unk_100A704F8;
            v34 = _Block_copy(&aBlock);

            v35 = objc_opt_self();
            v36 = [v35 actionWithTitle:v33 style:2 handler:v34];
            _Block_release(v34);

            v37 = [objc_opt_self() mainBundle];
            v62._countAndFlagsBits = 0xD000000000000017;
            v62._object = 0x80000001008ECA50;
            v38._countAndFlagsBits = 0x6C65636E6143;
            v38._object = 0xE600000000000000;
            v39._countAndFlagsBits = 0;
            v39._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v62);

            v40 = String._bridgeToObjectiveC()();

            v57 = DebugData.init(name:);
            v58 = 0;
            aBlock = _NSConcreteStackBlock;
            v54 = 1107296256;
            v55 = sub_10016B4D8;
            v56 = &unk_100A70520;
            v41 = _Block_copy(&aBlock);

            v42 = [v35 actionWithTitle:v40 style:1 handler:v41];
            _Block_release(v41);

            [v30 addAction:v36];
            [v30 addAction:v42];
            v43 = [v30 popoverPresentationController];
            [v43 setSourceItem:v50];

            [v32 presentViewController:v30 animated:1 completion:0];
            return;
          }

          if (v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_textExists] == 1)
          {
            goto LABEL_14;
          }
        }

        v24 = objc_opt_self();
        v25 = [v24 mainBundle];
        v61._object = 0x80000001008EC9B0;
        v26._object = 0x80000001008EC980;
        v61._countAndFlagsBits = 0xD000000000000054;
        v26._countAndFlagsBits = 0xD000000000000029;
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v61);

        v20 = [v24 mainBundle];
        v48 = 0x80000001008ECA10;
        v21 = 0x502065766F6D6552;
        v23 = 0xEC0000006563616CLL;
        v22 = 0xD00000000000003DLL;
        goto LABEL_19;
      }
    }
  }
}

uint64_t sub_1004DFC7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v13 = a3;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = a4;
  v15[7] = a5;

  sub_1003E9628(0, 0, v10, &unk_100959918, v15);
}

uint64_t sub_1004DFE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  sub_1000F24EC(&qword_100AD5170);
  v7[16] = swift_task_alloc();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v7[23] = type metadata accessor for MainActor();
  v7[24] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[25] = v11;
  v7[26] = v10;

  return _swift_task_switch(sub_1004DFF94, v11, v10);
}

uint64_t sub_1004DFF94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (!Strong)
  {

LABEL_17:

    v19 = v0[1];

    return v19();
  }

  v2 = Strong;
  v3 = sub_100076E78();
  if ((v4 & 1) == 0 && v3 == 1)
  {
    sub_1000F24EC(&unk_100AD8A90);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100940080;
    *(v5 + 32) = [*(v2 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl) currentPage];
    sub_1004DDDD0(v5);

    if (sub_10011A350())
    {
      v6 = *(v0[27] + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry);
      v0[33] = v6;
      if (v6)
      {

        v0[34] = static MainActor.shared.getter();
        v8 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_1004E0D04, v8, v7);
      }
    }

    v12 = v0[27];
    v13 = v12[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldSave];
    if (v13 == 2 || (v13 & 1) == 0)
    {
    }

    else
    {
      v14 = v0[16];
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
      v16 = v12;
      v17 = static MainActor.shared.getter();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = &protocol witness table for MainActor;
      v18[4] = v16;
      sub_1003E9BBC(0, 0, v14, &unk_100959920, v18);
    }

    goto LABEL_17;
  }

  v9 = swift_task_alloc();
  v0[28] = v9;
  *v9 = v0;
  v9[1] = sub_1004E02B0;
  v11 = v0[14];
  v10 = v0[15];

  return sub_1001B38D8(v11, v10);
}

uint64_t sub_1004E02B0()
{
  v1 = *v0;
  v2 = *(*v0 + 192);

  if (v2)
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

  *(v1 + 232) = v3;
  *(v1 + 240) = v5;

  return _swift_task_switch(sub_1004E03FC, v3, v5);
}

uint64_t sub_1004E03FC()
{
  v1 = v0[13];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v5 = v0[24];
    v6 = v1;
    v7 = swift_task_alloc();
    v0[31] = v7;
    *v7 = v0;
    v7[1] = sub_1004E04F0;

    return sub_10078BBDC(v5, &protocol witness table for MainActor, ObjectType, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004E04F0()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1004E0610, v3, v2);
}

uint64_t sub_1004E0610()
{
  v1 = *(v0 + 192);

  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_1004E06D0;

  return (sub_1001DA5A8)(v1, &protocol witness table for MainActor);
}

uint64_t sub_1004E06D0()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1004E07F0, v3, v2);
}

uint64_t sub_1004E07F0()
{
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  sub_10044BE48(v0[13] + OBJC_IVAR____TtC7Journal5Asset_id);
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v2 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 postNotificationName:v2 object:isa];

  v4 = v0[25];
  v5 = v0[26];

  return _swift_task_switch(sub_1004E0938, v4, v5);
}

uint64_t sub_1004E0938()
{
  v1 = v0[22];
  v2 = v0[19];
  v20 = v0[21];
  v21 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  sub_1000065A8(0, &qword_100AD6210);
  v19 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1004E56C8;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006C7C;
  v0[5] = &unk_100A70570;
  v6 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[11] = _swiftEmptyArrayStorage;
  sub_100006A84(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v6);

  (*(v4 + 8))(v2, v3);
  (*(v20 + 8))(v1, v21);

  if ((sub_10011A350() & 1) != 0 && (v7 = *(v0[27] + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry), (v0[33] = v7) != 0))
  {

    v0[34] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1004E0D04, v9, v8);
  }

  else
  {

    v10 = v0[27];
    v11 = v10[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldSave];
    if (v11 == 2 || (v11 & 1) == 0)
    {
    }

    else
    {
      v12 = v0[16];
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      v14 = v10;
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v14;
      sub_1003E9BBC(0, 0, v12, &unk_100959920, v16);
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1004E0D04()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[33];
  if (Strong)
  {
    v3 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A59FF0);
    (*(v3 + 8))(v2, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[25];
  v7 = v0[26];

  return _swift_task_switch(sub_1004E0DE4, v6, v7);
}

uint64_t sub_1004E0DE4()
{

  v1 = v0[27];
  v2 = v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldSave];
  if (v2 == 2 || (v2 & 1) == 0)
  {
  }

  else
  {
    v3 = v0[16];
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = v1;
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;
    sub_1003E9BBC(0, 0, v3, &unk_100959920, v7);
  }

  v8 = v0[1];

  return v8();
}

void sub_1004E0F44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_currentMapPin);
    *v1 = 0;
    v1[1] = 0;
    v2 = Strong;

    v3 = *&v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView];
    [v3 reloadData];
  }
}

uint64_t sub_1004E0FD4()
{
  v20 = type metadata accessor for IndexPath();
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_imageryIndexes;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_imageryIndexes) = _swiftEmptyArrayStorage;

  v5 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6 >> 62)
  {
    goto LABEL_26;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v5 = *(v0 + v5);
      v8 = v5 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v8)
      {
      }

      v9 = 0;
      v21 = v5 & 0xFFFFFFFFFFFFFF8;
      v22 = v5 & 0xC000000000000001;
      v17[1] = v1 + 32;
      v18 = v8;
      v19 = v5;
      while (1)
      {
        if (v22)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v21 + 16))
          {
            goto LABEL_25;
          }

          v10 = *(v5 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        type metadata accessor for PhotoAsset();
        if (swift_dynamicCastClass() || (type metadata accessor for LivePhotoAsset(), swift_dynamicCastClass()) || (type metadata accessor for VideoAsset(), swift_dynamicCastClass()))
        {
          IndexPath.init(row:section:)();
          v13 = *(v0 + v4);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v4) = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_1003E4B58(0, v13[2] + 1, 1, v13);
            *(v0 + v4) = v13;
          }

          v16 = v13[2];
          v15 = v13[3];
          if (v16 >= v15 >> 1)
          {
            v13 = sub_1003E4B58(v15 > 1, v16 + 1, 1, v13);
          }

          v13[2] = v16 + 1;
          (*(v1 + 32))(v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v16, v3, v20);
          *(v0 + v4) = v13;
          v8 = v18;
          v5 = v19;
        }

        ++v9;
        if (v12 == v8)
        {
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

void *sub_1004E12A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 visibleCells];
    sub_1000065A8(0, &qword_100ADE560);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        type metadata accessor for FullScreenLegacyCollectionViewCell();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;

          v12 = *(v11 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAssetView);
          v13 = v12;

          return v12;
        }

        ++v6;
        if (v9 == i)
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
  }

  return 0;
}

void sub_1004E144C()
{
  type metadata accessor for IndexPath();
  if (v0 <= 0x3F)
  {
    sub_1004E158C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004E158C()
{
  if (!qword_100AE6660)
  {
    type metadata accessor for NSNotificationCenter.ObservationToken();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE6660);
    }
  }
}

uint64_t sub_1004E1678(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  type metadata accessor for FullScreenLegacyCollectionViewCell();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return v6;
  }

  v8 = v7;
  v9 = IndexPath.item.getter();
  v10 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  result = swift_beginAccess();
  v12 = *&v2[v10];
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_6:
    v14 = v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
    v15 = *(v8 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_shouldHideImageryCaption);
    *(v8 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_shouldHideImageryCaption) = v14;
    if (v14 != v15)
    {
      v16 = *(v8 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
      if (v16)
      {
        v17 = v16[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption];
        v16[OBJC_IVAR____TtC7Journal19FullScreenAssetView_shouldHideImageryCaption] = v14;
        v18 = v16;
        sub_10057F6D4(v17);
      }
    }

    v19 = &v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_assetLoadingDelegate];
    swift_unknownObjectWeakLoadStrong();
    v20 = *(v19 + 1);
    v21 = v8 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_loadingDelegate;
    *(v8 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_loadingDelegate + 8) = v20;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v8 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAssetView);
      if (v22)
      {
        v23 = *(v21 + 8);
        v24 = *((swift_isaMask & *v22) + 0xC8);
        v25 = v22;
        v26 = swift_unknownObjectRetain();
        v24(v26, v23);
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v27 = *(v8 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAsset);
    *(v8 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_journalAsset) = v13;
    v28 = v13;
    sub_10073BB7C(v27);

    *(v8 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_delegate + 8) = &off_100A70398;
    swift_unknownObjectWeakAssign();
    v29 = *(v8 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
    if (v29)
    {
      v30 = *(v29 + OBJC_IVAR____TtC7Journal19FullScreenAssetView_childViewController);
      if (v30)
      {
        v31 = v30;
        [v2 addChildViewController:v31];
      }
    }

    return v8;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 8 * v9 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004E1A9C()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, &v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_initIndexPath], v2, v4);
  v7 = IndexPath.item.getter();
  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl] setCurrentPage:v7];
  sub_1004DBE9C(v7, 0);
  sub_1004DC294();
  result = sub_1004DC060();
  if ((result & 1) == 0)
  {
    v11 = v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden];
    v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden] = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }

    return [v1 setNeedsStatusBarAppearanceUpdate];
  }

  v9 = v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
  v10 = v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden];
  v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden] = v9;
  if (v9 != v10)
  {
    return [v1 setNeedsStatusBarAppearanceUpdate];
  }

  return result;
}

void sub_1004E1C14(void *a1)
{
  type metadata accessor for FullScreenLegacyCollectionViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView;
    v5 = *(v2 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
    if (v5 && (v6 = *(v5 + OBJC_IVAR____TtC7Journal19FullScreenAssetView_childViewController)) != 0 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v8 = Strong;
      v9 = a1;
      [v8 addChildViewController:v6];

      if (!UIAccessibilityIsVideoAutoplayEnabled())
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = a1;
      if (!UIAccessibilityIsVideoAutoplayEnabled())
      {
LABEL_21:

        return;
      }
    }

    v11 = *(v3 + v4);
    if (v11)
    {
      v12 = &v11[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 1);
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 8);
        v16 = v11;
        v15(ObjectType, v13);
        swift_unknownObjectRelease();
      }
    }

    v17 = *(v3 + v4);
    if (v17)
    {
      v18 = OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView;
      swift_beginAccess();
      sub_1000082B4(v17 + v18, v31, &unk_100AE6670);
      v19 = v32;
      if (v32)
      {
        v20 = v33;
        sub_10000CA14(v31, v32);
        (*(v20 + 16))(0, v19, v20);
        sub_10000BA7C(v31);
      }

      else
      {
        sub_100004F84(v31, &unk_100AE6670);
      }
    }

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_hasAppeared];

      if (v22)
      {
        v23 = *(v3 + v4);
        if (v23)
        {
          v24 = OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView;
          swift_beginAccess();
          sub_1000082B4(v23 + v24, v31, &unk_100AE6670);
          if (v32)
          {
            sub_100086C04(v31, v28);
            v25 = v23;
            sub_100004F84(v31, &unk_100AE6670);
            v26 = v29;
            v27 = v30;
            sub_10000CA14(v28, v29);
            (*(v27 + 8))(v26, v27);

            sub_10000BA7C(v28);
          }

          else
          {
            sub_100004F84(v31, &unk_100AE6670);
          }
        }
      }
    }

    goto LABEL_21;
  }
}

void sub_1004E212C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10080D688(v1, 0, 1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1004E22A4()
{
  v1 = v0;
  v2 = type metadata accessor for AssetType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100ADC680);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v8 - 8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v39 = sub_1004D81A4();
  v16 = sub_1004D7E10();
  if (v16)
  {
    v17 = v16;
    (*(v3 + 16))(v15, v16 + OBJC_IVAR____TtC7Journal5Asset_type, v2);

    v18 = *(v3 + 56);
    v18(v15, 0, 1, v2);
  }

  else
  {
    v18 = *(v3 + 56);
    v18(v15, 1, 1, v2);
  }

  (*(v3 + 104))(v12, enum case for AssetType.video(_:), v2);
  v18(v12, 0, 1, v2);
  v19 = *(v5 + 48);
  sub_1000082B4(v15, v7, &qword_100AE4290);
  sub_1000082B4(v12, &v7[v19], &qword_100AE4290);
  v20 = *(v3 + 48);
  if (v20(v7, 1, v2) == 1)
  {
    sub_100004F84(v12, &qword_100AE4290);
    sub_100004F84(v15, &qword_100AE4290);
    if (v20(&v7[v19], 1, v2) == 1)
    {
      sub_100004F84(v7, &qword_100AE4290);
      v21 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v22 = v38;
  sub_1000082B4(v7, v38, &qword_100AE4290);
  if (v20(&v7[v19], 1, v2) == 1)
  {
    sub_100004F84(v12, &qword_100AE4290);
    sub_100004F84(v15, &qword_100AE4290);
    (*(v3 + 8))(v22, v2);
LABEL_9:
    sub_100004F84(v7, &unk_100ADC680);
    v21 = 1;
    goto LABEL_11;
  }

  v23 = &v7[v19];
  v24 = v37;
  (*(v3 + 32))(v37, v23, v2);
  sub_100006A84(&qword_100ADC690, &type metadata accessor for AssetType);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v3 + 8);
  v26(v24, v2);
  sub_100004F84(v12, &qword_100AE4290);
  sub_100004F84(v15, &qword_100AE4290);
  v26(v38, v2);
  sub_100004F84(v7, &qword_100AE4290);
  v21 = v25 ^ 1;
LABEL_11:
  v27 = v39;
  [v39 setHidden:v21 & 1];

  v28 = v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden];
  v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden] = 0;
  if (v28 == 1)
  {
    [v1 setNeedsStatusBarAppearanceUpdate];
  }

  v29 = [v1 navigationController];
  [v29 setNavigationBarHidden:0];

  v30 = sub_1004D8230();
  [(objc_class *)v30 setHidden:0];

  v31 = sub_1004D8008();
  [(objc_class *)v31 setHidden:0];

  v32 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v33 = *&v1[v32];
  if (!(v33 >> 62))
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (_CocoaArrayWrapper.endIndex.getter() >= 2)
  {
LABEL_15:
    [*&v1[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl] setHidden:0];
  }

LABEL_16:
  sub_1004DC294();
  v34 = [v1 view];
  if (v34)
  {
    v35 = v34;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v36];
  }

  else
  {
    __break(1u);
  }
}

void sub_1004E28F8()
{
  v1 = sub_1004D81A4();
  [v1 setHidden:1];

  v2 = [v0 navigationController];
  [v2 setNavigationBarHidden:1];

  v3 = v0[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden];
  v0[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden] = 1;
  if ((v3 & 1) == 0)
  {
    [v0 setNeedsStatusBarAppearanceUpdate];
  }

  v4 = sub_1004D8230();
  [(objc_class *)v4 setHidden:1];

  v5 = sub_1004D8008();
  [(objc_class *)v5 setHidden:1];

  [*&v0[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl] setHidden:1];
  v6 = [v0 navigationItem];
  [v6 setRightBarButtonItems:0 animated:1];

  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() blackColor];
    [v8 setBackgroundColor:v9];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004E2A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1004E2B20, v6, v5);
}

uint64_t sub_1004E2B20()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry);
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = *(v0 + 32);

    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_100436A10;

    return sub_10077E5EC(v2, &protocol witness table for MainActor);
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1004E2C40()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004E32B8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A70430;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006A84(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1004E2F08()
{
  v0 = type metadata accessor for IndexPath();
  v33 = *(v0 - 8);
  __chkstk_darwin(v0);
  v32 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
  if (!v7)
  {
LABEL_20:

    return;
  }

  v24 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView;
  v8 = [v7 indexPathsForVisibleItems];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = v6;
  v9 = *(*&v6[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_imageryIndexes] + 16);

  v30 = v9;
  if (!v9)
  {
LABEL_16:

    v6 = v25;
    v21 = *&v25[v24];
    if (v21)
    {
      v22 = v21;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v22 reloadItemsAtIndexPaths:isa];
    }

    else
    {
    }

    [v6 setNeedsStatusBarAppearanceUpdate];
    goto LABEL_20;
  }

  v11 = 0;
  v26 = (v33 + 8);
  v27 = v33 + 16;
  v29 = (v33 + 32);
  v12 = _swiftEmptyArrayStorage;
  v28 = v10;
  while (v11 < *(v10 + 16))
  {
    v15 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v16 = *(v33 + 72);
    (*(v33 + 16))(v4, v10 + v15 + v16 * v11++, v0);
    v17 = v31 + v15;
    v18 = *(v31 + 16) + 1;
    while (--v18)
    {
      sub_100006A84(&unk_100AE0020, &type metadata accessor for IndexPath);
      v17 += v16;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (*v26)(v4, v0);
        goto LABEL_8;
      }
    }

    v19 = *v29;
    (*v29)(v32, v4, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100199B50(0, *(v12 + 2) + 1, 1);
      v12 = v34;
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      sub_100199B50(v13 > 1, v14 + 1, 1);
      v12 = v34;
    }

    *(v12 + 2) = v14 + 1;
    v19(v12 + v15 + v14 * v16, v32, v0);
LABEL_8:
    v10 = v28;
    if (v11 == v30)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1004E32C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1004E335C, v6, v5);
}

uint64_t sub_1004E335C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry);
  *(v0 + 64) = v1;
  if (v1)
  {

    *(v0 + 72) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1004E3450, v3, v2);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004E3450()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[8];
  if (Strong)
  {
    v3 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A5A018);
    (*(v3 + 8))(v2, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[6];
  v7 = v0[7];

  return _swift_task_switch(sub_1002BEC90, v6, v7);
}

void sub_1004E3530()
{
  v1 = v0;
  sub_1000065A8(0, &qword_100AD4420);
  if (qword_100AD0450 != -1)
  {
    swift_once();
  }

  v2 = qword_100AD0978;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_100B30E50;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = v3;
  v23 = v4;
  v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  if (qword_100AD04C8 != -1)
  {
    swift_once();
  }

  v7 = qword_100AD0968;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_100ACF988;
  v9 = qword_100B30E40;
  if (v8 != -1)
  {
    swift_once();
  }

  if ([objc_opt_self() isHealthDataAvailable])
  {
    children._rawValue = 0;
  }

  else
  {
    children._rawValue = 4;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000F24EC(&unk_100AD4780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100941D60;
  *(preferredElementSize + 32) = v11;
  *(preferredElementSize + 40) = v6;
  sub_1000065A8(0, &unk_100AD4D00);
  v13 = v11;
  v14 = v6;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v26.value.super.isa = 0;
  v26.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v26, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  v16 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_trashAndOpenInContextMenuButton;
  v17 = *(v1 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_trashAndOpenInContextMenuButton);
  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() systemImageNamed:v18];

  [v17 setImage:v19];
  v20 = qword_100AD08D8;
  v21 = *(v1 + v16);
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = String._bridgeToObjectiveC()();
  [v21 setAccessibilityLabel:v22];

  [*(v1 + v16) setStyle:0];
  [*(v1 + v16) setTarget:v1];
  [*(v1 + v16) setMenu:isa];
}

void sub_1004E398C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
    swift_beginAccess();
    v5 = *&v3[v4];
    if (v5 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_4:
        v6 = sub_1004D7E10();
        if (v6 && (v7 = v6, type metadata accessor for MultiPinMapAsset(), v8 = swift_dynamicCastClass(), v7, v8) && *&v3[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_currentMapPin + 8])
        {
          sub_1004DF558([a1 presentationSourceItem]);
        }

        else
        {
          sub_1004DD154([a1 presentationSourceItem]);
        }

        swift_unknownObjectRelease();
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }
}

void sub_1004E3AC0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1004DD880(a1);
  }
}

void sub_1004E3B1C()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v41 - v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = *&Strong[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry];
  if (!v11 || (v12 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView, (v13 = *&Strong[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView]) == 0))
  {

    return;
  }

  v14 = Strong;

  v15 = [v13 indexPathsForVisibleItems];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v16 + 16))
  {

    return;
  }

  (*(v4 + 16))(v6, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  (*(v4 + 32))(v9, v6, v3);
  v17 = *&v14[v12];
  if (!v17)
  {

LABEL_23:
    (*(v4 + 8))(v9, v3);
    return;
  }

  v18 = v17;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [v18 cellForItemAtIndexPath:isa];

  if (!v20)
  {
    (*(v4 + 8))(v9, v3);

    return;
  }

  type metadata accessor for FullScreenLegacyCollectionViewCell();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {

    goto LABEL_23;
  }

  v22 = *(v21 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
  if (!v22)
  {

    (*(v4 + 8))(v9, v3);
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
LABEL_26:
    sub_100004F84(&v46, &unk_100AE6670);
    return;
  }

  v23 = OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView;
  swift_beginAccess();
  sub_1000082B4(v22 + v23, &v46, &unk_100AE6670);
  if (!*(&v47 + 1))
  {
    (*(v4 + 8))(v9, v3);

    goto LABEL_26;
  }

  sub_1000F24EC(&unk_100AE6688);
  type metadata accessor for FullScreenAudioTranscriptionView();
  if (swift_dynamicCast())
  {
    v44 = v45;
    v24 = *&v45[OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_transcriptionCoordinator];
    swift_getKeyPath();
    *&v46 = v24;
    v43 = sub_100006A84(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v24 + 56);
    v26 = *(v24 + 64);

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      ObjectType = v25;
      v43 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = swift_unknownObjectWeakLoadStrong();
        if (v28)
        {
          v29 = v28;
          v41 = sub_100658B00();
          v30 = String._bridgeToObjectiveC()();

          v31 = v41;
          [v41 insertText:v30];

          swift_unknownObjectRelease();
LABEL_34:
          v39 = swift_unknownObjectWeakLoadStrong();
          v40 = v44;
          if (v39)
          {
            sub_10080D688(v14, 0, 1);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          goto LABEL_23;
        }

        swift_unknownObjectRelease();
      }

      v32 = objc_opt_self();
      v33 = [v32 currentTraitCollection];
      v41 = [v32 currentTraitCollection];
      sub_10029FCB8(ObjectType, v26, v33, v41);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v11 + 56);
        ObjectType = swift_getObjectType();
        v35 = sub_1004959AC(&off_100A5A040);
        (*(v34 + 8))(v11, v35, ObjectType, v34);

        swift_unknownObjectRelease();
      }

      if ((*(v11 + 16) & 1) == 0)
      {
        v36 = type metadata accessor for TaskPriority();
        (*(*(v36 - 8) + 56))(v2, 1, 1, v36);
        type metadata accessor for MainActor();

        v37 = static MainActor.shared.getter();
        v38 = swift_allocObject();
        v38[2] = v37;
        v38[3] = &protocol witness table for MainActor;
        v38[4] = v11;
        sub_1003E9628(0, 0, v2, &unk_100959988, v38);
      }

      goto LABEL_34;
    }

    (*(v4 + 8))(v9, v3);
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }
}

void sub_1004E42A0()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView;
  v10 = *(Strong + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = [v10 indexPathsForVisibleItems];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v12 + 16))
  {

    goto LABEL_16;
  }

  (*(v1 + 16))(v3, v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

  (*(v1 + 32))(v6, v3, v0);
  v13 = *&v8[v9];
  if (!v13)
  {

LABEL_18:
    (*(v1 + 8))(v6, v0);
    return;
  }

  v14 = v13;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [v14 cellForItemAtIndexPath:isa];

  if (!v16)
  {
    (*(v1 + 8))(v6, v0);
    goto LABEL_16;
  }

  type metadata accessor for FullScreenLegacyCollectionViewCell();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {

    goto LABEL_18;
  }

  v18 = *(v17 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
  if (v18)
  {
    v19 = OBJC_IVAR____TtC7Journal19FullScreenAssetView_fullScreenView;
    swift_beginAccess();
    sub_1000082B4(v18 + v19, &v28, &unk_100AE6670);
    if (*(&v29 + 1))
    {
      sub_1000F24EC(&unk_100AE6688);
      type metadata accessor for FullScreenAudioTranscriptionView();
      if (swift_dynamicCast())
      {
        v20 = v27;
        v21 = *&v27[OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_transcriptionCoordinator];
        swift_getKeyPath();
        *&v28 = v21;
        sub_100006A84(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v22 = objc_allocWithZone(NSAttributedString);
        v23 = String._bridgeToObjectiveC()();

        v24 = [v22 initWithString:v23];

        v25 = [objc_opt_self() generalPasteboard];
        v26 = [v24 string];
        if (!v26)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = String._bridgeToObjectiveC()();
        }

        [v25 setString:v26];

        goto LABEL_18;
      }

      (*(v1 + 8))(v6, v0);

LABEL_16:
      return;
    }

    (*(v1 + 8))(v6, v0);
  }

  else
  {

    (*(v1 + 8))(v6, v0);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  sub_100004F84(&v28, &unk_100AE6670);
}

uint64_t sub_1004E4778(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1004DD154([a1 presentationSourceItem]);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1004E47FC()
{
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_loadingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_assetLoadingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_hasLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldSave) = 2;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_textExists) = 0;
  v1 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl;
  *(v0 + v1) = [objc_allocWithZone(UIPageControl) init];
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___removeButton) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___videoMuteButton) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController____lazy_storage___closeButton) = 0;
  v2 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_trashAndOpenInContextMenuButton;
  *(v0 + v2) = [objc_allocWithZone(UIBarButtonItem) init];
  v3 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_isMuted;
  *(v0 + v3) = UIAccessibilityIsVideoAutoplayEnabled();
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 systemImageNamed:v4];

  if (v6)
  {
    v7 = [objc_opt_self() systemIndigoColor];
    v8 = [v6 imageWithTintColor:v7];
  }

  else
  {
    v8 = 0;
  }

  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_unmuteSymbol) = v8;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v5 systemImageNamed:v9];

  if (v10)
  {
    v11 = [objc_opt_self() systemIndigoColor];
    v12 = [v10 imageWithTintColor:v11];
  }

  else
  {
    v12 = 0;
  }

  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_muteSymbol) = v12;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_didScrollToInitIndexPath) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_imageryIndexes) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset) = 0;
  v13 = (v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_currentMapPin);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_didDeleteItemsObserver;
  v15 = type metadata accessor for NSNotificationCenter.ObservationToken();
  (*(*(v15 - 8) + 56))(v0 + v14, 1, 1, v15);
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_hasAppeared) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1004E4B5C(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AssetType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else if ((a1 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(a1 + 8 * v14 + 32);
      swift_unknownObjectRetain();
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_32;
  }

  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v16 = [v15 indexPath];
  swift_unknownObjectRelease();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = IndexPath.row.getter();
  (*(v9 + 8))(v11, v8);
  v18 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl;
  if (v17 == [*&v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_pageControl] currentPage])
  {
    return;
  }

  [*&v2[v18] setCurrentPage:v17];
  v19 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_journalAssets;
  swift_beginAccess();
  v20 = *&v2[v19];
  if ((v20 & 0xC000000000000001) == 0)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v20 + 8 * v17 + 32);
      goto LABEL_13;
    }

    __break(1u);
    return;
  }

LABEL_32:

  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_13:
  v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_isMuted] = 1;
  sub_1004DC294();
  if (sub_1004DC060())
  {
    v22 = v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
    v23 = v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden];
    v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden] = v22;
    if (v22 == v23)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v24 = v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden];
  v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_statusBarHidden] = 0;
  if (v24)
  {
LABEL_17:
    [v2 setNeedsStatusBarAppearanceUpdate];
  }

LABEL_18:
  if (v2[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset] == 1)
  {
    (*(v5 + 16))(v7, v21 + OBJC_IVAR____TtC7Journal5Asset_type, v4);
    v25 = (*(v5 + 88))(v7, v4);
    if (v25 != enum case for AssetType.photo(_:) && v25 != enum case for AssetType.livePhoto(_:) && v25 != enum case for AssetType.video(_:))
    {
      sub_1004E22A4();

      (*(v5 + 8))(v7, v4);
      return;
    }

    sub_1004E28F8();
  }
}

void sub_1004E4F48()
{
  v22 = OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_isMuted;
  *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_isMuted) = (*(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_isMuted) & 1) == 0;
  sub_1004DCFA0();
  v23 = v0;
  v1 = *(v0 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_collectionView);
  if (!v1)
  {
    return;
  }

  v19 = v1;
  v2 = [v19 visibleCells];
  sub_1000065A8(0, &qword_100ADE560);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_100584E10(v3);

  if (v4)
  {
    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_5:
        if (v5 < 1)
        {
          __break(1u);
          return;
        }

        v6 = 0;
        v7 = v4 & 0xC000000000000001;
        v20 = v4 & 0xC000000000000001;
        v21 = v5;
        do
        {
          if (v7)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v8 = *(v4 + 8 * v6 + 32);
          }

          v9 = v8;
          v10 = *&v8[OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView];
          if (v10)
          {
            v11 = *(v23 + v22);
            v12 = &v10[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia];
            if (swift_unknownObjectWeakLoadStrong())
            {
              v13 = *(v12 + 1);
              ObjectType = swift_getObjectType();
              v15 = v4;
              v16 = *(v13 + 32);
              v17 = v10;
              v18 = v13;
              v7 = v20;
              v16(v11, ObjectType, v18);
              v4 = v15;
              v5 = v21;
              swift_unknownObjectRelease();
            }
          }

          ++v6;
        }

        while (v5 != v6);
      }
    }
  }
}

uint64_t sub_1004E5174(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_didScrollToInitIndexPath) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_didScrollToInitIndexPath) = 1;
    sub_1004E1A9C();
  }

  sub_1000065A8(0, &qword_100AD6210);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1004E55E0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A704A8;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006A84(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_1004E5480(void *a1)
{
  type metadata accessor for FullScreenLegacyCollectionViewCell();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView;
  v4 = *(v1 + OBJC_IVAR____TtC7Journal34FullScreenLegacyCollectionViewCell_fullScreenAssetView);
  if (v4)
  {
    v5 = &v4[OBJC_IVAR____TtC7Journal19FullScreenAssetView_delegateStoppableMedia];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);
      v9 = a1;
      v10 = v4;
      v8(ObjectType, v6);
      swift_unknownObjectRelease();

      v11 = *(v2 + v3);
      if (!v11)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v13 = a1;
    v11 = *(v2 + v3);
    if (v11)
    {
LABEL_9:
      v14 = *&v11[OBJC_IVAR____TtC7Journal19FullScreenAssetView_childViewController];
      v15 = v11;
      v16 = v14;
      [v16 removeFromParentViewController];
    }
  }

  else
  {
    v12 = a1;
  }

LABEL_10:
}

uint64_t sub_1004E55F4(uint64_t a1)
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
  v10[1] = sub_100032EC8;

  return sub_1004DFE04(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1004E56D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1004E2A88(a1, v4, v5, v6);
}

uint64_t sub_1004E5784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1004DDF3C(a1, v4, v5, v7, v6);
}

uint64_t sub_1004E5880(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1004E58C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100434964(a1, v4, v5, v6);
}

uint64_t sub_1004E59B0(_OWORD *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100032EC8;

  return sub_1004D9628(a1, v1);
}

Swift::Int sub_1004E5AC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  sub_1004E6AC0(v1, v2, v3, v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    v6 = v5;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1004E5B60()
{
  v1 = *(v0 + 32);
  sub_1004E6AC0(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1004E5BFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  sub_1004E6AC0(v1, v2, v3, v4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    v6 = v5;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

BOOL sub_1004E5C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    if (v2)
    {
      if (v3)
      {
        sub_10018D564();
        v5 = v3;
        v6 = v2;
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void sub_1004E5DAC(char *a1, double a2, double a3, double a4, double a5)
{
  v11 = [v5 traitCollection];
  [v11 displayScale];
  v13 = v12;

  v14 = 1.0;
  if (v13 > 1.0)
  {
    v14 = v13;
  }

  v15 = round(v14 * a3) / v14;
  v16 = OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_quoteAreas;
  v17 = round(v14 * a5) / v14;
  swift_beginAccess();
  v18 = *&v5[v16];
  v28[0] = *&a2;
  v28[1] = *&v15;
  v28[2] = *&a4;
  v28[3] = *&v17;
  v28[4] = a1;
  v27[2] = v28;
  v19 = a1;

  v20 = sub_10019509C(sub_1004E6BDC, v27, v18);

  if (v20)
  {
  }

  else
  {
    swift_beginAccess();
    v21 = *&v5[v16];
    v22 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v5[v16] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1003E4B94(0, *(v21 + 2) + 1, 1, v21);
      *&v5[v16] = v21;
    }

    v25 = *(v21 + 2);
    v24 = *(v21 + 3);
    if (v25 >= v24 >> 1)
    {
      v21 = sub_1003E4B94((v24 > 1), v25 + 1, 1, v21);
    }

    *(v21 + 2) = v25 + 1;
    v26 = &v21[40 * v25];
    *(v26 + 4) = a2;
    *(v26 + 5) = v15;
    *(v26 + 6) = a4;
    *(v26 + 7) = v17;
    *(v26 + 8) = a1;
    *&v5[v16] = v21;
    swift_endAccess();
    v28[0] = v21;
    swift_bridgeObjectRetain_n();
    sub_1004E6148(v28);

    *&v5[v16] = v28[0];
  }
}