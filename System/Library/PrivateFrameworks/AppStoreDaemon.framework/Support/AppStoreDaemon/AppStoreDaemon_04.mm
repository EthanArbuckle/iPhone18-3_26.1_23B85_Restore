uint64_t sub_1000A5970(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_1000A59FC, 0, 0);
}

uint64_t sub_1000A59FC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = [objc_allocWithZone(type metadata accessor for LogKey()) init];
  v5 = sub_1000A5238(v3, v4);

  if (v2)
  {
    v6 = v0[4];
    v6[2](v6, v5 & 1);
    _Block_release(v6);
  }

  v7 = v0[1];

  return v7();
}

void sub_1000A5ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {

    v7 = String._bridgeToObjectiveC()();

    isa = Array._bridgeToObjectiveC()().super.isa;
    v9 = [objc_opt_self() metadataWithAction:a1 bundleID:v7 capabilities:isa];

    if (a5)
    {
      v10 = a5;
    }

    else
    {
      v10 = [objc_allocWithZone(type metadata accessor for LogKey()) init];
    }

    v11 = a5;
    v12 = sub_1000A5238(v9, v10);

    if ((v12 & 1) == 0)
    {
      v13 = ASDErrorDomain;
      v14 = String._bridgeToObjectiveC()();
      ASDErrorWithDescription();

      swift_willThrow();
    }
  }
}

uint64_t sub_1000A5D4C(uint64_t a1, void *a2)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 1;
    }

    if (a1 == 4)
    {
      v3 = a2;
      if (sub_1000A5FF4(2, a2))
      {
        v2 = 3;
        a2 = v3;
        goto LABEL_10;
      }

      return 0;
    }

LABEL_14:
    v5 = a2;
    if (qword_10059B488 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000A5FBC(v7, qword_10059C1B0);
    v8 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Unknown eligibility action: %ld", v11, 0x16u);
      sub_100086A24(v12);
    }

    return 0;
  }

  if ((a1 - 1) >= 2)
  {
    if (!a1)
    {
      v2 = 2;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v2 = 3;
LABEL_10:

  return sub_1000A5FF4(v2, a2);
}

uint64_t sub_1000A5F70()
{
  v0 = type metadata accessor for Logger();
  sub_1000A6360(v0, qword_10059C1B0);
  sub_1000A5FBC(v0, qword_10059C1B0);
  return static Logger.appCapabilities.getter();
}

uint64_t sub_1000A5FBC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000A5FF4(uint64_t a1, void *a2)
{
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer == noErr.getter())
  {
    return 0;
  }

  if (qword_10059B488 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000A5FBC(v6, qword_10059C1B0);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412802;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2050;
    *(v10 + 14) = a1;
    *(v10 + 22) = 1026;
    *(v10 + 24) = domain_answer;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Unable to determine eligibility for domain %{public}llu: %{public}d", v10, 0x1Cu);
    sub_100086A24(v11);
  }

  return 0;
}

uint64_t sub_1000A61B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a1 - 1) >= 3)
  {
    if (a1 == 4)
    {
      v6 = a2;
      if (sub_1000A5FF4(a3, a2))
      {
        v4 = a4;
        a2 = v6;
        goto LABEL_8;
      }
    }

    else
    {
      if (!a1)
      {
        v4 = a3;
        goto LABEL_8;
      }

      v8 = a2;
      if (qword_10059B488 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000A5FBC(v10, qword_10059C1B0);
      v11 = v8;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412546;
        *(v14 + 4) = v11;
        *v15 = v11;
        *(v14 + 12) = 2048;
        *(v14 + 14) = a1;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, v13, "[%@] Unknown eligibility action: %ld", v14, 0x16u);
        sub_100086A24(v15);
      }
    }

    return 0;
  }

  v4 = a4;
LABEL_8:

  return sub_1000A5FF4(v4, a2);
}

uint64_t *sub_1000A6360(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000A65F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100085384;

  return sub_1000A5970(v2, v3, v4);
}

id sub_1000A66A4()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues];
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  v2[8] = 2;
  v2[24] = 1;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, "init");
  v4 = objc_opt_self();
  v5 = v3;
  result = [v4 sharedConnection];
  if (result)
  {
    v7 = result;
    [result registerObserver:v5];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000A6788()
{
  result = [objc_allocWithZone(type metadata accessor for RestrictionsCache()) init];
  qword_1005AB0A0 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RestrictionsCache.ValueStore(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RestrictionsCache.ValueStore(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[17])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RestrictionsCache.ValueStore(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 2;
    }
  }

  return result;
}

id sub_1000A69E8()
{
  result = [objc_allocWithZone(type metadata accessor for SKANInteropProviderService()) init];
  qword_1005AB0A8 = result;
  return result;
}

uint64_t sub_1000A6C40(void *a1, void *aBlock)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = _Block_copy(aBlock);
  v4 = a1;

  return _swift_task_switch(sub_1000A6CBC, 0, 0);
}

uint64_t sub_1000A6CBC()
{
  v1 = v0[2];
  objc_opt_self();
  v2 = sub_1003A4EE0();
  v3 = sub_1003A9D90(v2, v1);

  v5 = v0[2];
  v4 = v0[3];
  if (v3)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (v4)
    {
      if (v8 >> 60 != 15)
      {
        v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1000A7F1C(v6, v8);
LABEL_7:
        v10 = v0[3];
        (v10)[2](v10, v9.super.isa);
        _Block_release(v10);

        goto LABEL_10;
      }

LABEL_6:
      v9.super.isa = 0;
      goto LABEL_7;
    }
  }

  else
  {

    if (v4)
    {
      goto LABEL_6;
    }

    v6 = 0;
    v8 = 0xF000000000000000;
  }

  sub_1000A7F1C(v6, v8);
LABEL_10:
  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A6F84(void *a1, void *a2, void *aBlock)
{
  v3[2] = a2;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;

  return _swift_task_switch(sub_1000A7028, 0, 0);
}

uint64_t sub_1000A7028()
{
  if (qword_10059B4B8 != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) longLongValue];
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000A710C;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_1000D8E90(v4, v3, v1);
}

uint64_t sub_1000A710C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;

  sub_100088CDC(v3, v2);

  if (v4)
  {
    v7 = *(v1 + 24);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_1000A7418(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_1000A7504;

  return sub_1000A77F8(v8, v10);
}

uint64_t sub_1000A7504()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  sub_100088CDC(v4, v3);
  if (v0)
  {
    if (v5)
    {
      v8 = *(v2 + 24);
      v9 = _convertErrorToNSError(_:)();

      (v8)[2](v8, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v2 + 24);
    v10[2](v10, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_1000A7744()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_1000A7418(v2, v3, v4);
}

uint64_t sub_1000A77F8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for BagService.PermittedDataOrigin();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for AccountClientIdentifier();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for ClientInfo();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000A797C, 0, 0);
}

uint64_t sub_1000A797C()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  static AccountClientIdentifier.production.getter();
  (*(v6 + 16))(v5, v4, v7);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v6 + 8))(v4, v7);
  v0[19] = sub_1000D6694(v1);
  (*(v2 + 8))(v1, v3);
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_1000A7B08;
  v9 = v0[11];

  return sub_1000C5300((v0 + 2), 0, 0, v9);
}

uint64_t sub_1000A7B08()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1000A7C78, 0, 0);
}

uint64_t sub_1000A7C78()
{
  objc_opt_self();
  v1 = sub_1003A4EE0();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = v0[5];
  v4 = v0[6];
  v5 = sub_100005B60(v0 + 2, v3);
  v6 = sub_1000C56C0(v3, v4, v5);
  v7 = sub_1003AA134(v1, isa, v6);

  if (v7)
  {
    swift_willThrow();
  }

  sub_100005A00((v0 + 2));

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A7DA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_1000A6F84(v2, v3, v4);
}

uint64_t sub_1000A7E68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100085384;

  return sub_1000A6C40(v2, v3);
}

uint64_t sub_1000A7F1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100088CDC(a1, a2);
  }

  return a1;
}

void *sub_1000A7F30(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1001621AC(v3, 0);
  sub_10016054C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_1000A7FC4(void *result, uint64_t a2)
{
  v2 = result[2];
  if (v2)
  {
    v4 = 0;
    v5 = result + 5;
    v12 = result + 5;
    do
    {
      v6 = &v5[2 * v4];
      for (i = v4; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          return result;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }

        v9 = *(v6 - 1);
        v8 = *v6;
        swift_beginAccess();
        v10 = *(*a2 + 16);

        if (v10)
        {
          sub_1000EE808(v9, v8);
          if (v11)
          {
            break;
          }
        }

        swift_endAccess();

        v6 += 2;
        if (v4 == v2)
        {
          return _swiftEmptyArrayStorage;
        }
      }

      swift_endAccess();
      swift_unknownObjectRetain();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v12;
    }

    while (v4 != v2);
  }

  return _swiftEmptyArrayStorage;
}

id sub_1000A81D4(uint64_t a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC9appstored18PerformUpdatesTask_output];
  *v8 = 0;
  *(v8 + 1) = _swiftEmptyArrayStorage;
  sub_1000056D0(a3 + OBJC_IVAR___Bag_bag, v16);
  v9 = &v3[OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state];
  v10 = a2;
  sub_100085D40(&qword_10059C3D0);
  sub_100085D40(&qword_10059C3D8);
  swift_dynamicCast();
  *v9 = a1;
  *(v9 + 1) = v10;
  v12 = sub_1001FBBB4(*&v10[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken], v11);
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithLogKey:", v12);

  return v13;
}

uint64_t sub_1000A8370()
{
  v1[14] = v0;
  v2 = type metadata accessor for UUID();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000A84EC, 0, 0);
}

uint64_t sub_1000A84EC()
{
  v36 = v0;
  v1 = *(v0 + 112);
  static Logger.updates.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 224);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  if (v5)
  {
    v9 = *(v0 + 112);
    v34 = *(v0 + 144);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v10 = 138412546;
    v13 = *(v9 + OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state + 8);
    v14 = *(v13 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v10 + 4) = v14;
    *v11 = v14;
    *(v10 + 12) = 2082;
    v15 = *(v13 + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
    v16 = v14;
    v17 = sub_1001710FC(v15);
    v19 = sub_1001AD0D8(v17, v18, &v35);

    *(v10 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Perform updates start with reason: %{public}s", v10, 0x16u);
    sub_100086A24(v11);

    sub_100005A00(v12);

    v20 = *(v7 + 8);
    v20(v6, v34);
  }

  else
  {

    v20 = *(v7 + 8);
    v20(v6, v8);
  }

  v21 = *(v0 + 112);
  *(v0 + 64) = _swiftEmptyArrayStorage;
  v22 = OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state;
  *(v0 + 232) = v20;
  *(v0 + 240) = v22;
  v23 = v21 + v22;
  v24 = *(v21 + v22);
  *(v0 + 248) = v24;
  if (v24)
  {
    sub_1000AD2AC(*(v24 + 16));
  }

  v25 = v24 != 0;
  v26 = *(v23 + 8);
  *(v0 + 256) = v26;
  *(v0 + 264) = sub_1000B5968(v26);
  *(v0 + 272) = v27;
  *(v0 + 608) = v28;
  v29 = swift_allocObject();
  *(v0 + 280) = v29;
  *(v29 + 16) = sub_1000EF5BC(_swiftEmptyArrayStorage);
  v30 = swift_allocObject();
  *(v0 + 288) = v30;
  *(v30 + 16) = _swiftEmptyArrayStorage;
  *(v0 + 296) = sub_1000EF6C0(_swiftEmptyArrayStorage);
  objc_opt_self();
  *(v0 + 304) = sub_1002BB3F0();
  v31 = swift_allocObject();
  *(v0 + 312) = v31;
  *(v31 + 16) = v25;
  *(v31 + 24) = v29;
  *(v31 + 32) = v30;

  v32 = swift_task_alloc();
  *(v0 + 320) = v32;
  *v32 = v0;
  v32[1] = sub_1000A8858;

  return sub_1001B7318(sub_1001B7318, sub_1000B5B24, v31);
}

uint64_t sub_1000A8858()
{
  v2 = *v1;
  *(v2 + 328) = v0;

  v3 = *(v2 + 304);

  if (v0)
  {

    v4 = sub_1000ACEF8;
  }

  else
  {
    v4 = sub_1000A89B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000A89B8()
{
  v106 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 328);
    v3 = sub_1000A7FC4(v1, *(v0 + 280) + 16);
    if (v2)
    {
      v4 = *(v0 + 608);

      if ((v4 & 1) == 0)
      {
        v66 = *(v0 + 264);

        return sub_1000BDCA0(v66);
      }

      return result;
    }

    v6 = *(v0 + 288);
    v7 = v3;
    swift_beginAccess();
    *(v6 + 16) = v7;
  }

  v8 = objc_opt_self();
  v9 = sub_10030B61C(v8, 0);
  *(v0 + 336) = [v9 integerValue];

  v10 = &OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated;
  if ([objc_opt_self() isAutomaticUpdateAuthorizationEnabled])
  {
    v11 = *(*(v0 + 256) + OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 609) = v11 & 1;
  v12 = *(v0 + 288);
  swift_beginAccess();
  v13 = *(v12 + 16);
  *(v0 + 344) = v13;
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 352) = v14;
    if (v14)
    {
      goto LABEL_12;
    }

LABEL_53:
    v18 = 0;
    v21 = *(v0 + 296);
LABEL_54:
    *(v0 + 592) = v21;
    *(v0 + 584) = v18;
    v95 = *(v0 + 608);
    v96 = swift_task_alloc();
    *(v0 + 600) = v96;
    *v96 = v0;
    v96[1] = sub_1000AC8E8;
    v97 = *(v0 + 264);
    v98 = *(v0 + 272);

    return sub_1000AF510(v21, v97, v98, v95 & 1, v0 + 64);
  }

LABEL_52:
  v94 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 352) = v94;
  if (!v94)
  {
    goto LABEL_53;
  }

LABEL_12:
  v15 = OBJC_IVAR____TtC9appstored14UpdatesContext_logKey;
  *(v0 + 360) = OBJC_IVAR____TtC9appstored14UpdatesContext_reason;
  *(v0 + 368) = v15;
  v16 = *v10;
  *(v0 + 376) = OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken;
  *(v0 + 384) = v16;
  v17 = *(v0 + 296);

  v18 = 0;
  v19 = 0;
  v10 = 0;
  v20 = &selRef_proxyForBundleID_;
  v21 = v17;
  while (1)
  {
    *(v0 + 400) = v18;
    *(v0 + 408) = v21;
    *(v0 + 392) = v17;
    *(v0 + 610) = v19 & 1;
    v22 = *(v0 + 344);
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v23 = *(v22 + 8 * v10 + 32);
      swift_unknownObjectRetain();
    }

    *(v0 + 416) = v23;
    *(v0 + 424) = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v24 = *(*(v0 + 256) + *(v0 + 360));
    if (v24 >= 0xA)
    {
      type metadata accessor for LoadSoftwareUpdatesReason(0);
      *(v0 + 72) = v24;

      return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    }

    v25 = 0x129u >> v24;
    v26 = *(v0 + 336);
    v27 = (*(v0 + 112) + *(v0 + 240));
    v29 = v27[5];
    v28 = v27[6];
    v30 = sub_100005B60(v27 + 2, v29);
    v31 = sub_1000C56EC(v29, v28, v30);
    v32 = [v23 v20[8]];
    *(v0 + 432) = v32;

    if (v26 < [v23 parentalControlsRank])
    {
      v70 = *(v0 + 368);
      v71 = *(v0 + 256);
      type metadata accessor for ScreenTimeExceptionsHelper();
      v72 = [v32 account];
      v73 = [v72 ams_DSID];
      *(v0 + 440) = v73;

      v74 = [v23 itemIdentifier];
      v75 = *(v71 + v70);
      *(v0 + 448) = v75;
      v76 = v75;
      v77 = swift_task_alloc();
      *(v0 + 456) = v77;
      *v77 = v0;
      v77[1] = sub_1000A9520;

      return sub_1001473A4(v73, v74, v76);
    }

    if (*(v0 + 609) != 1 || (sub_1000AD5E8(*(v0 + 416)) & 1) != 0)
    {
      v67 = *(v0 + 416);
      *(v0 + 472) = objc_opt_self();
      *(v0 + 480) = sub_1003C27BC();
      v68 = swift_allocObject();
      *(v0 + 488) = v68;
      *(v68 + 16) = v67;
      swift_unknownObjectRetain();
      v69 = swift_task_alloc();
      *(v0 + 496) = v69;
      *v69 = v0;
      v69[1] = sub_1000AA6E0;

      return sub_1001B78BC(sub_1000B5B44, v68);
    }

    v33 = *(v0 + 416);
    type metadata accessor for ASDError(0);
    *(v0 + 104) = 1301;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000B5B94(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v34 = *(v0 + 96);
    [v33 databaseID];
    v35.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    v36 = [v33 bundleID];
    if (!v36)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = String._bridgeToObjectiveC()();
    }

    v37 = v34;
    v38 = _convertErrorToNSError(_:)();
    v104 = v37;

    v39 = [objc_opt_self() resultWithPersistentID:v35.super.super.isa bundleID:v36 status:1 error:v38];
    v40 = v39;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v41 = *(v0 + 112);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    static Logger.updates.getter();
    v42 = v41;
    swift_unknownObjectRetain_n();
    v43 = v42;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v102 = v40;
    v103 = *(v0 + 432);
    v47 = *(v0 + 416);
    if (v46)
    {
      v48 = *(v0 + 368);
      v49 = *(v0 + 256);
      v100 = *(v0 + 200);
      v101 = *(v0 + 232);
      v50 = *(v0 + 112);
      v99 = *(v0 + 144);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v105 = v53;
      *v51 = 138412546;
      v54 = *(v49 + v48);
      *(v51 + 4) = v54;
      *v52 = v54;
      v55 = v54;

      *(v51 + 12) = 2082;
      v56 = [v47 bundleID];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = v57;
      v20 = &selRef_proxyForBundleID_;
      v61 = sub_1001AD0D8(v60, v59, &v105);

      *(v51 + 14) = v61;
      swift_unknownObjectRelease_n();
      _os_log_impl(&_mh_execute_header, v44, v45, "[%@] Skipping %{public}s due to automatic update authorization needed", v51, 0x16u);
      sub_100086A24(v52);

      sub_100005A00(v53);

      swift_unknownObjectRelease();
      v101(v100, v99);
    }

    else
    {
      v62 = *(v0 + 232);
      v63 = *(v0 + 200);
      v64 = *(v0 + 144);
      v65 = *(v0 + 112);
      swift_unknownObjectRelease_n();

      v62(v63, v64);
    }

    v18 = *(v0 + 400);
    v21 = *(v0 + 408);
    v10 = *(v0 + 424);
    if (v10 == *(v0 + 352))
    {
      break;
    }

    v17 = *(v0 + 392);
    v19 = *(v0 + 610);
  }

  v78 = *(v0 + 610);

  if (v78 != 1)
  {
    goto LABEL_54;
  }

  *(v0 + 568) = v21;
  *(v0 + 560) = v18;
  v79 = *(v0 + 112);
  static Logger.updates.getter();
  v80 = v79;
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = *(v0 + 368);
    v84 = *(v0 + 256);
    v85 = *(v0 + 112);
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v86 = 138412290;
    v88 = *(v84 + v83);
    *(v86 + 4) = v88;
    *v87 = v88;
    v89 = v88;

    _os_log_impl(&_mh_execute_header, v81, v82, "[%@] Displaying network policy dialogs for converted user-initiated updates if necessary", v86, 0xCu);
    sub_100086A24(v87);
  }

  else
  {

    v81 = *(v0 + 112);
  }

  v90 = *(v0 + 232);
  v91 = *(v0 + 168);
  v92 = *(v0 + 144);

  v90(v91, v92);
  v93 = swift_task_alloc();
  *(v0 + 576) = v93;
  *v93 = v0;
  v93[1] = sub_1000AC738;

  return sub_1000ADB24();
}

uint64_t sub_1000A9520(uint64_t a1)
{
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 440);
  *(*v1 + 464) = a1;

  return _swift_task_switch(sub_1000A9654, 0, 0);
}

