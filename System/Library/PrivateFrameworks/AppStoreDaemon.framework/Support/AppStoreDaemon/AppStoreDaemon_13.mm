uint64_t sub_10018E5DC(uint64_t a1)
{
  v2 = sub_100085D40(&unk_10059CDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018E644(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10018E698(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  return _swift_task_switch(sub_10018E6BC, 0, 0);
}

uint64_t sub_10018E6BC()
{
  *(v0 + 232) = NSDictionary.makeIterator()();
  NSDictionary.Iterator.next()();
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v2;
  if (*(v0 + 40))
  {
    v7 = *(v0 + 208);
    sub_1000828A8((v0 + 16), (v0 + 144));
    sub_1000828A8((v0 + 48), (v0 + 176));
    v3 = swift_task_alloc();
    *(v0 + 240) = v3;
    *(v3 + 16) = v7;
    *(v3 + 32) = v0 + 144;
    *(v3 + 40) = v0 + 176;
    v4 = swift_task_alloc();
    *(v0 + 248) = v4;
    *v4 = v0;
    v4[1] = sub_10018E858;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 256, 0, 0, 0xD00000000000002ELL, 0x8000000100452960, sub_10018F0EC, v3, &type metadata for Bool);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10018E858()
{

  return _swift_task_switch(sub_10018E970, 0, 0);
}

uint64_t sub_10018E970()
{
  if (*(v0 + 256))
  {

    sub_100005A00(v0 + 176);
    sub_100005A00(v0 + 144);
LABEL_8:
    v5 = *(v0 + 8);

    return v5();
  }

  sub_100005A00(v0 + 176);
  sub_100005A00(v0 + 144);
  NSDictionary.Iterator.next()();
  v1 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v1;
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  if (!*(v0 + 40))
  {

    goto LABEL_8;
  }

  v7 = *(v0 + 208);
  sub_1000828A8((v0 + 16), (v0 + 144));
  sub_1000828A8((v0 + 48), (v0 + 176));
  v3 = swift_task_alloc();
  *(v0 + 240) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v0 + 144;
  *(v3 + 40) = v0 + 176;
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *v4 = v0;
  v4[1] = sub_10018E858;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 256, 0, 0, 0xD00000000000002ELL, 0x8000000100452960, sub_10018F0EC, v3, &type metadata for Bool);
}

uint64_t sub_10018EB28(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100085D40(&qword_10059C4D8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  a2(a4, a5, sub_10017FDCC, v14);
}

uint64_t sub_10018EE20(const void *a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = _Block_copy(a1);
  v3[3] = _Block_copy(a2);
  v7 = swift_allocObject();
  v3[4] = v7;
  *(v7 + 16) = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10017FAC4;

  return sub_10018E698(sub_10018F0E4, v7);
}

uint64_t sub_10018EF18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_10018EE20(v2, v3, v4);
}

uint64_t sub_10018EFCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100005B60(a1, a1[3]);
  v9 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100005B60(a2, a2[3]);
  v10 = _bridgeAnythingToObjectiveC<A>(_:)();
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10018E644;
  v14[3] = &unk_100510CC8;
  v11 = _Block_copy(v14);
  v12 = *(a5 + 16);

  v12(a5, v9, v10, v11);
  _Block_release(v11);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_10018F0F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_10018F110()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10018F184()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unsigned __int8 *sub_10018F1C8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 2;
  if (v2 > 2)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

id sub_10018F1F0(void *a1)
{
  v2 = objc_opt_self();
  v3 = sub_1003D6590();
  if (v3)
  {
    v4 = v3;
    sub_1003D65C8(v2, 0);
    v5 = [v4 unsignedCharValue];
    if (v5)
    {
      v6 = objc_opt_self();
      v7 = objc_opt_self();
      v8 = sub_100265DEC();
      v9 = sub_1003FA53C(v6, v8);

      v10 = type metadata accessor for UpdatesContext();
      v11 = objc_allocWithZone(v10);
      v12 = &v11[OBJC_IVAR____TtC9appstored14UpdatesContext_callbackHandler];
      *v12 = 0;
      v12[1] = 0;
      v11[OBJC_IVAR____TtC9appstored14UpdatesContext_includeMetrics] = 0;
      v11[OBJC_IVAR____TtC9appstored14UpdatesContext_isVPPLookup] = 0;
      *&v11[OBJC_IVAR____TtC9appstored14UpdatesContext_reason] = 9;
      v13 = v11;
      v14 = v9;
      if (!v9)
      {
        v15 = [v7 currentProcess];
        v14 = sub_1003FA53C(v6, v15);
      }

      *&v13[OBJC_IVAR____TtC9appstored14UpdatesContext_requestToken] = v14;
      v16 = v9;
      v18 = sub_1001FBBB4(v14, v17);

      *&v13[OBJC_IVAR____TtC9appstored14UpdatesContext_logKey] = v18;
      v13[OBJC_IVAR____TtC9appstored14UpdatesContext_userInitiated] = 0;
      v19 = &v13[OBJC_IVAR____TtC9appstored14UpdatesContext_targetedItemID];
      *v19 = 0;
      v19[8] = 1;
      v24.receiver = v13;
      v24.super_class = v10;
      v20 = objc_msgSendSuper2(&v24, "init");

      [objc_msgSend(objc_opt_self() "sharedManager")];
      swift_unknownObjectRelease();
    }

    if ((v5 & 2) != 0)
    {
      objc_opt_self();
      v21 = sub_1001DFF60();
      [v21 checkStoreQueue:0 withReason:5];
    }

    if ((v5 & 4) != 0)
    {
      objc_opt_self();
      v22 = sub_1001DFF60();
      [v22 checkStoreQueue:1 withReason:5];
    }

    return [a1 setTaskCompleted];
  }

  else
  {

    return [a1 setTaskCompleted];
  }
}

void sub_10018F658(unsigned __int8 a1)
{
  v2 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v43 - v9;
  __chkstk_darwin(v8);
  v12 = v43 - v11;
  if (v2 >= 3)
  {
    LOBYTE(v45) = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v13 = objc_opt_self();
  v14 = sub_1003D6590();
  if (v14)
  {
    v15 = v14;
    [v14 unsignedCharValue];
  }

  isa = UInt8._bridgeToObjectiveC()().super.super.isa;
  sub_1003D65C8(v13, isa);

  v17 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithIdentifier:v18];

  v20 = v19;
  [v20 setRequiresProtectionClass:1];
  [v20 setPriority:2];

  v21 = [objc_opt_self() sharedScheduler];
  v45 = 0;
  v22 = [v21 submitTaskRequest:v20 error:&v45];

  if (v22)
  {
    v23 = v45;

    return;
  }

  v24 = v45;
  v25 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v45 = v25;
  swift_errorRetain();
  sub_100085D40(&unk_10059DE80);
  type metadata accessor for BGSystemTaskSchedulerError(0);
  if (swift_dynamicCast())
  {

    v26 = v44;
    v43[1] = v44;
    sub_10018FC08();
    _BridgedStoredNSError.code.getter();
    if (v43[0] == 5)
    {
      static Logger.general.getter();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v27, v28))
      {
        v10 = v12;
        goto LABEL_18;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Day lock activity has already been scheduled", v29, 2u);
      v10 = v12;
    }

    else
    {
      static Logger.general.getter();
      v36 = v26;
      v27 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v27, v37))
      {
LABEL_18:

        (*(v4 + 8))(v10, v3);

        return;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      v40 = v36;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&_mh_execute_header, v27, v37, "Scheduling day lock activity failed: %{public}@", v38, 0xCu);
      sub_100086A24(v39);
    }

    v42 = v27;

    v27 = v20;
    v20 = v42;
    goto LABEL_18;
  }

  static Logger.general.getter();
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138543362;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Scheduling day lock activity failed unexpectedly: %{public}@", v32, 0xCu);
    sub_100086A24(v33);

    v35 = v30;
  }

  else
  {
    v35 = v20;
    v20 = v30;
  }

  (*(v4 + 8))(v7, v3);
}

unint64_t sub_10018FC08()
{
  result = qword_10059BAB0;
  if (!qword_10059BAB0)
  {
    type metadata accessor for BGSystemTaskSchedulerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059BAB0);
  }

  return result;
}

uint64_t sub_10018FC60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10018FC8C()
{
  result = qword_10059EE60;
  if (!qword_10059EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059EE60);
  }

  return result;
}

uint64_t sub_10018FD8C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setNumberStyle:1];
  [v4 setFormatterBehavior:1040];
  [v4 setMinimumFractionDigits:a2];
  v5 = [v4 stringFromNumber:a1];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t sub_10018FE5C(double a1)
{
  v1 = 1.0e12;
  if (a1 >= 1.0e12 || (v1 = 1000000000.0, a1 >= 1000000000.0) || (v1 = 1000000.0, a1 >= 1000000.0) || (v1 = 1000.0, a1 >= 1000.0))
  {
    v7 = round(a1 / v1 * 10.0) / 10.0;
    v8 = objc_allocWithZone(NSNumber);

    v9 = [v8 initWithDouble:v7];
    v3 = sub_10018FD8C(v9, 0);
    v5 = v10;

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
    v3 = sub_10018FD8C(v2, 0);
    v5 = v4;

    v6 = String._bridgeToObjectiveC()();
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_10019007C(v6, v11);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100085D40(&qword_10059EE90);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100434480;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_1001900E0();
  *(v13 + 32) = v3;
  *(v13 + 40) = v5;
  v14 = String.init(format:_:)();

  return v14;
}

id sub_10019007C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = ASDLocalizedString();

  return v5;
}

unint64_t sub_1001900E0()
{
  result = qword_10059EE98;
  if (!qword_10059EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059EE98);
  }

  return result;
}

id sub_100190134()
{
  result = [objc_allocWithZone(type metadata accessor for MadBridge()) init];
  qword_1005AB190 = result;
  return result;
}

id sub_1001901C0(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() metadataFromPlistAtURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_100190408()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1001904F4;

  return static Restores.discover()();
}

uint64_t sub_1001904F4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100190630, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100190630()
{
  static Logger.restore.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed sending discover event with error: %{public}@", v3, 0xCu);
    sub_100005518(v4, &unk_10059C250);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100190900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v8 = type metadata accessor for Logger();
  v5[4] = v8;
  v5[5] = *(v8 - 8);
  v5[6] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[7] = v9;
  *v9 = v5;
  v9[1] = sub_100190A00;

  return static Restores.prioritize(app:)(a4, a5);
}

uint64_t sub_100190A00()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100190B3C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100190B3C()
{
  v18 = v0;
  static Logger.restore.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[5];
    v4 = v0[3];
    v15 = v0[4];
    v16 = v0[6];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1001AD0D8(v5, v4, &v17);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] Failed sending prioritize event with error: %{public}@", v6, 0x16u);
    sub_100005518(v7, &unk_10059C250);

    sub_100005A00(v8);

    (*(v3 + 8))(v16, v15);
  }

  else
  {
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100190D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100190E3C, 0, 0);
}

uint64_t sub_100190E3C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100085D40(&unk_10059DCD0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_100434480;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100190F20;

  return static Restores.promote(apps:)(v3);
}

uint64_t sub_100190F20()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100191064, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100191064()
{
  v18 = v0;

  static Logger.restore.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[5];
    v4 = v0[3];
    v15 = v0[4];
    v16 = v0[6];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1001AD0D8(v5, v4, &v17);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] Failed sending promotion event with error: %{public}@", v6, 0x16u);
    sub_100005518(v7, &unk_10059C250);

    sub_100005A00(v8);

    (*(v3 + 8))(v16, v15);
  }

  else
  {
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001912A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v9;
  v13[5] = v11;
  sub_10019F02C(0, 0, v8, a5, v13);
}

uint64_t sub_10019141C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_100190D7C(a1, v4, v5, v7, v6);
}

id sub_1001914DC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1001915B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001915F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100085384;

  return sub_100190900(a1, v4, v5, v7, v6);
}

uint64_t sub_1001916B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL.DirectoryHint();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100085D40(&qword_10059CE90);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  v15 = type metadata accessor for URL();
  v52 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v46 - v20;
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = objc_allocWithZone(LSApplicationRecord);

  v51 = a1;
  v55 = a2;
  v25 = sub_1001914DC(a1, a2, 1);
  v47 = v21;
  v48 = v23;
  v49 = v8;
  v50 = v18;
  v27 = v52;
  v26 = v53;
  v28 = v54;
  if ([v25 isPlaceholder])
  {
    v29 = [v25 bundleContainerURL];
    v46 = v25;
    if (v29)
    {
      v30 = v29;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = v46;
      v31 = v27;
      (*(v27 + 56))(v12, 0, 1, v15);
    }

    else
    {
      v31 = v27;
      (*(v27 + 56))(v12, 1, 1, v15);
    }

    v32 = v14;
    sub_100161EB4(v12, v14);
    v33 = (*(v31 + 48))(v14, 1, v15);
    v34 = v49;
    v35 = v50;
    if (v33 == 1)
    {

      sub_100005518(v32, &qword_10059CE90);
    }

    else
    {
      v36 = v26;
      v59 = 0xD000000000000014;
      v60 = 0x8000000100452AC0;
      (*(v26 + 104))(v49, enum case for URL.DirectoryHint.inferFromPath(_:), v28);
      sub_100003B3C();
      v37 = v47;
      URL.appending<A>(component:directoryHint:)();
      (*(v36 + 8))(v34, v28);
      v38 = v31;
      v39 = *(v31 + 8);
      v39(v32, v15);
      v40 = v48;
      (*(v38 + 32))(v48, v37, v15);
      sub_10009FAD4(0, &qword_10059EEE8);
      (*(v38 + 16))(v35, v40, v15);
      v41 = sub_1001901C0(v35);
      v42 = [v41 distributorInfo];
      if (v42)
      {
        v43 = v42;
        if (([v42 distributorIsFirstPartyApple] & 1) == 0)
        {
          v44 = [v43 distributorID];
          if (v44)
          {

            v39(v40, v15);
            return 1;
          }
        }

        v39(v40, v15);
      }

      else
      {
        v39(v40, v15);
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100191DAC(unint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  result = __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v38 = v11;
  if (a1 >> 62)
  {
LABEL_21:
    result = _CocoaArrayWrapper.endIndex.getter();
    v12 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return result;
    }
  }

  v13 = 0;
  v46 = a1 & 0xFFFFFFFFFFFFFF8;
  v47 = a1 & 0xC000000000000001;
  v14 = v5 + 1;
  *&v8 = 138412546;
  v40 = v8;
  v41 = v5 + 1;
  v42 = v4;
  v44 = v12;
  v45 = a1;
  v39 = v10;
  while (1)
  {
    if (v47)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v46 + 16))
      {
        goto LABEL_20;
      }

      v15 = *(a1 + 8 * v13 + 32);
    }

    v5 = v15;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v49 = 0;
    if (![v15 setAppAssetPromiseResponsibleClient:28 error:&v49])
    {
      break;
    }

    v48 = v13 + 1;
    v16 = v49;
    static Logger.restore.getter();
    v17 = a2;
    v18 = v5;
    v5 = v10;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49 = v43;
      *v21 = v40;
      *(v21 + 4) = v17;
      *v22 = a2;
      *(v21 + 12) = 2082;
      v23 = v17;
      v24 = [v18 identity];
      v25 = a2;
      v26 = [v24 bundleID];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_1001AD0D8(v27, v29, &v49);

      *(v21 + 14) = v30;
      a2 = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%@] [%{public}s] Error transferring coordinator asset promise", v21, 0x16u);
      sub_100005518(v22, &unk_10059C250);
      v4 = v42;

      v5 = v43;
      sub_100005A00(v43);

      v14 = v41;

      v10 = v39;
      result = (*v14)(v39, v4);
      a1 = v45;
    }

    else
    {

      result = (*v14)(v5, v4);
      a1 = v45;
      v10 = v5;
    }

    ++v13;
    if (v48 == v44)
    {
      return result;
    }
  }

  v31 = v49;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v32 = v38;
  static Logger.restore.getter();
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138543362;
    swift_errorRetain();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "Error transferring coordinator asset promise: %{public}@", v35, 0xCu);
    sub_100005518(v36, &unk_10059C250);
  }

  else
  {
  }

  return (*v14)(v32, v4);
}

