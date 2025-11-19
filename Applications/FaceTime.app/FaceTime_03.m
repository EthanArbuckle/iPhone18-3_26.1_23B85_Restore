uint64_t sub_10006E6A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042A10;

  return sub_100068EA8(a1, v4, v5, v6);
}

uint64_t sub_10006E75C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_10006A018(v2, v3, v4);
}

uint64_t sub_10006E810()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_100083A54(v2, v3, v4);
}

uint64_t sub_10006E8D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005C9E4;

  return sub_100083B3C(a1, v4, v5, v6);
}

uint64_t sub_10006E99C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005C9E4;

  return sub_100069794(v2, v3);
}

uint64_t sub_10006EA48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006EA88(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10006EAA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006EAF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10006EB50(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_10006EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + 32;
  v7 = *(a3 + 16);
  if (a2)
  {

    v9 = sub_100059D28(a1, v6, v7, (a2 + 16));
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }

LABEL_4:
      if (v9 < *(a4 + 16))
      {
        swift_unknownObjectRetain();
        return;
      }

      goto LABEL_12;
    }
  }

  else if (v7)
  {
    type metadata accessor for MessageID(0);
    v9 = 0;
    while (1)
    {
      v12 = *(v6 + 8 * v9);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        return;
      }
    }

    goto LABEL_4;
  }
}

void sub_10006EC6C(void **a1, uint64_t a2, void **a3)
{

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock = a1;
    *v8 = 136315394;
    v20 = a2;

    v9 = String.init<A>(reflecting:)();
    v11 = sub_10000607C(v9, v10, &v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    aBlock = a3;

    sub_1000525C4(&qword_100124FA0);
    v12 = String.init<A>(reflecting:)();
    v14 = sub_10000607C(v12, v13, &v18);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "VoiceMailAnalyticsLogger: logging core analytics for event of %s with dictionary %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v23 = sub_10007E190;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10006EECC;
  v22 = &unk_10010CD20;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

Class sub_10006EECC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100008BA0(0, &qword_100124FA8);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_10006EF68@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  sub_1000525C4(&unk_100124FE0);
  v4 = type metadata accessor for MessageStoreQuery();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D7C60;
  v9 = (v8 + v7);
  v10 = swift_allocObject();
  *(v10 + 16) = *(v1 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_providers);
  *v9 = v10;
  v11 = *(v5 + 104);
  v11(v9, enum case for MessageStoreQuery.providers(_:), v4);
  v12 = swift_allocObject();
  *(v12 + 16) = *(v1 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageTypes);
  *(v9 + v6) = v12;
  v11((v9 + v6), enum case for MessageStoreQuery.types(_:), v4);
  *(v3 + 16) = v8;
  *a1 = v3;
  v11(a1, enum case for MessageStoreQuery.and(_:), v4);
}

uint64_t sub_10006F130()
{
  v1 = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10007E1A0(v0 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_analyticsReporter);
  sub_100004E40(*(v0 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_onVoicemailsChanged));
  sub_100005964(v0 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController);
}

id sub_10006F21C()
{
  ObjectType = swift_getObjectType();
  sub_10000BC24(&v0[OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController], *&v0[OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController + 24]);

  MessageStoreController.removeDelegate(_:)();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006F448(uint64_t a1, unsigned __int8 a2)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_10008C484(a1, a2);
    v10 = sub_10000607C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "FaceTimeVoicemailManager: Is notifying listeners of messageChanges: %s", v6, 0xCu);
    sub_100005964(v7);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_10006F614(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006F6E0, v5, v4);
}

uint64_t sub_10006F6E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_onVoicemailsChanged);
    if (v3)
    {
      v3();
    }

    v4 = *(v0 + 49);
    *(v0 + 40) = *(v0 + 64);
    *(v0 + 48) = v4;
    PassthroughSubject.send(_:)();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10006F7A8()
{
  v1[99] = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[100] = v3;
  v1[101] = v2;

  return _swift_task_switch(sub_10006F874, v3, v2);
}

uint64_t sub_10006F874()
{
  v0[102] = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching Messages from FTMS", v3, 2u);
  }

  v4 = v0[99];

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  v0[103] = v6;
  *(v6 + 16) = &unk_1000D7FD8;
  *(v6 + 24) = v5;
  v7 = v4;
  sub_1000525C4(&qword_100124FD8);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_10006F9F4, v0 + 82);
}

uint64_t sub_10006F9F4()
{
  v1 = v0[87];
  v0[104] = v1;

  v2 = swift_task_alloc();
  v0[105] = v2;
  v3 = sub_1000525C4(&qword_100125700);
  v4 = sub_1000525C4(&qword_100124538);
  *v2 = v0;
  v2[1] = sub_10006FAE8;

  return Task.value.getter(v0 + 93, v1, v3, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_10006FAE8()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = sub_10006FF24;
  }

  else
  {
    v5 = sub_10006FC40;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006FC40()
{
  v13 = v0;
  v2 = *(v0 + 744);

  v3 = Logger.logObject.getter();
  LOBYTE(v4) = static os_log_type_t.default.getter();
  v5 = (v2 >> 62);
  if (os_log_type_enabled(v3, v4))
  {
    v1 = swift_slowAlloc();
    *v1 = 134349056;
    if (v5)
    {
      goto LABEL_25;
    }

    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    *(v1 + 4) = v6;

    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched %{public}ld message(s) from FTMS", v1, 0xCu);
  }

  else
  {
  }

  if (v5)
  {
    goto LABEL_19;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
LABEL_8:
    v12 = _swiftEmptyArrayStorage;
    v3 = &v12;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
LABEL_25:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_4;
    }

    v1 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          v4 = _CocoaArrayWrapper.endIndex.getter();
          if (!v4)
          {
            break;
          }

          goto LABEL_8;
        }

        if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v2 + 8 * v1 + 32);
      }

      v8 = v7;
      ++v1;
      v9 = objc_allocWithZone(type metadata accessor for FTMessage());
      v5 = sub_1000B3758(v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v4 == v1)
      {

        v10 = v12;
        goto LABEL_21;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_21:
  *(v0 + 856) = v10;

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_10006FEA0, v0 + 752);
}

uint64_t sub_10006FEBC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 856);

  return v1(v2);
}

uint64_t sub_10006FF60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006FFC4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000525C4(&qword_100124480);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100070060, 0, 0);
}

uint64_t sub_100070060()
{
  v2 = v0[2];
  v1 = v0[3];
  static TaskPriority.userInitiated.getter();
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = v2;
  v6 = sub_100091DA8(0, 0, v1, &unk_1000D8010, v4);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_100070168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = type metadata accessor for MessageFetchOptions();
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for MessageStoreQuery();
  v4[10] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v4[11] = Request;
  v4[12] = *(Request - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000702E0, 0, 0);
}

uint64_t sub_1000702E0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  sub_10006EF68(*(v0 + 80));
  (*(v3 + 104))(v1, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v2);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_10007E2C4(&qword_100124FC0, &type metadata accessor for MessageFetchOptions);
  sub_1000525C4(&unk_100125A40);
  sub_10007E260();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
  sub_10000BC24((v4 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController), *(v4 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController + 24));
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_10007049C;
  v6 = *(v0 + 104);

  return MessageStoreController.getMessages(fetchRequest:)(v6);
}

uint64_t sub_10007049C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_100070750;
  }

  else
  {
    v4 = sub_1000705B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000705B0()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    if (v4 >> 62)
    {
      v12 = v5;
      v6 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v12;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;
    v7 = v5;

    _os_log_impl(&_mh_execute_header, v1, v2, "Loading FTMessages gave us %{public}ld message(s).", v7, 0xCu);
  }

  else
  {
  }

  v8 = v0[15];
  v9 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);
  *v9 = v8;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100070750()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error loading FTMessages %@", v3, 0xCu);
    sub_10005E058(v4);
  }

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000708EC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000709D8;

  return v5();
}

uint64_t sub_1000709D8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100070AEC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for MessageStoreQuery();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for MessageID.Value(0);
  v2[18] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v6;
  v2[20] = v5;

  return _swift_task_switch(sub_100070C9C, v6, v5);
}

uint64_t sub_100070C9C()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_state);
  v0[21] = v1;
  if (!(v1 >> 62))
  {

    v23 = swift_task_alloc();
    v0[22] = v23;
    v24 = type metadata accessor for CachedVoicemailManager.Cache();
    *v23 = v0;
    v23[1] = sub_1000710C0;
    v25 = (v0 + 8);
    v26 = v1;

    return Task<>.value.getter(v25, v26, v24);
  }

  if (v1 >> 62 == 1)
  {
    v2 = v0[9];
    swift_beginAccess();
    v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v4 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

    sub_10006EB80(v2, v3, v4, v5);
    v7 = v6;

    if (v7)
    {

      v8 = v0[1];

      return v8(v7);
    }
  }

  sub_10007E1FC(v0[9] + OBJC_IVAR___MPMessageID_value, v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v0[18];
  if (EnumCaseMultiPayload != 1)
  {
    v27 = *v11;
    v28 = swift_allocObject();
    sub_1000525C4(&qword_100124FB0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000D6C50;
    if (!(v27 >> 31))
    {
      v30 = v0[12];
      v29 = v0[13];
      v31 = v0[11];
      *(v25 + 32) = v27;
      *(v28 + 16) = v25;
      *v29 = v28;
      (*(v30 + 104))(v29, enum case for MessageStoreQuery.voicemailID(_:), v31);
      v21 = swift_task_alloc();
      v0[25] = v21;
      *v21 = v0;
      v22 = sub_100071774;
      goto LABEL_14;
    }

    __break(1u);
    return Task<>.value.getter(v25, v26, v24);
  }

  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  (*(v13 + 32))(v12, v11, v15);
  v18 = swift_allocObject();
  sub_1000525C4(&qword_100124350);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000D6C50;
  (*(v13 + 16))(v20 + v19, v12, v15);
  *(v18 + 16) = v20;
  *v14 = v18;
  (*(v17 + 104))(v14, enum case for MessageStoreQuery.recordUUID(_:), v16);
  v21 = swift_task_alloc();
  v0[23] = v21;
  *v21 = v0;
  v22 = sub_100071548;
LABEL_14:
  v21[1] = v22;
  v32 = v0[13];

  return sub_100071988(v32);
}

uint64_t sub_1000710C0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1000711E0, v3, v2);
}

uint64_t sub_1000711E0()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  sub_10006EB80(v2, v3, v4, v5);
  v7 = v6;

  if (v7)
  {

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    sub_10007E1FC(v0[9] + OBJC_IVAR___MPMessageID_value, v0[18]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[15];
      v12 = v0[16];
      v14 = v0[13];
      v15 = v0[14];
      v16 = v0[11];
      v17 = v0[12];
      (*(v13 + 32))(v12, v11, v15);
      v18 = swift_allocObject();
      sub_1000525C4(&qword_100124350);
      v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000D6C50;
      (*(v13 + 16))(v20 + v19, v12, v15);
      *(v18 + 16) = v20;
      *v14 = v18;
      (*(v17 + 104))(v14, enum case for MessageStoreQuery.recordUUID(_:), v16);
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      v22 = sub_100071548;
    }

    else
    {
      v23 = *v11;
      v24 = swift_allocObject();
      sub_1000525C4(&qword_100124FB0);
      result = swift_allocObject();
      *(result + 16) = xmmword_1000D6C50;
      if (v23 >> 31)
      {
        __break(1u);
        return result;
      }

      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[11];
      *(result + 32) = v23;
      *(v24 + 16) = result;
      *v25 = v24;
      (*(v26 + 104))(v25, enum case for MessageStoreQuery.voicemailID(_:), v27);
      v21 = swift_task_alloc();
      v0[25] = v21;
      *v21 = v0;
      v22 = sub_100071774;
    }

    v21[1] = v22;
    v28 = v0[13];

    return sub_100071988(v28);
  }
}

uint64_t sub_100071548(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 192) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);

  return _swift_task_switch(sub_1000716D4, v7, v6);
}

uint64_t sub_1000716D4()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[24];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100071774(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 208) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);

  return _swift_task_switch(sub_100071900, v7, v6);
}

uint64_t sub_100071900()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100071988(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  Options = type metadata accessor for MessageFetchOptions();
  v2[8] = Options;
  v2[9] = *(Options - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for MessageStoreQuery();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v2[15] = Request;
  v2[16] = *(Request - 8);
  v2[17] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v8;
  v2[19] = v7;

  return _swift_task_switch(sub_100071BCC, v8, v7);
}

uint64_t sub_100071BCC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v13 = v0[4];
  v8 = *(v3 + 16);
  v0[20] = v8;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v2);
  sub_1000525C4(&qword_100124FB8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000D6C50;
  static MessageFetchOptions.includeProtectedApps.getter();
  v0[2] = v9;
  sub_10007E2C4(&qword_100124FC0, &type metadata accessor for MessageFetchOptions);
  sub_1000525C4(&unk_100125A40);
  sub_10007E260();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v4, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v6);
  MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
  sub_10000BC24((v13 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController), *(v13 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController + 24));
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_100071DE8;
  v11 = v0[17];

  return MessageStoreController.getMessages(fetchRequest:)(v11);
}