uint64_t sub_1000A9654(uint64_t a1, uint64_t a2)
{
  v156 = v3;
  v5 = *(v3 + 464);
  if (v5)
  {
    if (v5 >> 62)
    {
      goto LABEL_39;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v7 = *(v3 + 464);
        v8 = v7 & 0xC000000000000001;
        if ((v7 & 0xC000000000000001) != 0)
        {

          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_43;
          }

          v9 = *(v5 + 32);

          v10 = v9;
        }

        v2 = v10;
        if (v6 == 1)
        {
          break;
        }

        v153 = (*(v3 + 464) & 0xFFFFFFFFFFFFFF8);
        v66 = 1;
        while (1)
        {
          if (v8)
          {
            v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v66 & 0x8000000000000000) != 0)
            {
              goto LABEL_37;
            }

            if (v66 >= v153[2])
            {
              goto LABEL_38;
            }

            v67 = *(v5 + 8 * v66 + 32);
          }

          v11 = v67;
          v4 = (v66 + 1);
          if (__OFADD__(v66, 1))
          {
            break;
          }

          v68 = [v2 ratingValue];
          if (v68 < [v11 ratingValue])
          {

            v2 = v11;
            ++v66;
            if (v4 == v6)
            {
              goto LABEL_9;
            }
          }

          else
          {

            ++v66;
            if (v4 == v6)
            {
              goto LABEL_8;
            }
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        if (!v6)
        {
          goto LABEL_11;
        }
      }

LABEL_8:
      v11 = v2;
LABEL_9:

      v6 = [v11 ratingValue];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_11:
  v12 = [*(v3 + 416) parentalControlsRank];
  v13 = *(v3 + 416);
  v14 = v12 < 1 || v6 >= v12;
  v4 = &selRef_copyWithZone_;
  if (v14)
  {
    v15 = *(v3 + 112);
    static Logger.updates.getter();
    swift_unknownObjectRetain_n();
    v16 = v15;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v3 + 416);
    if (v19)
    {
      v21 = *(v3 + 368);
      v22 = *(v3 + 256);
      v150 = *(v3 + 216);
      v154 = *(v3 + 232);
      v148 = *(v3 + 144);
      v23 = *(v3 + 112);
      v145 = *(v3 + 336);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v155 = v143;
      *v24 = 138413314;
      v26 = *(v22 + v21);
      *(v24 + 4) = v26;
      *v25 = v26;
      v27 = v26;

      *(v24 + 12) = 2082;
      v28 = [v20 bundleID];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_1001AD0D8(v29, v31, &v155);
      v4 = &selRef_copyWithZone_;

      *(v24 + 14) = v32;
      swift_unknownObjectRelease_n();
      *(v24 + 22) = 2050;
      v33 = [v20 parentalControlsRank];
      swift_unknownObjectRelease();
      *(v24 + 24) = v33;
      swift_unknownObjectRelease();
      *(v24 + 32) = 2050;
      *(v24 + 34) = v145;
      *(v24 + 42) = 2050;
      *(v24 + 44) = v6;

      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Bypassing parental restrictions for %{public}s, parentalControlsRank: %{public}ld, restrictionsRank: %{public}ld, exceptedRank: %{public}llu", v24, 0x34u);
      sub_100086A24(v25);

      sub_100005A00(v143);

      v154(v150, v148);
    }

    else
    {
      v58 = *(v3 + 232);
      v59 = *(v3 + 216);
      v60 = *(v3 + 144);
      v61 = *(v3 + 112);
      swift_unknownObjectRelease_n();

      v58(v59, v60);
    }

    goto LABEL_50;
  }

  v34 = [*(v3 + 416) databaseID];
  v35 = [v13 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = String._bridgeToObjectiveC()();

  v37 = [objc_opt_self() resultWithRestrictedActivity:v34 bundleID:v36];

  v38 = v37;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v39 = *(v3 + 112);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  static Logger.updates.getter();
  swift_unknownObjectRetain_n();
  v40 = v39;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v151 = v38;
  v153 = *(v3 + 432);
  v2 = *(v3 + 416);
  if (!v43)
  {
    v62 = *(v3 + 232);
    v63 = *(v3 + 208);
    v64 = *(v3 + 144);
    v65 = *(v3 + 112);
    swift_unknownObjectRelease_n();

    v62(v63, v64);
    goto LABEL_59;
  }

  v44 = *(v3 + 368);
  v45 = *(v3 + 256);
  v146 = *(v3 + 208);
  v147 = *(v3 + 232);
  v144 = *(v3 + 144);
  v46 = *(v3 + 112);
  v142 = *(v3 + 336);
  v47 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  v155 = v49;
  *v47 = 138413058;
  v50 = *(v45 + v44);
  *(v47 + 4) = v50;
  *v48 = v50;
  v51 = v50;

  *(v47 + 12) = 2082;
  v52 = [v2 bundleID];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v56 = sub_1001AD0D8(v53, v55, &v155);

  *(v47 + 14) = v56;
  swift_unknownObjectRelease_n();
  *(v47 + 22) = 2050;
  v57 = [v2 parentalControlsRank];
  swift_unknownObjectRelease();
  *(v47 + 24) = v57;
  swift_unknownObjectRelease();
  *(v47 + 32) = 2050;
  *(v47 + 34) = v142;

  _os_log_impl(&_mh_execute_header, v41, v42, "[%@] Skipping %{public}s due to restrictions, parentalControlsRank: %{public}ld, restrictionsRank: %{public}ld", v47, 0x2Au);
  sub_100086A24(v48);

  sub_100005A00(v49);
  v4 = &selRef_copyWithZone_;

LABEL_57:
  swift_unknownObjectRelease();
  v147(v146, v144);
LABEL_59:
  while (1)
  {
    v5 = *(v3 + 424);
    if (v5 == *(v3 + 352))
    {
      break;
    }

    a2 = *(v3 + 344);
    if ((a2 & 0xC000000000000001) == 0)
    {
LABEL_43:
      if (v5 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v69 = *(a2 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        goto LABEL_47;
      }

      __break(1u);
    }

    v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_47:
    *(v3 + 416) = v69;
    *(v3 + 424) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_82:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_55;
    }

    v70 = *(*(v3 + 256) + *(v3 + 360));
    if (v70 >= 0xA)
    {
      type metadata accessor for LoadSoftwareUpdatesReason(0);
      *(v3 + 72) = v70;

      return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    }

    v71 = 0x129u >> v70;
    v72 = *(v3 + 336);
    v73 = (*(v3 + 112) + *(v3 + 240));
    v74 = v73[5];
    v75 = v73[6];
    v76 = sub_100005B60(v73 + 2, v74);
    v77 = sub_1000C56EC(v74, v75, v76);
    v78 = [v69 purchaseInfoForUpdateUserInitiated:v71 & 1 bag:v77];
    *(v3 + 432) = v78;

    if (v72 < [v69 parentalControlsRank])
    {
      v126 = *(v3 + 368);
      v127 = *(v3 + 256);
      type metadata accessor for ScreenTimeExceptionsHelper();
      v128 = [v78 account];
      v129 = [v128 ams_DSID];
      *(v3 + 440) = v129;

      v130 = [v69 itemIdentifier];
      v131 = *(v127 + v126);
      *(v3 + 448) = v131;
      v132 = v131;
      v133 = swift_task_alloc();
      *(v3 + 456) = v133;
      *v133 = v3;
      v133[1] = sub_1000A9520;

      return sub_1001473A4(v129, v130, v132);
    }

LABEL_50:
    if (*(v3 + 609) != 1 || (sub_1000AD5E8(*(v3 + 416)) & 1) != 0)
    {
      v108 = *(v3 + 416);
      *(v3 + 472) = objc_opt_self();
      *(v3 + 480) = sub_1003C27BC();
      v109 = swift_allocObject();
      *(v3 + 488) = v109;
      *(v109 + 16) = v108;
      swift_unknownObjectRetain();
      v110 = swift_task_alloc();
      *(v3 + 496) = v110;
      *v110 = v3;
      v110[1] = sub_1000AA6E0;

      return sub_1001B78BC(sub_1000B5B44, v109);
    }

    v79 = *(v3 + 416);
    type metadata accessor for ASDError(0);
    *(v3 + 104) = 1301;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000B5B94(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v80 = *(v3 + 96);
    [v79 v4[56]];
    v81.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    v82 = [v79 bundleID];
    if (!v82)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = String._bridgeToObjectiveC()();
    }

    v83 = v80;
    v84 = _convertErrorToNSError(_:)();
    v153 = v83;

    v85 = [objc_opt_self() resultWithPersistentID:v81.super.super.isa bundleID:v82 status:1 error:v84];
    v2 = v85;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_82;
    }

LABEL_55:
    v86 = *(v3 + 112);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    static Logger.updates.getter();
    v87 = v86;
    swift_unknownObjectRetain_n();
    v88 = v87;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    v91 = os_log_type_enabled(v89, v90);
    v149 = v2;
    v152 = *(v3 + 432);
    v92 = *(v3 + 416);
    if (v91)
    {
      v93 = *(v3 + 368);
      v94 = *(v3 + 256);
      v146 = *(v3 + 200);
      v147 = *(v3 + 232);
      v95 = *(v3 + 112);
      v144 = *(v3 + 144);
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v155 = v98;
      *v96 = 138412546;
      v99 = *(v94 + v93);
      *(v96 + 4) = v99;
      *v97 = v99;
      v100 = v99;

      *(v96 + 12) = 2082;
      v101 = [v92 bundleID];
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      v2 = sub_1001AD0D8(v102, v104, &v155);

      *(v96 + 14) = v2;
      swift_unknownObjectRelease_n();
      _os_log_impl(&_mh_execute_header, v89, v90, "[%@] Skipping %{public}s due to automatic update authorization needed", v96, 0x16u);
      sub_100086A24(v97);

      sub_100005A00(v98);
      v4 = &selRef_copyWithZone_;

      goto LABEL_57;
    }

    v105 = *(v3 + 232);
    v106 = *(v3 + 200);
    v2 = *(v3 + 144);
    v107 = *(v3 + 112);
    swift_unknownObjectRelease_n();

    v105(v106, v2);
  }

  v113 = *(v3 + 400);
  v112 = *(v3 + 408);
  v114 = *(v3 + 610);

  if (v114 == 1)
  {
    *(v3 + 568) = v112;
    *(v3 + 560) = v113;
    v115 = *(v3 + 112);
    static Logger.updates.getter();
    v116 = v115;
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = *(v3 + 368);
      v120 = *(v3 + 256);
      v121 = *(v3 + 112);
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v122 = 138412290;
      v124 = *(v120 + v119);
      *(v122 + 4) = v124;
      *v123 = v124;
      v125 = v124;

      _os_log_impl(&_mh_execute_header, v117, v118, "[%@] Displaying network policy dialogs for converted user-initiated updates if necessary", v122, 0xCu);
      sub_100086A24(v123);
    }

    else
    {

      v117 = *(v3 + 112);
    }

    v138 = *(v3 + 232);
    v139 = *(v3 + 168);
    v140 = *(v3 + 144);

    v138(v139, v140);
    v141 = swift_task_alloc();
    *(v3 + 576) = v141;
    *v141 = v3;
    v141[1] = sub_1000AC738;

    return sub_1000ADB24();
  }

  else
  {
    *(v3 + 592) = v112;
    *(v3 + 584) = v113;
    v134 = *(v3 + 608);
    v135 = swift_task_alloc();
    *(v3 + 600) = v135;
    *v135 = v3;
    v135[1] = sub_1000AC8E8;
    v136 = *(v3 + 264);
    v137 = *(v3 + 272);

    return sub_1000AF510(v112, v136, v137, v134 & 1, v3 + 64);
  }
}

uint64_t sub_1000AA6E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[63] = a1;
  v5[64] = a2;
  v5[65] = v2;

  v6 = v4[60];
  if (v2)
  {

    v7 = sub_1000AD01C;
  }

  else
  {

    v7 = sub_1000AA864;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000AA864()
{
  v202 = v0;
  v2 = *(v0 + 512);
  if (!v2)
  {
    if (([*(v0 + 432) isMachineBased] & 1) != 0 || (v23 = objc_msgSend(*(v0 + 432), "account")) == 0 || (v24 = v23, isa = objc_msgSend(v23, "ams_DSID"), v24, !isa))
    {
      sub_10009FAD4(0, &qword_10059CBB0);
      isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    }

    v27 = *(v0 + 392);
    v26 = *(v0 + 400);
    [*(v0 + 432) setRequestToken:*(*(v0 + 256) + *(v0 + 376))];
    sub_100006F8C(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v27;
    v29 = sub_1000EE9F0(isa);
    v31 = *(v27 + 16);
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v35 = v30;
    if (*(*(v0 + 392) + 24) >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v181 = v29;
        sub_1001B1150();
        v29 = v181;
        v1 = *(v0 + 80);
        if (v35)
        {
LABEL_22:
          v61 = (v1[7] + 8 * v29);
          v62 = *(v0 + 432);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_23:
            v63 = *(v0 + 432);
            v64 = *(v0 + 112);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            static Logger.updates.getter();
            swift_unknownObjectRetain_n();
            v65 = v64;
            v66 = isa;
            v67 = v63;
            v68 = v65;
            v69 = v66;
            v70 = v67;
            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.default.getter();
            v198 = v71;
            v73 = os_log_type_enabled(v71, v72);
            v74 = *(v0 + 432);
            v75 = *(v0 + 416);
            if (v73)
            {
              v76 = *(v0 + 368);
              v185 = v72;
              v77 = *(v0 + 256);
              v192 = *(v0 + 176);
              v195 = *(v0 + 232);
              v182 = *(v0 + 136);
              v184 = *(v0 + 128);
              v78 = *(v0 + 112);
              v79 = *(v0 + 120);
              v189 = *(v0 + 144);
              v80 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v201 = swift_slowAlloc();
              *v80 = 138413314;
              v81 = *(v77 + v76);
              *(v80 + 4) = v81;
              *v183 = v81;
              v82 = v81;

              *(v80 + 12) = 2082;
              v83 = [v75 bundleID];
              v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v86 = v85;

              v87 = sub_1001AD0D8(v84, v86, &v201);

              *(v80 + 14) = v87;
              swift_unknownObjectRelease_n();
              *(v80 + 22) = 2048;
              v88 = [v75 itemIdentifier];
              swift_unknownObjectRelease();
              *(v80 + 24) = v88;
              swift_unknownObjectRelease();
              *(v80 + 32) = 2082;
              v89 = [v74 externalID];
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              sub_1000B5B94(&qword_10059C3E8, &type metadata accessor for UUID);
              v90 = dispatch thunk of CustomStringConvertible.description.getter();
              v92 = v91;
              (*(v184 + 8))(v182, v79);
              v93 = sub_1001AD0D8(v90, v92, &v201);

              *(v80 + 34) = v93;

              *(v80 + 42) = 2114;
              *(v80 + 44) = v69;
              v183[1] = v69;

              _os_log_impl(&_mh_execute_header, v198, v185, "[%@] [%{public}s:%llu][%{public}s] Added purchase for account: %{public}@", v80, 0x34u);
              sub_100085D40(&unk_10059C250);
              swift_arrayDestroy();

              swift_arrayDestroy();

              swift_unknownObjectRelease();
              v195(v192, v189);
            }

            else
            {
              v102 = *(v0 + 232);
              v103 = *(v0 + 176);
              v104 = *(v0 + 144);
              v105 = *(v0 + 112);
              swift_unknownObjectRelease_n();

              v102(v103, v104);
            }

            v58 = sub_10009B2C0;
            v57 = v1;
            goto LABEL_29;
          }

LABEL_71:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          goto LABEL_23;
        }

LABEL_21:
        v59 = v29;
        sub_1001B0AF0(v29, isa, _swiftEmptyArrayStorage, v1);
        v60 = isa;
        v29 = v59;
        goto LABEL_22;
      }
    }

    else
    {
      sub_1001AE15C(v34, isUniquelyReferenced_nonNull_native);
      sub_10009FAD4(0, &qword_10059CBB0);
      v29 = sub_1000EE9F0(isa);
      if ((v35 & 1) != (v36 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }
    }

    v1 = *(v0 + 80);
    if (v35)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v3 = *(v0 + 112);
  static Logger.updates.getter();
  v4 = v3;
  swift_unknownObjectRetain_n();
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 416);
  if (v8)
  {
    v10 = *(v0 + 368);
    v11 = *(v0 + 256);
    v191 = *(v0 + 192);
    v194 = *(v0 + 232);
    v12 = *(v0 + 112);
    v188 = *(v0 + 144);
    v13 = swift_slowAlloc();
    v197 = v2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v201 = v15;
    *v13 = 138412546;
    v16 = *(v11 + v10);
    *(v13 + 4) = v16;
    *v14 = v16;
    v17 = v16;

    *(v13 + 12) = 2082;
    v18 = [v9 bundleID];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_1001AD0D8(v19, v21, &v201);

    *(v13 + 14) = v22;
    swift_unknownObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Skipping %{public}s due to the existence of an in-progress installation for the same bundle ID", v13, 0x16u);
    sub_100086A24(v14);
    v2 = v197;

    sub_100005A00(v15);

    v194(v191, v188);
  }

  else
  {
    v38 = *(v0 + 232);
    v39 = *(v0 + 192);
    v40 = *(v0 + 144);
    v41 = *(v0 + 112);

    swift_unknownObjectRelease_n();
    v38(v39, v40);
  }

  if (*(*(v0 + 256) + *(v0 + 384)) == 1)
  {
    v42 = *(v0 + 112);
    static Logger.updates.getter();
    v43 = v42;
    v44 = v2;
    v45 = v43;
    v46 = v44;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = *(v0 + 512);
      v50 = *(v0 + 368);
      v51 = *(v0 + 256);
      v52 = *(v0 + 112);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412546;
      v55 = *(v51 + v50);
      *(v53 + 4) = v55;
      *v54 = v55;
      v56 = v55;

      *(v53 + 12) = 2114;
      *(v53 + 14) = v46;
      v54[1] = v49;

      _os_log_impl(&_mh_execute_header, v47, v48, "[%@] [%{public}@] Converting to a user-initiated installation…", v53, 0x16u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();
    }

    else
    {

      v47 = *(v0 + 112);
    }

    v94 = *(v0 + 504);
    v95 = *(v0 + 232);
    v96 = *(v0 + 184);
    v97 = *(v0 + 144);

    v95(v96, v97);
    *(v0 + 528) = sub_1003C27BC();
    v98 = swift_allocObject();
    *(v0 + 536) = v98;
    *(v98 + 16) = v94;
    v199 = sub_1000DA0B4;
    v99 = swift_task_alloc();
    *(v0 + 544) = v99;
    *v99 = v0;
    v99[1] = sub_1000ABC08;
    v100 = sub_1000B5B60;
    v101 = v98;
LABEL_55:

    return v199(v100, v101);
  }

  swift_unknownObjectRelease();
  v58 = *(v0 + 400);
  v57 = *(v0 + 408);
  v1 = *(v0 + 392);
LABEL_29:
  isa = *(v0 + 424);
  if (isa == *(v0 + 352))
  {
LABEL_30:
    v106 = *(v0 + 610);

    if (v106 == 1)
    {
      *(v0 + 568) = v57;
      *(v0 + 560) = v58;
      v107 = *(v0 + 112);
      static Logger.updates.getter();
      v108 = v107;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = *(v0 + 368);
        v112 = *(v0 + 256);
        v113 = *(v0 + 112);
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *v114 = 138412290;
        v116 = *(v112 + v111);
        *(v114 + 4) = v116;
        *v115 = v116;
        v117 = v116;

        _os_log_impl(&_mh_execute_header, v109, v110, "[%@] Displaying network policy dialogs for converted user-initiated updates if necessary", v114, 0xCu);
        sub_100086A24(v115);
      }

      else
      {

        v109 = *(v0 + 112);
      }

      v169 = *(v0 + 232);
      v170 = *(v0 + 168);
      v171 = *(v0 + 144);

      v169(v170, v171);
      v172 = swift_task_alloc();
      *(v0 + 576) = v172;
      *v172 = v0;
      v172[1] = sub_1000AC738;

      return sub_1000ADB24();
    }

    else
    {
      *(v0 + 592) = v57;
      *(v0 + 584) = v58;
      v162 = *(v0 + 608);
      v163 = swift_task_alloc();
      *(v0 + 600) = v163;
      *v163 = v0;
      v163[1] = sub_1000AC8E8;
      v164 = *(v0 + 264);
      v165 = *(v0 + 272);

      return sub_1000AF510(v57, v164, v165, v162 & 1, v0 + 64);
    }
  }

  else
  {
    v118 = &selRef_proxyForBundleID_;
    while (1)
    {
      *(v0 + 400) = v58;
      *(v0 + 408) = v57;
      *(v0 + 392) = v1;
      v132 = *(v0 + 344);
      if ((v132 & 0xC000000000000001) != 0)
      {
        v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (isa >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v133 = *(v132 + 8 * isa + 32);
        swift_unknownObjectRetain();
      }

      *(v0 + 416) = v133;
      *(v0 + 424) = isa + 1;
      if (__OFADD__(isa, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v134 = *(*(v0 + 256) + *(v0 + 360));
      if (v134 >= 0xA)
      {
        break;
      }

      v135 = 0x129u >> v134;
      v136 = *(v0 + 336);
      v137 = (*(v0 + 112) + *(v0 + 240));
      v139 = v137[5];
      v138 = v137[6];
      v140 = sub_100005B60(v137 + 2, v139);
      v141 = sub_1000C56EC(v139, v138, v140);
      v142 = [v133 v118[8]];
      *(v0 + 432) = v142;

      if (v136 < [v133 parentalControlsRank])
      {
        v173 = *(v0 + 368);
        v174 = *(v0 + 256);
        type metadata accessor for ScreenTimeExceptionsHelper();
        v175 = [v142 account];
        v176 = [v175 ams_DSID];
        *(v0 + 440) = v176;

        v177 = [v133 itemIdentifier];
        v178 = *(v174 + v173);
        *(v0 + 448) = v178;
        v179 = v178;
        v180 = swift_task_alloc();
        *(v0 + 456) = v180;
        *v180 = v0;
        v180[1] = sub_1000A9520;

        return sub_1001473A4(v176, v177, v179);
      }

      if (*(v0 + 609) != 1 || (sub_1000AD5E8(*(v0 + 416)) & 1) != 0)
      {
        v166 = *(v0 + 416);
        *(v0 + 472) = objc_opt_self();
        *(v0 + 480) = sub_1003C27BC();
        v167 = swift_allocObject();
        *(v0 + 488) = v167;
        *(v167 + 16) = v166;
        v199 = sub_1001B78BC;
        swift_unknownObjectRetain();
        v168 = swift_task_alloc();
        *(v0 + 496) = v168;
        *v168 = v0;
        v168[1] = sub_1000AA6E0;
        v100 = sub_1000B5B44;
        v101 = v167;
        goto LABEL_55;
      }

      v143 = *(v0 + 416);
      type metadata accessor for ASDError(0);
      *(v0 + 104) = 1301;
      sub_1000EF17C(_swiftEmptyArrayStorage);
      sub_1000B5B94(&qword_10059B7F0, type metadata accessor for ASDError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v144 = *(v0 + 96);
      [v143 databaseID];
      v145.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
      v146 = [v143 bundleID];
      if (!v146)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v146 = String._bridgeToObjectiveC()();
      }

      v147 = v144;
      v148 = _convertErrorToNSError(_:)();
      v200 = v147;

      v149 = [objc_opt_self() resultWithPersistentID:v145.super.super.isa bundleID:v146 status:1 error:v148];
      v150 = v149;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v151 = *(v0 + 112);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      static Logger.updates.getter();
      v152 = v151;
      swift_unknownObjectRetain_n();
      v153 = v152;
      v154 = Logger.logObject.getter();
      v196 = v150;
      v155 = static os_log_type_t.default.getter();
      v156 = os_log_type_enabled(v154, v155);
      v193 = *(v0 + 432);
      v157 = *(v0 + 416);
      if (v156)
      {
        v119 = *(v0 + 368);
        v120 = *(v0 + 256);
        v187 = *(v0 + 200);
        v190 = *(v0 + 232);
        v121 = *(v0 + 112);
        v186 = *(v0 + 144);
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v201 = v124;
        *v122 = 138412546;
        v125 = *(v120 + v119);
        *(v122 + 4) = v125;
        *v123 = v125;
        v126 = v125;

        *(v122 + 12) = 2082;
        v127 = [v157 bundleID];
        v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v130 = v129;

        v131 = sub_1001AD0D8(v128, v130, &v201);

        *(v122 + 14) = v131;
        swift_unknownObjectRelease_n();
        _os_log_impl(&_mh_execute_header, v154, v155, "[%@] Skipping %{public}s due to automatic update authorization needed", v122, 0x16u);
        sub_100086A24(v123);
        v118 = &selRef_proxyForBundleID_;

        sub_100005A00(v124);

        swift_unknownObjectRelease();
        v190(v187, v186);
      }

      else
      {
        v158 = *(v0 + 232);
        v159 = *(v0 + 200);
        v160 = *(v0 + 144);
        v161 = *(v0 + 112);
        swift_unknownObjectRelease_n();

        v158(v159, v160);
      }

      v58 = *(v0 + 400);
      v57 = *(v0 + 408);
      v1 = *(v0 + 392);
      isa = *(v0 + 424);
      if (isa == *(v0 + 352))
      {
        goto LABEL_30;
      }
    }

    type metadata accessor for LoadSoftwareUpdatesReason(0);
    *(v0 + 72) = v134;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  }
}

uint64_t sub_1000ABC08()
{
  v2 = *v1;
  *(v2 + 552) = v0;

  v3 = *(v2 + 528);
  if (v0)
  {

    v4 = sub_1000AD160;
  }

  else
  {

    v4 = sub_1000ABD80;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1000ABD80()
{
  v89 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 424);
  v3 = *(v0 + 352);

  swift_unknownObjectRelease();
  if (v2 == v3)
  {

    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
LABEL_3:
    *(v0 + 568) = v4;
    *(v0 + 560) = v5;
    v6 = *(v0 + 112);
    static Logger.updates.getter();
    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 368);
      v11 = *(v0 + 256);
      v12 = *(v0 + 112);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = *(v11 + v10);
      *(v13 + 4) = v15;
      *v14 = v15;
      v16 = v15;

      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Displaying network policy dialogs for converted user-initiated updates if necessary", v13, 0xCu);
      sub_100086A24(v14);
    }

    else
    {

      v8 = *(v0 + 112);
    }

    v63 = *(v0 + 232);
    v64 = *(v0 + 168);
    v65 = *(v0 + 144);

    v63(v64, v65);
    v66 = swift_task_alloc();
    *(v0 + 576) = v66;
    *v66 = v0;
    v66[1] = sub_1000AC738;

    sub_1000ADB24();
  }

  else
  {
    v17 = *(v0 + 424);
    LOBYTE(v18) = 1;
    v19 = &selRef_proxyForBundleID_;
    do
    {
      *(v0 + 610) = v18 & 1;
      v24 = *(v0 + 344);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v25 = *(v24 + 8 * v17 + 32);
        swift_unknownObjectRetain();
      }

      *(v0 + 416) = v25;
      *(v0 + 424) = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      v26 = *(*(v0 + 256) + *(v0 + 360));
      if (v26 >= 0xA)
      {
        type metadata accessor for LoadSoftwareUpdatesReason(0);
        *(v0 + 72) = v26;

        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        return;
      }

      v27 = 0x129u >> v26;
      v28 = *(v0 + 336);
      v29 = (*(v0 + 112) + *(v0 + 240));
      v31 = v29[5];
      v30 = v29[6];
      v32 = sub_100005B60(v29 + 2, v31);
      v33 = sub_1000C56EC(v31, v30, v32);
      v34 = [v25 v19[8]];
      *(v0 + 432) = v34;

      if (v28 < [v25 parentalControlsRank])
      {
        v70 = *(v0 + 368);
        v71 = *(v0 + 256);
        type metadata accessor for ScreenTimeExceptionsHelper();
        v72 = [v34 account];
        v73 = [v72 ams_DSID];
        *(v0 + 440) = v73;

        v74 = [v25 itemIdentifier];
        v75 = *(v71 + v70);
        *(v0 + 448) = v75;
        v76 = v75;
        v77 = swift_task_alloc();
        *(v0 + 456) = v77;
        *v77 = v0;
        v77[1] = sub_1000A9520;

        sub_1001473A4(v73, v74, v76);
        return;
      }

      if (*(v0 + 609) != 1 || (sub_1000AD5E8(*(v0 + 416)) & 1) != 0)
      {
        v67 = *(v0 + 416);
        *(v0 + 472) = objc_opt_self();
        *(v0 + 480) = sub_1003C27BC();
        v68 = swift_allocObject();
        *(v0 + 488) = v68;
        *(v68 + 16) = v67;
        swift_unknownObjectRetain();
        v69 = swift_task_alloc();
        *(v0 + 496) = v69;
        *v69 = v0;
        v69[1] = sub_1000AA6E0;

        sub_1001B78BC(sub_1000B5B44, v68);
        return;
      }

      v35 = *(v0 + 416);
      type metadata accessor for ASDError(0);
      *(v0 + 104) = 1301;
      sub_1000EF17C(_swiftEmptyArrayStorage);
      sub_1000B5B94(&qword_10059B7F0, type metadata accessor for ASDError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v36 = *(v0 + 96);
      [v35 databaseID];
      v37.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
      v38 = [v35 bundleID];
      if (!v38)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = String._bridgeToObjectiveC()();
      }

      v39 = v36;
      v40 = _convertErrorToNSError(_:)();
      v87 = v39;

      v41 = [objc_opt_self() resultWithPersistentID:v37.super.super.isa bundleID:v38 status:1 error:v40];
      v42 = v41;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v43 = *(v0 + 112);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      static Logger.updates.getter();
      v44 = v43;
      swift_unknownObjectRetain_n();
      v45 = v44;
      v46 = Logger.logObject.getter();
      v86 = v42;
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v85 = *(v0 + 432);
      v49 = *(v0 + 416);
      if (v48)
      {
        v50 = *(v0 + 368);
        v51 = *(v0 + 256);
        v83 = *(v0 + 200);
        v84 = *(v0 + 232);
        v52 = *(v0 + 112);
        v82 = *(v0 + 144);
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v88 = v55;
        *v53 = 138412546;
        v56 = *(v51 + v50);
        *(v53 + 4) = v56;
        *v54 = v56;
        v57 = v56;

        *(v53 + 12) = 2082;
        v58 = [v49 bundleID];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = sub_1001AD0D8(v59, v61, &v88);

        *(v53 + 14) = v62;
        swift_unknownObjectRelease_n();
        _os_log_impl(&_mh_execute_header, v46, v47, "[%@] Skipping %{public}s due to automatic update authorization needed", v53, 0x16u);
        sub_100086A24(v54);
        v19 = &selRef_proxyForBundleID_;

        sub_100005A00(v55);

        swift_unknownObjectRelease();
        v84(v83, v82);
      }

      else
      {
        v20 = *(v0 + 232);
        v21 = *(v0 + 200);
        v22 = *(v0 + 144);
        v23 = *(v0 + 112);
        swift_unknownObjectRelease_n();

        v20(v21, v22);
      }

      v17 = *(v0 + 424);
      v18 = *(v0 + 610);
    }

    while (v17 != *(v0 + 352));
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);

    if (v18)
    {
      goto LABEL_3;
    }

    *(v0 + 592) = v4;
    *(v0 + 584) = v5;
    v78 = *(v0 + 608);
    v79 = swift_task_alloc();
    *(v0 + 600) = v79;
    *v79 = v0;
    v79[1] = sub_1000AC8E8;
    v80 = *(v0 + 264);
    v81 = *(v0 + 272);

    sub_1000AF510(v4, v80, v81, v78 & 1, v0 + 64);
  }
}