void sub_1001922C0(void *a1)
{
  v2 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_100085D40(&unk_10059EED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  UUID.init()();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = [a1 identity];
  v10 = [v9 bundleID];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = sub_100118A70(0, 0, v7, v11, v13, 0, 1);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = a1;
    if ([v16 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise] && (v23 = 0, objc_msgSend(v16, "appAssetPromiseResponsibleClientWithError:", &v23) == 1))
    {
      sub_100085D40(&qword_10059C4A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100435310;
      *(inited + 32) = v16;
      v19 = v17;
      sub_100191DAC(inited, v14);
      swift_setDeallocating();
      swift_arrayDestroy();
      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      sub_10019F02C(0, 0, v4, &unk_100438990, v21);
    }

    else
    {
      v19 = v14;
      v14 = v17;
    }
  }
}

uint64_t sub_1001925E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100086B9C;

  return sub_100190408();
}

uint64_t sub_100192690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_10019277C, 0, 0);
}

uint64_t sub_10019277C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[16];
  v14 = v0[15];
  v15 = v0[14];
  v13 = v0[13];
  v6 = v0[11];
  v5 = v0[12];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v7 = *(v3 + 8);
  v0[21] = v7;
  v0[22] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  (*(v3 + 16))(v1, v2, v4);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v3 + 32))(v9 + v8, v1, v4);
  sub_100193B18(v6, v5, v13, &unk_100438AE8, v9, &qword_10059C3D0);

  sub_100193B18(v6, v5, v13, v15, v14, &qword_10059C3D0);
  v10 = swift_task_alloc();
  v0[23] = v10;
  v11 = sub_100085D40(&qword_10059EF78);
  *v10 = v0;
  v10[1] = sub_10019299C;

  return ThrowingTaskGroup.next(isolation:)(v0 + 2, 0, 0, v11);
}

uint64_t sub_10019299C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100192BAC;
  }

  else
  {
    v2 = sub_100192AB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100192AB0()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 160);
    v3 = *(v0 + 128);
    sub_1000D8B18((v0 + 16), *(v0 + 56));
    sub_100085D40(&qword_10059C3D0);
    sub_100085D40(&unk_10059DE80);
    ThrowingTaskGroup.cancelAll()();
    v1(v2, v3);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100192BAC()
{
  (*(v0 + 168))(*(v0 + 160), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100192C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v8[14] = *(v10 + 64);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_100192D0C, 0, 0);
}

uint64_t sub_100192D0C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v13 = v0[9];
  v6 = v0[7];
  v5 = v0[8];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v7 = *(v3 + 8);
  v0[17] = v7;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  (*(v3 + 16))(v1, v2, v4);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v3 + 32))(v9 + v8, v1, v4);
  sub_100193B18(v6, v5, v13, &unk_100438A88, v9, &qword_10059CEB8);

  sub_100193B18(v6, v5, v13, v15, v14, &qword_10059CEB8);
  v10 = swift_task_alloc();
  v0[19] = v10;
  v11 = sub_100085D40(&qword_10059EF38);
  *v10 = v0;
  v10[1] = sub_100192F2C;

  return ThrowingTaskGroup.next(isolation:)(v0 + 2, 0, 0, v11);
}

uint64_t sub_100192F2C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_10019314C;
  }

  else
  {
    v2 = sub_100193040;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100193040()
{
  v2 = v0[3];
  if (v2 == 1)
  {
    __break(1u);
  }

  else
  {
    v3 = v0[17];
    v4 = v0[16];
    v5 = v0[12];
    v6 = v0[2];
    sub_100085D40(&qword_10059CEB8);
    sub_100085D40(&unk_10059DE80);
    ThrowingTaskGroup.cancelAll()();
    v3(v4, v5);

    v7 = v0[1];

    v7(v6, v2);
  }
}

uint64_t sub_10019314C()
{
  (*(v0 + 136))(*(v0 + 128), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001931CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v8[14] = *(v10 + 64);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001932AC, 0, 0);
}

uint64_t sub_1001932AC()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v13 = v0[9];
  v6 = v0[7];
  v5 = v0[8];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v7 = *(v3 + 8);
  v0[17] = v7;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  (*(v3 + 16))(v1, v2, v4);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v3 + 32))(v9 + v8, v1, v4);
  sub_100193B18(v6, v5, v13, &unk_100438A00, v9, &qword_10059F6F0);

  sub_100193B18(v6, v5, v13, v15, v14, &qword_10059F6F0);
  v10 = swift_task_alloc();
  v0[19] = v10;
  v11 = sub_100085D40(&qword_10059EEF0);
  *v10 = v0;
  v10[1] = sub_1001934CC;

  return ThrowingTaskGroup.next(isolation:)(v0 + 2, 0, 0, v11);
}

uint64_t sub_1001934CC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_10019314C;
  }

  else
  {
    v2 = sub_1001935E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1001935E0()
{
  if (*(v0 + 25))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 128);
    v3 = *(v0 + 96);
    v4 = *(v0 + 24);
    v5 = *(v0 + 16);
    sub_100085D40(&qword_10059F6F0);
    sub_100085D40(&unk_10059DE80);
    ThrowingTaskGroup.cancelAll()();
    v1(v2, v3);

    v6 = *(v0 + 8);

    v6(v5, v4 & 1);
  }
}

uint64_t sub_1001936EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001937AC, 0, 0);
}

uint64_t sub_1001937AC()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = sub_10019764C(&qword_10059D460, &type metadata accessor for ContinuousClock);
  *v1 = v0;
  v1[1] = sub_1001938A0;
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v4, v0 + 16, v3, v5, v2);
}

uint64_t sub_1001938A0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_100193AB4;
  }

  else
  {
    v3 = sub_1001939E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001939E4()
{
  type metadata accessor for CancellationError();
  sub_10019764C(&qword_10059CBF0, &type metadata accessor for CancellationError);
  swift_allocError();
  CancellationError.init()();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100193AB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100193B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = v6;
  v24[0] = a2;
  v12 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v12 - 8);
  v14 = v24 - v13;
  sub_10009E3F4(a3, v24 - v13);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100005518(v14, &qword_10059C3E0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:
    v17 = 0;
    v19 = 0;
    v20 = *v8;
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  TaskPriority.rawValue.getter();
  (*(v16 + 8))(v14, v15);
  if (!*(a5 + 16))
  {
    goto LABEL_9;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v19 = v18;
  swift_unknownObjectRelease();
  v20 = *v8;
  if (a1)
  {
LABEL_4:
    swift_unknownObjectRetain();
    sub_100085D40(a6);
    v21 = (v19 | v17);
    if (v19 | v17)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v17;
      v26[3] = v19;
    }

    v25[0] = 1;
    v25[1] = v21;
    v25[2] = v20;
    if (a1 != 1)
    {
      v24[1] = 6;
      v24[2] = v25;
      v24[3] = a1;
      v24[4] = v24[0];
    }

    goto LABEL_13;
  }

LABEL_10:
  sub_100085D40(a6);
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v28[0] = 0;
    v28[1] = 0;
    v22 = v28;
    v28[2] = v17;
    v28[3] = v19;
  }

  v27[0] = 1;
  v27[1] = v22;
  v27[2] = v20;
  v26[4] = 6;
  v26[5] = v27;
  v26[6] = 0;
  v26[7] = v24[0];
LABEL_13:
  swift_task_create();
}

uint64_t sub_100193F70(uint64_t a1, void *a2, void *a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[3] = a3;
  v6[4] = a6;
  v6[2] = a2;
  v6[5] = _Block_copy(aBlock);
  v12 = a2;
  v13 = a3;
  v14 = a6;
  v15 = swift_task_alloc();
  v6[6] = v15;
  *v15 = v6;
  v15[1] = sub_100194074;

  return (sub_100196E28)(a1, v12, v13, a4);
}

uint64_t sub_100194074(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1001941F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100086B9C;

  return sub_100193F70(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1001942CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = sub_100194384;

  return sub_100195328(a4, a5, a6, a7);
}

uint64_t sub_100194384(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1001944A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_100197C28;

  return sub_100192C2C(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_10019458C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100197C28;

  return sub_100194984(a4);
}

uint64_t sub_100194624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = sub_1001946DC;

  return sub_1001960E0(a4, a5, a6, a7);
}

uint64_t sub_1001946DC(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    *(v8 + 8) = a2 & 1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100194800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_100197C30;

  return sub_1001931CC(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1001948EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100197C30;

  return sub_100194984(a4);
}

uint64_t sub_100194984(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for ContinuousClock();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001937AC, 0, 0);
}

uint64_t sub_100194A44(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 88) = a2;
  *(v4 + 32) = a1;
  sub_100085D40(&qword_10059C3E0);
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100194AE8, 0, 0);
}

uint64_t sub_100194AE8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 88);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 56) = v5;

  v8 = v5;
  v9 = sub_100085D40(&qword_10059CEB8);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *(v10 + 16) = xmmword_1004389A0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = v2;
  *(v10 + 56) = &unk_100438A60;
  *(v10 + 64) = v7;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_100194C98;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v9, v9, 0, 0, &unk_100438A70, v10, v9);
}

uint64_t sub_100194C98()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100194E28, 0, 0);
  }

  else
  {

    v4 = v2[2];
    v5 = v2[3];
    sub_100005518(v2[7], &qword_10059C3E0);

    v6 = v3[1];

    return v6(v4, v5);
  }
}

uint64_t sub_100194E28()
{

  sub_100005518(*(v0 + 56), &qword_10059C3E0);

  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t sub_100194EB4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 25) = a2;
  *(v4 + 32) = a1;
  sub_100085D40(&qword_10059C3E0);
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100194F58, 0, 0);
}

uint64_t sub_100194F58()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 25);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 56) = v5;

  v8 = v5;
  v9 = sub_100085D40(&qword_10059F6F0);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *(v10 + 16) = xmmword_1004389A0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = v2;
  *(v10 + 56) = &unk_1004389D8;
  *(v10 + 64) = v7;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_100195108;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v9, v9, 0, 0, &unk_1004389E8, v10, v9);
}

uint64_t sub_100195108()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_10019529C, 0, 0);
  }

  else
  {

    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    sub_100005518(*(v2 + 56), &qword_10059C3E0);

    v6 = *(v3 + 8);

    return v6(v4, v5);
  }
}

uint64_t sub_10019529C()
{

  sub_100005518(*(v0 + 56), &qword_10059C3E0);

  v1 = *(v0 + 8);

  return v1(0, 1);
}

uint64_t sub_100195328(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 296) = a3;
  *(v4 + 56) = a1;
  v5 = sub_100085D40(&qword_10059EF40);
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v7 = type metadata accessor for AccountCachedServerData.Error();
  *(v4 + 144) = v7;
  *(v4 + 152) = *(v7 - 8);
  *(v4 + 160) = swift_task_alloc();
  v8 = sub_100085D40(&qword_10059EF48);
  *(v4 + 168) = v8;
  *(v4 + 176) = *(v8 - 8);
  *(v4 + 184) = swift_task_alloc();
  sub_100085D40(&qword_10059EF50);
  *(v4 + 192) = swift_task_alloc();
  v9 = sub_100085D40(&qword_10059EF58);
  *(v4 + 200) = v9;
  *(v4 + 208) = *(v9 - 8);
  *(v4 + 216) = swift_task_alloc();
  v10 = sub_100085D40(&qword_10059EF60);
  *(v4 + 224) = v10;
  *(v4 + 232) = *(v10 - 8);
  *(v4 + 240) = swift_task_alloc();
  sub_100085D40(&qword_10059EF68);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_100195680, 0, 0);
}

uint64_t sub_100195680()
{
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[7];
  v8 = *(v6 + 56);
  v0[33] = v8;
  v0[34] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9 = v8(v1, 1, 1, v5);
  v7(v9);
  AsyncValueSequence.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v10 = sub_1001979B8(&qword_10059EF70, &qword_10059EF60);
  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = sub_1001957C4;
  v12 = v0[28];
  v13 = v0[24];

  return dispatch thunk of AsyncIteratorProtocol.next()(v13, v12, v10);
}

