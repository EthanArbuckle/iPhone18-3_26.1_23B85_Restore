uint64_t sub_10020E930(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10020E978()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10020EE00;

  return sub_10020D580(v2, v3, v4, v5, v6);
}

uint64_t sub_10020EA40()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10020EE04;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_10020EB00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10020EB40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10020EC0C;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_10020EC0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_10020ED14(void *a1, uint64_t a2)
{
  v5 = *(sub_1001AD17C(&qword_100373860, &qword_10029E7D0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10020C7E0(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10020EDE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10020EE0C()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 authKitAccountWithAltDSID:v2];

  if (v3)
  {
    sub_10020EF90(v3);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_100377698);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Ineligible to share account - No authkit account for altDSID", v7, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_10020EF90(uint64_t a1)
{
  if ([*(v1 + 16) securityLevelForAccount:a1] != 4)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1001AD2E4(v6, qword_100377698);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Ineligible to share account - Account is not HSA2", v9, 2u);
    }

    goto LABEL_17;
  }

  if (![*(v1 + 24) isUserVisibleKeychainSyncEnabled])
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_100377698);
    v7 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, v11, "Ineligible to share account - User visible keychain is not enabled", v12, 2u);
    }

LABEL_17:

    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return 1;
  }

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Eligible to perform account sharing", v5, 2u);
  }

  return 1;
}

uint64_t sub_10020F26C()
{

  return swift_deallocClassInstance();
}

id sub_10020F2E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v26[0] = 0;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for PrivateEmailRegistrationRequestProvider();
  v4 = objc_msgSendSuper2(&v25, "validateResponseData:error:", isa, v26);

  if (v4)
  {
    return v26[0];
  }

  v6 = v26[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v7 = _convertErrorToNSError(_:)();
  if ([v7 code] != -7010)
  {
    goto LABEL_17;
  }

  v8 = [v7 userInfo];
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v9 + 16))
  {

    goto LABEL_16;
  }

  v12 = sub_10023A350(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_1000087A8(*(v9 + 56) + 32 * v12, v26);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v15 = AKPrivateEmailErrorDomain;
    v21 = [v7 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = objc_allocWithZone(NSError);
    v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = v22;
    v19 = v15;
    v20 = -11010;
    goto LABEL_18;
  }

  v15 = AKPrivateEmailErrorDomain;
  v16 = [v7 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = objc_allocWithZone(NSError);
  v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (v24 > -41002)
  {
    switch(v24)
    {
      case -9008:
        v18 = v23;
        v19 = v15;
        v20 = -11012;
        goto LABEL_18;
      case -24000:
        v18 = v23;
        v19 = v15;
        v20 = -11011;
        goto LABEL_18;
      case -41001:
        v18 = v23;
        v19 = v15;
        v20 = -11008;
        goto LABEL_18;
    }

LABEL_26:
    v18 = v23;
    v19 = v15;
    v20 = -11009;
    goto LABEL_18;
  }

  if (v24 == -41015)
  {
    v18 = v23;
    v19 = v15;
    v20 = -11002;
    goto LABEL_18;
  }

  if (v24 == -41012)
  {
    v18 = v23;
    v19 = v15;
    v20 = -11003;
    goto LABEL_18;
  }

  if (v24 != -41005)
  {
    goto LABEL_26;
  }

  v18 = v23;
  v19 = v15;
  v20 = -11006;
LABEL_18:
  [v18 initWithDomain:v19 code:v20 userInfo:v17.super.isa];

  swift_willThrow();
}

id sub_10020FA90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivateEmailRegistrationRequestProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10020FAEC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10020FB98()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 104));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10020FC40()
{
  sub_10020FB98();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10020FC84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10020FCCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10020FD14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10020FE10()
{
  v1 = v0;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching last saved group memership info", v5, 2u);
  }

  v6 = *(v1 + 24);
  v7 = sub_1001C6E84();
  v8 = [v6 keychainItemFor:v7];

  if (v8)
  {
    return sub_1001C6F74(v8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020FF64()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching current group memership info", v4, 2u);
  }

  v5 = v0[19];

  v6 = *(v5 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10021013C;
  v7 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100373C18, &unk_10029EA60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002102D4;
  v0[13] = &unk_100328780;
  v0[14] = v7;
  [v6 fetchGroupParticipantsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021013C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_100210268;
  }

  else
  {
    v3 = sub_10021024C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100210268()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_1002102D4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1001B1078((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

void sub_1002103AC(void *a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1001AD2E4(v6, qword_100377698);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Saving shared group membership info", v9, 2u);
  }

  v10 = *(v4 + 24);
  v11 = sub_1001C6E84();
  v19 = 0;
  v12 = [v10 deleteKeychainItemsFor:v11 error:&v19];

  if (v12)
  {
    v13 = v19;
  }

  else
  {
    v14 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v3 = 0;
  }

  sub_1001B81FC();
  v15 = sub_1001C6B84(a1);
  if (!v3)
  {
    v16 = v15;
    v19 = 0;
    if ([v10 addWithItem:v15 error:&v19])
    {
      v17 = v19;
    }

    else
    {
      v18 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1002105B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_100210794()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1002107F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100210818, 0, 0);
}

uint64_t sub_100210818()
{
  v57 = v0;
  if (qword_100371BD8 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    sub_1001AD2E4(v1, qword_100377698);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Computing groups with departed participants", v4, 2u);
    }

    v5 = *(v0 + 16);

    if (!v5)
    {
      break;
    }

    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    type metadata accessor for SharedGroupsMembershipInfo();
    v8 = v6;
    if (static NSObject.== infix(_:_:)())
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "There are no group membership changes.", v11, 2u);
      }

      goto LABEL_35;
    }

    v50 = v8;
    v51 = v0;
    v53 = *(v0 + 24);
    v15 = *&v8[OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants];

    v17 = sub_10022C268(v16);
    v18 = 0;
    v19 = v17 + 56;
    v55 = v17;
    v20 = -1;
    v21 = -1 << *(v17 + 32);
    if (-v21 < 64)
    {
      v20 = ~(-1 << -v21);
    }

    v0 = v20 & *(v17 + 56);
    v52 = OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants;
    v22 = (63 - v21) >> 6;
    v54 = v15;
    while (v0)
    {
LABEL_21:
      v24 = __clz(__rbit64(v0));
      v0 &= v0 - 1;
      v25 = (*(v55 + 48) + ((v18 << 10) | (16 * v24)));
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v15 + 16);

      if (v28 && (v29 = sub_10023A350(v26, v27), (v30 & 1) != 0) && (v31 = *(v53 + v52), *(v31 + 16)))
      {
        v32 = *(*(v15 + 56) + 8 * v29);

        v33 = sub_10023A350(v26, v27);
        if ((v34 & 1) == 0)
        {

          goto LABEL_28;
        }

        v35 = *(*(v31 + 56) + 8 * v33);

        v37 = sub_1002105B8(v36, v32);

        if (v37)
        {
        }

        else
        {

          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            log = v43;
            v46 = swift_slowAlloc();
            v56 = v46;
            *v45 = 136315138;
            *(v45 + 4) = sub_10024B050(v26, v27, &v56);
            _os_log_impl(&_mh_execute_header, log, v44, "Group (%s) has departed participants", v45, 0xCu);
            sub_1001AD48C(v46);
          }

          else
          {
          }

          sub_100232370(&v56, v26, v27);
        }
      }

      else
      {
LABEL_28:

        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v56 = v41;
          *v40 = 136315138;
          v42 = sub_10024B050(v26, v27, &v56);

          *(v40 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v38, v39, "Group (%s) mismatch. Potentially the group was exited. Skipping.", v40, 0xCu);
          sub_1001AD48C(v41);
          v15 = v54;
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v23 >= v22)
      {

        v0 = v51;
        goto LABEL_35;
      }

      v0 = *(v19 + 8 * v23);
      ++v18;
      if (v0)
      {
        v18 = v23;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "There was no previously saved SharedGroupsMembershipInfo.", v14, 2u);
  }

LABEL_35:
  v47 = *(v0 + 8);

  return v47(&_swiftEmptySetSingleton);
}

uint64_t sub_100210DE4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_100210E08, v2, 0);
}

uint64_t sub_100210E08()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  sub_100224C74(v3, v4);
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_100210F20;
  v7 = *(v0 + 72);

  return v9(v0 + 32, v0 + 16);
}

uint64_t sub_100210F20()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_100211124;
  }

  else
  {
    v6 = sub_10021104C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10021104C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v1 + 112);
  v4 = *(v0 + 24);
  v5 = *(v1 + 120);
  sub_100224C74(v2, v4);
  *(v1 + 112) = v2;
  *(v1 + 120) = v4;
  sub_100224C24(v3, v5);
  v6 = *(v1 + 128);
  *(v0 + 48) = v2;
  *(v0 + 56) = v4;
  sub_100224C74(v2, v4);
  CurrentValueSubject.value.setter();
  sub_100224C24(v2, v4);
  v7 = *(v0 + 32);
  v8 = *(v0 + 8);
  v9 = *(v0 + 40);

  return v8(v7, v9);
}

uint64_t sub_100211124()
{
  sub_100224C24(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_10021118C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_1002111B0, v2, 0);
}

uint64_t sub_1002111B0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  sub_100222770(v3, v4);
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1002112C8;
  v7 = *(v0 + 72);

  return v9(v0 + 32, v0 + 16);
}

uint64_t sub_1002112C8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1002114CC;
  }

  else
  {
    v6 = sub_1002113F4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002113F4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v1 + 112);
  v4 = *(v0 + 24);
  v5 = *(v1 + 120);
  sub_100222770(v2, v4);
  *(v1 + 112) = v2;
  *(v1 + 120) = v4;
  sub_1002225C4(v3, v5);
  v6 = *(v1 + 128);
  *(v0 + 48) = v2;
  *(v0 + 56) = v4;
  sub_100222770(v2, v4);
  CurrentValueSubject.value.setter();
  sub_1002225C4(v2, v4);
  v7 = *(v0 + 32);
  v8 = *(v0 + 8);
  v9 = *(v0 + 40);

  return v8(v7, v9);
}

uint64_t sub_1002114CC()
{
  sub_1002225C4(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_100211534(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_100211558, v2, 0);
}

uint64_t sub_100211558()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  sub_100018180(v3, v4);
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_100211670;
  v7 = *(v0 + 72);

  return v9(v0 + 32, v0 + 16);
}

uint64_t sub_100211670()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_100225B70;
  }

  else
  {
    v6 = sub_100225B88;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10021179C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_1002117C0, v2, 0);
}

uint64_t sub_1002117C0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  sub_100018180(v3, v4);
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1002118D8;
  v7 = *(v0 + 72);

  return v9(v0 + 32, v0 + 16);
}

uint64_t sub_1002118D8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_100211ADC;
  }

  else
  {
    v6 = sub_100211A04;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100211A04()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v1 + 112);
  v4 = *(v0 + 24);
  v5 = *(v1 + 120);
  sub_100018180(v2, v4);
  *(v1 + 112) = v2;
  *(v1 + 120) = v4;
  sub_100018150(v3, v5);
  v6 = *(v1 + 128);
  *(v0 + 48) = v2;
  *(v0 + 56) = v4;
  sub_100018180(v2, v4);
  CurrentValueSubject.value.setter();
  sub_100018150(v2, v4);
  v7 = *(v0 + 32);
  v8 = *(v0 + 8);
  v9 = *(v0 + 40);

  return v8(v7, v9);
}

uint64_t sub_100211ADC()
{
  sub_100018150(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_100211B44(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_100211B68, v2, 0);
}

uint64_t sub_100211B68()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  sub_10022307C(v3, v4);
  v9 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_100211C80;
  v7 = *(v0 + 72);

  return v9(v0 + 32, v0 + 16);
}

uint64_t sub_100211C80()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_100211E84;
  }

  else
  {
    v6 = sub_100211DAC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100211DAC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v1 + 112);
  v4 = *(v0 + 24);
  v5 = *(v1 + 120);
  sub_10022307C(v2, v4);
  *(v1 + 112) = v2;
  *(v1 + 120) = v4;
  sub_100222E9C(v3, v5);
  v6 = *(v1 + 128);
  *(v0 + 48) = v2;
  *(v0 + 56) = v4;
  sub_10022307C(v2, v4);
  CurrentValueSubject.value.setter();
  sub_100222E9C(v2, v4);
  v7 = *(v0 + 32);
  v8 = *(v0 + 8);
  v9 = *(v0 + 40);

  return v8(v7, v9);
}

uint64_t sub_100211E84()
{
  sub_100222E9C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_100211F0C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  *(v0 + 40) = v2;
  v3 = *(v1 + 120);
  *(v0 + 25) = v3;
  sub_100224C74(v2, v3);

  return _swift_task_switch(sub_100211F84, v1, 0);
}

uint64_t sub_100211F84()
{
  v1 = *(v0 + 32);
  if (*(v0 + 25) == 255)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  sub_100224C74(v2, 255);
  *(v1 + 112) = v2;
  *(v1 + 120) = -1;
  sub_100224C24(v3, v4);
  v5 = *(v1 + 128);
  *(v0 + 16) = v2;
  *(v0 + 24) = -1;
  sub_100224C74(v2, 255);
  CurrentValueSubject.value.setter();
  sub_100224C24(v2, 255);
  v6 = *(v0 + 8);
  v7 = *(v0 + 40);
  v8 = *(v0 + 25);

  return v6(v7, v8);
}

uint64_t sub_100212080()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  *(v0 + 40) = v2;
  v3 = *(v1 + 120);
  *(v0 + 25) = v3;
  sub_100222770(v2, v3);

  return _swift_task_switch(sub_1002120F8, v1, 0);
}