uint64_t sub_1000AC738()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 568);
  v4 = *(v1 + 560);
  *(v1 + 592) = v3;
  *(v1 + 584) = v4;
  v5 = *(v1 + 608);
  v6 = swift_task_alloc();
  *(v1 + 600) = v6;
  *v6 = v2;
  v6[1] = sub_1000AC8E8;
  v7 = *(v1 + 272);
  v8 = *(v1 + 264);

  return sub_1000AF510(v3, v8, v7, v5 & 1, v1 + 64);
}

uint64_t sub_1000AC8E8()
{

  return _swift_task_switch(sub_1000AC9E4, 0, 0);
}

uint64_t sub_1000AC9E4()
{
  v31 = v0;
  v1 = *(v0 + 112);
  v2 = &v1[OBJC_IVAR____TtC9appstored18PerformUpdatesTask_output];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC9appstored18PerformUpdatesTask_output]);
  *(v2 + 1) = *(v0 + 64);

  os_unfair_lock_unlock(v2);

  static Logger.updates.getter();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v4, v5))
  {
    v16 = *(v0 + 232);
    v17 = *(v0 + 160);
    v18 = *(v0 + 144);
    v19 = *(v0 + 112);

    v16(v17, v18);

LABEL_25:

    if ((*(v0 + 608) & 1) == 0)
    {
      sub_1000BDCA0(*(v0 + 264));
    }

    v24 = *(v0 + 584);

    sub_100006F8C(v24);

    v25 = *(v0 + 8);

    return v25();
  }

  v6 = *(v0 + 256);
  v7 = *(v0 + 112);
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v30 = v10;
  *v8 = 138412546;
  v11 = *(v6 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
  *(v8 + 4) = v11;
  *v9 = v11;
  v12 = v11;

  *(v8 + 12) = 2082;
  v13 = *(v6 + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
  v28 = v9;
  v29 = v10;
  if (v13 > 4)
  {
    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v14 = 0xEA00000000006C6CLL;
        v15 = 0x4120657461647055;
      }

      else
      {
        v14 = 0xE700000000000000;
        v15 = 0x746E756F636341;
      }

      goto LABEL_24;
    }

    switch(v13)
    {
      case 7:
        v14 = 0xE300000000000000;
        v15 = 5063757;
        goto LABEL_24;
      case 8:
        v14 = 0xEE00657461647055;
        v15 = 0x2068736572666552;
        goto LABEL_24;
      case 9:
        v14 = 0xED00006B636F6C6ELL;
        v15 = 0x5520656369766544;
LABEL_24:
        v27 = *(v0 + 232);
        v20 = *(v0 + 160);
        v21 = *(v0 + 144);
        v22 = *(v0 + 112);
        v23 = sub_1001AD0D8(v15, v14, &v30);

        *(v8 + 14) = v23;

        _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Perform updates complete with reason: %{public}s", v8, 0x16u);
        sub_100086A24(v28);

        sub_100005A00(v29);

        v27(v20, v21);

        goto LABEL_25;
    }
  }

  else
  {
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = 0xE90000000000006ELL;
        v15 = 0x6F6974617267694DLL;
      }

      else if (v13 == 3)
      {
        v14 = 0xE700000000000000;
        v15 = 0x65726F74736552;
      }

      else
      {
        v14 = 0xEB00000000657A69;
        v15 = 0x6E6F7268636E7953;
      }

      goto LABEL_24;
    }

    if (!v13)
    {
      v14 = 0xE600000000000000;
      v15 = 0x6C61756E614DLL;
      goto LABEL_24;
    }

    if (v13 == 1)
    {
      v15 = 0x756F72676B636142;
      v14 = 0xEA0000000000646ELL;
      goto LABEL_24;
    }
  }

  type metadata accessor for LoadSoftwareUpdatesReason(0);
  *(v0 + 88) = v13;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t sub_1000ACEF8()
{
  v1 = *(v0 + 608);

  if ((v1 & 1) == 0)
  {
    sub_1000BDCA0(*(v0 + 264));
  }

  sub_100006F8C(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000AD01C()
{
  v1 = *(v0 + 608);

  swift_unknownObjectRelease();

  if ((v1 & 1) == 0)
  {
    sub_1000BDCA0(*(v0 + 264));
  }

  v2 = *(v0 + 400);

  sub_100006F8C(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000AD160()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 608);

  swift_unknownObjectRelease();

  if ((v2 & 1) == 0)
  {
    sub_1000BDCA0(*(v0 + 264));
  }

  v3 = *(v0 + 400);

  sub_100006F8C(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000AD2AC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

void sub_1000AD348(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  v10[4] = sub_1000BB1E0;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000AD588;
  v10[3] = &unk_10050B738;
  v9 = _Block_copy(v10);

  sub_100404D8C(a1, v9);
  _Block_release(v9);
}

uint64_t sub_1000AD444(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = [a1 bundleID];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    sub_1001B3B58(a1, v7, v9, isUniquelyReferenced_nonNull_native);

    *(a3 + 16) = v13;
  }

  else
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return swift_endAccess();
}

uint64_t sub_1000AD588(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000AD5E8(void *a1)
{
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2);
  v3 = [a1 bundleID];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = objc_allocWithZone(LSApplicationRecord);
  v8 = sub_1001914DC(v4, v6, 0);
  if (sub_10040C694(v8))
  {
    v9 = objc_opt_self();
    v10 = sub_1003D3F18(v9, @"AutomaticUpdateAuthorizations");
    if (v10)
    {
      v11 = v10;
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v12 = sub_1000EF040(_swiftEmptyArrayStorage);
    }

    v14 = [a1 bundleID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v12 + 16) && (v16 = sub_1000EE7C4(v18), (v17 & 1) != 0))
    {
      sub_10009F6D0(*(v12 + 56) + 32 * v16, v19);

      sub_1000B5BDC(v18);

      result = swift_dynamicCast();
      if (result)
      {
        return v15;
      }
    }

    else
    {

      sub_1000B5BDC(v18);
      return 0;
    }
  }

  else
  {

    return 1;
  }

  return result;
}

void sub_1000ADA50(id a1@<X1>, void *a2@<X0>, void *a3@<X8>)
{
  v5 = [a1 bundleID];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = sub_1003E3D74(a2, v5);

  if (v6)
  {
    v7 = [v6 persistentID];
    v8 = sub_10029430C(v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a3 = v7;
  a3[1] = v8;
}

uint64_t sub_1000ADB24()
{
  v1[21] = v0;
  v2 = sub_100085D40(&qword_10059C3F8);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000ADC70, 0, 0);
}

uint64_t sub_1000ADC70()
{
  v1 = *(*(v0 + 168) + OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state + 8);
  *(v0 + 248) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
  if (v2 > 9)
  {
    type metadata accessor for LoadSoftwareUpdatesReason(0);
    *(v0 + 144) = v2;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  }

  else
  {
    if (((1 << v2) & 0x2D6) != 0)
    {
LABEL_3:

      v3 = *(v0 + 8);

      return v3();
    }

    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();
    v7 = sub_100227688(v5, v6);
    *(v0 + 256) = v7;

    v8 = [v7 isExpensiveOrCellular];
    *(v0 + 400) = v8;
    if (v8)
    {
      v9 = swift_task_alloc();
      *(v0 + 264) = v9;
      *v9 = v0;
      v9[1] = sub_1000ADFF8;

      return sub_1000B330C();
    }

    else
    {
      if (![v7 isConstrained])
      {
        v11 = *(v0 + 168);
        static Logger.updates.getter();
        v12 = v11;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138412290;
          v17 = *(v1 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
          *(v15 + 4) = v17;
          *v16 = v17;
          v18 = v17;
          _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Network is unconstrained; no prompt needed", v15, 0xCu);
          sub_100086A24(v16);

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        (*(*(v0 + 208) + 8))(*(v0 + 240), *(v0 + 200));
        goto LABEL_3;
      }

      v10 = swift_task_alloc();
      *(v0 + 296) = v10;
      *v10 = v0;
      v10[1] = sub_1000AE370;

      return sub_1000B4AAC(0);
    }
  }
}

uint64_t sub_1000ADFF8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = v2;

  if (v2)
  {
    v5 = sub_1000AED84;
  }

  else
  {
    v5 = sub_1000AE110;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000AE110()
{
  v1 = v0[34];
  if (v1)
  {
    v2 = v0[35];
    v0[41] = v1;
    v0[42] = v2;
    v3 = v0[23];
    v4 = v0[24];
    v5 = v0[22];
    v10 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_1000AE8CC;
    swift_continuation_init();
    v0[17] = v5;
    v6 = sub_100005F38(v0 + 14);
    sub_10009FAD4(0, &qword_10059C400);
    v7 = v1;
    sub_100085D40(&unk_10059DE80);
    CheckedContinuation.init(continuation:function:)();
    (*(v3 + 32))(v6, v4, v5);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10010B5D4;
    v0[13] = &unk_10050B418;
    sub_1003124D4(v10, v7, v0 + 10);
    (*(v3 + 8))(v6, v5);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    swift_unknownObjectRelease();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000AE370(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {
    v7 = sub_1000AE6C0;
  }

  else
  {
    *(v6 + 312) = a2;
    *(v6 + 320) = a1;
    v7 = sub_1000AE4A4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000AE4A4()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = objc_opt_self();
  v4 = sub_100384FD4(v3, v1, *(v2 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey));
  v5 = v0[39];
  v0[41] = v4;
  v0[42] = v5;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v12 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_1000AE8CC;
  swift_continuation_init();
  v0[17] = v8;
  v9 = sub_100005F38(v0 + 14);
  sub_10009FAD4(0, &qword_10059C400);
  v10 = v4;
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v9, v7, v8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10010B5D4;
  v0[13] = &unk_10050B418;
  sub_1003124D4(v12, v10, v0 + 10);
  (*(v6 + 8))(v9, v8);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000AE6C0()
{
  v1 = v0[21];
  static Logger.updates.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    v8 = *(v5 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = v8;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    v7[1] = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to fetch pending updates: %{public}@", v6, 0x16u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v0[26] + 8))(v0[29], v0[25]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000AE8CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_1000AEF90;
  }

  else
  {
    v2 = sub_1000AE9DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AE9DC()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 152);
  v3 = v2;

  *(v0 + 352) = v2;
  v4 = *(v0 + 400);
  v5 = *(v0 + 256);
  *(v0 + 160) = *(v0 + 336);
  v6 = @"ROWID";

  sub_100085D40(&qword_10059C410);
  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = [objc_opt_self() containsPredicateWithProperty:v6 values:v7];
  *(v0 + 360) = v8;

  swift_unknownObjectRelease();

  objc_opt_self();
  *(v0 + 368) = sub_1003C27BC();
  v9 = swift_allocObject();
  *(v0 + 376) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v4;
  *(v9 + 32) = v2;
  *(v9 + 40) = v5;
  v10 = v8;
  swift_unknownObjectRetain();
  v11 = swift_task_alloc();
  *(v0 + 384) = v11;
  *v11 = v0;
  v11[1] = sub_1000AEBB4;

  return sub_1000D9C90(sub_1000D9C90, sub_1000B5C48, v9);
}

uint64_t sub_1000AEBB4()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_1000AF2C4;
  }

  else
  {
    v4 = *(v2 + 368);

    v3 = sub_1000AECD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000AECD4()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);

  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000AED84()
{
  v1 = v0[21];
  static Logger.updates.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    v8 = *(v5 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v6 + 4) = v8;
    *v7 = v8;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = v8;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    v7[1] = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to fetch pending updates: %{public}@", v6, 0x16u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v0[26] + 8))(v0[29], v0[25]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000AEF90()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 168);
  swift_willThrow();

  static Logger.updates.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 248);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Failed to present network constraints dialog: %{public}@", v7, 0x16u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
  *(v0 + 352) = 0;
  v12 = *(v0 + 400);
  v13 = *(v0 + 256);
  *(v0 + 160) = *(v0 + 336);
  v14 = @"ROWID";

  sub_100085D40(&qword_10059C410);
  v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v16 = [objc_opt_self() containsPredicateWithProperty:v14 values:v15];
  *(v0 + 360) = v16;

  swift_unknownObjectRelease();

  objc_opt_self();
  *(v0 + 368) = sub_1003C27BC();
  v17 = swift_allocObject();
  *(v0 + 376) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v12;
  *(v17 + 32) = 0;
  *(v17 + 40) = v13;
  v18 = v16;
  swift_unknownObjectRetain();
  v19 = swift_task_alloc();
  *(v0 + 384) = v19;
  *v19 = v0;
  v19[1] = sub_1000AEBB4;

  return sub_1000D9C90(sub_1000D9C90, sub_1000B5C48, v17);
}

uint64_t sub_1000AF2C4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 168);

  static Logger.updates.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 352);
  v8 = *(v0 + 328);
  if (v6)
  {
    v9 = *(v0 + 248);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = *(v9 + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v10 + 4) = v12;
    *v11 = v12;
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v13 = v12;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Unable to update install policies: %{public}@", v10, 0x16u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000AF510(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = v5;
  *(v6 + 456) = a4;
  *(v6 + 200) = a2;
  *(v6 + 208) = a3;
  *(v6 + 192) = a1;
  v7 = sub_100085D40(&unk_10059C490);
  *(v6 + 232) = v7;
  *(v6 + 240) = *(v7 - 8);
  *(v6 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_1000AF5E8, 0, 0);
}

void sub_1000AF5E8()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 32);
  *(v0 + 457) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  *(v0 + 256) = OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state;

  v6 = 0;
  if (v5)
  {
    while (1)
    {
      v7 = *(v0 + 192);
LABEL_10:
      *(v0 + 264) = v5;
      *(v0 + 272) = v6;
      v9 = (v6 << 9) | (8 * __clz(__rbit64(v5)));
      v10 = *(*(v7 + 48) + v9);
      *(v0 + 280) = v10;
      v11 = *(*(v7 + 56) + v9);
      *(v0 + 288) = v11;
      v12 = v11 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 >= 5 ? 5 : v12;
      *(v0 + 296) = 0;
      *(v0 + 304) = v13;
      v14 = v10;

      v15 = *(v0 + 288);
      if (v12)
      {
        break;
      }

      v16 = *(v0 + 280);

      v6 = *(v0 + 272);
      v5 = (*(v0 + 264) - 1) & *(v0 + 264);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    if (v15 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v18, v13))
    {
LABEL_46:
      __break(1u);
    }

    else
    {
      if ((v18 - v13) >= 5)
      {
        v19 = v13 + 5;
      }

      else
      {
        v19 = v18;
      }

      *(v0 + 312) = v19;
      v20 = *(v0 + 288);
      if (v20 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() < 0)
        {
LABEL_48:
          __break(1u);
          return;
        }

        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v21 >= v13)
      {
        v22 = *(v0 + 288);
        if ((v22 & 0xC000000000000001) != 0)
        {
          sub_10009FAD4(0, &qword_10059BDE8);

          v23 = 0;
          if (v12 >= 5)
          {
            v12 = 5;
          }

          do
          {
            v24 = v23 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v23);
            v23 = v24;
          }

          while (v12 != v24);
          v22 = *(v0 + 288);
          if (!(v22 >> 62))
          {
            goto LABEL_39;
          }
        }

        else
        {

          if (!(v22 >> 62))
          {
LABEL_39:
            v25 = 0;
            v26 = (2 * v13) | 1;
            v27 = v22 & 0xFFFFFFFFFFFFFF8;
            v28 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_42:
            *(v0 + 320) = v27;
            v32 = *(v0 + 456);
            v33 = [*(v0 + 280) unsignedLongLongValue];
            v34 = swift_task_alloc();
            *(v0 + 328) = v34;
            *v34 = v0;
            v34[1] = sub_1000AF98C;
            v35 = *(v0 + 200);
            v36 = *(v0 + 208);

            sub_1000B1CAC(v27, v28, v25, v26, v33, v35, v36, v32 & 1);
            return;
          }
        }

        v27 = _CocoaArrayWrapper.subscript.getter();
        v28 = v29;
        v25 = v30;
        v26 = v31;
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  while (1)
  {
LABEL_6:
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v8 >= (((1 << *(v0 + 457)) + 63) >> 6))
    {
      break;
    }

    v7 = *(v0 + 192);
    v5 = *(v7 + 8 * v8 + 64);
    ++v6;
    if (v5)
    {
      v6 = v8;
      goto LABEL_10;
    }
  }

  v17 = *(v0 + 8);

  v17();
}

uint64_t sub_1000AF98C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = sub_1000B0340;
  }

  else
  {
    *(v4 + 344) = a1;
    v5 = sub_1000AFAB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1000AFAB4()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 296);
  swift_unknownObjectRelease();
  v3 = v2 + v1;
  if (__OFADD__(v2, v1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  *(v0 + 296) = v3;
  *(v0 + 304) = v4;
  if (v5 < v4)
  {
LABEL_3:
    v6 = *(v0 + 288);
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!__OFSUB__(v7, v4))
    {
      if ((v7 - v4) >= 5)
      {
        v7 = v4 + 5;
        if (__OFADD__(v4, 5))
        {
          goto LABEL_53;
        }
      }

      *(v0 + 312) = v7;
      v9 = *(v0 + 288);
      if (!(v9 >> 62))
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 < v5)
        {
          goto LABEL_51;
        }

LABEL_18:
        if (v10 < v4)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          return;
        }

        v11 = *(v0 + 288);
        if ((v11 & 0xC000000000000001) != 0)
        {

          if (v5 != v4)
          {
            sub_10009FAD4(0, &qword_10059BDE8);
            v12 = v5;
            do
            {
              v13 = v12 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v12);
              v12 = v13;
            }

            while (v4 != v13);
            v11 = *(v0 + 288);
          }

          if (!(v11 >> 62))
          {
            goto LABEL_25;
          }
        }

        else
        {

          if (!(v11 >> 62))
          {
LABEL_25:
            v14 = (2 * v4) | 1;
            v15 = v11 & 0xFFFFFFFFFFFFFF8;
            v16 = (v11 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_28:
            *(v0 + 320) = v15;
            v20 = *(v0 + 456);
            v21 = [*(v0 + 280) unsignedLongLongValue];
            v22 = swift_task_alloc();
            *(v0 + 328) = v22;
            *v22 = v0;
            v22[1] = sub_1000AF98C;
            v23 = *(v0 + 200);
            v24 = *(v0 + 208);

            sub_1000B1CAC(v15, v16, v5, v14, v21, v23, v24, v20 & 1);
            return;
          }
        }

        v15 = _CocoaArrayWrapper.subscript.getter();
        v16 = v17;
        v5 = v18;
        v14 = v19;
        goto LABEL_28;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v5)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_18;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v3 <= 0)
  {
    while (1)
    {
      v25 = *(v0 + 280);

      v26 = *(v0 + 272);
      v27 = (*(v0 + 264) - 1) & *(v0 + 264);
      if (!v27)
      {
        break;
      }

      v28 = *(v0 + 192);
LABEL_37:
      *(v0 + 264) = v27;
      *(v0 + 272) = v26;
      v30 = (v26 << 9) | (8 * __clz(__rbit64(v27)));
      v31 = *(*(v28 + 48) + v30);
      *(v0 + 280) = v31;
      v32 = *(*(v28 + 56) + v30);
      *(v0 + 288) = v32;
      if (v32 >> 62)
      {
        v33 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v33 >= 5)
      {
        v4 = 5;
      }

      else
      {
        v4 = v33;
      }

      *(v0 + 296) = 0;
      *(v0 + 304) = v4;
      v34 = v31;

      if (v33)
      {
        v5 = 0;
        goto LABEL_3;
      }
    }

    while (1)
    {
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      if (v29 >= (((1 << *(v0 + 457)) + 63) >> 6))
      {
        break;
      }

      v28 = *(v0 + 192);
      v27 = *(v28 + 8 * v29 + 64);
      ++v26;
      if (v27)
      {
        v26 = v29;
        goto LABEL_37;
      }
    }

    v35 = *(v0 + 8);

    v35();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 352) = v8;
    *v8 = v0;
    v8[1] = sub_1000AFED0;

    sub_1000ADB24();
  }
}