uint64_t sub_1001957C4()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_100196054;
  }

  else
  {
    v2 = sub_1001958D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001958F4()
{
  v1 = *(v0 + 192);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) == 1)
  {
    v2 = *(v0 + 72);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    static Logger.appUsage.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 72);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, v5, "[AccountCacheCoordinator/%@] Sequence abruptly ended or timed out without returning a value", v7, 0xCu);
      sub_100005518(v8, &unk_10059C250);
    }

    v10 = *(v0 + 256);
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);

    (*(v13 + 8))(v11, v12);
    if ((*(v15 + 48))(v10, 1, v14))
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
    }

    else
    {
      v35 = *(v0 + 88);
      v34 = *(v0 + 96);
      v36 = *(v0 + 80);
      (*(v35 + 16))(v34, *(v0 + 256), v36);
      AccountCachedServerData.CachedValue.value.getter();
      (*(v35 + 8))(v34, v36);
    }

    goto LABEL_21;
  }

  sub_10009E1C4(v1, *(v0 + 184), &qword_10059EF48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    v61 = *(v0 + 224);
    v19 = *(v0 + 160);
    v20 = *(v0 + 144);
    v21 = *(*(v0 + 152) + 32);
    v21(v19, *(v0 + 184), v20);
    sub_10019764C(&qword_10059EF30, &type metadata accessor for AccountCachedServerData.Error);
    swift_willThrowTypedImpl();
    swift_allocError();
    v21(v22, v19, v20);
    (*(v17 + 8))(v18, v61);
    sub_100005518(v16, &qword_10059EF68);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 264);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 80);
    v29 = *(v0 + 88);
    (*(v29 + 32))(v26, *(v0 + 184), v28);
    v25(v26, 0, 1, v28);
    sub_100197A0C(v26, v27, &qword_10059EF68);
    if (!(*(v29 + 48))(v27, 1, v28))
    {
      v37 = *(v0 + 296);
      (*(*(v0 + 88) + 16))(*(v0 + 104), *(v0 + 256), *(v0 + 80));
      if ((v37 & 1) != 0 || (AccountCachedServerData.CachedValue.isStale.getter() & 1) == 0)
      {
        v53 = *(v0 + 232);
        v52 = *(v0 + 240);
        v54 = *(v0 + 224);
        v55 = *(v0 + 104);
        v56 = *(v0 + 80);
        v57 = *(v0 + 88);
        AccountCachedServerData.CachedValue.value.getter();
        v58 = *(v0 + 32);
        v59 = *(v0 + 40);
        (*(v57 + 8))(v55, v56);
        (*(v53 + 8))(v52, v54);
        *(v0 + 16) = v58;
        *(v0 + 24) = v59;
LABEL_21:
        sub_100005518(*(v0 + 256), &qword_10059EF68);
        v62 = *(v0 + 24);
        v63 = *(v0 + 16);

        v60 = *(v0 + 8);

        return v60(v63, v62);
      }

      v38 = *(v0 + 72);
      static Logger.appUsage.getter();
      v39 = v38;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v0 + 72);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v42;
        *v44 = v42;
        v45 = v42;
        _os_log_impl(&_mh_execute_header, v40, v41, "[AccountCacheCoordinator/%@] Not using stale value)", v43, 0xCu);
        sub_100005518(v44, &unk_10059C250);
      }

      v47 = *(v0 + 120);
      v46 = *(v0 + 128);
      v49 = *(v0 + 104);
      v48 = *(v0 + 112);
      v50 = *(v0 + 80);
      v51 = *(v0 + 88);

      (*(v47 + 8))(v46, v48);
      (*(v51 + 8))(v49, v50);
    }

    v30 = sub_1001979B8(&qword_10059EF70, &qword_10059EF60);
    v31 = swift_task_alloc();
    *(v0 + 280) = v31;
    *v31 = v0;
    v31[1] = sub_1001957C4;
    v32 = *(v0 + 224);
    v33 = *(v0 + 192);

    return dispatch thunk of AsyncIteratorProtocol.next()(v33, v32, v30);
  }
}

uint64_t sub_100196054()
{
  *(v0 + 48) = *(v0 + 288);
  sub_100085D40(&unk_10059DE80);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1001960E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 25) = a3;
  *(v4 + 56) = a1;
  v5 = sub_100085D40(&qword_10059EEF8);
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v7 = type metadata accessor for AccountCachedServerData.Error();
  *(v4 + 144) = v7;
  *(v4 + 152) = *(v7 - 8);
  *(v4 + 160) = swift_task_alloc();
  v8 = sub_100085D40(&qword_10059EF00);
  *(v4 + 168) = v8;
  *(v4 + 176) = *(v8 - 8);
  *(v4 + 184) = swift_task_alloc();
  sub_100085D40(&qword_10059EF08);
  *(v4 + 192) = swift_task_alloc();
  v9 = sub_100085D40(&qword_10059EF10);
  *(v4 + 200) = v9;
  *(v4 + 208) = *(v9 - 8);
  *(v4 + 216) = swift_task_alloc();
  v10 = sub_100085D40(&qword_10059EF18);
  *(v4 + 224) = v10;
  *(v4 + 232) = *(v10 - 8);
  *(v4 + 240) = swift_task_alloc();
  sub_100085D40(&qword_10059EF20);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_100196438, 0, 0);
}

uint64_t sub_100196438()
{
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[7];
  v8 = *(v6 + 56);
  v0[33] = v8;
  v0[34] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9 = v8(v1, 1, 1, v5);
  v7(v9);
  AsyncValueSequence.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v10 = sub_1001979B8(&qword_10059EF28, &qword_10059EF18);
  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = sub_10019657C;
  v12 = v0[28];
  v13 = v0[24];

  return dispatch thunk of AsyncIteratorProtocol.next()(v13, v12, v10);
}

uint64_t sub_10019657C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_100197C2C;
  }

  else
  {
    v2 = sub_100196690;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001966AC()
{
  v1 = *(v0 + 192);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) == 1)
  {
    v2 = *(v0 + 72);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    static Logger.appUsage.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 72);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, v5, "[AccountCacheCoordinator/%@] Sequence abruptly ended or timed out without returning a value", v7, 0xCu);
      sub_100005518(v8, &unk_10059C250);
    }

    v10 = *(v0 + 256);
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);

    (*(v13 + 8))(v11, v12);
    if ((*(v15 + 48))(v10, 1, v14))
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 1;
    }

    else
    {
      v35 = *(v0 + 88);
      v34 = *(v0 + 96);
      v36 = *(v0 + 80);
      (*(v35 + 16))(v34, *(v0 + 256), v36);
      AccountCachedServerData.CachedValue.value.getter();
      (*(v35 + 8))(v34, v36);
    }

    goto LABEL_21;
  }

  sub_10009E1C4(v1, *(v0 + 184), &qword_10059EF00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    v61 = *(v0 + 224);
    v19 = *(v0 + 160);
    v20 = *(v0 + 144);
    v21 = *(*(v0 + 152) + 32);
    v21(v19, *(v0 + 184), v20);
    sub_10019764C(&qword_10059EF30, &type metadata accessor for AccountCachedServerData.Error);
    swift_willThrowTypedImpl();
    swift_allocError();
    v21(v22, v19, v20);
    (*(v17 + 8))(v18, v61);
    sub_100005518(v16, &qword_10059EF20);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 264);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v28 = *(v0 + 80);
    v29 = *(v0 + 88);
    (*(v29 + 32))(v26, *(v0 + 184), v28);
    v25(v26, 0, 1, v28);
    sub_100197A0C(v26, v27, &qword_10059EF20);
    if (!(*(v29 + 48))(v27, 1, v28))
    {
      v37 = *(v0 + 25);
      (*(*(v0 + 88) + 16))(*(v0 + 104), *(v0 + 256), *(v0 + 80));
      if ((v37 & 1) != 0 || (AccountCachedServerData.CachedValue.isStale.getter() & 1) == 0)
      {
        v53 = *(v0 + 232);
        v52 = *(v0 + 240);
        v54 = *(v0 + 224);
        v55 = *(v0 + 104);
        v56 = *(v0 + 80);
        v57 = *(v0 + 88);
        AccountCachedServerData.CachedValue.value.getter();
        v58 = *(v0 + 32);
        v59 = *(v0 + 40);
        (*(v57 + 8))(v55, v56);
        (*(v53 + 8))(v52, v54);
        *(v0 + 16) = v58;
        *(v0 + 24) = v59;
LABEL_21:
        sub_100005518(*(v0 + 256), &qword_10059EF20);
        v63 = *(v0 + 16);
        v62 = *(v0 + 24);

        v60 = *(v0 + 8);

        return v60(v63, v62);
      }

      v38 = *(v0 + 72);
      static Logger.appUsage.getter();
      v39 = v38;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v0 + 72);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v42;
        *v44 = v42;
        v45 = v42;
        _os_log_impl(&_mh_execute_header, v40, v41, "[AccountCacheCoordinator/%@] Not using stale value)", v43, 0xCu);
        sub_100005518(v44, &unk_10059C250);
      }

      v47 = *(v0 + 120);
      v46 = *(v0 + 128);
      v49 = *(v0 + 104);
      v48 = *(v0 + 112);
      v50 = *(v0 + 80);
      v51 = *(v0 + 88);

      (*(v47 + 8))(v46, v48);
      (*(v51 + 8))(v49, v50);
    }

    v30 = sub_1001979B8(&qword_10059EF28, &qword_10059EF18);
    v31 = swift_task_alloc();
    *(v0 + 280) = v31;
    *v31 = v0;
    v31[1] = sub_10019657C;
    v32 = *(v0 + 224);
    v33 = *(v0 + 192);

    return dispatch thunk of AsyncIteratorProtocol.next()(v33, v32, v30);
  }
}

uint64_t sub_100196E28(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for AccountIdentity();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100196F10, 0, 0);
}

uint64_t sub_100196F10()
{
  v1 = [*(v0 + 24) ams_accountID];
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v1)
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);
    AccountIdentity.init(amsAccountID:)();
    v7 = *(v5 + 32);
    v7(v2, v3, v4);
    type metadata accessor for AccountCachedServerData();
    result = static AccountCachedServerData.shared.getter();
    *(v0 + 88) = result;
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v9 = result;
      result = AccountCachedServerData.IntKey.init(rawValue:)();
      if ((v10 & 1) == 0)
      {
        v11 = result;
        v12 = *(v0 + 64);
        v13 = *(v0 + 40);
        v14 = *(v0 + 48);
        (*(v14 + 16))(v12, *(v0 + 80), v13);
        v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v16 = swift_allocObject();
        *(v0 + 96) = v16;
        *(v16 + 16) = v9;
        *(v16 + 24) = v11;
        v7(v16 + v15, v12, v13);
        v17 = v9;
        v18 = swift_task_alloc();
        *(v0 + 104) = v18;
        *v18 = v0;
        v18[1] = sub_100197124;
        v19 = *(v0 + 120);
        v20 = *(v0 + 32);

        return sub_100194EB4(v20, v19, sub_100197304, v16);
      }
    }

    __break(1u);
    return result;
  }

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_100197124(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 121) = a2;

  return _swift_task_switch(sub_100197248, 0, 0);
}

uint64_t sub_100197248()
{
  v1 = *(v0 + 121);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  (*(v5 + 8))(v3, v4);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_100197370(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100086B9C;

  return sub_100194624(a1, v4, v5, v6, v7, v8, v9);
}

void sub_100197454()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100086B9C;

  JUMPOUT(0x100194800);
}

uint64_t sub_100197550(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_1001948EC(a1, v6, v7, v1 + v5);
}

uint64_t sub_10019764C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100197694()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001976DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100085384;

  return sub_1001942CC(a1, v4, v5, v6, v7, v8, v9);
}

void sub_1001977C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100086B9C;

  JUMPOUT(0x1001944A0);
}