uint64_t sub_100071DE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_100072104;
  }

  else
  {
    v7 = sub_100071F2C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100071F2C()
{
  v1 = v0[23];
  (*(v0[16] + 8))(v0[17], v0[15]);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[23] + 32);
  }

  v4 = v0[4];

  v5 = objc_allocWithZone(type metadata accessor for FTMessage());
  v6 = v3;
  v7 = sub_1000B3758(v6);
  v8 = *(v4 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageTypes);
  v9 = dispatch thunk of Message.messageType.getter();
  if (sub_10007278C(v9, v8))
  {
    sub_1000525C4(&qword_100124C30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000D6C60;
    *(v10 + 32) = v7;
    v11 = v7;
    sub_1000727F4(v10);
  }

LABEL_11:

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_100072104()
{
  v22 = v0;
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[3];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v11 = 136446466;
    sub_10007E2C4(&qword_100124FD0, &type metadata accessor for MessageStoreQuery);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_10000607C(v12, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v19 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "FaceTimeVoiceMailManager failed to retrieve message for query %{public}s because the message store threw an error %@", v11, 0x16u);
    sub_10005E058(v19);

    sub_100005964(v20);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_10007253C()
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

uint64_t sub_100072604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000726D0, v5, v4);
}

uint64_t sub_1000726D0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10006A170;
  v6 = *(v0 + 16);

  return sub_100070AEC(v6);
}

BOOL sub_10007278C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 2;
    v6 = MessageType.rawValue.getter();
  }

  while (v6 != MessageType.rawValue.getter());
  return v4 != 0;
}

uint64_t sub_1000727F4(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_state) >> 62;
  if (!v3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v10 = OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v11 = *(v1 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_100052190(0, v11[2] + 1, 1, v11);
      *(v1 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100052190((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_10007E198;
    v15[5] = v9;
    *(v1 + v10) = v11;
    swift_endAccess();
    goto LABEL_16;
  }

  if (v3 != 1)
  {
LABEL_16:
    sub_10006DA24();
    return swift_willThrowTypedImpl();
  }

  sub_100067A38(a1, 1);

  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = v6 + 1;
        v8 = [specialized _ArrayBuffer._getElementSlowPath(_:)() identifier];
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v6 = v7;
      }

      while (v4 != v7);
    }

    else
    {
      v16 = (a1 + 32);
      do
      {
        v17 = *v16++;
        v18 = [v17 identifier];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v4;
      }

      while (v4);
    }
  }

  sub_10006F448(_swiftEmptyArrayStorage, 1u);
}

uint64_t sub_100072AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100072C04, v9, v8);
}

void sub_100072C04()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_100072E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100072FA0, v9, v8);
}

void sub_100072FA0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_100073210(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v9 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  a4(0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v15 = sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v16 = swift_allocObject();
  v16[2] = inited;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = v12;

  sub_10009A64C(0, 0, v11, a6, v16);
}

uint64_t sub_100073394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000734C0, v9, v8);
}

void sub_1000734C0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_100073730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007385C, v9, v8);
}

void sub_10007385C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_100073ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100073BF8, v8, v7);
}

void sub_100073BF8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    v5 = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v2, &v6[v5], v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    (*(v4 + 32))(v9 + v8, v2, v3);

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "MessageStoreDelegate called with nil manager", v12, 2u);
    }

    v13 = v0[2];

    v14 = *(v13 + 24);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v16;
  }

  v17 = v0[1];

  v17();
}

uint64_t sub_100073E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100073F54, v8, v7);
}

void sub_100073F54()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    v5 = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v2, &v6[v5], v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    (*(v4 + 32))(v9 + v8, v2, v3);

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "MessageStoreDelegate called with nil manager", v12, 2u);
    }

    v13 = v0[2];

    v14 = *(v13 + 24);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v16;
  }

  v17 = v0[1];

  v17();
}

uint64_t sub_100074184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = a1;

  sub_10009A64C(0, 0, v8, a4, v12);
}

uint64_t sub_1000742DC()
{
  swift_unknownObjectWeakDestroy();
  v1 = OBJC_IVAR____TtC8FaceTimeP33_63906C601B5BC2E9499615A2368A4DA020MessageStoreDelegate_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000743A8()
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

uint64_t sub_100074450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[24] = v5;
  v3[25] = v4;

  return _swift_task_switch(sub_10007451C, v5, v4);
}

uint64_t sub_10007451C()
{
  v63 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = Logger.logObject.getter();
  v60 = Strong;
  if (Strong)
  {
    LOBYTE(v3) = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v62 = v5;
      *v4 = 136315138;
      type metadata accessor for Message();
      v6 = Array.description.getter();
      v8 = sub_10000607C(v6, v7, &v62);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidAddMessages: %s", v4, 0xCu);
      sub_100005964(v5);
    }

    v2 = *(v0 + 184);
    v9 = *(v60 + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageTypes);
    v62 = _swiftEmptyArrayStorage;
    if (v2 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      v61 = v0;
      if (!i)
      {
        break;
      }

      v11 = 0;
      v12 = v2 & 0xC000000000000001;
      v13 = v2 & 0xFFFFFFFFFFFFFF8;
      v14 = *(v0 + 184) + 32;
      while (1)
      {
        if (v12)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v13 + 16))
          {
            goto LABEL_38;
          }

          v15 = *(v14 + 8 * v11);
        }

        v16 = v15;
        v3 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v2 = v16;
        v17 = dispatch thunk of Message.messageType.getter();
        if (sub_10007278C(v17, v9))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v0 = v61;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v2 = &v62;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v11;
        if (v3 == i)
        {
          v18 = v62;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_25:

    v24 = (v18 >> 62) & 1;
    if (v18 < 0)
    {
      LODWORD(v24) = 1;
    }

    v58 = v24;
    if (v24 == 1)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v21;
      if (!v21)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v25 = *(v18 + 16);
      if (!v25)
      {
        goto LABEL_41;
      }
    }

    if (v25 < 1)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v26 = 0;
    v27 = v18 & 0xC000000000000001;
    v59 = v25;
    do
    {
      if (v27)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v18 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = dispatch thunk of Message.fileSize.getter();
      if ((v31 & 1) == 0)
      {
        v32 = v30;
        sub_1000525C4(&qword_100124F88);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000D7C70;
        *(inited + 32) = 0x6D766C5F7369;
        *(inited + 40) = 0xE600000000000000;
        sub_100008BA0(0, &qword_100124F90);
        dispatch thunk of Message.messageType.getter();
        v34 = MessageType.rawValue.getter();
        v35 = v34 == MessageType.rawValue.getter();
        *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(v35);
        *(inited + 56) = 0x6D76765F7369;
        *(inited + 64) = 0xE600000000000000;
        dispatch thunk of Message.messageType.getter();
        v36 = MessageType.rawValue.getter();
        v37 = v36 == MessageType.rawValue.getter();
        *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(v37);
        *(inited + 80) = 0x6E6F697461727564;
        *(inited + 88) = 0xE800000000000000;
        dispatch thunk of Message.duration.getter();
        *(inited + 96) = [objc_allocWithZone(NSNumber) initWithDouble:round(v38)];
        *(inited + 104) = 0xD000000000000011;
        *(inited + 112) = 0x80000001000DCB20;
        *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v32];
        v39 = sub_1000BFCD0(inited);
        v25 = v59;
        v27 = v18 & 0xC000000000000001;
        swift_setDeallocating();
        sub_1000525C4(&qword_100124F98);
        swift_arrayDestroy();
        sub_1000BEA04(v39);
        v41 = v40;

        sub_10006EC6C(0xD00000000000002DLL, 0x80000001000DCB40, v41);
      }

      ++v26;
    }

    while (v25 != v26);
LABEL_41:
    v0 = v61;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v62 = v45;
      *v44 = 136315138;
      type metadata accessor for Message();
      v46 = Array.description.getter();
      v48 = sub_10000607C(v46, v47, &v62);

      *(v44 + 4) = v48;
      v0 = v61;
      _os_log_impl(&_mh_execute_header, v42, v43, "messageStoreDidAddMessages(filtered): %s", v44, 0xCu);
      sub_100005964(v45);
    }

    if (!v25)
    {

      v2 = v60;
      goto LABEL_59;
    }

    if (v58)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *(v18 + 16);
    }

    if (!v3)
    {

      v53 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_56:

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v54 = v53;
LABEL_57:

        v2 = v60;
        sub_1000727F4(v54);
        goto LABEL_58;
      }

LABEL_63:

      sub_1000525C4(&qword_100124DB8);
      v54 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_57;
    }

    v62 = _swiftEmptyArrayStorage;
    v2 = &v62;
    v21 = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v3 & 0x8000000000000000) == 0)
    {
      v49 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v50 = *(v18 + 8 * v49 + 32);
        }

        v51 = v50;
        ++v49;
        v52 = objc_allocWithZone(type metadata accessor for FTMessage());
        sub_1000B3758(v51);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v3 != v49);

      v0 = v61;
      v53 = v62;
      if (!(v62 >> 62))
      {
        goto LABEL_56;
      }

      goto LABEL_63;
    }

    goto LABEL_65;
  }

  LOBYTE(v3) = static os_log_type_t.error.getter();
  v19 = os_log_type_enabled(v2, v3);
  v20 = *(v0 + 184);
  if (v19)
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    if (!(v20 >> 62))
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:
      *(v21 + 4) = v22;
      v23 = v21;

      _os_log_impl(&_mh_execute_header, v2, v3, "ignoring %ld added messages, no more self", v23, 0xCu);

      goto LABEL_59;
    }

LABEL_66:
    v57 = v21;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v21 = v57;
    goto LABEL_23;
  }

LABEL_58:

LABEL_59:

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100074DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_100074E80, v5, v4);
}

uint64_t sub_100074E80()
{
  v47 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = Logger.logObject.getter();
  if (!Strong)
  {
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v2, v20);
    v22 = *(v0 + 56);
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      if (v22 >> 62)
      {
        v43 = v23;
        v24 = _CocoaArrayWrapper.endIndex.getter();
        v23 = v43;
      }

      else
      {
        v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v23 + 4) = v24;
      v25 = v23;

      _os_log_impl(&_mh_execute_header, v2, v20, "ignoring %ld updated messages, no more self", v25, 0xCu);

      goto LABEL_48;
    }

    goto LABEL_39;
  }

  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    type metadata accessor for Message();
    v6 = Array.description.getter();
    v8 = sub_10000607C(v6, v7, &v46);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidUpdateMessages: %s", v4, 0xCu);
    sub_100005964(v5);
  }

  v9 = *(v0 + 56);
  v10 = *(Strong + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageTypes);
  v46 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v44 = Strong;

    v45 = v0;
    if (!i)
    {
      break;
    }

    v12 = 0;
    v13 = v9 & 0xC000000000000001;
    Strong = v9 & 0xFFFFFFFFFFFFFF8;
    v14 = *(v0 + 56) + 32;
    while (1)
    {
      if (v13)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(Strong + 16))
        {
          goto LABEL_41;
        }

        v15 = *(v14 + 8 * v12);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v9 = v16;
      v18 = dispatch thunk of Message.messageType.getter();
      if (sub_10007278C(v18, v10))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v0 = v45;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = &v46;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v12;
      if (v17 == i)
      {
        v19 = v46;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_25:

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46 = v29;
    *v28 = 136315138;
    type metadata accessor for Message();
    v30 = Array.description.getter();
    v32 = sub_10000607C(v30, v31, &v46);

    *(v28 + 4) = v32;
    v0 = v45;
    _os_log_impl(&_mh_execute_header, v26, v27, "messageStoreDidUpdateMessages(filtered): %s", v28, 0xCu);
    sub_100005964(v29);
  }

  v2 = v44;
  if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
      if (!v40)
      {

        v38 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_37:

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          v39 = v38;
LABEL_38:

          sub_1000754A8(v39);
LABEL_39:

          goto LABEL_48;
        }

LABEL_53:

        sub_1000525C4(&qword_100124DB8);
        v39 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_38;
      }

      v33 = v40;
      v46 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v33 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v34 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v35 = *(v19 + 8 * v34 + 32);
          }

          v36 = v35;
          ++v34;
          v37 = objc_allocWithZone(type metadata accessor for FTMessage());
          sub_1000B3758(v36);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v33 != v34);

        v38 = v46;
        if (!(v46 >> 62))
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }

      __break(1u);
    }
  }

  else
  {
    v33 = *(v19 + 16);
    if (v33)
    {
      v46 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      goto LABEL_31;
    }
  }

LABEL_48:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1000754A8(unint64_t a1)
{
  sub_10006A7D0(a1);
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v11 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = [specialized _ArrayBuffer._getElementSlowPath(_:)() identifier];
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v2 != v6);
    }

    else
    {
      v8 = (a1 + 32);
      do
      {
        v9 = *v8++;
        v10 = [v9 identifier];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v2;
      }

      while (v2);
    }

    v3 = v11;
  }

  sub_10006F448(v3, 2u);
}

uint64_t sub_100075794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_100075860, v5, v4);
}