uint64_t sub_1000AFED0()
{

  return _swift_task_switch(sub_1000AFFCC, 0, 0);
}

void sub_1000AFFCC()
{

  while (1)
  {
    v1 = *(v0 + 272);
    v2 = (*(v0 + 264) - 1) & *(v0 + 264);
    if (!v2)
    {
      while (1)
      {
        v4 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v4 >= (((1 << *(v0 + 457)) + 63) >> 6))
        {
          break;
        }

        v3 = *(v0 + 192);
        v2 = *(v3 + 8 * v4 + 64);
        ++v1;
        if (v2)
        {
          v1 = v4;
          goto LABEL_8;
        }
      }

      v13 = *(v0 + 8);

      v13();
      return;
    }

    v3 = *(v0 + 192);
LABEL_8:
    *(v0 + 264) = v2;
    *(v0 + 272) = v1;
    v5 = (v1 << 9) | (8 * __clz(__rbit64(v2)));
    v6 = *(*(v3 + 48) + v5);
    *(v0 + 280) = v6;
    v7 = *(*(v3 + 56) + v5);
    *(v0 + 288) = v7;
    v8 = v7 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v8 >= 5 ? 5 : v8;
    *(v0 + 296) = 0;
    *(v0 + 304) = v9;
    v10 = v6;

    v11 = *(v0 + 288);
    if (v8)
    {
      break;
    }

    v12 = *(v0 + 280);
  }

  if (v11 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v14, v9))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if ((v14 - v9) >= 5)
  {
    v15 = v9 + 5;
  }

  else
  {
    v15 = v14;
  }

  *(v0 + 312) = v15;
  v16 = *(v0 + 288);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_30;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_30:
  if (v17 < v9)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v18 = *(v0 + 288);
  if ((v18 & 0xC000000000000001) != 0)
  {
    sub_10009FAD4(0, &qword_10059BDE8);

    v19 = 0;
    if (v8 >= 5)
    {
      v8 = 5;
    }

    do
    {
      v20 = v19 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v19);
      v19 = v20;
    }

    while (v8 != v20);
    v18 = *(v0 + 288);
    if (!(v18 >> 62))
    {
LABEL_36:
      v21 = 0;
      v22 = (2 * v9) | 1;
      v23 = v18 & 0xFFFFFFFFFFFFFF8;
      v24 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
      goto LABEL_39;
    }
  }

  else
  {

    if (!(v18 >> 62))
    {
      goto LABEL_36;
    }
  }

  v23 = _CocoaArrayWrapper.subscript.getter();
  v24 = v25;
  v21 = v26;
  v22 = v27;
LABEL_39:
  *(v0 + 320) = v23;
  v28 = *(v0 + 456);
  v29 = [*(v0 + 280) unsignedLongLongValue];
  v30 = swift_task_alloc();
  *(v0 + 328) = v30;
  *v30 = v0;
  v30[1] = sub_1000AF98C;
  v31 = *(v0 + 200);
  v32 = *(v0 + 208);

  sub_1000B1CAC(v23, v24, v21, v22, v29, v31, v32, v28 & 1);
}

uint64_t sub_1000B0340()
{
  v1 = swift_unknownObjectRelease();
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  if (v3 < v2)
  {
    v4 = (v0 + 144);
    do
    {
      *(v0 + 360) = v2;
      v5 = *(v0 + 288);
      if (v5 >> 62)
      {
        v1 = _CocoaArrayWrapper.endIndex.getter();
        v6 = v1;
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v6, v2))
      {
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
        goto LABEL_110;
      }

      if ((v6 - v2) >= 5)
      {
        v6 = v2 + 5;
        if (__OFADD__(v2, 5))
        {
          goto LABEL_108;
        }
      }

      *(v0 + 368) = v6;
      v7 = *(v0 + 288);
      if (v7 >> 62)
      {
        v1 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v1 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v1 < v3)
      {
        goto LABEL_104;
      }

      if (v3 < 0)
      {
        goto LABEL_105;
      }

      v8 = *(v0 + 288);
      if (v8 >> 62)
      {
        v1 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v1 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v1 < v2)
      {
        goto LABEL_106;
      }

      v77 = v6;
      v9 = *(v0 + 288);
      if ((v9 & 0xC000000000000001) != 0)
      {

        if (v3 != v2)
        {
          sub_10009FAD4(0, &qword_10059BDE8);
          v10 = v3;
          do
          {
            v11 = v10 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v10);
            v10 = v11;
          }

          while (v2 != v11);
          v9 = *(v0 + 288);
        }

        if (!(v9 >> 62))
        {
LABEL_24:
          v12 = (2 * v2) | 1;
          v13 = v9 & 0xFFFFFFFFFFFFFF8;
          v14 = v13 + 32;
          goto LABEL_27;
        }
      }

      else
      {

        if (!(v9 >> 62))
        {
          goto LABEL_24;
        }
      }

      v13 = _CocoaArrayWrapper.subscript.getter();
      v14 = v15;
      v3 = v16;
LABEL_27:
      *(v0 + 376) = v13;
      *(v0 + 384) = v14;
      v17 = v12 >> 1;
      if (v12)
      {
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = _swiftEmptyArrayStorage;
        }

        v23 = v22[2];

        v18 = v17 - v3;
        v24 = __OFSUB__(v17, v3);
        if (__OFSUB__(v17, v3))
        {
          goto LABEL_109;
        }

        if (v23 == v18)
        {
          v25 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v4 = (v0 + 144);
          if (v25)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        v1 = swift_unknownObjectRelease();
        v4 = (v0 + 144);
        if (v24)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v18 = v17 - v3;
        v19 = __OFSUB__(v17, v3);
        v1 = swift_unknownObjectRetain();
        if (v19)
        {
LABEL_54:
          __break(1u);
          break;
        }
      }

      if (v18)
      {
        if (v18 < 1)
        {
          if (v3 == v17)
          {
            goto LABEL_114;
          }
        }

        else
        {
          sub_100085D40(&qword_10059C4A0);
          v20 = swift_allocObject();
          v1 = j__malloc_size(v20);
          v21 = v1 - 32;
          if (v1 < 32)
          {
            v21 = v1 - 25;
          }

          v20[2] = v18;
          v20[3] = (2 * (v21 >> 3)) | 1;
          if (v3 == v17)
          {
            goto LABEL_114;
          }
        }

        sub_10009FAD4(0, &qword_10059BDE8);
        swift_arrayInitWithCopy();
      }

LABEL_49:
      swift_unknownObjectRelease();
LABEL_50:
      *(v0 + 392) = v17;
      v26 = *(v0 + 224) + *(v0 + 256);
      v27 = objc_allocWithZone(PurchaseBatch);
      sub_10009FAD4(0, &qword_10059BDE8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v29 = [v27 initWithPurchaseInfos:isa];
      *(v0 + 400) = v29;

      v30 = *(*(v26 + 8) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
      *(v0 + 408) = v30;
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v0 + 176) = sub_1000B5E70;
      *(v0 + 184) = v31;
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1000C1214;
      *(v0 + 168) = &unk_10050B648;
      v32 = _Block_copy(v4);
      v33 = v30;

      sub_100282F98(v29, v32);
      _Block_release(v32);
      if (v3 != v17)
      {
        v1 = objc_opt_self();
        *(v0 + 416) = v1;
        if (v3 < v17)
        {
          *(v0 + 424) = v3;
          v50 = *(v0 + 240);
          v51 = *(v0 + 248);
          v52 = *(v0 + 232);
          v53 = *(*(v0 + 384) + 8 * v3);
          *(v0 + 432) = v53;
          v54 = v53;
          v55 = sub_1001DFF60();
          *(v0 + 440) = v55;
          v56 = _convertErrorToNSError(_:)();
          *(v0 + 448) = v56;
          *(v0 + 16) = v0;
          *(v0 + 24) = sub_1000B0D80;
          swift_continuation_init();
          *(v0 + 136) = v52;
          v57 = sub_100005F38((v0 + 112));
          v58 = v54;
          CheckedContinuation.init(continuation:function:)();
          (*(v50 + 32))(v57, v51, v52);
          *(v0 + 80) = _NSConcreteStackBlock;
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_1000B3160;
          *(v0 + 104) = &unk_10050B670;
          sub_1001E1A90(v55, v56, v58, (v0 + 80));
          (*(v50 + 8))(v57, v52);
          v1 = v0 + 16;

          return _swift_continuation_await(v1);
        }

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
        return _swift_continuation_await(v1);
      }

      v1 = swift_unknownObjectRelease();
      v3 = v2;
      v34 = v2 < v77;
      v2 = v77;
    }

    while (v34);
  }

  v35 = *(v0 + 296);

  if (v35 <= 0)
  {
    do
    {
      v38 = *(v0 + 280);

      v39 = *(v0 + 272);
      v40 = (*(v0 + 264) - 1) & *(v0 + 264);
      if (!v40)
      {
        while (1)
        {
          v42 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_107;
          }

          if (v42 >= (((1 << *(v0 + 457)) + 63) >> 6))
          {

            v59 = *(v0 + 8);

            return v59();
          }

          v41 = *(v0 + 192);
          v40 = *(v41 + 8 * v42 + 64);
          ++v39;
          if (v40)
          {
            v39 = v42;
            goto LABEL_65;
          }
        }
      }

      v41 = *(v0 + 192);
LABEL_65:
      *(v0 + 264) = v40;
      *(v0 + 272) = v39;
      v43 = (v39 << 9) | (8 * __clz(__rbit64(v40)));
      v44 = *(*(v41 + 48) + v43);
      *(v0 + 280) = v44;
      v45 = *(*(v41 + 56) + v43);
      *(v0 + 288) = v45;
      if (v45 >> 62)
      {
        v46 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v46 >= 5)
      {
        v47 = 5;
      }

      else
      {
        v47 = v46;
      }

      *(v0 + 296) = 0;
      *(v0 + 304) = v47;
      v48 = v44;

      v49 = *(v0 + 288);
    }

    while (!v46);
    if (v49 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v1 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v1, v47))
    {
      goto LABEL_111;
    }

    if ((v1 - v47) >= 5)
    {
      v60 = v47 + 5;
    }

    else
    {
      v60 = v1;
    }

    *(v0 + 312) = v60;
    v61 = *(v0 + 288);
    if (v61 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
      if (v1 < 0)
      {
        goto LABEL_113;
      }

      v1 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v1 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v1 >= v47)
    {
      v62 = *(v0 + 288);
      if ((v62 & 0xC000000000000001) != 0)
      {
        sub_10009FAD4(0, &qword_10059BDE8);

        v63 = 0;
        if (v46 >= 5)
        {
          v46 = 5;
        }

        do
        {
          v64 = v63 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v63);
          v63 = v64;
        }

        while (v46 != v64);
        v62 = *(v0 + 288);
        if (!(v62 >> 62))
        {
LABEL_97:
          v65 = 0;
          v66 = (2 * v47) | 1;
          v67 = v62 & 0xFFFFFFFFFFFFFF8;
          v68 = (v62 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_100:
          *(v0 + 320) = v67;
          v72 = *(v0 + 456);
          v73 = [*(v0 + 280) unsignedLongLongValue];
          v74 = swift_task_alloc();
          *(v0 + 328) = v74;
          *v74 = v0;
          v74[1] = sub_1000AF98C;
          v75 = *(v0 + 200);
          v76 = *(v0 + 208);

          return sub_1000B1CAC(v67, v68, v65, v66, v73, v75, v76, v72 & 1);
        }
      }

      else
      {

        if (!(v62 >> 62))
        {
          goto LABEL_97;
        }
      }

      v67 = _CocoaArrayWrapper.subscript.getter();
      v68 = v69;
      v65 = v70;
      v66 = v71;
      goto LABEL_100;
    }

    goto LABEL_112;
  }

  v36 = swift_task_alloc();
  *(v0 + 352) = v36;
  *v36 = v0;
  v36[1] = sub_1000AFED0;

  return sub_1000ADB24();
}

uint64_t sub_1000B0D80()
{

  return _swift_task_switch(sub_1000B0E60, 0, 0);
}