uint64_t sub_1002120F8()
{
  v1 = *(v0 + 32);
  if (*(v0 + 25) == 255)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  sub_100222770(v2, 255);
  *(v1 + 112) = v2;
  *(v1 + 120) = -1;
  sub_1002225C4(v3, v4);
  v5 = *(v1 + 128);
  *(v0 + 16) = v2;
  *(v0 + 24) = -1;
  sub_100222770(v2, 255);
  CurrentValueSubject.value.setter();
  sub_1002225C4(v2, 255);
  v6 = *(v0 + 8);
  v7 = *(v0 + 40);
  v8 = *(v0 + 25);

  return v6(v7, v8);
}

uint64_t sub_1002121F4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  *(v0 + 40) = v2;
  v3 = *(v1 + 120);
  *(v0 + 25) = v3;
  sub_100018180(v2, v3);

  return _swift_task_switch(sub_100225B84, v1, 0);
}

uint64_t sub_10021228C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  *(v0 + 40) = v2;
  v3 = *(v1 + 120);
  *(v0 + 25) = v3;
  sub_100018180(v2, v3);

  return _swift_task_switch(sub_100212304, v1, 0);
}

uint64_t sub_100212304()
{
  v1 = *(v0 + 32);
  if (*(v0 + 25) == 255)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  sub_100018180(v2, 255);
  *(v1 + 112) = v2;
  *(v1 + 120) = -1;
  sub_100018150(v3, v4);
  v5 = *(v1 + 128);
  *(v0 + 16) = v2;
  *(v0 + 24) = -1;
  sub_100018180(v2, 255);
  CurrentValueSubject.value.setter();
  sub_100018150(v2, 255);
  v6 = *(v0 + 8);
  v7 = *(v0 + 40);
  v8 = *(v0 + 25);

  return v6(v7, v8);
}

uint64_t sub_100212400()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  *(v0 + 40) = v2;
  v3 = *(v1 + 120);
  *(v0 + 25) = v3;
  sub_10022307C(v2, v3);

  return _swift_task_switch(sub_100212478, v1, 0);
}

uint64_t sub_100212478()
{
  v1 = *(v0 + 32);
  if (*(v0 + 25) == 255)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  sub_10022307C(v2, 255);
  *(v1 + 112) = v2;
  *(v1 + 120) = -1;
  sub_100222E9C(v3, v4);
  v5 = *(v1 + 128);
  *(v0 + 16) = v2;
  *(v0 + 24) = -1;
  sub_10022307C(v2, 255);
  CurrentValueSubject.value.setter();
  sub_100222E9C(v2, 255);
  v6 = *(v0 + 8);
  v7 = *(v0 + 40);
  v8 = *(v0 + 25);

  return v6(v7, v8);
}

uint64_t sub_100212554(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1001AD17C(&qword_100373EA0, &qword_10029ED20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_1001AD17C(&qword_100373F60, &qword_10029F010);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v23 = *(a2 + 128);
  sub_1001AD17C(&qword_100373F68, &qword_10029F018);
  sub_100224D9C(&qword_100373F70, &qword_100373F68, &qword_10029F018);
  Publisher.dropFirst(_:)();
  (*(v4 + 16))(v7, v20, v3);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v4 + 32))(v15 + v14, v7, v3);
  sub_100224D9C(&unk_100373F78, &qword_100373F60, &qword_10029F010);

  v16 = v21;
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v12, v16);
  swift_beginAccess();
  v18 = *(v13 + 16);
  *(v13 + 16) = v17;
}

uint64_t sub_100212848(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1001AD17C(&qword_100373EA0, &qword_10029ED20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_1001AD17C(&qword_100373EA8, &qword_10029ED28);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v23 = *(a2 + 128);
  sub_1001AD17C(&qword_100373E88, &qword_10029ECF8);
  sub_100224D9C(&qword_100373EB0, &qword_100373E88, &qword_10029ECF8);
  Publisher.dropFirst(_:)();
  (*(v4 + 16))(v7, v20, v3);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v4 + 32))(v15 + v14, v7, v3);
  sub_100224D9C(&qword_100373EB8, &qword_100373EA8, &qword_10029ED28);

  v16 = v21;
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v12, v16);
  swift_beginAccess();
  v18 = *(v13 + 16);
  *(v13 + 16) = v17;
}

uint64_t sub_100212B3C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1001AD17C(&qword_100373EA0, &qword_10029ED20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_1001AD17C(&qword_100373F38, &qword_10029EF70);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v23 = *(a2 + 128);
  sub_1001AD17C(&qword_100373F30, &qword_10029EF50);
  sub_100224D9C(&qword_100373F40, &qword_100373F30, &qword_10029EF50);
  Publisher.dropFirst(_:)();
  (*(v4 + 16))(v7, v20, v3);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v4 + 32))(v15 + v14, v7, v3);
  sub_100224D9C(&qword_100373F48, &qword_100373F38, &qword_10029EF70);

  v16 = v21;
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v12, v16);
  swift_beginAccess();
  v18 = *(v13 + 16);
  *(v13 + 16) = v17;
}

uint64_t sub_100212E30(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1001AD17C(&qword_100373EA0, &qword_10029ED20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_1001AD17C(&qword_100373F08, &qword_10029EEA8);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v23 = *(a2 + 128);
  sub_1001AD17C(&qword_100373F00, &qword_10029EE88);
  sub_100224D9C(&qword_100373F10, &qword_100373F00, &qword_10029EE88);
  Publisher.dropFirst(_:)();
  (*(v4 + 16))(v7, v20, v3);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v4 + 32))(v15 + v14, v7, v3);
  sub_100224D9C(&qword_100373F18, &qword_100373F08, &qword_10029EEA8);

  v16 = v21;
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v12, v16);
  swift_beginAccess();
  v18 = *(v13 + 16);
  *(v13 + 16) = v17;
}

uint64_t sub_100213124(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1001AD17C(&qword_100373EA0, &qword_10029ED20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_1001AD17C(&qword_100373ED8, &qword_10029EDE0);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v23 = *(a2 + 128);
  sub_1001AD17C(&qword_100373ED0, &qword_10029EDC0);
  sub_100224D9C(&qword_100373EE0, &qword_100373ED0, &qword_10029EDC0);
  Publisher.dropFirst(_:)();
  (*(v4 + 16))(v7, v20, v3);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v4 + 32))(v15 + v14, v7, v3);
  sub_100224D9C(&unk_100373EE8, &qword_100373ED8, &qword_10029EDE0);

  v16 = v21;
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v12, v16);
  swift_beginAccess();
  v18 = *(v13 + 16);
  *(v13 + 16) = v17;
}

uint64_t sub_100213418()
{
  result = AXAssistiveAccessEnabled();
  static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization = result;
  return result;
}

char *RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization.unsafeMutableAddressor()
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  return &static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization;
}

uint64_t static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization.getter()
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization;
}

uint64_t static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization.setter(char a1)
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization = a1 & 1;
  return result;
}

uint64_t (*static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization.modify())()
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id RemoteViewServiceController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AKRemoteViewServiceController_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id RemoteViewServiceController.init(configuration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AKRemoteViewServiceController_configuration] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteViewServiceController();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_10021383C()
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization == 1)
  {
    v1 = swift_task_alloc();
    v0[6] = v1;
    *v1 = v0;
    v1[1] = sub_10021398C;
    v2 = v0[5];

    return sub_1002148AC();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_100213A8C;
    v5 = v0[5];

    return sub_100215D8C();
  }
}

uint64_t sub_10021398C(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100213A8C(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100213D00(const void *a1, void *a2)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100213D78, 0, 0);
}

uint64_t sub_100213D78()
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization == 1)
  {
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_100213EC8;
    v2 = v0[11];

    return sub_1002148AC();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_100213FE4;
    v5 = v0[11];

    return sub_100215D8C();
  }
}

uint64_t sub_100213EC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[13];
  v8 = *v2;
  v4[14] = v1;

  if (v1)
  {
    v6 = sub_10021418C;
  }

  else
  {
    v6 = sub_100214100;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100213FE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[15];
  v8 = *v2;
  v4[16] = v1;

  if (v1)
  {
    v6 = sub_1002142BC;
  }

  else
  {
    v6 = sub_100214230;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100214100()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);

  v2[2](v2, v1, 0);
  _Block_release(v2);
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10021418C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  v3 = _convertErrorToNSError(_:)();

  (v2)[2](v2, 0, v3);

  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100214230()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 96);

  v2[2](v2, v1, 0);
  _Block_release(v2);
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002142BC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  v3 = _convertErrorToNSError(_:)();

  (v2)[2](v2, 0, v3);

  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t RemoteViewServiceController.launchViewService()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002143EC;

  return sub_100215D8C();
}

uint64_t sub_1002143EC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_100214660(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100214708;

  return sub_100215D8C();
}

uint64_t sub_100214708(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    v9[2](v9, a1, 0);
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1002148AC()
{
  *(v1 + 312) = v0;

  return _swift_task_switch(sub_10021493C, 0, 0);
}

uint64_t sub_10021493C()
{
  v38 = v0;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[40] = sub_1001AD2E4(v1, static Logger.akd);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Launching view service", v4, 2u);
  }

  v5 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v0[41] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v0[39];
    v0[36] = 0;
    v8 = *(v7 + OBJC_IVAR___AKRemoteViewServiceController_configuration);
    v0[42] = v8;
    v9 = [v8 remoteBundleID];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    v10 = [v6 canOpenApplication:v9 reason:v0 + 36];

    if (v10)
    {
      v11 = [v8 hostSceneID];
      if (v11)
      {
        v12 = v11;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v0[43] = v14;
      v25 = swift_task_alloc();
      v0[44] = v25;
      *v25 = v0;
      v25[1] = sub_100214DFC;
      v26 = v0[39];

      return sub_100221C30();
    }

    v19 = v0[36];
    v20 = FBSOpenApplicationErrorCodeToString();
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136315138;
      v0[34] = v22;
      v0[35] = v24;
      sub_1001AD17C(&qword_100373FA0, &qword_10029F090);
      v32 = String.init<A>(describing:)();
      v34 = sub_10024B050(v32, v33, &v37);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Cannot launch view service with error: %s", v30, 0xCu);
      sub_1001AD48C(v31);
    }

    else
    {
    }

    sub_100222380();
    swift_allocError();
    *v35 = 3;
    swift_willThrow();
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Cannot launch view service with nil launch service", v17, 2u);
    }

    sub_100222380();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_100214DFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v8 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  if (v1)
  {
    v5 = sub_100215424;
  }

  else
  {
    v6 = v3[43];

    v5 = sub_100214F4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100214F4C()
{
  v1 = v0[42];
  type metadata accessor for RemoteViewSession();
  swift_allocObject();
  v2 = v1;
  sub_100222060(v2);
  v4 = v3;
  v0[47] = v3;

  sub_100216EFC(0x8AC7230489E80000, 0);
  v5 = *(v4 + 32);
  if (!v5)
  {
    __break(1u);
  }

  v6 = v0[45];
  v7 = v0[40];
  v8 = [v5 listenerEndpoint];
  v9 = [objc_allocWithZone(BSMutableSettings) init];
  [v9 setObject:objc_msgSend(v8 forSetting:{"_endpoint"), 1}];
  swift_unknownObjectRelease();
  v10 = [objc_allocWithZone(BSAction) initWithInfo:v9 responder:0];
  v0[48] = v10;

  sub_1001AD17C(&qword_100373FA8, &unk_10029F0A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10029E6F0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  sub_1001AD17C(&qword_100373FB0, qword_10029FA60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10029EA80;
  *(v13 + 32) = v10;
  *(v13 + 40) = v6;
  *(inited + 72) = sub_1001AD17C(&unk_100373FB8, &unk_10029F0B0);
  *(inited + 48) = v13;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v14;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  v15 = v10;
  v16 = v6;
  v17 = sub_100012190(inited);
  swift_setDeallocating();
  sub_1001AD17C(&unk_100372FD0, &qword_10029F6F0);
  swift_arrayDestroy();
  sub_1001CCD28(v17);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [objc_opt_self() optionsWithDictionary:isa];
  v0[49] = v19;

  v20 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Attempting to open UI view service with options: %@", v23, 0xCu);
    sub_1002255FC(v24, &unk_1003726A0, &unk_10029CFA0);
  }

  v26 = v0[42];

  v27 = [v26 remoteBundleID];
  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
  }

  v0[50] = v27;
  v28 = v0[41];
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_1002154C0;
  v29 = swift_continuation_init();
  v0[33] = sub_1001AD17C(&qword_100373FC8, &qword_10029F0C0);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100215CB4;
  v0[29] = &unk_100328FC0;
  v0[30] = v29;
  [v28 openApplication:v27 withOptions:v20 completion:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100215424()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 368);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002154C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_100215B18;
  }

  else
  {
    v3 = sub_1002155FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002155FC()
{
  v1 = v0[50];
  v2 = v0[40];
  v3 = v0[37];
  v0[52] = v3;

  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Opened UI view service with handle: %@", v7, 0xCu);
    sub_1002255FC(v8, &unk_1003726A0, &unk_10029CFA0);
  }

  v10 = v0[47];
  v11 = *(v10 + 48);
  *(v10 + 48) = v4;
  v12 = v4;

  v13 = swift_task_alloc();
  v0[53] = v13;
  *v13 = v0;
  v13[1] = sub_1002157B4;
  v14 = v0[47];

  return sub_100217E44();
}

uint64_t sub_1002157B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v7 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v5 = sub_100215BEC;
  }

  else
  {
    v5 = sub_1002158F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002158F4()
{
  v26 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 320);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 432);
    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    v23 = *(v0 + 376);
    v24 = *(v0 + 416);
    v8 = *(v0 + 360);
    v22 = *(v0 + 328);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    *(v0 + 304) = v5;
    swift_unknownObjectRetain();
    sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
    v11 = String.init<A>(describing:)();
    v13 = sub_10024B050(v11, v12, &v25);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished waiting for activation of view service: %s", v9, 0xCu);
    sub_1001AD48C(v10);
  }

  else
  {
    v14 = *(v0 + 416);
    v15 = *(v0 + 392);
    v16 = *(v0 + 376);
    v17 = *(v0 + 360);
    v18 = *(v0 + 328);
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 432);

  return v19(v20);
}

