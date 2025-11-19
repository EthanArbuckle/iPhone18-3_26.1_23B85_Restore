uint64_t sub_100001818()
{
  v0 = type metadata accessor for Logger();
  sub_10000476C(v0, qword_100014BF8);
  sub_1000044B8(v0, qword_100014BF8);
  if (qword_100014C18 != -1)
  {
    swift_once();
  }

  v1 = qword_1000159A0;
  return Logger.init(_:)();
}

Swift::Int sub_1000018B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000192C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100001970()
{
  if (IOHIDEventGetIntegerValue() == 12 && IOHIDEventGetIntegerValue() == 233)
  {
    return 0;
  }

  if (IOHIDEventGetIntegerValue() == 12 && IOHIDEventGetIntegerValue() == 234)
  {
    return 1;
  }

  if (IOHIDEventGetIntegerValue() == 1 && IOHIDEventGetIntegerValue() == 134)
  {
    return 3;
  }

  if (IOHIDEventGetIntegerValue() == 12 && IOHIDEventGetIntegerValue() == 64)
  {
    return 2;
  }

  return 5;
}

uint64_t sub_100001AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v15 = a1;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v14 - 8);
  __chkstk_darwin();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v7 = sub_100003FBC(0, &qword_100014EA0);
  v13[1] = "Machine";
  v13[2] = v7;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_10000401C(&qword_100014EA8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003F2C(&qword_100014EB0);
  sub_100004064(&qword_100014EB8, &qword_100014EB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v15;
  v10 = v16;
  *(v3 + 16) = v8;
  *(v3 + 24) = v9;
  v11 = v17;
  *(v3 + 32) = v10;
  *(v3 + 40) = v11;
  *(v3 + 64) = &_swiftEmptySetSingleton;
  *(v3 + 72) = 0;
  return v3;
}

void sub_100001D44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v41 = a2;
  v37 = a3;
  v38 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v5 - 8);
  v45 = v5;
  (__chkstk_darwin)();
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v40 = *(v43 - 8);
  (__chkstk_darwin)();
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v10 = (__chkstk_darwin)();
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v34 - v13);
  v46 = type metadata accessor for DispatchTime();
  v36 = *(v46 - 8);
  v15 = __chkstk_darwin(v46);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v20 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003FBC(0, &qword_100014EC0);
  static OS_dispatch_source.TimerFlags.strict.getter();
  v24 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v21 + 8))(v23, v20);
  ObjectType = swift_getObjectType();
  static DispatchTime.now()();
  v26 = a4 * 1000.0;
  if (COERCE__INT64(fabs(a4 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v26 < 9.22337204e18)
  {
    *v14 = v26;
    v34 = ObjectType;
    v35 = v24;
    v27 = *(v9 + 104);
    v27(v14, enum case for DispatchTimeInterval.milliseconds(_:), v8);
    + infix(_:_:)();
    v28 = *(v9 + 8);
    v28(v14, v8);
    v36 = *(v36 + 8);
    (v36)(v17, v46);
    v27(v14, enum case for DispatchTimeInterval.never(_:), v8);
    *v12 = 0;
    v27(v12, enum case for DispatchTimeInterval.nanoseconds(_:), v8);
    v29 = v35;
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v28(v12, v8);
    v28(v14, v8);
    (v36)(v19, v46);
    aBlock[4] = v38;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000025D4;
    aBlock[3] = &unk_100010BA0;
    v30 = _Block_copy(aBlock);

    v31 = v39;
    static DispatchQoS.unspecified.getter();
    v32 = v42;
    sub_100002314();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v30);
    (*(v44 + 8))(v32, v45);
    (*(v40 + 8))(v31, v43);

    OS_dispatch_source.activate()();
    v33 = v37;
    v37[3] = &type metadata for DispatchSourceTimerWrapper;
    v33[4] = &off_100010F10;
    *v33 = v29;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100002314()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000401C(&qword_100014EC8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003F2C(&qword_100014ED0);
  sub_100004064(&qword_100014ED8, &qword_100014ED0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000023EC(uint64_t a1, Swift::Int a2)
{
  swift_beginAccess();
  sub_10000B488(&v4, a2);
  swift_endAccess();
  return sub_100002618();
}

uint64_t sub_10000247C(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  sub_1000048B4(a2);
  swift_endAccess();
  return sub_100002618();
}

uint64_t sub_1000024E0(uint64_t a1)
{
  swift_beginAccess();
  sub_100004530(a1 + 80, &v4);
  if (*(&v5 + 1))
  {
    sub_100004678(&v4, v3);
    sub_1000045A0(&v4);
    sub_1000046DC(v3, v3[3]);
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    sub_100004720(v3);
  }

  else
  {
    sub_1000045A0(&v4);
  }

  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_100004608(&v4, a1 + 80);
  swift_endAccess();
  *(a1 + 72) = 0;
  swift_beginAccess();
  *(a1 + 64) = &_swiftEmptySetSingleton;
}

uint64_t sub_1000025D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002618()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = *(v0 + 24);
    swift_beginAccess();
    if ((sub_100002894(v8, *(v0 + 64)) & 1) != 0 && (*(v0 + 72) & 1) == 0)
    {
      v9 = *(v0 + 32);

      v9(&v11, sub_100004B8C, v0);

      swift_beginAccess();
      sub_100004608(&v11, v0 + 80);
      result = swift_endAccess();
      *(v0 + 72) = 1;
    }

    else
    {
      result = sub_100002894(v8, *(v0 + 64));
      if ((result & 1) == 0 && *(v0 + 72) == 1)
      {
        swift_beginAccess();
        sub_100004530(v0 + 80, &v11);
        if (*(&v12 + 1))
        {
          sub_100004678(&v11, v10);
          sub_1000045A0(&v11);
          sub_1000046DC(v10, v10[3]);
          swift_getObjectType();
          OS_dispatch_source.cancel()();
          sub_100004720(v10);
        }

        else
        {
          sub_1000045A0(&v11);
        }

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        swift_beginAccess();
        sub_100004608(&v11, v0 + 80);
        result = swift_endAccess();
        *(v0 + 72) = 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100002894(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100002A04(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin();
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[2];
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100004DE0;
  *(v13 + 24) = a1;
  v32 = sub_100004DEC;
  v33 = v13;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100002454;
  v31 = &unk_100010DD0;
  v14 = _Block_copy(&aBlock);

  dispatch_sync(v12, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v17 = a1[6];
    if (v17)
    {
      v18 = a1[7];
      sub_100003FBC(0, &qword_100014EA0);
      (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.userInteractive(_:), v8);

      v19 = static OS_dispatch_queue.global(qos:)();
      (*(v9 + 8))(v11, v8);
      v32 = v17;
      v33 = v18;
      aBlock = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = sub_1000025D4;
      v31 = &unk_100010DF8;
      v20 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v27 = &_swiftEmptyArrayStorage;
      sub_10000401C(&qword_100014EC8, &type metadata accessor for DispatchWorkItemFlags);
      sub_100003F2C(&qword_100014ED0);
      sub_100004064(&qword_100014ED8, &qword_100014ED0);
      v21 = v26;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);

      sub_100004810(v17);
      (*(v25 + 8))(v4, v21);
      (*(v23 + 8))(v7, v24);
    }
  }

  return result;
}

uint64_t sub_100002E94()
{

  sub_100004810(*(v0 + 48));

  sub_1000045A0(v0 + 80);

  return _swift_deallocClassInstance(v0, 120, 7);
}

void sub_100002F18()
{
  v1 = v0;
  if (qword_100014BF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000044B8(v2, qword_100014BF8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting to monitor HID events", v5, 2u);
  }

  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v6 + 48);
  *(v6 + 48) = sub_100004808;
  *(v6 + 56) = v7;

  sub_100004810(v8);

  v9 = CFRunLoopGetCurrent();
  if (v9)
  {
    if (kCFRunLoopDefaultMode)
    {
      v10 = v9;
      IOHIDEventSystemClientScheduleWithRunLoop();

      v12[4] = sub_100003198;
      v12[5] = 0;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_100003870;
      v12[3] = &unk_100010C40;
      v11 = _Block_copy(v12);

      IOHIDEventSystemClientRegisterEventBlock();
      _Block_release(v11);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100003128()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_10000BD08();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100003198(uint64_t a1)
{
  if (IOHIDEventGetSenderID() != 0x8000000817319375 && a1)
  {
    v2 = *(a1 + 24);

    v3 = sub_100001970();
    if (v3 == 5)
    {
      goto LABEL_8;
    }

    v4 = v3;
    IntegerValue = IOHIDEventGetIntegerValue();
    isEscapingClosureAtFileLocation = *(v2 + 16);
    if (IntegerValue)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v2;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v4 = v8;
      *(v8 + 16) = sub_100004858;
      *(v8 + 24) = v7;
      v29 = sub_100004DEC;
      v30 = v8;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_100002454;
      v28 = &unk_100010CB8;
      v9 = _Block_copy(&v25);

      dispatch_sync(isEscapingClosureAtFileLocation, v9);
      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = v4;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1000048A8;
    *(v11 + 24) = v10;
    v29 = sub_100004DEC;
    v30 = v11;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100002454;
    v28 = &unk_100010D80;
    v12 = _Block_copy(&v25);

    dispatch_sync(isEscapingClosureAtFileLocation, v12);
    _Block_release(v12);
    v13 = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
      goto LABEL_20;
    }

LABEL_8:
    if (IOHIDEventGetType() != 11)
    {

      return;
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      [v14 invalidate];
LABEL_17:
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = 0x4008000000000000;
      v29 = sub_10000489C;
      v30 = v21;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_10000A40C;
      v28 = &unk_100010D08;
      v22 = _Block_copy(&v25);

      v23 = [v19 scheduledTimerWithTimeInterval:0 repeats:v22 block:3.0];
      _Block_release(v22);
      v24 = *(a1 + 48);
      *(a1 + 48) = v23;

      return;
    }

    if (qword_100014BF0 == -1)
    {
LABEL_13:
      v15 = type metadata accessor for Logger();
      sub_1000044B8(v15, qword_100014BF8);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Notifying delegate that user interaction (non-synthetic events) began.", v18, 2u);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_10000B098();
        swift_unknownObjectRelease();
      }

      goto LABEL_17;
    }

LABEL_20:
    swift_once();
    goto LABEL_13;
  }
}

void sub_100003674(double a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_100014BF0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000044B8(v4, qword_100014BF8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Timer fired, notifying delegate that there's been no user interaction for %f seconds.", v7, 0xCu);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000B0A8();
      swift_unknownObjectRelease();
    }

    v8 = *(v3 + 48);
    *(v3 + 48) = 0;
  }

  else
  {
    if (qword_100014BF0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000044B8(v9, qword_100014BF8);
    v8 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, v10, "Timer fired, but manager is deallocated so doing nothing.", v11, 2u);
    }
  }
}

void sub_100003870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);

  v10 = a5;
  v9(a2, a3, a4, v10);
}

uint64_t sub_100003900()
{
  v1 = v0;
  if (qword_100014BF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000044B8(v2, qword_100014BF8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Turning off HID event monitor", v5, 2u);
  }

  IOHIDEventSystemClientUnregisterEventBlock();
  v6 = *(v1 + 24);
  v7 = *(v6 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000044F0;
  *(v8 + 24) = v6;
  v11[4] = sub_100004508;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100002454;
  v11[3] = &unk_100010BF0;
  v9 = _Block_copy(v11);

  dispatch_sync(v7, v9);
  _Block_release(v9);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003B04()
{

  sub_100004B64(v0 + 32);

  return _swift_deallocClassInstance(v0, 56, 7);
}

__n128 sub_100003B78(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonPressStateMachine.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ButtonPressStateMachine.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Button(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Button(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003E80()
{
  result = qword_100014E90;
  if (!qword_100014E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014E90);
  }

  return result;
}

unint64_t sub_100003ED8()
{
  result = qword_100014E98;
  if (!qword_100014E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014E98);
  }

  return result;
}

uint64_t sub_100003F2C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003F74(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003FBC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100004004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000401C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004064(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003F74(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000040C0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100004138(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000041B8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000041FC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004238()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000428C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100004300()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100004388@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000043D0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000043FC(uint64_t a1)
{
  v2 = sub_10000401C(&qword_100014F78, type metadata accessor for Key);
  v3 = sub_10000401C(&qword_100014F80, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000044B8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004530(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F2C(&qword_100014EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000045A0(uint64_t a1)
{
  v2 = sub_100003F2C(&qword_100014EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004608(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F2C(&qword_100014EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004678(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000046DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004720(uint64_t a1)
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

uint64_t *sub_10000476C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000047D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004810(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100004820()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100004864()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000048B4(unsigned __int8 a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 6;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 6;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10000B91C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_1000049BC(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_1000049BC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

__n128 sub_100004BBC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004BC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004BE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100004D10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004D30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100004D6C(uint64_t a1, unint64_t *a2)
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

CGFloat sub_100004E10(unint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v121.origin.x = a4;
  v121.origin.y = a5;
  v121.size.width = a6;
  v121.size.height = a7;
  v15 = (CGRectGetWidth(v121) - a2) * 0.5;
  v16 = fabs(v15);
  if (v15 >= 50.0)
  {
    v17 = 50.0;
  }

  else
  {
    v17 = v16;
  }

  v122.origin.x = a4;
  v122.origin.y = a5;
  v122.size.width = a6;
  v122.size.height = a7;
  v123 = CGRectInset(v122, v17, v17);
  x = v123.origin.x;
  y = v123.origin.y;
  width = v123.size.width;
  height = v123.size.height;
  if (CGRectGetWidth(v123) < a2)
  {
    return x;
  }

  v124.origin.x = x;
  v124.origin.y = y;
  v124.size.width = width;
  v124.size.height = height;
  if (CGRectGetHeight(v124) < a3)
  {
    return x;
  }

  rect1_8 = a2;
  if (*(a1 + 32))
  {
    v22 = x;
LABEL_10:
    v27 = y;
    goto LABEL_11;
  }

  v114 = a3;
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v125.origin.x = x;
  v26 = *a1;
  v25 = *(a1 + 8);
  rect1 = v125.origin.x;
  v125.origin.y = y;
  v125.size.width = width;
  v125.size.height = height;
  v156.origin.x = *a1;
  v156.origin.y = v25;
  v156.size.width = v24;
  v156.size.height = v23;
  if (CGRectEqualToRect(v125, v156))
  {
    a3 = v114;
    v22 = rect1;
    goto LABEL_10;
  }

  v132.origin.x = rect1;
  v132.origin.y = y;
  v132.size.width = width;
  v132.size.height = height;
  v157.origin.x = v26;
  v157.origin.y = v25;
  v157.size.width = v24;
  v157.size.height = v23;
  if (!CGRectContainsRect(v132, v157))
  {
    return rect1;
  }

  rect_8 = v26;
  rect_16 = v25;
  v133.origin.x = v26;
  v133.origin.y = v25;
  rect_24 = v24;
  v133.size.width = v24;
  rect1_16 = v23;
  v133.size.height = v23;
  MinX = CGRectGetMinX(v133);
  x = rect1;
  v134.origin.x = rect1;
  v134.origin.y = y;
  v134.size.width = width;
  v134.size.height = height;
  v40 = MinX - CGRectGetMinX(v134);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v135.origin.x = rect1;
  v135.origin.y = y;
  v135.size.width = width;
  v135.size.height = height;
  CGRectDivide(v135, &slice, &remainder, v40, CGRectMinXEdge);
  v41 = remainder.origin.x;
  v107 = remainder.size.width;
  rect = remainder.origin.y;
  v105.x = remainder.size.height;
  v42 = slice.origin.y;
  v43 = slice.size.height;
  size = slice.size;
  origin = slice.origin;
  if (CGRectIsEmpty(slice))
  {
    *&v7 = COERCE_DOUBLE(&_swiftEmptyArrayStorage);
    v44 = rect1_16;
    v22 = v25;
    v45 = rect_24;
    a3 = v114;
    v46 = rect_8;
  }

  else
  {
    v136.size.width = size.width;
    v136.origin.x = origin.width;
    v136.origin.y = v42;
    v136.size.height = v43;
    v47 = CGRectGetWidth(v136);
    v44 = rect1_16;
    v22 = v25;
    a3 = v114;
    if (v47 >= a2)
    {
      v100 = v41;
      v137.size.width = size.width;
      v137.origin.x = origin.width;
      v137.origin.y = v42;
      v137.size.height = v43;
      if (CGRectGetHeight(v137) >= v114)
      {
        *&v7 = COERCE_DOUBLE(sub_10000587C(0, 1, 1, &_swiftEmptyArrayStorage));
        a1 = *(v7 + 2);
        v32 = *(v7 + 3);
        v31 = a1 + 1;
        if (a1 >= v32 >> 1)
        {
          goto LABEL_71;
        }

        goto LABEL_27;
      }

      *&v7 = COERCE_DOUBLE(&_swiftEmptyArrayStorage);
      v45 = rect_24;
      v46 = rect_8;
      v44 = rect1_16;
LABEL_28:
      v41 = v100;
    }

    else
    {
      *&v7 = COERCE_DOUBLE(&_swiftEmptyArrayStorage);
      v45 = rect_24;
      v46 = rect_8;
    }
  }

  v49 = v22;
  MinY = CGRectGetMinY(*&v46);
  v138.origin.x = v41;
  v138.origin.y = rect;
  v138.size.width = v107;
  v138.size.height = v105.x;
  v50 = MinY - CGRectGetMinY(v138);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v139.origin.x = v41;
  v139.origin.y = rect;
  v139.size.width = v107;
  v139.size.height = v105.x;
  CGRectDivide(v139, &slice, &remainder, v50, CGRectMinYEdge);
  v51 = remainder.origin.x;
  v52 = remainder.origin.y;
  v108 = remainder.size;
  v53 = slice.origin.y;
  v54 = slice.size.height;
  v104 = slice.size;
  v106 = slice.origin;
  if (!CGRectIsEmpty(slice))
  {
    v140.size.width = v104.width;
    v140.origin.x = v106.x;
    v140.origin.y = v53;
    v140.size.height = v54;
    if (CGRectGetWidth(v140) >= a2)
    {
      v141.size.width = v104.width;
      v141.origin.x = v106.x;
      v141.origin.y = v53;
      v141.size.height = v54;
      if (CGRectGetHeight(v141) >= a3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v7 = COERCE_DOUBLE(sub_10000587C(0, *(v7 + 2) + 1, 1, v7));
        }

        v56 = v104;
        v55 = v106;
        v58 = *(v7 + 2);
        v57 = *(v7 + 3);
        v59 = v58 + 1;
        if (v58 >= v57 >> 1)
        {
          *&size.width = v58 + 1;
          v96 = sub_10000587C((v57 > 1), v58 + 1, 1, v7);
          v56 = v104;
          v55 = v106;
          v59 = v58 + 1;
          v7 = v96;
        }

        *(v7 + 2) = v59;
        v60 = &v7[32 * v58];
        *(v60 + 2) = v55;
        *(v60 + 3) = v56;
      }
    }
  }

  v142.origin.x = v51;
  v142.origin.y = v52;
  v142.size.height = v108.height;
  v142.size.width = v108.width;
  MaxX = CGRectGetMaxX(v142);
  v143.origin.x = rect_8;
  v143.origin.y = rect_16;
  v143.size.width = rect_24;
  v143.size.height = rect1_16;
  v62 = MaxX - CGRectGetMaxX(v143);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v144.origin.x = v51;
  v144.origin.y = v52;
  v144.size.width = v108.width;
  v144.size.height = v108.height;
  CGRectDivide(v144, &slice, &remainder, v62, CGRectMaxXEdge);
  v107 = remainder.origin.y;
  rect = remainder.origin.x;
  v64 = remainder.size.width;
  v63 = remainder.size.height;
  v65 = slice.origin.y;
  v66 = slice.size.height;
  origin = slice.size;
  v105 = slice.origin;
  if (!CGRectIsEmpty(slice))
  {
    v145.size.width = origin.width;
    v145.origin.x = v105.x;
    v145.origin.y = v65;
    v145.size.height = v66;
    if (CGRectGetWidth(v145) >= a2)
    {
      v146.size.width = origin.width;
      v146.origin.x = v105.x;
      v146.origin.y = v65;
      v146.size.height = v66;
      if (CGRectGetHeight(v146) >= a3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v7 = COERCE_DOUBLE(sub_10000587C(0, *(v7 + 2) + 1, 1, v7));
        }

        v68 = origin;
        v67 = v105;
        v70 = *(v7 + 2);
        v69 = *(v7 + 3);
        v71 = v70 + 1;
        if (v70 >= v69 >> 1)
        {
          *&size.width = v70 + 1;
          v97 = sub_10000587C((v69 > 1), v70 + 1, 1, v7);
          v68 = origin;
          v67 = v105;
          v71 = v70 + 1;
          v7 = v97;
        }

        *(v7 + 2) = v71;
        v72 = &v7[32 * v70];
        *(v72 + 2) = v67;
        *(v72 + 3) = v68;
      }
    }
  }

  v147.origin.x = rect;
  v147.origin.y = v107;
  v147.size.width = v64;
  v147.size.height = v63;
  MaxY = CGRectGetMaxY(v147);
  v148.origin.x = rect_8;
  v148.origin.y = rect_16;
  v148.size.width = rect_24;
  v148.size.height = rect1_16;
  v74 = MaxY - CGRectGetMaxY(v148);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v149.origin.x = rect;
  v149.origin.y = v107;
  v149.size.width = v64;
  v149.size.height = v63;
  CGRectDivide(v149, &slice, &remainder, v74, CGRectMaxYEdge);
  v75 = slice.origin.y;
  v76 = slice.size.height;
  rect1_16a = slice.origin;
  rect_24a = slice.size;
  if (!CGRectIsEmpty(slice))
  {
    v150.origin.x = rect1_16a.x;
    v150.origin.y = v75;
    v150.size.width = rect_24a.width;
    v150.size.height = v76;
    if (CGRectGetWidth(v150) >= a2)
    {
      v151.origin.x = rect1_16a.x;
      v151.origin.y = v75;
      v151.size.width = rect_24a.width;
      v151.size.height = v76;
      if (CGRectGetHeight(v151) >= a3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v7 = COERCE_DOUBLE(sub_10000587C(0, *(v7 + 2) + 1, 1, v7));
        }

        v77 = rect1_16a;
        v78 = rect_24a;
        v80 = *(v7 + 2);
        v79 = *(v7 + 3);
        v81 = v80 + 1;
        if (v80 >= v79 >> 1)
        {
          *&rect_16 = v80 + 1;
          v98 = sub_10000587C((v79 > 1), v80 + 1, 1, v7);
          v78 = rect_24a;
          v77 = rect1_16a;
          v81 = v80 + 1;
          v7 = v98;
        }

        *(v7 + 2) = v81;
        v82 = &v7[32 * v80];
        *(v82 + 2) = v77;
        *(v82 + 3) = v78;
      }
    }
  }

  v83 = *(v7 + 2);
  if (!v83)
  {

    return x;
  }

  v84 = 0.0;
  v85 = 0.0;
  v86 = 0.0;
  v87 = 0.0;
  *&rect1_16 = v83 - 1;
  rect_24 = *&v7;
  v88 = (v7 + 56);
  v89 = 1;
  while (1)
  {
    v22 = *(v88 - 3);
    v27 = *(v88 - 2);
    width = *(v88 - 1);
    height = *v88;
    *&v7 = v22;
    *&a1 = v27;
    v91 = *v88;
    v152.origin.x = v22;
    v152.origin.y = v27;
    v152.size.width = width;
    v152.size.height = *v88;
    v92 = CGRectGetWidth(v152);
    v153.origin.x = v22;
    v153.origin.y = v27;
    v153.size.width = width;
    v153.size.height = height;
    v93 = v92 * CGRectGetHeight(v153);
    if (v89)
    {
      break;
    }

    v154.origin.x = v84;
    v154.origin.y = v85;
    v154.size.width = v86;
    v154.size.height = v87;
    v94 = CGRectGetWidth(v154);
    v155.origin.x = v84;
    v155.origin.y = v85;
    v155.size.width = v86;
    v155.size.height = v87;
    if (v94 * CGRectGetHeight(v155) < v93)
    {
      v84 = v22;
      v85 = *&a1;
      v86 = width;
      v87 = v91;
    }

    v90 = rect1_16;
    if (rect1_16 == 0.0)
    {

      v22 = v84;
      v27 = v85;
      width = v86;
      height = v87;
      a3 = v114;
      goto LABEL_11;
    }

    v89 = 0;
LABEL_58:
    *&rect1_16 = *&v90 - 1;
    v88 += 4;
  }

  v89 = v93 <= 0.0;
  if (v93 > 0.0)
  {
    v84 = v22;
    v85 = v27;
    v86 = width;
    v87 = v91;
  }

  v90 = rect1_16;
  if (rect1_16 != 0.0)
  {
    goto LABEL_58;
  }

  v29 = v93 <= 0.0;
  a3 = v114;
  if (v29)
  {
    return x;
  }

LABEL_11:
  v126.origin.x = v22;
  v126.origin.y = v27;
  v126.size.width = width;
  v126.size.height = height;
  v28 = CGRectGetWidth(v126);
  v127.origin.x = v22;
  v127.origin.y = v27;
  v127.size.width = width;
  v127.size.height = height;
  x = CGRectGetMinX(v127);
  v29 = v28 <= rect1_8;
  a2 = rect1_8;
  if (!v29)
  {
    v128.origin.x = v22;
    v128.origin.y = v27;
    v128.size.width = width;
    v128.size.height = height;
    v33 = CGRectGetMaxX(v128) - rect1_8;
    if (x <= v33)
    {
      sub_100005980(v30, x, v33);
      x = v34;
      goto LABEL_14;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v99 = v31;
    v95 = sub_10000587C((v32 > 1), v31, 1, v7);
    v31 = v99;
    v7 = v95;
LABEL_27:
    v45 = rect_24;
    v46 = rect_8;
    v44 = rect1_16;
    *(v7 + 2) = v31;
    v48 = &v7[32 * a1];
    v48[2] = origin;
    v48[3] = size;
    goto LABEL_28;
  }

LABEL_14:
  v129.origin.x = v22;
  v129.origin.y = v27;
  v129.size.width = width;
  v129.size.height = height;
  a2 = CGRectGetHeight(v129);
  v130.origin.x = v22;
  v130.origin.y = v27;
  v130.size.width = width;
  v130.size.height = height;
  v35 = CGRectGetMinY(v130);
  if (a2 > a3)
  {
    v131.origin.x = v22;
    v131.origin.y = v27;
    v131.size.width = width;
    v131.size.height = height;
    v37 = CGRectGetMaxY(v131) - a3;
    if (v35 > v37)
    {
      goto LABEL_70;
    }

    sub_100005980(v36, v35, v37);
  }

  return x;
}

uint64_t sub_100005740()
{
  _StringGuts.grow(_:)(34);

  v0._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 4028716;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203A657A6973202CLL;
  v3._object = 0xEA00000000003D77;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 4024364;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v6);

  return 0x203A6E696769726FLL;
}

char *sub_10000587C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F2C(&qword_100015050);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100005980(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_100005980(v6, a2, a3);
  }

  return result;
}

uint64_t sub_100005A28()
{
  v0 = type metadata accessor for Logger();
  sub_10000476C(v0, qword_100015058);
  sub_1000044B8(v0, qword_100015058);
  if (qword_100014C18 != -1)
  {
    swift_once();
  }

  v1 = qword_1000159A0;
  return Logger.init(_:)();
}

uint64_t sub_100005AB4(void *a1)
{
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 16) = a1;
  v3 = objc_allocWithZone(FBSOrientationObserver);
  v4 = a1;
  v5 = [v3 init];
  v6 = *(v1 + 48);
  *(v1 + 48) = v5;

  v7 = *(v1 + 48);
  if (v7)
  {
    v11[4] = sub_100008DEC;
    v11[5] = v1;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10000A40C;
    v11[3] = &unk_100010FA0;
    v8 = _Block_copy(v11);
    v9 = v7;

    [v9 setHandler:v8];

    _Block_release(v8);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_100005BEC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003FBC(0, &qword_100014EA0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_100008E4C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000025D4;
  aBlock[3] = &unk_100010FF0;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000A014(&qword_100014EC8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003F2C(&qword_100014ED0);
  sub_100008E54();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_100005EBC(void *a1)
{
  if (qword_100014C10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000044B8(v2, qword_100015058);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = [v3 orientation];

    _os_log_impl(&_mh_execute_header, v4, v5, "Display orientation changed to %ld", v6, 0xCu);
  }

  else
  {

    v4 = v3;
  }

  sub_100006D34([v3 orientation]);
}

void sub_100005FF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10000605C()
{
  v1 = v0;
  if (qword_100014C10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000044B8(v2, qword_100015058);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v79 = v6;
    *v5 = 67109378;
    *(v5 + 4) = [*(v1 + 16) displayId];

    *(v5 + 8) = 2080;
    v7 = *(v1 + 48);
    if (v7)
    {
      v8 = [*(v1 + 48) activeInterfaceOrientation];
    }

    else
    {
      v8 = 0;
    }

    *&v80.m11 = v8;
    LOBYTE(v80.m12) = v7 == 0;
    sub_100003F2C(&qword_100015278);
    v9 = String.init<A>(describing:)();
    v11 = sub_100008EF8(v9, v10, &v79);

    *(v5 + 10) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Presenting overlay for display %u in orientation %s", v5, 0x12u);
    sub_100004720(v6);
  }

  else
  {
  }

  sub_100003F2C(&qword_100015260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000D2A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v13;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v14;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v15;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v16;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v17;
  v18 = *(v1 + 16);
  v19 = [v18 displayId];
  *(inited + 264) = &type metadata for UInt32;
  *(inited + 240) = v19;
  v20 = sub_100009DBC(inited);
  swift_setDeallocating();
  sub_100003F2C(&qword_100015268);
  swift_arrayDestroy();
  v21 = objc_opt_self();
  [v21 begin];
  v22 = objc_opt_self();
  sub_100006A6C(v20);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = [v22 remoteContextWithOptions:isa];

  if (v24)
  {
    v77 = v24;
    v25 = v24;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v78 = v21;
    v76 = v25;
    if (os_log_type_enabled(v26, v27))
    {
      v75 = v18;
      v28 = swift_slowAlloc();
      *&v80.m11 = swift_slowAlloc();
      *v28 = 136446466;
      v29 = v25;
      v30 = [v29 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_100008EF8(v31, v33, &v80);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2082;
      v35 = Dictionary.description.getter();
      v37 = v36;

      v38 = sub_100008EF8(v35, v37, &v80);

      *(v28 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "Got remote context %{public}s with options %{public}s", v28, 0x16u);
      swift_arrayDestroy();

      v18 = v75;
    }

    else
    {
    }

    v42 = [objc_allocWithZone(CALayer) init];
    [v42 setDisableUpdateMask:32];
    v43 = [v18 currentMode];
    v44 = [v43 preferredScale];

    v45 = v44;
    [v18 bounds];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    [v42 setBounds:{0.0, 0.0, v50 / v45, v52 / v45}];
    v81.origin.x = v47;
    v81.origin.y = v49;
    v81.size.width = v51;
    v81.size.height = v53;
    MidX = CGRectGetMidX(v81);
    v82.origin.x = v47;
    v82.origin.y = v49;
    v82.size.width = v51;
    v82.size.height = v53;
    [v42 setPosition:{MidX, CGRectGetMidY(v82)}];
    CATransform3DMakeScale(&v80, v44, v44, 1.0);
    [v42 setTransform:&v80];
    [v42 setContentsScale:v44];
    [v42 bounds];
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = COERCE_DOUBLE(swift_slowAlloc());
      v80.m11 = v58;
      *v57 = 136315138;
      v59 = sub_100005740();
      v61 = sub_100008EF8(v59, v60, &v80);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Display %s", v57, 0xCu);
      sub_100004720(*&v58);
    }

    v62 = [objc_allocWithZone(CALayer) init];
    [v62 setContentsScale:v45];
    v63 = *(v1 + 32);
    *(v1 + 32) = v62;
    v64 = v62;

    v65 = [objc_opt_self() standardUserDefaults];
    v66 = String._bridgeToObjectiveC()();
    v67 = [v65 BOOLForKey:v66];

    if ((v67 & 1) == 0)
    {
      [v64 setDisableUpdateMask:18];
    }

    [v42 bounds];
    [v64 setFrame:?];
    [v42 addSublayer:v64];
    v68 = *(v1 + 48);
    if (v68)
    {
      v69 = [v68 activeInterfaceOrientation];
    }

    else
    {
      v69 = 1;
    }

    sub_100006D34(v69);
    [v76 setLayer:v42];
    [v78 commit];
    [v78 flush];
    v70 = *(v1 + 24);
    *(v1 + 24) = v77;
    v71 = v76;

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 67109120;
      *(v74 + 4) = [v18 displayId];

      _os_log_impl(&_mh_execute_header, v72, v73, "Finished presenting overlay for display %u", v74, 8u);
    }

    else
    {
    }
  }

  else
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to create remote CAContext, Automation Mode may be enabled but not indicated by UI.", v41, 2u);
    }
  }
}

uint64_t sub_100006A6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003F2C(&qword_100015280);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000090D0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000A05C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000A05C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000A05C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000A05C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100006D34(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = 0.0;
    if ((a1 - 2) <= 2)
    {
      v3 = dbl_10000D370[a1 - 2];
    }

    v4 = v2;
    CATransform3DMakeRotation(&v10, v3, 0.0, 0.0, -1.0);
    v5 = *(v1 + 40);
    if (v5)
    {
      v6 = v5;
      v9 = v10;
      [v6 setSublayerTransform:&v9];
      [v6 setNeedsLayout];
    }

    else
    {
      v7 = [objc_allocWithZone(type metadata accessor for OverlayLayer()) init];
      [v4 contentsScale];
      [v7 setContentsScale:?];
      v9 = v10;
      [v7 setSublayerTransform:&v9];
      [v4 bounds];
      [v7 setFrame:?];

      [v7 setNeedsLayout];
      [v4 addSublayer:v7];

      v8 = *(v1 + 40);
      *(v1 + 40) = v7;
    }
  }
}

id sub_100006ED4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = [*(v1 + 16) displayId];

    _os_log_impl(&_mh_execute_header, v6, v7, "Invalidating Automation Mode UI overlay for display %u.", v8, 8u);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + 24);
  *(v1 + 24) = 0;

  return [*(v1 + 48) invalidate];
}

uint64_t sub_10000706C()
{

  return _swift_deallocClassInstance(v0, 57, 7);
}

char *sub_1000070E8()
{
  v1 = &v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textPosition];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  *&v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textGroupMoveTimer] = 0;
  v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_isUserActive] = 0;
  v2 = OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_strokeColor;
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  *&v0[v2] = v4;
  *&v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_strokeWidth] = 0xBFF0000000000000;
  v5 = [objc_allocWithZone(CATextLayer) init];
  v6 = OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_headlineLabel;
  *&v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_headlineLabel] = v5;
  [v5 setWrapped:1];
  [*&v0[v6] setAlignmentMode:kCAAlignmentCenter];
  v7 = [objc_allocWithZone(CATextLayer) init];
  v8 = OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_subheadingLabel;
  *&v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_subheadingLabel] = v7;
  [v7 setWrapped:1];
  [*&v0[v8] setAlignmentMode:kCAAlignmentCenter];
  v20.receiver = v0;
  v20.super_class = type metadata accessor for OverlayLayer();
  v9 = objc_msgSendSuper2(&v20, "init");
  v10 = *&v9[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_headlineLabel];
  v11 = v9;
  [v11 addSublayer:v10];
  [v11 addSublayer:*&v11[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_subheadingLabel]];
  v12 = objc_opt_self();
  v13 = sub_10000A06C();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19[4] = sub_10000A31C;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10000A40C;
  v19[3] = &unk_100011090;
  v15 = _Block_copy(v19);

  v16 = [v12 scheduledTimerWithTimeInterval:1 repeats:v15 block:v13];
  _Block_release(v15);
  v17 = *&v11[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textGroupMoveTimer];
  *&v11[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textGroupMoveTimer] = v16;

  return v11;
}

void sub_10000738C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100007ED4();
  }

  else
  {
    [a1 invalidate];
  }
}

id sub_100007444(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textPosition];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *&v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textGroupMoveTimer] = 0;
  v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_isUserActive] = 0;
  v4 = OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_strokeColor;
  v5 = [objc_opt_self() blackColor];
  v6 = [v5 colorWithAlphaComponent:0.4];

  *&v1[v4] = v6;
  *&v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_strokeWidth] = 0xBFF0000000000000;
  sub_1000090D0(a1, v19);
  v7 = type metadata accessor for OverlayLayer();
  if (swift_dynamicCast())
  {
    v8 = v18;
    v9 = *&v18[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_headlineLabel];
    *&v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_headlineLabel] = v9;
    v10 = *&v8[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_subheadingLabel];
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v13 = [objc_allocWithZone(CATextLayer) init];
    *&v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_headlineLabel] = v13;
    v12 = [objc_allocWithZone(CATextLayer) init];
  }

  *&v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_subheadingLabel] = v12;
  sub_1000046DC(a1, a1[3]);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  v17.receiver = v1;
  v17.super_class = v7;
  v15 = objc_msgSendSuper2(&v17, "initWithLayer:", v14);
  swift_unknownObjectRelease();
  sub_100004720(a1);
  return v15;
}

id sub_100007658()
{
  v1 = *&v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textGroupMoveTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for OverlayLayer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100007780()
{
  v1 = objc_opt_self();
  v2 = [v1 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  if (!v3)
  {
    v3 = [v1 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  }

  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];
  sub_100003F2C(&qword_100015230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000D2B0;
  *(inited + 32) = NSFontAttributeName;
  v6 = sub_100003FBC(0, &qword_100015238);
  *(inited + 40) = v4;
  *(inited + 64) = v6;
  *(inited + 72) = NSForegroundColorAttributeName;
  v7 = objc_opt_self();
  v8 = NSFontAttributeName;
  v9 = v4;
  v10 = NSForegroundColorAttributeName;
  v11 = [v7 whiteColor];
  v12 = v11;
  v13 = 0.85;
  if (*(v0 + OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_isUserActive))
  {
    v13 = 0.4;
  }

  v14 = [v11 colorWithAlphaComponent:v13];

  v15 = sub_100003FBC(0, &qword_100015240);
  *(inited + 80) = v14;
  *(inited + 104) = v15;
  *(inited + 112) = NSStrokeColorAttributeName;
  v16 = *(v0 + OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_strokeColor);
  *(inited + 120) = v16;
  *(inited + 144) = v15;
  *(inited + 152) = NSStrokeWidthAttributeName;
  *(inited + 184) = &type metadata for Double;
  *(inited + 160) = 0xBFF0000000000000;
  v17 = NSStrokeColorAttributeName;
  v18 = v16;
  v19 = NSStrokeWidthAttributeName;
  sub_100009EEC(inited);
  swift_setDeallocating();
  sub_100003F2C(&qword_100015248);
  swift_arrayDestroy();
  v20 = [objc_opt_self() mainBundle];
  v28._object = 0x800000010000E2B0;
  v21._object = 0x800000010000E290;
  v21._countAndFlagsBits = 0xD00000000000001DLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD00000000000001DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v28);

  v23 = objc_allocWithZone(NSAttributedString);
  v24 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10000A014(&qword_100014F78, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithString:v24 attributes:isa];

  return v26;
}

id sub_100007B34()
{
  v1 = objc_opt_self();
  v2 = [v1 preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  if (!v3)
  {
    v3 = [v1 preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
  }

  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];
  sub_100003F2C(&qword_100015230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000D2B0;
  *(inited + 32) = NSFontAttributeName;
  v6 = sub_100003FBC(0, &qword_100015238);
  *(inited + 40) = v4;
  *(inited + 64) = v6;
  *(inited + 72) = NSForegroundColorAttributeName;
  v7 = objc_opt_self();
  v8 = NSFontAttributeName;
  v9 = v4;
  v10 = NSForegroundColorAttributeName;
  v11 = [v7 whiteColor];
  v12 = v11;
  v13 = 0.4;
  if (!*(v0 + OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_isUserActive))
  {
    v13 = 0.5;
  }

  v14 = [v11 colorWithAlphaComponent:v13];

  v15 = sub_100003FBC(0, &qword_100015240);
  *(inited + 80) = v14;
  *(inited + 104) = v15;
  *(inited + 112) = NSStrokeColorAttributeName;
  v16 = *(v0 + OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_strokeColor);
  *(inited + 120) = v16;
  *(inited + 144) = v15;
  *(inited + 152) = NSStrokeWidthAttributeName;
  *(inited + 184) = &type metadata for Double;
  *(inited + 160) = 0xBFF0000000000000;
  v17 = NSStrokeColorAttributeName;
  v18 = v16;
  v19 = NSStrokeWidthAttributeName;
  sub_100009EEC(inited);
  swift_setDeallocating();
  sub_100003F2C(&qword_100015248);
  swift_arrayDestroy();
  v20 = [objc_opt_self() mainBundle];
  v28._object = 0xE300000000000000;
  v21._object = 0x800000010000E260;
  v21._countAndFlagsBits = 0xD000000000000025;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v28._countAndFlagsBits = 7104878;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v28);

  v23 = objc_allocWithZone(NSAttributedString);
  v24 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10000A014(&qword_100014F78, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithString:v24 attributes:isa];

  return v26;
}

void sub_100007ED4()
{
  [v0 bounds];
  v53 = v2;
  v54 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *&v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_headlineLabel];
  [v7 bounds];
  Width = CGRectGetWidth(v58);
  v9 = *&v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_subheadingLabel];
  [v9 bounds];
  v10 = CGRectGetWidth(v59);
  if (Width <= v10)
  {
    Width = v10;
  }

  [v7 bounds];
  Height = CGRectGetHeight(v60);
  [v9 bounds];
  v12 = Height + CGRectGetHeight(v61);
  [v7 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v9 frame];
  v65.origin.x = v21;
  v65.origin.y = v22;
  v65.size.width = v23;
  v65.size.height = v24;
  v62.origin.x = v14;
  v62.origin.y = v16;
  v62.size.width = v18;
  v62.size.height = v20;
  v56 = CGRectUnion(v62, v65);
  v57 = 0;
  v63.origin.x = sub_100004E10(&v56, Width, v12, v54, v53, v4, v6);
  x = v63.origin.x;
  y = v63.origin.y;
  v27 = v63.size.width;
  v28 = v63.size.height;
  MidX = CGRectGetMidX(v63);
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = v27;
  v64.size.height = v28;
  MidY = CGRectGetMidY(v64);
  v31 = &v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textPosition];
  *v31 = MidX;
  v31[1] = MidY;
  *(v31 + 16) = 0;
  if (qword_100014C10 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000044B8(v32, qword_100015058);
  v33 = v0;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v34, v35))
  {

    goto LABEL_9;
  }

  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  aBlock[0] = v37;
  *v36 = 136315138;
  v38 = *(v31 + 16);

  if ((v38 & 1) == 0)
  {
    v39 = CGPoint.debugDescription.getter();
    v41 = sub_100008EF8(v39, v40, aBlock);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v34, v35, "Moving Automation Mode text group to %s", v36, 0xCu);
    sub_100004720(v37);

LABEL_9:

    v42 = objc_opt_self();
    [v42 begin];
    v43 = swift_allocObject();
    *(v43 + 16) = v33;
    aBlock[4] = sub_100008EF0;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000025D4;
    aBlock[3] = &unk_100011040;
    v44 = _Block_copy(aBlock);
    v45 = v33;

    [v42 setCompletionBlock:v44];
    _Block_release(v44);
    v46 = [objc_allocWithZone(CABasicAnimation) init];
    v47 = String._bridgeToObjectiveC()();
    [v46 setKeyPath:v47];

    isa = Double._bridgeToObjectiveC()().super.super.isa;
    [v46 setFromValue:isa];

    v49 = Double._bridgeToObjectiveC()().super.super.isa;
    [v46 setToValue:v49];

    v50 = v46;
    [v50 setDuration:0.3];
    [v50 setBeginTime:0.0];

    [v7 setOpacity:0.0];
    [v9 setOpacity:0.0];
    v51 = String._bridgeToObjectiveC()();
    [v7 addAnimation:v50 forKey:v51];

    v52 = String._bridgeToObjectiveC()();
    [v9 addAnimation:v50 forKey:v52];

    [v42 commit];
    return;
  }

  __break(1u);
}