uint64_t sub_1000B0E60()
{
  v1 = *(v0 + 448);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);

  v6 = _convertErrorToNSError(_:)();
  sub_100282DC4(v4, v6, v2);

  if (v3 + 1 != v5)
  {
LABEL_56:
    v10 = *(v0 + 424) + 1;
LABEL_57:
    *(v0 + 424) = v10;
    v42 = *(v0 + 240);
    v43 = *(v0 + 248);
    v44 = *(v0 + 232);
    v45 = *(*(v0 + 384) + 8 * v10);
    *(v0 + 432) = v45;
    v46 = v45;
    v47 = sub_1001DFF60();
    *(v0 + 440) = v47;
    v48 = _convertErrorToNSError(_:)();
    *(v0 + 448) = v48;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000B0D80;
    swift_continuation_init();
    *(v0 + 136) = v44;
    v49 = sub_100005F38((v0 + 112));
    v50 = v46;
    CheckedContinuation.init(continuation:function:)();
    (*(v42 + 32))(v49, v43, v44);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000B3160;
    *(v0 + 104) = &unk_10050B670;
    sub_1001E1A90(v47, v48, v50, (v0 + 80));
    (*(v42 + 8))(v49, v44);
    v8 = v0 + 16;

    return _swift_continuation_await(v8);
  }

  v7 = *(v0 + 408);

  v8 = swift_unknownObjectRelease();
  v10 = *(v0 + 360);
  v9 = *(v0 + 368);
  if (v10 >= v9)
  {
LABEL_60:
    v51 = *(v0 + 296);

    if (v51 > 0)
    {
      v52 = swift_task_alloc();
      *(v0 + 352) = v52;
      *v52 = v0;
      v52[1] = sub_1000AFED0;

      return sub_1000ADB24();
    }

    do
    {
      v54 = *(v0 + 280);

      v55 = *(v0 + 272);
      v56 = (*(v0 + 264) - 1) & *(v0 + 264);
      if (!v56)
      {
        while (1)
        {
          v58 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            goto LABEL_111;
          }

          if (v58 >= (((1 << *(v0 + 457)) + 63) >> 6))
          {
            goto LABEL_80;
          }

          v57 = *(v0 + 192);
          v56 = *(v57 + 8 * v58 + 64);
          ++v55;
          if (v56)
          {
            v55 = v58;
            goto LABEL_70;
          }
        }
      }

      v57 = *(v0 + 192);
LABEL_70:
      *(v0 + 264) = v56;
      *(v0 + 272) = v55;
      v59 = (v55 << 9) | (8 * __clz(__rbit64(v56)));
      v60 = *(*(v57 + 48) + v59);
      *(v0 + 280) = v60;
      v61 = *(*(v57 + 56) + v59);
      *(v0 + 288) = v61;
      if (v61 >> 62)
      {
        v62 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v62 >= 5)
      {
        v63 = 5;
      }

      else
      {
        v63 = v62;
      }

      *(v0 + 296) = 0;
      *(v0 + 304) = v63;
      v64 = v60;

      v65 = *(v0 + 288);
    }

    while (!v62);
    if (v65 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v8, v63))
    {
      goto LABEL_114;
    }

    if ((v8 - v63) >= 5)
    {
      v67 = v63 + 5;
    }

    else
    {
      v67 = v8;
    }

    *(v0 + 312) = v67;
    v68 = *(v0 + 288);
    if (v68 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8 < 0)
      {
        goto LABEL_116;
      }

      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8 >= v63)
    {
      v69 = *(v0 + 288);
      if ((v69 & 0xC000000000000001) != 0)
      {
        sub_10009FAD4(0, &qword_10059BDE8);

        v70 = 0;
        if (v62 >= 5)
        {
          v62 = 5;
        }

        do
        {
          v71 = v70 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v70);
          v70 = v71;
        }

        while (v62 != v71);
        v69 = *(v0 + 288);
      }

      else
      {
      }

      if (v69 >> 62)
      {

        v74 = _CocoaArrayWrapper.subscript.getter();
        v75 = v76;
        v72 = v77;
        v73 = v78;
      }

      else
      {
        v72 = 0;
        v73 = (2 * v63) | 1;
        v74 = v69 & 0xFFFFFFFFFFFFFF8;
        v75 = (v69 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      *(v0 + 320) = v74;
      v79 = *(v0 + 456);
      v80 = [*(v0 + 280) unsignedLongLongValue];
      v81 = swift_task_alloc();
      *(v0 + 328) = v81;
      *v81 = v0;
      v81[1] = sub_1000AF98C;
      v82 = *(v0 + 200);
      v83 = *(v0 + 208);

      return sub_1000B1CAC(v74, v75, v72, v73, v80, v82, v83, v79 & 1);
    }

LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    return _swift_continuation_await(v8);
  }

  v11 = (v0 + 144);
  while (1)
  {
    *(v0 + 360) = v9;
    v12 = *(v0 + 288);
    if (v12 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v8;
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v13, v9))
    {
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
      goto LABEL_115;
    }

    if ((v13 - v9) >= 5)
    {
      v13 = v9 + 5;
      if (__OFADD__(v9, 5))
      {
        goto LABEL_112;
      }
    }

    *(v0 + 368) = v13;
    v14 = *(v0 + 288);
    if (v14 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8 < v10)
    {
      goto LABEL_108;
    }

    if (v10 < 0)
    {
      goto LABEL_109;
    }

    v15 = *(v0 + 288);
    if (v15 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8 < v9)
    {
      goto LABEL_110;
    }

    v84 = v13;
    v16 = *(v0 + 288);
    if ((v16 & 0xC000000000000001) != 0)
    {

      if (v10 != v9)
      {
        sub_10009FAD4(0, &qword_10059BDE8);
        v17 = v10;
        do
        {
          v18 = v17 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v17);
          v17 = v18;
        }

        while (v9 != v18);
        v16 = *(v0 + 288);
      }

      if (!(v16 >> 62))
      {
LABEL_25:
        v19 = (2 * v9) | 1;
        v20 = v16 & 0xFFFFFFFFFFFFFF8;
        v21 = v20 + 32;
        goto LABEL_28;
      }
    }

    else
    {

      if (!(v16 >> 62))
      {
        goto LABEL_25;
      }
    }

    v20 = _CocoaArrayWrapper.subscript.getter();
    v21 = v22;
    v10 = v23;
LABEL_28:
    *(v0 + 376) = v20;
    *(v0 + 384) = v21;
    v24 = v19 >> 1;
    if (v19)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v29 = swift_dynamicCastClass();
      if (!v29)
      {
        swift_unknownObjectRelease();
        v29 = _swiftEmptyArrayStorage;
      }

      v30 = v29[2];

      v25 = v24 - v10;
      v31 = __OFSUB__(v24, v10);
      if (__OFSUB__(v24, v10))
      {
        goto LABEL_113;
      }

      if (v30 == v25)
      {
        v32 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v11 = (v0 + 144);
        if (v32)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      v8 = swift_unknownObjectRelease();
      v11 = (v0 + 144);
      if (v31)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v25 = v24 - v10;
      v26 = __OFSUB__(v24, v10);
      v8 = swift_unknownObjectRetain();
      if (v26)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    if (v25)
    {
      if (v25 < 1)
      {
        if (v10 == v24)
        {
          goto LABEL_117;
        }
      }

      else
      {
        sub_100085D40(&qword_10059C4A0);
        v27 = swift_allocObject();
        v8 = j__malloc_size(v27);
        v28 = v8 - 32;
        if (v8 < 32)
        {
          v28 = v8 - 25;
        }

        v27[2] = v25;
        v27[3] = (2 * (v28 >> 3)) | 1;
        if (v10 == v24)
        {
          goto LABEL_117;
        }
      }

      sub_10009FAD4(0, &qword_10059BDE8);
      swift_arrayInitWithCopy();
    }

LABEL_50:
    swift_unknownObjectRelease();
LABEL_51:
    *(v0 + 392) = v24;
    v33 = *(v0 + 224) + *(v0 + 256);
    v34 = objc_allocWithZone(PurchaseBatch);
    sub_10009FAD4(0, &qword_10059BDE8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v36 = [v34 initWithPurchaseInfos:isa];
    *(v0 + 400) = v36;

    v37 = *(*(v33 + 8) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v0 + 408) = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v0 + 176) = sub_1000B5E70;
    *(v0 + 184) = v38;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1000C1214;
    *(v0 + 168) = &unk_10050B648;
    v39 = _Block_copy(v11);
    v40 = v37;

    sub_100282F98(v36, v39);
    _Block_release(v39);
    if (v10 != v24)
    {
      break;
    }

    v8 = swift_unknownObjectRelease();
    v10 = v9;
    v41 = v9 < v84;
    v9 = v84;
    if (!v41)
    {
      goto LABEL_60;
    }
  }

  *(v0 + 416) = objc_opt_self();
  if (v10 < v24)
  {
    goto LABEL_57;
  }

  __break(1u);
LABEL_80:

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1000B1A80(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B1B28;

  return sub_1000A8370();
}

uint64_t sub_1000B1B28()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1000B1CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 88) = v13;
  *(v9 + 96) = v8;
  *(v9 + 312) = a8;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  *(v9 + 56) = a4;
  *(v9 + 64) = a5;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 32) = a1;
  v10 = type metadata accessor for Logger();
  *(v9 + 104) = v10;
  *(v9 + 112) = *(v10 - 8);
  *(v9 + 120) = swift_task_alloc();
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1000B1DAC, 0, 0);
}

void sub_1000B1DAC()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 96);
    static Logger.updates.getter();
    swift_unknownObjectRetain_n();
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    p_info = &OBJC_METACLASS____TtC9appstored26UpdatesDatabaseMergeResult.info;
    if (!os_log_type_enabled(v3, v4))
    {
      swift_unknownObjectRelease_n();
      goto LABEL_12;
    }

    v6 = *(v0 + 96);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412802;
    v11 = *(*(v6 + OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state + 8) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2050;
    v12 = v11;
    swift_unknownObjectRelease();
    if (!__OFSUB__(v8 >> 1, v7))
    {
      v13 = *(v0 + 64);
      *(v9 + 14) = (v8 >> 1) - v7;
      swift_unknownObjectRelease();
      *(v9 + 22) = 2050;
      *(v9 + 24) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Performing %{public}ld purchase(s) for account: %{public}llu", v9, 0x20u);
      sub_100086A24(v10);

      p_info = (&OBJC_METACLASS____TtC9appstored26UpdatesDatabaseMergeResult + 32);
LABEL_12:

      v17 = *(v0 + 144);
      v18 = *(v0 + 104);
      v19 = *(v0 + 112);
      v20 = *(v0 + 96);
      v21 = *(v19 + 8);
      *(v0 + 248) = v21;
      *(v0 + 256) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v21(v17, v18);
      v22 = *(&p_info[114]->ivar_base_size + v20);
      v23 = OBJC_IVAR____TtC9appstored14UpdatesContext_logKey;
      *(v0 + 264) = v22;
      *(v0 + 272) = v23;
      v24 = *(v22 + v23);
      *(v0 + 280) = v24;
      v25 = *(v22 + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
      if (v25 < 0xA)
      {
        v26 = v24;
        v27 = swift_task_alloc();
        *(v0 + 288) = v27;
        *v27 = v0;
        v27[1] = sub_1000B2BEC;
        v28 = *(v0 + 88);
        v29 = *(v0 + 48);
        v30 = *(v0 + 56);
        v32 = *(v0 + 32);
        v31 = *(v0 + 40);

        sub_1000B8C3C(v32, v31, v29, v30, v26, v28);
        return;
      }

      type metadata accessor for LoadSoftwareUpdatesReason(0);
      *(v0 + 16) = v25;
      goto LABEL_23;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v14 = *(v0 + 48);
  v15 = *(v0 + 56) >> 1;
  if (v15 == v14)
  {
    if ((*(v0 + 312) & 1) == 0)
    {
      sub_1000BDAFC(*(v0 + 72));
    }

    v16 = *(v0 + 8);

    v16(0);
  }

  else
  {
    v33 = *(v0 + 96);
    v34 = OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 152) = v34;
    *(v0 + 160) = v14;
    if (v14 >= v15)
    {
      goto LABEL_27;
    }

    v35 = v33 + v34;
    v36 = *(*(v0 + 40) + 8 * v14);
    *(v0 + 184) = v36;
    sub_100085D40(&qword_10059C4A0);
    v37 = swift_allocObject();
    *(v0 + 192) = v37;
    *(v37 + 16) = xmmword_100435310;
    *(v37 + 32) = v36;
    v38 = *(v35 + 8);
    v39 = OBJC_IVAR____TtC9appstored14UpdatesContext_logKey;
    *(v0 + 200) = v38;
    *(v0 + 208) = v39;
    v24 = *(v38 + v39);
    *(v0 + 216) = v24;
    v40 = *(v38 + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
    type metadata accessor for LoadSoftwareUpdatesReason(0);
    if (v40 >= 0xA)
    {
      *(v0 + 24) = v40;
      v45 = v36;
LABEL_23:
      v46 = v24;

      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      return;
    }

    v41 = v36;
    v42 = v24;
    v43 = swift_task_alloc();
    *(v0 + 224) = v43;
    *v43 = v0;
    v43[1] = sub_1000B2268;
    v44 = *(v0 + 88);

    sub_1000B6874(v37, v42, v44);
  }
}

uint64_t sub_1000B2268(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 232) = v1;

  if (v1)
  {
    v5 = sub_1000B272C;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_1000B23C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1000B23C8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 168);
  v3 = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((*(v0 + 312) & 1) == 0)
  {
    v4 = *(v0 + 72);
    v5 = String._bridgeToObjectiveC()();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    IOPMAssertionSetProperty(v4, v5, isa);

    static Logger.general.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 72);
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v7, v8, "Restarted timeout for power assertion %u", v10, 8u);
    }

    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);

    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v0 + 160);
  v15 = *(v0 + 56);

  if (v14 + 1 == v15 >> 1)
  {
    if ((*(v0 + 312) & 1) == 0)
    {
      sub_1000BDAFC(*(v0 + 72));
    }

    v16 = *(v0 + 8);

    v16(v3);
    return;
  }

  v17 = *(v0 + 160) + 1;
  *(v0 + 168) = v3;
  *(v0 + 176) = v3;
  *(v0 + 160) = v17;
  if (v17 >= *(v0 + 56) >> 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v18 = *(v0 + 96) + *(v0 + 152);
  v19 = *(*(v0 + 40) + 8 * v17);
  *(v0 + 184) = v19;
  sub_100085D40(&qword_10059C4A0);
  v20 = swift_allocObject();
  *(v0 + 192) = v20;
  *(v20 + 16) = xmmword_100435310;
  *(v20 + 32) = v19;
  v21 = *(v18 + 8);
  v22 = OBJC_IVAR____TtC9appstored14UpdatesContext_logKey;
  *(v0 + 200) = v21;
  *(v0 + 208) = v22;
  v23 = *(v21 + v22);
  *(v0 + 216) = v23;
  v24 = *(v21 + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
  type metadata accessor for LoadSoftwareUpdatesReason(0);
  if (v24 >= 0xA)
  {
    *(v0 + 24) = v24;
    v29 = v23;
    v30 = v19;

    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  }

  else
  {
    v25 = v19;
    v26 = v23;
    v27 = swift_task_alloc();
    *(v0 + 224) = v27;
    *v27 = v0;
    v27[1] = sub_1000B2268;
    v28 = *(v0 + 88);

    sub_1000B6874(v20, v26, v28);
  }
}

void sub_1000B272C()
{
  v1 = *(v0 + 96);
  static Logger.updates.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412802;
    v9 = *(v6 + v5);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2050;
    *(v7 + 14) = 0;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Error performing purchase for account: %{public}llu error: %{public}@", v7, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 104));
  v13 = *(v0 + 168);
  v12 = *(v0 + 176);
  if ((*(v0 + 312) & 1) == 0)
  {
    v14 = *(v0 + 72);
    v15 = String._bridgeToObjectiveC()();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    IOPMAssertionSetProperty(v14, v15, isa);

    static Logger.general.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 72);
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "Restarted timeout for power assertion %u", v20, 8u);
    }

    v21 = *(v0 + 128);
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);

    (*(v23 + 8))(v21, v22);
  }

  v24 = *(v0 + 160);
  v25 = *(v0 + 56);

  if (v24 + 1 == v25 >> 1)
  {
    if ((*(v0 + 312) & 1) == 0)
    {
      sub_1000BDAFC(*(v0 + 72));
    }

    v26 = *(v0 + 8);

    v26(v12);
  }

  else
  {
    v27 = *(v0 + 160) + 1;
    *(v0 + 168) = v13;
    *(v0 + 176) = v12;
    *(v0 + 160) = v27;
    if (v27 >= *(v0 + 56) >> 1)
    {
      __break(1u);
    }

    else
    {
      v28 = *(v0 + 96) + *(v0 + 152);
      v29 = *(*(v0 + 40) + 8 * v27);
      *(v0 + 184) = v29;
      sub_100085D40(&qword_10059C4A0);
      v30 = swift_allocObject();
      *(v0 + 192) = v30;
      *(v30 + 16) = xmmword_100435310;
      *(v30 + 32) = v29;
      v31 = *(v28 + 8);
      v32 = OBJC_IVAR____TtC9appstored14UpdatesContext_logKey;
      *(v0 + 200) = v31;
      *(v0 + 208) = v32;
      v33 = *(v31 + v32);
      *(v0 + 216) = v33;
      v34 = *(v31 + OBJC_IVAR____TtC9appstored14UpdatesContext_reason);
      type metadata accessor for LoadSoftwareUpdatesReason(0);
      if (v34 >= 0xA)
      {
        *(v0 + 24) = v34;
        v39 = v33;
        v40 = v29;

        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      }

      else
      {
        v35 = v29;
        v36 = v33;
        v37 = swift_task_alloc();
        *(v0 + 224) = v37;
        *v37 = v0;
        v37[1] = sub_1000B2268;
        v38 = *(v0 + 88);

        sub_1000B6874(v30, v36, v38);
      }
    }
  }
}

