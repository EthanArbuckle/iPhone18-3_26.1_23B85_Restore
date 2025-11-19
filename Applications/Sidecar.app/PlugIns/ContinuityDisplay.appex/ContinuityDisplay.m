void sub_100001F70(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for App();
  objc_msgSendSuper2(&v4, "sendEvent:", a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = sub_100002EC4();
    sub_10003BC60(v3);
  }
}

id sub_10000203C()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for App();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000020A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for App();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100002150()
{
  result = qword_10007EEC0;
  if (!qword_10007EEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007EEC0);
  }

  return result;
}

uint64_t variable initialization expression of SidecarDisplaySession.settings()
{
  if (qword_10007E8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_100083C48;
  v1 = unk_100083C50;
  v3 = qword_100083C58;
  v2 = unk_100083C60;

  v4 = v3;

  sub_10000699C(v0, v1, v4, v2);
  sub_100002EC4();

  return v0;
}

__n128 sub_1000022BC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000022C8(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return sub_100002EB8(a1);
  }

  else
  {
    return variable initialization expression of Clock.heartbeat();
  }
}

uint64_t sub_1000022DC(uint64_t result, int a2, int a3)
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

__n128 initializeBufferWithCopyOfBuffer for TouchController.MultitouchState.Point(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000233C(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_100002EB8(a1);
  }

  else
  {
    return variable initialization expression of Clock.heartbeat();
  }
}

uint64_t storeEnumTagSinglePayload for TouchController.MultitouchState.Point(uint64_t result, int a2, int a3)
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

uint64_t sub_1000023F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002B00();
  *a1 = result;
  return result;
}

void sub_100002470(uint64_t a1@<X8>)
{
  sub_1000024A4();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1000024AC()
{
  v1 = sub_100002EAC();
  result = VideoStream.qosMonitorServerDidDie(_:)(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1000024F4()
{
  sub_100002EAC();
  result = sub_10000251C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_100002520(uint64_t a1)
{
  v2 = sub_100002728(&qword_10007EA90, type metadata accessor for AVCQoSReportKey);
  v3 = sub_100002728(&qword_10007EA98, type metadata accessor for AVCQoSReportKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000025DC(uint64_t a1)
{
  v2 = sub_100002728(&qword_10007EA20, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_100002728(&qword_10007EA28, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000027B8@<X0>(void *a1@<X8>)
{
  v2 = sub_100057A20();

  *a1 = v2;
  return result;
}

uint64_t sub_100002800(uint64_t a1)
{
  v2 = sub_100002728(&qword_10007EAA0, type metadata accessor for Key);
  v3 = sub_100002728(&qword_10007EAA8, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000028BC()
{
  v0 = sub_100057A50();
  v2 = v1;
  if (v0 == sub_100057A50() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100058230();
  }

  return v5 & 1;
}

uint64_t sub_100002940()
{
  sub_100057A50();
  sub_100057AB0();
}

Swift::Int sub_100002994()
{
  sub_100057A50();
  sub_1000582B0();
  sub_100057AB0();
  v0 = sub_1000582F0();

  return v0;
}

uint64_t sub_100002A08(uint64_t a1, id *a2)
{
  v3 = sub_100057A40();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002A88(uint64_t a1, id *a2)
{
  result = sub_100057A30();
  *a2 = 0;
  return result;
}

uint64_t sub_100002B00()
{
  sub_100057A50();
  sub_100057A20();
  sub_100002EC4();

  return v0;
}

uint64_t sub_100002B34()
{
  sub_100057A50();
  sub_100057B60();
  sub_100002EC4();

  return v0;
}

uint64_t sub_100002D98(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002DB8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

void sub_100002E18(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002ED0()
{
  sub_100005A1C(0, &qword_10007ECE0);
  result = sub_100022718(51);
  qword_10007EB80 = result;
  return result;
}

void sub_100002F18(uint64_t a1)
{
  v2 = v1;
  v35 = sub_100057DB0();
  sub_1000068E4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000068D4();
  v8 = v7 - v6;
  v9 = sub_100057D90();
  __chkstk_darwin(v9);
  sub_1000068D4();
  v10 = sub_100057910();
  __chkstk_darwin(v10 - 8);
  sub_1000068D4();
  *(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_timeSyncClock) = 0;
  v11 = (v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_touchBounds);
  *v11 = 0u;
  v11[1] = 0u;
  v12 = OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_tracking;
  type metadata accessor for TouchTrackerLog();
  swift_allocObject();
  *(v1 + v12) = TouchTrackerLog.init()();
  v13 = v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_keyboardBounds;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_peerSupportsHIDReportExtensions) = 0;
  v34 = OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_dispatchQueue;
  sub_100005A1C(0, &qword_10007EEC0);
  sub_100057900();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100005920(&qword_10007ECC8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005890(&qword_10007ECD0);
  sub_100005968(&qword_10007ECD8, &qword_10007ECD0);
  sub_100058000();
  (*(v4 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v35);
  if (qword_10007E8E0 != -1)
  {
    swift_once();
  }

  v14 = qword_10007EB80;
  *(v1 + v34) = sub_100057DF0();
  *(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidStream) = 0;
  *(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidDevice) = 0;
  v15 = OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_keyboardReport;
  type metadata accessor for HIDReport();
  v16 = HIDReport.__allocating_init(count:)(8);

  v17 = KeyboardReport.reportID.unsafeMutableAddressor();
  HIDReport.subscript.setter(*v17, 0);

  *(v2 + v15) = v16;
  v18 = OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_logger;
  v19 = sub_100057880();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v2 + v18, a1, v19);
  v21 = [objc_opt_self() mainScreen];
  [v21 bounds];
  v23 = v22;
  v25 = v24;

  v26 = (v2 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_screenSize);
  *v26 = v23;
  v26[1] = v25;
  v27 = UIApp;
  if (UIApp)
  {
    v41 = sub_1000059BC;
    v42 = v2;
    sub_1000068F8();
    v38 = 1107296256;
    v39 = sub_100003500;
    v40 = &unk_100072740;
    v28 = _Block_copy(&aBlock);

    v29 = v27;

    [v29 _setHIDEventObserver:v28 onQueue:*(v2 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_dispatchQueue)];
    _Block_release(v28);

    v30 = sub_1000059C0();
    if (!v30)
    {
LABEL_7:
      (*(v20 + 8))(a1, v19);
      return;
    }

    if (kCFRunLoopDefaultMode)
    {
      v31 = v30;
      v41 = sub_10000356C;
      v42 = 0;
      sub_1000068F8();
      v38 = 1107296256;
      v39 = sub_10000AF8C;
      v40 = &unk_100072768;
      v32 = _Block_copy(&aBlock);
      v33 = v31;
      CFRunLoopPerformBlock(v33, kCFRunLoopDefaultMode, v32);
      _Block_release(v32);
      CFRunLoopWakeUp(v33);

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100003484(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v4 = a1;
  Type = IOHIDEventGetType();
  if (Type == 3)
  {
    sub_100003C20(v4);
  }

  else if (Type == 39)
  {
    sub_100003CEC(v4);
  }

  else
  {
    v2 = Type == 11;
    v3 = v4;
    if (!v2)
    {
      goto LABEL_10;
    }

    sub_1000048FC();
  }

  v3 = v4;
LABEL_10:
}

void sub_100003500(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10000356C()
{
  pthread_set_fixedpriority_self();
  sub_100005A1C(0, &qword_10007ECE0);
  return sub_100022860(51);
}

uint64_t sub_1000035B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_peerSupportsHIDReportExtensions;
  result = swift_beginAccess();
  *(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_peerSupportsHIDReportExtensions) = *(a1 + v3);
  return result;
}

uint64_t sub_100003610(void *a1)
{
  v2 = v1;
  v4 = sub_100057880();
  sub_1000068E4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000068D4();
  v10 = v9 - v8;
  v11 = [a1 rapportStream];
  [v11 setDispatchQueue:*(v2 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_dispatchQueue)];

  v12 = *(v2 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidStream);
  *(v2 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidStream) = a1;

  (*(v6 + 16))(v10, v2 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_logger, v4);
  type metadata accessor for DisplayHIDDevice();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidDevice) = sub_10001CCD4(v10, a1);
}

uint64_t sub_100003764()
{
  if (*(v0 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidDevice))
  {

    sub_10001CF58();
  }

  return result;
}

uint64_t sub_1000037BC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidDevice))
  {
    v2 = result;

    sub_10001DA2C(v2);
  }

  return result;
}

uint64_t sub_100003890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = (*(**(a1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_tracking) + 136))(a2, a3);
  *a4 = result & 1;
  return result;
}

uint64_t sub_100003900(void *a1)
{
  [a1 _pathIndex];
  [a1 timestamp];
  HostTime.init(nanoseconds:)(v2 * 1000000000.0);

  return sub_10000381C();
}

uint64_t sub_100003970(uint64_t a1)
{
  v3 = sub_1000578E0();
  sub_1000068E4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000068D4();
  v9 = v8 - v7;
  v20 = sub_100057910();
  sub_1000068E4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000068D4();
  v15 = v14 - v13;
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 24) = *a1;
  *(v16 + 16) = v1;
  *(v16 + 40) = v17;
  *(v16 + 56) = *(a1 + 32);
  aBlock[4] = sub_100005850;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AF8C;
  aBlock[3] = &unk_100072718;
  v18 = _Block_copy(aBlock);

  sub_100057900();
  sub_100005920(&qword_10007F010, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005890(&unk_10007ED80);
  sub_100005968(&qword_10007F020, &unk_10007ED80);
  sub_100058000();
  sub_100057DE0();
  _Block_release(v18);
  (*(v5 + 8))(v9, v3);
  (*(v11 + 8))(v15, v20);
}

void sub_100003C20(void *a1)
{
  if (IOHIDEventGetType() == 3)
  {
    v6 = a1;
    IntegerValue = IOHIDEventGetIntegerValue();
    v4 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_keyboardReport);
    v5 = HIDEvent.Keyboard.usage.getter();
    if (IntegerValue)
    {
      KeyboardReport.addUsage(_:)(v5);
    }

    else
    {
      KeyboardReport.removeUsage(_:)(v5);
    }

    if (*(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidDevice))
    {

      sub_10001DA2C(v4);
    }
  }
}

unint64_t sub_100003CEC(void *a1)
{
  result = IOHIDEventGetType();
  if (result != 39 || !*(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidDevice))
  {
    return result;
  }

  v4 = a1;
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(result))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (result == 5)
  {
    sub_100003F74();
  }

  else if (!result)
  {
    sub_100003DA4();
  }
}

uint64_t sub_100003DA4()
{
  type metadata accessor for HIDReport();
  v0 = HIDReport.__allocating_init(count:)(21);

  v1 = PencilReport.reportID.unsafeMutableAddressor();
  HIDReport.subscript.setter(*v1, 0);

  TimeStamp = IOHIDEventGetTimeStamp();
  HostTime.nanoseconds.getter();
  v4 = v3 / 0x186A0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = HIDReport.__allocating_init(count:)(v0[3]);
    HIDReport.copy(from:)(v0);

    v0 = v5;
  }

  HIDReport.setValue(_:at:)(v4, 9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = HIDReport.__allocating_init(count:)(v0[3]);
    HIDReport.copy(from:)(v0);

    v0 = v6;
  }

  HIDReport.setValue(_:at:)(TimeStamp, 11);
  v7 = 0;
  do
  {
    v8 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = HIDReport.__allocating_init(count:)(v0[3]);
      HIDReport.copy(from:)(v0);

      v0 = v9;
    }

    HIDReport.setValue(_:at:bit:)(1, 5, 2);
    sub_1000042F4(v0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = HIDReport.__allocating_init(count:)(v0[3]);
      HIDReport.copy(from:)(v0);

      v0 = v10;
    }

    HIDReport.setValue(_:at:bit:)(0, 5, 2);
    sub_1000042F4(v0);
    v7 = 1;
  }

  while ((v8 & 1) == 0);
}

uint64_t sub_100003F74()
{
  result = sub_1000043B8();
  if (v1)
  {
    type metadata accessor for HIDReport();
    HIDReport.__allocating_init(count:)(32);

    v2 = SqueezeGestureReport.reportID.unsafeMutableAddressor();
    HIDReport.subscript.setter(*v2, 0);

    TimeStamp = IOHIDEventGetTimeStamp();
    sub_100005BA4();
    HIDReport.storeValue<A>(_:to:at:)(&TimeStamp, &type metadata for UInt64, 2, &type metadata for UInt64);
    LOWORD(TimeStamp) = word_10005B1FA[HIDEvent.phase.getter()];
    sub_100005B34();
    HIDReport.storeValue<A>(_:to:at:)(&TimeStamp, &type metadata for UInt16, 1, &type metadata for UInt16);
    sub_1000067C4();
    HIDReport.loadValue<A>(from:at:)(0, &type metadata for UInt32, &TimeStamp);
    v3 = TimeStamp;
    if (TimeStamp >= 0xFF)
    {
      v3 = -1;
    }

    LOBYTE(TimeStamp) = v3;
    sub_100005AE0();
    HIDReport.storeValue<A>(_:to:at:)(&TimeStamp, &type metadata for UInt8, 10, &type metadata for UInt8);
    HIDReport.loadValue<A>(from:at:)(4, &type metadata for UInt32, &TimeStamp);
    v4 = TimeStamp;
    if (TimeStamp >= 0xFF)
    {
      v4 = -1;
    }

    LOBYTE(TimeStamp) = v4;
    HIDReport.storeValue<A>(_:to:at:)(&TimeStamp, &type metadata for UInt8, 11, &type metadata for UInt8);
    v5 = COERCE_DOUBLE(HIDReport.getValue(_:at:)(8uLL));
    if (v5 <= 0.0)
    {
      v5 = 0.0;
    }

    if (v5 > 1.0)
    {
      v5 = 1.0;
    }

    HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(0.0, 4294967300.0, 0.0, 1.0, 0.0, *&v5, 0, &type metadata for UInt32, 12, &type metadata for UInt32);
    v6 = COERCE_DOUBLE(HIDReport.getValue(_:at:)(0x10uLL));
    if (v6 <= 0.0)
    {
      v6 = 0.0;
    }

    if (v6 > 1.0)
    {
      v6 = 1.0;
    }

    HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(0.0, 4294967300.0, 0.0, 1.0, 0.0, *&v6, 0, &type metadata for UInt32, 16, &type metadata for UInt32);
    v7 = COERCE_DOUBLE(HIDReport.getValue(_:at:)(0x18uLL));
    if (v7 <= 0.0)
    {
      v7 = 0.0;
    }

    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(0.0, 4294967300.0, 0.0, 1.0, 0.0, *&v7, 0, &type metadata for UInt32, 20, &type metadata for UInt32);
    v8 = COERCE_DOUBLE(HIDReport.getValue(_:at:)(0x20uLL));
    if (v8 <= 0.0)
    {
      v8 = 0.0;
    }

    if (v8 > 1.0)
    {
      v8 = 1.0;
    }

    HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(0.0, 4294967300.0, 0.0, 1.0, 0.0, *&v8, 0, &type metadata for UInt32, 24, &type metadata for UInt32);
    v9 = HIDReport.getValue(_:at:)(0x28uLL);
    *&v10 = HIDFixed.init(doubleValue:)(*&v9);
    if ((v10 & 0x100000000) == 0)
    {
      LODWORD(TimeStamp) = v10;
      sub_100006818();
      HIDReport.storeValue<A>(_:to:at:)(&TimeStamp, &type metadata for Int32, 28, &type metadata for Int32);
    }

    sub_1000037BC(v11);
  }

  return result;
}

uint64_t sub_1000042F4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidDevice))
  {
    v2 = result;
    if (*(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_peerSupportsHIDReportExtensions) == 1)
    {
    }

    else
    {
      type metadata accessor for HIDReport();

      v3 = HIDReport.__allocating_init(count:)(19);
      HIDReport.copy(from:)(v2);
      v2 = v3;
    }

    sub_10001DA2C(v2);
  }

  return result;
}

uint64_t sub_1000043B8()
{
  v0 = sub_100057780();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000576B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = HIDEvent.children.getter();
  v9 = 0;
  v10 = v8[2];
  v40 = enum case for Data.Deallocator.none(_:);
  v38 = (v3 + 8);
  v39 = (v3 + 104);
  v37 = v2;
  while (1)
  {
    if (v10 == v9)
    {

      return 0;
    }

    if (v9 >= v8[2])
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      JUMPOUT(0x1000048ECLL);
    }

    v11 = v8[v9 + 4];
    if (IOHIDEventGetType() == 1 && IOHIDEventGetIntegerValue() == 65280 && IOHIDEventGetIntegerValue() == 17)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      DataValue = IOHIDEventGetDataValue();
      v36 = *v39;
      v36(v7, v40, v2);
      sub_1000576A0();
      if (!IntegerValue)
      {
        v21 = sub_1000576A0();
        v21(DataValue, 0);

        v2 = v37;
        (*v38)(v7, v37);
        v16 = 0;
        v18 = 0xC000000000000000;
LABEL_11:
        sub_10000686C(v16, v18);
        goto LABEL_17;
      }

      sub_100057640();
      swift_allocObject();

      sub_1000575F0();
      v14 = sub_100057630();
      *v15 |= 0x8000000000000000;
      v14(v41, 0);
      v16 = sub_1000576F0();
      v18 = v17;

      v2 = v37;
      v19 = v7;
      (*v38)(v7, v37);
      switch(v18 >> 62)
      {
        case 1uLL:
          sub_10000686C(v16, v18);
          LODWORD(v20) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_23;
          }

          v20 = v20;
          break;
        case 2uLL:
          v22 = v2;
          v24 = *(v16 + 16);
          v23 = *(v16 + 24);
          sub_10000686C(v16, v18);
          v20 = v23 - v24;
          if (__OFSUB__(v23, v24))
          {
            goto LABEL_22;
          }

          v2 = v22;
          v7 = v19;
          break;
        case 3uLL:
          goto LABEL_11;
        default:
          sub_10000686C(v16, v18);
          v20 = BYTE6(v18);
          break;
      }

      if (v20 >= 48)
      {
        break;
      }
    }

LABEL_17:

    ++v9;
  }

  type metadata accessor for HIDReport();
  HIDReport.__allocating_init(count:)(48);
  IOHIDEventGetIntegerValue();
  IOHIDEventGetDataValue();
  v36(v32, v40, v2);
  v27 = sub_1000576D0();
  v29 = v28;
  v30 = v33;
  sub_1000576E0();
  sub_10000686C(v27, v29);
  (*(v34 + 8))(v30, v35);
  TimeStamp = IOHIDEventGetTimeStamp();

  return TimeStamp;
}

uint64_t sub_1000048FC()
{
  v1 = v0;
  result = IOHIDEventGetType();
  if (result != 11)
  {
    return result;
  }

  HIDEvent.Digitizer.children.getter();
  v4 = v3;
  v5 = 0;
  v70 = &_swiftEmptyArrayStorage;
  v6 = *(v3 + 16);
  while (v6 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
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
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v7 = *(v4 + 8 * v5 + 32);
    IntegerValue = IOHIDEventGetIntegerValue();
    if ((IntegerValue & 0x8000000000000000) != 0)
    {
      goto LABEL_86;
    }

    if (HIDWORD(IntegerValue))
    {
      goto LABEL_87;
    }

    if (IntegerValue == 2)
    {
      goto LABEL_8;
    }

    v9 = IOHIDEventGetIntegerValue();
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_88;
    }

    if (HIDWORD(v9))
    {
      goto LABEL_89;
    }

    if (v9 || (IOHIDEventGetIntegerValue() & 0x400) != 0 || (IOHIDEventGetIntegerValue() & 0x800000) != 0)
    {
    }

    else
    {
LABEL_8:
      sub_1000580C0();
      sub_1000580F0();
      sub_100058100();
      sub_1000580D0();
    }

    ++v5;
  }

  v10 = *(v0 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_tracking);
  TimeStamp = IOHIDEventGetTimeStamp();
  v12 = (*(*v10 + 128))(v70, TimeStamp, sub_100005A5C, v1, &type metadata for HIDEvent.Digitizer, &protocol witness table for HIDEvent.Digitizer);

  v70 = v12;

  sub_100005A64(&v70);

  if (!v70[2] || (v66 = v70, !*(v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_hidDevice)))
  {
  }

  v64 = IOHIDEventGetTimeStamp();
  HostTime.nanoseconds.getter();
  v14 = v13 * 0.00001;
  if (v14 == INFINITY)
  {
    goto LABEL_97;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);

    __break(1u);
    return result;
  }

  if (v14 >= 9.22337204e18)
  {
    goto LABEL_99;
  }

  v70 = &_swiftEmptyArrayStorage;
  v15 = v66[2];
  if (v15)
  {
    v16 = 0;
    v63 = v14;
    v65 = v1;
    v17 = (v1 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_touchBounds);
    v62 = OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_timeSyncClock;
    v18 = 4;
    v19 = v66;
    while (1)
    {
      v20 = v19[v18];
      IOHIDEventGetDoubleValue();
      v22 = v21;
      IOHIDEventGetDoubleValue();
      v24 = v23;
      v25 = *v17;
      v26 = v17[1];
      v27 = v17[2];
      v28 = v17[3];
      v29 = IOHIDEventGetIntegerValue();
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      if (HIDWORD(v29))
      {
        goto LABEL_91;
      }

      v30 = (v22 - v25) / v27;
      v31 = (v24 - v26) / v28;
      if (!v29)
      {
        v32 = v20;
        v33 = PencilReport.init(digitizerEvent:)();
        if (v33)
        {
          v34 = v33;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for HIDReport();
            v35 = HIDReport.__allocating_init(count:)(*(v34 + 24));
            HIDReport.copy(from:)(v34);

            v34 = v35;
          }

          if (v30 > 0.0)
          {
            v36 = v30;
          }

          else
          {
            v36 = 0.0;
          }

          if (v36 > 1.0)
          {
            v36 = 1.0;
          }

          v37 = *&v36;
          sub_100005B34();
          HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(0.0, 32767.0, 0.0, 1.0, 0.0, v37, 0, &type metadata for UInt16, 1, &type metadata for UInt16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for HIDReport();
            v38 = HIDReport.__allocating_init(count:)(*(v34 + 24));
            HIDReport.copy(from:)(v34);

            v34 = v38;
          }

          if (v31 > 0.0)
          {
            v39 = v31;
          }

          else
          {
            v39 = 0.0;
          }

          if (v39 > 1.0)
          {
            v39 = 1.0;
          }

          HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(0.0, 32767.0, 0.0, 1.0, 0.0, *&v39, 0, &type metadata for UInt16, 3, &type metadata for UInt16);
          v40 = BKSHIDEventGetDigitizerAttributes();
          if (!v40 || (v41 = v40, [v40 maximumPositionZ], v43 = v42, v41, v43 <= 0.0))
          {
            v44 = HIDReport.getValue(_:at:bit:)(5, 1uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for HIDReport();
              v45 = HIDReport.__allocating_init(count:)(*(v34 + 24));
              HIDReport.copy(from:)(v34);

              v34 = v45;
            }

            HIDReport.setValue(_:at:bit:)(v44, 5, 0);
          }

          v46 = IOHIDEventGetTimeStamp();
          if (*(v65 + v62))
          {

            v47 = Clock.domainTimeForMachAbsoluteTime(_:)(v46);
          }

          else
          {
            v47 = -1;
          }

          sub_100005B88(v47, v46);
          sub_1000042F4(v34);
        }
      }

      v48 = IOHIDEventGetIntegerValue();
      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_92;
      }

      if (HIDWORD(v48))
      {
        goto LABEL_93;
      }

      if (v48 == 2)
      {
        v49 = v16 % 2;
        v67 = v16;
        if (v16 % 2 == 1 && v70[2])
        {
        }

        else
        {
          sub_100005468(v63, v64);
          if (v49 < 0)
          {
            goto LABEL_94;
          }
        }

        v50 = 5 * v49;

        v51 = IOHIDEventGetIntegerValue() != 0;
        sub_100005AE0();
        HIDReport.loadValue<A>(from:at:)(v50 + 1, &type metadata for UInt8, v69);
        v68 = v69[0] & 0x7F | (v51 << 7);
        HIDReport.storeValue<A>(_:to:at:)(&v68, &type metadata for UInt8, v50 + 1, &type metadata for UInt8);
        v52 = IOHIDEventGetIntegerValue() != 0;
        HIDReport.loadValue<A>(from:at:)(v50 + 1, &type metadata for UInt8, v69);
        v68 = v69[0] & 0xBF | (v52 << 6);
        HIDReport.storeValue<A>(_:to:at:)(&v68, &type metadata for UInt8, v50 + 1, &type metadata for UInt8);
        v53 = IOHIDEventGetIntegerValue();
        HIDReport.loadValue<A>(from:at:)(v50 + 1, &type metadata for UInt8, v69);
        v68 = v69[0] & 0xE0 | v53 & 0x1F;
        HIDReport.storeValue<A>(_:to:at:)(&v68, &type metadata for UInt8, v50 + 1, &type metadata for UInt8);
        if (v30 > 0.0)
        {
          v54 = v30;
        }

        else
        {
          v54 = 0.0;
        }

        if (v54 > 1.0)
        {
          v54 = 1.0;
        }

        v55 = *&v54;
        sub_100005B34();
        HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(0.0, 32767.0, 0.0, 1.0, 0.0, v55, 0, &type metadata for UInt16, v50 + 2, &type metadata for UInt16);
        if (v31 > 0.0)
        {
          v56 = v31;
        }

        else
        {
          v56 = 0.0;
        }

        if (v56 > 1.0)
        {
          v56 = 1.0;
        }

        HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(0.0, 32767.0, 0.0, 1.0, 0.0, *&v56, 0, &type metadata for UInt16, v50 + 4, &type metadata for UInt16);

        ++v16;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_95;
        }

        v19 = v66;
      }

      else
      {
      }

      ++v18;
      if (!--v15)
      {

        if (v16 <= 0 || (v57 = v70, (v58 = v70[2]) == 0))
        {
LABEL_82:
        }

        if (v16 > 0xFF)
        {
          goto LABEL_100;
        }

        v69[0] = v16;
        sub_100005AE0();

        HIDReport.storeValue<A>(_:to:at:)(v69, &type metadata for UInt8, 11, &type metadata for UInt8);

        v59 = 0;
        while (v59 < v57[2])
        {
          v60 = v59 + 1;

          sub_10001DA2C(v61);

          v59 = v60;
          if (v58 == v60)
          {
            goto LABEL_82;
          }
        }

        goto LABEL_96;
      }
    }
  }
}