uint64_t sub_100075860()
{
  v47 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = Logger.logObject.getter();
  if (!Strong)
  {
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v2, v20);
    v22 = *(v0 + 56);
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      if (v22 >> 62)
      {
        v43 = v23;
        v24 = _CocoaArrayWrapper.endIndex.getter();
        v23 = v43;
      }

      else
      {
        v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v23 + 4) = v24;
      v25 = v23;

      _os_log_impl(&_mh_execute_header, v2, v20, "ignoring %ld deleted messages, no more self", v25, 0xCu);

      goto LABEL_48;
    }

    goto LABEL_39;
  }

  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    type metadata accessor for Message();
    v6 = Array.description.getter();
    v8 = sub_10000607C(v6, v7, &v46);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidMoveToTrashMessages: %s", v4, 0xCu);
    sub_100005964(v5);
  }

  v9 = *(v0 + 56);
  v10 = *(Strong + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageTypes);
  v46 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v44 = Strong;

    v45 = v0;
    if (!i)
    {
      break;
    }

    v12 = 0;
    v13 = v9 & 0xC000000000000001;
    Strong = v9 & 0xFFFFFFFFFFFFFF8;
    v14 = *(v0 + 56) + 32;
    while (1)
    {
      if (v13)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(Strong + 16))
        {
          goto LABEL_41;
        }

        v15 = *(v14 + 8 * v12);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v9 = v16;
      v18 = dispatch thunk of Message.messageType.getter();
      if (sub_10007278C(v18, v10))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v0 = v45;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = &v46;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v12;
      if (v17 == i)
      {
        v19 = v46;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_25:

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46 = v29;
    *v28 = 136315138;
    type metadata accessor for Message();
    v30 = Array.description.getter();
    v32 = sub_10000607C(v30, v31, &v46);

    *(v28 + 4) = v32;
    v0 = v45;
    _os_log_impl(&_mh_execute_header, v26, v27, "messageStoreDidMoveToTrashMessages(filtered): %s", v28, 0xCu);
    sub_100005964(v29);
  }

  v2 = v44;
  if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
      if (!v40)
      {

        v38 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_37:

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          v39 = v38;
LABEL_38:

          sub_1000754A8(v39);
LABEL_39:

          goto LABEL_48;
        }

LABEL_53:

        sub_1000525C4(&qword_100124DB8);
        v39 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_38;
      }

      v33 = v40;
      v46 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v33 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v34 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v35 = *(v19 + 8 * v34 + 32);
          }

          v36 = v35;
          ++v34;
          v37 = objc_allocWithZone(type metadata accessor for FTMessage());
          sub_1000B3758(v36);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v33 != v34);

        v38 = v46;
        if (!(v46 >> 62))
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }

      __break(1u);
    }
  }

  else
  {
    v33 = *(v19 + 16);
    if (v33)
    {
      v46 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      goto LABEL_31;
    }
  }

LABEL_48:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100075E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100075FBC, v6, v5);
}

uint64_t sub_100075FBC()
{
  v32 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = Logger.logObject.getter();
  if (Strong)
  {
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v31 = v5;
      *v4 = 136315138;
      v6 = Array.description.getter();
      v8 = sub_10000607C(v6, v7, &v31);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidDeleteMessagesWithUUIDs: %s", v4, 0xCu);
      sub_100005964(v5);
    }

    v9 = *(v0 + 72);
    v10 = *(v9 + 16);
    v11 = _swiftEmptyArrayStorage;
    if (v10)
    {
      v27 = Strong;
      v12 = *(v0 + 88);
      v31 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v13 = *(v12 + 16);
      v12 += 16;
      v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v29 = *(v12 + 56);
      v30 = v13;
      v28 = (v12 - 8);
      do
      {
        v16 = *(v0 + 96);
        v15 = *(v0 + 104);
        v17 = *(v0 + 80);
        v30(v15, v14, v17);
        v30(v16, v15, v17);
        v18 = type metadata accessor for MessageID(0);
        v19 = objc_allocWithZone(v18);
        v30(&v19[OBJC_IVAR___MPMessageID_value], v16, v17);
        type metadata accessor for MessageID.Value(0);
        swift_storeEnumTagMultiPayload();
        *(v0 + 40) = v19;
        *(v0 + 48) = v18;
        objc_msgSendSuper2((v0 + 40), "init");
        v20 = *v28;
        (*v28)(v16, v17);
        v20(v15, v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v14 += v29;
        --v10;
      }

      while (v10);
      v11 = v31;
      Strong = v27;
    }

    sub_100076380(v11);
  }

  else
  {
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v2, v21);
    v23 = *(v0 + 72);
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = *(v23 + 16);

      _os_log_impl(&_mh_execute_header, v2, v21, "ignoring %ld deleted messageUUIDs, no more self", v24, 0xCu);
    }

    else
    {
    }

    Strong = v2;
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100076380(unint64_t a1)
{
  v1 = sub_10006A370(a1);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    type metadata accessor for MessageID(0);
    v6 = Array.description.getter();
    v8 = sub_10000607C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager did remove: %s", v4, 0xCu);
    sub_100005964(v5);
  }

  if (!(v1 >> 62))
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_5:
    sub_10006F448(v1, 0);
  }

LABEL_6:
}

uint64_t sub_1000766A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007676C, v4, v3);
}

uint64_t sub_10007676C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_state) = 0x8000000000000000;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "messageStoreDidReconnect(), triggering onVoicemailsChanged().", v5, 2u);
    }

    sub_10006F448(0, 3u);
  }

  else
  {
    v2 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v6, "ignoring messageStoreDidReconnect(), no more self", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100076900(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000769C8, v4, v3);
}

uint64_t sub_1000769C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC8FaceTime22CachedVoicemailManager_state) = 0x8000000000000000;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "messageStoreRequiresRefetch(), triggering onVoicemailsChanged().", v5, 2u);
    }

    sub_10006F448(0, 3u);
  }

  else
  {
    v2 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v6, "ignoring messageStoreRequiresRefetch(), no more self", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100076C40(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for MessageStoreQuery();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v6;
  v2[18] = v5;

  return _swift_task_switch(sub_100076DD8, v6, v5);
}

uint64_t sub_100076DD8()
{
  v9 = v0;
  v1 = sub_10007E708(v0[7]);
  if (!v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v8 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000607C(0x654D3C7961727241, 0xEE003E6567617373, &v8);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      sub_100005964(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[19] = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    return _swift_task_switch(sub_100076FE8, 0, 0);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100076FE8()
{
  type metadata accessor for MainActor();
  *(v0 + 160) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007707C, v2, v1);
}

uint64_t sub_10007707C()
{
  v1 = v0[19];

  sub_100077950(v1);
  v2 = v0[17];
  v3 = v0[18];

  return _swift_task_switch(sub_100077120, v2, v3);
}

uint64_t sub_100077120()
{
  v1 = v0[19];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    sub_10006F448(_swiftEmptyArrayStorage, 0);

    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.deleteMessages(query:)(v3);
  }

  v4 = 0;
  v5 = v0[19];
  v36 = v0;
  v6 = v0[13];
  v7 = v5 & 0xC000000000000001;
  v34 = (v6 + 16);
  v35 = v5 & 0xC000000000000001;
  v32 = v5 + 32;
  v33 = (v6 + 8);
  do
  {
    if (v7)
    {
      v8 = v36;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v32 + 8 * v4);
      v8 = v36;
    }

    v11 = v8[15];
    v10 = v8[16];
    v12 = v8[12];
    ++v4;
    v37 = v9;
    dispatch thunk of Message.recordUUID.getter();
    v13 = *v34;
    (*v34)(v11, v10, v12);
    v14 = type metadata accessor for MessageID(0);
    v15 = objc_allocWithZone(v14);
    v13(&v15[OBJC_IVAR___MPMessageID_value], v11, v12);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v8[5] = v15;
    v8[6] = v14;
    objc_msgSendSuper2((v8 + 5), "init");
    v16 = *v33;
    (*v33)(v11, v12);
    v16(v10, v12);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v7 = v35;
  }

  while (v2 != v4);
  v0 = v36;
  v17 = v36[13];
  sub_10006F448(_swiftEmptyArrayStorage, 0);

  sub_1000A8ED0(0, v2, 0);
  for (i = 0; i != v2; ++i)
  {
    if (v35)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v32 + 8 * i);
    }

    v20 = v19;
    swift_beginAccess();
    v21 = v20;
    dispatch thunk of Message.recordUUID.getter();
    swift_endAccess();

    v23 = _swiftEmptyArrayStorage[2];
    v22 = _swiftEmptyArrayStorage[3];
    if (v23 >= v22 >> 1)
    {
      sub_1000A8ED0(v22 > 1, v23 + 1, 1);
    }

    v24 = v36[14];
    v25 = v36[12];
    _swiftEmptyArrayStorage[2] = v23 + 1;
    (*(v17 + 32))(_swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v23, v24, v25);
  }

LABEL_19:

  v0[21] = _swiftEmptyArrayStorage;
  v27 = v0[10];
  v26 = v0[11];
  v28 = v0[9];
  sub_10000BC24((v0[8] + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController), *(v0[8] + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController + 24));
  v29 = swift_allocObject();
  *(v29 + 16) = _swiftEmptyArrayStorage;
  *v26 = v29;
  (*(v27 + 104))(v26, enum case for MessageStoreQuery.recordUUID(_:), v28);

  v30 = swift_task_alloc();
  v0[22] = v30;
  *v30 = v0;
  v30[1] = sub_100077588;
  v3 = v0[11];

  return MessageStoreController.deleteMessages(query:)(v3);
}

uint64_t sub_100077588()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = v2[17];
    v4 = v2[18];

    return _swift_task_switch(sub_100077728, v3, v4);
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_100077728()
{
  v14 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v3 = 136315394;
    v6 = Array.description.getter();
    v8 = v7;

    v9 = sub_10000607C(v6, v8, &v13);

    *(v3 + 4) = v9;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v10;
    *v4 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to delete messages with recordUUIDs %s with error: %@", v3, 0x16u);
    sub_10005E058(v4);

    sub_100005964(v5);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100077950(unint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v3 = result;
  if (!result)
  {
  }

LABEL_5:
  if (v3 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        atomic_store(1u, (specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyIsDeleted));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        atomic_store(1u, (v6 + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyIsDeleted));
        --v3;
      }

      while (v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100077C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100077CE4, v5, v4);
}

uint64_t sub_100077CE4()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_1000525C4(&qword_100124DB8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10007E704;

  return sub_100076C40(v2);
}

uint64_t sub_100077DC0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1000525C4(&unk_100126340);
  v2[6] = swift_task_alloc();
  sub_1000525C4(&qword_100124348);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_100077F6C, v5, v4);
}

uint64_t sub_100077F6C()
{
  v15 = v0;
  v0[15] = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_10000607C(0x655273416B72616DLL, 0xEE00293A5F286461, &v14);
    *(v3 + 12) = 2080;
    sub_1000525C4(&qword_100124DB8);
    v4 = Array.description.getter();
    v6 = sub_10000607C(v4, v5, &v14);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Setting messages as read %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v7 = sub_10007E708(v0[4]);
  if (!v7)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_10000607C(0x654D3C7961727241, 0xEE003E6567617373, &v14);
      _os_log_impl(&_mh_execute_header, v8, v9, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v10, 0xCu);
      sub_100005964(v11);
    }

    v7 = _swiftEmptyArrayStorage;
  }

  v0[16] = v7;
  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    return _swift_task_switch(sub_1000782DC, 0, 0);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000782DC()
{
  type metadata accessor for MainActor();
  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100078370, v2, v1);
}

uint64_t sub_100078370()
{
  v1 = v0[16];

  sub_100078DC0(v1);
  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100078414, v2, v3);
}

uint64_t sub_100078414()
{
  v45 = v0;
  receiver = v0[8].receiver;
  if (receiver >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v28 = _swiftEmptyArrayStorage;
    sub_10006F448(_swiftEmptyArrayStorage, 2u);

    goto LABEL_19;
  }

  v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v44 = _swiftEmptyArrayStorage;
  v3 = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.updateMessages(_:)(v3);
  }

  v4 = 0;
  v5 = v0[8].receiver;
  v40 = v0;
  v6 = v0[5].receiver;
  v42 = v5 & 0xC000000000000001;
  v39 = (v6 + 16);
  v37 = v5 + 32;
  v38 = (v6 + 8);
  v43 = v2;
  do
  {
    if (v42)
    {
      v7 = v40;
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v37 + 8 * v4);
      v7 = v40;
    }

    super_class = v7[5].super_class;
    v9 = v7[6].receiver;
    v11 = v7[4].super_class;
    ++v4;
    v41 = v8;
    dispatch thunk of Message.recordUUID.getter();
    v12 = *v39;
    (*v39)(super_class, v9, v11);
    v13 = type metadata accessor for MessageID(0);
    v14 = objc_allocWithZone(v13);
    v12(&v14[OBJC_IVAR___MPMessageID_value], super_class, v11);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v7[1].receiver = v14;
    v7[1].super_class = v13;
    objc_msgSendSuper2(v7 + 1, "init");
    v15 = *v38;
    (*v38)(super_class, v11);
    v15(v9, v11);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v43 != v4);
  v0 = v40;
  v16 = v40[5].receiver;
  sub_10006F448(v44, 2u);

  v44 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v17 = 0;
  v18 = (v16 + 56);
  do
  {
    if (v42)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v37 + 8 * v17);
    }

    v27 = v26;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v19 = v40[4].receiver;
    v20 = v40[4].super_class;
    v21 = v40[3].receiver;
    v22 = v40[3].super_class;
    ++v17;
    dispatch thunk of Message.recordUUID.getter();
    v23 = *v18;
    (*v18)(v19, 1, 1, v20);
    v23(v22, 1, 1, v20);
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
    v25 = objc_allocWithZone(type metadata accessor for MessageUpdate());
    MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v43 != v17);
  v28 = v44;