uint64_t sub_100215B18()
{
  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];
  v6 = v0[45];
  v7 = v0[41];
  swift_willThrow();

  v8 = v0[51];
  v9 = v0[1];

  return v9();
}

uint64_t sub_100215BEC()
{
  v1 = *(v0 + 416);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);

  v6 = *(v0 + 440);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100215CB4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1001B1078((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_100215DAC()
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = sub_1001AD2E4(v1, static Logger.akd);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Launching view service", v4, 2u);
  }

  v5 = v0[24];

  v6 = *(v5 + OBJC_IVAR___AKRemoteViewServiceController_configuration);
  v7 = [v6 remoteClassName];
  v8 = [v6 remoteBundleID];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    v10 = [objc_allocWithZone(SBSRemoteAlertDefinition) initWithServiceName:v9 viewControllerClassName:v7];
  }

  else
  {
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    v11 = [objc_opt_self() identityForAngelJobLabel:v9];

    v10 = [objc_allocWithZone(SBSRemoteAlertDefinition) initWithSceneProvidingProcess:v11 configurationIdentifier:0];
    v9 = v11;
  }

  v0[26] = v10;
  type metadata accessor for RemoteViewSession();
  swift_allocObject();
  v12 = v6;
  sub_100222060(v12);
  v0[27] = v13;

  v14 = [v12 hostSceneID];
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v0[28] = v17;
  v18 = swift_task_alloc();
  v0[29] = v18;
  *v18 = v0;
  v18[1] = sub_100216078;
  v19 = v0[24];

  return sub_100221C30();
}

uint64_t sub_100216078(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v5 = *(*v2 + 224);
  v8 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v6 = sub_1002166B0;
  }

  else
  {
    v6 = sub_1002161AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

void *sub_1002161AC()
{
  result = *(v0[27] + 32);
  if (result)
  {
    v2 = v0[25];
    v3 = [result listenerEndpoint];
    v4 = [objc_allocWithZone(BSMutableSettings) init];
    [v4 setObject:objc_msgSend(v3 forSetting:{"_endpoint"), 1}];
    swift_unknownObjectRelease();
    v5 = [objc_allocWithZone(BSAction) initWithInfo:v4 responder:0];
    v0[32] = v5;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Attempting to open UI view service", v8, 2u);
    }

    v9 = v0[30];
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];

    v13 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    v0[33] = v13;
    v14 = [objc_opt_self() newHandleWithDefinition:v11 configurationContext:v13];
    v0[34] = v14;
    v15 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    v0[35] = v15;
    sub_1001AD17C(&qword_100373FB0, qword_10029FA60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10029EA80;
    *(inited + 32) = v5;
    *(inited + 40) = v9;
    v17 = v5;
    v18 = v9;
    sub_1001DE690(inited);
    swift_setDeallocating();
    v19 = *(inited + 16);
    swift_arrayDestroy();
    sub_100225568();
    sub_1002255B4(&qword_100373FE8, sub_100225568);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v15 setActions:isa];

    sub_1001AD17C(&unk_100373FF0, &qword_10029E208);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_10029BEB0;
    v0[21] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0[22] = v22;
    AnyHashable.init<A>(_:)();
    *(v21 + 96) = &type metadata for Bool;
    *(v21 + 72) = 1;
    sub_10023A660(v21);
    swift_setDeallocating();
    sub_1002255FC(v21 + 32, &qword_100373320, qword_10029E210);
    v23 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 setUserInfo:v23];

    sub_100216EFC(0x8AC7230489E80000, 0);
    [v14 activateWithContext:v15];
    v24 = v14;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "Opened UI view service with handle: %@", v27, 0xCu);
      sub_1002255FC(v28, &unk_1003726A0, &unk_10029CFA0);
    }

    v30 = v0[27];
    v31 = *(v30 + 56);
    *(v30 + 56) = v24;
    v32 = v24;

    v33 = swift_task_alloc();
    v0[36] = v33;
    *v33 = v0;
    v33[1] = sub_100216718;
    v34 = v0[27];

    return sub_100217E44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002166B0()
{
  v2 = v0[26];
  v1 = v0[27];

  v3 = v0[31];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100216718(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v7 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v5 = sub_100216A2C;
  }

  else
  {
    v5 = sub_10021682C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10021682C()
{
  v28 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 200);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 296);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v23 = *(v0 + 240);
    v24 = *(v0 + 280);
    v8 = *(v0 + 208);
    v25 = *(v0 + 216);
    v26 = *(v0 + 272);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    *(v0 + 184) = v5;
    swift_unknownObjectRetain();
    sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
    v11 = String.init<A>(describing:)();
    v13 = sub_10024B050(v11, v12, &v27);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished waiting for activation of view service: %s", v9, 0xCu);
    sub_1001AD48C(v10);
  }

  else
  {
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 240);
    v19 = *(v0 + 216);
  }

  v20 = *(v0 + 8);
  v21 = *(v0 + 296);

  return v20(v21);
}

uint64_t sub_100216A2C()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);

  v7 = *(v0 + 304);
  v8 = *(v0 + 8);

  return v8();
}

id RemoteViewServiceController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteViewServiceController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteViewServiceController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100216BF0()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100216C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100225514();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100216CA0()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100216D00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100222208(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100216D40(uint64_t a1)
{
  v2 = sub_100225514();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_100216D7C(uint64_t a1)
{
  v2 = sub_100225514();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_100216DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100225514();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

Swift::Int sub_100216E44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100216EB8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_100216EFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1001AD2E4(v10, static Logger.akd);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting to wait for activation of view session", v13, 2u);
  }

  result = *(v3 + 32);
  if (result)
  {
    [result activate];
    if (*(v3 + 40))
    {
      v15 = *(v3 + 40);

      Task.cancel()();
    }

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a1;
    v17[5] = a2;
    v17[6] = v3;

    v18 = sub_100248D54(0, 0, v9, &unk_10029F028, v17);
    v19 = *(v3 + 40);
    *(v3 + 40) = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100217134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = type metadata accessor for CancellationError();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_100217254, 0, 0);
}

uint64_t sub_100217254()
{
  v18 = v0;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_1001AD2E4(v1, static Logger.akd);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = Duration.description.getter();
    v10 = sub_10024B050(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Beginning watchdog sleep for duration: %s", v6, 0xCu);
    sub_1001AD48C(v7);
  }

  v11 = v0[15];
  static Clock<>.continuous.getter();
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_100217444;
  v13 = v0[15];
  v15 = v0[7];
  v14 = v0[8];

  return sub_1002209F8(v15, v14, 0, 0, 1);
}

uint64_t sub_100217444()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1002176C8;
  }

  else
  {
    v6 = sub_1002175B4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002175B4()
{
  v1 = *(v0 + 128);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Watchdog expired and sending expiration failure", v4, 2u);
  }

  v5 = *(v0 + 72);

  v6 = *(v5 + 16);
  *(v0 + 152) = v6;
  sub_100224A40();
  v7 = swift_allocError();
  *(v0 + 160) = v7;
  *v8 = 1;
  *(v0 + 32) = v7;
  *(v0 + 40) = 1;

  return _swift_task_switch(sub_100217974, v6, 0);
}

uint64_t sub_1002176C8()
{
  *(v0 + 48) = *(v0 + 144);
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  swift_errorRetain();
  sub_1001AD17C(&qword_100373250, qword_10029D0B0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  if (v3)
  {
    v6 = *(v0 + 144);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Watchdog was cancelled", v9, 2u);
    }

    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v12 = *(v0 + 80);

    (*(v11 + 8))(v10, v12);
    v13 = *(v0 + 48);

    v14 = *(v0 + 120);
    v15 = *(v0 + 96);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 48);

    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 144);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to sleep watchdog with error: %@", v22, 0xCu);
      sub_1002255FC(v23, &unk_1003726A0, &unk_10029CFA0);
    }

    v25 = *(v0 + 144);
    v26 = *(v0 + 72);

    v27 = *(v26 + 16);
    *(v0 + 184) = v27;
    *(v0 + 16) = v25;
    *(v0 + 24) = 1;
    swift_errorRetain();

    return _swift_task_switch(sub_100217BA4, v27, 0);
  }
}

uint64_t sub_100217974()
{
  v1 = swift_task_alloc();
  v0[21] = v1;
  *(v1 + 16) = v0 + 4;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_100217A34;
  v3 = v0[19];

  return sub_100210DE4(&unk_10029F048, v1);
}

uint64_t sub_100217A34(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 176);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v11 = v6[20];
    v10 = v6[21];
    sub_100224C24(a1, a2);

    v12 = v6[15];
    v13 = v6[12];

    v14 = *(v8 + 8);

    return v14();
  }
}

uint64_t sub_100217BA4()
{
  v1 = swift_task_alloc();
  v0[24] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_100217C64;
  v3 = v0[23];

  return sub_100210DE4(&unk_10029F038, v1);
}

uint64_t sub_100217C64(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 200);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v10 = *(v6 + 192);
    v11 = *(v6 + 144);
    sub_100224C24(a1, a2);

    return _swift_task_switch(sub_100217DD0, 0, 0);
  }
}

uint64_t sub_100217DD0()
{
  v1 = v0[18];

  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100217E64()
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[10] = sub_1001AD2E4(v1, static Logger.akd);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for activation of view service", v4, 2u);
  }

  v5 = v0[9];

  v0[11] = *(v5 + 24);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100217FBC;

  return sub_100211EEC();
}

uint64_t sub_100217FBC(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  v5 = *(v3 + 96);
  v7 = *v2;
  *(v4 + 120) = a2;

  return _swift_task_switch(sub_1002180C4, 0, 0);
}

uint64_t sub_1002180C4()
{
  v1 = *(v0 + 120);
  if (v1 == 255)
  {
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_100218248;
    v6 = *(v0 + 88);

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else if (v1)
  {
    *(v0 + 64) = *(v0 + 24);
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    swift_willThrowTypedImpl();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v7 = *(v0 + 8);
    v8 = *(v0 + 24);

    return v7(v8);
  }
}

uint64_t sub_100218248()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100218344, 0, 0);
}

uint64_t sub_100218344()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1002183D4;
  v2 = *(v0 + 88);

  return sub_100211EEC();
}

uint64_t sub_1002183D4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 56) = a2;
  *(v4 + 40) = v2;
  *(v4 + 48) = a1;
  v5 = *(v3 + 112);
  v7 = *v2;
  *(v4 + 121) = a2;

  return _swift_task_switch(sub_1002184DC, 0, 0);
}

uint64_t sub_1002184DC()
{
  v1 = *(v0 + 121);
  if (v1 == 255)
  {
    v2 = *(v0 + 80);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to wait & take with receiver", v5, 2u);
    }

    sub_100224A40();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    goto LABEL_7;
  }

  if (v1)
  {
    *(v0 + 64) = *(v0 + 48);
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    swift_willThrowTypedImpl();
LABEL_7:
    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 48);

  return v9(v10);
}

uint64_t sub_10021865C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1002186CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return _swift_task_switch(sub_1002186F0, 0, 0);
}

uint64_t sub_1002186F0()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 32) + 16);
  *(v0 + 64) = v2;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return _swift_task_switch(sub_10021871C, v2, 0);
}

uint64_t sub_10021871C()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1002187DC;
  v3 = v0[8];

  return sub_100210DE4(&unk_10029EFF8, v1);
}

uint64_t sub_1002187DC(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v10 = *(v6 + 72);
    sub_100224C24(a1, a2);

    return _swift_task_switch(sub_10021893C, 0, 0);
  }
}

uint64_t sub_10021893C()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))(*(*(v0 + 32) + 64), 0);
  v2 = *(v0 + 8);

  return v2();
}

void sub_100218A10(uint64_t a1, uint64_t a2, uint64_t a3)
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

id sub_100218A80()
{
  v1 = v0;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, static Logger.akd);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Remote view session has received invalidation message", v5, 2u);
  }

  v6 = [objc_opt_self() currentConnection];
  [v6 invalidate];

  result = *(v1 + 32);
  if (result)
  {

    return [result invalidate];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100218BEC()
{
  [*&v0[OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_connection] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteViewService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100218CEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100218DB4, 0, 0);
}

uint64_t sub_100218DB4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0[3] + OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_connection);
  (*(v3 + 16))(v1, v0[2], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[8] = v6;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = &unk_10029ECC8;
  *(v7 + 24) = v6;

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_100218F1C;

  return sub_10021B520(v8, &unk_10029ECD8, v7);
}

uint64_t sub_100218F1C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1002190A4;
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v4 = sub_100219040;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100219040()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002190A4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_10021911C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 144) = a3;
  *(v3 + 152) = v4;
  return _swift_task_switch(sub_100219140, 0, 0);
}