BOOL sub_100005224(uint64_t a1, uint64_t a2)
{
  IOHIDEventGetDoubleValue();
  v4 = v3;
  IOHIDEventGetDoubleValue();
  v6 = v5;
  v7 = (a2 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_keyboardBounds);
  if (*(a2 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_keyboardBounds + 32) == 1 || (v9 = v7[2], v8 = v7[3], v11 = *v7, v10 = v7[1], v30.origin.x = *v7, v30.origin.y = v10, v30.size.width = v9, v30.size.height = v8, v28.x = v4, v28.y = v6, !CGRectContainsPoint(v30, v28)))
  {
    v29.x = v4;
    v29.y = v6;
    return CGRectContainsPoint(*(a2 + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_touchBounds), v29);
  }

  else
  {
    v12 = sub_100057850();
    v13 = sub_100057D60();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v14 = 136446466;
      v27.x = v4;
      v27.y = v6;
      v15 = NSStringFromPoint(v27);
      v16 = sub_100057A50();
      v18 = v17;

      v19 = sub_10000D850(v16, v18, &v26);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      v31.origin.x = v11;
      v31.origin.y = v10;
      v31.size.width = v9;
      v31.size.height = v8;
      v20 = NSStringFromRect(v31);
      v21 = sub_100057A50();
      v23 = v22;

      v24 = sub_10000D850(v21, v23, &v26);

      *(v14 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "Keyboard: %{public}s in %{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }
}

void *sub_100005468(__int16 a1, uint64_t a2)
{
  type metadata accessor for HIDReport();
  v4 = HIDReport.__allocating_init(count:)(23);

  v5 = TouchReport.reportID.unsafeMutableAddressor();
  HIDReport.subscript.setter(*v5, 0);

  v8 = a1;
  sub_100005B34();
  HIDReport.storeValue<A>(_:to:at:)(&v8, &type metadata for UInt16, 13, &type metadata for UInt16);
  v7 = a2;
  sub_100005BA4();
  HIDReport.storeValue<A>(_:to:at:)(&v7, &type metadata for UInt64, 15, &type metadata for UInt64);

  sub_10000553C();
  return v4;
}

uint64_t sub_10000553C()
{
  sub_100057BC0();
  if (*(*v0 + 16) >= *(*v0 + 24) >> 1)
  {
    sub_100057C20();
  }

  return sub_100057C50();
}

uint64_t sub_1000055A8()
{
  v1 = OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_logger;
  v2 = sub_100057880();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100005668()
{
  sub_1000055A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for HIDEventObserver()
{
  result = qword_10007EBF0;
  if (!qword_10007EBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005714()
{
  result = sub_100057880();
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

uint64_t sub_100005818()
{

  return _swift_deallocObject(v0, 57, 7);
}

__n128 sub_100005850()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC17ContinuityDisplay16HIDEventObserver_keyboardBounds;
  v2 = *(v0 + 56);
  result = *(v0 + 40);
  *v1 = *(v0 + 24);
  *(v1 + 16) = result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_100005878(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005890(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000058D8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005920(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005968(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000058D8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000059C0()
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v0 = UIApp;

  return [v0 _eventFetchRunLoop];
}

uint64_t sub_100005A1C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100005A64(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000067AC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100005BF8(v6);
  return sub_1000580D0();
}

unint64_t sub_100005AE0()
{
  result = qword_10007ECE8;
  if (!qword_10007ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007ECE8);
  }

  return result;
}

unint64_t sub_100005B34()
{
  result = qword_10007FDD0;
  if (!qword_10007FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FDD0);
  }

  return result;
}

unint64_t sub_100005BA4()
{
  result = qword_10007FDE0;
  if (!qword_10007FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FDE0);
  }

  return result;
}

void sub_100005BF8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1000581E0(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_100057C30();
        *(v6 + 2) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_100005DE0(v7, v8, a1, v4);
      *(v6 + 2) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100005CEC(0, v2, 1, a1);
  }
}

void sub_100005CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v18 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        IntegerValue = IOHIDEventGetIntegerValue();
        v14 = IOHIDEventGetIntegerValue();

        if (IntegerValue >= v14)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v15;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v18 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_100005DE0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_94:
    IntegerValue = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      v90 = (v8 + 16);
      v91 = *(v8 + 16);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_132;
        }

        v92 = v8;
        v93 = (v8 + 16 * v91);
        v94 = *v93;
        v95 = &v90[2 * v91];
        v8 = v95[1];
        sub_100006460((*a3 + 8 * *v93), (*a3 + 8 * *v95), (*a3 + 8 * v8), IntegerValue);
        if (v5)
        {
          break;
        }

        if (v8 < v94)
        {
          goto LABEL_120;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_121;
        }

        *v93 = v94;
        v93[1] = v8;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_122;
        }

        v91 = *v90 - 1;
        memmove(v95, v95 + 2, 16 * v96);
        *v90 = v91;
        v8 = v92;
      }

LABEL_104:

      return;
    }

LABEL_129:
    v8 = sub_100006698(v8);
    goto LABEL_96;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v99 = v8;
      v101 = v5;
      v11 = (*a3 + 8 * v7);
      v97 = 8 * v7;
      v13 = *v11;
      v12 = v11 + 2;
      v8 = *(*a3 + 8 * v10);
      v5 = v13;
      IntegerValue = IOHIDEventGetIntegerValue();
      __dst = IOHIDEventGetIntegerValue();

      v103 = v9;
      v14 = v9 + 2;
      while (1)
      {
        v15 = v14;
        v16 = v10 + 1;
        if (v16 >= v6)
        {
          break;
        }

        v17 = *(v12 - 1);
        v8 = *v12;
        v5 = v17;
        v18 = v16;
        v19 = IOHIDEventGetIntegerValue();
        v20 = IOHIDEventGetIntegerValue();

        v21 = v19 < v20;
        v10 = v18;
        v22 = !v21;
        v23 = (IntegerValue < __dst) ^ v22;
        ++v12;
        v14 = v15 + 1;
        if ((v23 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v6;
LABEL_12:
      if (IntegerValue >= __dst)
      {
        v8 = v99;
        v5 = v101;
        v9 = v103;
      }

      else
      {
        v9 = v103;
        if (v10 < v103)
        {
          goto LABEL_126;
        }

        if (v103 >= v10)
        {
          v8 = v99;
          v5 = v101;
        }

        else
        {
          if (v6 >= v15)
          {
            v24 = v15;
          }

          else
          {
            v24 = v6;
          }

          v25 = 8 * v24 - 8;
          v26 = v10;
          v27 = v103;
          v8 = v99;
          v5 = v101;
          v28 = v97;
          do
          {
            if (v27 != --v26)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v30 = *(v29 + v28);
              *(v29 + v28) = *(v29 + v25);
              *(v29 + v25) = v30;
            }

            ++v27;
            v25 -= 8;
            v28 += 8;
          }

          while (v27 < v26);
        }
      }
    }

    v31 = a3[1];
    if (v10 < v31)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_125;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v10 < v9)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000087C8();
      v8 = v88;
    }

    v46 = *(v8 + 16);
    v47 = v46 + 1;
    if (v46 >= *(v8 + 24) >> 1)
    {
      sub_1000087C8();
      v8 = v89;
    }

    *(v8 + 16) = v47;
    v48 = v8 + 32;
    v49 = (v8 + 32 + 16 * v46);
    *v49 = v9;
    v49[1] = v10;
    __dstb = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    IntegerValue = v10;
    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = (v48 + 16 * (v47 - 1));
        v52 = (v8 + 16 * v47);
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v8 + 32);
          v54 = *(v8 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_62:
          if (v56)
          {
            goto LABEL_111;
          }

          v68 = *v52;
          v67 = v52[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_114;
          }

          v72 = v51[1];
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_119;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v47 < 2)
        {
          goto LABEL_113;
        }

        v75 = *v52;
        v74 = v52[1];
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_77:
        if (v71)
        {
          goto LABEL_116;
        }

        v77 = *v51;
        v76 = v51[1];
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v78 < v70)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v50 - 1 >= v47)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v82 = v8;
        v83 = (v48 + 16 * (v50 - 1));
        v84 = *v83;
        v85 = v50;
        v8 = v48 + 16 * v50;
        v86 = *(v8 + 8);
        sub_100006460((*a3 + 8 * *v83), (*a3 + 8 * *v8), (*a3 + 8 * v86), __dstb);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v86 < v84)
        {
          goto LABEL_106;
        }

        v5 = *(v82 + 16);
        if (v85 > v5)
        {
          goto LABEL_107;
        }

        *v83 = v84;
        v83[1] = v86;
        if (v85 >= v5)
        {
          goto LABEL_108;
        }

        v87 = v85;
        v47 = (v5 - 1);
        memmove(v8, (v8 + 16), 16 * &v5[-v87 - 1]);
        v8 = v82;
        *(v82 + 16) = v5 - 1;
        v21 = v5 > 2;
        v5 = 0;
        if (!v21)
        {
          goto LABEL_91;
        }
      }

      v57 = v48 + 16 * v47;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_109;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_110;
      }

      v64 = v52[1];
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_112;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_115;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = v51[1];
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_123;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v6 = a3[1];
    v7 = v10;
    if (v10 >= v6)
    {
      goto LABEL_94;
    }
  }

  v32 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_127;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v9)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v10 == v32)
  {
    goto LABEL_42;
  }

  v100 = v8;
  v102 = v5;
  v33 = *a3;
  v34 = *a3 + 8 * v10 - 8;
  v104 = v9;
  v35 = v9 - v10;
  __dsta = v32;