uint64_t sub_1001978BC(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_10019458C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1001979B8(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_100197A0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100085D40(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100197A74()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100197B38(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_1001936EC(a1, v6, v7, v1 + v5);
}

uint64_t sub_100197C34(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

id sub_100197CB0()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100085D40(&qword_10059EFD0);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = (v7 - 40) / 40;
  v0[2] = v6;
  sub_10011093C();
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10019DF08(&qword_10059D7B8, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100085D40(&qword_10059D7C0);
  sub_1001109D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  v0[3] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static Logger.qa.getter();
  v8 = type metadata accessor for QALogger(0);
  v11.receiver = v0;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_1001980F0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100198198;

  return sub_10019C42C();
}

uint64_t sub_100198198()
{
  v1 = *(*v0 + 16);
  v5 = *v0;

  v2 = String._bridgeToObjectiveC()();

  (v1)[2](v1, v2);

  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001982E8(void *a1)
{
  v3 = sub_100085D40(&qword_10059F2B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100005B60(a1, a1[3]);
  sub_10019E920();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  sub_10019DF08(&qword_10059F2C8, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for QALogger.Asset(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    type metadata accessor for URL();
    sub_10019DF08(&qword_10059F2D0, &type metadata accessor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001985D4()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 7107189;
  if (v1 != 5)
  {
    v3 = 0x746E6169726176;
  }

  v4 = 0x61746C65447369;
  if (v1 != 3)
  {
    v4 = 0x6C6C617261507369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 6775156;
  if (v1 != 1)
  {
    v5 = 0x79654B676F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001986A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019C93C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001986D4(uint64_t a1)
{
  v2 = sub_10019E920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198710(uint64_t a1)
{
  v2 = sub_10019E920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001988E4(void *a1)
{
  v3 = sub_100085D40(&qword_10059F2D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100005B60(a1, a1[3]);
  sub_10019E974();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  sub_10019DF08(&qword_10059F2C8, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for QALogger.LinearDownload(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100198BB0()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x6E6F697461727564;
  if (v1 != 6)
  {
    v3 = 0x6C6C617261507369;
  }

  v4 = 0x756F7268546E696DLL;
  if (v1 != 4)
  {
    v4 = 0x756F72685478616DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79654B676F6CLL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 6775156;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100198CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019D014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100198CF8(uint64_t a1)
{
  v2 = sub_10019E974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100198D34(uint64_t a1)
{
  v2 = sub_10019E974();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100198E04(void *a1)
{
  v3 = sub_100085D40(&qword_10059F2E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100005B60(a1, a1[3]);
  sub_10019E9C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  sub_10019DF08(&qword_10059F2C8, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for QALogger.Install(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100199020()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x79654B676F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 6775156;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100199094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019D5D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001990BC(uint64_t a1)
{
  v2 = sub_10019E9C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001990F8(uint64_t a1)
{
  v2 = sub_10019E9C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100199198(void *a1)
{
  v3 = sub_100085D40(&qword_10059F2F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100005B60(a1, a1[3]);
  sub_10019EA1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  sub_10019DF08(&qword_10059F2C8, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for QALogger.DisplayedSpeed(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10019940C()
{
  v1 = 0x6D617473656D6974;
  v2 = 6775156;
  if (*v0 != 1)
  {
    v2 = 0x79654B676F6CLL;
  }

  if (*v0)
  {
    v1 = v2;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1001994CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019D9CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100199500(uint64_t a1)
{
  v2 = sub_10019EA1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019953C(uint64_t a1)
{
  v2 = sub_10019EA1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100199578@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1001995E0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_100199618(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

id sub_1001996C4()
{
  if (sub_1000E3560())
  {
    type metadata accessor for QALogger(0);
    swift_allocObject();
    result = sub_100197CB0();
  }

  else
  {
    result = 0;
  }

  qword_10059EF80 = result;
  return result;
}

uint64_t sub_100199714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for QALogger(0);
  sub_10019DF08(&qword_10059EFE8, type metadata accessor for QALogger);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001997D0, v7, v6);
}

uint64_t sub_1001997D0()
{
  sub_100199830(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100199830(uint64_t a1)
{
  v2 = v1;
  sub_1000056D0(a1, v23);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v8 = v24;
    v9 = v25;
    sub_100005B60(v23, v24);
    v10 = sub_100199AD0(v8, v9);
    v12 = v11;
    sub_100005A00(v23);
    v13 = sub_1001AD0D8(v10, v12, &v22);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_100005A00(v7);
  }

  else
  {

    sub_100005A00(v23);
  }

  swift_beginAccess();
  v14 = sub_10019AAE0((v2 + 16));
  result = *(v2 + 16);
  v16 = *(result + 24);
  if (v16 < v14)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v14 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10019AED4();
  }

  sub_10019BD14(v14, v16, (*(v2 + 16) + 16), (*(v2 + 16) + 40));
  swift_endAccess();
  v17 = *(*(v2 + 16) + 24);
  if (v17 >= 50)
  {
    result = swift_beginAccess();
    if (v17 > 0x33)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10019AED4();
    }

    sub_10019B554(51 - v17, (*(v2 + 16) + 16), *(v2 + 16) + 40);
    swift_endAccess();
  }

  swift_beginAccess();
  result = *(v2 + 16);
  v18 = *(result + 24);
  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v2 + 16);
  if (*(v21 + 16) < v19 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019AF78(isUniquelyReferenced_nonNull_native, v19, 0);
    v21 = *(v2 + 16);
  }

  sub_10019B15C((v21 + 16), v21 + 40, a1);
  return swift_endAccess();
}

uint64_t sub_100199AD0(uint64_t a1, uint64_t a2)
{
  v89 = type metadata accessor for Unicode.Scalar.Properties();
  v5 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a1;
  v7 = sub_100005F38(&v97);
  v8 = *(*(a1 - 8) + 16);
  v85 = v2;
  v84 = a1;
  v8(v7, v2, a1);
  sub_100005B60(&v97, v99);
  DynamicType = swift_getDynamicType();
  sub_100005A00(&v97);
  if (*DynamicType != 512)
  {
    goto LABEL_90;
  }

  v10 = _typeName(_:qualified:)();
  v12 = v11;
  sub_100197C34(v10, v11);
  v83 = DynamicType;
  if (v13)
  {
    v14 = Character.lowercased()();

    v15 = String.index(after:)();
    v16 = sub_1000E7784(v15, v10, v12);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v92 = v14;
    DynamicType = v83;
    *&v97 = v16;
    *(&v97 + 1) = v18;
    v98 = v20;
    v99 = v22;
    sub_10009F948();
    String.append<A>(contentsOf:)();
  }

  v23 = v84;
  *&v97 = (*(a2 + 32))(v84, a2);
  *(&v97 + 1) = v24;
  v25._countAndFlagsBits = 8992;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = (*(a2 + 24))(v23, a2);
  String.append(_:)(v26);

  v27 = v97;
  v96 = v97;
  if (!Fields.endIndex.getter())
  {
    return v27;
  }

  v28 = 0;
  v29 = 0;
  v87 = (v5 + 8);
  while (1)
  {
    if (v28 >= Fields.endIndex.getter())
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      result = sub_100005518(&v92, &unk_10059CC50);
      __break(1u);
LABEL_96:
      __break(1u);
      return result;
    }

    v33 = Field.name.getter();
    v35 = v34;
    v94 = v33;
    v95 = v34;
    *&v97 = v33;
    *(&v97 + 1) = v34;
    __chkstk_darwin(v33);
    *(&v80 - 2) = &v97;

    v36 = sub_10019A910(sub_1000E772C, (&v80 - 4), &off_100509CA8);
    swift_arrayDestroy();

    if (v36)
    {
      goto LABEL_9;
    }

    v37 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v37 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      break;
    }

LABEL_76:
    v73 = Field.type.getter();
    sub_10019B844(v73, v28, DynamicType);
    swift_getAtAnyKeyPath();

    if (!v93)
    {
      goto LABEL_95;
    }

    sub_1000828A8(&v92, &v97);
    sub_10009F6D0(&v97, &v92);
    sub_100005B60(&v92, v93);
    swift_getDynamicType();
    sub_100005A00(&v92);
    v74 = Type.partial.getter();
    sub_100085D40(&qword_10059EFC8);
    v75 = Type.partial.getter();
    if (v74)
    {
      if (v75 && v74 == v75)
      {
LABEL_80:
        sub_10009F6D0(&v97, &v92);
        result = Case.init(from:)();
        if (!result)
        {
          goto LABEL_96;
        }

        if (Case.hasPayload.getter())
        {
          Case.get(from:)();
          if (v91)
          {
            sub_1000828A8(&v90, &v92);
            v90._countAndFlagsBits = 0;
            v90._object = 0xE000000000000000;
            v77._countAndFlagsBits = 10;
            v77._object = 0xE100000000000000;
            String.append(_:)(v77);
            v78 = String.lowercased()();
            String.append(_:)(v78);

            v79._countAndFlagsBits = 2112800;
            v79._object = 0xE300000000000000;
            String.append(_:)(v79);
            sub_100005B60(&v92, v93);
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            String.append(_:)(v90);

            sub_100005A00(&v92);
          }

          else
          {
            sub_100005518(&v90, &unk_10059CC50);
          }
        }

        goto LABEL_8;
      }
    }

    else if (!v75)
    {
      goto LABEL_80;
    }

    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    v30._countAndFlagsBits = 10;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v31 = String.lowercased()();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 2112800;
    v32._object = 0xE300000000000000;
    String.append(_:)(v32);
    sub_100005B60(&v97, v99);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    String.append(_:)(v92);

LABEL_8:
    sub_100005A00(&v97);
LABEL_9:
    ++v28;

    if (v28 == Fields.endIndex.getter())
    {
      return v96;
    }
  }

  v81 = v29;
  v82 = v28;

  v86 = v35;
  while (1)
  {
    v38 = String.index(before:)();
    v39 = v94;
    v40 = v95;
    v41 = String.index(after:)();
    v42 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v41 >> 14 >= 4 * v42)
    {
      goto LABEL_17;
    }

    v43 = String.subscript.getter();
    v45 = (v44 & 0x2000000000000000) != 0 ? HIBYTE(v44) & 0xF : v43 & 0xFFFFFFFFFFFFLL;
    if (!v45)
    {
      break;
    }

    v46 = v43;
    v47 = v44;
    if ((v44 & 0x1000000000000000) != 0)
    {
      v52 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      if ((v44 & 0x2000000000000000) != 0)
      {
        v49 = v43;
      }

      else
      {
        if ((v43 & 0x1000000000000000) != 0)
        {
          v48 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v48 = _StringObject.sharedUTF8.getter();
        }

        v49 = *v48;
      }

      v50 = v49;
      v51 = (__clz(~v49) - 24) << 16;
      if (v50 < 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = 65541;
      }
    }

    v53 = 4 * v45;
    if (4 * v45 == v52 >> 14)
    {
      if ((sub_10019B6F4(v46, v47) & 0x100000000) != 0)
      {
        goto LABEL_91;
      }

      v54 = v88;
      Unicode.Scalar.properties.getter();
      v55 = Unicode.Scalar.Properties.isLowercase.getter();
      (*v87)(v54, v89);
      if (v55)
      {
        goto LABEL_50;
      }
    }

    if ((Character._isLowercased.getter() & 1) == 0)
    {

LABEL_42:
      String.subscript.getter();
      v56 = Character.isNumber.getter();

      if ((v56 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }

    if ((v47 & 0x1000000000000000) != 0)
    {
      if (v53 != String.UnicodeScalarView._foreignIndex(after:)() >> 14)
      {
        goto LABEL_47;
      }
    }

    else if (v53 != ((4 * _StringGuts.fastUTF8ScalarLength(startingAt:)(0)) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_47;
    }

    if ((sub_10019B6F4(v46, v47) & 0x100000000) != 0)
    {
      goto LABEL_93;
    }

    v57 = v88;
    Unicode.Scalar.properties.getter();
    v58 = Unicode.Scalar.Properties.isCased.getter();
    (*v87)(v57, v89);
    if (v58)
    {
LABEL_50:

      goto LABEL_51;
    }

LABEL_47:
    if ((Character._isUppercased.getter() & 1) == 0)
    {
      goto LABEL_50;
    }

    v59 = Character._isLowercased.getter();

    if (v59)
    {
      goto LABEL_42;
    }

LABEL_51:
    v60 = String.subscript.getter();
    if ((v61 & 0x2000000000000000) != 0)
    {
      v62 = HIBYTE(v61) & 0xF;
    }

    else
    {
      v62 = v60 & 0xFFFFFFFFFFFFLL;
    }

    if (!v62)
    {
      goto LABEL_86;
    }

    v63 = v60;
    v64 = v61;
    if ((v61 & 0x1000000000000000) != 0)
    {
      v65 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v65 = _StringGuts.fastUTF8ScalarLength(startingAt:)(0) << 16;
    }

    v66 = 4 * v62;
    if (4 * v62 == v65 >> 14)
    {
      if ((sub_10019B6F4(v63, v64) & 0x100000000) != 0)
      {
        goto LABEL_92;
      }

      v67 = v88;
      Unicode.Scalar.properties.getter();
      v68 = Unicode.Scalar.Properties.isUppercase.getter();
      (*v87)(v67, v89);
      if (v68)
      {
LABEL_70:

LABEL_71:
        String.insert(_:at:)();
        goto LABEL_17;
      }
    }

    if ((Character._isUppercased.getter() & 1) == 0)
    {

      goto LABEL_17;
    }

    v69 = sub_10019B90C(0xFuLL, v63, v64);
    if ((v64 & 0x1000000000000000) != 0)
    {
      if (v66 != String.UnicodeScalarView._foreignIndex(after:)() >> 14)
      {
        goto LABEL_67;
      }
    }

    else if (v66 != ((4 * (_StringGuts.fastUTF8ScalarLength(startingAt:)(v69 >> 16) + (v69 >> 16))) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_67;
    }

    if ((sub_10019B6F4(v63, v64) & 0x100000000) != 0)
    {
      goto LABEL_94;
    }

    v70 = v88;
    Unicode.Scalar.properties.getter();
    v71 = Unicode.Scalar.Properties.isCased.getter();
    (*v87)(v70, v89);
    if (v71)
    {
      goto LABEL_70;
    }

LABEL_67:
    if ((Character._isUppercased.getter() & 1) == 0)
    {
      goto LABEL_70;
    }

    v72 = Character._isLowercased.getter();

    if ((v72 & 1) == 0)
    {
      goto LABEL_71;
    }

LABEL_17:
    if (!(v38 >> 14))
    {

      DynamicType = v83;
      v28 = v82;
      v29 = v81;
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
  return v96;
}

uint64_t sub_10019A540()
{

  v1 = OBJC_IVAR____TtC9appstored8QALogger_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10019A624()
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

uint64_t sub_10019A6F4(void *a1, uint64_t a2)
{
  sub_100005B60(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v4 = (a2 + 32);
  v5 = *(a2 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 5;
    sub_100005B60(v4, v4[3]);
    sub_1000D7184(v8, v9);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v4 = v6;
  }

  while (!v2);
  return sub_100005A00(v8);
}

uint64_t sub_10019A7E8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10019A910(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10019A9BC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10019AA64(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10019AAE0(void *a1)
{
  v50 = type metadata accessor for Date();
  v2 = __chkstk_darwin(v50);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v2);
  v7 = &v45 - v6;
  v8 = *a1;
  v10 = (*a1 + 24);
  v9 = *v10;
  if (*v10)
  {
    v46 = a1;
    v47 = v10;
    v11 = 0;
    v48 = v8 + 5;
    v12 = (v5 + 8);
    while (1)
    {
      if (v11 >= v9)
      {
        __break(1u);
        goto LABEL_37;
      }

      v13 = v8[4];
      v14 = v11 + v13 >= v8[2] ? v8[2] : 0;
      sub_1000056D0(&v48[5 * v11 + 5 * (v13 - v14)], &v51);
      static Date.now.getter();
      v15 = v52;
      v16 = v53;
      sub_100005B60(&v51, v52);
      v17 = v49;
      (*(v16 + 16))(v15, v16);
      Date.timeIntervalSince(_:)();
      v19 = v18;
      v20 = *v12;
      v21 = v50;
      (*v12)(v17, v50);
      v20(v7, v21);
      result = sub_100005A00(&v51);
      v22 = v11 + 1;
      v9 = v8[3];
      if (v19 >= 3600.0)
      {
        break;
      }

      ++v11;
      if (v22 == v9)
      {
        return v22;
      }
    }

    if (v22 == v9)
    {
      return v11;
    }

    v23 = v11 + 1;
    v22 = v11;
    while ((v23 - 1) >= -1)
    {
      if (v23 >= v9)
      {
        goto LABEL_38;
      }

      v24 = v8[4];
      if ((v23 + v24) >= v8[2])
      {
        v25 = v8[2];
      }

      else
      {
        v25 = 0;
      }

      v48 = v8;
      sub_1000056D0(&v8[5 * v23 + 5 + 5 * (v24 - v25)], &v51);
      static Date.now.getter();
      v26 = v52;
      v27 = v53;
      sub_100005B60(&v51, v52);
      v28 = v12;
      v29 = v7;
      v30 = v49;
      (*(v27 + 16))(v26, v27);
      Date.timeIntervalSince(_:)();
      v32 = v31;
      v33 = v30;
      v7 = v29;
      v12 = v28;
      v34 = v50;
      v20(v33, v50);
      v20(v7, v34);
      result = sub_100005A00(&v51);
      if (v32 >= 3600.0)
      {
        v8 = v48;
      }

      else
      {
        v35 = v46;
        if (v22 < 0)
        {
          goto LABEL_39;
        }

        if (v22 >= *v47)
        {
          goto LABEL_40;
        }

        if (v23 >= *v47)
        {
          goto LABEL_41;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10019AED4();
        }

        v8 = *v35;
        v36 = *(*v35 + 32);
        v37 = *(*v35 + 16);
        if (v36 + v22 >= v37)
        {
          v38 = *(*v35 + 16);
        }

        else
        {
          v38 = 0;
        }

        v39 = v36 + v22 - v38;
        if ((v23 + v36) < v37)
        {
          v37 = 0;
        }

        v40 = v23 + v36 - v37;
        if (v40 != v39)
        {
          v41 = &v8[5 * v39 + 5];
          v42 = &v8[5 * v40 + 5];
          sub_1000056B8(v41, &v51);
          v43 = *(v42 + 32);
          v44 = *(v42 + 16);
          *v41 = *v42;
          *(v41 + 16) = v44;
          *(v41 + 32) = v43;
          result = sub_1000056B8(&v51, v42);
        }

        ++v22;
      }

      ++v23;
      v9 = v8[3];
      v47 = v8 + 3;
      if (v23 == v9)
      {
        return v22;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_10019AED4()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_100085D40(&qword_10059EFD0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_10019B43C(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_10019AF78(char a1, Swift::Int a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    sub_100085D40(&qword_10059EFD0);
    v11 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v11 + 16) = v6;
    *(v11 + 24) = v12;
    if (v12 >= 1)
    {
      sub_10019B43C(v11 + 16, v11 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_100085D40(&qword_10059EFD8);
    Deque._Storage._growCapacity(to:linearly:)(a2, a3 & 1);
    if (a1)
    {
      v10 = *(v4 + 24);
      sub_100085D40(&qword_10059EFD0);
      v11 = swift_allocObject();
      *(v11 + 16) = (j__malloc_size(v11) - 40) / 40;
      *(v11 + 24) = v10;
      *(v11 + 32) = 0;
      if (v10 >= 1)
      {
        sub_10019B1E8(v11 + 16, (v11 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      sub_100085D40(&qword_10059EFD0);
      v11 = swift_allocObject();
      v13 = j__malloc_size(v11);
      v14 = *(v4 + 24);
      *(v11 + 16) = (v13 - 40) / 40;
      *(v11 + 24) = v14;
      *(v11 + 32) = 0;
      if (v14 >= 1)
      {
        sub_10019B328(v11 + 16, v11 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v11;
  return result;
}

void *sub_10019B15C(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v7 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v7)
  {
    v6 = result;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v7))
      {
LABEL_9:
        result = sub_1000056D0(a3, a2 + 40 * v5);
        v8 = v6[1];
        v7 = __OFADD__(v8, 1);
        v9 = v8 + 1;
        if (!v7)
        {
          v6[1] = v9;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v7 = __OFADD__(v5, *result);
      v5 += *result;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_10019B1E8(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[40 * v4];
  if (v12 != __dst || &v12[40 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 40 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[40 * v8];
  if (v16 != v11 || v16 >= &v11[40 * v7])
  {

    memmove(v16, v11, 40 * v7);
  }
}

uint64_t sub_10019B328(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      sub_100085D40(&qword_10059EFD8);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      sub_100085D40(&qword_10059EFD8);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019B43C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      sub_100085D40(&qword_10059EFD8);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      sub_100085D40(&qword_10059EFD8);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019B554(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result >= 1)
  {
    v4 = result;
    result = sub_10019B678(0, result, a2, a3, v13);
    if (v13[3])
    {
      v5 = v14;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v13[2];
    }

    if (v13[0])
    {
      sub_100085D40(&qword_10059EFD8);
      result = swift_arrayDestroy();
    }

    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      sub_100085D40(&qword_10059EFD8);
      result = swift_arrayDestroy();
    }

    v8 = a2[2];
    v10 = __OFADD__(v8, v4);
    v9 = v8 + v4;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v10 = __OFSUB__(v9, *a2);
      if (v9 >= *a2)
      {
        v9 -= *a2;
        if (v10)
        {
          goto LABEL_23;
        }
      }

      a2[2] = v9;
      v11 = a2[1];
      v10 = __OFSUB__(v11, v4);
      v12 = v11 - v4;
      if (!v10)
      {
        a2[1] = v12;
        return result;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019B678@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 40 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019B6F4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10019B90C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

uint64_t sub_10019B844(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (Field.isVar.getter())
  {
    v4 = *a3;
    if (*a3 - 2048) < 0xFFFFFFFFFFFFF801 || ((v6 = static Metadata.Kind.objcClassWrapper.getter(), v6 < 0x800) ? (v7 = v6 == v4) : (v7 = 0), !v7 ? (v8 = 0) : (v8 = 1), (v4 - 515) < 2 || (v8))
    {
      type metadata accessor for ReferenceWritableKeyPath();
    }

    else
    {
      type metadata accessor for WritableKeyPath();
    }
  }

  else
  {
    type metadata accessor for KeyPath();
  }

  return static KeyPath.create(for:)();
}

unint64_t sub_10019B90C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10019B9A4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10019BA18(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10019B9A4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10019AA64(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10019BA18(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_10019BB3C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_10019BB94(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = result[1];
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (__OFSUB__(v7, v5))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = *result - v4;
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = result[1];
  }

  v14 = v5 >= v7;
  if (v10 < 0)
  {
    goto LABEL_21;
  }

  if (a2 && v10)
  {
    sub_100085D40(&qword_10059EFD8);
    result = swift_arrayInitWithCopy();
  }

  v11 = *a4 + v10;
  if (__OFADD__(*a4, v10))
  {
    goto LABEL_22;
  }

  *a4 = v11;
  if (v14)
  {
    return result;
  }

  if (__OFADD__(v10, v9))
  {
    goto LABEL_24;
  }

  if (v10 + v9 < v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    __break(1u);
    return result;
  }

  if (v8)
  {
    if (v9)
    {
      sub_100085D40(&qword_10059EFD8);
      result = swift_arrayInitWithCopy();
      v11 = *a4;
    }
  }

  v12 = __OFADD__(v11, v9);
  v13 = v11 + v9;
  if (v12)
  {
    goto LABEL_26;
  }

  *a4 = v13;
  return result;
}

unint64_t sub_10019BD14(unint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  sub_10019B678(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    sub_100085D40(&qword_10059EFD8);
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    sub_100085D40(&qword_10059EFD8);
    swift_arrayDestroy();
  }

  return sub_10019BE10(a1, a2, a3, a4);
}

unint64_t sub_10019BE10(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_148;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_33;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_153;
    }
  }

  if (!result)
  {
    goto LABEL_122;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_122;
      }

      v49 = &__src[40 * v7];
      if (v14 >= v7 && &__src[40 * v14] < &v49[40 * result] && v14 == v7)
      {
        goto LABEL_122;
      }

      v50 = 40 * result;
      result = &__src[40 * v14];
      v16 = a3;
      v51 = v50;
      goto LABEL_121;
    }

    if (v16 > 0)
    {
      v8 = v10 - v6;
      v19 = &__src[40 * (v10 - v6)];
      if (v10 - v6 > 0 || ((v7 = &v19[40 * v16], v7 > __src) ? (v20 = v10 == v6) : (v20 = 0), !v20))
      {
        v15 = result;
        v21 = a3;
        v22 = __src;
        memmove(__src, v19, 40 * v16);
        result = v15;
        __src = v22;
        a3 = v21;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_116;
    }

    __break(1u);
LABEL_33:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v23 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_41;
        }

        v5 -= v10;
        if (!v23)
        {
          goto LABEL_41;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_160;
        }
      }

LABEL_41:
      v17 = __OFSUB__(v8, v6);
      v24 = v8 - v6;
      if (!v17)
      {
        v25 = v24 + v7;
        if (v25 >= v10)
        {
          v26 = v10;
        }

        else
        {
          v26 = 0;
        }

        if (!v14)
        {
          goto LABEL_144;
        }

        v4 = v25 - v26;
        if (v25 - v26 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v25 - v26;
        }

        if (v5 <= 0)
        {
          v28 = v10;
        }

        else
        {
          v28 = v5;
        }

        if (v16 < v28)
        {
          if (v27 >= v15)
          {
            goto LABEL_125;
          }

          v29 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v29 > 0)
          {
            result = &__src[40 * v15];
            v30 = &__src[40 * v16];
            if (v15 != v16 || result >= &v30[40 * v29])
            {
              v31 = a3;
              v32 = __src;
              result = memmove(result, v30, 40 * v29);
              __src = v32;
              a3 = v31;
            }

            v17 = __OFADD__(v16, v29);
            v16 += v29;
            if (v17)
            {
              goto LABEL_161;
            }

            v33 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v33)
              {
                goto LABEL_165;
              }
            }
          }

          v34 = v14 - v29;
          if (__OFSUB__(v14, v29))
          {
            goto LABEL_159;
          }

          if (v34 < 1)
          {
            goto LABEL_144;
          }

          v35 = &__src[40 * v16];
          if (v16 <= 0 && &v35[40 * v34] > __src && !v16)
          {
            goto LABEL_144;
          }

          v36 = 5 * v34;
LABEL_101:
          v48 = 8 * v36;
          result = __src;
LABEL_143:
          v63 = a3;
          result = memmove(result, v35, v48);
          a3 = v63;
          goto LABEL_144;
        }

LABEL_78:
        v39 = v10 - v16;
        v40 = __OFSUB__(v10, v16);
        if (v27 >= v15)
        {
          if (v40)
          {
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
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
            return result;
          }

          if (v39 > 0)
          {
            result = &__src[40 * v15];
            v59 = &__src[40 * v16];
            if (v15 != v16 || result >= &v59[40 * v39])
            {
              v60 = a3;
              v61 = __src;
              result = memmove(result, v59, 40 * v39);
              __src = v61;
              a3 = v60;
            }

            v17 = __OFADD__(v15, v39);
            v15 += v39;
            if (v17)
            {
              goto LABEL_163;
            }

            v62 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v62)
              {
                goto LABEL_167;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[40 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v48 = 40 * v5;
              v35 = __src;
              goto LABEL_143;
            }
          }

          goto LABEL_144;
        }

        if (v40)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (v39 > 0)
        {
          result = &__src[40 * v15];
          v41 = &__src[40 * v16];
          if (v15 != v16 || result >= &v41[40 * v39])
          {
            v42 = a3;
            v43 = __src;
            result = memmove(result, v41, 40 * v39);
            __src = v43;
            a3 = v42;
          }

          v17 = __OFADD__(v15, v39);
          v15 += v39;
          if (v17)
          {
            goto LABEL_162;
          }

          v44 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v44)
            {
              goto LABEL_166;
            }
          }
        }

        result = &__src[40 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v45 = a3;
          v46 = __src;
          result = memmove(result, __src, 40 * v6);
          __src = v46;
          a3 = v45;
        }

        v47 = v6;
        if (v6 >= *a3)
        {
          v47 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_164;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_144;
        }

        v35 = &__src[40 * v47];
        if (v47 <= 0 && &v35[40 * v4] > __src && !v47)
        {
          goto LABEL_144;
        }

        v36 = 5 * v4;
        goto LABEL_101;
      }

LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v15 > 0)
    {
      v52 = &__src[40 * v16 + -40 * v15];
      if (v52 != __src || v52 >= &__src[40 * v15])
      {
        v16 = result;
        v54 = a3;
        v55 = __src;
        memmove(v52, __src, 40 * v15);
        result = v16;
        __src = v55;
        a3 = v54;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_158;
    }

    goto LABEL_116;
  }

  if (v15 > 0)
  {
    v37 = 40 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[40 * v6], __src, v37);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v27 = *a3;
  v38 = *a3 - v6;
  if (*a3 < 1 || v38 > 0 || v27 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[40 * v38], 40 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_116:
  if (v10 < 1)
  {
    goto LABEL_122;
  }

  v56 = a3[2];
  result = &__src[40 * v14];
  v49 = &__src[40 * v56];
  if (v14 >= v56 && result < &v49[40 * v10] && v14 == v56)
  {
    goto LABEL_122;
  }

  v16 = a3;
  v51 = 40 * v10;
LABEL_121:
  result = memmove(result, v49, v51);
  a3 = v16;
LABEL_122:
  a3[2] = v14;
  v57 = a3[1];
  v17 = __OFSUB__(v57, v6);
  v58 = v57 - v6;
  if (!v17)
  {
    goto LABEL_145;
  }

  __break(1u);
LABEL_125:
  if (v14 > 0)
  {
    result = &__src[40 * v15];
    v35 = &__src[40 * v16];
    if (v15 < v16 || result >= &v35[40 * v14] || v15 != v16)
    {
      v48 = 40 * v14;
      goto LABEL_143;
    }
  }

LABEL_144:
  v64 = a3[1];
  v17 = __OFSUB__(v64, v6);
  v58 = v64 - v6;
  if (v17)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_145:
  a3[1] = v58;
  return result;
}

uint64_t sub_10019C42C()
{
  type metadata accessor for String.Encoding();
  v0[6] = swift_task_alloc();
  v1 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_10019C514, 0, 0);
}

uint64_t sub_10019C514()
{
  if (qword_10059B588 != -1)
  {
    swift_once();
  }

  v1 = qword_10059EF80;
  v0[10] = qword_10059EF80;
  v2 = v0[9];
  if (v1)
  {
    v3 = v0[7];
    v4 = v0[8];
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    v0[11] = JSONEncoder.init()();
    (*(v4 + 104))(v2, enum case for JSONEncoder.KeyEncodingStrategy.convertToSnakeCase(_:), v3);
    dispatch thunk of JSONEncoder.keyEncodingStrategy.setter();
    type metadata accessor for QALogger(0);
    sub_10019DF08(&qword_10059EFE8, type metadata accessor for QALogger);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10019C6D0, v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7(0, 0xE000000000000000);
  }
}

uint64_t sub_10019C6D0()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 96) = *(v1 + 16);

  return _swift_task_switch(sub_10019C758, 0, 0);
}

void sub_10019C758()
{
  v15 = v0;
  v1 = v0[12];
  v2 = *(v1 + 24);
  if (v2 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100085D40(&qword_10059EFD8);
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v3[2] = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = v0[12];
  v13 = 0;
  v14[0] = v3 + 4;
  v14[1] = v2;
  sub_10019BB94((v1 + 16), v4 + 40, v14, &v13);
  if (v2 < v13)
  {
    goto LABEL_11;
  }

  v3[2] = v13;

  v0[5] = v3;
  sub_10019E2EC();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;
  static String.Encoding.utf8.getter();
  v8 = String.init(data:encoding:)();
  if (!v9)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v10 = v8;
  v11 = v9;
  sub_100088CDC(v5, v7);

  v12 = v0[1];

  v12(v10, v11);
}

uint64_t sub_10019C93C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746C65447369 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6C617261507369 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_10019CB90(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v36 = a4;
  v37 = a5;
  v38 = a2;
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for QALogger.Asset(0);
  __chkstk_darwin(v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100085D40(&qword_10059CE90);
  __chkstk_darwin(v15 - 8);
  v17 = &v34 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    sub_100161F24(a1, v17);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_100005518(v17, &qword_10059CE90);
    }

    else
    {
      (*(v19 + 32))(v21, v17, v18);
      v22 = qword_10059B588;
      v23 = a6;
      if (v22 != -1)
      {
        swift_once();
      }

      v24 = qword_10059EF80;
      if (qword_10059EF80)
      {
        v25 = &v23[OBJC_IVAR____TtC9appstored6LogKey_value];
        v35 = v23;
        v27 = *&v23[OBJC_IVAR____TtC9appstored6LogKey_value];
        v26 = *(v25 + 1);
        (*(v19 + 16))(&v14[v12[9]], v21, v18);

        static Date.now.getter();
        v28 = &v14[v12[5]];
        *v28 = 0x7465737361;
        *(v28 + 1) = 0xE500000000000000;
        v29 = &v14[v12[6]];
        *v29 = v27;
        *(v29 + 1) = v26;
        v14[v12[7]] = v36 & 1;
        v14[v12[8]] = v37 & 1;
        v30 = &v14[v12[10]];
        *v30 = v38;
        *(v30 + 1) = a3;
        v40[3] = v12;
        v40[4] = sub_10019DF08(&qword_10059F000, type metadata accessor for QALogger.Asset);
        v31 = sub_100005F38(v40);
        sub_10019E030(v14, v31, type metadata accessor for QALogger.Asset);
        v32 = type metadata accessor for TaskPriority();
        (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
        sub_1000056D0(v40, v39);
        v33 = swift_allocObject();
        v33[2] = 0;
        v33[3] = 0;
        v33[4] = v24;
        sub_1000056B8(v39, (v33 + 5));

        sub_10019F02C(0, 0, v11, &unk_100438B80, v33);

        sub_10019E1A0(v14, type metadata accessor for QALogger.Asset);
        (*(v19 + 8))(v21, v18);
        sub_100005A00(v40);
      }

      else
      {
        (*(v19 + 8))(v21, v18);
      }
    }
  }
}

uint64_t sub_10019D014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100452BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F7268546E696DLL && a2 == 0xED00007475706867 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756F72685478616DLL && a2 == 0xED00007475706867 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6C617261507369 && a2 == 0xEA00000000006C65)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_10019D2CC(char *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v10 - 8);
  v12 = v26 - v11;
  v13 = type metadata accessor for QALogger.LinearDownload(0);
  result = __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10059B588 != -1)
  {
    result = swift_once();
  }

  v17 = qword_10059EF80;
  if (qword_10059EF80)
  {
    if (a1)
    {
      v19 = *&a1[OBJC_IVAR____TtC9appstored6LogKey_value];
      v18 = *&a1[OBJC_IVAR____TtC9appstored6LogKey_value + 8];

      v20 = a1;

      static Date.now.getter();
      v21 = &v16[v13[5]];
      strcpy(v21, "linearDownload");
      v21[15] = -18;
      v22 = &v16[v13[6]];
      *v22 = v19;
      *(v22 + 1) = v18;
      *&v16[v13[7]] = a3;
      *&v16[v13[8]] = a4;
      *&v16[v13[9]] = a5;
      *&v16[v13[10]] = a2;
      v16[v13[11]] = 0;
      v27[3] = v13;
      v27[4] = sub_10019DF08(&qword_10059EFF8, type metadata accessor for QALogger.LinearDownload);
      v23 = sub_100005F38(v27);
      sub_10019E030(v16, v23, type metadata accessor for QALogger.LinearDownload);
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
      sub_1000056D0(v27, v26);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v17;
      sub_1000056B8(v26, (v25 + 5));

      sub_10019F02C(0, 0, v12, &unk_100438B78, v25);

      sub_10019E1A0(v16, type metadata accessor for QALogger.LinearDownload);
      return sub_100005A00(v27);
    }
  }

  return result;
}

uint64_t sub_10019D5D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10019D738(uint64_t a1, double a2)
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for QALogger.Install(0);
  result = __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10059B588 != -1)
  {
    result = swift_once();
  }

  v11 = qword_10059EF80;
  if (qword_10059EF80)
  {
    v13 = *(a1 + OBJC_IVAR____TtC9appstored6LogKey_value);
    v12 = *(a1 + OBJC_IVAR____TtC9appstored6LogKey_value + 8);

    static Date.now.getter();
    v14 = &v10[v7[5]];
    *v14 = 0x6C6C6174736E69;
    *(v14 + 1) = 0xE700000000000000;
    v15 = &v10[v7[6]];
    *v15 = v13;
    *(v15 + 1) = v12;
    *&v10[v7[7]] = a2;
    v20[3] = v7;
    v20[4] = sub_10019DF08(&qword_10059EFF0, type metadata accessor for QALogger.Install);
    v16 = sub_100005F38(v20);
    sub_10019E030(v10, v16, type metadata accessor for QALogger.Install);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_1000056D0(v20, v19);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v11;
    sub_1000056B8(v19, (v18 + 5));

    sub_10019F02C(0, 0, v6, &unk_100438B70, v18);

    sub_10019E1A0(v10, type metadata accessor for QALogger.Install);
    return sub_100005A00(v20);
  }

  return result;
}

uint64_t sub_10019D9CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100452BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100452C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100452C20 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10019DBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for QALogger.DisplayedSpeed(0);
  result = __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC9appstored10Throughput_isValid) == 1)
  {
    if (qword_10059B588 != -1)
    {
      v23 = result;
      swift_once();
      result = v23;
    }

    v11 = qword_10059EF80;
    if (qword_10059EF80)
    {
      v12 = *(a1 + OBJC_IVAR____TtC9appstored10Throughput_avgValue);
      v13 = *(a1 + OBJC_IVAR____TtC9appstored10Throughput_maxValue);
      v15 = *(a2 + OBJC_IVAR____TtC9appstored6LogKey_value);
      v14 = *(a2 + OBJC_IVAR____TtC9appstored6LogKey_value + 8);
      v16 = *(a1 + OBJC_IVAR____TtC9appstored10Throughput_minValue);
      v17 = result;

      static Date.now.getter();
      v18 = &v10[v17[5]];
      strcpy(v18, "displayedSpeed");
      v18[15] = -18;
      v19 = &v10[v17[6]];
      *v19 = v15;
      *(v19 + 1) = v14;
      *&v10[v17[7]] = v12;
      *&v10[v17[8]] = v13;
      *&v10[v17[9]] = v16;
      v25[3] = v17;
      v25[4] = sub_10019DF08(&qword_10059EFE0, type metadata accessor for QALogger.DisplayedSpeed);
      v20 = sub_100005F38(v25);
      sub_10019E030(v10, v20, type metadata accessor for QALogger.DisplayedSpeed);
      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
      sub_1000056D0(v25, v24);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v11;
      sub_1000056B8(v24, (v22 + 5));

      sub_10019F02C(0, 0, v6, &unk_100438B68, v22);

      sub_10019E1A0(v10, type metadata accessor for QALogger.DisplayedSpeed);
      return sub_100005A00(v25);
    }
  }

  return result;
}

uint64_t sub_10019DF08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019DF50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100086B9C;

  return sub_100199714(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10019E030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10019E098()
{
  swift_unknownObjectRelease();

  sub_100005A00(v0 + 40);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10019E0E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100085384;

  return sub_100199714(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10019E1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10019E240()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100086B9C;

  return sub_1001980F0(v2);
}

unint64_t sub_10019E2EC()
{
  result = qword_10059F008;
  if (!qword_10059F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F008);
  }

  return result;
}

void sub_10019E378()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_1000A470C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10019E458()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10019E514()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10019E5A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10019E67C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10019E738()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10019E7C0(uint64_t a1)
{
  result = sub_10019DF08(&qword_10059F298, type metadata accessor for QALogger.Asset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10019E818(uint64_t a1)
{
  result = sub_10019DF08(&qword_10059F2A0, type metadata accessor for QALogger.LinearDownload);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10019E870(uint64_t a1)
{
  result = sub_10019DF08(&qword_10059F2A8, type metadata accessor for QALogger.Install);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10019E8C8(uint64_t a1)
{
  result = sub_10019DF08(&qword_10059F2B0, type metadata accessor for QALogger.DisplayedSpeed);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10019E920()
{
  result = qword_10059F2C0;
  if (!qword_10059F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F2C0);
  }

  return result;
}

unint64_t sub_10019E974()
{
  result = qword_10059F2E0;
  if (!qword_10059F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F2E0);
  }

  return result;
}

unint64_t sub_10019E9C8()
{
  result = qword_10059F2F0;
  if (!qword_10059F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F2F0);
  }

  return result;
}

unint64_t sub_10019EA1C()
{
  result = qword_10059F300;
  if (!qword_10059F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F300);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QALogger.DisplayedSpeed.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QALogger.DisplayedSpeed.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10019EBF4()
{
  result = qword_10059F308;
  if (!qword_10059F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F308);
  }

  return result;
}

unint64_t sub_10019EC4C()
{
  result = qword_10059F310;
  if (!qword_10059F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F310);
  }

  return result;
}

unint64_t sub_10019ECA4()
{
  result = qword_10059F318;
  if (!qword_10059F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F318);
  }

  return result;
}

unint64_t sub_10019ECFC()
{
  result = qword_10059F320;
  if (!qword_10059F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F320);
  }

  return result;
}

unint64_t sub_10019ED54()
{
  result = qword_10059F328;
  if (!qword_10059F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F328);
  }

  return result;
}

unint64_t sub_10019EDAC()
{
  result = qword_10059F330;
  if (!qword_10059F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F330);
  }

  return result;
}

unint64_t sub_10019EE04()
{
  result = qword_10059F338;
  if (!qword_10059F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F338);
  }

  return result;
}

unint64_t sub_10019EE5C()
{
  result = qword_10059F340;
  if (!qword_10059F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F340);
  }

  return result;
}

unint64_t sub_10019EEB4()
{
  result = qword_10059F348;
  if (!qword_10059F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F348);
  }

  return result;
}

unint64_t sub_10019EF0C()
{
  result = qword_10059F350;
  if (!qword_10059F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F350);
  }

  return result;
}

unint64_t sub_10019EF64()
{
  result = qword_10059F358;
  if (!qword_10059F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F358);
  }

  return result;
}

unint64_t sub_10019EFBC()
{
  result = qword_10059F360;
  if (!qword_10059F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059F360);
  }

  return result;
}

uint64_t sub_10019F02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10009E3F4(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005518(v11, &qword_10059C3E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100005518(a3, &qword_10059C3E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005518(a3, &qword_10059C3E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10019F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10009E3F4(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005518(v11, &qword_10059C3E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100085D40(&qword_10059DCE8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100005518(a3, &qword_10059C3E0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005518(a3, &qword_10059C3E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100085D40(&qword_10059DCE8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10019F620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10009E3F4(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005518(v11, &qword_10059C3E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100005518(a3, &qword_10059C3E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005518(a3, &qword_10059C3E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10019F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_100085D40(&qword_10059F390);
  v7[6] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_10019FA1C, 0, 0);
}

uint64_t sub_10019FA1C()
{
  v48 = v0;
  static Logger.skAdNetwork.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Initiating token handoff", v3, 2u);
  }

  v4 = v0[11];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[2];

  v8 = *(v6 + 8);
  v0[12] = v8;
  v8(v4, v5);
  if (!v7)
  {
    goto LABEL_21;
  }

  v9 = v0[2];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_13;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_13:
    v20 = v0[6];
    v21 = &enum case for TokenHandoff.SKAdNetworkEnvironment.development(_:);
LABEL_14:
    v22 = *v21;
    v23 = type metadata accessor for TokenHandoff.SKAdNetworkEnvironment();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v20, v22, v23);
    (*(v24 + 56))(v20, 0, 1, v23);
    goto LABEL_22;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

LABEL_16:
    v20 = v0[6];
    v21 = &enum case for TokenHandoff.SKAdNetworkEnvironment.production(_:);
    goto LABEL_14;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_16;
  }

  static Logger.skAdNetwork.getter();
  v26 = v9;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[10];
  v31 = v0[7];
  if (v29)
  {
    v46 = v0[10];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 136315138;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = sub_1001AD0D8(v34, v35, &v47);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unknown skan environment: %s", v32, 0xCu);
    sub_100005A00(v33);

    v37 = v46;
  }

  else
  {

    v37 = v30;
  }

  v8(v37, v31);
LABEL_21:
  v38 = v0[6];
  v39 = type metadata accessor for TokenHandoff.SKAdNetworkEnvironment();
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
LABEL_22:
  v40 = swift_task_alloc();
  v0[13] = v40;
  *v40 = v0;
  v40[1] = sub_10019FE78;
  v41 = v0[5];
  v42 = v0[6];
  v44 = v0[3];
  v43 = v0[4];

  return static TokenHandoff.handoffUTToken(tokenData:advertisedItemID:skanEnvironment:)(v44, v43, v41, v42);
}

uint64_t sub_10019FE78()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1001A0030;
  }

  else
  {
    v2 = sub_10019FF8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019FF8C()
{
  sub_100005518(*(v0 + 48), &qword_10059F390);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A0030()
{
  static Logger.skAdNetwork.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Couldn't hand token off %@", v3, 0xCu);
    sub_100005518(v4, &unk_10059C250);
  }

  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[7];

  v6(v7, v8);
  sub_100005518(v0[6], &qword_10059F390);

  v9 = v0[1];

  return v9();
}

id sub_1001A0368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKANTokenHandoff();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A03C0(uint64_t a1)
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
  v10[1] = sub_100085384;

  return sub_10019F908(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001A0494(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000CC22C;

  return v6(a1);
}

uint64_t sub_1001A058C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1001A0680;

  return v5(v2 + 16);
}

uint64_t sub_1001A0680()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001A07B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100086B9C;

  return sub_1001A058C(a1, v4);
}

uint64_t sub_1001A0868(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100085384;

  return sub_1001A058C(a1, v4);
}

uint64_t sub_1001A0920(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1001A0ACC;

  return v5(v2 + 16);
}

uint64_t sub_1001A0A14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100086B9C;

  return sub_1001A0920(a1, v4);
}

void sub_1001A0AD0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100005B60((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_100085D40(&qword_10059D3B8);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100085D40(&qword_10059D3B8);
    CheckedContinuation.resume(returning:)();
  }
}

id sub_1001A0B74()
{
  result = [objc_allocWithZone(type metadata accessor for BackgroundAssetsService()) init];
  qword_1005AB198 = result;
  return result;
}

uint64_t sub_1001A0C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001A0D70, 0, 0);
}

uint64_t sub_1001A0D70()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  sub_10014691C();
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v3);
  v5 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1003E4DB4(objc_allocWithZone(TestFlightServiceHost), v5);

  v7 = String._bridgeToObjectiveC()();
  v0[2] = 0;
  v8 = sub_1003E7040(v6, v4, v7, v0 + 2);

  v9 = v0[2];
  if (v8)
  {
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v12 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001A10E8(void *a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v8 = type metadata accessor for URLRequest();
  v4[4] = v8;
  v4[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[6] = v9;
  v4[7] = _Block_copy(a3);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v4[8] = v11;
  v13 = a1;
  v14 = a4;
  v15 = swift_task_alloc();
  v4[9] = v15;
  *v15 = v4;
  v15[1] = sub_1001A123C;

  return sub_1001A0C80(v9, v13, v10, v12);
}

uint64_t sub_1001A123C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
    isa = v6;
  }

  else
  {
    v11 = v2[5];
    v10 = v2[6];
    v12 = v2[4];
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v10, v12);
    v8 = isa;
    v7 = 0;
  }

  v13 = v2[7];
  (v13)[2](v13, v8, v7);

  _Block_release(v13);

  v14 = *(v5 + 8);

  return v14();
}

uint64_t sub_1001A15E4(void *a1, int a2, int a3, void *a4, char a5, uint64_t a6, void *a7, void *aBlock, void *a9)
{
  v9[4] = a7;
  v9[5] = a9;
  v9[2] = a1;
  v9[3] = a4;
  v9[6] = _Block_copy(aBlock);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v9[7] = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v9[8] = v17;
  v19 = a1;
  v20 = a4;
  v21 = a9;
  v22 = a7;
  v23 = swift_task_alloc();
  v9[9] = v23;
  *v23 = v9;
  v23[1] = sub_1001A1740;

  return sub_1001A1A78(v19, v13, v15, v16, v18, v20, a5, a6);
}

uint64_t sub_1001A1740()
{
  v2 = v0;
  v13 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 48);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v13 + 48));
  v11 = *(v8 + 8);

  return v11();
}

void sub_1001A1980()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100085384;

  JUMPOUT(0x1001A15E4);
}

uint64_t sub_1001A1A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v13;
  *(v8 + 297) = a7;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 160) = a3;
  *(v8 + 168) = a4;
  *(v8 + 144) = a1;
  *(v8 + 152) = a2;
  v9 = sub_100085D40(&qword_10059D3B8);
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_1001A1BB8, 0, 0);
}

uint64_t sub_1001A1BB8()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v14 = *(v0 + 200);
  sub_10014691C();
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v3);
  v4 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v1, v3);
  v18 = sub_1003E4DB4(objc_allocWithZone(TestFlightServiceHost), v4);
  *(v0 + 256) = v18;

  v17 = String._bridgeToObjectiveC()();
  *(v0 + 264) = v17;
  v16 = String._bridgeToObjectiveC()();
  *(v0 + 272) = v16;
  if (v14)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 280) = v5;
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v13 = *(v0 + 297);
  v15 = *(v0 + 192);
  v11 = *(v0 + 144);
  v12 = *(v0 + 184);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 296;
  *(v0 + 24) = sub_1001A1E64;
  swift_continuation_init();
  *(v0 + 136) = v8;
  v9 = sub_100005F38((v0 + 112));
  sub_100085D40(&unk_10059DE80);
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v9, v7, v8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001A0AD0;
  *(v0 + 104) = &unk_1005114F0;
  sub_1003E6538(v18, v11, v17, v16, v12, v13, v15, v5, (v0 + 80));
  (*(v6 + 8))(v9, v8);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001A1E64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_1001A2010;
  }

  else
  {
    v2 = sub_1001A1F74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A1F74()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A2010()
{
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001A20D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100086B9C;

  return sub_1001A10E8(v2, v3, v5, v4);
}

uint64_t sub_1001A2190(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6F6973726556736FLL;
  v5 = 0xE90000000000006ELL;
  if (a1 != 6)
  {
    v4 = 0x656E6F7A656D6974;
    v5 = 0xEE0074657366664FLL;
  }

  v6 = 0x56646C697542736FLL;
  v7 = 0xEE006E6F69737265;
  if (a1 != 4)
  {
    v6 = 0x656D614E736FLL;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7372655665736162;
  v9 = 0xEB000000006E6F69;
  if (a1 != 2)
  {
    v8 = 0x726556746E657665;
    v9 = 0xEC0000006E6F6973;
  }

  v10 = 0x6973726556707061;
  if (a1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  else
  {
    v10 = 7368801;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE90000000000006ELL;
        if (v11 != 0x6F6973726556736FLL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v14 = 0x656E6F7A656D6974;
      v15 = 0x74657366664FLL;
    }

    else
    {
      if (a2 != 4)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x656D614E736FLL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v14 = 0x56646C697542736FLL;
      v15 = 0x6E6F69737265;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v11 != v14)
    {
LABEL_45:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_46;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEB000000006E6F69;
      if (v11 != 0x7372655665736162)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEC0000006E6F6973;
      if (v11 != 0x726556746E657665)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006E6FLL;
    if (v11 != 0x6973726556707061)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7368801)
    {
      goto LABEL_45;
    }
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_1001A244C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006E656B6F5465;
  v3 = 0x7669746341736168;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x746E456E656B6F74;
    }

    if (v4 == 2)
    {
      v6 = 0x800000010044BEC0;
    }

    else
    {
      v6 = 0xEC00000073656972;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D61466E656B6F74;
    }

    else
    {
      v5 = 0x7669746341736168;
    }

    if (v4)
    {
      v6 = 0xED00006449796C69;
    }

    else
    {
      v6 = 0xEE006E656B6F5465;
    }
  }

  v7 = 0xD000000000000013;
  v8 = 0x800000010044BEC0;
  if (a2 != 2)
  {
    v7 = 0x746E456E656B6F74;
    v8 = 0xEC00000073656972;
  }

  if (a2)
  {
    v3 = 0x6D61466E656B6F74;
    v2 = 0xED00006449796C69;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_1001A25C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006574;
  v3 = 0x6174736E4977656ELL;
  v4 = 0xEA00000000006C6CLL;
  v5 = a1;
  v6 = 0xE800000000000000;
  v7 = 0x61746C6544617069;
  if (a1 != 5)
  {
    v7 = 0x554150496C6C7566;
    v6 = 0xED00006574616470;
  }

  v8 = 0x616470556C6C7566;
  if (a1 == 3)
  {
    v9 = 0xEA00000000006574;
  }

  else
  {
    v8 = 0x6E4941504977656ELL;
    v9 = 0xED00006C6C617473;
  }

  if (a1 <= 4u)
  {
    v7 = v8;
    v6 = v9;
  }

  v10 = 0x6164705566666964;
  if (a1 != 1)
  {
    v10 = 0x65446E7265646F6DLL;
    v2 = 0xEB0000000061746CLL;
  }

  if (!a1)
  {
    v10 = 0x6174736E4977656ELL;
    v2 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v5 <= 2)
  {
    v12 = v2;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v4 = 0xEB0000000061746CLL;
        if (v11 != 0x65446E7265646F6DLL)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v13 = 1717987684;
      goto LABEL_25;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v4 = 0xE800000000000000;
        if (v11 != 0x61746C6544617069)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v4 = 0xED00006574616470;
        if (v11 != 0x554150496C6C7566)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v13 = 1819047270;
LABEL_25:
      v4 = 0xEA00000000006574;
      if (v11 != (v13 | 0x6164705500000000))
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x6E4941504977656ELL;
    v4 = 0xED00006C6C617473;
  }

  if (v11 != v3)
  {
LABEL_37:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v4)
  {
    goto LABEL_37;
  }

  v14 = 1;
LABEL_38:

  return v14 & 1;
}

uint64_t sub_1001A280C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4E646C697542736FLL;
    }

    else
    {
      v3 = 29551;
    }

    if (v2)
    {
      v4 = 0xED00007265626D75;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6572617764726168;
    v4 = 0xEE00796C696D6146;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6572617764726168;
    }

    else
    {
      v3 = 0x6F724665726F7473;
    }

    if (v2 == 3)
    {
      v4 = 0xED00006C65646F4DLL;
    }

    else
    {
      v4 = 0xEC0000006449746ELL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x4E646C697542736FLL;
    }

    else
    {
      v6 = 29551;
    }

    if (a2)
    {
      v5 = 0xED00007265626D75;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEE00796C696D6146;
    if (v3 != 0x6572617764726168)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xED00006C65646F4DLL;
    if (v3 != 0x6572617764726168)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC0000006449746ELL;
    if (v3 != 0x6F724665726F7473)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1001A29F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368801;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F72685477656976;
    }

    else
    {
      v4 = 0x7268546B63696C63;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000686775;
    }

    else
    {
      v5 = 0xEC0000006867756FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 6448503;
    }

    else
    {
      v4 = 7368801;
    }

    v5 = 0xE300000000000000;
  }

  v6 = 0x6F72685477656976;
  v7 = 0xEB00000000686775;
  if (a2 != 2)
  {
    v6 = 0x7268546B63696C63;
    v7 = 0xEC0000006867756FLL;
  }

  if (a2)
  {
    v2 = 6448503;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1001A2B44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x736572706D496461;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7265766E6F436461;
    }

    else
    {
      v4 = 0x736572706D496461;
    }

    v5 = 0xEC0000006E6F6973;
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000013;
    v5 = 0x800000010044C890;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x74736575716572;
    }

    else
    {
      v4 = 0x6D6F4379726F7473;
    }

    if (v3 == 3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xED00006574656C70;
    }
  }

  v6 = 0xD000000000000013;
  v7 = 0x800000010044C890;
  v8 = 0xE700000000000000;
  v9 = 0x74736575716572;
  if (a2 != 3)
  {
    v9 = 0x6D6F4379726F7473;
    v8 = 0xED00006574656C70;
  }

  if (a2 != 2)
  {
    v6 = v9;
    v7 = v8;
  }

  if (a2)
  {
    v2 = 0x7265766E6F436461;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (a2 <= 1u)
  {
    v11 = 0xEC0000006E6F6973;
  }

  else
  {
    v11 = v7;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

__n128 sub_1001A2CD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_buildVersion + 8))
  {
    v82 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_buildVersion + 8);
    v83 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_buildVersion);
  }

  else
  {
    v6 = [objc_opt_self() buildVersion];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v8;
    v83 = v7;
  }

  v9.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  v10 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_eventType);
  isa = v9.super.super.isa;
  if (v10 <= 1)
  {
    v79 = 0xEC0000006E6F6973;
    if (*(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_eventType))
    {
      v11 = 0x7265766E6F436461;
    }

    else
    {
      v11 = 0x736572706D496461;
    }
  }

  else if (v10 == 2)
  {
    v79 = 0x800000010044C890;
    v11 = 0xD000000000000013;
  }

  else if (v10 == 3)
  {
    v79 = 0xE700000000000000;
    v11 = 0x74736575716572;
  }

  else
  {
    v79 = 0xED00006574656C70;
    v11 = 0x6D6F4379726F7473;
  }

  v81 = v11;
  v12 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_resultType);
  if (v12 == 11)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = sub_1001A37D8(v12);
  }

  v15 = (v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_adNetworkID);
  v16 = (v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_adNetworkRegistrableDomain);
  v17 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_adType);
  v77 = v13;
  v75 = v14;
  if (v17 <= 1)
  {
    v78 = 0xE300000000000000;
    if (*(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_adType))
    {
      v18 = 6448503;
    }

    else
    {
      v18 = 7368801;
    }
  }

  else if (v17 == 2)
  {
    v78 = 0xEB00000000686775;
    v18 = 0x6F72685477656976;
  }

  else
  {
    if (v17 != 3)
    {
      v76 = 0;
      v78 = 0;
      goto LABEL_26;
    }

    v78 = 0xEC0000006867756FLL;
    v18 = 0x7268546B63696C63;
  }

  v76 = v18;
LABEL_26:
  v19 = (v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_errorDomain);
  v20 = (v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_errorCode);
  v21 = v15[1];
  v67 = v16[1];
  v22 = (v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_skanVersion);
  if (*(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_destination) <= 1u)
  {
    if (!*(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_destination))
    {
      v74 = 0x726F7774654E6461;
      v73 = 0xE90000000000006BLL;
      goto LABEL_34;
    }

    v73 = 0xE800000000000000;
    v23 = 0x656372656D6D6F63;
    goto LABEL_32;
  }

  if (*(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_destination) == 2)
  {
    v73 = 0xE900000000000072;
    v23 = 0x65706F6C65766564;
LABEL_32:
    v74 = v23;
    goto LABEL_34;
  }

  v73 = 0;
  v74 = 0;
LABEL_34:
  v24 = v19[1];
  v64 = *v19;
  v66 = *v20;
  v63 = *(v20 + 8);
  v68 = *v15;
  v70 = *v16;
  v25 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_interactionType);
  v26 = v22[1];
  v69 = *v22;
  v27 = 1701734758;
  v71 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_httpStatusCode);
  v59 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_httpStatusCode + 8);
  if (*(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_conversionValueGranularity) <= 1u)
  {
    if (*(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_conversionValueGranularity))
    {
      v65 = 0xE600000000000000;
      v27 = 0x657372616F63;
      goto LABEL_40;
    }

    v27 = 1701736302;
LABEL_38:
    v65 = 0xE400000000000000;
LABEL_40:
    v72 = v27;
    goto LABEL_42;
  }

  if (*(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_conversionValueGranularity) == 2)
  {
    goto LABEL_38;
  }

  v72 = 0;
  v65 = 0;
LABEL_42:
  v28 = 0xE400000000000000;
  if (v25)
  {
    v28 = 0xE500000000000000;
  }

  v29 = 2003134838;
  if (v25)
  {
    v29 = 0x6B63696C63;
  }

  v30 = v25 == 2;
  if (v25 == 2)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  v61 = v31;
  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = v29;
  }

  v60 = v32;
  v62 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_sourceIdentifierGranularity);
  v49 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_sourceIdentifierGranularity + 8);
  v33 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_postbackType);
  v34 = 0x676E69646E6570;
  if (v33)
  {
    v34 = 0x64657A696C616572;
  }

  v35 = 0xE700000000000000;
  if (v33)
  {
    v35 = 0xE800000000000000;
  }

  v36 = v33 == 2;
  if (v33 == 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = v34;
  }

  v58 = v37;
  if (v36)
  {
    v38 = 0;
  }

  else
  {
    v38 = v35;
  }

  v57 = v38;
  v56 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_postbackSequenceIndex);
  v55 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_manualReportingModeEnabled);
  v39 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_offerType);
  v48 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_postbackSequenceIndex + 8);
  v40 = 0x6169725465657266;
  if (v39)
  {
    v40 = 0x746E756F63736964;
    v41 = 0xEA00000000006465;
  }

  else
  {
    v41 = 0xE90000000000006CLL;
  }

  if (v39 == 2)
  {
    v40 = 0;
    v41 = 0;
  }

  v53 = v41;
  v54 = v40;
  v42 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_currencyCode + 8);
  v50 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_countryCode + 8);
  v52 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_currencyCode);
  v51 = *(v3 + OBJC_IVAR____TtC9appstored12SkannerEvent_countryCode);
  v43 = objc_allocWithZone(type metadata accessor for LogKey());

  v44 = [v43 init];
  *(a3 + 40) = 0x8000000100453120;
  *(a3 + 48) = isa;
  *(a3 + 56) = v44;
  *(a3 + 128) = v79;
  *(a3 + 136) = v83;
  *(a3 + 144) = v82;
  *(a3 + 152) = v77;
  *(a3 + 160) = v75;
  *(a3 + 168) = v64;
  *(a3 + 24) = &off_100508AC8;
  *(a3 + 32) = 0xD000000000000010;
  *a3 = xmmword_100439280;
  *(a3 + 16) = 1;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 80) = _swiftEmptyArrayStorage;
  *(a3 + 88) = a1;
  *(a3 + 96) = a2;
  *(a3 + 104) = 0x7774654E64414B53;
  *(a3 + 112) = 0xEB000000006B726FLL;
  *(a3 + 120) = v81;
  *(a3 + 176) = v24;
  *(a3 + 184) = v66;
  *(a3 + 192) = v63;
  *&v45 = v68;
  *(&v45 + 1) = v21;
  *&v46 = v70;
  *(&v46 + 1) = v67;
  *(a3 + 216) = v46;
  *(a3 + 200) = v45;
  *(a3 + 232) = v69;
  *(a3 + 240) = v26;
  *(a3 + 248) = v76;
  *(a3 + 256) = v78;
  *(a3 + 264) = v60;
  *(a3 + 272) = v61;
  *(a3 + 280) = v74;
  *(a3 + 288) = v73;
  *(a3 + 296) = v71;
  *(a3 + 304) = v59;
  *(a3 + 312) = v72;
  *(a3 + 320) = v65;
  *(a3 + 328) = v62;
  *(a3 + 336) = v49;
  *(a3 + 344) = v58;
  *(a3 + 352) = v57;
  *(a3 + 360) = v56;
  *(a3 + 368) = v48;
  *(a3 + 369) = v55;
  *(a3 + 376) = v54;
  *(a3 + 384) = v53;
  *&v46 = v51;
  result.n128_u64[0] = v52;
  *(&v46 + 1) = v50;
  result.n128_u64[1] = v42;
  *(a3 + 392) = result;
  *(a3 + 408) = v46;
  return result;
}