uint64_t sub_100219140()
{
  v1 = v0[18];
  v2 = v0[19];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[20] = isa;
  v0[2] = v0;
  v0[3] = sub_10021926C;
  v4 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_1003723E8, &qword_10029ED70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100219450;
  v0[13] = &unk_1003288E0;
  v0[14] = v4;
  [v2 continueAuthenticationWithSurrogateID:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021926C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1002193E0;
  }

  else
  {
    v3 = sub_10021937C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021937C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002193E0()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_100219450(uint64_t a1, void *a2)
{
  v3 = sub_1001B1078((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100219684(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for UUID();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_1002197B0;

  return sub_100218CEC(v9);
}

uint64_t sub_1002197B0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  (*(v7 + 8))(v6, v8);

  v11 = *(v3 + 48);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 48), 0);
  }

  v14 = v4 + 40;
  v13 = *(v4 + 40);
  _Block_release(*(v14 + 8));

  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_100219998(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a3;
  v5 = *a2;
  v4[21] = a4;
  v4[22] = v5;
  return _swift_task_switch(sub_1002199C0, 0, 0);
}

uint64_t sub_1002199C0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100219AF0;
  v4 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100373F50, &qword_10029EFB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100225B48;
  v0[13] = &unk_100328D90;
  v0[14] = v4;
  [v1 presentAuthorizationWithContext:v3 usingHost:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100219AF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100225AB0;
  }

  else
  {
    v3 = sub_100225AC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100219D94(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;

  return _swift_task_switch(sub_100219E30, 0, 0);
}

uint64_t sub_100219E30()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_connection);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = &unk_10029EF28;
  *(v5 + 24) = v4;
  v6 = v2;
  swift_unknownObjectRetain();

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100219F60;

  return sub_10021BF18(&unk_10029EF38, v5);
}

uint64_t sub_100219F60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_100225B30;
  }

  else
  {
    v9 = v4[6];
    v8 = v4[7];

    v4[10] = a1;
    v7 = sub_100225AA4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10021A098(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a3;
  v5 = *a2;
  v4[21] = a4;
  v4[22] = v5;
  return _swift_task_switch(sub_10021A0C0, 0, 0);
}

uint64_t sub_10021A0C0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10021A1F0;
  v4 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100373F20, &qword_10029EEF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100225B4C;
  v0[13] = &unk_100328C00;
  v0[14] = v4;
  [v1 presentPrivateEmailWithContext:v3 usingHost:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021A1F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_10021A300;
  }

  else
  {
    v3 = sub_100225AC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021A300()
{
  v1 = *(v0 + 184);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 184);

  return v2();
}

uint64_t sub_10021A36C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10021A5D0(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;

  return _swift_task_switch(sub_10021A66C, 0, 0);
}

uint64_t sub_10021A66C()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_connection);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = &unk_10029EE60;
  *(v5 + 24) = v4;
  v6 = v2;
  swift_unknownObjectRetain();

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_10021A79C;

  return sub_10021C7EC(&unk_10029EE70, v5);
}

uint64_t sub_10021A79C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_10021A974;
  }

  else
  {
    v9 = v4[6];
    v8 = v4[7];

    v4[10] = a1;
    v7 = sub_10021A8D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10021A8D4()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);

  swift_unknownObjectRelease();
  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10021A974()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  swift_unknownObjectRelease();
  v8 = _convertErrorToNSError(_:)();

  (v4)[2](v4, 0, v8);

  _Block_release(v4);
  v9 = v0[1];

  return v9();
}

uint64_t sub_10021AA40(uint64_t a1, void *a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a3;
  v3[21] = *a2;
  return _swift_task_switch(sub_10021AA68, 0, 0);
}

uint64_t sub_10021AA68()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10021AB90;
  v3 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_100373240, qword_10029E0E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10021AD2C;
  v0[13] = &unk_100328A70;
  v0[14] = v3;
  [v1 presentShieldWithContext:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021AB90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_10021ACC0;
  }

  else
  {
    v3 = sub_10021ACA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021ACC0()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2();
}

uint64_t sub_10021AD2C(uint64_t a1, void *a2)
{
  v3 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return _swift_continuation_throwingResumeWithError(v3, v4);
  }

  else
  {
    sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
    **(*(v3 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10021AFB0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_10021B03C, 0, 0);
}

uint64_t sub_10021B03C()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_connection);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = &unk_10029ED90;
  *(v4 + 24) = v3;
  v5 = v1;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10021B160;

  return sub_10021D238(&unk_10029EDA0, v4);
}

uint64_t sub_10021B160(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_10021B364;
  }

  else
  {
    v9 = v4[5];
    v8 = v4[6];

    v4[9] = a1;
    v7 = sub_10021B298;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10021B298()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = *(v0 + 32);
  (v4)[2](v4, 0, isa);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10021B364()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  v6 = _convertErrorToNSError(_:)();

  v7 = v0[4];
  (v7)[2](v7, v6, 0);

  _Block_release(v7);
  v8 = v0[1];

  return v8();
}

Swift::Int sub_10021B468()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10021B4DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10021B520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[25] = a2;
  v5 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_10021B5C0, 0, 0);
}

uint64_t sub_10021B5C0()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_1001AD17C(&qword_100373E80, &qword_10029ECF0);
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = -1;
  *(v0 + 176) = 0;
  *(v0 + 184) = -1;
  v6 = sub_1001AD17C(&qword_100373E88, &qword_10029ECF8);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v5 + 128) = CurrentValueSubject.init(_:)();
  v9 = *(v5 + 112);
  *(v5 + 112) = 0;
  v10 = *(v5 + 120);
  *(v5 + 120) = -1;
  sub_1002225C4(v9, v10);
  *(v0 + 48) = sub_1002225E8;
  *(v0 + 56) = v5;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10021DDC8;
  *(v0 + 40) = &unk_100328818;
  v11 = _Block_copy((v0 + 16));
  v12 = *(v0 + 56);
  swift_retain_n();

  v13 = [v2 remoteObjectProxyWithErrorHandler:v11];
  _Block_release(v11);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v1, 1, 1, v14);
  sub_1000087A8(v0 + 64, v0 + 96);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v4;
  *(v15 + 40) = v3;
  sub_1000122C0((v0 + 96), (v15 + 48));
  *(v15 + 80) = v5;

  sub_100248D54(0, 0, v1, &unk_10029ED08, v15);

  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = sub_10021B86C;

  return sub_100212060();
}

uint64_t sub_10021B86C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a2;
  *(v4 + 128) = v2;
  *(v4 + 136) = a1;
  v5 = *(v3 + 240);
  v7 = *v2;
  *(v4 + 185) = a2;

  return _swift_task_switch(sub_10021B974, 0, 0);
}

uint64_t sub_10021B974()
{
  v1 = *(v0 + 185);
  if (v1 == 255)
  {
    v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    *(v0 + 248) = v7;
    *v7 = v0;
    v7[1] = sub_10021BB38;
    v8 = *(v0 + 232);

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v2 = *(v0 + 232);
    if (v1)
    {
      v3 = *(v0 + 136);
      *(v0 + 192) = v3;
      sub_100222764(v3, 1);
      sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      swift_willThrowTypedImpl();

      sub_1002225C4(v3, v1);
      sub_1001AD48C((v0 + 64));
      v4 = *(v0 + 224);
    }

    else
    {
      v9 = *(v0 + 224);
      v10 = *(v0 + 232);

      sub_1001AD48C((v0 + 64));
    }

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10021BB38()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_10021BC34, 0, 0);
}

uint64_t sub_10021BC34()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_10021BCC4;
  v2 = *(v0 + 232);

  return sub_100212060();
}

uint64_t sub_10021BCC4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a2;
  *(v4 + 152) = v2;
  *(v4 + 160) = a1;
  v5 = *(v3 + 256);
  v7 = *v2;
  *(v4 + 186) = a2;

  return _swift_task_switch(sub_10021BDCC, 0, 0);
}

uint64_t sub_10021BDCC()
{
  v1 = *(v0 + 186);
  if (v1 == 255)
  {
    v4 = *(v0 + 232);
    sub_100222710();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();

    goto LABEL_5;
  }

  v2 = *(v0 + 232);
  if (v1)
  {
    v3 = *(v0 + 160);
    *(v0 + 192) = v3;
    sub_100222764(v3, 1);
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    swift_willThrowTypedImpl();

    sub_1002225C4(v3, v1);
LABEL_5:
    sub_1001AD48C((v0 + 64));
    v6 = *(v0 + 224);

    v7 = *(v0 + 8);
    goto LABEL_7;
  }

  v8 = *(v0 + 224);
  v9 = *(v0 + 232);

  sub_1001AD48C((v0 + 64));

  v7 = *(v0 + 8);
LABEL_7:

  return v7();
}

uint64_t sub_10021BF18(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10021BFB8, 0, 0);
}

uint64_t sub_10021BFB8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_1001AD17C(&qword_100373F28, &qword_10029EF48);
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = -1;
  *(v0 + 176) = 0;
  *(v0 + 184) = -1;
  v6 = sub_1001AD17C(&qword_100373F30, &qword_10029EF50);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v5 + 128) = CurrentValueSubject.init(_:)();
  v9 = *(v5 + 112);
  *(v5 + 112) = 0;
  v10 = *(v5 + 120);
  *(v5 + 120) = -1;
  sub_100018150(v9, v10);
  *(v0 + 48) = sub_10022401C;
  *(v0 + 56) = v5;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10021DDC8;
  *(v0 + 40) = &unk_100328CF0;
  v11 = _Block_copy((v0 + 16));
  v12 = *(v0 + 56);
  swift_retain_n();

  v13 = [v2 remoteObjectProxyWithErrorHandler:v11];
  _Block_release(v11);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v1, 1, 1, v14);
  sub_1000087A8(v0 + 64, v0 + 96);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v4;
  *(v15 + 40) = v3;
  sub_1000122C0((v0 + 96), (v15 + 48));
  *(v15 + 80) = v5;

  sub_100248D54(0, 0, v1, &unk_10029EF60, v15);

  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = sub_10021C264;

  return sub_1002121D4();
}

uint64_t sub_10021C264(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a2;
  *(v4 + 128) = v2;
  *(v4 + 136) = a1;
  v5 = *(v3 + 240);
  v7 = *v2;
  *(v4 + 185) = a2;

  return _swift_task_switch(sub_10021C36C, 0, 0);
}

uint64_t sub_10021C36C()
{
  v1 = *(v0 + 185);
  if (v1 == 255)
  {
    v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = sub_10021C558;
    v9 = *(v0 + 232);

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 232);
    if (v1)
    {
      *(v0 + 192) = v2;
      sub_100018174(v2, 1);
      sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      swift_willThrowTypedImpl();

      sub_100018150(v2, v1);
      sub_1001AD48C((v0 + 64));
      v4 = *(v0 + 224);

      v5 = *(v0 + 8);

      return v5();
    }

    else
    {
      v10 = *(v0 + 224);
      v11 = *(v0 + 232);

      sub_1001AD48C((v0 + 64));

      v12 = *(v0 + 8);

      return v12(v2);
    }
  }
}

uint64_t sub_10021C558()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_10021C654, 0, 0);
}

uint64_t sub_10021C654()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_10021C6E4;
  v2 = *(v0 + 232);

  return sub_1002121D4();
}

uint64_t sub_10021C6E4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a2;
  *(v4 + 152) = v2;
  *(v4 + 160) = a1;
  v5 = *(v3 + 256);
  v7 = *v2;
  *(v4 + 186) = a2;

  return _swift_task_switch(sub_100225B74, 0, 0);
}

uint64_t sub_10021C7EC(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10021C88C, 0, 0);
}

uint64_t sub_10021C88C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_1001AD17C(&qword_100373EF8, &qword_10029EE80);
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = -1;
  *(v0 + 176) = 0;
  *(v0 + 184) = -1;
  v6 = sub_1001AD17C(&qword_100373F00, &qword_10029EE88);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v5 + 128) = CurrentValueSubject.init(_:)();
  v9 = *(v5 + 112);
  *(v5 + 112) = 0;
  v10 = *(v5 + 120);
  *(v5 + 120) = -1;
  sub_100018150(v9, v10);
  *(v0 + 48) = sub_10022379C;
  *(v0 + 56) = v5;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10021DDC8;
  *(v0 + 40) = &unk_100328B60;
  v11 = _Block_copy((v0 + 16));
  v12 = *(v0 + 56);
  swift_retain_n();

  v13 = [v2 remoteObjectProxyWithErrorHandler:v11];
  _Block_release(v11);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v1, 1, 1, v14);
  sub_1000087A8(v0 + 64, v0 + 96);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v4;
  *(v15 + 40) = v3;
  sub_1000122C0((v0 + 96), (v15 + 48));
  *(v15 + 80) = v5;

  sub_100248D54(0, 0, v1, &unk_10029EE98, v15);

  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = sub_10021CB38;

  return sub_10021226C();
}

uint64_t sub_10021CB38(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a2;
  *(v4 + 128) = v2;
  *(v4 + 136) = a1;
  v5 = *(v3 + 240);
  v7 = *v2;
  *(v4 + 185) = a2;

  return _swift_task_switch(sub_10021CC40, 0, 0);
}

uint64_t sub_10021CC40()
{
  v1 = *(v0 + 185);
  if (v1 == 255)
  {
    v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = sub_10021CE2C;
    v9 = *(v0 + 232);

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 232);
    if (v1)
    {
      *(v0 + 192) = v2;
      sub_100018174(v2, 1);
      sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      swift_willThrowTypedImpl();

      sub_100018150(v2, v1);
      sub_1001AD48C((v0 + 64));
      v4 = *(v0 + 224);

      v5 = *(v0 + 8);

      return v5();
    }

    else
    {
      v10 = *(v0 + 224);
      v11 = *(v0 + 232);

      sub_1001AD48C((v0 + 64));

      v12 = *(v0 + 8);

      return v12(v2);
    }
  }
}