LABEL_19:
  v0[9].receiver = v28;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_10000607C(0x655273416B72616DLL, 0xEE00293A5F286461, &v44);
    *(v31 + 12) = 2080;
    type metadata accessor for FTMessage();
    v32 = Array.description.getter();
    v34 = sub_10000607C(v32, v33, &v44);

    *(v31 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s: Updating Messages with read: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000BC24((v0[2].super_class + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController), *(v0[2].super_class + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController + 24));
  v35 = swift_task_alloc();
  v0[9].super_class = v35;
  *v35 = v0;
  *(v35 + 1) = sub_1000789FC;
  v3 = v28;

  return MessageStoreController.updateMessages(_:)(v3);
}

uint64_t sub_1000789FC()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);

    return _swift_task_switch(sub_100078B94, v4, v5);
  }

  else
  {

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_100078B94()
{
  v14 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v3 = 136315394;
    type metadata accessor for FTMessage();
    v6 = Array.description.getter();
    v8 = v7;

    v9 = sub_10000607C(v6, v8, &v13);

    *(v3 + 4) = v9;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v10;
    *v4 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as read with error: %@", v3, 0x16u);
    sub_10005E058(v4);

    sub_100005964(v5);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100078DC0(unint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v3 = result;
  if (!result)
  {
  }

LABEL_5:
  if (v3 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        ++v4;
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyRead;
        os_unfair_lock_lock(v5);
        *(v5 + 4) = 1;
        os_unfair_lock_unlock(v5);
        swift_unknownObjectRelease();
      }

      while (v3 != v4);
    }

    else
    {
      v6 = (a1 + 32);
      do
      {
        v7 = *v6++;
        v8 = &v7[OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyRead];
        v9 = v7;
        os_unfair_lock_lock(v8);
        LOBYTE(v8[1]._os_unfair_lock_opaque) = 1;
        os_unfair_lock_unlock(v8);

        --v3;
      }

      while (v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000790C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100079190, v5, v4);
}

uint64_t sub_100079190()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_1000525C4(&qword_100124DB8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10007926C;

  return sub_100077DC0(v2);
}

uint64_t sub_10007926C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000793C8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1000525C4(&unk_100126340);
  v2[6] = swift_task_alloc();
  sub_1000525C4(&qword_100124348);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v5;
  v2[16] = v4;

  return _swift_task_switch(sub_10007958C, v5, v4);
}

uint64_t sub_10007958C()
{
  v9 = v0;
  v1 = sub_10007E708(v0[4]);
  if (!v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v8 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000607C(0x654D3C7961727241, 0xEE003E6567617373, &v8);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      sub_100005964(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[17] = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    return _swift_task_switch(sub_1000797C4, 0, 0);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000797C4()
{
  type metadata accessor for MainActor();
  *(v0 + 144) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100079858, v2, v1);
}

uint64_t sub_100079858()
{
  v1 = v0[17];

  sub_10007B7E0(v1, 482, 2);
  v2 = v0[15];
  v3 = v0[16];

  return _swift_task_switch(sub_100079904, v2, v3);
}

uint64_t sub_100079904()
{
  v47 = v0;
  super_class = v0[8].super_class;
  if (super_class >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v28 = _swiftEmptyArrayStorage;
    sub_10006F448(_swiftEmptyArrayStorage, 2u);

    goto LABEL_19;
  }

  v2 = *((super_class & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v46 = _swiftEmptyArrayStorage;
  v3 = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.updateMessages(_:)(v3);
  }

  v4 = 0;
  v5 = v0[8].super_class;
  v42 = v0;
  receiver = v0[5].receiver;
  v44 = v5 & 0xC000000000000001;
  v41 = (receiver + 16);
  v39 = v5 + 32;
  v40 = (receiver + 8);
  v45 = v2;
  do
  {
    if (v44)
    {
      v7 = v42;
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v39 + 8 * v4);
      v7 = v42;
    }

    v10 = v7[6].super_class;
    v9 = v7[7].receiver;
    v11 = v7[4].super_class;
    ++v4;
    v43 = v8;
    dispatch thunk of Message.recordUUID.getter();
    v12 = *v41;
    (*v41)(v10, v9, v11);
    v13 = type metadata accessor for MessageID(0);
    v14 = objc_allocWithZone(v13);
    v12(&v14[OBJC_IVAR___MPMessageID_value], v10, v11);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v7[1].receiver = v14;
    v7[1].super_class = v13;
    objc_msgSendSuper2(v7 + 1, "init");
    v15 = *v40;
    (*v40)(v10, v11);
    v15(v9, v11);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v45 != v4);
  v0 = v42;
  v16 = v42[5].receiver;
  sub_10006F448(v46, 2u);

  v46 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v17 = 0;
  v18 = (v16 + 56);
  do
  {
    if (v44)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v39 + 8 * v17);
    }

    v27 = v26;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v19 = v42[4].receiver;
    v20 = v42[4].super_class;
    v21 = v42[3].receiver;
    v22 = v42[3].super_class;
    ++v17;
    dispatch thunk of Message.recordUUID.getter();
    v23 = *v18;
    (*v18)(v19, 1, 1, v20);
    v23(v22, 1, 1, v20);
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
    v25 = objc_allocWithZone(type metadata accessor for MessageUpdate());
    MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v45 != v17);

  v28 = v46;
LABEL_19:
  v29 = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;
  v0[9].super_class = v28;
  v0[10].receiver = v29;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 136315138;
    type metadata accessor for MessageUpdate();
    v34 = Array.description.getter();
    v36 = sub_10000607C(v34, v35, &v46);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[moveToTrash] Updating messages in FaceTimeVoicemailManager - Updates: %s", v32, 0xCu);
    sub_100005964(v33);
  }

  sub_10000BC24((v0[2].super_class + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController), *(v0[2].super_class + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController + 24));
  v37 = swift_task_alloc();
  v0[10].super_class = v37;
  *v37 = v0;
  *(v37 + 1) = sub_100079EBC;
  v3 = v28;

  return MessageStoreController.updateMessages(_:)(v3);
}

uint64_t sub_100079EBC()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[15];
    v4 = v2[16];

    return _swift_task_switch(sub_10007A050, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

size_t sub_10007A050()
{
  v35 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v4 = 136315394;
    if (v3 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      v32 = v5;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v5;
      if (v7)
      {
LABEL_4:
        v34 = _swiftEmptyArrayStorage;
        result = sub_1000A8ED0(0, v7 & ~(v7 >> 63), 0);
        if (v7 < 0)
        {
          __break(1u);
          return result;
        }

        v29 = v6;
        v30 = v2;
        v31 = v1;
        v9 = v34;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = 0;
          v11 = v0[10];
          do
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            MessageUpdate.recordUUID.getter();
            swift_unknownObjectRelease();
            v34 = v9;
            v13 = v9[2];
            v12 = v9[3];
            if (v13 >= v12 >> 1)
            {
              sub_1000A8ED0(v12 > 1, v13 + 1, 1);
              v9 = v34;
            }

            v14 = v0[12];
            v15 = v0[9];
            ++v10;
            v9[2] = v13 + 1;
            (*(v11 + 32))(v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v13, v14, v15);
          }

          while (v7 != v10);
        }

        else
        {
          v16 = v0[10];
          v17 = (v0[19] + 32);
          do
          {
            v18 = *v17;
            MessageUpdate.recordUUID.getter();

            v34 = v9;
            v20 = v9[2];
            v19 = v9[3];
            if (v20 >= v19 >> 1)
            {
              sub_1000A8ED0(v19 > 1, v20 + 1, 1);
              v9 = v34;
            }

            v21 = v0[11];
            v22 = v0[9];
            v9[2] = v20 + 1;
            (*(v16 + 32))(v9 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v21, v22);
            ++v17;
            --v7;
          }

          while (v7);
        }

        v1 = v31;
        v2 = v30;
        v6 = v29;
        goto LABEL_19;
      }
    }

LABEL_19:
    v23 = Array.description.getter();
    v25 = v24;

    v26 = sub_10000607C(v23, v25, &v33);

    *(v4 + 4) = v26;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v27;
    *v32 = v27;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as deleted with error: %@", v4, 0x16u);
    sub_10005E058(v32);

    sub_100005964(v6);

    goto LABEL_20;
  }

LABEL_20:

  v28 = v0[1];

  return v28();
}

uint64_t sub_10007A610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007A6DC, v5, v4);
}

uint64_t sub_10007A6DC()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_1000525C4(&qword_100124DB8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10007E704;

  return sub_1000793C8(v2);
}

uint64_t sub_10007A7B8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1000525C4(&unk_100126340);
  v2[6] = swift_task_alloc();
  sub_1000525C4(&qword_100124348);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v5;
  v2[15] = v4;

  return _swift_task_switch(sub_10007A970, v5, v4);
}

uint64_t sub_10007A970()
{
  v9 = v0;
  v1 = sub_10007E708(v0[4]);
  if (!v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v8 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000607C(0x654D3C7961727241, 0xEE003E6567617373, &v8);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      sub_100005964(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[16] = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    return _swift_task_switch(sub_10007AB94, 0, 0);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007AB94()
{
  type metadata accessor for MainActor();
  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007AC28, v2, v1);
}

uint64_t sub_10007AC28()
{
  v1 = v0[16];

  sub_10007B7E0(v1, 510, 1);
  v2 = v0[14];
  v3 = v0[15];

  return _swift_task_switch(sub_10007ACD4, v2, v3);
}

uint64_t sub_10007ACD4()
{
  v47 = v0;
  receiver = v0[8].receiver;
  if (receiver >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v0[9].receiver = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v28 = _swiftEmptyArrayStorage;
    sub_10006F448(_swiftEmptyArrayStorage, 2u);

    goto LABEL_19;
  }

  v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[9].receiver = v2;
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v46 = _swiftEmptyArrayStorage;
  v3 = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.updateMessages(_:)(v3);
  }

  v4 = 0;
  v5 = v0[8].receiver;
  v42 = v0;
  v6 = v0[5].receiver;
  v44 = v5 & 0xC000000000000001;
  v41 = (v6 + 16);
  v39 = v5 + 32;
  v40 = (v6 + 8);
  v45 = v2;
  do
  {
    if (v44)
    {
      v7 = v42;
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v39 + 8 * v4);
      v7 = v42;
    }

    v10 = v7[6].receiver;
    super_class = v7[6].super_class;
    v11 = v7[4].super_class;
    ++v4;
    v43 = v8;
    dispatch thunk of Message.recordUUID.getter();
    v12 = *v41;
    (*v41)(v10, super_class, v11);
    v13 = type metadata accessor for MessageID(0);
    v14 = objc_allocWithZone(v13);
    v12(&v14[OBJC_IVAR___MPMessageID_value], v10, v11);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v7[1].receiver = v14;
    v7[1].super_class = v13;
    objc_msgSendSuper2(v7 + 1, "init");
    v15 = *v40;
    (*v40)(v10, v11);
    v15(super_class, v11);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v45 != v4);
  v0 = v42;
  v16 = v42[5].receiver;
  sub_10006F448(v46, 2u);

  v46 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v17 = 0;
  v18 = (v16 + 56);
  do
  {
    if (v44)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v39 + 8 * v17);
    }

    v27 = v26;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v19 = v42[4].receiver;
    v20 = v42[4].super_class;
    v21 = v42[3].receiver;
    v22 = v42[3].super_class;
    ++v17;
    dispatch thunk of Message.recordUUID.getter();
    v23 = *v18;
    (*v18)(v19, 1, 1, v20);
    v23(v22, 1, 1, v20);
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
    v25 = objc_allocWithZone(type metadata accessor for MessageUpdate());
    MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v45 != v17);
  v28 = v46;
LABEL_19:
  v29 = OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_logger;
  v0[9].super_class = v28;
  v0[10].receiver = v29;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 136315138;
    type metadata accessor for MessageUpdate();
    v34 = Array.description.getter();
    v36 = sub_10000607C(v34, v35, &v46);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[removeFromTrash] Updating messages in FaceTimeVoicemailManager - Updates: %s", v32, 0xCu);
    sub_100005964(v33);
  }

  sub_10000BC24((v0[2].super_class + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController), *(v0[2].super_class + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController + 24));
  v37 = swift_task_alloc();
  v0[10].super_class = v37;
  *v37 = v0;
  *(v37 + 1) = sub_10007B280;
  v3 = v28;

  return MessageStoreController.updateMessages(_:)(v3);
}