void sub_1000083EC(char *a1)
{
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions:1];
  [a1 layoutSublayers];
  [v2 commit];
  [v2 begin];
  v3 = [objc_allocWithZone(CABasicAnimation) init];
  v4 = String._bridgeToObjectiveC()();
  [v3 setKeyPath:v4];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v3 setFromValue:isa];

  v6 = Double._bridgeToObjectiveC()().super.super.isa;
  [v3 setToValue:v6];

  v13 = v3;
  [v13 setDuration:0.3];
  [v13 setBeginTime:0.5];

  v7 = *&a1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_headlineLabel];
  v8 = String._bridgeToObjectiveC()();
  [v7 addAnimation:v13 forKey:v8];

  v9 = *&a1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_subheadingLabel];
  v10 = String._bridgeToObjectiveC()();
  [v9 addAnimation:v13 forKey:v10];

  LODWORD(v11) = 1.0;
  [v7 setOpacity:v11];
  LODWORD(v12) = 1.0;
  [v9 setOpacity:v12];
  [v2 commit];
}

id sub_100008624()
{
  v1 = v0;
  v2 = [objc_opt_self() blackColor];
  v3 = v2;
  v4 = 0.6;
  if (v0[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_isUserActive])
  {
    v4 = 0.15;
  }

  v5 = [v2 colorWithAlphaComponent:v4];

  v6 = [v5 CGColor];
  [v1 setBackgroundColor:v6];

  v7 = *&v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_headlineLabel];
  [v1 contentsScale];
  [v7 setContentsScale:?];
  v8 = sub_100007780();
  [v7 setString:v8];

  v9 = sub_100007780();
  [v1 bounds];
  v71 = CGRectInset(v70, 6.0, 6.0);
  width = v71.size.width;
  height = v71.size.height;
  v12 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v12 setLineBreakMode:0];
  v13 = [v9 attributesAtIndex:0 effectiveRange:0];
  type metadata accessor for Key(0);
  sub_10000A014(&qword_100014F78, type metadata accessor for Key);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_100003FBC(0, &qword_100015258);
  *(&v68 + 1) = v14;
  *&v67 = v12;
  sub_10000A05C(&v67, v66);
  v15 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = NSParagraphStyleAttributeName;
  sub_100009A94(v66, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
  v17 = [v9 string];
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v17 boundingRectWithSize:1 options:isa attributes:0 context:{width, height}];
  v20 = v19;
  v22 = v21;

  [v7 setBounds:{0.0, 0.0, v20, v22}];
  v23 = *&v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_subheadingLabel];
  [v1 contentsScale];
  [v23 setContentsScale:?];
  v24 = sub_100007B34();
  [v23 setString:v24];

  v25 = sub_100007B34();
  [v1 bounds];
  v73 = CGRectInset(v72, 6.0, 6.0);
  v26 = v73.size.width;
  v27 = v73.size.height;
  v28 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v28 setLineBreakMode:0];
  v29 = [v25 attributesAtIndex:0 effectiveRange:0];
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(&v68 + 1) = v14;
  *&v67 = v28;
  sub_10000A05C(&v67, v66);
  v31 = v28;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100009A94(v66, NSParagraphStyleAttributeName, v32);
  v33 = [v25 string];
  if (!v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();
  }

  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v33 boundingRectWithSize:1 options:v34 attributes:0 context:{v26, v27}];
  v36 = v35;
  v38 = v37;

  [v23 setBounds:{0.0, 0.0, v36, v38}];
  v39 = &v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textPosition];
  if (v1[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textPosition + 16] == 1)
  {
    [v1 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    [v7 bounds];
    v48 = CGRectGetWidth(v74);
    [v23 bounds];
    v49 = CGRectGetWidth(v75);
    if (v48 <= v49)
    {
      v48 = v49;
    }

    [v7 bounds];
    v50 = CGRectGetHeight(v76);
    [v23 bounds];
    v51 = CGRectGetHeight(v77);
    v67 = 0u;
    v68 = 0u;
    v69 = 1;
    v78.origin.x = sub_100004E10(&v67, v48, v50 + v51, v41, v43, v45, v47);
    x = v78.origin.x;
    y = v78.origin.y;
    v54 = v78.size.width;
    v55 = v78.size.height;
    MidX = CGRectGetMidX(v78);
    v79.origin.x = x;
    v79.origin.y = y;
    v79.size.width = v54;
    v79.size.height = v55;
    MidY = CGRectGetMidY(v79);
    *v39 = MidX;
    v39[1] = MidY;
    *(v39 + 16) = 0;
  }

  else
  {
    MidX = *v39;
    MidY = v39[1];
  }

  [v7 bounds];
  [v23 bounds];
  [v7 bounds];
  v58 = CGRectGetHeight(v82);
  [v23 bounds];
  v59 = (v58 + CGRectGetHeight(v83)) * 0.5;
  [v7 bounds];
  result = [v7 setPosition:{MidX, MidY - (v59 - CGRectGetHeight(v84) * 0.5 + 2.0)}];
  if (v39[2])
  {
    __break(1u);
  }

  else
  {
    v61 = *v39;
    v62 = v39[1];
    [v7 bounds];
    [v23 bounds];
    [v7 bounds];
    v63 = CGRectGetHeight(v87);
    [v23 bounds];
    v64 = (v63 + CGRectGetHeight(v88)) * 0.5;
    [v23 bounds];
    return [v23 setPosition:{v61, v62 + v64 - CGRectGetHeight(v89) * 0.5 + 2.0}];
  }

  return result;
}