id sub_1001A3400(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC9appstored12SkannerEvent_eventType] = *a1;
  Date.init()();
  (*(v5 + 104))(v7, enum case for Calendar.Component.hour(_:), v4);
  v12 = sub_1001794D8(v11, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v13 = [v12 integerValue];
  }

  else
  {
    v13 = 0;
  }

  *&v1[OBJC_IVAR____TtC9appstored12SkannerEvent_eventTime] = v13;
  v14 = [objc_opt_self() buildVersion];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = &v1[OBJC_IVAR____TtC9appstored12SkannerEvent_buildVersion];
  *v18 = v15;
  v18[1] = v17;
  v1[OBJC_IVAR____TtC9appstored12SkannerEvent_resultType] = *(a1 + 1);
  v19 = *(a1 + 8);
  *&v1[OBJC_IVAR____TtC9appstored12SkannerEvent_adNetworkID] = v19;
  v20 = &v1[OBJC_IVAR____TtC9appstored12SkannerEvent_adNetworkRegistrableDomain];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v1[OBJC_IVAR____TtC9appstored12SkannerEvent_skanVersion];
  *v21 = 0;
  v21[1] = 0;
  v1[OBJC_IVAR____TtC9appstored12SkannerEvent_adType] = *(a1 + 24);
  v1[OBJC_IVAR____TtC9appstored12SkannerEvent_interactionType] = *(a1 + 25);
  v34 = v19;
  v1[OBJC_IVAR____TtC9appstored12SkannerEvent_destination] = *(a1 + 26);
  v22 = &v1[OBJC_IVAR____TtC9appstored12SkannerEvent_httpStatusCode];
  *v22 = *(a1 + 32);
  v22[8] = *(a1 + 40);
  v1[OBJC_IVAR____TtC9appstored12SkannerEvent_conversionValueGranularity] = 3;
  v23 = &v1[OBJC_IVAR____TtC9appstored12SkannerEvent_sourceIdentifierGranularity];
  *v23 = 0;
  v23[8] = 1;
  v1[OBJC_IVAR____TtC9appstored12SkannerEvent_postbackType] = *(a1 + 41);
  v24 = &v1[OBJC_IVAR____TtC9appstored12SkannerEvent_postbackSequenceIndex];
  *v24 = 0;
  v24[8] = 1;
  v33 = *(a1 + 48);
  *&v1[OBJC_IVAR____TtC9appstored12SkannerEvent_errorDomain] = *(a1 + 48);
  v25 = &v1[OBJC_IVAR____TtC9appstored12SkannerEvent_errorCode];
  v25[8] = *(a1 + 72);
  *v25 = *(a1 + 64);
  v1[OBJC_IVAR____TtC9appstored12SkannerEvent_manualReportingModeEnabled] = *(a1 + 73);
  v1[OBJC_IVAR____TtC9appstored12SkannerEvent_offerType] = *(a1 + 74);
  v26 = *(a1 + 80);
  v31 = *(a1 + 96);
  v32 = v26;
  v27 = *(a1 + 96);
  *&v1[OBJC_IVAR____TtC9appstored12SkannerEvent_currencyCode] = *(a1 + 80);
  *&v1[OBJC_IVAR____TtC9appstored12SkannerEvent_countryCode] = v27;
  sub_1001AA108(&v34, v30);
  sub_1001AA108(&v33, v30);
  sub_1001AA108(&v32, v30);
  sub_1001AA108(&v31, v30);
  sub_1000A1768(a1);
  v29.receiver = v1;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, "init");
}