uint64_t sub_10007B280()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {

    v4 = *(v2 + 112);
    v5 = *(v2 + 120);

    return _swift_task_switch(sub_10007B434, v4, v5);
  }

  else
  {

    v6 = *(v3 + 8);

    return v6();
  }
}

size_t sub_10007B434()
{
  v33 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v4 = 136315394;
    if (v3)
    {
      v29 = v5;
      v7 = v0[18];
      v32 = _swiftEmptyArrayStorage;
      result = sub_1000A8ED0(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      v27 = v2;
      v28 = v1;
      v9 = 0;
      v10 = v0[16];
      v11 = v0[10];
      v12 = v32;
      v13 = v10 & 0xC000000000000001;
      v30 = v10 + 32;
      do
      {
        if (v13)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v30 + 8 * v9);
        }

        v15 = v14;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        dispatch thunk of Message.recordUUID.getter();

        v32 = v12;
        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          sub_1000A8ED0(v16 > 1, v17 + 1, 1);
          v12 = v32;
        }

        v18 = v0[18];
        v19 = v0[11];
        v20 = v0[9];
        ++v9;
        v12[2] = v17 + 1;
        (*(v11 + 32))(v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17, v19, v20);
      }

      while (v9 != v18);

      v1 = v28;
      v2 = v27;
      v5 = v29;
    }

    else
    {
    }

    v21 = Array.description.getter();
    v23 = v22;

    v24 = sub_10000607C(v21, v23, &v31);

    *(v4 + 4) = v24;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v25;
    *v5 = v25;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as undeleted with error: %@", v4, 0x16u);
    sub_10005E058(v5);

    sub_100005964(v6);
  }

  else
  {
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_10007B7E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v6 = result;
  if (!result)
  {
  }

LABEL_5:
  if (v6 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        ++v7;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyFolder;
        os_unfair_lock_lock(v8);
        *(v8 + 8) = a3;
        *(v8 + 16) = 0;
        os_unfair_lock_unlock(v8);
        swift_unknownObjectRelease();
      }

      while (v6 != v7);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9++;
        v11 = &v10[OBJC_IVAR____TtC8FaceTime9FTMessage_dirtyFolder];
        v12 = v10;
        os_unfair_lock_lock(v11);
        *&v11[2]._os_unfair_lock_opaque = a3;
        LOBYTE(v11[4]._os_unfair_lock_opaque) = 0;
        os_unfair_lock_unlock(v11);

        --v6;
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007BAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007BBB8, v5, v4);
}

uint64_t sub_10007BBB8()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_1000525C4(&qword_100124DB8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10007E704;

  return sub_10007A7B8(v2);
}

uint64_t sub_10007BE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007BEF0, v5, v4);
}

uint64_t sub_10007BEF0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = v3;
  *(v0 + 48) = _Block_copy(v1);
  _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_10007BFD4;
  v6 = *(v0 + 32);

  return sub_10007CD58(v6, v3);
}

uint64_t sub_10007BFD4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  _Block_release(v2);
  _Block_release(v2);

  sub_1000525C4(&qword_100124DB8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10007C35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10005C9E4;

  return sub_100076C40(a5);
}

uint64_t sub_10007C430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100042A10;

  return sub_100077DC0(a5);
}

uint64_t sub_10007C504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v12 = sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000525C4(&qword_100124DB8);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = inited;
  v15[3] = v12;
  v15[4] = a1;
  v15[5] = v13;
  v16 = a1;
  sub_10009A64C(0, 0, v10, a6, v15);
}

uint64_t sub_10007C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10005C9E4;

  return sub_1000793C8(a5);
}

uint64_t sub_10007C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10005C9E4;

  return sub_10007A7B8(a5);
}

uint64_t sub_10007C8C4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007C8FC()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007C968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_10007C7A8(a1, v4, v5, v7, v6);
}

uint64_t sub_10007CA28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_10006F614(v2, v3, v4);
}

uint64_t sub_10007CAD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_10007C6D4(a1, v4, v5, v7, v6);
}

uint64_t sub_10007CB90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100042A10;

  return sub_10007C430(a1, v4, v5, v7, v6);
}

uint64_t sub_10007CC50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007CC98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_10007C35C(a1, v4, v5, v7, v6);
}

uint64_t sub_10007CD58(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = type metadata accessor for VoicemailActor();
  v2[4] = swift_initStaticObject();
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_10007CE08;

  return sub_100068198();
}

uint64_t sub_10007CE08(uint64_t a1)
{
  *(*v1 + 48) = a1;

  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007CF7C, v3, v2);
}

uint64_t sub_10007CF7C()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
LABEL_16:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v0[6];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[6];
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v1 &= 0xFFFFFFFFFFFFFF8uLL;
      v6 = v3 + 32;
      v7 = (v0[2] + 16);
      v12 = v7;
      do
      {
        if (v5)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *(v1 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v6 + 8 * v4);
          swift_unknownObjectRetain();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*v7)(v0[2], v8))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v7 = v12;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v9 != v2);
    }
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

void sub_10007D134()
{
  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "VoiceMail rating: We failed to rate becuase we do not support it for FTMessages yet.", v1, 2u);
  }
}

uint64_t sub_10007D1E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_10007BE24(v2, v3, v4);
}

uint64_t sub_10007D294()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_10007BAEC(v2, v3, v4);
}

uint64_t sub_10007D348()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_10007A610(v2, v3, v4);
}

uint64_t sub_10007D3FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_1000790C4(v2, v3, v4);
}

uint64_t sub_10007D4B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_100077C18(v2, v3, v4);
}

uint64_t sub_10007D564(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005C9E4;

  return sub_100073E28(a1, v4, v5, v6);
}

uint64_t sub_10007D618()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_100076900(v4, v0 + v3);
}

uint64_t sub_10007D6F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005C9E4;

  return sub_100073ACC(a1, v4, v5, v6);
}

uint64_t sub_10007D7A4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007D868()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_1000766A4(v4, v0 + v3);
}

uint64_t sub_10007D940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_100073730(a1, v4, v5, v7, v6);
}

uint64_t sub_10007DA00()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005C9E4;

  return sub_100075E88(v4, v0 + v3, v5);
}

unint64_t sub_10007DB08(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_10007DB18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_100073394(a1, v4, v5, v7, v6);
}

uint64_t sub_10007DBD8()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005C9E4;

  return sub_100075794(v4, v0 + v3, v5);
}

uint64_t sub_10007DCE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_100072E74(a1, v4, v5, v7, v6);
}

uint64_t sub_10007DDA0()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005C9E4;

  return sub_100074DB4(v4, v0 + v3, v5);
}

uint64_t sub_10007DEA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007DEF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_100072AD8(a1, v4, v5, v7, v6);
}

uint64_t sub_10007DFB0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10007E088()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005C9E4;

  return sub_100074450(v4, v0 + v3, v5);
}

uint64_t sub_10007E1A0(uint64_t a1)
{
  v2 = type metadata accessor for VoiceMailAnalyticsLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007E1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageID.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007E260()
{
  result = qword_100124FC8;
  if (!qword_100124FC8)
  {
    sub_10005BA5C(&unk_100125A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124FC8);
  }

  return result;
}

uint64_t sub_10007E2C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007E30C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10007E3A0;

  return sub_10006FFC4(v2);
}

uint64_t sub_10007E3A0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10007E49C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005C9E4;

  return sub_1000708EC(a1, v4);
}

uint64_t sub_10007E554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042A10;

  return sub_100070168(a1, v4, v5, v6);
}

uint64_t sub_10007E608()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007E650()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_100072604(v2, v3, v4);
}

void *sub_10007E720(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

char *sub_10007E940(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_messagesChangedPublisher;
  sub_1000525C4(&qword_1001250A8);
  swift_allocObject();
  *&v3[v8] = PassthroughSubject.init()();
  *&v3[OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager] = a1;
  v9 = &v3[OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_onVoicemailsChanged];
  *v9 = a2;
  *(v9 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v10 = a1;

  v11 = objc_msgSendSuper2(&v15, "init");
  v12 = *&v11[OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager];
  v13 = v11;
  [v12 setDelegate:{v13, v15.receiver, v15.super_class}];

  return v13;
}

uint64_t sub_10007EABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 25) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007EB58, v8, v7);
}

uint64_t sub_10007EB58()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 40);
  (*(*(v0 + 32) + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_onVoicemailsChanged))();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  PassthroughSubject.send(_:)();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10007EBF4()
{
  *(v1 + 32) = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007EC8C, v3, v2);
}

uint64_t sub_10007EC8C()
{
  v22 = v0;
  v1 = [*(v0[2].receiver + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager) allVoicemails];
  sub_100084008();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v21 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v8 = type metadata accessor for VisualMessage();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR___MPVisualMessage_vmMessage] = v7;
    v0[1].receiver = v9;
    v0[1].super_class = v8;
    objc_msgSendSuper2(v0 + 1, "init");
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v3 != v5);

  v10 = v21;
LABEL_12:
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000046F4(v11, qword_100128980);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    type metadata accessor for VisualMessage();
    v16 = Array.description.getter();
    v18 = sub_10000607C(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Fetched %s from VMD", v14, 0xCu);
    sub_100005964(v15);
  }

  if (v10 >> 62)
  {
    sub_1000525C4(&qword_100124DB8);
    v19 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v19 = v10;
  }

  super_class = v0->super_class;

  return super_class(v19);
}

uint64_t sub_10007F164(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007F1FC, v4, v3);
}

uint64_t sub_10007F1FC()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1000698D0;

  return sub_10007EBF4();
}

uint64_t sub_10007F2A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007F338, v4, v3);
}

uint64_t sub_10007F338()
{
  v20 = v0;
  v1 = sub_10007E720(v0[2], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (qword_100124028 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_100084008();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v3 deleteVoicemails:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = type metadata accessor for Logger();
  sub_1000046F4(v8, qword_100128980);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000607C(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100005964(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_10007F820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007F8BC, v5, v4);
}

uint64_t sub_10007F8BC()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_1000525C4(&qword_100124DB8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10007E704;

  return sub_10007F2A0(v2);
}

uint64_t sub_10007F998(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007FA30, v4, v3);
}

uint64_t sub_10007FA30()
{
  v20 = v0;
  v1 = sub_10007E720(v0[2], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (qword_100124028 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_100084008();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v3 markVoicemailsAsRead:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = type metadata accessor for Logger();
  sub_1000046F4(v8, qword_100128980);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000607C(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100005964(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_10007FF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007FFB4, v5, v4);
}

uint64_t sub_10007FFB4()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_1000525C4(&qword_100124DB8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10007926C;

  return sub_10007F998(v2);
}

uint64_t sub_100080090(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100080128, v4, v3);
}

uint64_t sub_100080128()
{
  v20 = v0;
  v1 = sub_10007E720(v0[2], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (qword_100124028 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_100084008();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v3 trashVoicemails:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = type metadata accessor for Logger();
  sub_1000046F4(v8, qword_100128980);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000607C(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100005964(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_100080610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000806AC, v5, v4);
}

uint64_t sub_1000806AC()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_1000525C4(&qword_100124DB8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10007E704;

  return sub_100080090(v2);
}

uint64_t sub_100080788(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100080820, v4, v3);
}

uint64_t sub_100080820()
{
  v20 = v0;
  v1 = sub_10007E720(v0[2], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (qword_100124028 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_100084008();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v3 removeVoicemailsFromTrash:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = type metadata accessor for Logger();
  sub_1000046F4(v8, qword_100128980);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000607C(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100005964(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_100080D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100080DA4, v5, v4);
}

uint64_t sub_100080DA4()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_1000525C4(&qword_100124DB8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10007E704;

  return sub_100080788(v2);
}

uint64_t sub_100080E80(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for MessageID.Value(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100080F48, v4, v3);
}

uint64_t sub_100080F48()
{
  sub_10007E1FC(*(v0 + 32) + OBJC_IVAR___MPMessageID_value, *(v0 + 56));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 56);
  if (EnumCaseMultiPayload == 1)
  {
    sub_100084468(v2);
    if (qword_100124028 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 32);
    v4 = type metadata accessor for Logger();
    sub_1000046F4(v4, qword_100128980);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "Incorrect id passed into VisualVoicemailManager %@, privacy: .public) but expected a VisualMessage ID!", v9, 0xCu);
      sub_10000B880(v10, &qword_1001250A0);
    }

    v12 = 0;
  }

  else
  {
    v12 = [*(*(v0 + 40) + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager) voicemailWithIdentifier:*v2];
    if (v12)
    {
      v13 = type metadata accessor for VisualMessage();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR___MPVisualMessage_vmMessage] = v12;
      *(v0 + 16) = v14;
      *(v0 + 24) = v13;
      v12 = objc_msgSendSuper2((v0 + 16), "init");
    }
  }

  v15 = *(v0 + 8);

  return v15(v12);
}

uint64_t sub_100081308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000813A4, v5, v4);
}

uint64_t sub_1000813A4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10006A170;
  v6 = *(v0 + 16);

  return sub_100080E80(v6);
}

uint64_t sub_100081460(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000814FC, v5, v4);
}

uint64_t sub_1000814FC()
{
  super_class = v0[5].super_class;
  receiver = v0[5].receiver;
  v3 = *(v0[6].receiver + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager);
  v4 = swift_allocObject();
  *(v4 + 16) = receiver;
  *(v4 + 24) = super_class;
  v0[3].receiver = sub_100084780;
  v0[3].super_class = v4;
  v0[1].receiver = _NSConcreteStackBlock;
  v0[1].super_class = 1107296256;
  v0[2].receiver = sub_100081888;
  v0[2].super_class = &unk_10010D190;
  v5 = _Block_copy(&v0[1]);

  v6 = [v3 voicemailsPassingTest:v5];
  _Block_release(v5);
  sub_100084008();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_6;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v11 = *(v7 + 8 * v10 + 32);
LABEL_6:
      v12 = v11;
      ++v10;
      v13 = type metadata accessor for VisualMessage();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR___MPVisualMessage_vmMessage] = v12;
      v0[4].receiver = v14;
      v0[4].super_class = v13;
      objc_msgSendSuper2(v0 + 4, "init");
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (i == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v15 = v0->super_class;

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_100081794(void *a1, uint64_t (*a2)(id, uint64_t))
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for VisualMessage();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___MPVisualMessage_vmMessage] = a1;
  v11.receiver = v5;
  v11.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v11, "init");
  v9 = a2(v7, v8);

  return v9 & 1;
}