uint64_t sub_10021CE2C()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_10021CF28, 0, 0);
}

uint64_t sub_10021CF28()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_10021CFB8;
  v2 = *(v0 + 232);

  return sub_10021226C();
}

uint64_t sub_10021CFB8(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a2;
  *(v4 + 152) = v2;
  *(v4 + 160) = a1;
  v5 = *(v3 + 256);
  v7 = *v2;
  *(v4 + 186) = a2;

  return _swift_task_switch(sub_10021D0C0, 0, 0);
}

uint64_t sub_10021D0C0()
{
  v1 = *(v0 + 186);
  if (v1 == 255)
  {
    v4 = *(v0 + 232);
    sub_100222710();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();

    goto LABEL_5;
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 232);
  if (v1)
  {
    *(v0 + 192) = v2;
    sub_100018174(v2, 1);
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    swift_willThrowTypedImpl();

    sub_100018150(v2, v1);
LABEL_5:
    sub_1001AD48C((v0 + 64));
    v6 = *(v0 + 224);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 224);
  v10 = *(v0 + 232);

  sub_1001AD48C((v0 + 64));

  v11 = *(v0 + 8);

  return v11(v2);
}

uint64_t sub_10021D238(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10021D2D8, 0, 0);
}

uint64_t sub_10021D2D8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_1001AD17C(&qword_100373EC8, &qword_10029EDB8);
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = -1;
  *(v0 + 176) = 0;
  *(v0 + 184) = -1;
  v6 = sub_1001AD17C(&qword_100373ED0, &qword_10029EDC0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v5 + 128) = CurrentValueSubject.init(_:)();
  v9 = *(v5 + 112);
  *(v5 + 112) = 0;
  v10 = *(v5 + 120);
  *(v5 + 120) = -1;
  sub_100222E9C(v9, v10);
  *(v0 + 48) = sub_100222EDC;
  *(v0 + 56) = v5;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10021DDC8;
  *(v0 + 40) = &unk_1003289D0;
  v11 = _Block_copy((v0 + 16));
  v12 = *(v0 + 56);
  swift_retain_n();

  v13 = [v2 remoteObjectProxyWithErrorHandler:v11];
  _Block_release(v11);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v1, 1, 1, v14);
  sub_1000087A8(v0 + 64, v0 + 96);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v4;
  *(v15 + 40) = v3;
  sub_1000122C0((v0 + 96), (v15 + 48));
  *(v15 + 80) = v5;

  sub_100248D54(0, 0, v1, &unk_10029EDD0, v15);

  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = sub_10021D584;

  return sub_1002123E0();
}

uint64_t sub_10021D584(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a2;
  *(v4 + 128) = v2;
  *(v4 + 136) = a1;
  v5 = *(v3 + 240);
  v7 = *v2;
  *(v4 + 185) = a2;

  return _swift_task_switch(sub_10021D68C, 0, 0);
}

uint64_t sub_10021D68C()
{
  v1 = *(v0 + 185);
  if (v1 == 255)
  {
    v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = sub_10021D88C;
    v9 = *(v0 + 232);

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 232);
    if (v1)
    {
      *(v0 + 192) = v2;
      sub_100224CB4(v2, 1, &_swift_bridgeObjectRetain);
      sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      swift_willThrowTypedImpl();

      sub_100222E9C(v2, v1);
      sub_1001AD48C((v0 + 64));
      v4 = *(v0 + 224);

      v5 = *(v0 + 8);

      return v5();
    }

    else
    {
      v10 = *(v0 + 224);
      v11 = *(v0 + 232);

      sub_1001AD48C((v0 + 64));

      v12 = *(v0 + 8);

      return v12(v2);
    }
  }
}

uint64_t sub_10021D88C()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_10021D988, 0, 0);
}

uint64_t sub_10021D988()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_10021DA18;
  v2 = *(v0 + 232);

  return sub_1002123E0();
}

uint64_t sub_10021DA18(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a2;
  *(v4 + 152) = v2;
  *(v4 + 160) = a1;
  v5 = *(v3 + 256);
  v7 = *v2;
  *(v4 + 186) = a2;

  return _swift_task_switch(sub_10021DB20, 0, 0);
}

uint64_t sub_10021DB20()
{
  v1 = *(v0 + 186);
  if (v1 == 255)
  {
    v4 = *(v0 + 232);
    sub_100222710();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();

    goto LABEL_5;
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 232);
  if (v1)
  {
    *(v0 + 192) = v2;
    sub_100224CB4(v2, 1, &_swift_bridgeObjectRetain);
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    swift_willThrowTypedImpl();

    sub_100222E9C(v2, v1);
LABEL_5:
    sub_1001AD48C((v0 + 64));
    v6 = *(v0 + 224);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 224);
  v10 = *(v0 + 232);

  sub_1001AD48C((v0 + 64));

  v11 = *(v0 + 8);

  return v11(v2);
}

uint64_t sub_10021DCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a1;

  swift_errorRetain();
  a5(0, 0, v12, a4, v14);
}

void sub_10021DDC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10021DE30(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  *v9 = v7;
  v9[1] = sub_10021DF2C;

  return v11();
}

uint64_t sub_10021DF2C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_10021E284;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 48);
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    v4 = sub_10021E050;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10021E050()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *(v1 + 16) = v0 + 4;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10021E110;
  v3 = v0[6];

  return sub_10021118C(&unk_10029ED48, v1);
}

uint64_t sub_10021E110(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v10 = *(v6 + 72);
    sub_1002225C4(a1, a2);

    return _swift_task_switch(sub_10021E270, 0, 0);
  }
}

uint64_t sub_10021E284()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_10021E2FC, v1, 0);
}

uint64_t sub_10021E2FC()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10021E3BC;
  v3 = v0[6];

  return sub_10021118C(&unk_10029ED40, v1);
}

uint64_t sub_10021E3BC(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v10 = *(v6 + 88);
    v11 = *(v6 + 64);
    sub_1002225C4(a1, a2);

    return _swift_task_switch(sub_10021E528, 0, 0);
  }
}

uint64_t sub_10021E528()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10021E588(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a7;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v7 + 64) = v10;
  *v10 = v7;
  v10[1] = sub_10021E68C;

  return v12(v7 + 48, a6);
}

uint64_t sub_10021E68C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10021EA3C;
  }

  else
  {
    v3 = sub_10021E7A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021E7A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 80) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  v3 = v1;

  return _swift_task_switch(sub_10021E818, v2, 0);
}

uint64_t sub_10021E818()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *(v1 + 16) = v0 + 4;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10021E8D8;
  v3 = v0[7];

  return sub_100211534(&unk_10029EF90, v1);
}

uint64_t sub_10021E8D8(void *a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v11 = *(v6 + 80);
    v10 = *(v6 + 88);
    sub_100018150(a1, a2);

    return _swift_task_switch(sub_100225A0C, 0, 0);
  }
}

uint64_t sub_10021EA3C()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_10021EAB4, v1, 0);
}

uint64_t sub_10021EAB4()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_10021EB74;
  v3 = v0[7];

  return sub_100211534(&unk_10029EF88, v1);
}

uint64_t sub_10021EB74(void *a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v10 = *(v6 + 104);
    v11 = *(v6 + 72);
    sub_100018150(a1, a2);

    return _swift_task_switch(sub_100225B78, 0, 0);
  }
}

uint64_t sub_10021ECE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a7;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v7 + 64) = v10;
  *v10 = v7;
  v10[1] = sub_10021EDE4;

  return v12(v7 + 48, a6);
}

uint64_t sub_10021EDE4()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10021F1F4;
  }

  else
  {
    v3 = sub_10021EEF8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021EEF8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 80) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  v3 = v1;

  return _swift_task_switch(sub_10021EF70, v2, 0);
}

uint64_t sub_10021EF70()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *(v1 + 16) = v0 + 4;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10021F030;
  v3 = v0[7];

  return sub_10021179C(&unk_10029EEC8, v1);
}

uint64_t sub_10021F030(void *a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v11 = *(v6 + 80);
    v10 = *(v6 + 88);
    sub_100018150(a1, a2);

    return _swift_task_switch(sub_10021F194, 0, 0);
  }
}

uint64_t sub_10021F194()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021F1F4()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_10021F26C, v1, 0);
}

uint64_t sub_10021F26C()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_10021F32C;
  v3 = v0[7];

  return sub_10021179C(&unk_10029EEC0, v1);
}

uint64_t sub_10021F32C(void *a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v10 = *(v6 + 104);
    v11 = *(v6 + 72);
    sub_100018150(a1, a2);

    return _swift_task_switch(sub_100225B7C, 0, 0);
  }
}

uint64_t sub_10021F498(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a7;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v7 + 64) = v10;
  *v10 = v7;
  v10[1] = sub_10021F59C;

  return v12(v7 + 48, a6);
}

uint64_t sub_10021F59C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10021F9B0;
  }

  else
  {
    v3 = sub_10021F6B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021F6B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 80) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;

  return _swift_task_switch(sub_10021F728, v2, 0);
}

uint64_t sub_10021F728()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *(v1 + 16) = v0 + 4;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10021F7E8;
  v3 = v0[7];

  return sub_100211B44(&unk_10029EE00, v1);
}

uint64_t sub_10021F7E8(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v11 = *(v6 + 80);
    v10 = *(v6 + 88);
    sub_100222E9C(a1, a2);

    return _swift_task_switch(sub_10021F950, 0, 0);
  }
}

uint64_t sub_10021F950()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10021F9B0()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_10021FA28, v1, 0);
}

uint64_t sub_10021FA28()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_10021FAE8;
  v3 = v0[7];

  return sub_100211B44(&unk_10029EDF8, v1);
}

uint64_t sub_10021FAE8(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v10 = *(v6 + 104);
    v11 = *(v6 + 72);
    sub_100222E9C(a1, a2);

    return _swift_task_switch(sub_10021FC54, 0, 0);
  }
}

uint64_t sub_10021FC54()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10021FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return _swift_task_switch(sub_10021FCD8, 0, 0);
}

uint64_t sub_10021FCD8()
{
  sub_1000087A8(v0[9], (v0 + 2));
  sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
  if (swift_dynamicCast() && (v1 = v0[7], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[6] = v1;
    v10 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_10021FE8C;
    v5 = v0[11];
    v6 = v0[8];

    return (v10)(v6, v0 + 6);
  }

  else
  {
    sub_100222710();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10021FE8C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100220004;
  }

  else
  {
    v3 = sub_10021FFA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021FFA0()
{
  v1 = *(v0 + 96);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100220004()
{
  v1 = v0[12];
  swift_unknownObjectRelease();
  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100220068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return _swift_task_switch(sub_10022008C, 0, 0);
}

uint64_t sub_10022008C()
{
  sub_1000087A8(v0[9], (v0 + 2));
  sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
  if (swift_dynamicCast() && (v1 = v0[8], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[7] = v1;
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_100220240;
    v5 = v0[11];

    return (v9)(v0 + 6, v0 + 7);
  }

  else
  {
    sub_100222710();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100220240()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100225A80;
  }

  else
  {
    v3 = sub_100225AA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100220354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return _swift_task_switch(sub_100220378, 0, 0);
}

uint64_t sub_100220378()
{
  sub_1000087A8(v0[9], (v0 + 2));
  sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
  if (swift_dynamicCast() && (v1 = v0[8], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[7] = v1;
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_10022052C;
    v5 = v0[11];

    return (v9)(v0 + 6, v0 + 7);
  }

  else
  {
    sub_100222710();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10022052C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100225A84;
  }

  else
  {
    v3 = sub_100225AAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100220640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return _swift_task_switch(sub_100220664, 0, 0);
}

uint64_t sub_100220664()
{
  sub_1000087A8(v0[9], (v0 + 2));
  sub_1001AD17C(&qword_100373EC0, &qword_10029ED68);
  if (swift_dynamicCast() && (v1 = v0[8], (v0[12] = v1) != 0))
  {
    v2 = v0[10];
    v0[7] = v1;
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_100220818;
    v5 = v0[11];

    return (v9)(v0 + 6, v0 + 7);
  }

  else
  {
    sub_100222710();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100220818()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100220994;
  }

  else
  {
    v3 = sub_10022092C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022092C()
{
  v1 = v0[12];
  swift_unknownObjectRelease();
  v2 = v0[6];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100220994()
{
  v1 = v0[12];
  swift_unknownObjectRelease();
  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002209F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100220AF8, 0, 0);
}

uint64_t sub_100220AF8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1002255B4(&qword_100373F88, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1002255B4(&qword_100373F90, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100220C88;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100220C88()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100220E44, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100220E44()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_100220EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 40) = *(a3 + 8);
  return _swift_task_switch(sub_100220EE0, 0, 0);
}

uint64_t sub_100220EE0()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v1;
  *v4 = v5;
  *(v4 + 8) = v6;
  sub_100224CB4(v2, v1, &_swift_unknownObjectRetain);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100220F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 40) = *(a3 + 8);
  return _swift_task_switch(sub_100220FA8, 0, 0);
}

uint64_t sub_100220FA8()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v1;
  *v4 = v5;
  *(v4 + 8) = v6;
  sub_100222764(v2, v1);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10022102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return _swift_task_switch(sub_100221050, 0, 0);
}

uint64_t sub_100221050()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_1002210C4, v1, 0);
}

uint64_t sub_1002210C4()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100225A88;
  v3 = v0[5];

  return sub_10021118C(&unk_10029ED60, v1);
}

uint64_t sub_100221184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100225A78;

  return sub_100220068(a2, a3, a4);
}

uint64_t sub_100221234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 40) = *(a3 + 8);
  return _swift_task_switch(sub_100225B80, 0, 0);
}

uint64_t sub_100221264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return _swift_task_switch(sub_100221288, 0, 0);
}