LABEL_35:
  IntegerValue = v10;
  v36 = *(v33 + 8 * v10);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = v36;
    v41 = v39;
    v42 = IOHIDEventGetIntegerValue();
    v43 = IOHIDEventGetIntegerValue();

    if (v42 >= v43)
    {
LABEL_40:
      v10 = (IntegerValue + 1);
      v34 += 8;
      --v35;
      if (IntegerValue + 1 == __dsta)
      {
        v10 = __dsta;
        v8 = v100;
        v5 = v102;
        v9 = v104;
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = *(v38 + 8);
    *v38 = v36;
    *(v38 + 8) = v44;
    v38 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

uint64_t sub_100006460(id *__src, id *a2, id *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_100008B78(__src, a2 - __src, __dst);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      IntegerValue = IOHIDEventGetIntegerValue();
      v17 = IOHIDEventGetIntegerValue();

      if (IntegerValue >= v17)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = v19 + 1;
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_100008B78(a2, a3 - a2, __dst);
  v10 = &v4[v9];
  v33 = v7;
  v34 = v4;
LABEL_15:
  v21 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v23 = v21;
    v24 = *v21;
    v25 = *(v10 - 1);
    v26 = v24;
    v27 = IOHIDEventGetIntegerValue();
    v28 = IOHIDEventGetIntegerValue();

    v29 = v5 + 1;
    if (v27 < v28)
    {
      v20 = v29 == v6;
      v6 = v23;
      v7 = v33;
      v4 = v34;
      if (!v20)
      {
        *v5 = *v23;
        v6 = v23;
      }

      goto LABEL_15;
    }

    if (v10 != v29)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v7 = v33;
    v4 = v34;
    v21 = v23;
  }

LABEL_28:
  v30 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, 8 * v30);
  }

  return 1;
}

char *sub_1000066AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005890(&qword_10007ECF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_1000067C4()
{
  result = qword_10007ECF8;
  if (!qword_10007ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007ECF8);
  }

  return result;
}

unint64_t sub_100006818()
{
  result = qword_10007ED00;
  if (!qword_10007ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007ED00);
  }

  return result;
}

uint64_t sub_10000686C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_100006924()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  result = sub_100008764(0xD000000000000019, 0x800000010005E200);
  if (result)
  {
    qword_100083C48 = VideoStream.qosMonitorServerDidDie(_:);
    unk_100083C50 = 0;
    qword_100083C58 = result;
    unk_100083C60 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10000699C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = 0;
  sub_10000AEEC();
  v55 = v7;
  v56 = v8;
  sub_10000AEEC();
  v53 = v9;
  v54 = v10;
  sub_10000AEEC();
  v51 = v11;
  v52 = v12;
  sub_10000AEEC();
  v50 = v13;
  do
  {
    v14 = *(&off_100071CF8 + v6 + 32);
    if (!*(a4 + 16) || (v15 = sub_100037E80(*(&off_100071CF8 + v6 + 32)), (v16 & 1) == 0))
    {
      v20 = sub_100006F48(v14);
      v22 = v21;
      v23 = sub_100057A20();

      v24 = [a3 objectForKey:v23];

      if (!v24)
      {
        goto LABEL_45;
      }

      sub_100057FE0();
      swift_unknownObjectRelease();
      sub_100008DD8(v58, v57);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100037F00(v20, v22);
      sub_10000AF14();
      if (v27)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        sub_100058290();
        __break(1u);
        JUMPOUT(0x100006EF4);
      }

      v28 = v25;
      v29 = v26;
      sub_100005890(&qword_10007ED30);
      if (sub_10000AF6C())
      {
        v30 = sub_100037F00(v20, v22);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_53;
        }

        v28 = v30;
      }

      if (v29)
      {
        v32 = (_swiftEmptyDictionarySingleton[7] + 32 * v28);
        sub_10000904C(v32);
        sub_10000903C(v57, v32);
      }

      else
      {
        sub_10000AE94();
        *v33 = v20;
        v33[1] = v22;
        sub_10000903C(v57, (_swiftEmptyDictionarySingleton[7] + 32 * v28));
        v34 = _swiftEmptyDictionarySingleton[2];
        v27 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v27)
        {
          goto LABEL_51;
        }

        _swiftEmptyDictionarySingleton[2] = v35;
      }

      goto LABEL_42;
    }

    sub_100008DD8(*(a4 + 56) + 32 * v15, v58);
    v17 = 0xEA00000000007963;
    v18 = 0x6E6574614C776F4CLL;
    switch(v14)
    {
      case 1:
        v19 = 1115185485;
        goto LABEL_23;
      case 2:
        v19 = 1114532173;
LABEL_23:
        v18 = v19 | 0x6172746900000000;
        v17 = 0xEA00000000006574;
        break;
      case 3:
        v18 = 0x63756F54776F6873;
        v36 = 1918984808;
        goto LABEL_35;
      case 4:
        sub_10000AF34();
        v37 = 7368532;
        goto LABEL_21;
      case 5:
        sub_10000AF34();
        v38 = 0x6E696772614DLL;
        goto LABEL_30;
      case 6:
        v18 = 0x5472616365646953;
        v17 = 0xEF636E7953656D69;
        break;
      case 7:
        v17 = 0xE700000000000000;
        v18 = 0x73746E65636572;
        break;
      case 8:
        v18 = 0xD000000000000010;
        v17 = v50;
        break;
      case 9:
        v18 = 0x72754373776F6873;
        v37 = 7499635;
LABEL_21:
        v17 = v37 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 10:
        sub_10000AEDC();
        v18 = 0x537274614C776F4CLL;
        v36 = 1853321064;
        goto LABEL_35;
      case 11:
        sub_10000AEDC();
        v18 = 0x527274614C776F4CLL;
        v36 = 1952999273;
        goto LABEL_35;
      case 12:
        v18 = 0xD000000000000015;
        v17 = v51;
        break;
      case 13:
        v17 = 0xEA00000000007366;
        v18 = 0x6572507465736572;
        break;
      case 14:
        v18 = 0xD000000000000012;
        v17 = v52;
        break;
      case 15:
        v18 = 0xD000000000000015;
        v17 = v53;
        break;
      case 16:
        v18 = 0xD000000000000012;
        v17 = v54;
        break;
      case 17:
        sub_10000AEDC();
        v18 = 0x577274614C776F4CLL;
        v36 = 1752458345;
LABEL_35:
        v17 = v36 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 18:
        v18 = 0xD000000000000011;
        v17 = v55;
        break;
      case 19:
        v18 = 0xD000000000000011;
        v17 = v56;
        break;
      case 20:
        v18 = 0x654B656C62616E65;
        v38 = 0x6472616F6279;
LABEL_30:
        v17 = v38 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        break;
      default:
        break;
    }

    sub_100008DD8(v58, v57);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100037F00(v18, v17);
    sub_10000AF14();
    if (v27)
    {
      goto LABEL_50;
    }

    v41 = v39;
    v42 = v40;
    sub_100005890(&qword_10007ED30);
    if (sub_10000AF6C())
    {
      v43 = sub_100037F00(v18, v17);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_53;
      }

      v41 = v43;
    }

    if (v42)
    {

      v45 = (_swiftEmptyDictionarySingleton[7] + 32 * v41);
      sub_10000904C(v45);
      sub_10000903C(v57, v45);
LABEL_42:
      sub_10000904C(v58);
      goto LABEL_45;
    }

    sub_10000AE94();
    *v46 = v18;
    v46[1] = v17;
    sub_10000903C(v57, (_swiftEmptyDictionarySingleton[7] + 32 * v41));
    sub_10000904C(v58);
    v47 = _swiftEmptyDictionarySingleton[2];
    v27 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    if (v27)
    {
      goto LABEL_52;
    }

    _swiftEmptyDictionarySingleton[2] = v48;
LABEL_45:
    ++v6;
  }

  while (v6 != 21);
  return sub_100007344(_swiftEmptyDictionarySingleton);
}

uint64_t sub_100006F48(char a1)
{
  result = 0x6E6574614C776F4CLL;
  switch(a1)
  {
    case 1:
      v3 = 1115185485;
      goto LABEL_7;
    case 2:
      v3 = 1114532173;
LABEL_7:
      result = v3 | 0x6172746900000000;
      break;
    case 3:
      result = 0x63756F54776F6873;
      break;
    case 4:
    case 5:
      result = sub_10000AEF8();
      break;
    case 6:
      result = 0x5472616365646953;
      break;
    case 7:
      result = 0x73746E65636572;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x72754373776F6873;
      break;
    case 10:
      result = sub_10000AF5C() & 0xFFFFFFFFFFFFLL | 0x5372000000000000;
      break;
    case 11:
      result = sub_10000AF5C() & 0xFFFFFFFFFFFFLL | 0x5272000000000000;
      break;
    case 12:
    case 15:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0x6572507465736572;
      break;
    case 14:
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = sub_10000AF5C() & 0xFFFFFFFFFFFFLL | 0x5772000000000000;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0x654B656C62616E65;
      break;
    default:
      return result;
  }

  return result;
}