uint64_t sub_1000B2BEC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 296) = v1;

  if (v1)
  {
    v5 = sub_1000B2DD4;
  }

  else
  {
    *(v4 + 304) = a1;
    v5 = sub_1000B2D30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000B2D30()
{
  v1 = *(v0 + 304);
  if ((*(v0 + 312) & 1) == 0)
  {
    sub_1000BDAFC(*(v0 + 72));
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000B2DD4()
{
  v1 = *(v0 + 96);
  static Logger.updates.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412802;
    v10 = *(v6 + v5);
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2050;
    *(v8 + 14) = v7;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v11 = v10;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v12;
    v9[1] = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Error performing purchase for account: %{public}llu error: %{public}@", v8, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 248);
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  v16 = *(v0 + 312);

  v13(v14, v15);
  swift_willThrow();
  if ((v16 & 1) == 0)
  {
    sub_1000BDAFC(*(v0 + 72));
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000B2FD8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.updates.getter();
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Finished failing purchase batch", v10, 0xCu);
    sub_100086A24(v11);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000B3160(uint64_t a1)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  sub_100085D40(&unk_10059C490);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000B31A8(uint64_t a1, void *a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100085D40(&qword_10059C4A8);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100085D40(&qword_10059C4A8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000B3258(uint64_t a1)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  sub_100085D40(&qword_10059C4D8);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000B32B4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 stringValue];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1000B330C()
{
  v1[9] = v0;
  v2 = type metadata accessor for Logger();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000B33F8, 0, 0);
}

uint64_t sub_1000B33F8()
{
  objc_opt_self();
  v1 = sub_10032C390();
  v0[8] = 0;
  v2 = sub_10032C7CC(v1);
  v0[13] = v2;

  v3 = v0[8];
  if (v2)
  {
    v4 = objc_allocWithZone(ASDCellularSettings);
    v5 = v3;
    v6 = [v4 initWithIdentity:v2];
    v0[14] = v6;
    v7 = [v6 cellularDataPrompt];
    v8 = [v2 isRoaming];
    if (v7 == 1 || v8 != 0)
    {
      v10 = swift_task_alloc();
      v0[15] = v10;
      *v10 = v0;
      v10[1] = sub_1000B3970;

      return sub_1000B4AAC(1);
    }

    if (v7 == 2)
    {

      goto LABEL_22;
    }

    if (v7)
    {
      static Logger.updates.getter();
      v24 = v6;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = [v24 cellularDataPrompt];

        _os_log_impl(&_mh_execute_header, v25, v26, "Unknown cellular data prompt value: %ld", v27, 0xCu);

        v28 = v25;
      }

      else
      {

        v28 = v24;
        v2 = v25;
      }

      (*(v0[11] + 8))(v0[12], v0[10]);
      goto LABEL_22;
    }

    v14 = v0[9];
    v15 = objc_opt_self();
    v16 = OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state;
    v0[19] = OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state;
    v17 = (v14 + v16);
    v18 = v17[5];
    v19 = v17[6];
    v20 = sub_100005B60(v17 + 2, v18);
    v21 = sub_1000C56EC(v18, v19, v20);
    v22 = sub_1001FB3A4(v15, v21);
    v0[20] = v22;

    if (!v22)
    {
      goto LABEL_26;
    }

    v23 = [v22 sizeLimitForNetworkType:AMSNetworkTypeCellular];
    if (AMSSizeLimitNoLimit == v23)
    {

LABEL_22:

      v29 = v0[1];

      return v29(0, 0);
    }

    v30 = v23;
    if (v23 <= 0)
    {
LABEL_26:
      v30 = 0;
    }

    v0[21] = v30;
    v31 = v0[9];
    v32 = swift_allocObject();
    v0[22] = v32;
    *(v32 + 16) = 0;
    v33 = swift_allocObject();
    v0[23] = v33;
    *(v33 + 16) = _swiftEmptyArrayStorage;
    objc_opt_self();
    v0[24] = sub_1003C27BC();
    v34 = swift_allocObject();
    v0[25] = v34;
    v34[2] = v30;
    v34[3] = v32;
    v34[4] = v31;
    v34[5] = v33;

    v35 = v31;

    v36 = swift_task_alloc();
    v0[26] = v36;
    *v36 = v0;
    v36[1] = sub_1000B3C24;

    return sub_1001B6EE4(v36, sub_1000B5C6C, v34);
  }

  else
  {
    v12 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000B3970(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = sub_1000B404C;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v7 = sub_1000B3ACC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000B3ACC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[9];
  v6 = objc_opt_self();
  v7 = [v3 isRoaming];
  objc_opt_self();
  v8 = sub_1003D5FC8();
  v9 = *(*(v5 + OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state + 8) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
  v10 = sub_1003BF980(v6, v2, 0, v7, v8, v9);

  v11 = v0[1];

  return v11(v10, v1);
}

uint64_t sub_1000B3C24()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 192);

  if (v0)
  {
    v4 = sub_1000B3F84;
  }

  else
  {
    v4 = sub_1000B3D9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000B3D9C()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v2 = *(v0 + 184);
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 72) + *(v0 + 152);
    v8 = objc_opt_self();
    v9 = [v6 isRoaming];
    objc_opt_self();
    v10 = sub_1003D5FC8();
    v11 = *(*(v7 + 8) + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    v12 = sub_1003BF980(v8, v3, 1, v9, v10, v11);

    swift_beginAccess();
    v13 = *(v2 + 16);
  }

  else
  {
    v14 = *(v0 + 160);
    v15 = *(v0 + 112);

    v12 = 0;
    v13 = 0;
  }

  v16 = *(v0 + 8);

  return v16(v12, v13);
}

uint64_t sub_1000B3F84()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000B404C()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000B40E8(void *a1, void *a2, char a3, void *a4, uint64_t a5)
{
  sub_10009FAD4(0, &qword_10059D030);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = a4;
  v12 = [a1 connection];
  v13 = sub_1002D3F5C(ObjCClassFromMetadata, v12, a2);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000B5D58;
  *(v15 + 24) = v14;
  v20[4] = sub_1000BB2B4;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_10014BEFC;
  v20[3] = &unk_10050B5A8;
  v16 = _Block_copy(v20);
  v17 = a1;
  swift_unknownObjectRetain();

  [v13 enumeratePersistentIDsUsingBlock:v16];
  _Block_release(v16);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_100205BE4(v17, v18);
    sub_1002560DC(v19, 4096);
  }
}

void sub_1000B42F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6, void *a7)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v19 = [a4 connection];
  v47 = [objc_allocWithZone(AppInstallEntity) initWithPersistentID:a1 onConnection:v19];

  if (!a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_11:

    goto LABEL_12;
  }

  v20 = [a6 selectedActionIdentifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v23)
  {
    goto LABEL_11;
  }

  if (v24 == v21 && v23 == v25)
  {

    goto LABEL_16;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
LABEL_16:
    v32 = sub_100294554(v47);
    if (v32)
    {
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      objc_opt_self();
      v32 = sub_1003B6560();
      if (a5)
      {
LABEL_18:
        static Logger.updates.getter();
        v33 = v47;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138412290;
          v38 = sub_10029430C(v33);
          *(v36 + 4) = v38;
          *v37 = v38;
          _os_log_impl(&_mh_execute_header, v34, v35, "[%@] Allowing download over cellular for 'update all'", v36, 0xCu);
          sub_100086A24(v37);
        }

        (*(v13 + 8))(v18, v12);
        sub_1003B6820(v32, 1);
        sub_1003B66A8(v32, 62);
        if (([a7 isConstrained] & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    static Logger.updates.getter();
    v39 = v47;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = sub_10029430C(v39);
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%@] Allowing download over low data for 'update all'", v42, 0xCu);
      sub_100086A24(v43);
    }

    (*(v13 + 8))(v16, v12);
LABEL_26:
    sub_1003B6764(v32, 1);
LABEL_27:
    v45 = v32;
    sub_1002945E4(v47, v45);

    return;
  }

LABEL_12:
  v29 = sub_100205BE4(a4, v28);
  v30 = sub_1002953E0(v47, -30);
  sub_1002561F0(v29, v30);

  v31 = v47;
}

uint64_t sub_1000B47D0(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, _BYTE *a5, void *a6, uint64_t *a7)
{
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  result = __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a3[OBJC_IVAR____TtC9appstored17EvaluatorDownload_bytes] >= a4)
  {
    swift_beginAccess();
    *a5 = 1;
    static Logger.updates.getter();
    v18 = a6;
    v19 = a3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = a1;
      *v22 = 138412546;
      v24 = *(*&v18[OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state + 8] + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
      *(v22 + 4) = v24;
      *(v22 + 12) = 2112;
      *v23 = v24;
      v25 = *&v19[OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey];
      *(v22 + 14) = v25;
      v23[1] = v25;
      v26 = v24;
      v27 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%@] [%@] Showing cellular prompt for 'update all'", v22, 0x16u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();
      a1 = v32;
    }

    (*(v14 + 8))(v17, v13);
    swift_beginAccess();
    v28 = *a7;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v28;
    if ((result & 1) == 0)
    {
      result = sub_1001AC928(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
      *a7 = result;
    }

    v30 = *(v28 + 16);
    v29 = *(v28 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_1001AC928((v29 > 1), v30 + 1, 1, v28);
      v28 = result;
      *a7 = result;
    }

    *(v28 + 16) = v30 + 1;
    *(v28 + 8 * v30 + 32) = a1;
  }

  return result;
}

uint64_t sub_1000B4AAC(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 120) = a1;
  return _swift_task_switch(sub_1000B4AD0, 0, 0);
}

uint64_t sub_1000B4AD0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 120);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  *(v4 + 16) = _swiftEmptyArrayStorage;
  objc_opt_self();
  *(v0 + 88) = sub_1003C27BC();
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  v6 = v1;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1000B4C4C;

  return sub_1001B6EE4();
}

uint64_t sub_1000B4C4C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1000B4E24;
  }

  else
  {
    v4 = *(v2 + 88);

    v3 = sub_1000B4D6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B4D6C()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v2 + 16);

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_1000B4E24()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B4EA8(uint64_t a1, uint64_t a2, char *a3, char a4, void *a5, void *a6, uint64_t *a7)
{
  v45 = type metadata accessor for Logger();
  v13 = *(v45 - 8);
  v14 = __chkstk_darwin(v45);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  if ((a4 & 1) == 0)
  {
    static Logger.updates.getter();
    v29 = a5;
    v30 = a3;
    v21 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v21, v31))
    {
      goto LABEL_8;
    }

    v43 = a3;
    v44 = a1;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412546;
    v34 = *(*&v29[OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state + 8] + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v32 + 4) = v34;
    *(v32 + 12) = 2112;
    *v33 = v34;
    v35 = *&v30[OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey];
    *(v32 + 14) = v35;
    v33[1] = v35;
    v36 = v34;
    v37 = v35;
    _os_log_impl(&_mh_execute_header, v21, v31, "[%@] [%@] Showing low data prompt for 'update all'", v32, 0x16u);
    goto LABEL_6;
  }

  static Logger.updates.getter();
  v19 = a5;
  v20 = a3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v43 = a3;
    v44 = a1;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412546;
    v25 = *(*&v19[OBJC_IVAR____TtC9appstored18PerformUpdatesTask_state + 8] + OBJC_IVAR____TtC9appstored14UpdatesContext_logKey);
    *(v23 + 4) = v25;
    *(v23 + 12) = 2112;
    *v24 = v25;
    v26 = *&v20[OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey];
    *(v23 + 14) = v26;
    v24[1] = v26;
    v27 = v25;
    v28 = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%@] [%@] Showing cellular prompt for 'update all'", v23, 0x16u);
    v16 = v18;
LABEL_6:
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    a3 = v43;
    a1 = v44;
    goto LABEL_8;
  }

  v16 = v18;
LABEL_8:

  (*(v13 + 8))(v16, v45);
  v38 = *&a3[OBJC_IVAR____TtC9appstored17EvaluatorDownload_bytes];
  swift_beginAccess();
  if (__CFADD__(*a6, v38))
  {
    __break(1u);
  }

  else
  {
    *a6 += v38;
    swift_beginAccess();
    v38 = *a7;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v38;
    if (result)
    {
      goto LABEL_10;
    }
  }

  result = sub_1001AC928(0, *(v38 + 16) + 1, 1, v38);
  v38 = result;
  *a7 = result;
LABEL_10:
  v41 = *(v38 + 16);
  v40 = *(v38 + 24);
  if (v41 >= v40 >> 1)
  {
    result = sub_1001AC928((v40 > 1), v41 + 1, 1, v38);
    v38 = result;
    *a7 = result;
  }

  *(v38 + 16) = v41 + 1;
  *(v38 + 8 * v41 + 32) = a1;
  return result;
}

__n128 sub_1000B53BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000B53D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000B5420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B547C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100085384;

  return sub_1000B1A80(v2, v3);
}