uint64_t sub_100221288()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_1002212FC, v1, 0);
}

uint64_t sub_1002212FC()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100225A8C;
  v3 = v0[5];

  return sub_100211534(&unk_10029EFA8, v1);
}

uint64_t sub_1002213BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100225A7C;

  return sub_100220354(a2, a3, a4);
}

uint64_t sub_10022146C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 40) = *(a3 + 8);
  return _swift_task_switch(sub_10022149C, 0, 0);
}

uint64_t sub_10022149C()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v1;
  *v4 = v5;
  *(v4 + 8) = v6;
  sub_100018174(v2, v1);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100221520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return _swift_task_switch(sub_100221544, 0, 0);
}

uint64_t sub_100221544()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_1002215B8, v1, 0);
}

uint64_t sub_1002215B8()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100225A90;
  v3 = v0[5];

  return sub_10021179C(&unk_10029EEE0, v1);
}

uint64_t sub_100221678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_100221728;

  return sub_100220640(a2, a3, a4);
}

uint64_t sub_100221728(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_100221838(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {

    AnyCancellable.cancel()();
  }

  sub_1001AD17C(&qword_100373EA0, &qword_10029ED20);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1002218B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 40) = *(a3 + 8);
  return _swift_task_switch(sub_1002218E4, 0, 0);
}

uint64_t sub_1002218E4()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v1;
  *v4 = v5;
  *(v4 + 8) = v6;
  sub_100224CB4(v2, v1, &_swift_bridgeObjectRetain);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10022197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return _swift_task_switch(sub_1002219A0, 0, 0);
}

uint64_t sub_1002219A0()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = 1;
  swift_errorRetain();

  return _swift_task_switch(sub_100221A14, v1, 0);
}

uint64_t sub_100221A14()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100221AD4;
  v3 = v0[5];

  return sub_100211B44(&unk_10029EE18, v1);
}

uint64_t sub_100221AD4(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;

  if (v2)
  {
  }

  else
  {
    v10 = v6[6];
    v11 = v6[7];
    v12 = v6[4];

    *v12 = a1;
    *(v12 + 8) = a2;
    v13 = *(v8 + 8);

    return v13();
  }
}

uint64_t sub_100221C50()
{
  v1 = [*(v0[19] + OBJC_IVAR___AKRemoteViewServiceController_configuration) remoteBundleID];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSUserActivity) initWithActivityType:v1];
  v0[20] = v2;

  v3 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100221DF0;
  v4 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100373FD8, &qword_10029F0D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100225B44;
  v0[13] = &unk_100328FE8;
  v0[14] = v4;
  [v3 buildWithUserActivity:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100221DF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100221FEC;
  }

  else
  {
    v3 = sub_100221F00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100221F00()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 160);
  if (v1)
  {

    v3 = *(v0 + 8);

    return v3(v1);
  }

  else
  {
    sub_100222380();
    swift_allocError();
    *v5 = 5;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100221FEC()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[21];
  v4 = v0[1];

  return v4();
}

void sub_100222060(void *a1)
{
  v2 = v1;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = a1;
  sub_1001AD17C(&qword_100373FD0, &qword_10029F0C8);
  v4 = swift_allocObject();
  v5 = a1;
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = -1;
  LOBYTE(v18) = -1;
  v6 = sub_1001AD17C(&qword_100373F68, &qword_10029F018);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v4 + 128) = CurrentValueSubject.init(_:)();
  v9 = *(v4 + 112);
  *(v4 + 112) = 0;
  v10 = *(v4 + 120);
  *(v4 + 120) = -1;
  sub_100224C24(v9, v10);
  *(v2 + 16) = v4;
  *(v2 + 24) = v4;
  v11 = objc_opt_self();

  v12 = [v11 remoteViewSessionInterface];
  v13 = objc_allocWithZone(AKAdaptiveService);
  swift_retain_n();
  v14 = [v13 initWithInterface:v12 strongObject:v2];

  v15 = *(v2 + 32);
  *(v2 + 32) = v14;
  v16 = v14;

  if (v16)
  {
    v17 = [v11 remoteViewServiceInterface];
    [v16 setRemoteObjectInterface:v17];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100222208(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100222220()
{
  result = qword_100373C28;
  if (!qword_100373C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373C28);
  }

  return result;
}

unint64_t sub_100222278()
{
  result = qword_100373C30;
  if (!qword_100373C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373C30);
  }

  return result;
}

unint64_t sub_1002222D0()
{
  result = qword_100373C38;
  if (!qword_100373C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373C38);
  }

  return result;
}

unint64_t sub_100222328()
{
  result = qword_100373C40;
  if (!qword_100373C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373C40);
  }

  return result;
}

unint64_t sub_100222380()
{
  result = qword_100373C50;
  if (!qword_100373C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373C50);
  }

  return result;
}

uint64_t sub_10022242C(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225ADC;

  return sub_10021911C(a1, a2, v2 + v7);
}

uint64_t sub_100222510(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225ACC;

  return sub_10021FCB4(a1, a2, v7, v6);
}

uint64_t sub_1002225C4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1002225DC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1002225DC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100222634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100225A10;

  return sub_10021DE30(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

unint64_t sub_100222710()
{
  result = qword_100373E90;
  if (!qword_100373E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373E90);
  }

  return result;
}

uint64_t sub_100222764(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100222770(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100222764(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100222788(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AD0;

  return sub_100220F78(a1, a2, v6);
}

uint64_t sub_100222844(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AD4;

  return sub_100220F78(a1, a2, v6);
}

uint64_t sub_100222900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A14;

  return sub_10022102C(a1, v4, v5, v7, v6);
}

uint64_t sub_1002229CC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AD8;

  return sub_100220F78(a1, a2, v6);
}

uint64_t sub_100222A88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100222B3C;

  return sub_10021AFB0(v2, v3, v4);
}

uint64_t sub_100222B3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100222C30(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100222CE0;

  return sub_10021AA40(a1, a2, v6);
}

uint64_t sub_100222CE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100222DD4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225AE0;

  return sub_100221678(a1, a2, v7, v6);
}

uint64_t sub_100222E9C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100224C64(result, a2 & 1, &_swift_bridgeObjectRelease);
  }

  return result;
}

uint64_t sub_100222F28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100225A1C;

  return sub_10021F498(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_10022307C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100224CB4(result, a2 & 1, &_swift_bridgeObjectRetain);
  }

  return result;
}

uint64_t sub_1002230BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AE4;

  return sub_1002218B4(a1, a2, v6);
}

uint64_t sub_100223178(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AE8;

  return sub_1002218B4(a1, a2, v6);
}

uint64_t sub_100223234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A20;

  return sub_10022197C(a1, v4, v5, v7, v6);
}

uint64_t sub_100223300(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AEC;

  return sub_1002218B4(a1, a2, v6);
}

uint64_t sub_1002233D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100225A24;

  return sub_10021A5D0(v2, v3, v5, v4);
}

uint64_t sub_100223494()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100225A28;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_100223554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A2C;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_100223620(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225AF0;

  return sub_10021A098(a1, a2, v7, v6);
}

uint64_t sub_1002236D4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225AF4;

  return sub_1002213BC(a1, a2, v7, v6);
}

uint64_t sub_1002237E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100225A30;

  return sub_10021ECE0(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_1002238C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AF8;

  return sub_10022146C(a1, a2, v6);
}

uint64_t sub_100223980(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225AFC;

  return sub_10022146C(a1, a2, v6);
}

uint64_t sub_100223A3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A34;

  return sub_100221520(a1, v4, v5, v7, v6);
}

uint64_t sub_100223B08(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B00;

  return sub_10022146C(a1, a2, v6);
}

uint64_t sub_100223BC4()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100223C14()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100225A38;

  return sub_100219D94(v2, v3, v5, v4);
}

uint64_t sub_100223CD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100225A3C;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_100223D94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A40;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_100223E60()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100223EA0(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225B04;

  return sub_100219998(a1, a2, v7, v6);
}

uint64_t sub_100223F54(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100225B08;

  return sub_100221184(a1, a2, v7, v6);
}

uint64_t sub_100224068()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  sub_1001AD48C(v0 + 6);
  v3 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1002240B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100225A44;

  return sub_10021E588(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_100224194(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B0C;

  return sub_100221234(a1, a2, v6);
}

uint64_t sub_100224250(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B10;

  return sub_100221234(a1, a2, v6);
}

uint64_t sub_10022430C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100224354(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A48;

  return sub_100221264(a1, v4, v5, v7, v6);
}

uint64_t sub_100224420(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B14;

  return sub_100221234(a1, a2, v6);
}

uint64_t sub_1002244DC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100224524()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100225A4C;

  return sub_100219684(v2, v3, v4);
}

uint64_t sub_1002245D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100225A50;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_100224698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A54;

  return sub_1000099A4(a1, v4, v5, v7);
}

void sub_100224764(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = objc_opt_self();
  _Block_copy(a2);
  v10 = [v9 currentConnection];
  if (v10)
  {
    v11 = v10;
    if (*(a1 + 40))
    {
      v12 = *(a1 + 40);

      Task.cancel()();
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = type metadata accessor for RemoteViewService();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_connection] = v11;
      *&v15[OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_adapter] = v13;
      v24.receiver = v15;
      v24.super_class = v14;
      v16 = v13;
      v17 = v11;
      v18 = objc_msgSendSuper2(&v24, "init");
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = a1;
      v20[5] = v18;
      v20[6] = sub_100224A38;
      v20[7] = v8;

      v21 = v18;

      sub_100248D54(0, 0, v7, &unk_10029EFE8, v20);
    }

    else
    {
      _Block_release(a2);
      __break(1u);
    }
  }

  else
  {
    sub_100224A40();
    swift_allocError();
    *v22 = 2;
    v23 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v23);
  }
}

unint64_t sub_100224A40()
{
  result = qword_100373F58;
  if (!qword_100373F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373F58);
  }

  return result;
}

uint64_t sub_100224A94(uint64_t a1)
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
  v10[1] = sub_100225A58;

  return sub_1002186CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100224B68(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B18;

  return sub_100220EB0(a1, a2, v6);
}

uint64_t sub_100224C24(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100224C64(result, a2 & 1, &_swift_unknownObjectRelease);
  }

  return result;
}

uint64_t sub_100224C64(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
  }

  else
  {
    return a3();
  }
}

uint64_t sub_100224C74(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100224CB4(result, a2 & 1, &_swift_unknownObjectRetain);
  }

  return result;
}

uint64_t sub_100224CB4(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a3();
  }
}

uint64_t sub_100224CCC()
{
  v1 = sub_1001AD17C(&qword_100373EA0, &qword_10029ED20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100224D9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001C5270(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100224DE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100225A5C;

  return sub_100217134(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100224EAC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B1C;

  return sub_100220EB0(a1, a2, v6);
}

uint64_t sub_100224F68(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100225B20;

  return sub_100220EB0(a1, a2, v6);
}

uint64_t sub_100225024()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100225A60;

  return sub_100214660(v2, v3);
}

uint64_t sub_1002250D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100225A64;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_100225190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A68;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_10022525C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10022529C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100225A6C;

  return sub_100213D00(v2, v3);
}

uint64_t sub_100225348()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100225A70;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_100225408()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100225448(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100225A74;

  return sub_1000099A4(a1, v4, v5, v7);
}

unint64_t sub_100225514()
{
  result = qword_100373F98;
  if (!qword_100373F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373F98);
  }

  return result;
}

unint64_t sub_100225568()
{
  result = qword_100373FE0;
  if (!qword_100373FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100373FE0);
  }

  return result;
}

uint64_t sub_1002255B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002255FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001AD17C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for RemoteViewSession.Failure(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteViewSession.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s7FailureOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s7FailureOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10022592C()
{
  result = qword_100374000;
  if (!qword_100374000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374000);
  }

  return result;
}

unint64_t sub_100225984()
{
  result = qword_100374008;
  if (!qword_100374008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374008);
  }

  return result;
}

void sub_100225B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + OBJC_IVAR___AKAppleIDPasskeyUnenrollProvider_serviceController);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_100226DF0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100234B90;
  aBlock[3] = &unk_1003291F8;
  v13 = _Block_copy(aBlock);

  [v9 executeRequestWithCompletion:v13];
  _Block_release(v13);
}

uint64_t sub_100225EE4(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100225F5C, 0, 0);
}

uint64_t sub_100225F5C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100226054;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000018, 0x80000001002AC850, sub_100226DE8, v2, &type metadata for Bool);
}

uint64_t sub_100226054()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1002261F0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100226170;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100226170()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, *(v0 + 56), 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002261F0()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = _convertErrorToNSError(_:)();

  (*(v3 + 16))(v3, 0, v4);

  _Block_release(*(v0 + 24));
  v5 = *(v0 + 8);

  return v5();
}

id sub_1002262D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100226378()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100226424;

  return sub_100225EE4(v2, v3);
}