uint64_t sub_100081888(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_100081A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100081B0C, v5, v4);
}

uint64_t sub_100081B0C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = _Block_copy(v1);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100081C00;

  return sub_100081460(sub_100084758, v4);
}

uint64_t sub_100081C00()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v6 = *v0;

  sub_1000525C4(&qword_100124DB8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

void sub_100081DA0(char a1, void *a2)
{
  v5 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007E1FC(a2 + OBJC_IVAR___MPMessageID_value, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100084468(v7);
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager);
    v9 = [v8 voicemailWithIdentifier:*v7];
    if (v9)
    {
      v10 = v9;
      [v8 reportTranscriptionRatedAccurate:a1 & 1 forVoicemail:v9];
      goto LABEL_9;
    }
  }

  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000046F4(v11, qword_100128980);
  v12 = a2;
  v10 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v12;
    *v15 = v12;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, v13, "Failed to report problem for message with ID(%@ becuase it could not be found.", v14, 0xCu);
    sub_10000B880(v15, &qword_1001250A0);
  }

LABEL_9:
}

void sub_10008208C(void *a1)
{
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10007E1FC(a1 + OBJC_IVAR___MPMessageID_value, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100084468(v5);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager);
    v7 = [v6 voicemailWithIdentifier:*v5];
    if (v7)
    {
      v8 = v7;
      [v6 reportTranscriptionProblemForVoicemail:v7];
      goto LABEL_9;
    }
  }

  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000046F4(v9, qword_100128980);
  v10 = a1;
  v8 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v10;
    *v13 = v10;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, v11, "Failed to report problem for message with ID(%@ becuase it could not be found.", v12, 0xCu);
    sub_10000B880(v13, &qword_1001250A0);
  }

LABEL_9:
}

uint64_t sub_100082360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000823FC, v7, v6);
}

uint64_t sub_1000823FC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  [*(v2 + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager) requestInitialStateIfNecessaryAndSendNotifications:v1];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000826D0(uint64_t a1)
{
  v3 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000046F4(v10, qword_100128980);
  (*(v7 + 16))(v9, a1, v6);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v5;
    v15 = v14;
    v32 = swift_slowAlloc();
    *v15 = 136315394;
    swift_getObjectType();
    v16 = _typeName(_:qualified:)();
    v18 = sub_10000607C(v16, v17, &v32);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v31 = Notification.name.getter();
    type metadata accessor for Name(0);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_10000607C(v19, v21, &v32);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s is handling %s", v15, 0x16u);
    swift_arrayDestroy();

    v5 = v30;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v25 = sub_10006B000();
  v26 = swift_allocObject();
  *(v26 + 16) = inited;
  *(v26 + 24) = v25;
  *(v26 + 32) = v11;
  *(v26 + 40) = 0;
  *(v26 + 48) = 3;
  v27 = v11;
  sub_10009A64C(0, 0, v5, &unk_1000D8130, v26);
}

uint64_t sub_100082BC4(char a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000046F4(v12, qword_100128980);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v13 = v4;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v31 = v11;
    v16 = a1;
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v17 = 136316162;
    swift_getObjectType();
    v18 = _typeName(_:qualified:)();
    v20 = sub_10000607C(v18, v19, &v33);

    *(v17 + 4) = v20;
    *(v17 + 12) = 1024;
    *(v17 + 14) = v16 & 1;
    *(v17 + 18) = 2048;
    if (a3)
    {
      if (a3 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v31;
    }

    else
    {
      v21 = 0;
      v11 = v31;
    }

    *(v17 + 20) = v21;

    *(v17 + 28) = 2048;
    if (a4)
    {
      if (a4 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v22 = 0;
    }

    *(v17 + 30) = v22;

    *(v17 + 38) = 2048;
    if (a2)
    {
      if (a2 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v23 = 0;
    }

    *(v17 + 40) = v23;

    _os_log_impl(&_mh_execute_header, v14, v15, "%s voicemailsDidChangeInitial: %{BOOL}d added: %ld, deleted: %ld, updated: %ld", v17, 0x30u);
    sub_100005964(v32);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v26 = sub_10006B000();
  v27 = swift_allocObject();
  *(v27 + 16) = inited;
  *(v27 + 24) = v26;
  *(v27 + 32) = v13;
  *(v27 + 40) = 0;
  *(v27 + 48) = 3;
  v28 = v13;
  sub_10009A64C(0, 0, v11, &unk_1000D8128, v27);
}

void sub_100083264(const char *a1)
{
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000046F4(v3, qword_100128980);
  v4 = v1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getObjectType();
    v8 = _typeName(_:qualified:)();
    v10 = sub_10000607C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v5, a1, v6, 0xCu);
    sub_100005964(v7);
  }
}

uint64_t sub_100083420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10005C9E4;

  return sub_10007F2A0(a5);
}

uint64_t sub_1000834F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100042A10;

  return sub_10007F998(a5);
}

uint64_t sub_1000835C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10005C9E4;

  return sub_100080090(a5);
}

uint64_t sub_100083690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10005C9E4;

  return sub_100080788(a5);
}

uint64_t sub_100083760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  sub_1000525C4(&qword_100124DB8);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v13 = sub_10006B000();
  v14 = swift_allocObject();
  v14[2] = inited;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = v10;
  v15 = a1;
  sub_10009A64C(0, 0, v9, a5, v14);
}

uint64_t sub_100083994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_100083690(a1, v4, v5, v7, v6);
}

uint64_t sub_100083A54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10005C9E4;

  return v6();
}

uint64_t sub_100083B3C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10005C9E4;

  return v7();
}

uint64_t sub_100083C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100084578(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000B880(v11, &qword_100124480);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000B880(a3, &qword_100124480);

    return v21;
  }

LABEL_8:
  sub_10000B880(a3, &qword_100124480);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100083F10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100043A88;

  return v6(a1);
}

unint64_t sub_100084008()
{
  result = qword_100125098;
  if (!qword_100125098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100125098);
  }

  return result;
}

uint64_t sub_100084054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_1000835C0(a1, v4, v5, v7, v6);
}

uint64_t sub_100084114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100042A10;

  return sub_1000834F0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000841D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_100083420(a1, v4, v5, v7, v6);
}

uint64_t sub_100084294(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005C9E4;

  return sub_10007EABC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10008435C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000843A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_100082360(a1, v4, v5, v6, v7);
}

uint64_t sub_100084468(uint64_t a1)
{
  v2 = type metadata accessor for MessageID.Value(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000844C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_100081A70(v2, v3, v4);
}

uint64_t sub_100084578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000525C4(&qword_100124480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000845E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005C9E4;

  return sub_100083F10(a1, v4);
}

uint64_t sub_1000846A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042A10;

  return sub_100083F10(a1, v4);
}

uint64_t sub_100084788()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_100081308(v2, v3, v4);
}

uint64_t sub_10008483C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_100080D08(v2, v3, v4);
}

uint64_t sub_1000848F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_100080610(v2, v3, v4);
}

uint64_t sub_1000849A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_10007FF18(v2, v3, v4);
}

uint64_t sub_100084A58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005C9E4;

  return sub_10007F820(v2, v3, v4);
}

uint64_t sub_100084B0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005C9E4;

  return sub_10007F164(v2, v3);
}

id sub_100084C18(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = [*(a1 + OBJC_IVAR____TtC8FaceTime25PHOrientationMonitor_OBJC_wrapped) *a4];

  return v6;
}

id sub_100084EE4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100084F2C()
{
  sub_1000525C4(&qword_100124F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D8290;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x80000001000DCF10;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000023;
  *(inited + 64) = 0x80000001000DCF30;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x80000001000DCF60;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  v1 = sub_1000BFCD0(inited);
  swift_setDeallocating();
  sub_1000525C4(&qword_100124F98);
  swift_arrayDestroy();
  return v1;
}

void sub_100085068(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  *(Strong + 24) = a1;
  if ((*(Strong + 40) & 1) == 0 && (a1 - 5) > 0xFFFFFFFFFFFFFFFBLL)
  {
    *(Strong + 32) = a1;
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = 0xD000000000000012;
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10000607C(0xD00000000000001FLL, 0x80000001000DCF90, &v13);
    *(v6 + 12) = 2080;
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        v7 = 0xEE00746867695265;
        goto LABEL_17;
      }

      if (a1 == 5)
      {
        v7 = 0xE600000000000000;
        v5 = 0x705565636166;
        goto LABEL_21;
      }

      if (a1 != 6)
      {
LABEL_18:
        v7 = 0xE700000000000000;
        v5 = 0x6E776F6E6B6E75;
        goto LABEL_21;
      }

      v7 = 0xE800000000000000;
      v5 = 0x6E776F4465636166;
    }

    else
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          v7 = 0x80000001000DCEF0;
          goto LABEL_21;
        }

        if (a1 == 3)
        {
          v7 = 0xED00007466654C65;
LABEL_17:
          v5 = 0x70616373646E616CLL;
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      v7 = 0xE800000000000000;
      v5 = 0x7469617274726F70;
    }

LABEL_21:
    v8 = sub_10000607C(v5, v7, &v13);

    *(v6 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "posting %s for orientation: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v9 = [objc_opt_self() defaultCenter];
  if (qword_1001240E0 != -1)
  {
    swift_once();
  }

  v10 = qword_100128A78;
  v11 = sub_100084F2C();
  sub_1000BEBE4(v11);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v10 object:0 userInfo:isa];
}