uint64_t sub_1001A37D8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x657A696C616E6966;
    v7 = 0x657461647075;
    v8 = 0x73696D736E617274;
    if (a1 != 3)
    {
      v8 = 0x74706965636572;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7265747369676572;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x64657463656A6572;
    v2 = 0x69737265766E6F63;
    if (a1 != 9)
    {
      v2 = 0x6573616863727570;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6365526E656B6F74;
    v4 = 0x52646579616C6564;
    if (a1 != 6)
    {
      v4 = 0x6572756C696166;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_1001A3964()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A3A5C()
{
  String.hash(into:)();
}

Swift::Int sub_1001A3B40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001A3C34@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001A8550(*a1);
  *a2 = result;
  return result;
}

void sub_1001A3C64(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x736572706D496461;
  v4 = 0x800000010044C890;
  v5 = 0xD000000000000013;
  v6 = 0xE700000000000000;
  v7 = 0x74736575716572;
  if (v2 != 3)
  {
    v7 = 0x6D6F4379726F7473;
    v6 = 0xED00006574656C70;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0x7265766E6F436461;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xEC0000006E6F6973;
  }

  else
  {
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9;
}

unint64_t sub_1001A3E28@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001A80FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001A3E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001A37D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1001A3F40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A4004()
{
  String.hash(into:)();
}

Swift::Int sub_1001A40B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001A4174@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001A859C(*a1);
  *a2 = result;
  return result;
}

void sub_1001A41A4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368801;
  v4 = 0xEB00000000686775;
  v5 = 0x6F72685477656976;
  if (*v1 != 2)
  {
    v5 = 0x7268546B63696C63;
    v4 = 0xEC0000006867756FLL;
  }

  if (*v1)
  {
    v3 = 6448503;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1001A42D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B63696C63;
  }

  else
  {
    v3 = 2003134838;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B63696C63;
  }

  else
  {
    v5 = 2003134838;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001A4370()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A43E8()
{
  String.hash(into:)();
}

Swift::Int sub_1001A444C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001A44CC(uint64_t *a1@<X8>)
{
  v2 = 2003134838;
  if (*v1)
  {
    v2 = 0x6B63696C63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001A45B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x656372656D6D6F63;
  v5 = 0xE900000000000072;
  if (v2 != 1)
  {
    v4 = 0x65706F6C65766564;
    v3 = 0xE900000000000072;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x726F7774654E6461;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE90000000000006BLL;
  }

  v8 = 0x656372656D6D6F63;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x65706F6C65766564;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726F7774654E6461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE90000000000006BLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001A46B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A4758()
{
  String.hash(into:)();
}

Swift::Int sub_1001A47EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001A4890@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001A85E8(*a1);
  *a2 = result;
  return result;
}

void sub_1001A48C0(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006BLL;
  v3 = *v1;
  v4 = 0xE800000000000000;
  v5 = 0x656372656D6D6F63;
  if (v3 != 1)
  {
    v5 = 0x65706F6C65766564;
    v4 = 0xE900000000000072;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726F7774654E6461;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1001A49D4(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701734758;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x657372616F63;
  if (v3 != 1)
  {
    v5 = 1701734758;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701736302;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xE600000000000000;
  if (*a2 == 1)
  {
    v2 = 0x657372616F63;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001A4AB4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A4B44()
{
  String.hash(into:)();
}

Swift::Int sub_1001A4BC0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001A4C4C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001A8634(*a1);
  *a2 = result;
  return result;
}

void sub_1001A4C7C(uint64_t *a1@<X8>)
{
  v2 = 1701734758;
  v3 = 0xE600000000000000;
  if (*v1 == 1)
  {
    v2 = 0x657372616F63;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 1701736302;
    v4 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_1001A4D78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64657A696C616572;
  }

  else
  {
    v3 = 0x676E69646E6570;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x64657A696C616572;
  }

  else
  {
    v5 = 0x676E69646E6570;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001A4E20()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A4EA4()
{
  String.hash(into:)();
}

Swift::Int sub_1001A4F14()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001A4FA0(uint64_t *a1@<X8>)
{
  v2 = 0x676E69646E6570;
  if (*v1)
  {
    v2 = 0x64657A696C616572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001A5090(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E756F63736964;
  }

  else
  {
    v3 = 0x6169725465657266;
  }

  if (v2)
  {
    v4 = 0xE90000000000006CLL;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v5 = 0x746E756F63736964;
  }

  else
  {
    v5 = 0x6169725465657266;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006465;
  }

  else
  {
    v6 = 0xE90000000000006CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001A5140()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A51CC()
{
  String.hash(into:)();
}

Swift::Int sub_1001A5244()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A52D8@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1001A5334(uint64_t *a1@<X8>)
{
  v2 = 0x6169725465657266;
  if (*v1)
  {
    v2 = 0x746E756F63736964;
  }

  v3 = 0xE90000000000006CLL;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1001A545C(char a1)
{
  result = 0x707954746E657665;
  switch(a1)
  {
    case 1:
      result = 0x6D6954746E657665;
      break;
    case 2:
      result = 0x726556646C697562;
      break;
    case 3:
      result = 0x7954746C75736572;
      break;
    case 4:
      result = 0x726F7774654E6461;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0x737265566E616B73;
      break;
    case 7:
      result = 0x657079546461;
      break;
    case 8:
      result = 0x7463617265746E69;
      break;
    case 9:
      result = 0x74616E6974736564;
      break;
    case 10:
      result = 0x7461745370747468;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0x6B63616274736F70;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0x6D6F44726F727265;
      break;
    case 16:
      result = 0x646F43726F727265;
      break;
    case 17:
      result = 0xD00000000000001ALL;
      break;
    case 18:
      result = 0x707954726566666FLL;
      break;
    case 19:
      result = 0x79636E6572727563;
      break;
    case 20:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001A56D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A8878(a1, a2);
  *a3 = result;
  return result;
}