uint64_t sub_1000B5528(uint64_t a1, uint64_t a2)
{
  sub_100085D40(&unk_10059DC80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100434780;
  v5 = @"IFNULL(app_install.phase, 10)";
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = objc_opt_self();
  v8 = [v7 predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v9 = sub_10009FAD4(0, &unk_10059C480);
  *(v4 + 56) = v9;
  *(v4 + 32) = v8;
  v10 = @"source_type";
  v11 = [v7 predicateWithProperty:v10 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(v4 + 88) = v9;
  *(v4 + 64) = v11;
  v12 = @"update_type";
  v13 = [v7 predicateWithProperty:v12 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(v4 + 120) = v9;
  *(v4 + 96) = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [objc_opt_self() predicateMatchingAllPredicates:isa];

  sub_10009FAD4(0, &qword_10059D030);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [v2 connection];
  v18 = sub_1002D3F5C(ObjCClassFromMetadata, v17, v15);

  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1000B5CFC;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1000B5D08;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10014BEFC;
  aBlock[3] = &unk_10050B530;
  v21 = _Block_copy(aBlock);
  v22 = v2;

  [v18 enumeratePersistentIDsUsingBlock:v21];

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1000B58C8(uint64_t a1, int a2, int a3, id a4, void (*a5)(uint64_t, id))
{
  v7 = [a4 connection];
  v8 = [objc_allocWithZone(AppInstallEntity) initWithPersistentID:a1 onConnection:v7];

  a5(a1, v8);
}

uint64_t sub_1000B5968(char *a1)
{
  v2 = OBJC_IVAR____TtC9appstored14UpdatesContext_reason;
  v3 = *&a1[OBJC_IVAR____TtC9appstored14UpdatesContext_reason];
  type metadata accessor for LoadSoftwareUpdatesReason(0);
  if (v3 > 9 || (((1 << v3) & 0x2D6) == 0 ? (_StringGuts.grow(_:)(22), , v14 = 0xD000000000000014, v15 = 0x800000010044D760) : (_StringGuts.grow(_:)(28), , v14 = 0xD00000000000001ALL, v15 = 0x800000010044D740), v4 = [*&a1[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] description], v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v7 = v6, v4, v8._countAndFlagsBits = v5, v8._object = v7, String.append(_:)(v8), , v9 = *&a1[v2], v9 >= 0xA))
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v10 = sub_1000BDDF4(v14, v15, dbl_100435468[v9]);
    v12 = v11;

    if (v12)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_1000B5B60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10020894C(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1000B5B94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B5C6C()
{
  v1 = v0[4];
  v2 = v0[3] + 16;
  v3 = v0[5] + 16;
  v7 = v0[2];
  v8 = v2;
  v9 = v1;
  v10 = v3;
  v5[2] = sub_1000B5CEC;
  v5[3] = &v6;
  return sub_1000B5528(sub_1000B5CF8, v5);
}

uint64_t sub_1000B5D10()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B5D68()
{
  v1 = v0[1].i64[1];
  v4[16] = v0[1].i8[0];
  v5 = v1;
  v6 = vaddq_s64(v0[2], vdupq_n_s64(0x10uLL));
  v3[2] = sub_1000B5DF4;
  v3[3] = v4;
  return sub_1000B5528(sub_1000BB2B0, v3);
}

void sub_1000B5E04(uint64_t a1, _TtC9appstored17EvaluatorDownload *a2)
{
  v5 = *(v2 + 16);
  v6 = sub_100396F9C(a2);
  v5(a1, a2, v6);
}

uint64_t sub_1000B5E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = sub_100085D40(&qword_10059C4D8);
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000B5FB4, 0, 0);
}

uint64_t sub_1000B5FB4()
{
  v28 = v0;
  if (v0[25] == 2)
  {
    v1 = v0[26];
    static Logger.updates.getter();
    v2 = v1;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[33];
    v8 = v0[30];
    v7 = v0[31];
    if (v5)
    {
      v9 = v0[26];
      v10 = v0[22];
      v25 = v0[23];
      v26 = v0[33];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v9;
      *v12 = v9;
      *(v11 + 12) = 2082;
      v14 = v9;
      *(v11 + 14) = sub_1001AD0D8(v10, v25, &v27);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Handling potential provisioned app: %{public}s", v11, 0x16u);
      sub_100086A24(v12);

      sub_100005A00(v13);

      v15 = *(v7 + 8);
      v15(v26, v8);
    }

    else
    {

      v15 = *(v7 + 8);
      v15(v6, v8);
    }

    v0[34] = v15;
    v19 = v0[28];
    v18 = v0[29];
    v20 = v0[27];
    v21 = v0[24];
    v22 = [objc_opt_self() sharedManager];
    v0[35] = v22;
    v23 = [v21 unsignedLongLongValue];
    v0[2] = v0;
    v0[7] = v0 + 36;
    v0[3] = sub_1000B6364;
    swift_continuation_init();
    v0[17] = v20;
    v24 = sub_100005F38(v0 + 14);
    CheckedContinuation.init(continuation:function:)();
    (*(v19 + 32))(v24, v18, v20);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000B3258;
    v0[13] = &unk_10050B6C0;
    [v22 isTVProviderApp:v23 withReplyHandler:v0 + 10];
    (*(v19 + 8))(v24, v20);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1000B6364()
{

  return _swift_task_switch(sub_1000B6444, 0, 0);
}

uint64_t sub_1000B6444()
{
  v35 = v0;
  v1 = *(v0 + 288);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {
    v2 = objc_opt_self();
    v3 = sub_1003D60F0();
    if (v3)
    {
      v4 = v3;
      sub_10009FAD4(0, &qword_10059CBB0);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v33 = v5;
    *(v0 + 168) = *(v0 + 192);
    v6 = swift_task_alloc();
    *(v6 + 16) = v0 + 168;

    v7 = sub_10019A7E8(sub_1000BB048, v6, v5);

    if ((v7 & 1) == 0)
    {
      v8 = *(v0 + 192);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v9 = *(v0 + 208);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10009FAD4(0, &qword_10059CBB0);

      isa = Array._bridgeToObjectiveC()().super.isa;

      sub_1003D63C8(v2, isa);

      static Logger.updates.getter();
      v11 = v9;

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 272);
      v16 = *(v0 + 256);
      v17 = *(v0 + 240);
      if (v14)
      {
        v31 = *(v0 + 240);
        v32 = *(v0 + 272);
        v18 = *(v0 + 208);
        v30 = *(v0 + 256);
        v20 = *(v0 + 176);
        v19 = *(v0 + 184);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v34[0] = swift_slowAlloc();
        *v21 = 138412802;
        *(v21 + 4) = v18;
        *v22 = v18;
        *(v21 + 12) = 2080;
        v23 = v18;
        *(v21 + 14) = sub_1001AD0D8(v20, v19, v34);
        *(v21 + 22) = 2082;
        *(v0 + 144) = v33;
        *(v0 + 152) = sub_1000B32B4;
        *(v0 + 160) = 0;

        sub_100085D40(&qword_10059C4E0);
        sub_1000BB0B0();
        v24 = BidirectionalCollection<>.joined(separator:)();
        v26 = v25;

        v27 = sub_1001AD0D8(v24, v26, v34);

        *(v21 + 24) = v27;
        _os_log_impl(&_mh_execute_header, v12, v13, "[%@] Added %s to previously provisioned apps: [%{public}s]", v21, 0x20u);
        sub_100086A24(v22);

        swift_arrayDestroy();

        v32(v30, v31);
      }

      else
      {

        v15(v16, v17);
      }
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1000B6874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = type metadata accessor for Logger();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v5 = sub_100085D40(&qword_10059C4A8);
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000B69D0, 0, 0);
}

uint64_t sub_1000B69D0()
{
  v1 = *(v0 + 168);
  v2 = sub_1000EF4B8(_swiftEmptyArrayStorage);
  v3 = v2;
  if (!(v1 >> 62))
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_37:
    v7 = _swiftEmptyArrayStorage;
    v6 = v52;
LABEL_38:
    v39 = v6 + 2;
    v40 = v6 + 18;
    v6[34] = v7;
    v6[35] = v3;
    v41 = v6[32];
    v53 = v6[33];
    v55 = v6 + 10;
    v42 = v6[31];
    v43 = v6[22];
    objc_opt_self();
    v44 = sub_1002BB3F0();
    v45 = v6;
    isa = Array._bridgeToObjectiveC()().super.isa;
    sub_1002BC0CC(v44, 3, isa, v43);

    objc_opt_self();
    v47 = sub_1001DFF60();
    v45[36] = v47;

    sub_1000A7F30(v48);
    sub_10009FAD4(0, &qword_10059BDE8);
    v49 = Array._bridgeToObjectiveC()().super.isa;
    v45[37] = v49;

    v45[2] = v45;
    v45[7] = v40;
    v45[3] = sub_1000B6FA8;
    swift_continuation_init();
    v45[17] = v42;
    v50 = sub_100005F38(v45 + 14);
    sub_10009FAD4(0, &unk_10059C4B0);
    sub_100085D40(&unk_10059DE80);
    CheckedContinuation.init(continuation:function:)();
    (*(v41 + 32))(v50, v53, v42);
    v45[10] = _NSConcreteStackBlock;
    v45[11] = 1107296256;
    v45[12] = sub_1000B31A8;
    v45[13] = &unk_10050B698;
    sub_1001E0818(v47, v49, v55);
    (*(v41 + 8))(v50, v42);
    v2 = v39;

    return _swift_continuation_await(v2);
  }

LABEL_36:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  v4 = v2;
  if (!v2)
  {
    goto LABEL_37;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
    return _swift_continuation_await(v2);
  }

  v5 = 0;
  v54 = v1 & 0xC000000000000001;
  v6 = v52;
  v7 = _swiftEmptyArrayStorage;
  v51 = v52[21] + 32;
  while (1)
  {
    if (v54)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v51 + 8 * v5);
    }

    v11 = v10;
    v12 = [v10 bundleID];
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1001AC6FC(0, *(v7 + 2) + 1, 1, v7);
    }

    v18 = *(v7 + 2);
    v17 = *(v7 + 3);
    if (v18 >= v17 >> 1)
    {
      v7 = sub_1001AC6FC((v17 > 1), v18 + 1, 1, v7);
    }

    *(v7 + 2) = v18 + 1;
    v19 = &v7[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v20 = [v11 itemID];
    if (!v20)
    {
      v31 = sub_1000EE808(v14, v16);
      v33 = v32;

      if (v33)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1001B113C();
        }

        sub_1001B29D8(v31, v3);
      }

      goto LABEL_7;
    }

    v21 = v20;
    v1 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_1000EE808(v14, v16);
    v25 = v3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v29 = v24;
    if (v3[3] < v28)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_26;
    }

    v37 = v23;
    sub_1001B113C();
    v23 = v37;
    if ((v29 & 1) == 0)
    {
LABEL_27:
      v3[(v23 >> 6) + 8] |= 1 << v23;
      v34 = (v3[6] + 16 * v23);
      *v34 = v14;
      v34[1] = v16;
      *(v3[7] + 8 * v23) = v21;
      v35 = v3[2];
      v27 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v27)
      {
        goto LABEL_35;
      }

      v3[2] = v36;
      goto LABEL_6;
    }

LABEL_5:
    v8 = v3[7];
    v9 = *(v8 + 8 * v23);
    *(v8 + 8 * v23) = v21;

LABEL_6:
    v4 = v1;
    v6 = v52;
LABEL_7:
    ++v5;
    [v11 setBatchLogKey:v6[22]];
    [v11 updateGeneratedProperties];

    if (v4 == v5)
    {
      goto LABEL_38;
    }
  }

  sub_1001AE148(v28, isUniquelyReferenced_nonNull_native);
  v23 = sub_1000EE808(v14, v16);
  if ((v29 & 1) == (v30 & 1))
  {
LABEL_26:
    if ((v29 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_5;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1000B6FA8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_1000B7C68;
  }

  else
  {
    v2 = sub_1000B70B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

unint64_t sub_1000B70B8()
{
  v118 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[18];
  v0[39] = v3;

  v4 = [v3 items];
  sub_10009FAD4(0, &qword_10059C4C8);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[40] = v5;

  if (v5 >> 62)
  {
    goto LABEL_56;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[41] = v6;
  if (!v6)
  {
LABEL_57:
    v111 = 0;
LABEL_58:
    v105 = v0[39];

    v106 = v0[1];

    return v106(v111);
  }

LABEL_3:
  v111 = 0;
  v114 = 0;
  v7 = 0;
  v8 = &selRef_dictionaryForPosting;
  while (1)
  {
    v9 = v0[40];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v10 = *(v9 + 8 * v7 + 32);
    }

    v0[42] = v10;
    v0[43] = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v104 = _CocoaArrayWrapper.endIndex.getter();
      v0[41] = v104;
      if (!v104)
      {
        goto LABEL_57;
      }

      goto LABEL_3;
    }

    v11 = [v10 results];
    if (v11)
    {
      v12 = v11;
      sub_10009FAD4(0, &qword_10059C4D0);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v0[44] = v13;
    if (v13 >> 62)
    {
      break;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[45] = v14;
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_38:
    v76 = v0[42];

    v77 = [v76 results];
    if (v77)
    {
      v78 = v77;
      sub_10009FAD4(0, &qword_10059C4D0);
      v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v79 = _swiftEmptyArrayStorage;
    }

    v81 = v0[42];
    v80 = v0[43];
    v82 = v0[41];
    sub_100154C8C(v79);

    if (v80 == v82)
    {
      goto LABEL_58;
    }

    v7 = v0[43];
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  v0[45] = v14;
  if (!v14)
  {
    goto LABEL_38;
  }

LABEL_14:
  if (v14 < 1)
  {
    goto LABEL_54;
  }

  v15 = 0;
  while (2)
  {
    v0[46] = v15;
    v19 = v0[44];
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v19 + 8 * v15 + 32);
    }

    v21 = v20;
    v0[47] = v20;
    v22 = [v20 v8[383]];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v0[48] = v25;
    v26 = [v21 status];
    if (!v26)
    {
      v116 = v23;
      v57 = v0[22];
      static Logger.updates.getter();
      v58 = v57;
      v59 = v21;

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();

      v62 = os_log_type_enabled(v60, v61);
      v63 = v0[27];
      v64 = v0[24];
      v65 = v0[25];
      if (v62)
      {
        v66 = v0[22];
        v112 = v0[27];
        v67 = swift_slowAlloc();
        v109 = v64;
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v117 = v69;
        *v67 = 138412802;
        *(v67 + 4) = v66;
        *v68 = v66;
        *(v67 + 12) = 2114;
        v70 = v66;
        v71 = [v59 persistentID];
        *(v67 + 14) = v71;
        v68[1] = v71;
        *(v67 + 22) = 2082;
        v72 = sub_1001AD0D8(v116, v25, &v117);

        *(v67 + 24) = v72;
        _os_log_impl(&_mh_execute_header, v60, v61, "[%@] Skipped duplicate job: %{public}@ / %{public}s", v67, 0x20u);
        sub_100085D40(&unk_10059C250);
        swift_arrayDestroy();

        sub_100005A00(v69);
        v8 = &selRef_dictionaryForPosting;

        (*(v65 + 8))(v112, v109);
      }

      else
      {

        (*(v65 + 8))(v63, v64);
      }

      if (__OFADD__(v114, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      v111 = ++v114;
      goto LABEL_17;
    }

    if (v26 == 1)
    {
      v44 = v0[22];
      static Logger.updates.getter();
      v45 = v44;
      v46 = v21;

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = v0[22];
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v0[20] = v52;
        *v50 = 138412802;
        *(v50 + 4) = v49;
        *v51 = v49;
        *(v50 + 12) = 2082;
        v53 = v49;
        v54 = sub_1001AD0D8(v23, v25, v0 + 20);

        *(v50 + 14) = v54;
        *(v50 + 22) = 2114;
        v55 = [v46 error];
        if (v55)
        {
          v55 = _swift_stdlib_bridgeErrorToNSError();
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v73 = v0[28];
        v74 = v0[24];
        v75 = v0[25];
        *(v50 + 24) = v55;
        v51[1] = v56;
        _os_log_impl(&_mh_execute_header, v47, v48, "[%@ Import failed for bundleID: %{public}s error: %{public}@", v50, 0x20u);
        sub_100085D40(&unk_10059C250);
        swift_arrayDestroy();

        sub_100005A00(v52);

        (*(v75 + 8))(v73, v74);
        v8 = &selRef_dictionaryForPosting;
      }

      else
      {
        v16 = v0[28];
        v17 = v0[24];
        v18 = v0[25];

        (*(v18 + 8))(v16, v17);
      }

LABEL_17:
      v15 = v0[46] + 1;
      if (v15 == v0[45])
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v115 = v23;
  if (v26 != 2)
  {
    v27 = v0[22];
    static Logger.updates.getter();
    v28 = v21;
    v29 = v27;
    v30 = v28;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[25];
    v34 = v0[26];
    v36 = v0[24];
    if (v33)
    {
      v37 = v0[22];
      v38 = swift_slowAlloc();
      v108 = v34;
      v39 = swift_slowAlloc();
      v107 = v36;
      v40 = swift_slowAlloc();
      v117 = v40;
      *v38 = 138412802;
      *(v38 + 4) = v37;
      *v39 = v37;
      *(v38 + 12) = 2050;
      v41 = v37;
      v42 = [v30 status];

      *(v38 + 14) = v42;
      *(v38 + 22) = 2082;
      v43 = sub_1001AD0D8(v115, v25, &v117);

      *(v38 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%@] Unknown status %{public}ld for bundleID: %{public}s", v38, 0x20u);
      sub_100086A24(v39);

      sub_100005A00(v40);

      v8 = &selRef_dictionaryForPosting;

      (*(v35 + 8))(v108, v107);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }

    goto LABEL_17;
  }

  v83 = v0[22];
  static Logger.updates.getter();
  v84 = v83;
  v85 = v21;

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();

  v88 = os_log_type_enabled(v86, v87);
  v89 = v0[29];
  v90 = v0[24];
  v91 = v0[25];
  if (v88)
  {
    v113 = v0[24];
    v92 = v0[22];
    v93 = swift_slowAlloc();
    v110 = v89;
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v117 = v95;
    *v93 = 138412802;
    *(v93 + 4) = v92;
    *v94 = v92;
    *(v93 + 12) = 2114;
    v96 = v92;
    v97 = [v85 persistentID];
    *(v93 + 14) = v97;
    v94[1] = v97;
    *(v93 + 22) = 2082;
    *(v93 + 24) = sub_1001AD0D8(v115, v25, &v117);
    _os_log_impl(&_mh_execute_header, v86, v87, "[%@] Import success for job: %{public}@ / %{public}s", v93, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    sub_100005A00(v95);

    result = (*(v91 + 8))(v110, v113);
  }

  else
  {

    result = (*(v91 + 8))(v89, v90);
  }

  v0[49] = v114 + 1;
  if (__OFADD__(v114, 1))
  {
    __break(1u);
    goto LABEL_62;
  }

  if (!*(v0[35] + 16))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = sub_1000EE808(v115, v25);
  if ((v99 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    return result;
  }

  v100 = *(*(v0[35] + 56) + 8 * result);
  v0[50] = v100;
  v101 = v100;
  v102 = swift_task_alloc();
  v0[51] = v102;
  *v102 = v0;
  v102[1] = sub_1000B7F98;
  v103 = v0[22];

  return sub_1000B5E78(v115, v25, v101, 2, v103);
}

uint64_t sub_1000B7C68()
{
  v27 = v0;
  v1 = v0[37];
  v2 = v0[36];
  v3 = v0[22];
  swift_willThrow();

  static Logger.updates.getter();
  v4 = v3;

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[34];
    v23 = v0[25];
    v24 = v0[24];
    v25 = v0[30];
    v8 = v0[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2082;
    v0[19] = v7;
    v11 = v8;
    sub_100085D40(&unk_10059DCA0);
    sub_1000BB14C(&qword_10059C4C0, &unk_10059DCA0);
    v12 = BidirectionalCollection<>.joined(separator:)();
    v14 = v13;

    v15 = sub_1001AD0D8(v12, v14, &v26);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    v10[1] = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Purchase failed for bundleIDs: %{public}s: %{public}@", v9, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    sub_100005A00(v22);

    (*(v23 + 8))(v25, v24);
  }

  else
  {
    v17 = v0[30];
    v18 = v0[24];
    v19 = v0[25];

    (*(v19 + 8))(v17, v18);
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1000B7F98()
{
  v1 = *(*v0 + 400);

  return _swift_task_switch(sub_1000B80C8, 0, 0);
}

void sub_1000B80C8()
{
  v112 = v0;

  v105 = *(v0 + 392);
  do
  {
    while (1)
    {
      while (1)
      {
        v1 = *(v0 + 368) + 1;
        if (v1 == *(v0 + 360))
        {
          while (1)
          {
            v2 = *(v0 + 336);

            v3 = [v2 results];
            if (v3)
            {
              v4 = v3;
              sub_10009FAD4(0, &qword_10059C4D0);
              v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            }

            else
            {
              v5 = _swiftEmptyArrayStorage;
            }

            v7 = *(v0 + 336);
            v6 = *(v0 + 344);
            v8 = *(v0 + 328);
            sub_100154C8C(v5);

            if (v6 == v8)
            {
              goto LABEL_44;
            }

            v9 = *(v0 + 344);
            v10 = *(v0 + 320);
            if ((v10 & 0xC000000000000001) != 0)
            {
              v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_57;
              }

              v11 = *(v10 + 8 * v9 + 32);
            }

            *(v0 + 336) = v11;
            *(v0 + 344) = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            v12 = [v11 results];
            if (v12)
            {
              v13 = v12;
              sub_10009FAD4(0, &qword_10059C4D0);
              v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            }

            else
            {
              v14 = _swiftEmptyArrayStorage;
            }

            *(v0 + 352) = v14;
            if (v14 >> 62)
            {
              v15 = _CocoaArrayWrapper.endIndex.getter();
              *(v0 + 360) = v15;
              if (v15)
              {
LABEL_19:
                if (v15 >= 1)
                {
                  v1 = 0;
                  goto LABEL_21;
                }

                goto LABEL_58;
              }
            }

            else
            {
              v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
              *(v0 + 360) = v15;
              if (v15)
              {
                goto LABEL_19;
              }
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_21:
        *(v0 + 368) = v1;
        v16 = *(v0 + 352);
        v17 = (v16 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v16 + 8 * v1 + 32);
        v18 = v17;
        *(v0 + 376) = v17;
        v19 = [v17 bundleID];
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        *(v0 + 384) = v21;
        v22 = [v18 status];
        if (v22 != 1)
        {
          break;
        }

        v39 = *(v0 + 176);
        static Logger.updates.getter();
        v40 = v39;
        v41 = v18;

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = *(v0 + 176);
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *(v0 + 160) = v47;
          *v45 = 138412802;
          *(v45 + 4) = v44;
          *v46 = v44;
          *(v45 + 12) = 2082;
          v48 = v44;
          v49 = sub_1001AD0D8(v109, v21, (v0 + 160));

          *(v45 + 14) = v49;
          *(v45 + 22) = 2114;
          v50 = [v41 error];
          if (v50)
          {
            v50 = _swift_stdlib_bridgeErrorToNSError();
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          v110 = *(v0 + 224);
          v56 = *(v0 + 192);
          v55 = *(v0 + 200);
          *(v45 + 24) = v50;
          v46[1] = v51;
          _os_log_impl(&_mh_execute_header, v42, v43, "[%@ Import failed for bundleID: %{public}s error: %{public}@", v45, 0x20u);
          sub_100085D40(&unk_10059C250);
          swift_arrayDestroy();

          sub_100005A00(v47);

          (*(v55 + 8))(v110, v56);
        }

        else
        {
          v52 = *(v0 + 224);
          v54 = *(v0 + 192);
          v53 = *(v0 + 200);

          (*(v53 + 8))(v52, v54);
        }
      }

      if (!v22)
      {
        break;
      }

      if (v22 == 2)
      {
        v77 = *(v0 + 176);
        static Logger.updates.getter();
        v78 = v77;
        v79 = v18;

        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        v82 = os_log_type_enabled(v80, v81);
        v83 = *(v0 + 232);
        v85 = *(v0 + 192);
        v84 = *(v0 + 200);
        if (v82)
        {
          v108 = *(v0 + 192);
          v86 = v21;
          v87 = *(v0 + 176);
          v104 = *(v0 + 232);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v111 = v90;
          *v88 = 138412802;
          *(v88 + 4) = v87;
          *v89 = v87;
          *(v88 + 12) = 2114;
          v91 = v87;
          v21 = v86;
          v92 = [v79 persistentID];
          *(v88 + 14) = v92;
          v89[1] = v92;
          *(v88 + 22) = 2082;
          v93 = v109;
          *(v88 + 24) = sub_1001AD0D8(v109, v21, &v111);
          _os_log_impl(&_mh_execute_header, v80, v81, "[%@] Import success for job: %{public}@ / %{public}s", v88, 0x20u);
          sub_100085D40(&unk_10059C250);
          swift_arrayDestroy();

          sub_100005A00(v90);

          (*(v84 + 8))(v104, v108);
        }

        else
        {

          (*(v84 + 8))(v83, v85);
          v93 = v109;
        }

        *(v0 + 392) = v105 + 1;
        if (__OFADD__(v105, 1))
        {
LABEL_59:
          __break(1u);
        }

        else if (*(*(v0 + 280) + 16))
        {
          v94 = sub_1000EE808(v93, v21);
          if (v95)
          {
            v96 = *(*(*(v0 + 280) + 56) + 8 * v94);
            *(v0 + 400) = v96;
            v97 = v96;
            v98 = swift_task_alloc();
            *(v0 + 408) = v98;
            *v98 = v0;
            v98[1] = sub_1000B7F98;
            v99 = *(v0 + 176);

            sub_1000B5E78(v93, v21, v97, 2, v99);
            return;
          }

LABEL_61:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_61;
      }

      v23 = *(v0 + 176);
      static Logger.updates.getter();
      v24 = v18;
      v25 = v23;
      v26 = v24;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.fault.getter();

      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 200);
      v31 = *(v0 + 208);
      v106 = *(v0 + 192);
      if (v29)
      {
        log = v27;
        v32 = *(v0 + 176);
        v33 = swift_slowAlloc();
        v102 = v31;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v111 = v35;
        *v33 = 138412802;
        *(v33 + 4) = v32;
        *v34 = v32;
        *(v33 + 12) = 2050;
        v36 = v32;
        v37 = [v26 status];

        *(v33 + 14) = v37;
        *(v33 + 22) = 2082;
        v38 = sub_1001AD0D8(v109, v21, &v111);

        *(v33 + 24) = v38;
        _os_log_impl(&_mh_execute_header, log, v28, "[%@] Unknown status %{public}ld for bundleID: %{public}s", v33, 0x20u);
        sub_100086A24(v34);

        sub_100005A00(v35);

        (*(v30 + 8))(v102, v106);
      }

      else
      {

        (*(v30 + 8))(v31, v106);
      }
    }

    v57 = *(v0 + 176);
    static Logger.updates.getter();
    v58 = v57;
    v59 = v18;

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 216);
    v65 = *(v0 + 192);
    v64 = *(v0 + 200);
    if (v62)
    {
      loga = v60;
      v66 = v59;
      v67 = *(v0 + 176);
      v107 = *(v0 + 216);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v103 = v65;
      v70 = swift_slowAlloc();
      v111 = v70;
      *v68 = 138412802;
      *(v68 + 4) = v67;
      *v69 = v67;
      *(v68 + 12) = 2114;
      v71 = v67;
      v72 = [v66 persistentID];
      *(v68 + 14) = v72;
      v69[1] = v72;
      *(v68 + 22) = 2082;
      v73 = sub_1001AD0D8(v109, v21, &v111);

      *(v68 + 24) = v73;
      _os_log_impl(&_mh_execute_header, loga, v61, "[%@] Skipped duplicate job: %{public}@ / %{public}s", v68, 0x20u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();

      sub_100005A00(v70);

      (*(v64 + 8))(v107, v103);
    }

    else
    {

      (*(v64 + 8))(v63, v65);
    }
  }

  while (!__OFADD__(v105++, 1));
  __break(1u);
LABEL_44:
  v75 = *(v0 + 312);

  v76 = *(v0 + 8);

  v76(v105);
}

uint64_t sub_1000B8C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v7 = type metadata accessor for Logger();
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v8 = sub_100085D40(&qword_10059C4A8);
  v6[34] = v8;
  v6[35] = *(v8 - 8);
  v6[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8D9C, 0, 0);
}

uint64_t sub_1000B8D9C()
{
  v4 = v0[23];
  v3 = v0[24];
  v5 = _swiftEmptyArrayStorage;
  v6 = sub_1000EF4B8(_swiftEmptyArrayStorage);
  v7 = v6;
  v8 = v3 >> 1;
  v55 = v0;
  if (v3 >> 1 != v4)
  {
    v15 = v0[23];
    if (v8 > v15)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    while (2)
    {
      v16 = v7[7];
      v17 = *(v16 + 8 * v6);
      *(v16 + 8 * v6) = v2;

      v0 = v55;
      v5 = v1;
      while (1)
      {
        while (1)
        {
          do
          {
            ++v15;
            [v3 setBatchLogKey:v0[25]];
            [v3 updateGeneratedProperties];

            if (v8 == v15)
            {
              goto LABEL_2;
            }

LABEL_8:
            v3 = *(v0[22] + 8 * v15);
            v18 = [v3 bundleID];
          }

          while (!v18);
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1001AC6FC(0, *(v5 + 2) + 1, 1, v5);
          }

          v24 = *(v5 + 2);
          v23 = *(v5 + 3);
          if (v24 >= v23 >> 1)
          {
            v5 = sub_1001AC6FC((v23 > 1), v24 + 1, 1, v5);
          }

          *(v5 + 2) = v24 + 1;
          v25 = &v5[16 * v24];
          *(v25 + 4) = v20;
          *(v25 + 5) = v22;
          v26 = [v3 itemID];
          if (v26)
          {
            break;
          }

          v38 = sub_1000EE808(v20, v22);
          v40 = v39;

          if (v40)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1001B113C();
            }

            sub_1001B29D8(v38, v7);
          }
        }

        v2 = v26;
        v27 = v20;
        v1 = v5;
        v28 = v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v27;
        v6 = sub_1000EE808(v27, v22);
        v32 = v7[2];
        v33 = (v31 & 1) == 0;
        v34 = __OFADD__(v32, v33);
        v35 = v32 + v33;
        if (v34)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v36 = v31;
        if (v7[3] < v35)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_23;
        }

        v44 = v6;
        sub_1001B113C();
        v6 = v44;
        v8 = v28;
        if (v36)
        {
          goto LABEL_6;
        }

LABEL_24:
        v7[(v6 >> 6) + 8] |= 1 << v6;
        v41 = (v7[6] + 16 * v6);
        *v41 = v30;
        v41[1] = v22;
        *(v7[7] + 8 * v6) = v2;
        v42 = v7[2];
        v34 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        v0 = v55;
        if (v34)
        {
          goto LABEL_41;
        }

        v5 = v1;
        v7[2] = v43;
      }

      sub_1001AE148(v35, isUniquelyReferenced_nonNull_native);
      v6 = sub_1000EE808(v30, v22);
      if ((v36 & 1) != (v37 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_23:
      v8 = v28;
      if (v36)
      {
        continue;
      }

      goto LABEL_24;
    }
  }

LABEL_2:
  v0[37] = v5;
  v0[38] = v7;
  v10 = v0[24];
  v9 = v0[25];
  objc_opt_self();
  v11 = sub_1002BB3F0();
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_1002BC0CC(v11, 3, isa, v9);

  v13 = v55;
  objc_opt_self();
  v14 = sub_1001DFF60();
  v55[39] = v14;
  v54 = v14;
  if (v10)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v45 = swift_dynamicCastClass();
    if (!v45)
    {
      swift_unknownObjectRelease();
      v45 = _swiftEmptyArrayStorage;
    }

    v46 = v55[23];
    v47 = v45[2];

    if (__OFSUB__(v8, v46))
    {
LABEL_42:
      __break(1u);
    }

    else if (v47 == v8 - v46)
    {
      v13 = v55;
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_34;
    }

    swift_unknownObjectRelease();
    v13 = v55;
  }

  sub_10009CD60(v13[21], v13[22], v13[23], v13[24]);
LABEL_34:
  v48 = v13[35];
  v49 = v13[36];
  v50 = v13[34];
  sub_10009FAD4(0, &qword_10059BDE8);
  v51 = Array._bridgeToObjectiveC()().super.isa;
  v13[40] = v51;

  v13[2] = v13;
  v13[7] = v13 + 18;
  v13[3] = sub_1000B93B4;
  swift_continuation_init();
  v13[17] = v50;
  v52 = sub_100005F38(v13 + 14);
  sub_10009FAD4(0, &unk_10059C4B0);
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v48 + 32))(v52, v49, v50);
  v13[10] = _NSConcreteStackBlock;
  v13[11] = 1107296256;
  v13[12] = sub_1000B31A8;
  v13[13] = &unk_10050B6E8;
  sub_1001E0818(v54, v51, v13 + 10);
  (*(v48 + 8))(v52, v50);

  return _swift_continuation_await(v13 + 2);
}

uint64_t sub_1000B93B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1000BA074;
  }

  else
  {
    v2 = sub_1000B94C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

unint64_t sub_1000B94C4()
{
  v118 = v0;
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[18];
  v0[42] = v3;

  v4 = [v3 items];
  sub_10009FAD4(0, &qword_10059C4C8);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[43] = v5;

  if (v5 >> 62)
  {
    goto LABEL_56;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[44] = v6;
  if (!v6)
  {
LABEL_57:
    v111 = 0;
LABEL_58:
    v105 = v0[42];

    v106 = v0[1];

    return v106(v111);
  }

LABEL_3:
  v111 = 0;
  v114 = 0;
  v7 = 0;
  v8 = &selRef_dictionaryForPosting;
  while (1)
  {
    v9 = v0[43];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v10 = *(v9 + 8 * v7 + 32);
    }

    v0[45] = v10;
    v0[46] = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v104 = _CocoaArrayWrapper.endIndex.getter();
      v0[44] = v104;
      if (!v104)
      {
        goto LABEL_57;
      }

      goto LABEL_3;
    }

    v11 = [v10 results];
    if (v11)
    {
      v12 = v11;
      sub_10009FAD4(0, &qword_10059C4D0);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v0[47] = v13;
    if (v13 >> 62)
    {
      break;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[48] = v14;
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_38:
    v76 = v0[45];

    v77 = [v76 results];
    if (v77)
    {
      v78 = v77;
      sub_10009FAD4(0, &qword_10059C4D0);
      v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v79 = _swiftEmptyArrayStorage;
    }

    v81 = v0[45];
    v80 = v0[46];
    v82 = v0[44];
    sub_100154C8C(v79);

    if (v80 == v82)
    {
      goto LABEL_58;
    }

    v7 = v0[46];
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  v0[48] = v14;
  if (!v14)
  {
    goto LABEL_38;
  }

LABEL_14:
  if (v14 < 1)
  {
    goto LABEL_54;
  }

  v15 = 0;
  while (2)
  {
    v0[49] = v15;
    v19 = v0[47];
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v19 + 8 * v15 + 32);
    }

    v21 = v20;
    v0[50] = v20;
    v22 = [v20 v8[383]];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v0[51] = v25;
    v26 = [v21 status];
    if (!v26)
    {
      v116 = v23;
      v57 = v0[25];
      static Logger.updates.getter();
      v58 = v57;
      v59 = v21;

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();

      v62 = os_log_type_enabled(v60, v61);
      v63 = v0[30];
      v64 = v0[27];
      v65 = v0[28];
      if (v62)
      {
        v66 = v0[25];
        v112 = v0[30];
        v67 = swift_slowAlloc();
        v109 = v64;
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v117 = v69;
        *v67 = 138412802;
        *(v67 + 4) = v66;
        *v68 = v66;
        *(v67 + 12) = 2114;
        v70 = v66;
        v71 = [v59 persistentID];
        *(v67 + 14) = v71;
        v68[1] = v71;
        *(v67 + 22) = 2082;
        v72 = sub_1001AD0D8(v116, v25, &v117);

        *(v67 + 24) = v72;
        _os_log_impl(&_mh_execute_header, v60, v61, "[%@] Skipped duplicate job: %{public}@ / %{public}s", v67, 0x20u);
        sub_100085D40(&unk_10059C250);
        swift_arrayDestroy();

        sub_100005A00(v69);
        v8 = &selRef_dictionaryForPosting;

        (*(v65 + 8))(v112, v109);
      }

      else
      {

        (*(v65 + 8))(v63, v64);
      }

      if (__OFADD__(v114, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      v111 = ++v114;
      goto LABEL_17;
    }

    if (v26 == 1)
    {
      v44 = v0[25];
      static Logger.updates.getter();
      v45 = v44;
      v46 = v21;

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = v0[25];
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v0[20] = v52;
        *v50 = 138412802;
        *(v50 + 4) = v49;
        *v51 = v49;
        *(v50 + 12) = 2082;
        v53 = v49;
        v54 = sub_1001AD0D8(v23, v25, v0 + 20);

        *(v50 + 14) = v54;
        *(v50 + 22) = 2114;
        v55 = [v46 error];
        if (v55)
        {
          v55 = _swift_stdlib_bridgeErrorToNSError();
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v73 = v0[31];
        v74 = v0[27];
        v75 = v0[28];
        *(v50 + 24) = v55;
        v51[1] = v56;
        _os_log_impl(&_mh_execute_header, v47, v48, "[%@ Import failed for bundleID: %{public}s error: %{public}@", v50, 0x20u);
        sub_100085D40(&unk_10059C250);
        swift_arrayDestroy();

        sub_100005A00(v52);

        (*(v75 + 8))(v73, v74);
        v8 = &selRef_dictionaryForPosting;
      }

      else
      {
        v16 = v0[31];
        v17 = v0[27];
        v18 = v0[28];

        (*(v18 + 8))(v16, v17);
      }

LABEL_17:
      v15 = v0[49] + 1;
      if (v15 == v0[48])
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v115 = v23;
  if (v26 != 2)
  {
    v27 = v0[25];
    static Logger.updates.getter();
    v28 = v21;
    v29 = v27;
    v30 = v28;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[28];
    v34 = v0[29];
    v36 = v0[27];
    if (v33)
    {
      v37 = v0[25];
      v38 = swift_slowAlloc();
      v108 = v34;
      v39 = swift_slowAlloc();
      v107 = v36;
      v40 = swift_slowAlloc();
      v117 = v40;
      *v38 = 138412802;
      *(v38 + 4) = v37;
      *v39 = v37;
      *(v38 + 12) = 2050;
      v41 = v37;
      v42 = [v30 status];

      *(v38 + 14) = v42;
      *(v38 + 22) = 2082;
      v43 = sub_1001AD0D8(v115, v25, &v117);

      *(v38 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%@] Unknown status %{public}ld for bundleID: %{public}s", v38, 0x20u);
      sub_100086A24(v39);

      sub_100005A00(v40);

      v8 = &selRef_dictionaryForPosting;

      (*(v35 + 8))(v108, v107);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }

    goto LABEL_17;
  }

  v83 = v0[25];
  static Logger.updates.getter();
  v84 = v83;
  v85 = v21;

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();

  v88 = os_log_type_enabled(v86, v87);
  v89 = v0[32];
  v90 = v0[27];
  v91 = v0[28];
  if (v88)
  {
    v113 = v0[27];
    v92 = v0[25];
    v93 = swift_slowAlloc();
    v110 = v89;
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v117 = v95;
    *v93 = 138412802;
    *(v93 + 4) = v92;
    *v94 = v92;
    *(v93 + 12) = 2114;
    v96 = v92;
    v97 = [v85 persistentID];
    *(v93 + 14) = v97;
    v94[1] = v97;
    *(v93 + 22) = 2082;
    *(v93 + 24) = sub_1001AD0D8(v115, v25, &v117);
    _os_log_impl(&_mh_execute_header, v86, v87, "[%@] Import success for job: %{public}@ / %{public}s", v93, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    sub_100005A00(v95);

    result = (*(v91 + 8))(v110, v113);
  }

  else
  {

    result = (*(v91 + 8))(v89, v90);
  }

  v0[52] = v114 + 1;
  if (__OFADD__(v114, 1))
  {
    __break(1u);
    goto LABEL_62;
  }

  if (!*(v0[38] + 16))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = sub_1000EE808(v115, v25);
  if ((v99 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    return result;
  }

  v100 = *(*(v0[38] + 56) + 8 * result);
  v0[53] = v100;
  v101 = v100;
  v102 = swift_task_alloc();
  v0[54] = v102;
  *v102 = v0;
  v102[1] = sub_1000BA3A4;
  v103 = v0[25];

  return sub_1000B5E78(v115, v25, v101, 2, v103);
}

uint64_t sub_1000BA074()
{
  v27 = v0;
  v1 = v0[40];
  v2 = v0[39];
  v3 = v0[25];
  swift_willThrow();

  static Logger.updates.getter();
  v4 = v3;

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[37];
    v23 = v0[28];
    v24 = v0[27];
    v25 = v0[33];
    v8 = v0[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2082;
    v0[19] = v7;
    v11 = v8;
    sub_100085D40(&unk_10059DCA0);
    sub_1000BB14C(&qword_10059C4C0, &unk_10059DCA0);
    v12 = BidirectionalCollection<>.joined(separator:)();
    v14 = v13;

    v15 = sub_1001AD0D8(v12, v14, &v26);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    v10[1] = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Purchase failed for bundleIDs: %{public}s: %{public}@", v9, 0x20u);
    sub_100085D40(&unk_10059C250);
    swift_arrayDestroy();

    sub_100005A00(v22);

    (*(v23 + 8))(v25, v24);
  }

  else
  {
    v17 = v0[33];
    v18 = v0[27];
    v19 = v0[28];

    (*(v19 + 8))(v17, v18);
  }

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1000BA3A4()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_1000BA4D4, 0, 0);
}

void sub_1000BA4D4()
{
  v112 = v0;

  v105 = *(v0 + 416);
  do
  {
    while (1)
    {
      while (1)
      {
        v1 = *(v0 + 392) + 1;
        if (v1 == *(v0 + 384))
        {
          while (1)
          {
            v2 = *(v0 + 360);

            v3 = [v2 results];
            if (v3)
            {
              v4 = v3;
              sub_10009FAD4(0, &qword_10059C4D0);
              v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            }

            else
            {
              v5 = _swiftEmptyArrayStorage;
            }

            v7 = *(v0 + 360);
            v6 = *(v0 + 368);
            v8 = *(v0 + 352);
            sub_100154C8C(v5);

            if (v6 == v8)
            {
              goto LABEL_44;
            }

            v9 = *(v0 + 368);
            v10 = *(v0 + 344);
            if ((v10 & 0xC000000000000001) != 0)
            {
              v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_57;
              }

              v11 = *(v10 + 8 * v9 + 32);
            }

            *(v0 + 360) = v11;
            *(v0 + 368) = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            v12 = [v11 results];
            if (v12)
            {
              v13 = v12;
              sub_10009FAD4(0, &qword_10059C4D0);
              v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            }

            else
            {
              v14 = _swiftEmptyArrayStorage;
            }

            *(v0 + 376) = v14;
            if (v14 >> 62)
            {
              v15 = _CocoaArrayWrapper.endIndex.getter();
              *(v0 + 384) = v15;
              if (v15)
              {
LABEL_19:
                if (v15 >= 1)
                {
                  v1 = 0;
                  goto LABEL_21;
                }

                goto LABEL_58;
              }
            }

            else
            {
              v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
              *(v0 + 384) = v15;
              if (v15)
              {
                goto LABEL_19;
              }
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_21:
        *(v0 + 392) = v1;
        v16 = *(v0 + 376);
        v17 = (v16 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v16 + 8 * v1 + 32);
        v18 = v17;
        *(v0 + 400) = v17;
        v19 = [v17 bundleID];
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        *(v0 + 408) = v21;
        v22 = [v18 status];
        if (v22 != 1)
        {
          break;
        }

        v39 = *(v0 + 200);
        static Logger.updates.getter();
        v40 = v39;
        v41 = v18;

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = *(v0 + 200);
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *(v0 + 160) = v47;
          *v45 = 138412802;
          *(v45 + 4) = v44;
          *v46 = v44;
          *(v45 + 12) = 2082;
          v48 = v44;
          v49 = sub_1001AD0D8(v109, v21, (v0 + 160));

          *(v45 + 14) = v49;
          *(v45 + 22) = 2114;
          v50 = [v41 error];
          if (v50)
          {
            v50 = _swift_stdlib_bridgeErrorToNSError();
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          v110 = *(v0 + 248);
          v56 = *(v0 + 216);
          v55 = *(v0 + 224);
          *(v45 + 24) = v50;
          v46[1] = v51;
          _os_log_impl(&_mh_execute_header, v42, v43, "[%@ Import failed for bundleID: %{public}s error: %{public}@", v45, 0x20u);
          sub_100085D40(&unk_10059C250);
          swift_arrayDestroy();

          sub_100005A00(v47);

          (*(v55 + 8))(v110, v56);
        }

        else
        {
          v52 = *(v0 + 248);
          v54 = *(v0 + 216);
          v53 = *(v0 + 224);

          (*(v53 + 8))(v52, v54);
        }
      }

      if (!v22)
      {
        break;
      }

      if (v22 == 2)
      {
        v77 = *(v0 + 200);
        static Logger.updates.getter();
        v78 = v77;
        v79 = v18;

        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        v82 = os_log_type_enabled(v80, v81);
        v83 = *(v0 + 256);
        v85 = *(v0 + 216);
        v84 = *(v0 + 224);
        if (v82)
        {
          v108 = *(v0 + 216);
          v86 = v21;
          v87 = *(v0 + 200);
          v104 = *(v0 + 256);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v111 = v90;
          *v88 = 138412802;
          *(v88 + 4) = v87;
          *v89 = v87;
          *(v88 + 12) = 2114;
          v91 = v87;
          v21 = v86;
          v92 = [v79 persistentID];
          *(v88 + 14) = v92;
          v89[1] = v92;
          *(v88 + 22) = 2082;
          v93 = v109;
          *(v88 + 24) = sub_1001AD0D8(v109, v21, &v111);
          _os_log_impl(&_mh_execute_header, v80, v81, "[%@] Import success for job: %{public}@ / %{public}s", v88, 0x20u);
          sub_100085D40(&unk_10059C250);
          swift_arrayDestroy();

          sub_100005A00(v90);

          (*(v84 + 8))(v104, v108);
        }

        else
        {

          (*(v84 + 8))(v83, v85);
          v93 = v109;
        }

        *(v0 + 416) = v105 + 1;
        if (__OFADD__(v105, 1))
        {
LABEL_59:
          __break(1u);
        }

        else if (*(*(v0 + 304) + 16))
        {
          v94 = sub_1000EE808(v93, v21);
          if (v95)
          {
            v96 = *(*(*(v0 + 304) + 56) + 8 * v94);
            *(v0 + 424) = v96;
            v97 = v96;
            v98 = swift_task_alloc();
            *(v0 + 432) = v98;
            *v98 = v0;
            v98[1] = sub_1000BA3A4;
            v99 = *(v0 + 200);

            sub_1000B5E78(v93, v21, v97, 2, v99);
            return;
          }

LABEL_61:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_61;
      }

      v23 = *(v0 + 200);
      static Logger.updates.getter();
      v24 = v18;
      v25 = v23;
      v26 = v24;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.fault.getter();

      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 224);
      v31 = *(v0 + 232);
      v106 = *(v0 + 216);
      if (v29)
      {
        log = v27;
        v32 = *(v0 + 200);
        v33 = swift_slowAlloc();
        v102 = v31;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v111 = v35;
        *v33 = 138412802;
        *(v33 + 4) = v32;
        *v34 = v32;
        *(v33 + 12) = 2050;
        v36 = v32;
        v37 = [v26 status];

        *(v33 + 14) = v37;
        *(v33 + 22) = 2082;
        v38 = sub_1001AD0D8(v109, v21, &v111);

        *(v33 + 24) = v38;
        _os_log_impl(&_mh_execute_header, log, v28, "[%@] Unknown status %{public}ld for bundleID: %{public}s", v33, 0x20u);
        sub_100086A24(v34);

        sub_100005A00(v35);

        (*(v30 + 8))(v102, v106);
      }

      else
      {

        (*(v30 + 8))(v31, v106);
      }
    }

    v57 = *(v0 + 200);
    static Logger.updates.getter();
    v58 = v57;
    v59 = v18;

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 240);
    v65 = *(v0 + 216);
    v64 = *(v0 + 224);
    if (v62)
    {
      loga = v60;
      v66 = v59;
      v67 = *(v0 + 200);
      v107 = *(v0 + 240);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v103 = v65;
      v70 = swift_slowAlloc();
      v111 = v70;
      *v68 = 138412802;
      *(v68 + 4) = v67;
      *v69 = v67;
      *(v68 + 12) = 2114;
      v71 = v67;
      v72 = [v66 persistentID];
      *(v68 + 14) = v72;
      v69[1] = v72;
      *(v68 + 22) = 2082;
      v73 = sub_1001AD0D8(v109, v21, &v111);

      *(v68 + 24) = v73;
      _os_log_impl(&_mh_execute_header, loga, v61, "[%@] Skipped duplicate job: %{public}@ / %{public}s", v68, 0x20u);
      sub_100085D40(&unk_10059C250);
      swift_arrayDestroy();

      sub_100005A00(v70);

      (*(v64 + 8))(v107, v103);
    }

    else
    {

      (*(v64 + 8))(v63, v65);
    }
  }

  while (!__OFADD__(v105++, 1));
  __break(1u);
LABEL_44:
  v75 = *(v0 + 336);

  v76 = *(v0 + 8);

  v76(v105);
}

unint64_t sub_1000BB0B0()
{
  result = qword_10059C4E8;
  if (!qword_10059C4E8)
  {
    sub_10009F7F8(&qword_10059C4E0);
    sub_1000BB14C(&qword_10059C4F0, &qword_10059C4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C4E8);
  }

  return result;
}

uint64_t sub_1000BB14C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009F7F8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BB1A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BB1EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BB2B8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100085D40(&unk_10059DC70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100085D40(&unk_10059DC70);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000BB4C4(int a1, void *aBlock, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = _Block_copy(aBlock);
  v4[3] = _Block_copy(a3);
  sub_1000BBA00();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v8;
  v9 = swift_allocObject();
  v4[5] = v9;
  *(v9 + 16) = v7;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1000BB5F8;

  return (sub_1000BBA54)(v8, sub_1000BBA4C, v9);
}

uint64_t sub_1000BB5F8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1000BB7BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100086B9C;

  return sub_1000BB4C4(v2, v3, v5, v4);
}

uint64_t sub_1000BB87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v12[4] = sub_1000BBF98;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000BB9A4;
  v12[3] = &unk_10050B828;
  v9 = _Block_copy(v12);
  v10 = *(a4 + 16);

  v10(a4, a1, v9);
  _Block_release(v9);

  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

void sub_1000BB9A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v3(a2);
}

unint64_t sub_1000BBA00()
{
  result = qword_10059C500;
  if (!qword_10059C500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10059C500);
  }

  return result;
}

uint64_t sub_1000BBA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000BBA78, 0, 0);
}

uint64_t sub_1000BBA78()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 40) = v8;
    if (v8)
    {
LABEL_3:
      v3 = *(v0 + 16);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return withCheckedThrowingContinuation<A>(isolation:function:_:)();
        }

        v4 = *(v3 + 32);
      }

      v5 = v4;
      *(v0 + 48) = v4;
      *(v0 + 56) = 1;
      v6 = swift_task_alloc();
      *(v0 + 64) = v6;
      *(v6 + 16) = *(v0 + 24);
      *(v6 + 32) = v5;
      v7 = swift_task_alloc();
      *(v0 + 72) = v7;
      *v7 = v0;
      v7[1] = sub_1000BBC18;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)();
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 40) = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000BBC18()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000BBED4;
  }

  else
  {
    v2 = sub_1000BBD4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000BBD4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  if (v1 != v2)
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 16);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v7 = *(v6 + 8 * v5 + 32);
    }

    v8 = v7;
    *(v0 + 48) = v7;
    *(v0 + 56) = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      v9 = swift_task_alloc();
      *(v0 + 64) = v9;
      *(v9 + 16) = *(v0 + 24);
      *(v9 + 32) = v8;
      v10 = swift_task_alloc();
      *(v0 + 72) = v10;
      *v10 = v0;
      v10[1] = sub_1000BBC18;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)();
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000BBED4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BBF38(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v5[2] = a1;
  return v2(v3, sub_1000BBF90, v5);
}

uint64_t sub_1000BBFC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BBFD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001FBB74(a1);
  v6 = sub_1001FBB8C(a1, v5);
  v8 = sub_1001FBBB4(a1, v7);
  v10 = sub_1001FBBDC(a1, v9);
  v12 = sub_1001FBC04(a1, v11);
  if (v12)
  {
    v13 = v12;
    sub_100085D40(&qword_10059C510);
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v14 = 0;
  }

  result = sub_1001FBC2C(a1);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v14;
  *(a2 + 40) = result;
  return result;
}

id sub_1000BC0C8(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *a1;
  v4 = v2;
  sub_1001FBB80(v4, v3);
  sub_1001FBBA0(v4, *(a1 + 8));
  if (*(a1 + 16))
  {
    swift_errorRetain();
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  sub_1001FBBC8(v4, v5);

  sub_1001FBBF0(v4, *(a1 + 24));
  if (*(a1 + 32))
  {

    sub_100085D40(&qword_10059C510);
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  sub_1001FBC18(v4, v6.super.isa);

  sub_1001FBC44(v4, *(a1 + 40));
  return v4;
}

__n128 sub_1000BC1E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000BC1FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_1000BC258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}