uint64_t sub_1000853AC(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (a1)
    {
      v13 = 0;
LABEL_57:
      v25 = *(v3 + 40);
      *(v3 + 40) = v13;
      sub_1000053D8(v25);
    }

    swift_beginAccess();
    sub_1000525C4(qword_100125140);
    swift_initStaticObject();

    v4 = sub_1000052D4();

    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_36;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26[0] = v10;
      *v9 = 136315138;
      if (v4 > 3)
      {
        switch(v4)
        {
          case 4:
            v11 = 0x70616373646E616CLL;
            v12 = 0xEE00746867695265;
            goto LABEL_35;
          case 5:
            v12 = 0xE600000000000000;
            v11 = 0x705565636166;
            goto LABEL_35;
          case 6:
            v12 = 0xE800000000000000;
            v11 = 0x6E776F4465636166;
            goto LABEL_35;
        }
      }

      else
      {
        switch(v4)
        {
          case 1:
            v11 = 0x7469617274726F70;
            v12 = 0xE800000000000000;
            goto LABEL_35;
          case 2:
            v11 = 0xD000000000000012;
            v12 = 0x80000001000DCEF0;
            goto LABEL_35;
          case 3:
            v11 = 0x70616373646E616CLL;
            v12 = 0xED00007466654C65;
LABEL_35:
            v20 = sub_10000607C(v11, v12, v26);

            *(v9 + 4) = v20;
            _os_log_impl(&_mh_execute_header, v7, v8, "SpringBoardOrientationLockChangedNotification: SpringBoard is locked to %s", v9, 0xCu);
            sub_100005964(v10);

LABEL_36:

            *(v3 + *(*v3 + 168)) = v4;
            if ((v4 - 1) > 3)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
        }
      }

      v12 = 0xE700000000000000;
      v11 = 0x6E776F6E6B6E75;
      goto LABEL_35;
    }

    swift_retain_n();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v14, v15))
    {

      goto LABEL_54;
    }

    v16 = 0x7469617274726F70;
    v17 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v17 = 136315394;
    if (v4 > 3)
    {
      if (v4 == 4)
      {
        v18 = 0x70616373646E616CLL;
        v19 = 0xEE00746867695265;
        goto LABEL_39;
      }

      if (v4 != 5)
      {
        if (v4 == 6)
        {
          v19 = 0xE800000000000000;
          v18 = 0x6E776F4465636166;
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      v19 = 0xE600000000000000;
      v18 = 0x705565636166;
    }

    else
    {
      if (v4 == 1)
      {
        v19 = 0xE800000000000000;
        v18 = 0x7469617274726F70;
        goto LABEL_39;
      }

      if (v4 != 2)
      {
        if (v4 == 3)
        {
          v18 = 0x70616373646E616CLL;
          v19 = 0xED00007466654C65;
          goto LABEL_39;
        }

LABEL_31:
        v19 = 0xE700000000000000;
        v18 = 0x6E776F6E6B6E75;
        goto LABEL_39;
      }

      v18 = 0xD000000000000012;
      v19 = 0x80000001000DCEF0;
    }

LABEL_39:
    v21 = sub_10000607C(v18, v19, v26);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    swift_beginAccess();

    sub_100004B7C();
    v22 = sub_100005E04();

    if (v22 > 3)
    {
      switch(v22)
      {
        case 4:
          v16 = 0x70616373646E616CLL;
          v23 = 0xEE00746867695265;
          goto LABEL_53;
        case 5:
          v23 = 0xE600000000000000;
          v16 = 0x705565636166;
          goto LABEL_53;
        case 6:
          v23 = 0xE800000000000000;
          v16 = 0x6E776F4465636166;
          goto LABEL_53;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          v23 = 0xE800000000000000;
          goto LABEL_53;
        case 2:
          v16 = 0xD000000000000012;
          v23 = 0x80000001000DCEF0;
          goto LABEL_53;
        case 3:
          v16 = 0x70616373646E616CLL;
          v23 = 0xED00007466654C65;
LABEL_53:
          v24 = sub_10000607C(v16, v23, v26);

          *(v17 + 14) = v24;
          _os_log_impl(&_mh_execute_header, v14, v15, "SpringBoardOrientationLockChangedNotification: SpringBoard is locked to %s, but using %s", v17, 0x16u);
          swift_arrayDestroy();

LABEL_54:
          swift_beginAccess();

          sub_100004B7C();
          v4 = sub_100005E04();

          *(v3 + *(*v3 + 168)) = v4;
          if ((v4 - 1) >= 4)
          {
LABEL_56:
            v13 = 1;
            goto LABEL_57;
          }

LABEL_55:
          *(v3 + 32) = v4;
          goto LABEL_56;
      }
    }

    v23 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    goto LABEL_53;
  }

  return result;
}

uint64_t *sub_100085AC4()
{
  v1 = *v0;
  if ((*(v0 + 20) & 1) == 0)
  {
    notify_cancel(*(v0 + 4));
  }

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_100085BA8()
{
  sub_100085AC4();

  return swift_deallocClassInstance();
}

uint64_t sub_100085C00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (v5)
  {
    v6 = a1[1];
    *a3 = v5;
    a3[1] = v6;
    return swift_unknownObjectRetain();
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "VoicemailAccountManagerDecorator: Creating VMD", v11, 2u);
    }

    v12 = *(a2 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_vmdFactory);
    v13 = sub_100085D94();
    v14 = v12();
    v16 = v15;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "VoicemailAccountManagerDecorator: Created VMD", v19, 2u);
    }

    *a1 = v14;
    a1[1] = v16;
    *a3 = v14;
    a3[1] = v16;
    return swift_unknownObjectRetain();
  }
}

id sub_100085D94()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for VoicemailDelegateDecorator();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_queue;
  type metadata accessor for TaskQueue();
  v5 = v0;
  *&v3[v4] = TaskQueue.__allocating_init()();
  v6 = &v3[OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_lastTask];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_logger;
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_1000046F4(v8, qword_100128980);
  (*(*(v8 - 8) + 16))(&v3[v7], v9, v8);
  v10 = &v3[OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate];
  *v10 = &unk_1000D8450;
  *(v10 + 1) = v1;
  v21.receiver = v3;
  v21.super_class = v2;
  v11 = objc_msgSendSuper2(&v21, "init");
  v12 = &v5[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables];
  os_unfair_lock_lock(&v5[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables]);
  v20 = v2;
  *&v19 = v11;
  v13 = *(v12 + 1);
  v14 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 1) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_100051E18(0, *(v13 + 2) + 1, 1, v13);
    *(v12 + 1) = v13;
  }

  v17 = *(v13 + 2);
  v16 = *(v13 + 3);
  if (v17 >= v16 >> 1)
  {
    v13 = sub_100051E18((v16 > 1), v17 + 1, 1, v13);
    *(v12 + 1) = v13;
  }

  *(v13 + 2) = v17 + 1;
  sub_100064228(&v19, &v13[32 * v17 + 32]);
  os_unfair_lock_unlock(v12);
  return v14;
}

uint64_t sub_100085FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_1000525C4(&qword_1001248D0);
  v3[6] = swift_task_alloc();
  v3[7] = sub_1000525C4(&qword_100124348);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000860A4, 0, 0);
}

uint64_t sub_1000860A4()
{
  v21 = v0;
  v1 = v0[2];
  sub_100064238(v0[3], v0[9]);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = v0[8];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    sub_100064238(v6, v7);
    v12 = v8;
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10000B880(v6, &qword_100124348);
    v16 = sub_10000607C(v13, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "VoicemailAccountManagerDecorator: processing update %@, uuid: %s", v9, 0x16u);
    sub_10000B880(v10, &qword_1001250A0);

    sub_100005964(v11);
  }

  else
  {

    sub_10000B880(v6, &qword_100124348);
  }

  v0[10] = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000862FC, v18, v17);
}

uint64_t sub_100086328()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 48);
  *v1 = v3;
  sub_100064238(v2, v1 + v4);
  v5 = v3;
  PassthroughSubject.send(_:)();
  sub_10000B880(v1, &qword_1001248D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10008645C()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_100085C00(v1 + 1, v0, v19);
  os_unfair_lock_unlock(v1);
  v2 = v19[1];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 40))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000046F4(v5, qword_100128980);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    os_unfair_lock_lock(v1);
    sub_100085C00(v1 + 1, v6, v19);
    os_unfair_lock_unlock(v1);
    v11 = v19[0];
    v12 = swift_getObjectType();
    v19[0] = v11;
    v13 = sub_1000A1720(v19, v12);
    v15 = v14;
    swift_unknownObjectRelease();
    v16 = sub_10000607C(v13, v15, &v18);

    *(v9 + 4) = v16;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) online: %{BOOL}d", v9, 0x12u);
    sub_100005964(v10);
  }

  return v4 & 1;
}

uint64_t sub_1000866B8(const char *a1)
{
  v3 = &v1[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v1[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_100085C00(v3 + 1, v1, v21);
  os_unfair_lock_unlock(v3);
  v4 = v21[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 32))(ObjectType, v4);
  swift_unknownObjectRelease();
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000046F4(v7, qword_100128980);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    os_unfair_lock_lock(v3);
    sub_100085C00(v3 + 1, v8, v21);
    os_unfair_lock_unlock(v3);
    v13 = v21[0];
    v14 = swift_getObjectType();
    v21[0] = v13;
    v15 = sub_1000A1720(v21, v14);
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = sub_10000607C(v15, v17, &v20);

    *(v11 + 4) = v18;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 0x12u);
    sub_100005964(v12);
  }

  return v6 & 1;
}

uint64_t sub_100086914()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_100085C00(v1 + 1, v0, v19);
  os_unfair_lock_unlock(v1);
  v2 = v19[1];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000046F4(v5, qword_100128980);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    os_unfair_lock_lock(v1);
    sub_100085C00(v1 + 1, v6, v19);
    os_unfair_lock_unlock(v1);
    v11 = v19[0];
    v12 = swift_getObjectType();
    v19[0] = v11;
    v13 = sub_1000A1720(v19, v12);
    v15 = v14;
    swift_unknownObjectRelease();
    v16 = sub_10000607C(v13, v15, &v18);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) storageUsage: %lu", v9, 0x16u);
    sub_100005964(v10);
  }

  return v4;
}

uint64_t sub_100086B64()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_100085C00(v1 + 1, v0, v20);
  os_unfair_lock_unlock(v1);
  v2 = v20[1];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 64))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000046F4(v6, qword_100128980);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    os_unfair_lock_lock(v1);
    sub_100085C00(v1 + 1, v7, v20);
    os_unfair_lock_unlock(v1);
    v12 = v20[0];
    v13 = swift_getObjectType();
    v20[0] = v12;
    v14 = sub_1000A1720(v20, v13);
    v16 = v15;
    swift_unknownObjectRelease();
    v17 = sub_10000607C(v14, v16, &v19);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v8, v9, "VMD(%s) estimatedAccountCount: %ld", v10, 0x16u);
    sub_100005964(v11);
  }

  return v5;
}

void *sub_100086E20()
{
  v66 = type metadata accessor for UUID();
  v1 = *(v66 - 8);
  v2 = __chkstk_darwin(v66);
  v65 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v64 = &v55 - v5;
  v6 = __chkstk_darwin(v4);
  v63 = &v55 - v7;
  __chkstk_darwin(v6);
  v62 = &v55 - v8;
  v9 = v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  v67 = v0;
  v10 = 0;
  sub_100085C00((v9 + 8), v0, &v75);
  v61 = v9;
  os_unfair_lock_unlock(v9);
  v11 = v76;
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 64))(ObjectType, v11);
  swift_unknownObjectRelease();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_19;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    while (1)
    {
      v16 = v14;
      v74 = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v15 < 0)
      {
        break;
      }

      v14 = 0;
      v18 = v16;
      v60 = v16 & 0xC000000000000001;
      v55 = v16 & 0xFFFFFFFFFFFFFF8;
      v57 = v1 + 8;
      v56 = (v1 + 32);
      v58 = v16;
      v59 = v15;
      v19 = v61;
      v20 = (v1 + 8);
      while (!__OFADD__(v14, 1))
      {
        v71 = v14 + 1;
        v72 = v14;
        if (v60)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v55 + 16))
          {
            goto LABEL_18;
          }

          v21 = *(v18 + 8 * v14 + 32);
        }

        v22 = v21;
        v23 = [v21 UUID];
        v24 = v62;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        os_unfair_lock_lock(v19);
        v25 = v67;
        sub_100085C00((v19 + 8), v67, &v75);
        os_unfair_lock_unlock(v19);
        v26 = v76;
        v27 = swift_getObjectType();
        v69 = (*(v26 + 88))(v24, v27, v26);
        swift_unknownObjectRelease();
        v28 = *v20;
        v29 = v66;
        (*v20)(v24, v66);
        v30 = [v22 UUID];
        v31 = v63;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        os_unfair_lock_lock(v19);
        sub_100085C00((v19 + 8), v25, &v75);
        os_unfair_lock_unlock(v19);
        v32 = v76;
        v33 = swift_getObjectType();
        v68 = (*(v32 + 96))(v31, v33, v32);
        swift_unknownObjectRelease();
        v28(v31, v29);
        v34 = [v22 UUID];
        v35 = v64;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        os_unfair_lock_lock(v19);
        sub_100085C00((v19 + 8), v25, &v75);
        v70 = v10;
        os_unfair_lock_unlock(v19);
        v36 = v76;
        v37 = swift_getObjectType();
        v38 = (*(v36 + 104))(v35, v37, v36);
        swift_unknownObjectRelease();
        v28(v35, v29);
        v39 = type metadata accessor for VoicemailAccount();
        v40 = objc_allocWithZone(v39);
        v41 = [v22 UUID];
        v42 = v65;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*v56)(&v40[OBJC_IVAR___MPVoicemailAccount_uuid], v42, v29);
        v43 = [v22 accountDescription];
        if (v43)
        {
          v44 = v43;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        v48 = v59;
        v49 = v71;
        v50 = &v40[OBJC_IVAR___MPVoicemailAccount_accountDescription];
        *v50 = v45;
        v50[1] = v47;
        v40[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = v69 & 1;
        v40[OBJC_IVAR___MPVoicemailAccount_subscribed] = v68 & 1;
        v40[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = v38 & 1;
        v51 = [v22 isProvisioned];
        v40[OBJC_IVAR___MPVoicemailAccount_provisioned] = v51;
        v52 = [v22 handle];
        v53 = v52;
        if (v52)
        {
        }

        v40[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v53 != 0;
        v73.receiver = v40;
        v73.super_class = v39;
        v1 = objc_msgSendSuper2(&v73, "init");

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v14 = v72 + 1;
        v18 = v58;
        v10 = v70;
        if (v49 == v48)
        {

          return v74;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v54 = v14;
      v15 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v54;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_100087598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v2[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger;
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_1000046F4(v9, qword_100128980);
  (*(*(v9 - 8) + 16))(&v3[v8], v10, v9);
  v11 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher;
  sub_1000525C4(&qword_1001248C0);
  swift_allocObject();
  *&v3[v11] = PassthroughSubject.init()();
  v12 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables];
  *v12 = 0;
  *(v12 + 1) = _swiftEmptyArrayStorage;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_vmdFactory];
  *v14 = sub_1000891A8;
  v14[1] = v13;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_1000885DC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v23 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 16))(v8, v2 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger, v5);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v15 = sub_10006B000();
  v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = inited;
  *(v18 + 3) = v15;
  *(v18 + 4) = v2;
  (*(v6 + 32))(&v18[v16], v8, v23);
  *&v18[v17] = v12;
  v19 = v2;

  sub_10009A94C(0, 0, v11, &unk_1000D8440, v18);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v20 = AnyCancellable.init(_:)();

  return v20;
}

uint64_t sub_100088868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  v7 = type metadata accessor for Logger();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100088968, v10, v9);
}