uint64_t sub_100226424()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100226518(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    v11 = [objc_opt_self() dictionaryFromObject:isa ofType:@"application/json"];
    swift_unknownObjectRelease();
    if (v11)
    {
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v22[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v22[0] + 1) = v13;
      AnyHashable.init<A>(_:)();
      if (!*(v12 + 16) || (v14 = sub_10023A30C(v23), (v15 & 1) == 0))
      {

        sub_1001AD3EC(v23);
        memset(v22, 0, sizeof(v22));
        sub_1000120B4(v22, &qword_100372080, &qword_10029C6E0);
        sub_1002269D0();
        LOBYTE(v23[0]) = 1;
        sub_1001AD17C(&qword_100372300, &unk_10029CF90);
        CheckedContinuation.resume(returning:)();
LABEL_24:

        return;
      }

      sub_1000087A8(*(v12 + 56) + 32 * v14, v22);
      sub_1001AD3EC(v23);

      sub_1000120B4(v22, &qword_100372080, &qword_10029C6E0);
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1001AD2E4(v16, qword_1003776B0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v17, v18))
      {
LABEL_23:

        type metadata accessor for AppleIDPasskeyError(0);
        *&v22[0] = -120015;
        sub_1001E4150(&_swiftEmptyArrayStorage);
        sub_1001B1020();
        _BridgedStoredNSError.init(_:userInfo:)();
        *&v22[0] = v23[0];
        sub_1001AD17C(&qword_100372300, &unk_10029CF90);
        CheckedContinuation.resume(throwing:)();
        goto LABEL_24;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Failed to unenroll passkey.";
    }

    else
    {
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1001AD2E4(v21, qword_1003776B0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_23;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Failed to unenroll passkey. Missing response.";
    }

    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

    goto LABEL_23;
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1001AD2E4(v7, qword_1003776B0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to unenroll passkey. AppleIDPasskeyUnenrollProvider instance is nil.", v10, 2u);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  sub_1001E4150(&_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  *&v22[0] = v23[0];
  sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  CheckedContinuation.resume(throwing:)();
}

void sub_1002269D0()
{
  v1 = *(v0 + OBJC_IVAR___AKAppleIDPasskeyUnenrollProvider_accountManager);
  v2 = [v1 primaryAuthKitAccount];
  if (v2)
  {
    v3 = v2;
    [v1 setPasskeyPresent:0 forAccount:v2];
    v21 = 0;
    if ([v1 saveAccount:v3 error:&v21])
    {
      v4 = qword_100371BE0;
      v5 = v21;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1001AD2E4(v6, qword_1003776B0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "AppleIDPasskeyUnenrollProvider: passkeyPresent saved successfully.", v9, 2u);
      }
    }

    else
    {
      v13 = v21;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1001AD2E4(v14, qword_1003776B0);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "AppleIDPasskeyUnenrollProvider: Failed to save passkeyPresent with error %@.", v17, 0xCu);
        sub_1000120B4(v18, &unk_1003726A0, &unk_10029CFA0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_1003776B0);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "AppleIDPasskeyUnenrollProvider: Missing primary account.", v12, 2u);
    }
  }
}

uint64_t sub_100226DA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100226DF0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(*(sub_1001AD17C(&qword_100372300, &unk_10029CF90) - 8) + 80);
  v8 = *(v3 + 16);

  sub_100226518(a1, a2, a3);
}

id sub_100226EC4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

id sub_100227180(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1002271DC(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(_:)();
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 bundleWithIdentifier:v6];

  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  String.LocalizationValue.init(_:)();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v7 bundleWithIdentifier:v12];

  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v17 = type metadata accessor for AuthenticationErrorAlertDetails();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
  v19 = &v18[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
  *v19 = v9;
  v19[1] = v11;
  v20 = &v18[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
  *v20 = v14;
  v20[1] = v16;
  v23.receiver = v18;
  v23.super_class = v17;
  v21 = a1;
  return objc_msgSendSuper2(&v23, "init");
}

id sub_10022742C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = type metadata accessor for Locale();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  if (a7)
  {
    v16.value._countAndFlagsBits = a6;
    v16.value._object = a7;
    v17 = String.localized(withName:)(v16);

    String.LocalizationValue.init(_:)();
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() bundleWithIdentifier:v18];

    static Locale.current.getter();
    v20 = String.init(localized:table:bundle:locale:comment:)();
    v22 = v21;
    v23 = type metadata accessor for AuthenticationErrorAlertDetails();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
    *&v24[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title] = v17;
    v25 = &v24[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
    *v25 = v20;
    v25[1] = v22;
    v33.receiver = v24;
    v33.super_class = v23;
    v26 = a1;
    return objc_msgSendSuper2(&v33, "init");
  }

  else
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1001AD2E4(v28, qword_100377668);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_10024B050(a2, a3, &v34);
      _os_log_impl(&_mh_execute_header, v29, v30, "Missing username for alert localization %s.", v31, 0xCu);
      sub_1001AD48C(v32);
    }

    return 0;
  }
}

id sub_100227734(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(_:)();
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 bundleWithIdentifier:v6];

  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v36 = v10;
  v37 = v9;
  String.LocalizationValue.init(_:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v7 bundleWithIdentifier:v11];

  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v15 = v14;
  v16 = [a1 userInfo];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v17 + 16))
  {
    v35 = a1;
    v20 = sub_10023A350(v18, v19);
    v22 = v21;

    if (v22)
    {
      sub_1000087A8(*(v17 + 56) + 32 * v20, v40);

      v23 = sub_1001AD440();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_7:
        a1 = v35;
        goto LABEL_8;
      }

      sub_1001AD17C(&qword_100373840, &qword_10029E780);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10029BEB0;
      *(v24 + 56) = v23;
      *(v24 + 64) = sub_100228BAC();
      *(v24 + 32) = v38;
      v25 = v38;
      String.LocalizationValue.init(_:)();
      v26 = String._bridgeToObjectiveC()();
      v27 = [v7 bundleWithIdentifier:v26];

      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v13 = String.init(format:_:)();
      v15 = v28;
    }

    goto LABEL_7;
  }