uint64_t sub_100008DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008E0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100008E54()
{
  result = qword_100014ED8;
  if (!qword_100014ED8)
  {
    sub_100003F74(&qword_100014ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014ED8);
  }

  return result;
}

uint64_t sub_100008EB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100008EF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008FC4(v11, 0, 0, 1, a1, a2);
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
    sub_1000090D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004720(v11);
  return v7;
}

unint64_t sub_100008FC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000912C(a5, a6);
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

uint64_t sub_1000090D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_10000912C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100009178(a1, a2);
  sub_1000092A8(&off_1000109A8);
  return v3;
}

char *sub_100009178(uint64_t a1, unint64_t a2)
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

  v6 = sub_100009394(v5, 0);
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
        v7 = sub_100009394(v10, 0);
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

uint64_t sub_1000092A8(uint64_t result)
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

  result = sub_100009408(result, v11, 1, v3);
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

void *sub_100009394(uint64_t a1, uint64_t a2)
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

  sub_100003F2C(&qword_100015228);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009408(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F2C(&qword_100015228);
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

unint64_t sub_1000094FC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100009608(a1, a2, v4);
}

unint64_t sub_100009574(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000096C0(a1, v2);
}

unint64_t sub_100009608(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000096C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1000097C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100003F2C(&qword_100015250);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_10000A05C(v22, v36);
      }

      else
      {
        sub_1000090D0(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_10000A05C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_100009A94(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100009574(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100009C3C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000097C4(v13, a3 & 1);
    v8 = sub_100009574(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100004720(v19);

    return sub_10000A05C(a1, v19);
  }

  else
  {
    sub_100009BD4(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_100009BD4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10000A05C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id sub_100009C3C()
{
  v1 = v0;
  sub_100003F2C(&qword_100015250);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000090D0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10000A05C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_100009DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F2C(&qword_100015270);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A38C(v4, &v13, &qword_100015268);
      v5 = v13;
      v6 = v14;
      result = sub_1000094FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000A05C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100009EEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F2C(&qword_100015250);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A38C(v4, &v11, &qword_100015248);
      v5 = v11;
      result = sub_100009574(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000A05C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_10000A014(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_10000A05C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_10000A06C()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  sub_100003F2C(&qword_100015260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000D2C0;
  *(inited + 32) = 0xD00000000000001DLL;
  v3 = inited + 32;
  *(inited + 72) = &type metadata for Double;
  *(inited + 40) = 0x800000010000E340;
  *(inited + 48) = 0x403E000000000000;
  sub_100009DBC(inited);
  swift_setDeallocating();
  sub_10000A324(v3);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 registerDefaults:isa];

  v5 = [v0 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  [v5 doubleForKey:v6];
  v8 = v7;

  return v8;
}

void sub_10000A1EC()
{
  v1 = v0 + OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textPosition;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_textGroupMoveTimer) = 0;
  *(v0 + OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_isUserActive) = 0;
  v2 = OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_strokeColor;
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  *(v0 + v2) = v4;
  *(v0 + OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_strokeWidth) = 0xBFF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10000A2E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A324(uint64_t a1)
{
  v2 = sub_100003F2C(&qword_100015268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A38C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100003F2C(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000A410()
{
  sub_10000A470();
  result = OS_os_log.init(subsystem:category:)();
  qword_1000159A0 = result;
  return result;
}

unint64_t sub_10000A470()
{
  result = qword_100015288;
  if (!qword_100015288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100015288);
  }

  return result;
}

uint64_t sub_10000A4BC()
{
  v0 = type metadata accessor for Logger();
  sub_10000476C(v0, qword_100015290);
  sub_1000044B8(v0, qword_100015290);
  if (qword_100014C18 != -1)
  {
    swift_once();
  }

  v1 = qword_1000159A0;
  return Logger.init(_:)();
}

void sub_10000A548()
{
  v1 = v0;
  v2 = sub_100003F2C(&qword_1000153F8);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  sub_10000B43C();
  v5 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10000C0A8;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A7A8;
  aBlock[3] = &unk_100011150;
  v7 = _Block_copy(aBlock);

  v8 = XAMRegisterAutomationModeChangeHandler();
  _Block_release(v7);

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = OBJC_IVAR____TtC16AutomationModeUI16AutomationModeUI_observationToken;
  swift_beginAccess();
  sub_10000C0B0(v4, v1 + v10);
  swift_endAccess();
  v11 = [objc_opt_self() currentRunLoop];
  [v11 run];
}

uint64_t sub_10000A748(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000A7FC(a1 & 1);
  }

  return result;
}

uint64_t sub_10000A7A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10000A7FC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000B43C();
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    Logger.init()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    if (a1)
    {
      if (v16)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Handling transition to automation mode ENABLED", v17, 2u);
      }

      v18 = *(v2 + 24);
      *(v2 + 24) = 0;
      if (v18)
      {
        sub_100006ED4();
      }

      type metadata accessor for EventManager();
      v19 = swift_allocObject();
      v19[5] = 0;
      swift_unknownObjectWeakInit();
      v19[6] = 0;
      v19[2] = IOHIDEventSystemClientCreate();
      v20 = sub_10000BC7C(&off_100010980);
      v21 = swift_allocObject();
      *(v21 + 16) = 0x4000000000000000;
      type metadata accessor for ButtonPressStateMachine();
      swift_allocObject();
      v19[3] = sub_100001AAC(v20, sub_10000BD00, v21);
      *(v2 + 16) = v19;

      v19[5] = &off_1000110B8;
      swift_unknownObjectWeakAssign();

      if (*(v2 + 16))
      {

        sub_100002F18();
      }

      if ((sub_10000BE58() & 1) == 0)
      {
        return (*(v5 + 8))(v7, v4);
      }

      v22 = [objc_opt_self() mainDisplay];
      if (!v22)
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "No main display (CADisplay.main() returned nil).", v31, 2u);
        }

        return (*(v5 + 8))(v7, v4);
      }

      v23 = v22;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 67109120;
        *(v26 + 4) = [v23 displayId];

        _os_log_impl(&_mh_execute_header, v24, v25, "Creating overlay for main display with id %u", v26, 8u);
      }

      else
      {

        v24 = v23;
      }

      type metadata accessor for Overlay();
      swift_allocObject();
      v32 = v23;
      v33 = sub_100005AB4(v32);
      v34 = *(v2 + 24);
      *(v2 + 24) = v33;
      if (v34)
      {

        sub_100006ED4();

        v33 = *(v2 + 24);
      }

      if (!v33)
      {

        return (*(v5 + 8))(v7, v4);
      }

      sub_10000605C();
    }

    else
    {
      if (v16)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Handling transition to automation mode disabled", v27, 2u);
      }

      if (*(v2 + 16))
      {

        sub_100003900();
      }

      *(v2 + 16) = 0;

      v28 = *(v2 + 24);
      *(v2 + 24) = 0;
      if (!v28)
      {
        return (*(v5 + 8))(v7, v4);
      }

      sub_100006ED4();
    }

    return (*(v5 + 8))(v7, v4);
  }

  __break(1u);
  return result;
}

void sub_10000AD98(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100014C20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000044B8(v1, qword_100015290);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136446210;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_100008EF8(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Request to disable automation mode failed with error %{public}s", v4, 0xCu);
      sub_100004720(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100014C20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000044B8(v9, qword_100015290);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Request to disable automation mode succeeded.", v11, 2u);
    }
  }
}

void sub_10000B02C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10000B0B8(const char *a1, char a2)
{
  v5 = v2;
  if (qword_100014C20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000044B8(v6, qword_100015290);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(v5 + 24);
  if (v10)
  {
    *(v10 + 56) = a2;
    v11 = *(v10 + 40);
    if (v11)
    {
      v11[OBJC_IVAR____TtC16AutomationModeUI12OverlayLayer_isUserActive] = a2;

      [v11 layoutSublayers];
    }
  }
}

uint64_t sub_10000B1F0()
{

  sub_10000BFF0(v0 + OBJC_IVAR____TtC16AutomationModeUI16AutomationModeUI_observationToken);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AutomationModeUI();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC16AutomationModeUI16AutomationModeUI_observationToken;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  sub_10000A548();

  return 0;
}

uint64_t type metadata accessor for AutomationModeUI()
{
  result = qword_1000152D0;
  if (!qword_1000152D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B348()
{
  sub_10000B3E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000B3E4()
{
  if (!qword_1000152E0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000152E0);
    }
  }
}

unint64_t sub_10000B43C()
{
  result = qword_100014EA0;
  if (!qword_100014EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014EA0);
  }

  return result;
}

uint64_t sub_10000B488(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10000B7D0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10000B580()
{
  v1 = v0;
  v2 = *v0;
  sub_100003F2C(&qword_1000153F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_10000B7D0(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000B580();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10000B91C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10000BA5C();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10000B91C()
{
  v1 = v0;
  sub_100003F2C(&qword_1000153F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000BA5C()
{
  v1 = v0;
  v2 = *v0;
  sub_100003F2C(&qword_1000153F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000BC7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10000BF9C();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10000B488(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_10000BD08()
{
  if (qword_100014C20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000044B8(v0, qword_100015290);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "User invoked gesture for stopping automation.", v3, 2u);
  }

  v5[4] = sub_10000AD98;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000B02C;
  v5[3] = &unk_100011100;
  v4 = _Block_copy(v5);
  XAMDisableAutomationModeWithCompletion();
  _Block_release(v4);
}

uint64_t sub_10000BE58()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    if (qword_100014C20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000044B8(v3, qword_100015290);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Overlay displayed for local development because of LocalAutomationModeUIDevelopment user default.", v6, 2u);
    }
  }

  return 1;
}

unint64_t sub_10000BF9C()
{
  result = qword_1000153E8;
  if (!qword_1000153E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000153E8);
  }

  return result;
}

uint64_t sub_10000BFF0(uint64_t a1)
{
  v2 = sub_100003F2C(&qword_1000153F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C058(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C070()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F2C(&qword_1000153F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}