_OWORD *sub_10000721C(uint64_t a1, char a2)
{
  if (*(a1 + 24))
  {
    sub_10000903C(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    result = sub_100008F0C(v13, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v11;
  }

  else
  {
    sub_100009494(a1);
    v6 = sub_100037E80(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v10 = *(*v2 + 24);
      sub_100005890(&qword_10007ED08);
      sub_100058140(v9, v10);
      sub_10000903C((*(v12 + 56) + 32 * v8), v13);
      sub_1000094FC();
      sub_100058150();
      *v2 = v12;
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    return sub_100009494(v13);
  }

  return result;
}

void *sub_100007344(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = v9 | (v8 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      sub_100008DD8(*(a1 + 56) + 32 * v10, v32);
      *&v33 = v13;
      *(&v33 + 1) = v12;
      sub_10000903C(v32, &v34);

LABEL_10:
      v36 = v33;
      v37[0] = v34;
      v37[1] = v35;
      if (!*(&v33 + 1))
      {
        break;
      }

      sub_10000903C(v37, &v33);
      v14 = sub_100008380();
      if (v14 != 21)
      {
        v15 = v14;
        sub_100008DD8(&v33, v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_100037E80(v15);
        sub_10000AE84();
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_26;
        }

        v22 = v17;
        v31 = v18;
        sub_100005890(&qword_10007ED08);
        if (sub_100058140(isUniquelyReferenced_nonNull_native, v21))
        {
          v23 = sub_100037E80(v15);
          v25 = v31;
          if ((v31 & 1) != (v24 & 1))
          {
            goto LABEL_28;
          }

          v22 = v23;
        }

        else
        {
          v25 = v31;
        }

        if (v25)
        {
          v26 = (_swiftEmptyDictionarySingleton[7] + 32 * v22);
          sub_10000904C(v26);
          sub_10000903C(v32, v26);
        }

        else
        {
          _swiftEmptyDictionarySingleton[(v22 >> 6) + 8] |= 1 << v22;
          *(_swiftEmptyDictionarySingleton[6] + v22) = v15;
          sub_10000903C(v32, (_swiftEmptyDictionarySingleton[7] + 32 * v22));
          v27 = _swiftEmptyDictionarySingleton[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_27;
          }

          _swiftEmptyDictionarySingleton[2] = v29;
        }
      }

      sub_10000904C(&v33);
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return _swiftEmptyDictionarySingleton;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        v6 = 0;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        goto LABEL_10;
      }

      v6 = *(v3 + 8 * v8);
      ++v2;
      if (v6)
      {
        v2 = v8;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_100058290();
    __break(1u);
  }

  return result;
}

void sub_1000075E0()
{
  v1 = 0;
  v2 = *(v0 + 16);
  sub_10000AEEC();
  do
  {
    v3 = *(&off_100071CF8 + v1++ + 32);
    switch(v3)
    {
      case 4:
      case 5:
        sub_10000AEF8();
        break;
      case 10:
      case 11:
      case 17:
        sub_10000AF5C();
        break;
      default:
        break;
    }

    v4 = sub_100057A20();

    [v2 removeObjectForKey:v4];
  }

  while (v1 != 21);
}

BOOL sub_10000792C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100006F48(a1);
  v5 = sub_100057A20();

  v6 = [a4 valueForKey:v5];

  if (v6)
  {
    sub_100057FE0();
    swift_unknownObjectRelease();
    sub_10000903C(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_100009494(v9);
  return v6 != 0;
}

uint64_t sub_1000079DC()
{
  sub_10000AF28();
  if (sub_10000792C(v2, v3, v4, v5))
  {
    sub_100006F48(v1);
    v6 = sub_100057A20();

    v7 = [v0 BOOLForKey:v6];

    return v7 & 1;
  }

  result = sub_10002B3C0(v1);
  if (result != 2)
  {
    v7 = result;
    return v7 & 1;
  }

  __break(1u);
  return result;
}

void *sub_100007A68()
{
  v0 = sub_100007B64(&off_100071F48);
  for (i = 0; i != 21; ++i)
  {
    v2 = *(&off_100071CF8 + i + 32);
    if ((sub_100007BFC(v2, v0) & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100008BA4(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v4 = *(&_swiftEmptyArrayStorage + 2);
      v3 = *(&_swiftEmptyArrayStorage + 3);
      if (v4 >= v3 >> 1)
      {
        sub_100008BA4((v3 > 1), v4 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v4 + 1;
      *(&_swiftEmptyArrayStorage + v4 + 32) = v2;
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100007B64(uint64_t a1)
{
  sub_1000094FC();
  v2 = sub_100057D30();
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1000096E0(&v7, *(a1 + v4++));
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_100007BFC(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1000582B0(), sub_100006F48(a1), sub_100057AB0(), , v4 = sub_1000582F0(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xEA00000000007963;
      v9 = 0x6E6574614C776F4CLL;
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v10 = 1115185485;
          goto LABEL_14;
        case 2:
          v10 = 1114532173;
LABEL_14:
          v9 = v10 | 0x6172746900000000;
          v8 = 0xEA00000000006574;
          break;
        case 3:
          v9 = 0x63756F54776F6873;
          v11 = 1918984808;
          goto LABEL_26;
        case 4:
          v9 = 0x7261426863756F74;
          v12 = 7368532;
          goto LABEL_12;
        case 5:
          v9 = 0x7261426863756F74;
          v13 = 0x6E696772614DLL;
          goto LABEL_21;
        case 6:
          v9 = 0x5472616365646953;
          v8 = 0xEF636E7953656D69;
          break;
        case 7:
          v8 = 0xE700000000000000;
          v9 = 0x73746E65636572;
          break;
        case 8:
          v9 = 0xD000000000000010;
          v8 = 0x800000010005DFC0;
          break;
        case 9:
          v9 = 0x72754373776F6873;
          v12 = 7499635;
LABEL_12:
          v8 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xA:
          v9 = 0x5372616265646973;
          v11 = 1853321064;
          goto LABEL_26;
        case 0xB:
          v9 = 0x5272616265646973;
          v11 = 1952999273;
          goto LABEL_26;
        case 0xC:
          v9 = 0xD000000000000015;
          v8 = 0x800000010005E000;
          break;
        case 0xD:
          v8 = 0xEA00000000007366;
          v9 = 0x6572507465736572;
          break;
        case 0xE:
          v9 = 0xD000000000000012;
          v8 = 0x800000010005E030;
          break;
        case 0xF:
          v9 = 0xD000000000000015;
          v8 = 0x800000010005E050;
          break;
        case 0x10:
          v9 = 0xD000000000000012;
          v8 = 0x800000010005E070;
          break;
        case 0x11:
          v9 = 0x5772616265646973;
          v11 = 1752458345;
LABEL_26:
          v8 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x12:
          v9 = 0xD000000000000011;
          v8 = 0x800000010005E090;
          break;
        case 0x13:
          v9 = 0xD000000000000011;
          v8 = 0x800000010005E0B0;
          break;
        case 0x14:
          v9 = 0x654B656C62616E65;
          v13 = 0x6472616F6279;
LABEL_21:
          v8 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      v14 = 0x6E6574614C776F4CLL;
      v15 = 0xEA00000000007963;
      switch(a1)
      {
        case 1:
          v16 = 1115185485;
          goto LABEL_37;
        case 2:
          v16 = 1114532173;
LABEL_37:
          v14 = v16 | 0x6172746900000000;
          v15 = 0xEA00000000006574;
          break;
        case 3:
          v14 = 0x63756F54776F6873;
          v17 = 1918984808;
          goto LABEL_49;
        case 4:
          v14 = 0x7261426863756F74;
          v18 = 7368532;
          goto LABEL_35;
        case 5:
          v14 = 0x7261426863756F74;
          v19 = 0x6E696772614DLL;
          goto LABEL_44;
        case 6:
          v14 = 0x5472616365646953;
          v15 = 0xEF636E7953656D69;
          break;
        case 7:
          v15 = 0xE700000000000000;
          v14 = 0x73746E65636572;
          break;
        case 8:
          v14 = 0xD000000000000010;
          v15 = 0x800000010005DFC0;
          break;
        case 9:
          v14 = 0x72754373776F6873;
          v18 = 7499635;
LABEL_35:
          v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 10:
          v14 = 0x5372616265646973;
          v17 = 1853321064;
          goto LABEL_49;
        case 11:
          v14 = 0x5272616265646973;
          v17 = 1952999273;
          goto LABEL_49;
        case 12:
          v14 = 0xD000000000000015;
          v15 = 0x800000010005E000;
          break;
        case 13:
          v15 = 0xEA00000000007366;
          v14 = 0x6572507465736572;
          break;
        case 14:
          v14 = 0xD000000000000012;
          v15 = 0x800000010005E030;
          break;
        case 15:
          v14 = 0xD000000000000015;
          v15 = 0x800000010005E050;
          break;
        case 16:
          v14 = 0xD000000000000012;
          v15 = 0x800000010005E070;
          break;
        case 17:
          v14 = 0x5772616265646973;
          v17 = 1752458345;
LABEL_49:
          v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 18:
          v14 = 0xD000000000000011;
          v15 = 0x800000010005E090;
          break;
        case 19:
          v14 = 0xD000000000000011;
          v15 = 0x800000010005E0B0;
          break;
        case 20:
          v14 = 0x654B656C62616E65;
          v19 = 0x6472616F6279;
LABEL_44:
          v15 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      if (v9 == v14 && v8 == v15)
      {
        break;
      }

      v21 = sub_100058230();

      if ((v21 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v21 & 1;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_100008270(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = &_swiftEmptyArrayStorage;
LABEL_2:
  v5 = v3 + 16 * v1;
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    result = sub_100008380();
    ++v1;
    v5 += 16;
    if (result != 21)
    {
      v7 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000088A8(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      if (v9 >= v8 >> 1)
      {
        result = sub_1000088A8((v8 > 1), v9 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v9 + 1;
      v4[v9 + 32] = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100008380()
{
  v0 = sub_100058250();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

Swift::Int sub_1000083E8(char a1)
{
  sub_1000582B0();
  sub_100006F48(a1);
  sub_100057AB0();

  return sub_1000582F0();
}

Swift::Int sub_10000844C(Swift::UInt a1)
{
  sub_1000582B0();
  sub_1000582C0(a1);
  return sub_1000582F0();
}

uint64_t sub_1000084A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100008380();
  *a1 = result;
  return result;
}

uint64_t sub_1000084D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006F48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100008510(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = sub_100037E80(a1);
    if (v5)
    {
      sub_100008DD8(*(a2 + 56) + 32 * v4, v8);
      if (swift_dynamicCast())
      {
        LOBYTE(result) = v7;
        return result & 1;
      }
    }
  }

  result = sub_10002B3C0(a1);
  if (result != 2)
  {
    return result & 1;
  }

  __break(1u);
  return result;
}

_OWORD *sub_1000085AC(int a1, char a2)
{
  v4 = sub_10002B3C0(a2);
  if (v4 == 2 || ((v4 ^ a1) & 1) != 0)
  {
    v7 = &type metadata for Bool;
    LOBYTE(v6) = a1 & 1;
    return sub_10000721C(&v6, a2);
  }

  else
  {
    sub_100008E34(a2, &v6);
    return sub_100009494(&v6);
  }
}

uint64_t sub_100008634(char a1, uint64_t a2)
{
  if (!*(a2 + 16) || (v4 = sub_100037E80(a1), (v5 & 1) == 0) || (sub_100008DD8(*(a2 + 56) + 32 * v4, v8), result = swift_dynamicCast(), !result))
  {
    result = sub_10002B3D4(a1);
    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000086C8(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_100037E80(a1), (v5 & 1) != 0))
  {
    sub_100008DD8(*(a2 + 56) + 32 * v4, v8);
    sub_10000AAF4(v8, v8[3]);
    v6 = sub_100058220();
    sub_10000904C(v8);
    return v6;
  }

  else
  {

    return sub_10002B274(a1);
  }
}

id sub_100008764(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100057A20();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

void sub_1000087C8()
{
  sub_10000AF28();
  if (v3)
  {
    sub_10000AECC();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_10000AEBC();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100005890(&qword_10007ECF0);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_10000AF48();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

char *sub_1000088A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005890(&qword_10007ED20);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_10000899C()
{
  sub_10000AF28();
  if (v3)
  {
    sub_10000AECC();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_10000AEBC();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100005890(&qword_10007ED48);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 32);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v7] <= v11)
    {
      memmove(v11, v12, 32 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100008A90()
{
  sub_10000AF28();
  if (v3)
  {
    sub_10000AECC();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_10000AEBC();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100005890(&qword_10007ED68);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_10000AF48();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_100008B78(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[8 * a2] <= __dst)
  {
    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

char *sub_100008BA4(char *a1, int64_t a2, char a3)
{
  result = sub_100008BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100008BC4(char *a1, int64_t a2, char a3)
{
  result = sub_100008CD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100008BE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005890(&qword_10007ED20);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_100008CD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005890(&qword_10007ED40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_100008DD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_100008E34@<D0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = sub_100037E80(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v8 = *(*v2 + 24);
    sub_100005890(&qword_10007ED08);
    sub_100058140(isUniquelyReferenced_nonNull_native, v8);
    sub_10000903C((*(v10 + 56) + 32 * v6), a2);
    sub_1000094FC();
    sub_100058150();
    *v2 = v10;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

_OWORD *sub_100008F0C(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100037E80(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_100005890(&qword_10007ED08);
  if (!sub_100058140(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_100037E80(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_100058290();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (v18[7] + 32 * v14);
    sub_10000904C(v19);

    return sub_10000903C(a1, v19);
  }

  else
  {

    return sub_10000942C(v14, a2, a1, v18);
  }
}

_OWORD *sub_10000903C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000904C(uint64_t a1)
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

_OWORD *sub_100009098(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_100037F00(a2, a3);
  sub_10000AE84();
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = v11;
  sub_100005890(&qword_10007ED30);
  if (!sub_100058140(a4 & 1, v14))
  {
    goto LABEL_5;
  }

  v17 = sub_100037F00(a2, a3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_100058290();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *v5;
  if (v16)
  {
    v20 = (v19[7] + 32 * v15);
    sub_10000904C(v20);

    return sub_10000903C(a1, v20);
  }

  else
  {
    sub_100009550(v15, a2, a3, a1, v19);
  }
}

_OWORD *sub_1000091D8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_100037F70(a2);
  sub_10000AE84();
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v8;
  v14 = v9;
  sub_100005890(&qword_10007ED38);
  if (!sub_100058140(a3 & 1, v12))
  {
    goto LABEL_5;
  }

  v15 = sub_100037F70(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_100058290();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v4;
  if (v14)
  {
    v18 = (v17[7] + 32 * v13);
    sub_10000904C(v18);

    return sub_10000903C(a1, v18);
  }

  else
  {
    sub_10000AB38(a2, v20);
    return sub_1000095BC(v13, v20, a1, v17);
  }
}

void sub_100009310(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  sub_100038014(a2);
  sub_10000AE84();
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v8;
  v14 = v9;
  sub_100005890(&qword_10007ED18);
  if (!sub_100058140(a3 & 1, v12))
  {
    goto LABEL_5;
  }

  v15 = sub_100038014(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_100058290();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  v17 = *v4;
  if (v14)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v13);
    *(v18 + 8 * v13) = a1;
  }

  else
  {

    sub_100009638(v13, a2, a1, v17);
  }
}

_OWORD *sub_10000942C(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_10000903C(a3, (a4[7] + 32 * a1));
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

uint64_t sub_100009494(uint64_t a1)
{
  v2 = sub_100005890(&unk_10007EEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000094FC()
{
  result = qword_10007ED10;
  if (!qword_10007ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007ED10);
  }

  return result;
}

_OWORD *sub_100009550(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000903C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1000095BC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000903C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_100009638(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_10000967C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10005B210;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1000096E0(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000582B0();
  sub_100006F48(a2);
  sub_100057AB0();

  v6 = sub_1000582F0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = 0xEA00000000007963;
      v11 = 0x6E6574614C776F4CLL;
      switch(*(*(v5 + 48) + v8))
      {
        case 1:
          v12 = 1115185485;
          goto LABEL_13;
        case 2:
          v12 = 1114532173;
LABEL_13:
          v11 = v12 | 0x6172746900000000;
          v10 = 0xEA00000000006574;
          break;
        case 3:
          v11 = 0x63756F54776F6873;
          v13 = 1918984808;
          goto LABEL_25;
        case 4:
          v11 = 0x7261426863756F74;
          v14 = 7368532;
          goto LABEL_11;
        case 5:
          v11 = 0x7261426863756F74;
          v15 = 0x6E696772614DLL;
          goto LABEL_20;
        case 6:
          v11 = 0x5472616365646953;
          v10 = 0xEF636E7953656D69;
          break;
        case 7:
          v10 = 0xE700000000000000;
          v11 = 0x73746E65636572;
          break;
        case 8:
          v11 = 0xD000000000000010;
          v10 = 0x800000010005DFC0;
          break;
        case 9:
          v11 = 0x72754373776F6873;
          v14 = 7499635;
LABEL_11:
          v10 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xA:
          v11 = 0x5372616265646973;
          v13 = 1853321064;
          goto LABEL_25;
        case 0xB:
          v11 = 0x5272616265646973;
          v13 = 1952999273;
          goto LABEL_25;
        case 0xC:
          v11 = 0xD000000000000015;
          v10 = 0x800000010005E000;
          break;
        case 0xD:
          v10 = 0xEA00000000007366;
          v11 = 0x6572507465736572;
          break;
        case 0xE:
          v11 = 0xD000000000000012;
          v10 = 0x800000010005E030;
          break;
        case 0xF:
          v11 = 0xD000000000000015;
          v10 = 0x800000010005E050;
          break;
        case 0x10:
          v11 = 0xD000000000000012;
          v10 = 0x800000010005E070;
          break;
        case 0x11:
          v11 = 0x5772616265646973;
          v13 = 1752458345;
LABEL_25:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 0x12:
          v11 = 0xD000000000000011;
          v10 = 0x800000010005E090;
          break;
        case 0x13:
          v11 = 0xD000000000000011;
          v10 = 0x800000010005E0B0;
          break;
        case 0x14:
          v11 = 0x654B656C62616E65;
          v15 = 0x6472616F6279;
LABEL_20:
          v10 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      v16 = 0x6E6574614C776F4CLL;
      v17 = 0xEA00000000007963;
      switch(a2)
      {
        case 1:
          v18 = 1115185485;
          goto LABEL_36;
        case 2:
          v18 = 1114532173;
LABEL_36:
          v16 = v18 | 0x6172746900000000;
          v17 = 0xEA00000000006574;
          break;
        case 3:
          v16 = 0x63756F54776F6873;
          v19 = 1918984808;
          goto LABEL_48;
        case 4:
          v16 = 0x7261426863756F74;
          v20 = 7368532;
          goto LABEL_34;
        case 5:
          v16 = 0x7261426863756F74;
          v21 = 0x6E696772614DLL;
          goto LABEL_43;
        case 6:
          v16 = 0x5472616365646953;
          v17 = 0xEF636E7953656D69;
          break;
        case 7:
          v17 = 0xE700000000000000;
          v16 = 0x73746E65636572;
          break;
        case 8:
          v16 = 0xD000000000000010;
          v17 = 0x800000010005DFC0;
          break;
        case 9:
          v16 = 0x72754373776F6873;
          v20 = 7499635;
LABEL_34:
          v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 10:
          v16 = 0x5372616265646973;
          v19 = 1853321064;
          goto LABEL_48;
        case 11:
          v16 = 0x5272616265646973;
          v19 = 1952999273;
          goto LABEL_48;
        case 12:
          v16 = 0xD000000000000015;
          v17 = 0x800000010005E000;
          break;
        case 13:
          v17 = 0xEA00000000007366;
          v16 = 0x6572507465736572;
          break;
        case 14:
          v16 = 0xD000000000000012;
          v17 = 0x800000010005E030;
          break;
        case 15:
          v16 = 0xD000000000000015;
          v17 = 0x800000010005E050;
          break;
        case 16:
          v16 = 0xD000000000000012;
          v17 = 0x800000010005E070;
          break;
        case 17:
          v16 = 0x5772616265646973;
          v19 = 1752458345;
LABEL_48:
          v17 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 18:
          v16 = 0xD000000000000011;
          v17 = 0x800000010005E090;
          break;
        case 19:
          v16 = 0xD000000000000011;
          v17 = 0x800000010005E0B0;
          break;
        case 20:
          v16 = 0x654B656C62616E65;
          v21 = 0x6472616F6279;
LABEL_43:
          v17 = v21 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      if (v11 == v16 && v10 == v17)
      {
        break;
      }

      v23 = sub_100058230();

      if (v23)
      {
        goto LABEL_62;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

LABEL_62:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_60:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    sub_10000A03C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100009DD4()
{
  v1 = v0;
  v2 = *v0;
  sub_100005890(&qword_10007ED28);
  result = sub_100058050();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_10000967C(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    sub_1000582B0();
    sub_100006F48(v15);
    sub_100057AB0();

    result = sub_1000582F0();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_10000A03C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100009DD4();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_10000A77C();
        goto LABEL_67;
      }

      sub_10000A8BC();
    }

    v9 = *v3;
    sub_1000582B0();
    sub_100006F48(v6);
    sub_100057AB0();

    result = sub_1000582F0();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (1)
      {
        v12 = 0xEA00000000007963;
        v13 = 0x6E6574614C776F4CLL;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 1115185485;
            goto LABEL_20;
          case 2:
            v14 = 1114532173;
LABEL_20:
            v13 = v14 | 0x6172746900000000;
            v12 = 0xEA00000000006574;
            break;
          case 3:
            v13 = 0x63756F54776F6873;
            v15 = 1918984808;
            goto LABEL_32;
          case 4:
            v13 = 0x7261426863756F74;
            v16 = 7368532;
            goto LABEL_18;
          case 5:
            v13 = 0x7261426863756F74;
            v17 = 0x6E696772614DLL;
            goto LABEL_27;
          case 6:
            v13 = 0x5472616365646953;
            v12 = 0xEF636E7953656D69;
            break;
          case 7:
            v12 = 0xE700000000000000;
            v13 = 0x73746E65636572;
            break;
          case 8:
            v13 = 0xD000000000000010;
            v12 = 0x800000010005DFC0;
            break;
          case 9:
            v13 = 0x72754373776F6873;
            v16 = 7499635;
LABEL_18:
            v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 0xA:
            v13 = 0x5372616265646973;
            v15 = 1853321064;
            goto LABEL_32;
          case 0xB:
            v13 = 0x5272616265646973;
            v15 = 1952999273;
            goto LABEL_32;
          case 0xC:
            v13 = 0xD000000000000015;
            v12 = 0x800000010005E000;
            break;
          case 0xD:
            v12 = 0xEA00000000007366;
            v13 = 0x6572507465736572;
            break;
          case 0xE:
            v13 = 0xD000000000000012;
            v12 = 0x800000010005E030;
            break;
          case 0xF:
            v13 = 0xD000000000000015;
            v12 = 0x800000010005E050;
            break;
          case 0x10:
            v13 = 0xD000000000000012;
            v12 = 0x800000010005E070;
            break;
          case 0x11:
            v13 = 0x5772616265646973;
            v15 = 1752458345;
LABEL_32:
            v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x12:
            v13 = 0xD000000000000011;
            v12 = 0x800000010005E090;
            break;
          case 0x13:
            v13 = 0xD000000000000011;
            v12 = 0x800000010005E0B0;
            break;
          case 0x14:
            v13 = 0x654B656C62616E65;
            v17 = 0x6472616F6279;
LABEL_27:
            v12 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          default:
            break;
        }

        v18 = 0x6E6574614C776F4CLL;
        v19 = 0xEA00000000007963;
        switch(v6)
        {
          case 1:
            v20 = 1115185485;
            goto LABEL_43;
          case 2:
            v20 = 1114532173;
LABEL_43:
            v18 = v20 | 0x6172746900000000;
            v19 = 0xEA00000000006574;
            break;
          case 3:
            v18 = 0x63756F54776F6873;
            v21 = 1918984808;
            goto LABEL_55;
          case 4:
            v18 = 0x7261426863756F74;
            v22 = 7368532;
            goto LABEL_41;
          case 5:
            v18 = 0x7261426863756F74;
            v23 = 0x6E696772614DLL;
            goto LABEL_50;
          case 6:
            v18 = 0x5472616365646953;
            v19 = 0xEF636E7953656D69;
            break;
          case 7:
            v19 = 0xE700000000000000;
            v18 = 0x73746E65636572;
            break;
          case 8:
            v18 = 0xD000000000000010;
            v19 = 0x800000010005DFC0;
            break;
          case 9:
            v18 = 0x72754373776F6873;
            v22 = 7499635;
LABEL_41:
            v19 = v22 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 10:
            v18 = 0x5372616265646973;
            v21 = 1853321064;
            goto LABEL_55;
          case 11:
            v18 = 0x5272616265646973;
            v21 = 1952999273;
            goto LABEL_55;
          case 12:
            v18 = 0xD000000000000015;
            v19 = 0x800000010005E000;
            break;
          case 13:
            v19 = 0xEA00000000007366;
            v18 = 0x6572507465736572;
            break;
          case 14:
            v18 = 0xD000000000000012;
            v19 = 0x800000010005E030;
            break;
          case 15:
            v18 = 0xD000000000000015;
            v19 = 0x800000010005E050;
            break;
          case 16:
            v18 = 0xD000000000000012;
            v19 = 0x800000010005E070;
            break;
          case 17:
            v18 = 0x5772616265646973;
            v21 = 1752458345;
LABEL_55:
            v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 18:
            v18 = 0xD000000000000011;
            v19 = 0x800000010005E090;
            break;
          case 19:
            v18 = 0xD000000000000011;
            v19 = 0x800000010005E0B0;
            break;
          case 20:
            v18 = 0x654B656C62616E65;
            v23 = 0x6472616F6279;
LABEL_50:
            v19 = v23 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          default:
            break;
        }

        if (v13 == v18 && v12 == v19)
        {
          break;
        }

        v25 = sub_100058230();

        if (v25)
        {
          goto LABEL_71;
        }

        a2 = (a2 + 1) & v11;
        if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_67;
        }
      }

LABEL_70:

LABEL_71:
      sub_100058280();
      __break(1u);
      JUMPOUT(0x10000A6D4);
    }
  }

LABEL_67:
  v26 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v6;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
    goto LABEL_70;
  }

  *(v26 + 16) = v29;
  return result;
}

void *sub_10000A77C()
{
  v1 = v0;
  sub_100005890(&qword_10007ED28);
  v2 = *v0;
  v3 = sub_100058040();
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

uint64_t sub_10000A8BC()
{
  v1 = v0;
  v2 = *v0;
  sub_100005890(&qword_10007ED28);
  result = sub_100058050();
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_1000582B0();
        sub_100006F48(v14);
        sub_100057AB0();

        result = sub_1000582F0();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void *sub_10000AAF4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000AB94(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000ABD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000AC2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10000ACB4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10000AD80);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10000ADC8()
{
  result = qword_10007ED50;
  if (!qword_10007ED50)
  {
    sub_1000058D8(&qword_10007ED58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007ED50);
  }

  return result;
}

unint64_t sub_10000AE30()
{
  result = qword_10007ED60;
  if (!qword_10007ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007ED60);
  }

  return result;
}

BOOL sub_10000AF6C()
{

  return sub_100058140(v0, v1);
}

uint64_t sub_10000AF8C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_10000AFD0(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_10002302C();
  if (!v4)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  sub_10000DE30(v3, v4, v2, &selRef_setInterfaceName_);
  v5 = sub_1000230E0();
  if (!v6)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  sub_10000DE30(v5, v6, v2, &selRef_setIp_);
  v7 = *(a1 + 1);
  v8 = __rev16(*(a1 + 2));
  if (v7 == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v7 == 30)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  [v2 setPort:v10];
  [v2 setIsIPv6:v7 == 30];

  return v2;
}

void sub_10000B0E4(void *a1, double a2)
{
  v3 = [a1 video];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = ceil(a2);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = v3;
  [v3 setKeyFrameInterval:v4];
}

id sub_10000B194(void *a1)
{
  result = [a1 video];
  if (result)
  {
    v3 = result;
    v4 = [result txMinBitrate];

    result = [a1 video];
    if (result)
    {
      v5 = result;
      [result txMaxBitrate];

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10000B22C(uint64_t a1, uint64_t a2, id a3)
{
  result = [a3 video];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  [result setRxMinBitrate:a1];

  result = [a3 video];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  [result setRxMaxBitrate:a2];

  result = [a3 video];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  [result setTxMinBitrate:a1];

  result = [a3 video];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = result;
  [result setTxMaxBitrate:a2];

  return [a3 setRtcpSendInterval:1.0];
}

void VideoStream.session.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*VideoStream.session.modify(void *a1))(id **a1, char a2)
{
  v3 = sub_10000B4FC(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_session;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10000B480;
}

void sub_10000B480(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void *sub_10000B4FC(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

char *sub_10000B530(char *a1, void *a2, uint64_t a3)
{
  v5 = v3;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_started] = 0;
  v30 = OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_qosMonitor;
  *&v3[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_qosMonitor] = 0;
  v3[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_paused] = 0;
  v8 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_logger;
  v9 = OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_logger;
  v10 = sub_100057880();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v5[v9], &a1[v8], v10);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12 = OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_stream;
  *&v5[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_stream] = a2;
  v13 = a2;
  v14 = [v13 type];
  if (v14 != 1)
  {
    if (v14 == 3)
    {
      v15 = &v5[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_socket];
      *v15 = 0;
      v15[4] = 1;
      v32[0] = [v13 nwClientID];
      v32[1] = v16;
      v17 = objc_allocWithZone(AVCVideoStream);
      v18 = sub_10000D564(v32, a3);
      if (!v4)
      {
        v19 = v18;
LABEL_13:
        *&v5[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_videoStream] = v19;
        v27 = type metadata accessor for VideoStream();
        v33.receiver = v5;
        v33.super_class = v27;
        v28 = objc_msgSendSuper2(&v33, "init");
        v29 = *&v28[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_videoStream];
        v5 = v28;
        [v29 setDelegate:v5];

        return v5;
      }
    }

    else
    {

      sub_100005A1C(0, &qword_10007F000);
      v21 = sub_100057A50();
      sub_100018664(v21, v22, -1001, 0, 0, 0);
      swift_willThrow();
    }

LABEL_11:
    swift_unknownObjectWeakDestroy();
    (*(v11 + 8))(&v5[v9], v10);

    type metadata accessor for VideoStream();
    swift_deallocPartialClassInstance();
    return v5;
  }

  v20 = sub_10002315C([v13 fileDescriptor]);
  if (v4)
  {

    goto LABEL_11;
  }

  v23 = v20;
  result = xpc_dictionary_create(0, 0, 0);
  if (kAVCKeySharedSocket)
  {
    xpc_dictionary_set_fd(result, kAVCKeySharedSocket, v23);
    v25 = &v5[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_socket];
    *v25 = v23;
    v25[4] = 0;
    objc_allocWithZone(AVCVideoStream);
    v26 = swift_unknownObjectRetain();
    v19 = sub_10000D670(v26, a3);
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id VideoStream.__deallocating_deinit()
{
  sub_10000C030();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoStream();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000BA58(id a1)
{
  v3 = v1;
  if ((v1[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_socket + 4] & 1) == 0)
  {
    v34 = *&v1[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_socket];
    sub_1000231C4(v34, v48);
    if (v2)
    {
      return;
    }

    sub_100005A1C(0, &qword_10007EEC8);
    v35 = sub_10000AFD0(v48);
    [a1 setLocalAddress:v35];

    sub_100023228(v34, v49);
    v36 = sub_10000AFD0(v49);
    [a1 setRemoteAddress:v36];
  }

  v5 = [a1 video];
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    v8 = v6;
    v9 = v7;
    v10 = v8;
    v11 = v9;
    v12 = v10;
    v13 = v11;
    v14 = v12;
    v15 = v3;
    variable initialization expression of Clock.heartbeat();
    variable initialization expression of Clock.heartbeat();
    v16 = v14;
    v17 = sub_100057850();
    v18 = sub_100057D80();

    p_ivars = &DisplayMainViewController.KeyboardResponder.ivars;
    if (os_log_type_enabled(v17, v18))
    {
      v20 = swift_slowAlloc();
      sub_10000DF7C();
      v47 = swift_slowAlloc();
      v50 = v47;
      *v20 = 136318210;
      v21 = sub_10000C52C(*&v15[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_videoStream]);
      v23 = sub_10000D850(v21, v22, &v50);

      *(v20 + 4) = v23;
      *(v20 + 12) = 1024;
      v24 = [v13 remoteSSRC];

      *(v20 + 14) = v24;
      *(v20 + 18) = 2048;
      v25 = [v16 txCodecType];

      *(v20 + 20) = v25;
      *(v20 + 28) = 2048;
      v26 = [v13 txPayloadType];

      *(v20 + 30) = v26;
      *(v20 + 38) = 2048;
      v27 = [v16 keyFrameInterval];

      *(v20 + 40) = v27;
      *(v20 + 48) = 1024;
      LODWORD(v27) = [v13 isRTCPEnabled];

      *(v20 + 50) = v27;
      *(v20 + 54) = 1040;
      *(v20 + 56) = 0;
      *(v20 + 60) = 2048;
      [v13 rtcpTimeOutInterval];
      *(v20 + 62) = v28;
      *(v20 + 70) = 2048;
      v29 = [v16 tilesPerFrame];

      *(v20 + 72) = v29;
      *(v20 + 80) = 2048;
      v30 = [v16 txMinBitrate];

      *(v20 + 82) = v30;
      *(v20 + 90) = 2048;
      v31 = [v16 txMaxBitrate];

      *(v20 + 92) = v31;
      *(v20 + 100) = 2048;
      v32 = [v16 customWidth];

      *(v20 + 102) = v32;
      *(v20 + 110) = 2048;
      v33 = [v16 customHeight];

      *(v20 + 112) = v33;
      p_ivars = (&DisplayMainViewController.KeyboardResponder + 48);

      _os_log_impl(&_mh_execute_header, v17, v18, "%s config: ssrc=%u, codec=%ld, payload=%ld, key=%ld, rtcp=%{BOOL}d, rtcpTimeout=%.*f, tiles=%ld, tx=%ld:%ld, res=%ld:%ld", v20, 0x78u);
      sub_10000904C(v47);
      sub_10000DF70();

      sub_10000DF70();
    }

    else
    {
    }

    v37 = *(p_ivars[435] + v15);
    v50 = 0;
    if ([v37 configure:v13 error:{&v50, v47}])
    {
      v38 = v50;
      [v37 start];
      v39 = [v37 streamToken];
      sub_100005A1C(0, &qword_10007EEC0);
      v40 = sub_100057DC0();
      v41 = objc_allocWithZone(AVCQoSMonitor);
      v42 = sub_10000D784(v39, v40);
      if (v2)
      {

        v43 = 0;
      }

      else
      {
        v43 = v42;
        if (v42)
        {
          v45 = v42;
          [v45 setDelegate:v15];
        }
      }

      v46 = *&v15[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_qosMonitor];
      *&v15[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_qosMonitor] = v43;

      v15[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_started] = 1;
    }

    else
    {
      v44 = v50;
      sub_100057670();

      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10000C030()
{
  v1 = OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_started;
  if (*(v0 + OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_started) == 1)
  {
    result = [*(v0 + OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_videoStream) stop];
    *(v0 + v1) = 0;
  }

  return result;
}

uint64_t type metadata accessor for VideoStream()
{
  result = qword_10007EE48;
  if (!qword_10007EE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VideoStream.qosMonitor(_:didReceiveReport:streamToken:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000578E0();
  sub_1000068E4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100057910();
  sub_1000068E4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
    swift_beginAccess();
    v18 = *&v16[v17];
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = a2;
    aBlock[4] = sub_10000D488;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000AF8C;
    aBlock[3] = &unk_100072C98;
    v20 = _Block_copy(aBlock);
    v21 = v18;
    v24[0] = v9;
    v22 = v21;
    v23 = v16;

    sub_100057900();
    v24[1] = &_swiftEmptyArrayStorage;
    sub_10000D4A8();
    sub_100005890(&unk_10007ED80);
    sub_10000D500();
    sub_100058000();
    sub_100057DE0();
    _Block_release(v20);

    (*(v5 + 8))(v8, v3);
    (*(v11 + 8))(v14, v24[0]);
  }

  return result;
}

uint64_t sub_10000C388(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 112))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

id VideoStream.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_10000C52C(void *a1)
{
  [a1 streamToken];
  sub_10000DE9C();
  v2._countAndFlagsBits = sub_100057B70();
  sub_100057AF0(v2);

  v3._countAndFlagsBits = 93;
  v3._object = 0xE100000000000000;
  sub_100057AF0(v3);
  return 1531139649;
}

void sub_10000C5B8(uint64_t a1)
{
  v2 = sub_1000578E0();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100057910();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C030();
  sub_100005A1C(0, &qword_10007F000);
  v6 = sub_100057A50();
  v8 = v7;
  swift_errorRetain();
  v33 = sub_100018664(v6, v8, -401, 0, 0, a1);
  v9 = v33;
  sub_10002AC8C(sub_10000CAA4, 0, sub_10000DEF0);
  v10 = [v9 userInfo];
  v11 = sub_1000579B0();

  v12 = sub_100057A50();
  sub_10000EB54(v12, v13, v11, &aBlock);

  if (v37)
  {
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v40;
      __chkstk_darwin(v14);
      sub_10002AC8C(sub_10000CAC0, 0, sub_10000DF6C);
    }
  }

  else
  {

    sub_100009494(&aBlock);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
    swift_beginAccess();
    v19 = *&v17[v18];
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v9;
    v38 = sub_10000DF5C;
    v39 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v36 = sub_10000AF8C;
    v37 = &unk_100072D68;
    v21 = _Block_copy(&aBlock);
    v22 = v9;
    v23 = v19;
    v24 = v17;
    sub_100057900();
    v34 = &_swiftEmptyArrayStorage;
    sub_10000D4A8();
    sub_100005890(&unk_10007ED80);
    sub_10000D500();
    v25 = v29;
    v26 = v32;
    sub_100058000();
    sub_100057DE0();
    _Block_release(v21);

    (*(v31 + 8))(v25, v26);
    (*(v28 + 8))(v5, v30);
  }

  else
  {
  }
}

uint64_t sub_10000CADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 104))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void VideoStream.stream(_:didStart:error:)()
{
  sub_10000DFD4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = sub_100057850();
  if (v2)
  {
    v9 = sub_100057D70();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      sub_10000DF7C();
      v21 = swift_slowAlloc();
      *v10 = 136315138;
      v11 = sub_10000C52C(v6);
      v14 = sub_10000DFF0(v11, v12, v13);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s Failed", v10, 0xCu);
      sub_10000904C(v21);
      sub_10000DF70();

      sub_10000DF70();
    }

LABEL_8:
    sub_10000C5B8(v2);
    goto LABEL_9;
  }

  v15 = sub_100057D80();

  if (os_log_type_enabled(v8, v15))
  {
    v16 = swift_slowAlloc();
    sub_10000DF7C();
    v22 = swift_slowAlloc();
    *v16 = 136315138;
    v17 = sub_10000C52C(v6);
    v20 = sub_10000DFF0(v17, v18, v19);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v15, "%s Started", v16, 0xCu);
    sub_10000904C(v22);
    sub_10000DF70();

    sub_10000DF70();
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_10000DFB8();
}

void sub_10000D030()
{
  sub_10000DFD4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = sub_100057850();
  v11 = sub_100057D80();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    sub_10000DF7C();
    v17 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_10000C52C(v8);
    v16 = sub_10000DFF0(v13, v14, v15);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, v2, v12, 0x12u);
    sub_10000904C(v17);
    sub_10000DF70();

    sub_10000DF70();
  }

  if ((v6 & 1) == 0 || v4)
  {
    sub_10000C5B8(v4);
  }

  sub_10000DFB8();
}

void sub_10000D2B0()
{
  sub_10000DFD4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = sub_100057850();
  v9 = v4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    sub_10000DF7C();
    v15 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = sub_10000C52C(v6);
    v14 = sub_10000DFF0(v11, v12, v13);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, v2, v10, 0xCu);
    sub_10000904C(v15);
    sub_10000DF70();

    sub_10000DF70();
  }

  sub_10000C5B8(0);
  sub_10000DFB8();
}

uint64_t sub_10000D448()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000D4A8()
{
  result = qword_10007F010;
  if (!qword_10007F010)
  {
    sub_1000578E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F010);
  }

  return result;
}

unint64_t sub_10000D500()
{
  result = qword_10007F020;
  if (!qword_10007F020)
  {
    sub_1000058D8(&unk_10007ED80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F020);
  }

  return result;
}

id sub_10000D564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5.super.isa = sub_1000579A0().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v10 = 0;
  v6 = [v3 initWithNWConnectionClientID:a1 options:v5.super.isa error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100057670();

    swift_willThrow();
  }

  return v6;
}

id sub_10000D670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5.super.isa = sub_1000579A0().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v10 = 0;
  v6 = [v3 initWithNetworkSockets:a1 options:v5.super.isa error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100057670();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v6;
}

id sub_10000D784(uint64_t a1, void *a2)
{
  v3 = v2;
  v9 = 0;
  v5 = [v3 initWithStreamToken:a1 queue:a2 error:&v9];
  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    sub_100057670();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_10000D850(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000D914(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100008DD8(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000904C(v11);
  return v7;
}

unint64_t sub_10000D914(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000DA14(a5, a6);
    *a1 = v9;
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
    result = sub_1000580A0();
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

char *sub_10000DA14(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000DA60(a1, a2);
  sub_10000DB78(&off_100071CD0);
  return v3;
}

char *sub_10000DA60(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100057B10())
  {
    result = sub_100027E10(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100058060();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1000580A0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10000DB78(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10000DC5C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

char *sub_10000DC5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005890(&qword_10007EED0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_10000DD68()
{
  result = sub_100057880();
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

void sub_10000DE30(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_100057A20();

  [a3 *a4];
}

unint64_t sub_10000DE9C()
{
  result = qword_10007EED8;
  if (!qword_10007EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EED8);
  }

  return result;
}

uint64_t sub_10000DEF0()
{
  v1 = *(v0 + 16);
  swift_errorRetain();
  return v1;
}

uint64_t sub_10000DF1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000DFF0(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_10000D850(a1, a2, va);
}

id sub_10000E010(char a1)
{
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_stack] = 0;
  v3 = OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_label;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = &v1[OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_connectionDescription];
  *v4 = 63;
  v4[1] = 0xE100000000000000;
  v1[OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_compact] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for QOSControllerViewController();
  return objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
}

void sub_10000E0B4()
{
  *(v0 + OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_stack) = 0;
  v1 = OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_label;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = (v0 + OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_connectionDescription);
  *v2 = 63;
  v2[1] = 0xE100000000000000;
  sub_100058160();
  __break(1u);
}

void sub_10000E178()
{
  v1 = v0;
  sub_10000E8E8();
  sub_100005890(&unk_10007F1B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10005B500;
  v3 = *&v0[OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_label];
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = sub_100019A0C();
  [v5 setAxis:1];
  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setView:v6];

  v7 = *&v1[OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_stack];
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_stack] = v6;
  v8 = v6;

  v9 = [objc_opt_self() monospacedSystemFontOfSize:12.0 weight:UIFontWeightThin];
  [v4 setFont:v9];

  [v4 setTextAlignment:1];
  [v4 setNumberOfLines:0];
  v10 = [objc_opt_self() whiteColor];
  [v4 setTextColor:v10];
}

void sub_10000E370(uint64_t a1)
{
  v3 = sub_10000E594(AVCQoSReportExpectedFrameCount, a1);
  v4 = sub_10000E594(AVCQoSReportDisplayedFrameCount, a1);
  v5 = AVCQoSReportHIDEventLatencyAverage;
  v41 = AVCQoSReportHIDEventLatencyAverage;
  type metadata accessor for AVCQoSReportKey(0);
  sub_10000E7E8();
  v6 = v5;
  sub_10000E92C(v6, v7, v8, v9, v10, v11, v12, v13, v38, v41);
  sub_100058030();
  v14 = sub_10000E654(v43, a1);
  sub_10000E840(v43);
  if (__OFSUB__(v3, v4))
  {
    __break(1u);
  }

  else
  {
    v42 = AVCQoSReportVideoStallDuration;
    v15 = AVCQoSReportVideoStallDuration;
    sub_10000E92C(v15, v16, v17, v18, v19, v20, v21, v22, v39, v42);
    sub_100058030();
    v23 = sub_10000E654(v43, a1);
    v24 = sub_10000E840(v43);
    sub_10000E92C(v24, v25, &protocol witness table for String, v26, v27, v28, v29, v30, v40, 65);
    sub_100058030();
    v31 = sub_10000E654(v43, a1);
    sub_10000E840(v43);
    v32 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_label);
    sub_100005890(&qword_10007EF38);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10005B510;
    v35 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_connectionDescription);
    v34 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay27QOSControllerViewController_connectionDescription + 8);
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_10000E894();
    *(v33 + 32) = v35;
    *(v33 + 40) = v34;
    *(v33 + 96) = &type metadata for Double;
    *(v33 + 104) = &protocol witness table for Double;
    *(v33 + 72) = v31 / 5.0;
    *(v33 + 136) = &type metadata for Double;
    *(v33 + 144) = &protocol witness table for Double;
    *(v33 + 112) = v23 / 5.0;
    *(v33 + 176) = &type metadata for Double;
    *(v33 + 184) = &protocol witness table for Double;
    *(v33 + 152) = ((v3 - v4) & ~((v3 - v4) >> 63)) / 5.0;
    *(v33 + 216) = &type metadata for Double;
    *(v33 + 224) = &protocol witness table for Double;
    *(v33 + 192) = v14;

    v36 = sub_100057A60();
    sub_100038A3C(v36, v37, v32);
  }
}

uint64_t sub_10000E594(void *a1, uint64_t a2)
{
  *&v8 = a1;
  type metadata accessor for AVCQoSReportKey(0);
  sub_10000E7E8();
  v4 = a1;
  sub_100058030();
  sub_10000EAF0(v7, a2, &v8);
  sub_10000E840(v7);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_100009494(&v8);
  }

  return 0;
}

double sub_10000E654(uint64_t a1, uint64_t a2)
{
  v2 = 0.0;
  if (*(a2 + 16))
  {
    v4 = sub_100037F70(a1);
    if (v5)
    {
      sub_100008DD8(*(a2 + 56) + 32 * v4, v8);
      if (swift_dynamicCast())
      {
        return v7;
      }
    }
  }

  return v2;
}

id sub_10000E730()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QOSControllerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000E7E8()
{
  result = qword_10007EA90;
  if (!qword_10007EA90)
  {
    type metadata accessor for AVCQoSReportKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EA90);
  }

  return result;
}

unint64_t sub_10000E894()
{
  result = qword_10007FAC0;
  if (!qword_10007FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007FAC0);
  }

  return result;
}

unint64_t sub_10000E8E8()
{
  result = qword_10007EF40;
  if (!qword_10007EF40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007EF40);
  }

  return result;
}

uint64_t sub_10000E93C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100057A20();
  v5 = [a3 objectForKey:v4];

  v6 = 2;
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 2;
    }
  }

  return v6;
}

uint64_t sub_10000E9F0(uint64_t a1, char a2)
{
  result = sub_1000086C8(a2, a1);
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000EA64(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_100037E80(6);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100008DD8(*(a1 + 56) + 32 * v2, v6);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

double sub_10000EAF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100037F70(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100008DD8(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_10000EB54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100037F00(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100008DD8(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_10000EBB8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100037FB4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void *sub_10000EC00(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100038014(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_10000EC58()
{
  v0 = sub_100057A50();
  v2 = v1;
  if (v0 == sub_100057A50() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000197A0();
  }

  return v5 & 1;
}

uint64_t sub_10000ECC8(char a1, char a2)
{
  v3 = sub_100006F48(a1);
  v5 = v4;
  if (v3 == sub_100006F48(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000197A0();
  }

  return v8 & 1;
}

uint64_t SidecarDisplaySession.delegate.getter()
{
  sub_1000196CC(OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate);
  sub_100019514();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t SidecarDisplaySession.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
  sub_100019654();
  swift_beginAccess();
  *(v4 + 8) = a2;
  sub_10001981C();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SidecarDisplaySession.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10000B4FC(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  sub_10001981C();
  sub_100019648();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_10000EE64;
}

void sub_10000EE64(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id SidecarDisplaySession.codec.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config) codec];
  if (result)
  {
    v2 = result;
    sub_100057D50();

    return 0;
  }

  return result;
}

uint64_t SidecarDisplaySession.peerSupportsHIDReportExtensions.getter()
{
  v1 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_peerSupportsHIDReportExtensions;
  sub_100019514();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000EFB0(char a1)
{
  v3 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_peerSupportsHIDReportExtensions;
  sub_100019654();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *SidecarDisplaySession.copyConfig()()
{
  [*(v0 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config) copy];
  sub_100057FE0();
  swift_unknownObjectRelease();
  sub_100005A1C(0, &unk_10007EF70);
  swift_dynamicCast();
  v1 = *(v0 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request);
  v2 = [v1 device];
  [v12 setDevice:v2];

  sub_100019514();
  swift_beginAccess();
  isa = sub_100057C90().super.super.isa;
  sub_1000198CC(isa, "setEnableTimeSync:");

  v4 = [v1 service];
  v5 = [v4 name];

  [v12 setService:v5];
  v6 = [v1 session];
  if (v6)
  {
    v7 = v6;
    [v6 transport];
  }

  sub_1000198CC(v6, "setTransport:");
  v8 = [v1 session];
  if (v8)
  {
    v9 = v8;
    [v8 dataLink];
  }

  v10 = sub_1000582A0().super.super.isa;
  sub_1000198CC(v10, "setDataLink:");

  return v12;
}

uint64_t sub_10000F204()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config) showTouchBar];
  if (v1)
  {
    v2 = v1;
    sub_100057CA0();
  }

  sub_100019514();
  swift_beginAccess();

  v4 = sub_10002B16C(v3);

  return v4 & 1;
}

double SidecarDisplaySession.safeInsets.getter()
{
  sub_1000196CC(OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_safeInsets);
  sub_100019514();
  swift_beginAccess();
  return *v0;
}

uint64_t SidecarDisplaySession.safeInsets.setter(double a1, double a2, double a3, double a4)
{
  sub_1000196CC(OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_safeInsets);
  sub_100019654();
  result = swift_beginAccess();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t (*SidecarDisplaySession.safeInsets.modify())()
{
  sub_100019648();
  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_10000F3D0(void *a1)
{
  [a1 scale];
  v3 = v2;
  result = [a1 size];
  v7 = v5 <= 0.0;
  if (v6 <= 0.0)
  {
    v7 = 1;
  }

  v8 = v3 <= 0.0 || v7;
  if (v8)
  {
    return 0;
  }

  v9 = ceil(v5);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = ceil(v6);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = ceil(v3);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v11 < 9.22337204e18)
  {
    return v9;
  }

LABEL_26:
  __break(1u);
  return result;
}

id sub_10000F518(uint64_t a1, uint64_t a2, uint64_t a3, char a4, id a5)
{
  if (a4)
  {
    [a5 setScale:0.0];
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    [a5 setScale:a3];
    v6 = a1;
    v7 = a2;
  }

  return [a5 setSize:{v6, v7}];
}

void (*SidecarDisplaySession.resolution.modify(void *a1))(uint64_t **a1)
{
  v3 = sub_10000B4FC(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config);
  v3[4] = v4;
  *v3 = sub_10000F3D0(v4);
  v3[1] = v5;
  v3[2] = v6;
  *(v3 + 24) = v7 & 1;
  return sub_10000F628;
}

void sub_10000F628(uint64_t **a1)
{
  v1 = *a1;
  sub_10000F518(**a1, v1[1], v1[2], *(v1 + 24), (*a1)[4]);

  free(v1);
}

id SidecarDisplaySession.queue.getter()
{
  v1 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
  sub_100019514();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SidecarDisplaySession.queue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
  sub_100019654();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*SidecarDisplaySession.queue.modify())()
{
  sub_100019648();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t SidecarDisplaySession.clock.getter()
{
  sub_100019514();
  swift_beginAccess();
}

uint64_t sub_10000F7E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_clock;
  sub_100019654();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_10000F834(void *a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  if (!a1)
  {
    if (!a2)
    {
      return;
    }

LABEL_6:
    sub_1000196DC();
    v8 = sub_100057A20();
    [v4 addObserver:v3 forKeyPath:v8 options:4 context:v3];

    if (!a1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a2)
  {
    sub_100005A1C(0, &qword_10007EFF8);
    v6 = a1;
    v4 = v4;
    v7 = sub_100057EF0();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  sub_1000196DC();
  v9 = sub_100057A20();
  [a1 removeObserver:v3 forKeyPath:v9 context:v3];
}

void sub_10000F95C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoSidecarStream);
  v4 = v3;
  sub_10000F834(a1, v3);
}

void sub_10000F9C0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoSidecarStream);
  *(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoSidecarStream) = a1;
  v2 = a1;
  sub_10000F95C(v3);
}

id SidecarDisplaySession.videoSlot.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoClient);
  if (!v1)
  {
    return &_mh_execute_header;
  }

  result = [v1 slotForMode:0];
  if (result)
  {
    result = sub_100058300();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10000FAD0(void *a1)
{
  sub_10001963C();
  *(swift_allocObject() + 16) = v1;
  sub_100019564();
  v5[1] = 1107296256;
  v5[2] = sub_10000FF9C;
  v5[3] = &unk_100073120;
  v3 = _Block_copy(v5);
  v4 = v1;

  [a1 timeSyncWithCompletion:v3];
  _Block_release(v3);
}

uint64_t sub_10000FB88(uint64_t a1, void *a2, char *a3)
{
  v6 = sub_1000578E0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100057910();
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    __chkstk_darwin(v11);
    *(&v22 - 2) = a2;
    swift_errorRetain();
    sub_10002AC8C(sub_10000FEF8, 0, sub_10000DF6C);
  }

  else
  {
    v16 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
    v23 = v12;
    swift_beginAccess();
    v17 = *&a3[v16];
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a3;
    aBlock[4] = sub_100019240;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000AF8C;
    aBlock[3] = &unk_100073170;
    v19 = _Block_copy(aBlock);
    v22 = v17;
    v20 = a3;
    sub_100057900();
    v24 = &_swiftEmptyArrayStorage;
    sub_1000192D0(&qword_10007F010, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005890(&unk_10007ED80);
    sub_100005968(&qword_10007F020, &unk_10007ED80);
    sub_100058000();
    v21 = v22;
    sub_100057DE0();
    _Block_release(v19);

    (*(v7 + 8))(v9, v6);
    (*(v23 + 8))(v14, v10);
  }
}

uint64_t sub_10000FF10(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Clock();
  swift_allocObject();
  v4 = Clock.init(clockIdentifier:)(a1);
  Clock.heartbeat.setter(1);
  v5 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_clock;
  swift_beginAccess();
  *(a2 + v5) = v4;
}

void sub_10000FF9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100010014()
{
  v1 = v0;
  isa = sub_1000579A0().super.isa;
  Data = OPACKEncoderCreateData();

  if (Data)
  {
    v4 = Data;
    v5 = sub_100057730();
    v7 = v6;

    v8 = objc_allocWithZone(SidecarItem);
    sub_100019828();

    v9 = sub_10001886C(v5, v7);
    v10 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request);
    sub_100005890(&unk_10007F1B0);
    sub_100019698();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10005B500;
    *(v11 + 32) = v9;
    sub_100005A1C(0, &unk_10007FAA0);
    v12 = v9;
    v13 = sub_100057BD0().super.isa;

    [v10 sendItems:v13 complete:0];
  }

  else
  {
    sub_100005A1C(0, &qword_10007F000);
    sub_10002B0C4(0, 0, 0);
    swift_willThrow();
  }
}

uint64_t SidecarDisplaySession.sidecarRequest(_:receivedItems:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v2;

  v5 = v2;
  sub_10001653C();
}

void sub_1000102A4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    if (!sub_100058190())
    {
      goto LABEL_13;
    }

LABEL_3:
    sub_100026C58(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_100058090();
    }

    else
    {
      v5 = *(a1 + 32);
    }

    v6 = v5;
    v7 = sub_1000193A8(v5);
    if (v8 >> 60 == 15)
    {

      goto LABEL_13;
    }

    v9 = v7;
    v10 = v8;
    isa = sub_100057720().super.isa;
    v12 = OPACKDecodeData();

    if (v12)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v35 = v13;
        v17 = [v6 type];
        v18 = sub_100057A50();
        v20 = v19;

        v21 = v18 == 1953066601 && v20 == 0xE400000000000000;
        if (v21 || (sub_100058230() & 1) != 0)
        {

          sub_100010A18(v35);
          goto LABEL_23;
        }

        v22 = v18 == 0x7472617473 && v20 == 0xE500000000000000;
        if (v22 || (sub_100058230() & 1) != 0)
        {

          sub_100012FC8(v35);
LABEL_23:
          if (v2)
          {
            swift_unknownObjectRelease();
            sub_1000190FC(v9, v10);

            return;
          }

          goto LABEL_46;
        }

        if (v18 == 0x6544657461647075 && v20 == 0xEE0073746C756166)
        {
        }

        else
        {
          v24 = sub_100058230();

          if ((v24 & 1) == 0)
          {
            v25 = a2 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v26 = *(v25 + 8);
              ObjectType = swift_getObjectType();
              (*(v26 + 80))(a2, a1, ObjectType, v26);

              sub_1000190FC(v9, v10);
              swift_unknownObjectRelease();
              goto LABEL_15;
            }

LABEL_46:

            sub_1000190FC(v9, v10);
            goto LABEL_15;
          }
        }

        *&v37 = 0x73746C7561666564;
        *(&v37 + 1) = 0xE800000000000000;
        v28 = [v35 __swift_objectForKeyedSubscript:sub_100058270()];
        swift_unknownObjectRelease();
        if (v28)
        {
          sub_100057FE0();
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0u;
          v39 = 0u;
        }

        v40 = v37;
        v41 = v39;
        if (*(&v39 + 1))
        {
          sub_100005890(&qword_10007F1A0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_46;
          }

          *&v38 = 1937335659;
          *(&v38 + 1) = 0xE400000000000000;
          v29 = [v35 __swift_objectForKeyedSubscript:sub_100058270()];
          swift_unknownObjectRelease();
          if (v29)
          {
            sub_100057FE0();
            swift_unknownObjectRelease();
          }

          else
          {
            v38 = 0u;
            v39 = 0u;
          }

          v40 = v38;
          v41 = v39;
          if (*(&v39 + 1))
          {
            sub_100005890(&unk_10007F1E0);
            if (swift_dynamicCast())
            {
              v30 = sub_100007344(v36);
              v31 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_settings;
              swift_beginAccess();
              *(a2 + v31) = v30;

              v32 = a2 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
              swift_beginAccess();
              if (!swift_unknownObjectWeakLoadStrong())
              {

                sub_1000190FC(v9, v10);
                swift_unknownObjectRelease();

                return;
              }

              v33 = *(v32 + 8);
              v34 = swift_getObjectType();
              (*(v33 + 24))(a2, v36, v34, v33);

              sub_1000190FC(v9, v10);
              swift_unknownObjectRelease();
            }

            else
            {

              sub_1000190FC(v9, v10);
            }

            goto LABEL_15;
          }

          sub_1000190FC(v9, v10);
        }

        else
        {

          sub_1000190FC(v9, v10);
        }

        swift_unknownObjectRelease();
        sub_100019138(&v40, &unk_10007EEE0);
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1000190FC(v9, v10);
    goto LABEL_13;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_13:
  v14 = a2 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v15 = *(v14 + 8);
  v16 = swift_getObjectType();
  (*(v15 + 80))(a2, a1, v16, v15);
LABEL_15:
  swift_unknownObjectRelease();
}

uint64_t sub_100010938()
{

  v1 = sub_1000196EC();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_100010A18(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100005890(&unk_10007F190);
  __chkstk_darwin(v6 - 8);
  v122 = (&v113 - v7);
  sub_1000197DC();
  v8 = sub_1000577F0();
  sub_1000068E4();
  v132 = v9;
  __chkstk_darwin(v10);
  sub_100019500();
  v120 = v11;
  sub_10001970C();
  __chkstk_darwin(v12);
  v121 = &v113 - v13;
  *&v129 = 0x73746C7561666564;
  *(&v129 + 1) = 0xE800000000000000;
  v14 = sub_100058270();
  v15 = sub_10001977C(v14);
  sub_100019588();
  swift_unknownObjectRelease();
  v123 = v8;
  if (v1)
  {
    sub_1000197C4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100019660();
  }

  sub_1000194F0();
  if (v16)
  {
    sub_100005890(&qword_10007F1A0);
    if (swift_dynamicCast())
    {
      v1 = sub_100007344(v128);
      v17 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_settings;
      sub_100019654();
      swift_beginAccess();
      *(v4 + v17) = v1;
    }
  }

  else
  {
    sub_100019138(&v130, &unk_10007EEE0);
  }

  *(v4 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_inited) = 1;
  v18 = v4 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
  sub_100019514();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v18 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v4, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  *&v129 = 6518369;
  *(&v129 + 1) = 0xE300000000000000;
  v21 = sub_100058270();
  v22 = sub_100019594(v21);
  sub_100019588();
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_1000197C4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100019660();
  }

  sub_1000194F0();
  v23 = &unk_100083000;
  if (v24)
  {
    if (swift_dynamicCast())
    {
      v118 = a1;
      v26 = v126;
      v25 = v127;
      v27 = sub_10001968C();
      sub_100018F90(v27, v28);
      v29 = sub_100057850();
      v30 = sub_100057D80();
      v31 = sub_100019834();
      if (os_log_type_enabled(v31, v32))
      {
        v18 = v4;
        sub_1000196C0();
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        v34 = v33;
        v35 = 0;
        switch(v25 >> 62)
        {
          case 1uLL:
            LODWORD(v35) = HIDWORD(v26) - v26;
            if (__OFSUB__(HIDWORD(v26), v26))
            {
              __break(1u);
LABEL_82:
              __break(1u);
              JUMPOUT(0x100011730);
            }

            v35 = v35;
LABEL_23:
            *(v33 + 4) = v35;
            v41 = sub_10001968C();
            sub_10000686C(v41, v42);
            _os_log_impl(&_mh_execute_header, v29, v30, "AVC negotiate offer (%ld bytes)", v34, 0xCu);
            sub_10000DF70();

            v4 = v18;
            break;
          case 2uLL:
            v39 = *(v26 + 16);
            v38 = *(v26 + 24);
            v40 = __OFSUB__(v38, v39);
            v35 = v38 - v39;
            if (!v40)
            {
              goto LABEL_23;
            }

            goto LABEL_82;
          case 3uLL:
            goto LABEL_23;
          default:
            v35 = BYTE6(v25);
            goto LABEL_23;
        }
      }

      else
      {
        v36 = sub_10001968C();
        sub_10000686C(v36, v37);
      }

      sub_100005A1C(0, &unk_10007FB30);
      v43 = sub_100011740();
      v119 = v4;
      v44 = sub_10000F3D0(*(v4 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config));
      if ((v47 & 1) == 0)
      {
        v18 = v44;
        v48 = v45;
        v49 = 3;
        if ((v43 & 1) == 0)
        {
          v49 = 0;
        }

        v116 = v46;
        v117 = v49;
        sub_100005890(&qword_10007FAB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10005B590;
        *(inited + 32) = sub_100057A50();
        *(inited + 40) = v51;
        *(inited + 72) = &type metadata for Int;
        *(inited + 48) = v18;
        *(inited + 80) = sub_100057A50();
        *(inited + 88) = v52;
        *(inited + 120) = &type metadata for Int;
        *(inited + 96) = v48;
        *(inited + 128) = sub_100057A50();
        *(inited + 136) = v53;
        *(inited + 168) = &type metadata for Int;
        v3 = v2;
        *(inited + 144) = v116;
        *(inited + 176) = sub_100057A50();
        *(inited + 184) = v54;
        *(inited + 216) = &type metadata for UInt;
        *(inited + 192) = v117;
      }

      v55 = sub_1000579C0();
      v56 = sub_10001968C();
      sub_100018F90(v56, v57);
      sub_10001C590(v55);
      sub_100019730();

      v58 = objc_allocWithZone(AVCMediaStreamNegotiator);
      v59 = sub_10001968C();
      v23 = sub_100018910(v59, v60, v18);
      v61 = sub_10001968C();
      sub_10000686C(v61, v62);
      v4 = v119;
      if (v3)
      {
        return;
      }

      v63 = *(v119 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_negotiator);
      *(v119 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_negotiator) = v23;

      a1 = v118;
    }
  }

  else
  {
    sub_100019138(&v130, &unk_10007EEE0);
  }

  *&v130 = 1936876918;
  *(&v130 + 1) = 0xE400000000000000;
  v64 = [a1 __swift_objectForKeyedSubscript:sub_100058270()];
  sub_100019588();
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1000197C4();
    swift_unknownObjectRelease();
    sub_10000903C(&v129, &v130);
  }

  else
  {
    v130 = 0u;
    v131 = 0u;
  }

  sub_1000117CC(&v130, -402);
  sub_100019138(&v130, &unk_10007EEE0);
  if (!v3)
  {
    *&v130 = 1936876918;
    *(&v130 + 1) = 0xE400000000000000;
    v65 = sub_100058270();
    v66 = sub_10001977C(v65);
    sub_100019588();
    swift_unknownObjectRelease();
    if (v4)
    {
      sub_100057FE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v130 = 0u;
      v131 = 0u;
    }

    v67 = sub_100011AD8(&v130);
    sub_100019138(&v130, &unk_10007EEE0);
    v68 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_peerSupportsHIDReportExtensions;
    sub_100019654();
    swift_beginAccess();
    *(v4 + v68) = v67 & 1;
    *&v129 = 0x726568706963;
    *(&v129 + 1) = 0xE600000000000000;
    v69 = sub_100058270();
    v70 = sub_100019594(v69);
    sub_100019588();
    swift_unknownObjectRelease();
    if (v67)
    {
      sub_1000197C4();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100019660();
    }

    sub_1000194F0();
    if (v71)
    {
      if (sub_100019520())
      {
        v67 = *(v4 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config);
        isa = sub_100057D40().super.super.isa;
        sub_1000198B4(isa, "setCipher:");
      }
    }

    else
    {
      sub_100019138(&v130, &unk_10007EEE0);
    }

    *&v129 = 1684632949;
    *(&v129 + 1) = 0xE400000000000000;
    v73 = sub_100058270();
    v74 = sub_100019594(v73);
    sub_100019588();
    swift_unknownObjectRelease();
    if (v67)
    {
      sub_1000197C4();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100019660();
    }

    v75 = v132;
    sub_1000194F0();
    if (v76)
    {
      if (sub_100019520())
      {
        v118 = a1;
        v77 = v124;
        v78 = v125;
        sub_100018F90(v124, v125);
        v79 = v122;
        sub_100011BC8(v77, v78, v122);
        if (sub_100019110(v79, 1, v123) == 1)
        {
          sub_10000686C(v77, v78);
          sub_100019138(v79, &unk_10007F190);
          a1 = v118;
        }

        else
        {
          v116 = v77;
          v117 = v78;
          v80 = v121;
          v81 = v79;
          v82 = v123;
          (*(v75 + 32))(v121, v81, v123);
          v83 = v120;
          v122 = *(v75 + 16);
          (v122)(v120, v80, v82);
          v84 = v4;
          v85 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
          sub_100019648();
          swift_beginAccess();
          v86 = v83;
          v87 = v84;
          (*(v75 + 40))(&v84[v85], v86, v82);
          swift_endAccess();
          v88 = v84;
          v89 = v87;
          v75 = sub_100057850();
          v90 = sub_100057D80();

          if (os_log_type_enabled(v75, v90))
          {
            sub_1000196C0();
            v91 = swift_slowAlloc();
            v113 = v91;
            v115 = swift_slowAlloc();
            *&v130 = v115;
            *v91 = 136446210;
            v119 = v89;
            v114 = v90;
            v92 = v120;
            (v122)(v120, &v89[v85], v123);
            v93 = v75;
            v94 = sub_100057790();
            v96 = v95;
            v97 = *(v132 + 8);
            v98 = v92;
            v99 = v123;
            v97(v98, v123);
            sub_10000D850(v94, v96, &v130);
            sub_100019588();

            v100 = v113;
            *(v113 + 1) = v94;
            v75 = v100;
            _os_log_impl(&_mh_execute_header, v93, v114, "=== Sidecar Session %{public}s ===", v100, 0xCu);
            sub_10000904C(v115);
            sub_10000DF70();

            sub_10000DF70();

            sub_10000686C(v116, v117);
            v97(v121, v99);
          }

          else
          {
            sub_10000686C(v116, v117);

            (*(v132 + 8))(v121, v123);
          }

          a1 = v118;
        }
      }
    }

    else
    {
      sub_100019138(&v130, &unk_10007EEE0);
    }

    *&v129 = 0x6365646F63;
    *(&v129 + 1) = 0xE500000000000000;
    v101 = sub_100058270();
    v102 = sub_100019594(v101);
    sub_100019588();
    swift_unknownObjectRelease();
    if (v75)
    {
      sub_1000197C4();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100019660();
    }

    sub_1000194F0();
    if (v103)
    {
      if (sub_100019520())
      {
        v104 = sub_100057D40().super.super.isa;
        sub_1000198B4(v104, "setCodec:");
      }
    }

    else
    {
      sub_100019138(&v130, &unk_10007EEE0);
    }

    *&v129 = 7826540;
    *(&v129 + 1) = 0xE300000000000000;
    v105 = [a1 __swift_objectForKeyedSubscript:sub_100058270()];
    swift_unknownObjectRelease();
    if (v105)
    {
      sub_100057FE0();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100019660();
    }

    sub_1000194F0();
    if (v106)
    {
      v107 = sub_100019520();
      if (v107)
      {
        v107 = sub_100057C90().super.super.isa;
        v108 = v107;
        goto LABEL_71;
      }
    }

    else
    {
      v107 = sub_100019138(&v130, &unk_10007EEE0);
    }

    v108 = 0;
LABEL_71:
    sub_1000198B4(v107, "setLowLatency:");

    *&v129 = 0x73656C6974;
    *(&v129 + 1) = 0xE500000000000000;
    v109 = [a1 __swift_objectForKeyedSubscript:sub_100058270()];
    swift_unknownObjectRelease();
    if (v109)
    {
      sub_100057FE0();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100019660();
    }

    sub_1000194F0();
    if (v110)
    {
      v111 = sub_100019520();
      if (v111)
      {
        v111 = sub_100057D40().super.super.isa;
        v112 = v111;
LABEL_79:
        sub_1000198B4(v111, "setTilesPerFrame:");

        sub_100016C10();
        return;
      }
    }

    else
    {
      v111 = sub_100019138(&v130, &unk_10007EEE0);
    }

    v112 = 0;
    goto LABEL_79;
  }
}

id sub_100011740()
{
  v0 = [objc_opt_self() mainDisplay];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 currentPreset];

    if (v2)
    {
      v1 = [v2 isReference];
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1000117CC(uint64_t a1, uint64_t a2)
{
  sub_100057B00();
  if (*(a1 + 24))
  {
    result = sub_100018AB0(a1, v28);
    if (!v29)
    {
      __break(1u);
      return result;
    }

    v5 = sub_100057A70();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  v8 = sub_100057850();
  v9 = sub_100057D80();

  v10 = os_log_type_enabled(v8, v9);
  v30 = a2;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v11 = 136446466;
    v12 = sub_10001973C();
    v15 = sub_10000D850(v12, v13, v14);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_10000D850(v5, v7, v28);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "=== Sidecar-%{public}s <-> Sidecar-%{public}s ===", v11, 0x16u);
    swift_arrayDestroy();
    sub_10000DF70();

    sub_10000DF70();
  }

  else
  {
  }

  sub_100018AB0(a1, v28);
  if (!v29)
  {
    return sub_100019138(v28, &unk_10007EEE0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    sub_10001984C();
    if (v19)
    {
      v20 = sub_100027608(v17, v18);
      if (qword_10007E8F8 != -1)
      {
        swift_once();
      }

      v21 = sub_1000279C0(v20, qword_10007EF50);

      if (v21)
      {
        sub_100005A1C(0, &qword_10007F000);
        sub_100057A50();
        sub_1000194E0();
        sub_1000194CC();
        sub_100018664(v22, v23, v24, v25, v26, v27);
        return swift_willThrow();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100011AD8(uint64_t a1)
{
  sub_100018AB0(a1, v8);
  if (!v9)
  {
    sub_100019138(v8, &unk_10007EEE0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v6 = 1;
    return v6 & 1;
  }

  sub_10001984C();
  if (!v3)
  {

    goto LABEL_9;
  }

  v4 = sub_100027608(v1, v2);
  if (qword_10007E900 != -1)
  {
    swift_once();
  }

  v5 = sub_1000279C0(v4, qword_10007EF58);

  v6 = v5 ^ 1;
  return v6 & 1;
}

uint64_t sub_100011BC8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_12:
        __break(1u);
      }

      v6 = v6;
LABEL_6:
      if (v6 == 16)
      {
        sub_1000191B4();
        sub_100057590();
        sub_1000577C0();
        sub_10000686C(a1, a2);
        v10 = sub_1000577F0();
        return sub_10001918C(a3, 0, 1, v10);
      }

      else
      {
LABEL_8:
        sub_10000686C(a1, a2);
        v12 = sub_1000577F0();

        return sub_10001918C(a3, 1, 1, v12);
      }

    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_8;
    default:
      v6 = BYTE6(a2);
      goto LABEL_6;
  }
}

void sub_100011D7C(uint64_t a1)
{
  v3 = sub_100012CC4();
  if (!v1)
  {
    v4 = v3;
    v5 = [*&v3[OBJC_IVAR____TtC17ContinuityDisplay11VideoStream_videoStream] streamToken];
    v6 = [objc_allocWithZone(AVCRemoteVideoClient) initWithStreamToken:v5 delegate:*(a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoClientDelegate)];
    v7 = *(a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoClient);
    *(a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoClient) = v6;

    swift_unknownObjectWeakAssign();
    v8 = *(a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoStream);
    *(a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoStream) = v4;
    v43 = v4;

    v9 = *(a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_negotiator);
    if (v9)
    {
      v10 = [v9 answer];
      v11 = sub_100057730();
      v13 = v12;

      sub_100005890(&qword_10007FAB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10005B5A0;
      *(inited + 32) = 6518369;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = v11;
      *(inited + 56) = v13;
      *(inited + 72) = &type metadata for Data;
      *(inited + 80) = 1936876918;
      *(inited + 88) = 0xE400000000000000;
      sub_100018F90(v11, v13);
      v15 = sub_100057B00();
      *(inited + 120) = &type metadata for String;
      *(inited + 96) = v15;
      *(inited + 104) = v16;
      v17 = sub_1000579C0();
      v18 = sub_10000F3D0(*(a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config));
      if ((v21 & 1) == 0)
      {
        v22 = v19;
        v23 = v20;
        v46 = &type metadata for Int;
        *&v45 = v18;
        sub_10000903C(&v45, v44);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v17;
        sub_100009098(v44, 0x6874646977, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
        v25 = v47;
        v46 = &type metadata for Int;
        *&v45 = v22;
        sub_10000903C(&v45, v44);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v25;
        sub_100009098(v44, 0x746867696568, 0xE600000000000000, v26);
        v27 = v47;
        v46 = &type metadata for Int;
        *&v45 = v23;
        sub_10000903C(&v45, v44);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v27;
        sub_100009098(v44, 0x656C616373, 0xE500000000000000, v28);
        v17 = v47;
      }

      v29 = a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 8);
        ObjectType = swift_getObjectType();
        (*(v30 + 96))(v48, a1, ObjectType, v30);
        swift_unknownObjectRelease();
        if ((v49 & 1) == 0)
        {
          sub_100005890(&qword_10007F170);
          v32 = swift_allocObject();
          v33 = v48[1];
          v32[2] = v48[0];
          v32[3] = v33;
          v32[1] = xmmword_10005B590;
          v46 = sub_100005890(&qword_10007F178);
          *&v45 = v32;
          sub_10000903C(&v45, v44);
          v34 = swift_isUniquelyReferenced_nonNull_native();
          v50 = v17;
          sub_100009098(v44, 0x737465736E69, 0xE600000000000000, v34);
        }
      }

      sub_100018F90(v11, v13);
      v35 = sub_100057850();
      v36 = sub_100057D80();
      if (!os_log_type_enabled(v35, v36))
      {
        sub_10000686C(v11, v13);
LABEL_16:

        sub_100010014();

        sub_100015038();
        sub_10000686C(v11, v13);

        return;
      }

      v37 = swift_slowAlloc();
      *v37 = 134217984;
      v38 = v37;
      v39 = 0;
      switch(v13 >> 62)
      {
        case 1uLL:
          LODWORD(v39) = HIDWORD(v11) - v11;
          if (!__OFSUB__(HIDWORD(v11), v11))
          {
            v39 = v39;
LABEL_15:
            *(v37 + 4) = v39;
            sub_10000686C(v11, v13);
            _os_log_impl(&_mh_execute_header, v35, v36, "AVC negotiate answer (%ld bytes)", v38, 0xCu);

            goto LABEL_16;
          }

          __break(1u);
LABEL_19:
          __break(1u);
          break;
        case 2uLL:
          v41 = *(v11 + 16);
          v40 = *(v11 + 24);
          v42 = __OFSUB__(v40, v41);
          v39 = v40 - v41;
          if (!v42)
          {
            goto LABEL_15;
          }

          goto LABEL_19;
        case 3uLL:
          goto LABEL_15;
        default:
          v39 = BYTE6(v13);
          goto LABEL_15;
      }
    }

    __break(1u);
    JUMPOUT(0x1000122A0);
  }
}

void *sub_1000122B0(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000577F0();
  sub_1000068E4();
  __chkstk_darwin(v9);
  sub_1000068D4();
  v13 = v12 - v11;
  v14 = *&v3[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoSidecarStream];
  if (!v14 || (v15 = *&v3[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_negotiator]) == 0)
  {
    sub_100005A1C(0, &qword_10007F000);
    sub_100057A50();
    sub_1000194E0();
    sub_1000194CC();
    sub_100018664(v18, v19, v20, v21, v22, v23);
    swift_willThrow();
    return a1;
  }

  v121 = v10;
  v123 = *&v3[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_negotiator];
  v124 = *&v3[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoSidecarStream];
  if (a2 >> 60 == 15)
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v119 = v14;
    v25 = v15;
    v26 = sub_10001973C();
    sub_1000190E8(v26, v27);
    v28 = sub_100057850();
    sub_100057D80();
    v29 = sub_100019834();
    if (os_log_type_enabled(v29, v30))
    {
      sub_1000196C0();
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      v32 = 0;
      switch(a2 >> 62)
      {
        case 1uLL:
          LODWORD(v32) = HIDWORD(a1) - a1;
          if (__OFSUB__(HIDWORD(a1), a1))
          {
            goto LABEL_72;
          }

          v32 = v32;
LABEL_13:
          *(v31 + 4) = v32;
          sub_100019808();
          _os_log_impl(v36, v37, v38, v39, v40, v41);
          sub_10000DF70();

          break;
        case 2uLL:
          v34 = a1[2];
          v33 = a1[3];
          v35 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (!v35)
          {
            goto LABEL_13;
          }

          goto LABEL_73;
        case 3uLL:
          goto LABEL_13;
        default:
          v32 = BYTE6(a2);
          goto LABEL_13;
      }
    }

    sub_10001973C();
    isa = sub_100057720().super.isa;
    v127[0] = 0;
    v43 = [v25 setAnswer:isa withError:v127];

    v3 = v127[0];
    if (!v43)
    {
      v68 = v127[0];
      sub_100019730();
      sub_100057670();

      swift_willThrow();
      v69 = sub_10001973C();
      sub_1000190FC(v69, v70);

      return a1;
    }

    v44 = v127[0];
    v45 = sub_10001973C();
    sub_1000190FC(v45, v46);
    v15 = v123;
  }

  v127[0] = 0;
  v47 = [v15 generateMediaStreamConfigurationWithError:v127];
  if (!v47)
  {
    v67 = v127[0];
    sub_100019588();
    sub_100057670();

    swift_willThrow();
    return a1;
  }

  v48 = v47;
  v49 = v127[0];
  if ([v48 isRTCPEnabled])
  {
    [v48 setRtcpTimeOutEnabled:1];
    [v48 setRtcpSendInterval:1.0];
    v50 = [*&v4[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request] session];
    if (!v50 || (v51 = v50, v52 = a3, v53 = [v50 transport], v51, v54 = 3.0, v59 = v53 == 2, a3 = v52, !v59))
    {
      v54 = 8.0;
    }

    [v48 setRtcpTimeOutInterval:v54];
  }

  a1 = v48;
  v55 = [a1 video];
  if (v55)
  {
    v56 = v55;
    if ([v55 videoResolution] != 12)
    {
LABEL_42:

      goto LABEL_43;
    }

    v57 = [v56 customWidth];
    if (a3)
    {
      v58 = v57;
      v59 = v57 == 0x8000000000000000 && a3 == -1;
      if (v59)
      {
        goto LABEL_70;
      }

      v120 = [v56 customHeight];
      v122 = a3;
      if (v120 == 0x8000000000000000 && a3 == -1)
      {
        goto LABEL_71;
      }

      v61 = [a1 video];
      if (!v61)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v62 = v61;
      [v61 setVideoResolution:12];

      v63 = [a1 video];
      if (!v63)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if ((v58 / v122 * v122) >> 64 == (v58 / v122 * v122) >> 63)
      {
        v64 = v63;
        [v63 setCustomWidth:?];

        v65 = [a1 video];
        if (!v65)
        {
LABEL_80:
          __break(1u);
          JUMPOUT(0x100012BECLL);
        }

        if ((v120 / v122 * v122) >> 64 == (v120 / v122 * v122) >> 63)
        {
          v66 = v65;
          [v65 setCustomHeight:?];

          v56 = v66;
          goto LABEL_42;
        }

        goto LABEL_69;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

LABEL_43:
  v71 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
  sub_100019514();
  swift_beginAccess();
  (*(v121 + 16))(v13, &v4[v71], v8);
  v125 = sub_1000577D0();
  v126 = v72;
  v73 = sub_10001C8F0(&v125, v127);
  v75 = v74;
  (*(v121 + 8))(v13, v8);
  v76 = sub_100057700();
  v78 = v77;
  sub_10000686C(v73, v75);
  v79 = sub_10001C9AC(v76, v78);
  v81 = v80;
  v82 = *&v4[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config];
  v83 = sub_100012BFC(v82, &selRef_cipher);
  LOBYTE(v76) = v84;
  v85 = sub_100019078([v124 rapportStream]);
  v87 = v86;
  if (v76)
  {
    v83 = 5;
  }

  v88 = sub_100019840();
  sub_100018F90(v88, v89);
  [a1 setSRTPCipherSuite:v83];
  [a1 setSRTCPCipherSuite:v83];
  if (v87 >> 60 == 15)
  {
    v90 = 0;
  }

  else
  {
    v90 = v85;
  }

  v91 = 0xC000000000000000;
  if (v87 >> 60 != 15)
  {
    v91 = v87;
  }

  v125 = v90;
  v126 = v91;
  v92 = sub_100019840();
  sub_100018F90(v92, v93);
  sub_1000190E8(v85, v87);
  sub_100019840();
  sub_100057760();
  v94 = sub_100019840();
  sub_10000686C(v94, v95);
  v96 = v125;
  v97 = v126;
  v98 = sub_100057720().super.isa;
  [a1 setReceiveMasterKey:v98];

  v99 = sub_100057720().super.isa;
  [a1 setSendMasterKey:v99];

  sub_10000686C(v96, v97);
  sub_10000686C(v79, v81);
  sub_1000190FC(v85, v87);
  v100 = sub_100012BFC(v82, &selRef_codec);
  if ((v101 & 1) == 0)
  {
    v102 = sub_100019760();
    if (v102)
    {
      v103 = v102;
      [v102 setTxCodecType:v96];

      v104 = [a1 video];
      if (v104)
      {
        v105 = v104;
        [v104 setRxCodecType:v96];

        goto LABEL_54;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_76;
  }

LABEL_54:
  sub_1000195DC(v100, &selRef_framerate);
  if (v106)
  {
    goto LABEL_57;
  }

  v107 = sub_100019760();
  if (!v107)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v108 = v107;
  [v107 setFramerate:v96];

LABEL_57:
  v109 = sub_10001407C(v82, &selRef_rtcp);
  if (v109 != 2)
  {
    v109 = [a1 setRtcpEnabled:v109 & 1];
  }

  v110 = sub_1000195B4(v109, &selRef_keyFrameInterval);
  v111 = v123;
  if ((v112 & 1) == 0)
  {
    sub_10000B0E4(a1, *&v110);
  }

  v113 = sub_1000195DC(v110, &selRef_tilesPerFrame);
  if (v114)
  {
    goto LABEL_64;
  }

  v115 = sub_100019760();
  if (!v115)
  {
    goto LABEL_77;
  }

  v116 = v115;
  [v115 setTilesPerFrame:v96];

  v111 = v123;
LABEL_64:
  v117 = sub_1000195B4(v113, &selRef_rtcpTimeoutInterval);
  if ((v118 & 1) == 0)
  {
    [a1 setRtcpTimeOutInterval:*&v117];
  }

  sub_10000686C(v79, v81);
  return a1;
}

id sub_100012BFC(void *a1, SEL *a2)
{
  result = [a1 *a2];
  if (result)
  {
    v3 = result;
    sub_100057D50();

    return 0;
  }

  return result;
}

id sub_100012C60(void *a1, SEL *a2, void (*a3)(id, uint64_t *))
{
  result = [a1 *a2];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = 1;
    a3(result, &v6);

    return v6;
  }

  return result;
}

id sub_100012CC4()
{
  v1 = v0;
  v2 = sub_1000577F0();
  sub_1000068E4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000068D4();
  v8 = v7 - v6;
  v9 = *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoSidecarStream];
  if (v9 && (v10 = *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_negotiator]) != 0)
  {
    v36[0] = 0;
    v11 = v10;
    v12 = v9;
    v13 = [v11 generateMediaStreamInitOptionsWithError:v36];
    v14 = v36[0];
    if (v13)
    {
      v15 = v13;
      v16 = sub_1000579B0();
      v17 = v14;

      *&v34 = sub_100057A50();
      *(&v34 + 1) = v18;
      sub_100058030();
      v32 = v12;
      v19 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
      sub_100019514();
      swift_beginAccess();
      (*(v4 + 16))(v8, &v1[v19], v2);
      v20 = sub_100057790();
      v22 = v21;
      (*(v4 + 8))(v8, v2);
      v35 = &type metadata for String;
      *&v34 = v20;
      *(&v34 + 1) = v22;
      sub_10000903C(&v34, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000091D8(v33, v36, isUniquelyReferenced_nonNull_native);
      sub_10000E840(v36);
      objc_allocWithZone(type metadata accessor for VideoStream());
      v24 = sub_10000B530(v1, v32, v16);
    }

    else
    {
      v24 = v36[0];
      sub_100057670();

      swift_willThrow();
    }
  }

  else
  {
    v24 = sub_100005A1C(0, &qword_10007F000);
    sub_100057A50();
    sub_1000194E0();
    sub_1000194CC();
    sub_100018664(v25, v26, v27, v28, v29, v30);
    swift_willThrow();
  }

  return v24;
}

void sub_100012FC8(void *a1)
{
  v3 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoStream);
  if (!v4)
  {
    goto LABEL_24;
  }

  *&v97 = 0x6874646977;
  *(&v97 + 1) = 0xE500000000000000;
  v6 = v4;
  v7 = [a1 __swift_objectForKeyedSubscript:sub_100058270()];
  v8 = swift_unknownObjectRelease();
  if (v7)
  {
    sub_100057FE0();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v100 = 0u;
  }

  sub_1000196FC(v8, v9, v10, v11, v12, v13, v14, v15, v65, v68, v71, v74, v77, v80, v84, v87, v90, v93, v97, *(&v97 + 1), v100);
  if (!v16)
  {
    goto LABEL_22;
  }

  if ((sub_10001966C() & 1) == 0)
  {
    goto LABEL_23;
  }

  *&v98 = 0x746867696568;
  *(&v98 + 1) = 0xE600000000000000;
  v17 = sub_100058270();
  v18 = sub_100019894(v17);
  v19 = swift_unknownObjectRelease();
  if (v18)
  {
    sub_100057FE0();
    v19 = swift_unknownObjectRelease();
  }

  else
  {
    v98 = 0u;
    v101 = 0u;
  }

  sub_1000196FC(v19, v20, v21, v22, v23, v24, v25, v26, v66, v69, v72, v75, v78, v81, v85, v88, v91, v94, v98, *(&v98 + 1), v101);
  if (!v27)
  {
    goto LABEL_22;
  }

  if ((sub_10001966C() & 1) == 0)
  {
LABEL_23:

    goto LABEL_24;
  }

  *&v99 = 0x656C616373;
  *(&v99 + 1) = 0xE500000000000000;
  v28 = sub_100058270();
  v29 = sub_100019894(v28);
  v30 = swift_unknownObjectRelease();
  if (v29)
  {
    sub_100057FE0();
    v30 = swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v102 = 0u;
  }

  sub_1000196FC(v30, v31, v32, v33, v34, v35, v36, v37, v67, v70, v73, v76, v79, v82, v86, v89, v92, v95, v99, *(&v99 + 1), v102);
  if (!v38)
  {
LABEL_22:

    sub_100019138(v103, &unk_10007EEE0);
LABEL_24:
    sub_100005A1C(0, &qword_10007F000);
    sub_100057A50();
    sub_1000194E0();
    sub_1000194CC();
    sub_100018664(v49, v50, v51, v52, v53, v54);
    swift_willThrow();
    return;
  }

  if ((sub_10001966C() & 1) == 0)
  {
    goto LABEL_23;
  }

  v39 = *(v3 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config);
  [v39 setScale:v104];
  [v39 setSize:{v104, v104}];
  v40 = sub_1000122B0(0, 0xF000000000000000, 2);
  if (v2)
  {
LABEL_34:

    return;
  }

  v96 = v40;
  sub_100019514();
  swift_beginAccess();

  v83 = sub_10000E9F0(v41, 2);
  v43 = v42;

  if (v43)
  {
    v83 = sub_10000B194(v96);
  }

  v45 = sub_10000E9F0(v44, 1);
  v47 = v46;

  if (v47)
  {
    sub_10000B194(v96);
    v45 = v48;
  }

  sub_10000B22C(v83, v45, v96);
  v55 = [v96 video];
  if (!v55)
  {
    goto LABEL_37;
  }

  v56 = v55;
  [v55 setVideoResolution:12];

  v57 = [v96 video];
  if (!v57)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v104 * v104) >> 64 != (v104 * v104) >> 63)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v58 = v57;
  [v57 setCustomWidth:?];

  v59 = [v96 video];
  if (v59)
  {
    if ((v104 * v104) >> 64 == (v104 * v104) >> 63)
    {
      v60 = v59;
      [v59 setCustomHeight:?];

      sub_10000BA58(v96);

      v62 = sub_10000EA64(v61);

      if (v62)
      {
        v63 = [*(v3 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request) session];
        if (v63)
        {
          v64 = v63;
          sub_10000FAD0(v63);
        }
      }

      sub_100015038();

      goto LABEL_34;
    }

    goto LABEL_36;
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_1000134B8()
{
  v0 = IDSCopyLocalDeviceUniqueID();
  if (v0)
  {
    v1 = v0;
    sub_100057A50();
  }

  sub_10001353C(28);
  v2 = sub_100057A90();
  v4 = v3;

  qword_100083C70 = v2;
  *algn_100083C78 = v4;
  return result;
}

uint64_t sub_10001353C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100057AE0();
    v1 = sub_100057BA0();

    return v1;
  }

  return result;
}

void SidecarDisplaySession.__allocating_init(logger:request:config:)()
{
  v0 = objc_allocWithZone(sub_100019730());
  sub_100019588();
  SidecarDisplaySession.init(logger:request:config:)();
}

void SidecarDisplaySession.init(logger:request:config:)()
{
  sub_100019748();
  v1 = v0;
  v3 = v2;
  v94 = v4;
  v6 = v5;
  sub_1000577F0();
  sub_1000068E4();
  v96 = v8;
  v97 = v7;
  __chkstk_darwin(v7);
  sub_1000068D4();
  v95 = (v10 - v9);
  sub_1000197DC();
  v11 = sub_100057880();
  sub_1000068E4();
  v99 = v12;
  __chkstk_darwin(v13);
  sub_100019500();
  v90 = v14;
  sub_10001970C();
  __chkstk_darwin(v15);
  v89 = &v88 - v16;
  sub_10001970C();
  __chkstk_darwin(v17);
  v19 = &v88 - v18;
  *&v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_peerSupportsHIDReportExtensions] = 0;
  v20 = &v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_safeInsets];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
  sub_100005A1C(0, &qword_10007EEC0);
  *&v0[v21] = sub_100057DC0();
  v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_accepted] = 0;
  v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_inited] = 0;
  *&v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_negotiator] = 0;
  *&v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_audioStreamNegotiator] = 0;
  v22 = &v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoConfig];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_coexSession] = 0;
  *&v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_clock] = 0;
  v23 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_settings;
  if (qword_10007E8E8 != -1)
  {
    swift_once();
  }

  sub_100019514();
  swift_beginAccess();
  v24 = qword_100083C48;
  v25 = unk_100083C50;
  v27 = qword_100083C58;
  v26 = unk_100083C60;

  v28 = v27;

  v29 = sub_10000699C(v24, v25, v28, v26);

  v98 = v23;
  *&v1[v23] = v29;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_hidSidecarStream] = 0;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoSidecarStream] = 0;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_audioSidecarStream] = 0;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoStream] = 0;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_audioStream] = 0;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoClient] = 0;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_configurationTimer] = 0;
  v92 = v3;
  [v3 copy];
  sub_100057FE0();
  swift_unknownObjectRelease();
  sub_100005A1C(0, &unk_10007EF70);
  swift_dynamicCast();
  v30 = v102;
  v100 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config] = v102;
  v31 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_logger;
  v32 = *(v99 + 16);
  v32(&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_logger], v6, v11);
  v33 = v94;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request] = v94;
  v93 = v6;
  v32(v19, v6, v11);
  v34 = objc_allocWithZone(type metadata accessor for SidecarDisplaySession.SessionVideoClientDelegate(0));
  v35 = v30;
  v36 = v33;
  *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoClientDelegate] = sub_1000175B0(v19);
  v37 = [v36 uuid];
  v38 = v95;
  sub_1000577B0();

  (v96)[4](&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid], v38, v97);
  v39 = [v36 device];
  v91 = v35;
  v94 = v36;
  if (!v39)
  {
    v48 = v89;
    v32(v89, &v1[v31], v11);
    v49 = sub_100057850();
    v50 = sub_100057D80();
    v51 = v11;
    if (os_log_type_enabled(v49, v50))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "=== Sidecar Started ===", v52, 2u);
      sub_10000DF70();
    }

    v53 = *(v99 + 8);
    v53(v48, v11);
    goto LABEL_17;
  }

  v97 = v11;
  v40 = v39;
  v41 = [v40 description];
  if (!v41)
  {
    __break(1u);
    goto LABEL_31;
  }

  v42 = v41;

  v43 = [v40 model];
  v44 = v99;
  if (!v43)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v45 = v43;
  v96 = v40;
  v46 = [v43 length];
  v95 = v45;
  if (v46 < 1)
  {
    sub_100005A1C(0, &qword_10007EFE8);
    v47 = sub_100057F00();
  }

  else
  {
    v47 = v45;
  }

  v54 = v47;
  v55 = &v1[v31];
  v56 = v90;
  v51 = v97;
  v32(v90, v55, v97);
  v57 = v54;
  v58 = v42;
  v59 = sub_100057850();
  v60 = sub_100057D80();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v61 = 138544130;
    *(v61 + 4) = v57;
    *(v61 + 12) = 2114;
    *(v61 + 14) = v58;
    *v62 = v57;
    v62[1] = v42;
    *(v61 + 22) = 2082;
    v89 = v57;
    v88 = v58;
    v63 = sub_1000553DC();
    v64 = sub_100057A50();
    v66 = v65;

    v67 = sub_10000D850(v64, v66, v103);

    *(v61 + 24) = v67;
    *(v61 + 32) = 2082;
    if (qword_10007E8F0 != -1)
    {
      swift_once();
    }

    *(v61 + 34) = sub_10000D850(qword_100083C70, *algn_100083C78, v103);
    _os_log_impl(&_mh_execute_header, v59, v60, "=== Sidecar Started %{public}@ %{public}@ -> %{public}s IDS %{public}s ===", v61, 0x2Au);
    sub_100005890(&qword_10007EFF0);
    swift_arrayDestroy();
    sub_10000DF70();

    swift_arrayDestroy();
    sub_10000DF70();

    sub_10000DF70();

    v53 = *(v99 + 8);
    v51 = v97;
    v53(v90, v97);
  }

  else
  {

    v53 = *(v44 + 8);
    v53(v56, v51);
  }

LABEL_17:
  v68 = v93;
  v69 = unk_100083C50;
  v70 = qword_100083C58;
  v71 = *&v1[v100];

  v72 = v70;

  v73 = v71;
  LODWORD(v71) = sub_10001407C(v73, &selRef_lowLatency);

  v74 = v71 == 2;
  v75 = v100;
  if (v74)
  {
    v76 = *&v1[v100];
    v77 = sub_100019730();
    if (sub_10000E93C(v77, v69, v72) == 2)
    {
      isa = 0;
    }

    else
    {
      isa = sub_100057C90().super.super.isa;
    }

    [v73 setLowLatency:isa];
  }

  v79 = *&v1[v75];
  v80 = sub_10001407C(v79, &selRef_enableTimeSync);

  if (v80 != 2)
  {
    sub_100019604();
    sub_1000085AC(v80 & 1, 6);
    swift_endAccess();
  }

  v81 = *&v1[v100];
  v82 = sub_10001407C(v81, &selRef_showTouchBar);

  if (v82 != 2)
  {
    sub_100019604();
    sub_1000085AC(v82 & 1, 3);
    swift_endAccess();
  }

  v83 = *&v1[v100];
  v84 = sub_10001407C(v83, &selRef_showSideBar);

  if (v84 != 2)
  {
    sub_100019604();
    sub_1000085AC(v84 & 1, 10);
    swift_endAccess();
  }

  v85 = type metadata accessor for SidecarDisplaySession(0);
  v101.receiver = v1;
  v101.super_class = v85;
  v86 = objc_msgSendSuper2(&v101, "init");
  v87 = v94;
  [v94 setDelegate:v86];
  sub_1000140D4();

  v53(v68, v51);
  sub_100019718();
}