LABEL_8:
  v29 = type metadata accessor for AuthenticationErrorAlertDetails();
  v30 = objc_allocWithZone(v29);
  *&v30[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
  v31 = &v30[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
  *v31 = v37;
  *(v31 + 1) = v36;
  v32 = &v30[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
  *v32 = v13;
  v32[1] = v15;
  v39.receiver = v30;
  v39.super_class = v29;
  v33 = a1;
  return objc_msgSendSuper2(&v39, "init");
}

id sub_100227B68(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = [a1 code];
  if (v10 > -7037)
  {
    if (v10 > -7013)
    {
      if (v10 == -7012)
      {
        String.LocalizationValue.init(_:)();
        v48 = String._bridgeToObjectiveC()();
        v49 = objc_opt_self();
        v50 = [v49 bundleWithIdentifier:v48];

        static Locale.current.getter();
        v51 = String.init(localized:table:bundle:locale:comment:)();
        v53 = v52;
        String.LocalizationValue.init(_:)();
        v54 = String._bridgeToObjectiveC()();
        v55 = [v49 bundleWithIdentifier:v54];

        static Locale.current.getter();
        v56 = String.init(localized:table:bundle:locale:comment:)();
        v58 = v57;
        v59 = type metadata accessor for AuthenticationErrorAlertDetails();
        v60 = objc_allocWithZone(v59);
        *&v60[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
        v61 = &v60[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
        *v61 = v51;
        v61[1] = v53;
        v62 = &v60[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
        *v62 = v56;
        v62[1] = v58;
        v100.receiver = v60;
        v100.super_class = v59;
        v63 = a1;
        return objc_msgSendSuper2(&v100, "init");
      }

      if (v10 != -7005)
      {
        if (v10 == -7006)
        {
          String.LocalizationValue.init(_:)();
          v11 = String._bridgeToObjectiveC()();
          v12 = objc_opt_self();
          v13 = [v12 bundleWithIdentifier:v11];

          static Locale.current.getter();
          v14 = String.init(localized:table:bundle:locale:comment:)();
          v16 = v15;
          String.LocalizationValue.init(_:)();
          v17 = String._bridgeToObjectiveC()();
          v18 = [v12 bundleWithIdentifier:v17];

          static Locale.current.getter();
          v19 = String.init(localized:table:bundle:locale:comment:)();
          v21 = v20;
          v22 = type metadata accessor for AuthenticationErrorAlertDetails();
          v23 = objc_allocWithZone(v22);
          *&v23[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
          v24 = &v23[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
          *v24 = v14;
          v24[1] = v16;
          v25 = &v23[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
          *v25 = v19;
          v25[1] = v21;
          v99.receiver = v23;
          v99.super_class = v22;
          v26 = a1;
          return objc_msgSendSuper2(&v99, "init");
        }

        goto LABEL_24;
      }

      return sub_1002271DC(a1);
    }

    if (v10 == -7036)
    {
      String.LocalizationValue.init(_:)();
      v64 = String._bridgeToObjectiveC()();
      v65 = objc_opt_self();
      v66 = [v65 bundleWithIdentifier:v64];

      static Locale.current.getter();
      v67 = String.init(localized:table:bundle:locale:comment:)();
      v69 = v68;
      String.LocalizationValue.init(_:)();
      v70 = String._bridgeToObjectiveC()();
      v71 = [v65 bundleWithIdentifier:v70];

      static Locale.current.getter();
      v72 = String.init(localized:table:bundle:locale:comment:)();
      v74 = v73;
      v75 = type metadata accessor for AuthenticationErrorAlertDetails();
      v76 = objc_allocWithZone(v75);
      *&v76[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
      v77 = &v76[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
      *v77 = v67;
      v77[1] = v69;
      v78 = &v76[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
      *v78 = v72;
      v78[1] = v74;
      v101.receiver = v76;
      v101.super_class = v75;
      v79 = a1;
      return objc_msgSendSuper2(&v101, "init");
    }

    if (v10 == -7029)
    {
      return sub_1002271DC(a1);
    }

LABEL_24:
    v80 = [a1 userInfo];
    v81 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v81 + 16))
    {
      v84 = sub_10023A350(v82, v83);
      v86 = v85;

      if (v86)
      {
        sub_1000087A8(*(v81 + 56) + 32 * v84, v106);

        if (swift_dynamicCast())
        {
          v87 = v104;
          v88 = v105;
          String.LocalizationValue.init(_:)();
          v89 = String._bridgeToObjectiveC()();
          v90 = [objc_opt_self() bundleWithIdentifier:v89];

          static Locale.current.getter();
          v91 = String.init(localized:table:bundle:locale:comment:)();
          v93 = v92;
          v94 = type metadata accessor for AuthenticationErrorAlertDetails();
          v95 = objc_allocWithZone(v94);
          *&v95[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
          v96 = &v95[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
          *v96 = v91;
          v96[1] = v93;
          v97 = &v95[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
          *v97 = v87;
          *(v97 + 1) = v88;
          v103.receiver = v95;
          v103.super_class = v94;
          v98 = a1;
          return objc_msgSendSuper2(&v103, "init");
        }

        return 0;
      }
    }

    else
    {
    }

    return 0;
  }

  if (v10 > -7094)
  {
    if (v10 != -7093)
    {
      if (v10 == -7043)
      {
        String.LocalizationValue.init(_:)();
        v32 = String._bridgeToObjectiveC()();
        v33 = objc_opt_self();
        v34 = [v33 bundleWithIdentifier:v32];

        static Locale.current.getter();
        v35 = String.init(localized:table:bundle:locale:comment:)();
        v37 = v36;
        String.LocalizationValue.init(_:)();
        v38 = String._bridgeToObjectiveC()();
        v39 = [v33 bundleWithIdentifier:v38];

        static Locale.current.getter();
        v40 = String.init(localized:table:bundle:locale:comment:)();
        v42 = v41;
        v43 = type metadata accessor for AuthenticationErrorAlertDetails();
        v44 = objc_allocWithZone(v43);
        *&v44[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
        v45 = &v44[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
        *v45 = v35;
        v45[1] = v37;
        v46 = &v44[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
        *v46 = v40;
        v46[1] = v42;
        v102.receiver = v44;
        v102.super_class = v43;
        v47 = a1;
        return objc_msgSendSuper2(&v102, "init");
      }

      goto LABEL_24;
    }

    v28 = "OHIBITED_TITLE_REBRAND";
    v29 = 0xD000000000000036;
    v30 = 0x80000001002AC9D0;
    v31 = 0xD000000000000030;
  }

  else
  {
    if (v10 == -7100)
    {
      return sub_100227734(a1);
    }

    if (v10 != -7094)
    {
      goto LABEL_24;
    }

    v28 = "INGS_REDIRECT_TITLE";
    v29 = 0xD000000000000033;
    v30 = 0x80000001002AC950;
    v31 = 0xD000000000000035;
  }

  return sub_10022742C(a1, v29, v30, v31, v28 | 0x8000000000000000, a2, a3);
}

id sub_100228560(void *a1)
{
  v2 = [a1 userInfo];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {
LABEL_8:

    goto LABEL_9;
  }

  v6 = sub_10023A350(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  sub_1000087A8(*(v3 + 56) + 32 * v6, v29);

  if (swift_dynamicCast())
  {
    v10 = v27;
    v9 = v28;
    v11 = [a1 userInfo];
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v12 + 16))
    {
      v15 = sub_10023A350(v13, v14);
      v17 = v16;

      if (v17)
      {
        sub_1000087A8(*(v12 + 56) + 32 * v15, v29);

        if (swift_dynamicCast())
        {
          v18 = v27;
          v19 = v28;
          v20 = type metadata accessor for AuthenticationErrorAlertDetails();
          v21 = objc_allocWithZone(v20);
          *&v21[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
          v22 = &v21[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
          *v22 = v10;
          *(v22 + 1) = v9;
          v23 = &v21[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
          *v23 = v18;
          *(v23 + 1) = v19;
          v26.receiver = v21;
          v26.super_class = v20;
          v24 = a1;
          return objc_msgSendSuper2(&v26, "init");
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    goto LABEL_8;
  }

  return 0;
}

id sub_10022878C(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(_:)();
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 bundleWithIdentifier:v6];

  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  String.LocalizationValue.init(_:)();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v7 bundleWithIdentifier:v12];

  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v17 = type metadata accessor for AuthenticationErrorAlertDetails();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR___AKAuthenticationErrorAlertDetails_error] = a1;
  v19 = &v18[OBJC_IVAR___AKAuthenticationErrorAlertDetails_title];
  *v19 = v9;
  v19[1] = v11;
  v20 = &v18[OBJC_IVAR___AKAuthenticationErrorAlertDetails_message];
  *v20 = v14;
  v20[1] = v16;
  v23.receiver = v18;
  v23.super_class = v17;
  v21 = a1;
  return objc_msgSendSuper2(&v23, "init");
}

id sub_1002289E0(void *a1, uint64_t a2, void *a3)
{
  v6 = [a1 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  result = sub_100227B68(a1, a2, a3);
  if (result)
  {
    return result;
  }

LABEL_10:
  v14 = [a1 domain];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      result = sub_100228560(a1);
      if (!result)
      {

        return sub_10022878C(a1);
      }

      return result;
    }
  }

  return sub_1002271DC(a1);
}

unint64_t sub_100228BAC()
{
  result = qword_100374110;
  if (!qword_100374110)
  {
    sub_1001AD440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374110);
  }

  return result;
}

id URLBagFeatureFlag.__allocating_init(urlBagKey:urlBagProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *&v9[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus] = 0;
  *&v9[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask] = 0;
  *&v9[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey] = a1;
  v12 = &v9[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider];
  *v12 = a2;
  *(v12 + 1) = a3;
  v14.receiver = v9;
  v14.super_class = v3;
  return objc_msgSendSuper2(&v14, "init");
}

unint64_t URLBagFeatureStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_100228D20()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100228D94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_100228DD8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_100228E10()
{
  result = [objc_opt_self() sharedBag];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id URLBagFeatureFlag.init(urlBagKey:urlBagProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus] = 0;
  *&v3[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask] = 0;
  *&v3[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey] = a1;
  v9 = &v3[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for URLBagFeatureFlag();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t type metadata accessor for URLBagFeatureFlag()
{
  result = qword_100374180;
  if (!qword_100374180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t URLBagFeatureFlag.fetchURL()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100229124;

  return sub_100229218(a1);
}

uint64_t sub_100229124()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100229218(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002292B4, v1, 0);
}

uint64_t sub_1002292B4()
{
  v1 = v0[6];
  if (*(v1 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus))
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
    swift_beginAccess();
    sub_10022B9AC(v1 + v3, v2);
    v4 = v0[7];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask;
    v8 = *(v1 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask);
    v0[8] = v8;
    if (v8)
    {
      v9 = async function pointer to Task.value.getter[1];

      v10 = swift_task_alloc();
      v0[9] = v10;
      v11 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
      v12 = sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      *v10 = v0;
      v13 = sub_100229574;
    }

    else
    {
      v14 = v0[7];
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
      v16 = sub_10022BA1C();
      v17 = swift_allocObject();
      v17[2] = v1;
      v17[3] = v16;
      v17[4] = v1;
      swift_retain_n();
      v8 = sub_1001FD624(0, 0, v14, &unk_10029F500, v17);
      v0[11] = v8;
      v18 = *(v1 + v7);
      *(v1 + v7) = v8;

      v19 = async function pointer to Task.value.getter[1];
      v10 = swift_task_alloc();
      v0[12] = v10;
      v11 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
      v12 = sub_1001AD17C(&qword_100373250, qword_10029D0B0);
      *v10 = v0;
      v13 = sub_10022970C;
    }

    v10[1] = v13;
    v20 = v0[5];

    return Task.value.getter(v20, v8, v11, v12, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100229574()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1002298A4;
  }

  else
  {
    v6 = sub_1002296A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002296A0()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10022970C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100229910;
  }

  else
  {
    v6 = sub_100229838;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100229838()
{
  v1 = v0[11];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002298A4()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100229910()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100229AF4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(sub_1001AD17C(&qword_100372298, &qword_10029CF30) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a1);

  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_100229BFC;

  return sub_100229218(v5);
}

uint64_t sub_100229BFC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    v6 = v2[5];
    v7 = _convertErrorToNSError(_:)();

    (v6)[2](v6, 0, v7);

    _Block_release(v6);
  }

  else
  {
    v8 = v2[3];
    sub_1001FFB70(v2[4], v8);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v8, 1, v9);
    v13 = 0;
    if (v11 != 1)
    {
      v14 = v2[3];
      URL._bridgeToObjectiveC()(v12);
      v13 = v15;
      (*(v10 + 8))(v14, v9);
    }

    v16 = v2[5];
    (v16)[2](v16, v13, 0);
    _Block_release(v16);
  }

  v18 = v2[3];
  v17 = v2[4];

  v19 = *(v5 + 8);

  return v19();
}

uint64_t URLBagFeatureFlag.featureStatus()()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_1001AD17C(&qword_100372298, &qword_10029CF30) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100229ECC, v0, 0);
}

uint64_t sub_100229ECC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus;
  v0[4] = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[3];

    v5 = v0[1];

    return v5(v3);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_100229FB8;
    v9 = v0[2];
    v8 = v0[3];

    return sub_100229218(v8);
  }
}

uint64_t sub_100229FB8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_10022A14C;
  }

  else
  {
    v6 = *(v2 + 16);
    sub_1001F2EFC(*(v2 + 24));
    v5 = sub_10022A0DC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10022A0DC()
{
  v1 = v0[3];
  v2 = *(v0[2] + v0[4]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10022A14C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_10022A328(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10022A3D0;

  return URLBagFeatureFlag.featureStatus()();
}

uint64_t sub_10022A3D0(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

void URLBagFeatureFlag.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void URLBagFeatureFlag.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t URLBagFeatureFlag.deinit()
{
  sub_1001F2EFC(v0 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL);

  v1 = *(v0 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider + 8);

  v2 = *(v0 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t URLBagFeatureFlag.__deallocating_deinit()
{
  sub_1001F2EFC(v0 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL);

  v1 = *(v0 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider + 8);

  v2 = *(v0 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10022A6FC()
{
  result = qword_100374140;
  if (!qword_100374140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374140);
  }

  return result;
}

unint64_t sub_10022A754()
{
  result = qword_100374148;
  if (!qword_100374148)
  {
    sub_1001C5270(&qword_100374150, &qword_10029F3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374148);
  }

  return result;
}

void sub_10022A7DC()
{
  sub_10022A8A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10022A8A8()
{
  if (!qword_100374190)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100374190);
    }
  }
}

uint64_t sub_10022A900()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10022A9AC;

  return sub_10022A328(v2, v3);
}

uint64_t sub_10022A9AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10022AAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a1;
  v4[22] = a4;
  v6 = *(*(sub_1001AD17C(&qword_100372298, &qword_10029CF30) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[26] = v7;
  v8 = *(v7 - 8);
  v4[27] = v8;
  v9 = *(v8 + 64) + 15;
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_10022ABB4, a4, 0);
}

uint64_t sub_10022ABB4()
{
  v21 = v0;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = type metadata accessor for Logger();
  v0[29] = sub_1001AD2E4(v2, static Logger.akd);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v8 = *(v5 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = sub_10024B050(v9, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching feature flag URL from URL bag for key: %s. Feature is disabled", v6, 0xCu);
    sub_1001AD48C(v7);
  }

  v12 = v0[25];
  v13 = v0[22];
  v14 = *(v13 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider + 8);
  v16 = (*(v13 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider))(v15);
  v0[30] = v16;
  v17 = *(v13 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey);
  v0[31] = v17;
  v0[2] = v0;
  v0[7] = v12;
  v0[3] = sub_10022AE40;
  v18 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_1003734D0, &qword_10029F510);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100011570;
  v0[13] = &unk_100329390;
  v0[14] = v18;
  [v16 urlForKey:v17 fromCache:1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022AE40()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = sub_10022B450;
  }

  else
  {
    v5 = sub_10022AF60;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10022AF60()
{
  v56 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  sub_1001FFB70(v0[25], v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v6 = v0[29];
  v5 = v0[30];
  if (v4 != 1)
  {
    v24 = v0[22];
    v54 = *(v0[27] + 32);
    v54(v0[28], v0[24], v0[26]);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[31];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v55[0] = v29;
      *v28 = 136315138;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = sub_10024B050(v30, v31, v55);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "URL Found for key: %s. Feature is Enabled.", v28, 0xCu);
      sub_1001AD48C(v29);
    }

    v34 = v0[27];
    v33 = v0[28];
    v35 = v0[26];
    v37 = v0[22];
    v36 = v0[23];
    v38 = v0[21];
    (*(v34 + 16))(v36, v33, v35);
    v22 = *(v34 + 56);
    v22(v36, 0, 1, v35);
    v39 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
    swift_beginAccess();
    sub_10022BC1C(v36, v37 + v39);
    swift_endAccess();
    *(v37 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus) = 1;
    v54(v38, v33, v35);
    v23 = 0;
    goto LABEL_11;
  }

  sub_1001F2EFC(v0[24]);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetch succeeded but there was no URL in the bag.", v9, 2u);
  }

  [objc_opt_self() ak_errorWithCode:-7122];
  swift_willThrow();
  v10 = _convertErrorToNSError(_:)();
  if ([v10 ak_isAuthenticationErrorWithCode:-7097])
  {
    v11 = v0[29];
    v12 = v0[22];

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[31];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v55[0] = v17;
      *v16 = 136315138;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = sub_10024B050(v18, v19, v55);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "No URL Found for key: %s. Feature is Disabled.", v16, 0xCu);
      sub_1001AD48C(v17);
    }

    v21 = v0[27];
    *(v0[22] + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus) = 2;
    v22 = *(v21 + 56);
    v23 = 1;
LABEL_11:
    v40 = v0[28];
    v41 = v0[25];
    v43 = v0[23];
    v42 = v0[24];
    v44 = v0[22];
    v22(v0[21], v23, 1, v0[26]);
    v45 = *(v44 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask);
    *(v44 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask) = 0;

    v46 = v0[1];
    goto LABEL_13;
  }

  v47 = v0[28];
  v49 = v0[24];
  v48 = v0[25];
  v51 = v0[22];
  v50 = v0[23];
  swift_willThrow();

  v52 = *(v51 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask);
  *(v51 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask) = 0;

  v46 = v0[1];
LABEL_13:

  return v46();
}

uint64_t sub_10022B450()
{
  v31 = v0;
  v1 = v0[32];
  v2 = v0[30];
  swift_willThrow();

  v3 = v0[32];
  v4 = _convertErrorToNSError(_:)();
  if ([v4 ak_isAuthenticationErrorWithCode:-7097])
  {
    v5 = v0[29];
    v6 = v0[22];

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[31];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315138;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = sub_10024B050(v12, v13, &v30);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "No URL Found for key: %s. Feature is Disabled.", v10, 0xCu);
      sub_1001AD48C(v11);
    }

    v15 = v0[27];
    *(v0[22] + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus) = 2;
    v16 = v0[28];
    v17 = v0[25];
    v19 = v0[23];
    v18 = v0[24];
    v20 = v0[22];
    (*(v15 + 56))(v0[21], 1, 1, v0[26]);
    v21 = *(v20 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask);
    *(v20 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask) = 0;

    v22 = v0[1];
  }

  else
  {
    v23 = v0[28];
    v25 = v0[24];
    v24 = v0[25];
    v27 = v0[22];
    v26 = v0[23];
    swift_willThrow();

    v28 = *(v27 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask);
    *(v27 + OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask) = 0;

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_10022B6BC()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10022B6FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10022BC90;

  return sub_100229AF4(v2, v3);
}

uint64_t sub_10022B7A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10022BC94;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_10022B868()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10022B8A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10022BC98;

  return sub_1000099A4(a1, v4, v5, v7);
}

id sub_10022B974()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_10022B9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10022BA1C()
{
  result = qword_100374198;
  if (!qword_100374198)
  {
    type metadata accessor for URLBagFeatureFlag();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100374198);
  }

  return result;
}

uint64_t sub_10022BA74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10022BB28;

  return sub_10022AAA0(a1, v4, v5, v6);
}

uint64_t sub_10022BB28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10022BC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall String.localized(withName:)(Swift::String_optional withName)
{
  object = withName.value._object;
  countAndFlagsBits = withName.value._countAndFlagsBits;
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);

  if (object)
  {

    String.LocalizationValue.init(_:)();
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() bundleWithIdentifier:v7];

    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_1001AD17C(&qword_100373840, &qword_10029E780);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10029BEB0;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_10022C084();
    *(v9 + 32) = countAndFlagsBits;
    *(v9 + 40) = object;
  }

  else
  {
    v10._countAndFlagsBits = 0x454D414E4F4E5FLL;
    v10._object = 0xE700000000000000;
    String.append(_:)(v10);
    String.LocalizationValue.init(_:)();
    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() bundleWithIdentifier:v11];

    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v13 = String.init(format:_:)();
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t String.localized.getter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);

  String.LocalizationValue.init(_:)();
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() bundleWithIdentifier:v4];

  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

unint64_t sub_10022C084()
{
  result = qword_1003741A0;
  if (!qword_1003741A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003741A0);
  }

  return result;
}

uint64_t String.localized(with:)()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);

  String.LocalizationValue.init(_:)();
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() bundleWithIdentifier:v4];

  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();

  v6 = String.init(format:_:)();

  return v6;
}

uint64_t sub_10022C26C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100232370(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10022C388(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}