uint64_t sub_100088968()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v13 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher);
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v6;

  sub_1000525C4(&qword_1001248C0);
  sub_100064124();
  v10 = Publisher<>.sink(receiveValue:)();

  *v13 = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_100088AE8(char *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "VoicemailAccountManagerDecorator: processing listener.", v7, 2u);
  }

  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = *a1;
  v10 = *(sub_1000525C4(&qword_1001248D0) + 48);

  v8(v9, &a1[v10]);
}

uint64_t type metadata accessor for VoicemailAccountManagerWithDelegateDecorator()
{
  result = qword_100125210;
  if (!qword_100125210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100088E34()
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

uint64_t sub_100088EF4(uint64_t a1)
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100042A10;

  return sub_100088868(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100089024(char *a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100088AE8(a1, v1 + v4, v5);
}

uint64_t sub_1000890C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10005C9E4;

  return sub_100085FB8(a1, a2, v6);
}

id sub_10008916C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1000891D8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100089210()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_1000525C4(&qword_100125388);
    v1 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1000892A4()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_100089210();
  CFNotificationCenterRemoveEveryObserver(v0, &v2);

  return swift_deallocClassInstance();
}

void sub_1000893C4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_100089434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1000894A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000525C4(&qword_100124348);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_100064238(a2, &v12 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, a1, isa);
}

uint64_t sub_100089644()
{
  v2 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v4 = (*(v1 + 40))(ObjectType, v1);
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000046F4(v5, qword_100128980);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v2;
    v16 = v10;
    *v9 = 136315394;
    v11 = sub_1000A1720(&v15, ObjectType);
    v13 = sub_10000607C(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) online: %{BOOL}d", v9, 0x12u);
    sub_100005964(v10);
  }

  return v4 & 1;
}

uint64_t sub_10008982C(const char *a1)
{
  v4 = *&v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  v3 = *&v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v6 = (*(v3 + 32))(ObjectType, v3);
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000046F4(v7, qword_100128980);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v4;
    v18 = v12;
    *v11 = 136315394;
    v13 = sub_1000A1720(&v17, ObjectType);
    v15 = sub_10000607C(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 0x12u);
    sub_100005964(v12);
  }

  return v6 & 1;
}

uint64_t sub_100089A0C()
{
  v2 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v4 = (*(v1 + 56))(ObjectType, v1);
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000046F4(v5, qword_100128980);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v2;
    v16 = v10;
    *v9 = 136315394;
    v11 = sub_1000A1720(&v15, ObjectType);
    v13 = sub_10000607C(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) storageUsage: %lu", v9, 0x16u);
    sub_100005964(v10);
  }

  return v4;
}

uint64_t sub_100089BE8()
{
  v2 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v4 = (*(v1 + 64))(ObjectType, v1);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000046F4(v6, qword_100128980);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v2;
    v17 = v11;
    *v10 = 136315394;
    v12 = sub_1000A1720(&v16, ObjectType);
    v14 = sub_10000607C(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v8, v9, "VMD(%s) estimatedAccountCount: %ld", v10, 0x16u);
    sub_100005964(v11);
  }

  return v5;
}

void *sub_100089E28()
{
  v56 = type metadata accessor for UUID();
  v1 = *(v56 - 8);
  __chkstk_darwin(v56);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd;
  v6 = *(v0 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd);
  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v8 = v5[8];
  v54 = ObjectType;
  v55 = v6;
  v57 = v5;
  v9 = v8(ObjectType, v5);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  v41 = v9;
  v10 = _CocoaArrayWrapper.endIndex.getter();
  v9 = v41;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_3:
  v11 = v9;
  v62 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v57[11];
    v15 = v57[12];
    v49 = v57 + 12;
    v50 = v14;
    v51 = v57 + 11;
    v52 = v10;
    v16 = v57[13];
    v47 = v57 + 13;
    v48 = v15;
    v17 = v11;
    v45 = v11 & 0xC000000000000001;
    v46 = v16;
    v43 = (v1 + 32);
    v44 = (v1 + 8);
    v53 = v11;
    do
    {
      v58 = v13;
      if (v45)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v17 + 8 * v13 + 32);
      }

      v19 = v18;
      v20 = [v18 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v54;
      v22 = v57;
      v60 = v50(v3, v54, v57);
      v23 = *v44;
      v24 = v56;
      (*v44)(v3, v56);
      v25 = [v19 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = v48(v3, v21, v22);
      v23(v3, v24);
      v26 = [v19 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = v46(v3, v21, v22);
      v23(v3, v24);
      v28 = type metadata accessor for VoicemailAccount();
      v29 = objc_allocWithZone(v28);
      v30 = [v19 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*v43)(&v29[OBJC_IVAR___MPVoicemailAccount_uuid], v3, v24);
      v31 = [v19 accountDescription];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v36 = &v29[OBJC_IVAR___MPVoicemailAccount_accountDescription];
      *v36 = v33;
      v36[1] = v35;
      v29[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = v60 & 1;
      v29[OBJC_IVAR___MPVoicemailAccount_subscribed] = v59 & 1;
      v29[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = v27 & 1;
      v37 = [v19 isProvisioned];
      v29[OBJC_IVAR___MPVoicemailAccount_provisioned] = v37;
      v38 = [v19 handle];
      v39 = v38;
      v40 = v58;
      if (v38)
      {
      }

      v13 = v40 + 1;
      v29[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v39 != 0;
      v61.receiver = v29;
      v61.super_class = v28;
      objc_msgSendSuper2(&v61, "init");

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 = v53;
    }

    while (v52 != v13);

    return v62;
  }

  return result;
}

uint64_t sub_10008A3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_1000525C4(&qword_1001248D0);
  v4 = swift_task_alloc();
  v5 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher;
  v3[6] = v4;
  v3[7] = v5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008A4B0, v7, v6);
}

uint64_t sub_10008A4DC()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 48);
  *v1 = v3;
  sub_100064238(v2, v1 + v4);
  v5 = v3;
  PassthroughSubject.send(_:)();
  sub_10008C2DC(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10008B2FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = sub_10006B000();
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v2;
  v12[5] = v8;
  v13 = v2;

  sub_10009A94C(0, 0, v7, &unk_1000D8590, v12);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v14 = AnyCancellable.init(_:)();

  return v14;
}

uint64_t sub_10008B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008B538, v7, v6);
}

uint64_t sub_10008B538()
{
  v1 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher);

  sub_1000525C4(&qword_1001248C0);
  sub_100064124();
  v2 = Publisher<>.sink(receiveValue:)();

  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10008B624(char *a1, uint64_t a2)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(sub_1000525C4(&qword_1001248D0) + 48);

  v4(v5, &a1[v6]);
}

uint64_t sub_10008B838(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

uint64_t sub_10008B8D8()
{
  v1 = [v0 accounts];
  sub_10008C344();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10008B954()
{
  v1 = [v0 transcriptionProgress];

  return v1;
}

id sub_10008B98C()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isCallVoicemailSupportedForAccountUUID:isa];

  return v3;
}

id sub_10008B9D8()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isAccountSubscribed:isa];

  return v3;
}

id sub_10008BA24()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isGreetingChangeSupportedForAccountUUID:isa];

  return v3;
}

id sub_10008BA70()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isPasscodeChangeSupportedForAccountUUID:isa];

  return v3;
}

id sub_10008BABC()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 maximumPasscodeLengthForAccountUUID:isa];

  return v3;
}

id sub_10008BB08()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 minimumPasscodeLengthForAccountUUID:isa];

  return v3;
}

uint64_t sub_10008BB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = String._bridgeToObjectiveC()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100061D44;
  v13[3] = &unk_10010DA10;
  v11 = _Block_copy(v13);

  [v6 setPasscode:v9 forAccountUUID:isa completion:v11];
  _Block_release(v11);
}

double sub_10008BC38()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 maximumGreetingDurationForAccountUUID:isa];
  v4 = v3;

  return v4;
}

uint64_t sub_10008BC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100062184;
  v10[3] = &unk_10010D9E8;
  v8 = _Block_copy(v10);

  [v4 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

uint64_t sub_10008BD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100061D44;
  v12[3] = &unk_10010D9C0;
  v10 = _Block_copy(v12);

  [v5 setGreeting:a1 forAccountUUID:isa completion:v10];
  _Block_release(v10);
}

uint64_t sub_10008BE58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005C9E4;

  return sub_10008B49C(a1, v4, v5, v7, v6);
}

char *sub_10008BF20(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher;
  sub_1000525C4(&qword_1001248C0);
  swift_allocObject();
  *&v1[v4] = PassthroughSubject.init()();
  *&v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_cancellables] = _swiftEmptyArrayStorage;
  v5 = &v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  *v5 = a1;
  *(v5 + 1) = &off_10010D800;
  v32.receiver = v1;
  v32.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v32, "init");
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = type metadata accessor for VoicemailDelegateDecorator();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_queue;
  type metadata accessor for TaskQueue();
  v12 = v7;
  *&v10[v11] = TaskQueue.__allocating_init()();
  v13 = &v10[OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_lastTask];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_logger;
  if (qword_100124028 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_1000046F4(v15, qword_100128980);
  (*(*(v15 - 8) + 16))(&v10[v14], v16, v15);
  v17 = &v10[OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate];
  *v17 = &unk_1000D85A8;
  *(v17 + 1) = v8;
  v31.receiver = v10;
  v31.super_class = v9;
  v18 = objc_msgSendSuper2(&v31, "init");
  v19 = *&v12[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  v20 = swift_getObjectType();
  v21 = *(v19 + 16);
  swift_unknownObjectRetain();
  v22 = v18;
  v21(v18, v20, v19);
  swift_unknownObjectRelease();
  v30 = v9;
  *&v29 = v22;
  v23 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_cancellables;
  swift_beginAccess();
  v24 = *&v12[v23];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v12[v23] = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_100051E18(0, *(v24 + 2) + 1, 1, v24);
    *&v12[v23] = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_100051E18((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  sub_100064228(&v29, &v24[32 * v27 + 32]);
  *&v12[v23] = v24;
  swift_endAccess();

  return v12;
}

uint64_t sub_10008C230(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100042A10;

  return sub_10008A3D0(a1, a2, v6);
}

uint64_t sub_10008C2DC(uint64_t a1)
{
  v2 = sub_1000525C4(&qword_1001248D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008C344()
{
  result = qword_1001253D0;
  if (!qword_1001253D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001253D0);
  }

  return result;
}

uint64_t sub_10008C3A0(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SpringBoardOrientationObserver.OrientationStatus(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10008C3D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10008C418(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10008C45C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_10008C484(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      _StringGuts.grow(_:)(43);

      v2 = 0xD000000000000028;
      goto LABEL_7;
    }

LABEL_5:
    _StringGuts.grow(_:)(42);

    v2 = 0xD000000000000027;
LABEL_7:
    v6 = v2;
    type metadata accessor for MessageID(0);
    v3._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 41;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    return v6;
  }

  if (a2 == 2)
  {
    goto LABEL_5;
  }

  return 0xD000000000000025;
}

uint64_t sub_10008C5C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000525C4(&qword_100124348);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10008C664, 0, 0);
}

uint64_t sub_10008C664()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate);
  if (qword_100124060 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_100128A08;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10008E974;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10008C814(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000525C4(&qword_100124348);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10008C8B0, 0, 0);
}

uint64_t sub_10008C8B0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate);
  if (qword_100124068 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_100128A10;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10008E974;
  v6 = v0[3];

  return v8(v3, v6);
}

void sub_10008CA60(char *a1, uint64_t a2, const char *a3)
{
  v4 = &a1[OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_lastTask];
  v6 = a1;
  os_unfair_lock_lock(v4);
  sub_10008E028(v4 + 1, v6, v5, a3);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_10008CAF4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000525C4(&qword_100124348);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10008CB90, 0, 0);
}

uint64_t sub_10008CB90()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate);
  if (qword_100124070 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_100128A18;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10008E974;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10008CD40(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000525C4(&qword_100124348);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10008CDDC, 0, 0);
}

uint64_t sub_10008CDDC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate);
  if (qword_100124078 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_100128A20;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10008E974;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10008CF8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000525C4(&qword_100124348);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10008D028, 0, 0);
}

uint64_t sub_10008D028()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate);
  if (qword_100124080 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_100128A28;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10008E974;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10008D1D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000525C4(&qword_100124348);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10008D274, 0, 0);
}

uint64_t sub_10008D274()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8FaceTime26VoicemailDelegateDecorator_onUpdate);
  if (qword_100124088 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_100128A30;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10008E974;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10008D424(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000525C4(&qword_100124348);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10008D4C0, 0, 0);
}