uint64_t sub_10005B64C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000032D4(&qword_1001164D0, &qword_1000D3A48);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10005B6D8()
{
  sub_100059BFC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_10005B734()
{
  result = qword_100116578;
  if (!qword_100116578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116578);
  }

  return result;
}

uint64_t sub_10005B788(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_1001164D0, &qword_1000D3A48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for LocationAccuracy(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000032D4(&qword_100116590, &qword_1000D3B50);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_10005C118(a1, &v23 - v16, type metadata accessor for LocationAccuracy);
  sub_10005C118(a2, &v17[v18], type metadata accessor for LocationAccuracy);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_10005C118(v17, v12, type metadata accessor for LocationAccuracy);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_10002BB3C(0, &qword_100116330, NSUnitLength_ptr);
      v20 = static Measurement.== infix<A, B>(_:_:)();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_10005BE04(v17, type metadata accessor for LocationAccuracy);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_10002D02C(v17, &qword_100116590, &qword_1000D3B50);
    v20 = 0;
    return v20 & 1;
  }

  sub_10005BE04(v17, type metadata accessor for LocationAccuracy);
  v20 = 1;
  return v20 & 1;
}

BOOL sub_10005BA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000032D4(&qword_100116398, &unk_1000D3A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v27 - v11);
  v13 = sub_1000032D4(&qword_100116580, &qword_1000D3B48);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v27 - v16;
  v18 = *(v15 + 56);
  sub_10002CFC4(a1, &v27 - v16, &qword_100116398, &unk_1000D3A00);
  sub_10002CFC4(a2, &v17[v18], &qword_100116398, &unk_1000D3A00);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_10002D02C(v17, &qword_100116398, &unk_1000D3A00);
LABEL_4:
      v20 = type metadata accessor for CurrentLocationResult(0);
      return *(a1 + *(v20 + 20)) == *(a2 + *(v20 + 20));
    }

    goto LABEL_7;
  }

  sub_10002CFC4(v17, v12, &qword_100116398, &unk_1000D3A00);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_10005BE04(v12, type metadata accessor for CurrentLocation);
LABEL_7:
    v22 = &qword_100116580;
    v23 = &qword_1000D3B48;
LABEL_8:
    sub_10002D02C(v17, v22, v23);
    return 0;
  }

  sub_10005C180(&v17[v18], v8, type metadata accessor for CurrentLocation);
  sub_10002BB3C(0, &qword_100116588, NSObject_ptr);
  v24 = *v12;
  v25 = *v8;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_10005BE04(v8, type metadata accessor for CurrentLocation);
    sub_10005BE04(v12, type metadata accessor for CurrentLocation);
    v22 = &qword_100116398;
    v23 = &unk_1000D3A00;
    goto LABEL_8;
  }

  v26 = sub_10005B788(v12 + *(v4 + 20), v8 + *(v4 + 20));
  sub_10005BE04(v8, type metadata accessor for CurrentLocation);
  sub_10005BE04(v12, type metadata accessor for CurrentLocation);
  sub_10002D02C(v17, &qword_100116398, &unk_1000D3A00);
  if (v26)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_10005BE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10005BE64(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10005BE74(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10005BE84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&unk_100116598, &unk_1000D3B58);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v16 = objc_opt_self();
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v21 = 0xD000000000000021;
    v22 = 0x80000001000DA1C0;
    v20[1] = a1;
    swift_errorRetain();
    sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
    v17._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v17);

    v18 = String._bridgeToObjectiveC()();

    [v16 logInfo:v18];

    v19 = sub_1000032D4(&qword_1001165A8, &qword_1000D3B68);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    sub_100059FA0(v7);
    return sub_10002D02C(v7, &unk_100116598, &unk_1000D3B58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005C118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005C180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005C1F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005C248(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10005C290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_observerId];
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  *v13 = v14;
  v13[1] = v16;
  v17 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation;
  v18 = type metadata accessor for TimerAnimationCountdown(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v22 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v23 = type metadata accessor for OpaqueAlarm();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v24 = (v21 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *&v4[v17] = v21;
  v25 = &v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  v27 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v27 - 8) + 56))(&v4[v26], 1, 1, v27);
  *&v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_elementSize] = 0x4040000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_topMargin] = 0x4010000000000000;
  v28 = type metadata accessor for TimerCompressedController();
  v47.receiver = v4;
  v47.super_class = v28;
  v29 = objc_msgSendSuper2(&v47, "init");
  v30 = &v29[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  v31 = *&v29[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId + 8];
  *v30 = a1;
  *(v30 + 1) = a2;
  v32 = v29;

  v33 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  swift_beginAccess();
  sub_10005EFE0(a3, &v32[v33]);
  swift_endAccess();
  sub_10005CEDC();
  v34 = objc_opt_self();
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v35 = [v32 description];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v45 = v36;
  v46 = v38;
  v39._object = 0x80000001000DA500;
  v39._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v39);
  v44[1] = a1;
  v44[2] = a2;
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  v40._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 32;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  v42 = String._bridgeToObjectiveC()();

  [v34 logInfo:v42];

  sub_10005D2D0();
  sub_10002D02C(a3, &qword_100115E38, &qword_1000D3280);
  return v32;
}

char *sub_10005C638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_observerId];
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  *v11 = v12;
  v11[1] = v14;
  v15 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation;
  v16 = type metadata accessor for TimerAnimationCountdown(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  v20 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v21 = type metadata accessor for OpaqueAlarm();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  v22 = (v19 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  *&v3[v15] = v19;
  v23 = &v3[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  v25 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v25 - 8) + 56))(&v3[v24], 1, 1, v25);
  *&v3[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_elementSize] = 0x4040000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_topMargin] = 0x4010000000000000;
  v26 = type metadata accessor for TimerCompressedController();
  v44.receiver = v3;
  v44.super_class = v26;
  v27 = objc_msgSendSuper2(&v44, "init");
  v28 = &v27[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  v29 = *&v27[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId + 8];
  *v28 = a1;
  *(v28 + 1) = a2;
  v30 = v27;

  sub_10005CEDC();
  v31 = objc_opt_self();
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v32 = [v30 description];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v42 = v33;
  v43 = v35;
  v36._object = 0x80000001000DA500;
  v36._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v36);
  v41[0] = a1;
  v41[1] = a2;
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  v37._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v37);

  v38._countAndFlagsBits = 32;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39 = String._bridgeToObjectiveC()();

  [v31 logInfo:v39];

  sub_10005D2D0();
  return v30;
}

id sub_10005C998(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_observerId];
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *v9 = v10;
  v9[1] = v12;
  v13 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation;
  v14 = type metadata accessor for TimerAnimationCountdown(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  v18 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v19 = type metadata accessor for OpaqueAlarm();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = (v17 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *&v2[v13] = v17;
  v21 = &v2[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  v23 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v23 - 8) + 56))(&v2[v22], 1, 1, v23);
  *&v2[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_elementSize] = 0x4040000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_topMargin] = 0x4010000000000000;
  v24 = type metadata accessor for TimerCompressedController();
  v27.receiver = v2;
  v27.super_class = v24;
  v25 = objc_msgSendSuper2(&v27, "initWithCoder:", a1);

  if (v25)
  {
  }

  return v25;
}

id sub_10005CC08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_observerId];
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  *v12 = v13;
  v12[1] = v15;
  v16 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation;
  v17 = type metadata accessor for TimerAnimationCountdown(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  v21 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  v22 = type metadata accessor for OpaqueAlarm();
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  v23 = (v20 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  *&v4[v16] = v20;
  v24 = &v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  v26 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v26 - 8) + 56))(&v4[v25], 1, 1, v26);
  *&v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_elementSize] = 0x4040000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_topMargin] = 0x4010000000000000;
  if (a2)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v28 = type metadata accessor for TimerCompressedController();
  v31.receiver = v4;
  v31.super_class = v28;
  v29 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", v27, a3);

  return v29;
}

void sub_10005CEDC()
{
  if (*(v0 + OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId);
    v3[3] = &type metadata for ClockFeatureFlags;
    v3[4] = sub_10004DECC();
    LOBYTE(v3[0]) = 0;

    v2 = isFeatureEnabled(_:)();
    sub_100017D28(v3);
    if (v2)
    {
      if (qword_100113608 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_1001135F8 == -1)
    {
LABEL_6:
      sub_10005EF98(&qword_1001166A8, type metadata accessor for TimerCompressedController);
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.registerObserver(_:for:)();
      sub_10004E3D4(v3);
      return;
    }

    swift_once();
    goto LABEL_6;
  }
}

id sub_10005D048()
{
  if (*&v0[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId + 8])
  {
    v1 = *&v0[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId];
    v6[3] = &type metadata for ClockFeatureFlags;
    v6[4] = sub_10004DECC();
    LOBYTE(v6[0]) = 0;

    v2 = isFeatureEnabled(_:)();
    sub_100017D28(v6);
    if (v2)
    {
      if (qword_100113608 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_1001135F8 == -1)
    {
LABEL_6:
      sub_10005EF98(&qword_1001166A8, type metadata accessor for TimerCompressedController);
      v3 = v0;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.deregisterObserver(_:for:)();

      sub_10004E3D4(v6);
      goto LABEL_7;
    }

    swift_once();
    goto LABEL_6;
  }

LABEL_7:
  v4 = type metadata accessor for TimerCompressedController();
  v7.receiver = v0;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for TimerCompressedController()
{
  result = qword_100116690;
  if (!qword_100116690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005D2D0()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v58 - v7;
  v9 = type metadata accessor for OpaqueAlarm();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v0[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation];
  v15 = sub_1000BE460(1u);
  if (v15)
  {
    v59 = v13;
    v60 = v14;
    v62 = v10;
    v16 = v15;
    [v16 setAccessibilityIgnoresInvertColors:1];
    v17 = objc_opt_self();
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v18 = [v1 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v63 = v19;
    v64 = v21;
    v22._object = 0x80000001000DA4B0;
    v22._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v22);
    v23 = String._bridgeToObjectiveC()();

    [v17 logInfo:v23];

    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      v61 = v9;
      v58 = v6;
      [v24 addSubview:v16];

      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      sub_1000032D4(&qword_100115480, &qword_1000D2510);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1000D24B0;
      v27 = [v16 topAnchor];
      v28 = [v1 view];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 topAnchor];

        v31 = [v27 constraintEqualToAnchor:v30 constant:4.0];
        *(v26 + 32) = v31;
        v32 = [v16 widthAnchor];
        v33 = [v32 constraintEqualToConstant:32.0];

        *(v26 + 40) = v33;
        v34 = [v16 heightAnchor];
        v35 = [v16 widthAnchor];
        v36 = [v34 constraintEqualToAnchor:v35];

        *(v26 + 48) = v36;
        v37 = [v16 centerXAnchor];

        v38 = [v1 view];
        if (v38)
        {
          v39 = v38;
          v40 = objc_opt_self();
          v41 = [v39 centerXAnchor];

          v42 = [v37 constraintEqualToAnchor:v41];
          *(v26 + 56) = v42;
          sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v40 activateConstraints:isa];

          sub_10005DAC4(v8);
          v44 = v61;
          v45 = v62;
          if (v62[6](v8, 1, v61) == 1)
          {
            sub_10002D02C(v8, &qword_100114D70, &unk_1000D20E0);
          }

          else
          {
            v53 = v59;
            sub_10004DF2C(v8, v59);
            v54 = v53;
            v55 = v58;
            sub_10004DF2C(v54, v58);
            (v45[7])(v55, 0, 1, v44);
            v56 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
            v57 = v60;
            swift_beginAccess();
            sub_10002B138(v55, v57 + v56);
            swift_endAccess();
          }

          return;
        }

LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  v46 = objc_opt_self();
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v47 = [v1 description];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v63 = v48;
  v64 = v50;
  v51._countAndFlagsBits = 0xD00000000000002CLL;
  v51._object = 0x80000001000DA480;
  String.append(_:)(v51);
  v62 = String._bridgeToObjectiveC()();

  [v46 logInfo:v62];
  v52 = v62;
}

uint64_t sub_10005DAC4@<X0>(char *a1@<X8>)
{
  v3 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for AlarmPresentationState();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - v13;
  v15 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId + 8);
  if (!v20)
  {
    goto LABEL_12;
  }

  v37 = a1;
  v39 = *(v1 + OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_sessionId);
  v21 = OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_alarmKitAttributes;
  swift_beginAccess();
  sub_10005EF28(v1 + v21, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    v22 = &qword_100115E38;
    v23 = &qword_1000D3280;
    v24 = v14;
  }

  else
  {
    v36 = *(v16 + 32);
    v36(v19, v14, v15);
    v25 = qword_100113608;

    if (v25 != -1)
    {
      swift_once();
    }

    v40 = v39;
    v41 = v20;

    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v42);
    v26 = v38;
    if ((*(v38 + 48))(v6, 1, v7) != 1)
    {

      v32 = *(v26 + 32);
      v32(v10, v6, v7);
      v33 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
      v34 = v37;
      v32(v37, v10, v7);
      v36(&v34[v33], v19, v15);
      v27 = type metadata accessor for OpaqueAlarm();
      swift_storeEnumTagMultiPayload();
      v28 = *(*(v27 - 8) + 56);
      v29 = v34;
      return v28(v29, 0, 1, v27);
    }

    (*(v16 + 8))(v19, v15);
    v22 = &unk_100115DA0;
    v23 = &unk_1000D3220;
    v24 = v6;
  }

  sub_10002D02C(v24, v22, v23);
  a1 = v37;
  if (qword_1001135F8 != -1)
  {
    swift_once();
  }

  v40 = v39;
  v41 = v20;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(v42);
  if (!v43)
  {
LABEL_12:
    v30 = type metadata accessor for OpaqueAlarm();
    return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
  }

  *a1 = v43;
  v27 = type metadata accessor for OpaqueAlarm();
  swift_storeEnumTagMultiPayload();
  v28 = *(*(v27 - 8) + 56);
  v29 = a1;
  return v28(v29, 0, 1, v27);
}

void sub_10005DFEC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin(v73);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v66 - v13;
  v15 = type metadata accessor for OpaqueAlarm();
  v74 = *(v15 - 8);
  v16 = *(v74 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v66 - v19;
  sub_10002B00C(a1, &aBlock);
  sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
  sub_10002BB3C(0, &qword_100115DB8, MTTimer_ptr);
  if (!swift_dynamicCast())
  {
    v40 = objc_opt_self();
    aBlock = 0;
    v76 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v41 = [v2 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    aBlock = v42;
    v76 = v44;
    v45._countAndFlagsBits = 0xD000000000000027;
    v45._object = 0x80000001000DA3D0;
    String.append(_:)(v45);
    v46 = [v2 description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50._countAndFlagsBits = v47;
    v50._object = v49;
    String.append(_:)(v50);

    v39 = String._bridgeToObjectiveC()();

    [v40 logInfo:v39];
    goto LABEL_5;
  }

  v66 = v20;
  v67 = v10;
  v68 = v5;
  v69 = v4;

  v21 = objc_opt_self();
  aBlock = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v22 = [v2 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0xD000000000000033;
  v27._object = 0x80000001000DA400;
  String.append(_:)(v27);
  v28 = [v2 description];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33 = String._bridgeToObjectiveC()();

  v70 = v21;
  [v21 logInfo:v33];

  sub_10005DAC4(v14);
  if ((*(v74 + 48))(v14, 1, v15) == 1)
  {
    sub_10002D02C(v14, &qword_100114D70, &unk_1000D20E0);
    aBlock = 0;
    v76 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    v34 = [v2 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    aBlock = v35;
    v76 = v37;
    v38._countAndFlagsBits = 0xD000000000000011;
    v38._object = 0x80000001000DA440;
    String.append(_:)(v38);
    v39 = String._bridgeToObjectiveC()();

    [v70 logInfo:v39];
LABEL_5:

    return;
  }

  v51 = v66;
  sub_10004DF2C(v14, v66);
  aBlock = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v52 = [v2 description];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  aBlock = v53;
  v76 = v55;
  v56._object = 0x80000001000DA460;
  v56._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v56);
  v57 = String._bridgeToObjectiveC()();

  [v70 logInfo:v57];

  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  v58 = static OS_dispatch_queue.main.getter();
  sub_10005EC7C(v51, v18);
  v59 = (*(v74 + 80) + 24) & ~*(v74 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = v2;
  sub_10004DF2C(v18, v60 + v59);
  v79 = sub_10005EE50;
  v80 = v60;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_10004B270;
  v78 = &unk_1001015A8;
  v61 = _Block_copy(&aBlock);
  v62 = v2;

  v63 = v67;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10005EF98(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000032D4(&unk_100115D90, qword_1000D3C00);
  sub_100057240();
  v64 = v72;
  v65 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v61);

  (*(v68 + 8))(v64, v65);
  (*(v71 + 8))(v63, v73);
  sub_10005EECC(v51);
}

void sub_10005E7D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - v6;
  v8 = objc_opt_self();
  v9 = [v1 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v33 = v10;
  v34 = v12;
  v13._countAndFlagsBits = 0x4C65746164707520;
  v13._object = 0xED000074756F7961;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  [v8 logInfo:v14];

  v15 = *&v2[OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_compressedCountdownAnimation];
  sub_10005EC7C(a1, v7);
  v16 = type metadata accessor for OpaqueAlarm();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  sub_10002B138(v7, v15 + v17);
  swift_endAccess();
  if (sub_10008A09C())
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v18 = [v2 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23._object = 0x80000001000DA390;
    v23._countAndFlagsBits = 0xD000000000000033;
    String.append(_:)(v23);
    v24 = String._bridgeToObjectiveC()();

    [v8 logInfo:v24];

    sub_1000BF040();
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v25 = [v2 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30._countAndFlagsBits = 0xD000000000000034;
    v30._object = 0x80000001000DA350;
    String.append(_:)(v30);
    v31 = String._bridgeToObjectiveC()();

    [v8 logInfo:v31];

    sub_1000BE9EC();
  }
}

void sub_10005EB2C()
{
  sub_10004A5CC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10005EBF4()
{
  v1 = (*v0 + OBJC_IVAR____TtC10ClockAngel25TimerCompressedController_observerId);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_10005EC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpaqueAlarm();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005ECE0()
{
  v1 = *(type metadata accessor for OpaqueAlarm() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for AlarmPresentationState();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v9 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10005EE50()
{
  v1 = *(type metadata accessor for OpaqueAlarm() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_10005E7D8(v2);
}

uint64_t sub_10005EEB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005EECC(uint64_t a1)
{
  v2 = type metadata accessor for OpaqueAlarm();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005EF28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005EF98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005EFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_10005F050(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_pendingWorkItem] = 0;
  v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode] = 0;
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_xmarkSize] = a5;
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_arrowSize] = a6;
  v13 = objc_opt_self();
  v14 = [v13 configurationWithPointSize:5 weight:a5];
  v15 = String._bridgeToObjectiveC()();
  v16 = objc_opt_self();
  v17 = [v16 systemImageNamed:v15 withConfiguration:v14];

  v18 = [objc_allocWithZone(UIImageView) initWithImage:v17];
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView] = v18;
  v19 = [v13 configurationWithPointSize:5 weight:a6];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v16 systemImageNamed:v20 withConfiguration:v19];

  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapView] = v22;
  v23 = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer] = v23;
  v24 = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer] = v24;
  v25 = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewOffsetContainer] = v25;
  v39.receiver = v6;
  v39.super_class = type metadata accessor for SpinnyResetView();
  v26 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  [v26 setUserInteractionEnabled:0];
  sub_10005F4FC();
  v27 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v28 = String._bridgeToObjectiveC()();
  [v27 setName:v28];

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v27 setValue:isa forKey:kCAFilterInputRadius];

  v30 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v27 setValue:v30 forKey:kCAFilterInputNormalizeEdges];

  v31 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v27 setValue:v31 forKey:kCAFilterInputHardEdges];

  v32 = String._bridgeToObjectiveC()();
  [v27 setValue:v32 forKey:kCAFilterInputQuality];

  v33 = String._bridgeToObjectiveC()();
  [v27 setValue:v33 forKey:kCAFilterInputIntermediateBitDepth];

  v34 = [v26 layer];
  sub_1000032D4(&qword_100114138, &unk_1000D1420);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000D08B0;
  *(v35 + 56) = sub_10002BB3C(0, &unk_100119A30, CAFilter_ptr);
  *(v35 + 32) = v27;
  v36 = v27;
  v37 = Array._bridgeToObjectiveC()().super.isa;

  [v34 setFilters:v37];

  return v26;
}

id sub_10005F4FC()
{
  v1 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapView;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapView] setContentMode:4];
  v2 = *&v0[v1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  [v4 setTintColor:v5];

  v6 = *&v0[v1];
  v7 = *&CGAffineTransformIdentity.c;
  *&v16.a = *&CGAffineTransformIdentity.a;
  *&v16.c = v7;
  *&v16.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformRotate(&v15, &v16, -1.57079633);
  v16 = v15;
  CGAffineTransformScale(&v15, &v16, -1.0, 1.0);
  v16 = v15;
  [v6 setTransform:&v16];
  v8 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer] addSubview:*&v0[v1]];
  v9 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer] addSubview:*&v0[v8]];
  v10 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewOffsetContainer;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewOffsetContainer] addSubview:*&v0[v9]];
  [v0 addSubview:*&v0[v10]];
  v11 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView] setAlpha:0.0];
  [*&v0[v11] setContentMode:4];
  v12 = *&v0[v11];
  v13 = [v3 whiteColor];
  [v12 setTintColor:v13];

  return [v0 addSubview:*&v0[v11]];
}

void sub_10005F6F4()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for SpinnyResetView();
  objc_msgSendSuper2(&v27, "layoutSubviews");
  v1 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapView;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapView] sizeToFit];
  v2 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer;
  v3 = *&v0[v1];
  v4 = *&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer];
  [v3 bounds];
  [v4 setBounds:?];

  v5 = *&v0[v1];
  v6 = *&v0[v2];
  [v5 bounds];
  v7 = CGRectGetWidth(v28) * 0.5;
  [*&v0[v1] bounds];
  Height = CGRectGetHeight(v29);
  Frame.timestamp.getter(v7, Height * 0.5);
  [v6 setCenter:?];

  v9 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer;
  v10 = *&v0[v1];
  v11 = *&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer];
  [v10 bounds];
  [v11 setBounds:?];

  v12 = *&v0[v1];
  v13 = *&v0[v9];
  [v12 bounds];
  v14 = CGRectGetWidth(v30) * 0.5;
  [*&v0[v1] bounds];
  v15 = CGRectGetHeight(v31);
  Frame.timestamp.getter(v14, v15 * 0.5);
  [v13 setCenter:?];

  v16 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewOffsetContainer;
  v17 = *&v0[v1];
  v18 = *&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewOffsetContainer];
  [v17 bounds];
  [v18 setBounds:?];

  v19 = *&v0[v16];
  [v0 bounds];
  v20 = CGRectGetWidth(v32) * 0.5;
  [v0 bounds];
  v21 = CGRectGetHeight(v33) * 0.5;
  [*&v0[v1] bounds];
  v22 = CGRectGetHeight(v34);
  Frame.timestamp.getter(v20, v21 + v22 * 0.015);
  [v19 setCenter:?];

  v23 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView;
  [*&v0[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView] sizeToFit];
  v24 = *&v0[v23];
  [v0 bounds];
  v25 = CGRectGetWidth(v35) * 0.5;
  [v0 bounds];
  v26 = CGRectGetHeight(v36);
  Frame.timestamp.getter(v25, v26 * 0.5);
  [v24 setCenter:?];
}

uint64_t sub_10005F9D8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v20 = &v26 - v19;
  v21 = v2[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode];
  if (v21 != (a1 & 1))
  {
    sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
    v27 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v28 = *(v13 + 8);
    v28(v17, v12);
    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    *(v22 + 24) = v21;
    aBlock[4] = sub_100060C7C;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004B270;
    aBlock[3] = &unk_100101688;
    v23 = _Block_copy(aBlock);
    v24 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100060CA0();
    sub_1000032D4(&unk_100115D90, qword_1000D3C00);
    sub_100057240();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v27;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v23);

    (*(v31 + 8))(v7, v4);
    (*(v29 + 8))(v11, v30);
    return (v28)(v20, v12);
  }

  return result;
}

uint64_t sub_10005FD74(_BYTE *a1, char a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12);
  v15 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode;
  if (a1[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode] == (a2 & 1))
  {
    v56 = v5;
    v57 = v4;
    v16 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_pendingWorkItem;
    v17 = *&a1[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_pendingWorkItem];
    v55 = v11;
    if (v17)
    {

      dispatch thunk of DispatchWorkItem.cancel()();

      v18 = *&a1[v16];
    }

    *&a1[v16] = 0;

    v19 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView;
    if (a1[v15])
    {
      v20 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_cancelView;
    }

    else
    {
      v20 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer;
    }

    v21 = *&a1[v20];
    if (a1[v15])
    {
      v19 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewTransitionContainer;
    }

    v54 = v16;
    v22 = *&a1[v19];
    v23 = v21;
    v53 = v23;
    v24 = v22;
    CGAffineTransformMakeScale(&v63, 0.75, 0.75);
    tx = v63.tx;
    ty = v63.ty;
    v52 = *&v63.a;
    v51 = *&v63.c;
    CGAffineTransformMakeScale(&v63, 0.65, 0.65);
    v60 = v51;
    aBlock = v52;
    v61 = *&tx;
    v62 = ty;
    [v23 setTransform:&aBlock];
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    *(v28 + 24) = v24;
    v29 = *&v63.c;
    *(v28 + 32) = *&v63.a;
    *(v28 + 48) = v29;
    *(v28 + 64) = *&v63.tx;
    v61 = sub_100060D38;
    v62 = *&v28;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v60 = sub_10004B270;
    *(&v60 + 1) = &unk_1001016D8;
    v30 = _Block_copy(&aBlock);
    *&v52 = a1;
    v31 = v24;

    v61 = Frame.timestamp.getter;
    v62 = 0.0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v60 = sub_1000C1688;
    *(&v60 + 1) = &unk_100101700;
    v32 = _Block_copy(&aBlock);
    [v27 _animateUsingSpringWithDampingRatio:0 response:v30 tracking:v32 dampingRatioSmoothing:1.0 responseSmoothing:0.2 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    _Block_release(v32);
    _Block_release(v30);
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    v61 = sub_100060D7C;
    v62 = *&v33;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v60 = sub_10004B270;
    *(&v60 + 1) = &unk_100101750;
    v34 = _Block_copy(&aBlock);
    *&v51 = v31;

    v61 = Frame.timestamp.getter;
    v62 = 0.0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v60 = sub_1000C1688;
    *(&v60 + 1) = &unk_100101778;
    v35 = _Block_copy(&aBlock);
    [v27 _animateUsingSpringWithDampingRatio:0 response:v34 tracking:v35 dampingRatioSmoothing:1.0 responseSmoothing:0.14 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    _Block_release(v35);
    _Block_release(v34);
    v36 = swift_allocObject();
    v37 = v52;
    v38 = v53;
    *(v36 + 16) = v52;
    *(v36 + 24) = v38;
    v61 = sub_100060DD0;
    v62 = *&v36;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v60 = sub_10004B270;
    *(&v60 + 1) = &unk_1001017C8;
    _Block_copy(&aBlock);
    v58 = &_swiftEmptyArrayStorage;
    sub_100060CA0();
    v39 = v37;
    v40 = v38;
    sub_1000032D4(&unk_100115D90, qword_1000D3C00);
    sub_100057240();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = type metadata accessor for DispatchWorkItem();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v44 = DispatchWorkItem.init(flags:block:)();

    v45 = *&a1[v54];
    *&a1[v54] = v44;

    sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
    v46 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v47 = v55;
    + infix(_:_:)();
    v48 = *(v56 + 8);
    v49 = v9;
    v50 = v57;
    v48(v49, v57);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    return (v48)(v47, v50);
  }

  return result;
}

id sub_1000603F8(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = [a1 layer];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setValue:isa forKeyPath:v9];

  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v13 = v5;
  v14 = v6;
  return [a2 setTransform:v12];
}

void sub_1000604C8(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v21 = sub_100060DD8;
  v22 = v5;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10004B270;
  v20 = &unk_100101818;
  v6 = _Block_copy(&v17);
  v7 = a1;

  v21 = Frame.timestamp.getter;
  v22 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000C1688;
  v20 = &unk_100101840;
  v8 = _Block_copy(&v17);
  [v4 _animateUsingSpringWithDampingRatio:0 response:v6 tracking:v8 dampingRatioSmoothing:1.0 responseSmoothing:0.36 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  _Block_release(v8);
  _Block_release(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v21 = sub_100060DE0;
  v22 = v9;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10004B270;
  v20 = &unk_100101890;
  v10 = _Block_copy(&v17);
  v11 = a2;

  v21 = Frame.timestamp.getter;
  v22 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000C1688;
  v20 = &unk_1001018B8;
  v12 = _Block_copy(&v17);
  [v4 _animateUsingSpringWithDampingRatio:0 response:v10 tracking:v12 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  _Block_release(v12);
  _Block_release(v10);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v21 = sub_100060DF4;
  v22 = v13;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10004B270;
  v20 = &unk_100101908;
  v14 = _Block_copy(&v17);
  v15 = v11;

  v21 = Frame.timestamp.getter;
  v22 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000C1688;
  v20 = &unk_100101930;
  v16 = _Block_copy(&v17);
  [v4 _animateUsingSpringWithDampingRatio:0 response:v14 tracking:v16 dampingRatioSmoothing:0.58 responseSmoothing:0.4 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  _Block_release(v16);
  _Block_release(v14);
}

void sub_100060880(void *a1)
{
  v1 = [a1 layer];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKeyPath:v3];
}

id sub_10006091C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer;
  v3 = *(a1 + OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_lapViewRotationContainer);
  [v3 transform];
  CGAffineTransformRotate(&v8, &v9, 2.0943951);
  v9 = v8;
  [v3 setTransform:&v9];

  v4 = *(a1 + v2);
  [v4 transform];
  CGAffineTransformRotate(&v8, &v9, 2.0943951);
  v9 = v8;
  [v4 setTransform:&v9];

  v5 = *(a1 + v2);
  v6 = *&CGAffineTransformIdentity.c;
  *&v9.a = *&CGAffineTransformIdentity.a;
  *&v9.c = v6;
  *&v9.tx = *&CGAffineTransformIdentity.tx;
  return [v5 setTransform:&v9];
}

id sub_100060AF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpinnyResetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100060BF0()
{
  result = qword_100116720;
  if (!qword_100116720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116720);
  }

  return result;
}

uint64_t sub_100060C44()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100060C88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100060CA0()
{
  result = qword_100116260;
  if (!qword_100116260)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116260);
  }

  return result;
}

uint64_t sub_100060CF8()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100060D44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060D90()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100060DF4()
{
  v1 = *(v0 + 16);
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [v1 setTransform:v4];
}

uint64_t sub_100060EF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100060F5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100060FD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100061044()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

double sub_1000610F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100061164()
{
  v1 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__totalTime;
  v2 = sub_1000032D4(&qword_100116B40, &qword_1000D4560);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__totalTimeWithoutMs, v2);
  v3(v0 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__currentTime, v2);
  v3(v0 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__currentTimeWithoutMs, v2);
  v4 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__lap;
  v5 = sub_1000032D4(&qword_100116B48, &qword_1000D4568);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__state;
  v7 = sub_1000032D4(&qword_100116B50, &qword_1000D4570);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__startingDate;
  v9 = sub_1000032D4(&qword_100116B58, &qword_1000D4578);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__offset;
  v11 = sub_1000032D4(&qword_100116B60, &qword_1000D4580);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__totalTimeInterval, v11);
  v12(v0 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel__currentTimeInterval, v11);
  v13 = OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel_autoFormatter;
  v14 = type metadata accessor for StopwatchAutoFormatter();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t sub_1000613E4()
{
  sub_100061164();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ObservableStopwatchModel()
{
  result = qword_1001167A0;
  if (!qword_1001167A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100061490()
{
  sub_100061718(319, &qword_1001167B0);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_100061718(319, &qword_1001167B8);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_1000616C4(319, &qword_1001167C0, type metadata accessor for MTStopwatchState);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_1000616C4(319, &qword_1001167C8, &type metadata accessor for Date);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_100061718(319, &unk_1001167D0);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            v10 = type metadata accessor for StopwatchAutoFormatter();
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1000616C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100061718(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100061764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000617AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000617FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100061844(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10006189C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000618C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_100061908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10006196C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000619CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableStopwatchModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100061A0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_1000627F4(v1, a1 + 24);
}

uint64_t sub_100061A48()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 64);
  if (*(v0 + 72) != 1)
  {
    v7 = *(v0 + 64);

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000295C4(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_100061B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[0] = a2;
  v3 = sub_1000032D4(&qword_100116AF0, &qword_1000D4320);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v25 - v5;
  v7 = sub_1000032D4(&qword_100116AF8, &qword_1000D4328);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v25 - v13;
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  *v6 = static HorizontalAlignment.trailing.getter();
  *(v6 + 1) = 0xC000000000000000;
  v6[16] = 0;
  v17 = sub_1000032D4(&qword_100116B00, &qword_1000D4330);
  sub_100061E20(a1, &v6[*(v17 + 44)]);
  v18 = static Animation.default.getter();
  v19 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = 0;
  if (v25[1] >= 2)
  {
    v20 = sub_100061A48() ^ 1;
  }

  sub_10002C7C4(v6, v14, &qword_100116AF0, &qword_1000D4320);
  v21 = &v14[*(v7 + 36)];
  *v21 = v18;
  v21[8] = v20 & 1;
  sub_10002C7C4(v14, v16, &qword_100116AF8, &qword_1000D4328);
  sub_10002CFC4(v16, v11, &qword_100116AF8, &qword_1000D4328);
  v22 = v25[0];
  *v25[0] = 0;
  *(v22 + 8) = 1;
  v23 = sub_1000032D4(&qword_100116B08, &qword_1000D4338);
  sub_10002CFC4(v11, v22 + *(v23 + 48), &qword_100116AF8, &qword_1000D4328);
  sub_10002D02C(v16, &qword_100116AF8, &qword_1000D4328);
  return sub_10002D02C(v11, &qword_100116AF8, &qword_1000D4328);
}

uint64_t sub_100061E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for RunningCountupView(0);
  v4 = *(*(v3 - 1) + 64);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000032D4(&qword_100116B10, &qword_1000D4340);
  v7 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v9 = &v45 - v8;
  v49 = sub_1000032D4(&qword_100116B18, &qword_1000D4348);
  v10 = *(*(v49 - 8) + 64);
  v11 = __chkstk_darwin(v49);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v45 - v14;
  __chkstk_darwin(v13);
  v47 = &v45 - v16;
  v17 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v48 = a1;
  if (v61 < 2 || (sub_100061A48() & 1) != 0)
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
  }

  else
  {
    sub_10002B00C(a1 + 24, v53);
    type metadata accessor for ObservableStopwatchModel();
    sub_10006548C();

    *&v52 = ObservedObject.init(wrappedValue:)();
    *(&v52 + 1) = v18;
    v19 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    BYTE8(v54) = v19;
    *&v55 = v20;
    *(&v55 + 1) = v21;
    *&v56 = v22;
    *(&v56 + 1) = v23;
    LOBYTE(v57) = 0;
    v24 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    BYTE8(v57) = v24;
    *&v58 = v25;
    *(&v58 + 1) = v26;
    *&v59 = v27;
    *(&v59 + 1) = v28;
    v60 = 0;
    v70 = 0;
    v63 = v53[1];
    v64 = v54;
    v65 = v55;
    v66 = v56;
    v61 = v52;
    v62 = v53[0];
    v67 = v57;
    v68 = v58;
    v69 = v59;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (qword_100113658 != -1)
  {
    swift_once();
  }

  v29 = qword_10011F690;
  v30 = [objc_opt_self() mtOrange];
  v31 = Color.init(uiColor:)();
  v6[v3[5]] = 0;
  *&v6[v3[6]] = 0x4044000000000000;
  *&v6[v3[7]] = v29;
  *&v6[v3[8]] = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v52 < 2 || (v32 = 1.0, (sub_100061A48() & 1) != 0))
  {
    v32 = 1.2;
  }

  static UnitPoint.trailing.getter();
  v34 = v33;
  v36 = v35;
  sub_100065428(v6, v9);
  v37 = &v9[*(v46 + 36)];
  *v37 = v32;
  v37[1] = v32;
  *(v37 + 2) = v34;
  *(v37 + 3) = v36;
  type metadata accessor for ObservableStopwatchModel();
  sub_10006548C();
  v38 = static ObservableObject.environmentStore.getter();
  sub_10002C7C4(v9, v15, &qword_100116B10, &qword_1000D4340);
  v39 = &v15[*(v49 + 36)];
  *v39 = v38;
  v39[1] = v17;
  v40 = v47;
  sub_10002C7C4(v15, v47, &qword_100116B18, &qword_1000D4348);
  sub_10002CFC4(&v61, &v52, &qword_100116B28, &qword_1000D4398);
  v41 = v50;
  sub_10002CFC4(v40, v50, &qword_100116B18, &qword_1000D4348);
  v42 = v51;
  sub_10002CFC4(&v52, v51, &qword_100116B28, &qword_1000D4398);
  v43 = sub_1000032D4(&qword_100116B30, &qword_1000D43A0);
  sub_10002CFC4(v41, v42 + *(v43 + 48), &qword_100116B18, &qword_1000D4348);

  sub_10002D02C(v40, &qword_100116B18, &qword_1000D4348);
  sub_10002D02C(&v61, &qword_100116B28, &qword_1000D4398);
  sub_10002D02C(v41, &qword_100116B18, &qword_1000D4348);
  return sub_10002D02C(&v52, &qword_100116B28, &qword_1000D4398);
}

double sub_100062398@<D0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_1000032D4(&qword_100116AE0, &qword_1000D4310);
  sub_100061B90(v1, a1 + *(v3 + 44));
  v4 = static Edge.Set.horizontal.getter();
  v5 = a1 + *(sub_1000032D4(&qword_100116AE8, &qword_1000D4318) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_10006242C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 542130508;
  v5._object = 0xE400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  v6 = v1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  LocalizedStringKey.init(stringInterpolation:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v13 = Text.monospacedDigit()();
  v15 = v14;
  v17 = v16;
  sub_100025B0C(v8, v10, v12 & 1);

  v18 = v2[5];
  v19 = v2[6];
  sub_100025B1C(v2 + 2, v18);
  (*(v19 + 24))(v18, v19);
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  sub_100025B0C(v13, v15, v17 & 1);

  v25 = v2[5];
  v26 = v2[6];
  sub_100025B1C(v2 + 2, v25);
  (*(v26 + 40))(v25, v26);
  Color.opacity(_:)();

  v27 = Text.foregroundColor(_:)();
  v29 = v28;
  LOBYTE(v26) = v30;
  v32 = v31;

  sub_100025B0C(v20, v22, v24 & 1);

  *a1 = v27;
  *(a1 + 8) = v29;
  *(a1 + 16) = v26 & 1;
  *(a1 + 24) = v32;
  return result;
}

uint64_t sub_1000626F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  sub_100025B1C(a1 + 2, v4);
  v6 = (*(v5 + 48))(v4, v5);
  v9[0] = static VerticalAlignment.center.getter();
  *&v9[1] = v6;
  v10 = 0;
  sub_1000627F4(a1, &v11);
  sub_10002CFC4(v9, v8, &qword_100116B38, &qword_1000D43A8);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_10002CFC4(v8, a2 + 16, &qword_100116B38, &qword_1000D43A8);
  sub_10002D02C(v9, &qword_100116B38, &qword_1000D43A8);
  return sub_10002D02C(v8, &qword_100116B38, &qword_1000D43A8);
}

uint64_t sub_1000627F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  sub_10002B00C(a1 + 16, &v13);
  type metadata accessor for ObservableStopwatchModel();
  sub_10006548C();
  swift_retain_n();
  v12[0] = ObservedObject.init(wrappedValue:)();
  v12[1] = v5;
  sub_10002B00C(a1 + 16, &v11);
  v10[0] = ObservedObject.init(wrappedValue:)();
  v10[1] = v6;
  sub_10006554C(v12, v9);
  sub_100065584(v10, v8);
  sub_10006554C(v9, a2);
  sub_100065584(v8, a2 + 56);
  sub_1000655BC(v10);
  sub_1000655EC(v12);
  sub_1000655BC(v8);
  return sub_1000655EC(v9);
}

uint64_t sub_1000628E8@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_1000626F8(v1, a1 + 24);
}

uint64_t sub_100062940@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = type metadata accessor for Font._StylisticAlternative();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = StopwatchAutoFormatter.formatInterval(_:padSingleLeadingZero:)(v37, 1);
  countAndFlagsBits = 12336;
  if (v8.value._object)
  {
    countAndFlagsBits = v8.value._countAndFlagsBits;
  }

  object = 0xE200000000000000;
  if (v8.value._object)
  {
    object = v8.value._object;
  }

  v37 = *&countAndFlagsBits;
  v38 = object;
  sub_100025FB4();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  v34[1] = v16;
  v18 = v2[5];
  v17 = v2[6];
  sub_100025B1C(v2 + 2, v18);
  (*(v17 + 24))(v18, v17);
  Font.monospacedDigit()();

  v19 = v35;
  (*(v3 + 104))(v6, enum case for Font._StylisticAlternative.three(_:), v35);
  Font._stylisticAlternative(_:)();

  (*(v3 + 8))(v6, v19);
  v20 = Text.font(_:)();
  v22 = v21;
  LOBYTE(v19) = v23;

  sub_100025B0C(v11, v13, v15 & 1);

  v24 = v2[5];
  v25 = v2[6];
  sub_100025B1C(v2 + 2, v24);
  (*(v25 + 40))(v24, v25);
  v26 = Text.foregroundColor(_:)();
  v28 = v27;
  LOBYTE(v25) = v29;
  v31 = v30;

  sub_100025B0C(v20, v22, v19 & 1);

  v33 = v36;
  *v36 = v26;
  v33[1] = v28;
  *(v33 + 16) = v25 & 1;
  v33[3] = v31;
  return result;
}

uint64_t sub_100062C20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = type metadata accessor for Font._StylisticAlternative();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v33);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100025FB4();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v31[1] = v14;
  v16 = v2[5];
  v15 = v2[6];
  sub_100025B1C(v2 + 2, v16);
  (*(v15 + 16))(v16, v15);
  Font.monospacedDigit()();

  v17 = v33;
  (*(v4 + 104))(v7, enum case for Font._StylisticAlternative.three(_:), v33);
  Font._stylisticAlternative(_:)();

  (*(v4 + 8))(v7, v17);
  v18 = Text.font(_:)();
  v32 = v19;
  v33 = v18;
  LOBYTE(v15) = v20;
  v22 = v21;

  sub_100025B0C(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  LOBYTE(v7) = v15 & 1;
  LOBYTE(v34) = v15 & 1;
  v35 = 0;
  v25 = v2[5];
  v26 = v2[6];
  sub_100025B1C(v2 + 2, v25);
  v27 = (*(v26 + 32))(v25, v26);
  v28 = swift_getKeyPath();
  result = swift_getKeyPath();
  v30 = v32;
  *a1 = v33;
  *(a1 + 8) = v30;
  *(a1 + 16) = v7;
  *(a1 + 24) = v22;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v24;
  *(a1 + 64) = 0x3FE3333333333333;
  *(a1 + 72) = v28;
  *(a1 + 80) = v27;
  *(a1 + 88) = result;
  *(a1 + 96) = 0x3FE3333333333333;
  return result;
}

uint64_t sub_100062EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_10002B00C(a1 + 16, &v8);
  type metadata accessor for ObservableStopwatchModel();
  sub_10006548C();

  v7[0] = ObservedObject.init(wrappedValue:)();
  v7[1] = v4;
  sub_1000654E4(v7, v6);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1000654E4(v6, a2 + 16);
  sub_10006551C(v7);
  return sub_10006551C(v6);
}

uint64_t sub_100062F98@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_100062EF4(v1, a1 + 24);
}

uint64_t sub_100063048(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v12 - v7;
  a3(v6);
  v9 = type metadata accessor for Font.Design();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = static Font.system(size:weight:design:)();
  sub_10002D02C(v8, &qword_100113E08, &qword_1000D10F0);
  return v10;
}

uint64_t sub_1000631DC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_100063250(double a1, double a2)
{
  v4 = sub_1000032D4(&qword_100116AA8, &qword_1000D41A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_1000032D4(&qword_100116AB0, &qword_1000D41A8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*&v16 >= 3600.0)
  {
    sub_1000637DC(&v16);
    v14 = v17;
    v15 = v18;
    *v7 = v16;
    v7[16] = v14;
    *(v7 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100116AB8, &qword_100116AB0, &qword_1000D41A8);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v11 = static VerticalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v12 = sub_1000032D4(&qword_100116AC0, &qword_1000D41F8);
    sub_1000634F8(&v11[*(v12 + 44)], a1, a2);
    sub_100064BDC(v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100116AB8, &qword_100116AB0, &qword_1000D41A8);
    _ConditionalContent<>.init(storage:)();
    return sub_100064C4C(v11);
  }
}

uint64_t sub_1000634F8@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v28 = a1;
  v27 = sub_1000032D4(&qword_100116AC8, &qword_1000D4200);
  v5 = *(v27 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v27);
  v33 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_1000637DC(&v38);
  v30 = v39;
  v31 = v38;
  v29 = v40;
  v32 = v41;
  sub_100063B20(&v38);
  v11 = v38;
  v12 = v39;
  v13 = v40;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v14 = objc_opt_self();
  v15 = [v14 systemFontOfSize:a2 weight:UIFontWeightMedium];
  [v15 capHeight];

  v16 = [v14 systemFontOfSize:a3 weight:UIFontWeightBold];
  [v16 capHeight];

  v26 = v10;
  View.baselineOffset(_:)();
  sub_100025B0C(v11, v12, v13);

  v17 = v5[2];
  v18 = v33;
  v19 = v27;
  v17(v33, v10, v27);
  v21 = v30;
  v20 = v31;
  v22 = v28;
  *v28 = v31;
  v22[1] = v21;
  LOBYTE(v10) = v29;
  *(v22 + 16) = v29;
  v22[3] = v32;
  v23 = sub_1000032D4(&qword_100116AD0, &unk_1000D4208);
  v17(v22 + *(v23 + 48), v18, v19);
  sub_100025AFC(v20, v21, v10);
  v24 = v5[1];

  v24(v26, v19);
  v24(v18, v19);
  sub_100025B0C(v20, v21, v10);
}

uint64_t sub_1000637DC@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Font._StylisticAlternative();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = StopwatchAutoFormatter.formatInterval(_:padSingleLeadingZero:)(v34, 0);
  countAndFlagsBits = 12336;
  if (v10.value._object)
  {
    countAndFlagsBits = v10.value._countAndFlagsBits;
  }

  object = 0xE200000000000000;
  if (v10.value._object)
  {
    object = v10.value._object;
  }

  v34 = *&countAndFlagsBits;
  v35 = object;
  sub_100025FB4();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.Weight.medium.getter();
  v18 = type metadata accessor for Font.Design();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  static Font.system(size:weight:design:)();
  sub_10002D02C(v9, &qword_100113E08, &qword_1000D10F0);
  Font.monospacedDigit()();

  (*(v2 + 104))(v5, enum case for Font._StylisticAlternative.three(_:), v1);
  Font._stylisticAlternative(_:)();

  (*(v2 + 8))(v5, v1);
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_100025B0C(v13, v15, v17 & 1);

  static Color.orange.getter();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  LOBYTE(v15) = v27;
  v29 = v28;

  sub_100025B0C(v19, v21, v23 & 1);

  v31 = v33;
  *v33 = v24;
  v31[1] = v26;
  *(v31 + 16) = v15 & 1;
  v31[3] = v29;
  return result;
}

uint64_t sub_100063B20@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Font._StylisticAlternative();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000652AC(2, v34, v35);

  v10 = static String._fromSubstring(_:)();
  v12 = v11;

  v34 = v10;
  v35 = v12;
  sub_100025FB4();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.Weight.bold.getter();
  v18 = type metadata accessor for Font.Design();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  static Font.system(size:weight:design:)();
  sub_10002D02C(v9, &qword_100113E08, &qword_1000D10F0);
  Font.monospacedDigit()();

  (*(v2 + 104))(v5, enum case for Font._StylisticAlternative.three(_:), v1);
  Font._stylisticAlternative(_:)();

  (*(v2 + 8))(v5, v1);
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_100025B0C(v13, v15, v17 & 1);

  static Color.orange.getter();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  LOBYTE(v15) = v27;
  v29 = v28;

  sub_100025B0C(v19, v21, v23 & 1);

  v31 = v33;
  *v33 = v24;
  v31[1] = v26;
  *(v31 + 16) = v15 & 1;
  v31[3] = v29;
  return result;
}

uint64_t sub_100063E84()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_100063250(v0[2], v0[3]);
}

uint64_t sub_100063E90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37[1] = a1;
  v43 = type metadata accessor for Font._StylisticAlternative();
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin(v43);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v37 - v10;
  v44 = Image.init(systemName:)();
  static Font.Weight.regular.getter();
  v12 = type metadata accessor for Font.Design();
  v37[0] = *(*(v12 - 8) + 56);
  (v37[0])(v11, 1, 1, v12);
  v42 = static Font.system(size:weight:design:)();
  sub_10002D02C(v11, &qword_100113E08, &qword_1000D10F0);
  KeyPath = swift_getKeyPath();
  v39 = static Color.orange.getter();
  v38 = swift_getKeyPath();
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  LocalizedStringKey.init(stringInterpolation:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  static Font.Weight.regular.getter();
  (v37[0])(v11, 1, 1, v12);
  static Font.system(size:weight:design:)();
  sub_10002D02C(v11, &qword_100113E08, &qword_1000D10F0);
  Font.monospacedDigit()();

  v20 = v41;
  v21 = v43;
  (*(v41 + 104))(v5, enum case for Font._StylisticAlternative.three(_:), v43);
  Font._stylisticAlternative(_:)();

  (*(v20 + 8))(v5, v21);
  v22 = Text.font(_:)();
  v24 = v23;
  LOBYTE(v20) = v25;

  sub_100025B0C(v15, v17, v19 & 1);

  static Color.gray.getter();
  v26 = Text.foregroundColor(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_100025B0C(v22, v24, v20 & 1);

  LOBYTE(v45) = v30 & 1;
  v34 = v39;
  v33 = KeyPath;
  *a2 = v44;
  *(a2 + 8) = v33;
  v35 = v38;
  *(a2 + 16) = v42;
  *(a2 + 24) = v35;
  *(a2 + 32) = v34;
  *(a2 + 40) = v26;
  *(a2 + 48) = v28;
  *(a2 + 56) = v30 & 1;
  *(a2 + 64) = v32;

  sub_100025AFC(v26, v28, v30 & 1);

  sub_100025B0C(v26, v28, v30 & 1);
}

double sub_10006439C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = static VerticalAlignment.center.getter();
  v17 = 1;
  sub_100063E90(v4, &v11);
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v18 = v11;
  v23[1] = v12;
  v23[2] = v13;
  v23[3] = v14;
  v24 = v15;
  v23[0] = v11;
  sub_10002CFC4(&v18, v10, &qword_100116AD8, &qword_1000D4260);
  sub_10002D02C(v23, &qword_100116AD8, &qword_1000D4260);
  *&v16[7] = v18;
  *&v16[71] = v22;
  *&v16[55] = v21;
  *&v16[39] = v20;
  *&v16[23] = v19;
  v6 = *v16;
  *(a1 + 33) = *&v16[16];
  v7 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v7;
  result = *&v16[63];
  *(a1 + 80) = *&v16[63];
  v9 = v17;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_1000644E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = sub_1000032D4(&qword_100116C20, &qword_1000D4918);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(sub_1000032D4(&qword_100116C28, &qword_1000D4920) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 1;
  *(v6 + 16) = 0;
  v7 = swift_getKeyPath();
  result = sub_1000032D4(&qword_100116C30, &qword_1000D4928);
  v9 = (a2 + *(result + 36));
  *v9 = v7;
  v9[1] = 0x3FE3333333333333;
  return result;
}

uint64_t sub_10006461C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10006469C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100064710@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100064790(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100064804(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100064880(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  static Published.subscript.setter();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_100064A2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_100064ABC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100064BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116AB0, &qword_1000D41A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064C4C(uint64_t a1)
{
  v2 = sub_1000032D4(&qword_100116AB0, &qword_1000D41A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100064D18@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100064DA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100064E20@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100064E4C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_100064E78@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100064EA4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100064ED0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v18 - v7;
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  Date.init()();
  v11 = type metadata accessor for ObservableStopwatchModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v21 = 0;
  Published.init(initialValue:)();
  v21 = 0;
  Published.init(initialValue:)();
  v21 = 0;
  Published.init(initialValue:)();
  StopwatchAutoFormatter.init()();
  *(v14 + OBJC_IVAR____TtC10ClockAngel24ObservableStopwatchModel_msThreshold) = 0x40AC200000000000;
  swift_beginAccess();
  v19 = 206967550000;
  v20 = 0xE500000000000000;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v19 = 12336;
  v20 = 0xE200000000000000;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v19 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v19 = 3;
  type metadata accessor for MTStopwatchState(0);
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = v1[2];
  v15(v8, v10, v0);
  swift_beginAccess();
  v15(v5, v8, v0);
  Published.init(initialValue:)();
  v16 = v1[1];
  v16(v8, v0);
  swift_endAccess();
  swift_beginAccess();
  v19 = 206967550000;
  v20 = 0xE500000000000000;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v19 = 12336;
  v20 = 0xE200000000000000;
  Published.init(initialValue:)();
  swift_endAccess();
  v16(v10, v0);
  return v14;
}

uint64_t sub_1000652AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = String.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

uint64_t sub_100065368@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100065394(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_1000653C0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000653EC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100065428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningCountupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006548C()
{
  result = qword_100116B20;
  if (!qword_100116B20)
  {
    type metadata accessor for ObservableStopwatchModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116B20);
  }

  return result;
}

uint64_t sub_100065814(uint64_t a1, int a2)
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

uint64_t sub_10006585C(uint64_t result, int a2, int a3)
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

unint64_t sub_1000658BC()
{
  result = qword_100116B68;
  if (!qword_100116B68)
  {
    sub_10001C820(&qword_100116B70, &qword_1000D4670);
    sub_10002DAD8(&qword_100116AB8, &qword_100116AB0, &qword_1000D41A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116B68);
  }

  return result;
}

unint64_t sub_1000659BC()
{
  result = qword_100116B88;
  if (!qword_100116B88)
  {
    sub_10001C820(&qword_100116AE8, &qword_1000D4318);
    sub_10002DAD8(&qword_100116B90, &qword_100116B98, &qword_1000D4680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116B88);
  }

  return result;
}

unint64_t sub_100065BD4()
{
  result = qword_100116BC8;
  if (!qword_100116BC8)
  {
    sub_10001C820(&qword_100116BD0, &qword_1000D4888);
    sub_100065C8C();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BC8);
  }

  return result;
}

unint64_t sub_100065C8C()
{
  result = qword_100116BD8;
  if (!qword_100116BD8)
  {
    sub_10001C820(&qword_100116BE0, &unk_1000D4890);
    sub_100065D44();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BD8);
  }

  return result;
}

unint64_t sub_100065D44()
{
  result = qword_100116BE8;
  if (!qword_100116BE8)
  {
    sub_10001C820(&qword_100116BF0, &unk_1000D6E40);
    sub_100065DFC();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BE8);
  }

  return result;
}

unint64_t sub_100065DFC()
{
  result = qword_100116BF8;
  if (!qword_100116BF8)
  {
    sub_10001C820(&qword_100116C00, &unk_1000D48A0);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116BF8);
  }

  return result;
}

unint64_t sub_100065EB8()
{
  result = qword_100116C08;
  if (!qword_100116C08)
  {
    sub_10001C820(&qword_100116C10, &qword_1000D48C0);
    sub_100065F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C08);
  }

  return result;
}

unint64_t sub_100065F44()
{
  result = qword_100116C18;
  if (!qword_100116C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C18);
  }

  return result;
}

unint64_t sub_100065FB8()
{
  result = qword_100116C38;
  if (!qword_100116C38)
  {
    sub_10001C820(&qword_100116C30, &qword_1000D4928);
    sub_100066070();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C38);
  }

  return result;
}

unint64_t sub_100066070()
{
  result = qword_100116C40;
  if (!qword_100116C40)
  {
    sub_10001C820(&qword_100116C28, &qword_1000D4920);
    sub_10002DAD8(&qword_100116C48, &qword_100116C20, &qword_1000D4918);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116C40);
  }

  return result;
}

uint64_t sub_100066160(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000032D4(&qword_100116FA8, &unk_1000D4B10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000032D4(&qword_1001165B8, &qword_1000D4B00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10002D02C(a1, &qword_100116FA8, &unk_1000D4B10);
    sub_100068274(a2, &qword_1001165B8, &qword_1000D4B00, &qword_100116F98, &qword_1000D4B08, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10002D02C(v8, &qword_100116FA8, &unk_1000D4B10);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1000698AC(v13, a2, isUniquelyReferenced_nonNull_native, &qword_1001165B8, &qword_1000D4B00, &qword_100116F98, &qword_1000D4B08);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1000663D4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000032D4(&qword_100116F28, &qword_1000D4AB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10002D02C(a1, &qword_100116F28, &qword_1000D4AB0);
    sub_1000680B0(a2, v8);
    v14 = type metadata accessor for CombineIdentifier();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10002D02C(v8, &qword_100116F28, &qword_1000D4AB0);
  }

  else
  {
    sub_10006AAB8(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1000696B8(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for CombineIdentifier();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1000665E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000032D4(&qword_100116FB8, &qword_1000D4B28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000032D4(&qword_100116600, &unk_1000D4E80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10002D02C(a1, &qword_100116FB8, &qword_1000D4B28);
    sub_100068274(a2, &qword_100116600, &unk_1000D4E80, &qword_100116FB0, &qword_1000D4B20, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10002D02C(v8, &qword_100116FB8, &qword_1000D4B28);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1000698AC(v13, a2, isUniquelyReferenced_nonNull_native, &qword_100116600, &unk_1000D4E80, &qword_100116FB0, &qword_1000D4B20);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

id sub_10006685C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100068040();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = *(v1 + 16);
    swift_beginAccess();
    v10 = *(*(v1 + 24) + 16);
    result = [*(v9 + 32) isPaused];
    if ((v10 == 0) != result)
    {
      return [*(v9 + 32) setPaused:v10 == 0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000669CC(double a1, double a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100066A3C(a1, a2);
  }

  return result;
}

uint64_t sub_100066A3C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = (v27 - v9);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100068040();
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    swift_beginAccess();
    v18 = *(v3 + 24);
    v19 = 1 << *(v18 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v18 + 64);
    v22 = (v19 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v21; result = sub_10002D02C(v10, &qword_100116F30, &qword_1000D4AB8))
    {
      v24 = i;
LABEL_10:
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      sub_10002CFC4(*(v18 + 56) + *(v7 + 72) * (v25 | (v24 << 6)), v10, &qword_100116F30, &qword_1000D4AB8);
      *&v27[1] = a1;
      *&v27[2] = a2;
      v26 = *v10;
      dispatch thunk of AnySubscriberBase.receive(_:)();
    }

    while (1)
    {
      v24 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
      }

      v21 = *(v18 + 64 + 8 * v24);
      ++i;
      if (v21)
      {
        i = v24;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100066CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = a1;
  v100 = a3;
  v95 = type metadata accessor for CombineIdentifier();
  v93 = *(v95 - 8);
  v4 = *(v93 + 64);
  __chkstk_darwin(v95);
  v92 = v5;
  v96 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100116F28, &qword_1000D4AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v83 - v11;
  v101 = a2;
  v98 = *(a2 - 8);
  v13 = *(v98 + 64);
  v14 = __chkstk_darwin(v10);
  v84 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v87 = &v83 - v16;
  v17 = __chkstk_darwin(v15);
  v86 = &v83 - v18;
  v19 = __chkstk_darwin(v17);
  v90 = &v83 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v83 - v22;
  __chkstk_darwin(v21);
  v25 = &v83 - v24;
  v26 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v85 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v97 = (&v83 - v32);
  __chkstk_darwin(v31);
  v91 = &v83 - v33;
  v34 = type metadata accessor for DispatchPredicate();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = (&v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100068040();
  *v38 = static OS_dispatch_queue.main.getter();
  (*(v35 + 104))(v38, enum case for DispatchPredicate.onQueue(_:), v34);
  v39 = _dispatchPreconditionTest(_:)();
  result = (*(v35 + 8))(v38, v34);
  if (v39)
  {
    v41 = *(v98 + 16);
    v42 = v101;
    v41(v25, v99, v101);
    v41(v23, v25, v42);
    v43 = swift_dynamicCast();
    v44 = *(v27 + 56);
    v45 = v26;
    v89 = v27 + 56;
    v88 = v44;
    if (v43)
    {
      v44(v12, 0, 1, v26);
      v46 = v85;
      sub_10006AAB8(v12, v85);
      v47 = v97;
      sub_10006AAB8(v46, v97);
      v48 = v98;
    }

    else
    {
      v44(v12, 1, 1, v26);
      sub_10002D02C(v12, &qword_100116F28, &qword_1000D4AB0);
      v49 = v101;
      v50 = *(v100 + 8);
      v51 = v97;
      v52 = v97 + *(v26 + 56);
      dispatch thunk of CustomCombineIdentifierConvertible.combineIdentifier.getter();
      type metadata accessor for AnySubscriberBox();
      v41(v90, v25, v49);
      *v51 = AnySubscriberBox.__allocating_init(_:)();
      v41(v86, v25, v49);
      v85 = sub_1000032D4(&qword_100116F38, &qword_1000D4AC0);
      v53 = swift_dynamicCast();
      v86 = v25;
      if (v53)
      {
        sub_10004E5BC(&v102, &v105);
        sub_10004E5BC(&v105, &v102);
        v54 = swift_allocObject();
        sub_10004E5BC(&v102, v54 + 16);
        v55 = sub_10006AD64;
      }

      else
      {
        v104 = 0;
        v102 = 0u;
        v103 = 0u;
        sub_10002D02C(&v102, &qword_100116F40, &qword_1000D4AC8);
        swift_getDynamicType();
        v56 = _typeName(_:qualified:)();
        v58 = v57;
        v54 = swift_allocObject();
        *(v54 + 16) = v56;
        *(v54 + 24) = v58;
        v51 = v97;
        v25 = v86;
        v55 = sub_10006A6BC;
      }

      v48 = v98;
      v51[1] = v55;
      v51[2] = v54;
      v59 = v90;
      v60 = v101;
      v41(v90, v25, v101);
      v61 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v62 = swift_allocObject();
      v63 = v100;
      *(v62 + 16) = v60;
      *(v62 + 24) = v63;
      v64 = v62 + v61;
      v47 = v97;
      v25 = v86;
      (*(v48 + 32))(v64, v59, v60);
      v47[3] = sub_10006AA54;
      v47[4] = v62;
      v41(v87, v25, v60);
      sub_1000032D4(&qword_100116F48, &qword_1000D4AD0);
      if (swift_dynamicCast())
      {
        sub_10004E5BC(&v102, &v105);
        sub_10004E5BC(&v105, &v102);
        v65 = swift_allocObject();
        sub_10004E5BC(&v102, v65 + 16);
        v66 = sub_10006AD18;
      }

      else
      {
        v104 = 0;
        v102 = 0u;
        v103 = 0u;
        sub_10002D02C(&v102, &qword_100116F50, &qword_1000D4AD8);
        v41(v84, v25, v101);
        if (!swift_dynamicCast())
        {
          v104 = 0;
          v102 = 0u;
          v103 = 0u;
          sub_10002D02C(&v102, &qword_100116F40, &qword_1000D4AC8);
          swift_getDynamicType();
          v67 = _typeName(_:qualified:)();
          v69 = v68;
          v70 = swift_allocObject();
          *(v70 + 16) = v67;
          *(v70 + 24) = v69;
          v47[5] = sub_10006AAA0;
          v47[6] = v70;
          goto LABEL_13;
        }

        sub_10004E5BC(&v102, &v105);
        sub_10004E5BC(&v105, &v102);
        v65 = swift_allocObject();
        sub_10004E5BC(&v102, v65 + 16);
        v66 = sub_10006ACC0;
      }

      v47[5] = v66;
      v47[6] = v65;
    }

LABEL_13:
    v71 = v91;
    sub_10006AAB8(v47, v91);
    (*(v48 + 8))(v25, v101);
    v72 = *(v45 + 56);
    v97 = v72;
    v73 = swift_allocObject();
    swift_weakInit();
    v74 = v93;
    v75 = *(v93 + 16);
    v98 = v45;
    v76 = v95;
    v77 = v96;
    v75(v96, v71 + v72, v95);
    v78 = (*(v74 + 80) + 24) & ~*(v74 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = v73;
    (*(v74 + 32))(v79 + v78, v77, v76);
    v80 = type metadata accessor for DisplayLink.Subscription();
    v81 = swift_allocObject();
    *(v81 + 16) = sub_10006AC24;
    *(v81 + 24) = v79;
    v75(v77, v97 + v71, v76);
    v82 = v94;
    sub_10002CFC4(v71, v94, &qword_100116F30, &qword_1000D4AB8);
    v88(v82, 0, 1, v98);
    swift_beginAccess();
    sub_1000663D4(v82, v77);
    swift_endAccess();
    sub_10006685C();
    v106 = v80;
    v107 = sub_10006AE18(&qword_100116F58, type metadata accessor for DisplayLink.Subscription);
    *&v105 = v81;
    dispatch thunk of Subscriber.receive(subscription:)();
    sub_10002D02C(v71, &qword_100116F30, &qword_1000D4AB8);
    return sub_100017D28(&v105);
  }

  __break(1u);
  return result;
}

uint64_t sub_100067800(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000032D4(&qword_100116F28, &qword_1000D4AB0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100068040();
    *v11 = static OS_dispatch_queue.main.getter();
    (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
    v13 = _dispatchPreconditionTest(_:)();
    result = (*(v8 + 8))(v11, v7);
    if (v13)
    {
      swift_beginAccess();
      sub_1000680B0(a2, v6);
      sub_10002D02C(v6, &qword_100116F28, &qword_1000D4AB0);
      swift_endAccess();
      sub_10006685C();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000679E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100067A4C()
{
  type metadata accessor for PlatformDisplayLink();
  swift_allocObject();
  v0 = sub_100067B5C();
  type metadata accessor for DisplayLink();
  swift_allocObject();
  v1 = sub_10006B16C(v0);

  qword_10011F4F0 = v1;
  return result;
}

uint64_t sub_100067AB8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100067AF0()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  v1(v3);
}

void *sub_100067B5C()
{
  type metadata accessor for PlatformDisplayLink.DisplayLinkTarget();
  v0[2] = 0;
  v0[3] = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v0[5] = v1;
  v2 = [objc_opt_self() displayLinkWithTarget:v1 selector:"frame:"];
  v0[4] = v2;
  [v2 setPaused:1];
  v3 = v0[4];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainRunLoop];
  [v5 addToRunLoop:v6 forMode:NSRunLoopCommonModes];

  v7 = v0[5];
  swift_unownedRetainStrong();

  swift_unownedRetain();

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = sub_10006B33C;
  *(v7 + 24) = v8;
  sub_10004EB88(v10);

  return v0;
}

uint64_t sub_100067CAC(double a1, double a2)
{
  v4 = *(swift_unownedRetainStrong() + 16);
  sub_10006B344(v4);

  if (v4)
  {
    v4(result, a1, a2);

    return sub_10004EB88(v4);
  }

  return result;
}

uint64_t sub_100067D40()
{
  [*(v0 + 32) invalidate];
  v1 = *(v0 + 24);
  sub_10004EB88(*(v0 + 16));

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_100067E74()
{
  v1 = *(v0 + 24);
  sub_10004EB88(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_100068040()
{
  result = qword_100115D80;
  if (!qword_100115D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100115D80);
  }

  return result;
}

uint64_t sub_1000680B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10006859C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006A01C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for CombineIdentifier();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
    v22 = *(v15 - 8);
    sub_10006AAB8(v14 + *(v22 + 72) * v8, a2);
    sub_100069024(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_100068274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_1000684C8(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006A338(a2, a3, a4, a5);
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = type metadata accessor for UUID();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = sub_1000032D4(a2, a3);
    v31 = *(v24 - 8);
    (*(v31 + 32))(a6, v23 + *(v31 + 72) * v22, v24);
    sub_100069374(v22, v19, a2, a3);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = sub_1000032D4(a2, a3);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

unint64_t sub_100068450(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100069CC0(a1, a2, v6);
}

unint64_t sub_1000684C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10006AE18(&qword_100116F90, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100069D78(a1, v5, &type metadata accessor for UUID, &qword_100116FA0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10006859C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CombineIdentifier();
  sub_10006AE18(&qword_100116F68, &type metadata accessor for CombineIdentifier);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100069D78(a1, v5, &type metadata accessor for CombineIdentifier, &qword_100116F70, &type metadata accessor for CombineIdentifier, &protocol conformance descriptor for CombineIdentifier);
}

unint64_t sub_100068670(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100069F18(a1, v4);
}

uint64_t sub_100068704(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v43 - v8;
  v9 = type metadata accessor for CombineIdentifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_1000032D4(&qword_100116F60, &qword_1000D4AE0);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_10006AAB8(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_10002CFC4(v33 + v32 * v28, v52, &qword_100116F30, &qword_1000D4AB8);
      }

      v34 = *(v16 + 40);
      sub_10006AE18(&qword_100116F68, &type metadata accessor for CombineIdentifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_10006AAB8(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_100068B80(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v62 = sub_1000032D4(a3, a4);
  v12 = *(v62 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v62);
  v61 = &v50 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v63 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  sub_1000032D4(a5, a6);
  v57 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v22 = result;
  if (*(v19 + 16))
  {
    v23 = 0;
    v24 = (v19 + 64);
    v25 = 1 << *(v19 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v16;
    v28 = v26 & *(v19 + 64);
    v29 = (v25 + 63) >> 6;
    v53 = (v27 + 16);
    v54 = v27;
    v51 = v9;
    v52 = v12 + 16;
    v55 = v19;
    v56 = v12;
    v58 = (v12 + 32);
    v59 = (v27 + 32);
    v30 = result + 64;
    while (v28)
    {
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_17:
      v35 = v32 | (v23 << 6);
      v36 = *(v19 + 48);
      v60 = *(v27 + 72);
      v37 = v36 + v60 * v35;
      if (v57)
      {
        (*v59)(v63, v37, v15);
        v38 = *(v19 + 56);
        v39 = *(v56 + 72);
        (*(v56 + 32))(v61, v38 + v39 * v35, v62);
      }

      else
      {
        (*v53)(v63, v37, v15);
        v40 = *(v19 + 56);
        v39 = *(v56 + 72);
        (*(v56 + 16))(v61, v40 + v39 * v35, v62);
      }

      v41 = *(v22 + 40);
      sub_10006AE18(&qword_100116F90, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v42 = -1 << *(v22 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v30 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v30 + 8 * v44);
          if (v48 != -1)
          {
            v31 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v31 = __clz(__rbit64((-1 << v43) & ~*(v30 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v30 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      (*v59)((*(v22 + 48) + v60 * v31), v63, v15);
      result = (*v58)(*(v22 + 56) + v39 * v31, v61, v62);
      ++*(v22 + 16);
      v27 = v54;
      v19 = v55;
    }

    v33 = v23;
    while (1)
    {
      v23 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v23 >= v29)
      {
        break;
      }

      v34 = v24[v23];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v28 = (v34 - 1) & v34;
        goto LABEL_17;
      }
    }

    if ((v57 & 1) == 0)
    {

      v9 = v51;
      goto LABEL_36;
    }

    v49 = 1 << *(v19 + 32);
    v9 = v51;
    if (v49 >= 64)
    {
      bzero(v24, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v49;
    }

    *(v19 + 16) = 0;
  }

LABEL_36:
  *v9 = v22;
  return result;
}

unint64_t sub_100069024(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombineIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_10006AE18(&qword_100116F68, &type metadata accessor for CombineIdentifier);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_1000032D4(&qword_100116F30, &qword_1000D4AB8) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100069374(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v40 = a3;
  v41 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = _HashTable.previousHole(before:)();
    v17 = v15;
    v45 = (v16 + 1) & v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v43 = a2 + 64;
    v44 = v19;
    v20 = *(v18 + 56);
    v42 = (v18 - 8);
    v46 = v20;
    do
    {
      v21 = v20 * v14;
      v22 = v17;
      v23 = v18;
      v44(v11, *(a2 + 48) + v20 * v14, v6);
      v24 = *(a2 + 40);
      sub_10006AE18(&qword_100116F90, &type metadata accessor for UUID);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v42)(v11, v6);
      v17 = v22;
      v26 = v25 & v22;
      if (a1 >= v45)
      {
        if (v26 >= v45 && a1 >= v26)
        {
LABEL_15:
          v18 = v23;
          if (v46 * a1 < v21 || *(a2 + 48) + v46 * a1 >= (*(a2 + 48) + v21 + v46))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v46 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(sub_1000032D4(v40, v41) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v14;
          v33 = v29 + v30 * v14 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v14;
            v12 = v43;
            v17 = v22;
          }

          else
          {
            a1 = v14;
            v35 = v31 == v32;
            v12 = v43;
            v17 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v17 = v22;
              a1 = v14;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v45 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v18 = v23;
      v12 = v43;
LABEL_4:
      v14 = (v14 + 1) & v17;
      v20 = v46;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000696B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CombineIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10006859C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10006A01C();
      goto LABEL_7;
    }

    sub_100068704(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10006859C(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100069AD0(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(sub_1000032D4(&qword_100116F30, &qword_1000D4AB8) - 8) + 72) * v15;

  return sub_10006ADA8(a1, v23);
}

uint64_t sub_1000698AC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v36 = a6;
  v37 = a7;
  v38 = a4;
  v39 = a5;
  v8 = v7;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_1000684C8(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      sub_10006A338(v38, v39, v36, v37);
      goto LABEL_7;
    }

    sub_100068B80(v22, a3 & 1, v38, v39, v36, v37);
    v33 = *v8;
    v34 = sub_1000684C8(a2);
    if ((v23 & 1) == (v35 & 1))
    {
      v19 = v34;
      v25 = *v8;
      if (v23)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v16, a2, v12);
      return sub_100069BB8(v19, v16, a1, v25, v38, v39);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v25 = *v8;
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = v25[7];
  v27 = sub_1000032D4(v38, v39);
  v28 = *(v27 - 8);
  v29 = *(v28 + 40);
  v30 = v27;
  v31 = v26 + *(v28 + 72) * v19;

  return v29(v31, a1, v30);
}

uint64_t sub_100069AD0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CombineIdentifier();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  result = sub_10006AAB8(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_100069BB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = sub_1000032D4(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_100069CC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100069D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_10006AE18(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100069F18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
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

char *sub_10006A01C()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - v4;
  v36 = type metadata accessor for CombineIdentifier();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032D4(&qword_100116F60, &qword_1000D4AE0);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_10002CFC4(*(v7 + 56) + v28, v37, &qword_100116F30, &qword_1000D4AB8);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_10006AAB8(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_10006A338(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v49 = sub_1000032D4(a1, a2);
  v52 = *(v49 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v49);
  v48 = &v38 - v9;
  v47 = type metadata accessor for UUID();
  v51 = *(v47 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v47);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032D4(a3, a4);
  v12 = *v4;
  v13 = static _DictionaryStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v14;
  }

  return result;
}

uint64_t sub_10006A684()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006A6BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_10006A6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = type metadata accessor for Mirror.AncestorRepresentation();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&qword_100116F78, &qword_1000D4AE8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v24 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = *(v15 + 16);
  v20(v24 - v21, a1, a2);
  sub_1000032D4(&qword_100116F80, &qword_1000D4AF0);
  if (swift_dynamicCast())
  {
    sub_10004E5BC(v25, v27);
    sub_100025B1C(v27, v27[3]);
    dispatch thunk of CustomReflectable.customMirror.getter();
    return sub_100017D28(v27);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_10002D02C(v25, &qword_100116F88, &qword_1000D4AF8);
    v20(v19, a1, a2);
    v23 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    (*(v6 + 104))(v9, enum case for Mirror.AncestorRepresentation.generated(_:), v5);
    return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  }
}

uint64_t sub_10006A9D4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10006AAA0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  a1[3] = &type metadata for String;
  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_10006AAB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006AB28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006AB60()
{
  v1 = type metadata accessor for CombineIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006AC24()
{
  v1 = *(type metadata accessor for CombineIdentifier() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100067800(v2, v3);
}

uint64_t sub_10006AC88()
{
  sub_100017D28((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006ACC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[6];
  sub_100025B1C(v1 + 2, v1[5]);
  result = dispatch thunk of CustomStringConvertible.description.getter();
  a1[3] = &type metadata for String;
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10006AD18()
{
  v1 = v0[6];
  sub_100025B1C(v0 + 2, v0[5]);
  return dispatch thunk of CustomPlaygroundDisplayConvertible.playgroundDescription.getter();
}

uint64_t sub_10006AD64()
{
  v1 = v0[6];
  sub_100025B1C(v0 + 2, v0[5]);
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10006ADA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006AE18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10006AE60(uint64_t a1)
{
  v2 = sub_1000032D4(&qword_100116FC0, &qword_1000D4B30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000032D4(&qword_100116F60, &qword_1000D4AE0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002CFC4(v10, v6, &qword_100116FC0, &qword_1000D4B30);
      result = sub_10006859C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CombineIdentifier();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1000032D4(&qword_100116F30, &qword_1000D4AB8);
      result = sub_10006AAB8(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10006B074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000032D4(&qword_100116FC8, &qword_1000D4B38);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100068670(v6);
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

uint64_t sub_10006B16C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + 24) = sub_10006AE60(&_swiftEmptyArrayStorage);
  sub_100068040();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    *(v2 + 16) = a1;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    *(a1 + 16) = sub_10006B2FC;
    *(a1 + 24) = v11;

    sub_10004EB88(v12);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B304()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006B344(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10006B360()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);

  return v1;
}

uint64_t sub_10006B41C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 96);
  v1 = *(v4 + 104);

  return v2;
}

uint64_t sub_10006B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v4 = sub_1000032D4(&qword_1001165B0, &unk_1000D3B70);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_1000032D4(&qword_1001165C8, &unk_1000D4DE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = type metadata accessor for CurrentLocationResult(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v35 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v33 - v21;
  __chkstk_darwin(v20);
  v24 = &v33 - v23;
  v25 = *(*a2 + 96);
  swift_beginAccess();
  sub_10002CFC4(a2 + v25, v14, &qword_1001165C8, &unk_1000D4DE0);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    v34 = v7;
    v27 = v39;
    sub_10002D02C(v14, &qword_1001165C8, &unk_1000D4DE0);
    sub_10002CFC4(v36, v12, &qword_1001165C8, &unk_1000D4DE0);
    if (v26(v12, 1, v15) == 1)
    {
      sub_10002D02C(v12, &qword_1001165C8, &unk_1000D4DE0);
    }

    else
    {
      v30 = v35;
      sub_100074F2C(v12, v35);
      sub_100075424(v30, v22);
      sub_1000032D4(&qword_1001165B8, &qword_1000D4B00);
      v31 = v34;
      AsyncStream.Continuation.yield(_:)();
      (*(v37 + 8))(v31, v38);
      sub_100057598(v30);
      sub_100074F90(v30, type metadata accessor for CurrentLocationResult);
    }

    v29 = v27;
  }

  else
  {
    sub_100074F2C(v14, v24);
    sub_100075424(v24, v22);
    sub_1000032D4(&qword_1001165B8, &qword_1000D4B00);
    v28 = v39;
    AsyncStream.Continuation.yield(_:)();
    (*(v37 + 8))(v7, v38);
    sub_100074F90(v24, type metadata accessor for CurrentLocationResult);
    v29 = v28;
  }

  return sub_10006BCBC(v29);
}

uint64_t sub_10006B8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v42 = a1;
  v4 = sub_1000032D4(&qword_1001165F8, &unk_1000D3BB0);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  v8 = sub_1000032D4(&qword_100116628, &qword_1000D3BE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v38 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v36 - v21;
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  v25 = *(*a2 + 96);
  swift_beginAccess();
  sub_10002CFC4(a2 + v25, v14, &qword_100116628, &qword_1000D3BE0);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    v37 = v7;
    v27 = v42;
    sub_10002D02C(v14, &qword_100116628, &qword_1000D3BE0);
    sub_10002CFC4(v39, v12, &qword_100116628, &qword_1000D3BE0);
    if (v26(v12, 1, v15) == 1)
    {
      v28 = &qword_100116628;
      v29 = &qword_1000D3BE0;
      v30 = v12;
    }

    else
    {
      v33 = v38;
      sub_10002C7C4(v12, v38, &qword_100116610, &qword_1000D3BC8);
      sub_10002CFC4(v33, v22, &qword_100116610, &qword_1000D3BC8);
      sub_1000032D4(&qword_100116600, &unk_1000D4E80);
      v34 = v37;
      AsyncStream.Continuation.yield(_:)();
      (*(v40 + 8))(v34, v41);
      sub_100057DA0(v33);
      v30 = v33;
      v28 = &qword_100116610;
      v29 = &qword_1000D3BC8;
    }

    sub_10002D02C(v30, v28, v29);
    v32 = v27;
  }

  else
  {
    sub_10002C7C4(v14, v24, &qword_100116610, &qword_1000D3BC8);
    sub_10002CFC4(v24, v22, &qword_100116610, &qword_1000D3BC8);
    sub_1000032D4(&qword_100116600, &unk_1000D4E80);
    v31 = v42;
    AsyncStream.Continuation.yield(_:)();
    (*(v40 + 8))(v7, v41);
    sub_10002D02C(v24, &qword_100116610, &qword_1000D3BC8);
    v32 = v31;
  }

  return sub_10006BFAC(v32);
}

uint64_t sub_10006BCBC(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_1000032D4(&qword_100116FA8, &unk_1000D4B10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  UUID.init()();
  v22 = *(v8 + 16);
  v22(v11, v13, v7);
  v14 = sub_1000032D4(&qword_1001165B8, &qword_1000D4B00);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6, v23, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  v16 = *(*v2 + 112);
  swift_beginAccess();
  sub_100066160(v6, v11);
  swift_endAccess();
  v17 = swift_allocObject();
  swift_weakInit();
  v22(v11, v13, v7);
  v18 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v8 + 32))(v19 + v18, v11, v7);

  AsyncStream.Continuation.onTermination.setter();
  (*(v8 + 8))(v13, v7);
}

uint64_t sub_10006BFAC(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_1000032D4(&qword_100116FB8, &qword_1000D4B28);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  UUID.init()();
  v22 = *(v8 + 16);
  v22(v11, v13, v7);
  v14 = sub_1000032D4(&qword_100116600, &unk_1000D4E80);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6, v23, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  v16 = *(*v2 + 112);
  swift_beginAccess();
  sub_1000665E8(v6, v11);
  swift_endAccess();
  v17 = swift_allocObject();
  swift_weakInit();
  v22(v11, v13, v7);
  v18 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v8 + 32))(v19 + v18, v11, v7);

  AsyncStream.Continuation.onTermination.setter();
  (*(v8 + 8))(v13, v7);
}

uint64_t sub_10006C29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10006C330(a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_10006C330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v28 = a1;
  v29 = a3;
  v27[1] = a2;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v32);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.background(_:), v15);
  v27[0] = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v19, v15);
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v12);
  v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v13 + 32))(v22 + v21, v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = v30;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004B270;
  aBlock[3] = v31;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = &_swiftEmptyArrayStorage;
  sub_100075748(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000032D4(&unk_100115D90, qword_1000D3C00);
  sub_10002DAD8(&qword_100116270, &unk_100115D90, qword_1000D3C00);
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v27[0];
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v35 + 8))(v7, v24);
  (*(v33 + 8))(v11, v34);
}

uint64_t sub_10006C7C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v9 = sub_1000032D4(a3, a4);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19[-v11];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(*result + 104);
    v15 = *(result + v14);
    v16 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v15 + 4);
    swift_endAccess();
    v17 = *(*v16 + 112);
    swift_beginAccess();
    a5(a2);
    sub_10002D02C(v12, a3, a4);
    swift_endAccess();
    v18 = *(v16 + v14);
    swift_beginAccess();
    os_unfair_lock_unlock(v18 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10006C93C()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

uint64_t sub_10006C9DC()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
}

uint64_t sub_10006CA80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_10006CB2C(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 32);

  sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
  v4 = static Task.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 32);
LABEL_7:
  *(v1 + 32) = a1;
}

uint64_t sub_10006CCC8()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
}

uint64_t sub_10006CD6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_10006CE18(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006CF4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_10006D01C(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id sub_10006D12C()
{
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);

  return v1;
}

id sub_10006D1DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_10006D294(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  sub_10002BB3C(0, &qword_100117118, NSMeasurementFormatter_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 56);
    *(v2 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006D400()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v0[12];
  v2 = v0[13];
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3 == v0[8] && v2 == v0[9])
  {
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = v1[8];
    v7 = v1[9];

    return sub_10006D628(v6, v7);
  }

  return result;
}

uint64_t sub_10006D578()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 64);
  v1 = *(v4 + 72);

  return v2;
}

uint64_t sub_10006D628(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96) == a1 && *(v2 + 104) == a2;
  if (v5 || (v6 = *(v2 + 104), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006D788@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_10006D834(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (v6 = *(v2 + 72), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;

    return sub_10006D400();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006D998()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v0 + 88);
  if (!v2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!v5)
  {

    goto LABEL_12;
  }

  if (v3 == *(v0 + 80) && v2 == v5)
  {
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_12:
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v1 + 80);
    v9 = *(v1 + 88);

    return sub_10006DBE8(v8, v9);
  }

  return result;
}

uint64_t sub_10006DB38()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 80);
  v1 = *(v4 + 88);

  return v2;
}

uint64_t sub_10006DBE8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  v6 = *(v2 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10006DD64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_10006DE10(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 80) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 88);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  return sub_10006D998();
}

uint64_t sub_10006DF84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_10006E030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_10006D628(v2, v3);
}

uint64_t sub_10006E070(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v39 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v38 = &v36[-v8];
  v9 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v42 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v36[-v13];
  v15 = sub_1000032D4(&qword_100116618, &qword_1000D3BD0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v36[-v18];
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider___observationRegistrar;
  v45 = v2;
  v40 = sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  v41 = v20;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  swift_beginAccess();
  v22 = *(v16 + 56);
  sub_10002CFC4(v2 + v21, v19, &qword_100116610, &qword_1000D3BC8);
  sub_10002CFC4(v43, &v19[v22], &qword_100116610, &qword_1000D3BC8);
  v43 = v4;
  v23 = *(v4 + 48);
  if (v23(v19, 1, v3) == 1)
  {
    if (v23(&v19[v22], 1, v3) == 1)
    {
      return sub_10002D02C(v19, &qword_100116610, &qword_1000D3BC8);
    }
  }

  else
  {
    sub_10002CFC4(v19, v14, &qword_100116610, &qword_1000D3BC8);
    if (v23(&v19[v22], 1, v3) != 1)
    {
      v33 = v43;
      v34 = v38;
      (*(v43 + 32))(v38, &v19[v22], v3);
      sub_10002DAD8(&qword_100116630, &qword_100116608, &qword_1000D3BC0);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v33 + 8);
      v35(v34, v3);
      v35(v14, v3);
      result = sub_10002D02C(v19, &qword_100116610, &qword_1000D3BC8);
      if (v37)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v43 + 8))(v14, v3);
  }

  sub_10002D02C(v19, &qword_100116618, &qword_1000D3BD0);
LABEL_7:
  swift_getKeyPath();
  v44 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = v42;
  sub_10002CFC4(v2 + v21, v42, &qword_100116610, &qword_1000D3BC8);
  if (v23(v25, 1, v3) == 1)
  {
    return sub_10002D02C(v25, &qword_100116610, &qword_1000D3BC8);
  }

  v26 = v43;
  v27 = v39;
  (*(v43 + 32))(v39, v25, v3);
  swift_getKeyPath();
  v44 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v2 + 56);
  sub_10002BB3C(0, &qword_100117110, NSUnitTemperature_ptr);
  v29 = v28;
  v30 = NSMeasurementFormatter.string<A>(from:)();
  v32 = v31;

  sub_10006D834(v30, v32);
  return (*(v26 + 8))(v27, v3);
}

uint64_t sub_10006E5D8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  swift_beginAccess();
  return sub_10002CFC4(v5 + v3, a1, &qword_100116610, &qword_1000D3BC8);
}

uint64_t sub_10006E6B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  swift_beginAccess();
  return sub_10002CFC4(v3 + v4, a2, &qword_100116610, &qword_1000D3BC8);
}

uint64_t sub_10006E788(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_10002CFC4(a1, &v10 - v6, &qword_100116610, &qword_1000D3BC8);
  v8 = *a2;
  return sub_10006E834(v7);
}

uint64_t sub_10006E834(uint64_t a1)
{
  v3 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  swift_beginAccess();
  sub_10002CFC4(v1 + v10, v9, &qword_100116610, &qword_1000D3BC8);
  v11 = sub_100074858(v9, a1);
  sub_10002D02C(v9, &qword_100116610, &qword_1000D3BC8);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-2] = v1;
    v14[-1] = a1;
    v14[2] = v1;
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10002CFC4(a1, v9, &qword_100116610, &qword_1000D3BC8);
    sub_10002CFC4(v1 + v10, v7, &qword_100116610, &qword_1000D3BC8);
    swift_beginAccess();
    sub_100074B7C(v9, v1 + v10);
    swift_endAccess();
    sub_10006E070(v7);
    sub_10002D02C(v7, &qword_100116610, &qword_1000D3BC8);
    sub_10002D02C(v9, &qword_100116610, &qword_1000D3BC8);
  }

  return sub_10002D02C(a1, &qword_100116610, &qword_1000D3BC8);
}

uint64_t sub_10006EA94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  sub_10002CFC4(a2, &v13[-v9], &qword_100116610, &qword_1000D3BC8);
  v11 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  swift_beginAccess();
  sub_10002CFC4(a1 + v11, v8, &qword_100116610, &qword_1000D3BC8);
  swift_beginAccess();
  sub_100074B7C(v10, a1 + v11);
  swift_endAccess();
  sub_10006E070(v8);
  sub_10002D02C(v8, &qword_100116610, &qword_1000D3BC8);
  return sub_10002D02C(v10, &qword_100116610, &qword_1000D3BC8);
}

uint64_t sub_10006EBEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  a2[1] = v4;
}

uint64_t sub_10006ECA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_10006DBE8(v2, v3);
}

uint64_t sub_10006ECE4()
{
  v1 = v0;
  v2 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v28 - v4;
  type metadata accessor for WeatherService();
  *(v0 + 16) = WeatherService.__allocating_init()();
  v6 = sub_1000032D4(&qword_1001170F8, &qword_1000D4C98);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = *(*v9 + 96);
  v11 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  v12 = *(*v9 + 104);
  type metadata accessor for CPUnfairLock();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v9 + v12) = v13;
  *(v9 + *(*v9 + 112)) = &_swiftEmptyDictionarySingleton;
  *(v9 + *(*v9 + 120)) = 0;
  *(v1 + 24) = v9;
  *(v1 + 32) = 0;
  v14 = type metadata accessor for NWPathMonitor();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v1 + 40) = NWPathMonitor.init()();
  *(v1 + 48) = 1;
  v17 = [objc_allocWithZone(NSMeasurementFormatter) init];
  [v17 setUnitOptions:1];
  [v17 setUnitStyle:2];
  v18 = [objc_allocWithZone(NSNumberFormatter) init];
  [v18 setNumberStyle:1];
  [v18 setMaximumFractionDigits:0];
  [v17 setNumberFormatter:v18];

  *(v1 + 56) = v17;
  *(v1 + 64) = 11565;
  *(v1 + 72) = 0xE200000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 11565;
  *(v1 + 104) = 0xE200000000000000;
  v19 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature;
  v20 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = (v1 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  *v21 = 0;
  v21[1] = 0;
  ObservationRegistrar.init()();
  sub_10006F120();
  if (qword_100113610 != -1)
  {
    swift_once();
  }

  v22 = sub_10005926C();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 isAuthorizedForWidgetUpdates];

    if (v24)
    {
      swift_getKeyPath();
      v28[1] = v1;
      sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 48) == 1)
      {
        v25 = type metadata accessor for TaskPriority();
        (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
        v26 = swift_allocObject();
        v26[2] = 0;
        v26[3] = 0;
        v26[4] = v1;

        sub_100075B64(0, 0, v5, &unk_1000D4CD0, v26);
      }
    }
  }

  return v1;
}

void sub_10006F120()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v2 - 8);
  v14 = v2;
  v3 = *(v13 + 64);
  __chkstk_darwin(v2);
  v12 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  swift_getKeyPath();
  v15 = v0;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = v0[5];
  swift_allocObject();
  swift_weakInit();

  sub_10006B344(sub_100075740);
  NWPathMonitor.pathUpdateHandler.setter();

  swift_getKeyPath();
  v15 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = v1[5];
  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);

  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_100075748(&qword_1001176E0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000032D4(&unk_1001165E0, &qword_1000D3BA0);
  sub_10002DAD8(&qword_1001176F0, &unk_1001165E0, &qword_1000D3BA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v13 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  NWPathMonitor.start(queue:)();
}

uint64_t sub_10006F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v7 = *(*(sub_1000032D4(&unk_100115E10, &qword_1000D27F0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v8 = *(*(sub_1000032D4(&qword_100116628, &qword_1000D3BE0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v9 = sub_1000032D4(&qword_100117100, &qword_1000D4CE0);
  v4[14] = v9;
  v10 = *(v9 - 8);
  v4[15] = v10;
  v11 = *(v10 + 64) + 15;
  v4[16] = swift_task_alloc();
  v12 = sub_1000032D4(&qword_100117108, &qword_1000D4CE8);
  v4[17] = v12;
  v13 = *(v12 - 8);
  v4[18] = v13;
  v14 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10006F6F4, 0, 0);
}

uint64_t sub_10006F6F4()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[6];
  sub_10006FCD4(v2);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_10006F7EC;
  v8 = v0[19];
  v9 = v0[17];
  v10 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v10, 0, 0, v9);
}

uint64_t sub_10006F7EC()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10006F8E8, 0, 0);
}

uint64_t sub_10006F8E8()
{
  v1 = v0[13];
  v2 = v0[8];
  if ((*(v2 + 48))(v1, 1, v0[7]) == 1)
  {
    v3 = v0[16];
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[11];
    v10 = v0[12];
    v11 = v0[10];
    v30 = v0[9];
    v12 = v0[6];
    v13 = type metadata accessor for TaskPriority();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v10, 1, 1, v13);
    sub_10002C7C4(v1, v11, &qword_100116610, &qword_1000D3BC8);
    type metadata accessor for MainActor();

    v15 = static MainActor.shared.getter();
    v16 = (*(v2 + 80) + 40) & ~*(v2 + 80);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v12;
    sub_10002C7C4(v11, v17 + v16, &qword_100116610, &qword_1000D3BC8);
    sub_10002CFC4(v10, v9, &unk_100115E10, &qword_1000D27F0);
    LODWORD(v9) = (*(v14 + 48))(v9, 1, v13);

    v18 = v0[11];
    if (v9 == 1)
    {
      sub_10002D02C(v0[11], &unk_100115E10, &qword_1000D27F0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v14 + 8))(v18, v13);
    }

    v20 = v17[2];
    v19 = v17[3];
    swift_unknownObjectRetain();

    if (v20)
    {
      swift_getObjectType();
      v21 = dispatch thunk of Actor.unownedExecutor.getter();
      v23 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    sub_10002D02C(v0[12], &unk_100115E10, &qword_1000D27F0);
    v24 = swift_allocObject();
    *(v24 + 16) = &unk_1000D4CF8;
    *(v24 + 24) = v17;
    if (v23 | v21)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v21;
      v0[5] = v23;
    }

    swift_task_create();

    v25 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v26 = swift_task_alloc();
    v0[20] = v26;
    *v26 = v0;
    v26[1] = sub_10006F7EC;
    v27 = v0[19];
    v28 = v0[17];
    v29 = v0[13];

    return AsyncStream.Iterator.next(isolation:)(v29, 0, 0, v28);
  }
}

uint64_t sub_10006FCD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v56 = sub_1000032D4(&qword_100117120, &qword_1000D4DB0);
  v54 = *(v56 - 8);
  v3 = *(v54 + 64);
  __chkstk_darwin(v56);
  v53 = &v48 - v4;
  v5 = sub_1000032D4(&qword_100117128, &qword_1000D4DB8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v52 = &v48 - v10;
  __chkstk_darwin(v9);
  v55 = &v48 - v11;
  v12 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v48 - v14;
  v16 = sub_1000032D4(&qword_100116628, &qword_1000D3BE0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v48 - v21;
  v23 = *(v1 + 24);
  v24 = *(*v23 + 104);
  v25 = *(v23 + v24);
  swift_beginAccess();

  os_unfair_lock_lock(v25 + 4);
  swift_endAccess();
  v26 = *(*v23 + 120);
  v27 = *(v23 + v26);
  if ((v27 & 1) == 0)
  {
    *(v23 + v26) = 1;
  }

  v28 = v24;
  v29 = *(v23 + v24);
  swift_beginAccess();
  os_unfair_lock_unlock(v29 + 4);
  swift_endAccess();
  v30 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v31 = *(*(v30 - 8) + 56);
  v31(v22, 1, 1, v30);
  if ((v27 & 1) == 0)
  {
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v33;
    sub_100075E54(0, 0, v15, &unk_1000D4DC8, v34);

    v35 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
    (*(*(v35 - 8) + 56))(v20, 1, 1, v35);
    v31(v20, 0, 1, v30);
    sub_100074EBC(v20, v22);
  }

  v58 = v2;
  v36 = sub_1000032D4(&qword_100117100, &qword_1000D4CE0);
  v37 = *(v36 - 8);
  v38 = v37;
  v50 = *(v37 + 56);
  v51 = v37 + 56;
  v39 = v22;
  v40 = v55;
  v50(v55, 1, 1, v36);
  v41 = v28;
  v42 = *(v23 + v28);
  swift_beginAccess();
  os_unfair_lock_lock(v42 + 4);
  v43 = swift_endAccess();
  __chkstk_darwin(v43);
  *(&v48 - 2) = v23;
  *(&v48 - 1) = v39;
  v48 = v39;
  (*(v54 + 104))(v53, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v56);
  v44 = v52;
  AsyncStream.init(_:bufferingPolicy:_:)();
  sub_10002D02C(v40, &qword_100117128, &qword_1000D4DB8);
  v50(v44, 0, 1, v36);
  sub_10002C7C4(v44, v40, &qword_100117128, &qword_1000D4DB8);
  v45 = *(v23 + v41);
  swift_beginAccess();
  os_unfair_lock_unlock(v45 + 4);
  swift_endAccess();
  v46 = v57;
  sub_10002CFC4(v40, v57, &qword_100117128, &qword_1000D4DB8);
  if ((*(v38 + 48))(v46, 1, v36) == 1)
  {

    __break(1u);
  }

  else
  {
    sub_10002D02C(v40, &qword_100117128, &qword_1000D4DB8);
    (*(v38 + 32))(v49, v46, v36);
    sub_10002D02C(v48, &qword_100116628, &qword_1000D3BE0);
  }

  return result;
}

uint64_t sub_100070368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(sub_1000032D4(&qword_100116610, &qword_1000D3BC8) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100070438, v8, v7);
}

uint64_t sub_100070438()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  sub_10002CFC4(v4, v2, &qword_100116610, &qword_1000D3BC8);
  sub_10006E834(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000704D0()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider___observationRegistrar;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 32))
  {
    v3 = *(v0 + 32);

    sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
    Task.cancel()();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v0 + 40);

  NWPathMonitor.cancel()();

  v5 = *(v1 + 16);

  v6 = *(v1 + 24);

  v7 = *(v1 + 32);

  v8 = *(v1 + 40);

  v9 = *(v1 + 72);

  v10 = *(v1 + 88);

  v11 = *(v1 + 104);

  sub_10002D02C(v1 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__currentTemperature, &qword_100116610, &qword_1000D3BC8);
  v12 = *(v1 + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName + 8);

  v13 = type metadata accessor for ObservationRegistrar();
  (*(*(v13 - 8) + 8))(v1 + v2, v13);
  return v1;
}

uint64_t sub_1000706BC()
{
  sub_1000704D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WeatherDataProvider()
{
  result = qword_100117010;
  if (!qword_100117010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100070768()
{
  sub_10007087C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10007087C()
{
  if (!qword_100117020)
  {
    sub_10001C820(&qword_100116608, &qword_1000D3BC0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100117020);
    }
  }
}

uint64_t sub_1000708E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10006CB2C(v4);
}

uint64_t sub_100070914(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10006CE18(v4);
}

uint64_t sub_100070940()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_1000709C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_10006F4D4(a1, v4, v5, v6);
}

uint64_t sub_100070A78()
{
  v1 = *(sub_1000032D4(&qword_100116610, &qword_1000D3BC8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100070BAC(uint64_t a1)
{
  v4 = *(sub_1000032D4(&qword_100116610, &qword_1000D3BC8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100070368(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100070CB0()
{
  v0 = type metadata accessor for NWPath.Status();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v15[-v6];
  NWPath.status.getter();
  (*(v1 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v0);
  v8 = static NWPath.Status.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  if ((v8 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    if ((*(result + 48) & 1) == 0)
    {
      *(result + 48) = 0;
    }

    v11 = result;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v15[-16] = v11;
    v15[-8] = 0;
    v16 = v11;
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
LABEL_9:
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*(result + 48) != 1)
  {
    v13 = result;
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    *&v15[-16] = v13;
    v15[-8] = 1;
    v16 = v13;
    sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
    goto LABEL_9;
  }

  *(result + 48) = 1;
}

uint64_t sub_100070FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = *(*(sub_1000032D4(&unk_100115E10, &qword_1000D27F0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = *(*(sub_1000032D4(&qword_100116610, &qword_1000D3BC8) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = *(*(sub_1000032D4(&qword_100117130, &unk_1000D4DD0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = *(*(sub_1000032D4(&qword_100116398, &unk_1000D3A00) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v9 = type metadata accessor for CurrentLocationResult(0);
  v4[24] = v9;
  v10 = *(v9 - 8);
  v4[25] = v10;
  v11 = *(v10 + 64) + 15;
  v4[26] = swift_task_alloc();
  v12 = *(*(sub_1000032D4(&qword_1001165C8, &unk_1000D4DE0) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v13 = sub_1000032D4(&qword_100116648, &qword_1000D3BF8);
  v4[28] = v13;
  v14 = *(v13 - 8);
  v4[29] = v14;
  v15 = *(v14 + 64) + 15;
  v4[30] = swift_task_alloc();
  v16 = sub_1000032D4(&qword_100117138, &qword_1000D4DF0);
  v4[31] = v16;
  v17 = *(v16 - 8);
  v4[32] = v17;
  v18 = *(v17 + 64) + 15;
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100071290, 0, 0);
}

uint64_t sub_100071290()
{
  if (qword_100113610 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = v0[17];
  sub_1000589D0(v2);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[34] = 0;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1000713D8;
  v8 = v0[33];
  v9 = v0[31];
  v10 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v10, 0, 0, v9);
}

uint64_t sub_1000713D8()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return _swift_task_switch(sub_1000714D4, 0, 0);
}

uint64_t sub_1000714D4()
{
  v1 = v0[27];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    goto LABEL_8;
  }

  v2 = v0[17];
  sub_100074F2C(v1, v0[26]);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_100074F90(v0[26], type metadata accessor for CurrentLocationResult);
    v16 = v0[27];
LABEL_8:
    v17 = v0[30];
    v18 = v0[26];
    v20 = v0[22];
    v19 = v0[23];
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    v76 = v0[18];
    (*(v0[32] + 8))(v0[33], v0[31]);

    v15 = v0[1];
    goto LABEL_9;
  }

  v4 = Strong;
  swift_getKeyPath();
  v0[15] = v4;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v4 + 32))
  {
    v5 = *(v4 + 32);

    sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
    Task.cancel()();
  }

  v6 = v0[34];
  static Task<>.checkCancellation()();
  if (v6)
  {
    v7 = v0[32];
    v8 = v0[33];
    v10 = v0[30];
    v9 = v0[31];
    v12 = v0[26];
    v11 = v0[27];
    v14 = v0[22];
    v13 = v0[23];
    v71 = v0[21];
    v72 = v0[20];
    v73 = v0[19];
    v75 = v0[18];

    sub_100074F90(v12, type metadata accessor for CurrentLocationResult);
    (*(v7 + 8))(v8, v9);

    v15 = v0[1];
LABEL_9:

    return v15();
  }

  v25 = v0[23];
  sub_10002CFC4(v0[26], v25, &qword_100116398, &unk_1000D3A00);
  v26 = type metadata accessor for CurrentLocation(0);
  v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
  v28 = v0[23];
  if (v27 == 1)
  {
    v30 = v0[21];
    v29 = v0[22];
    sub_10002D02C(v0[23], &qword_100116398, &unk_1000D3A00);
    v31 = type metadata accessor for CurrentWeather();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v29, 1, 1, v31);
    v33 = *(v4 + 24);
    sub_10002CFC4(v29, v30, &qword_100117130, &unk_1000D4DD0);
    v34 = (*(v32 + 48))(v30, 1, v31);
    v35 = v0[21];
    if (v34 == 1)
    {
      sub_10002D02C(v0[21], &qword_100117130, &unk_1000D4DD0);
      v36 = 1;
    }

    else
    {
      v46 = v0[20];
      CurrentWeather.temperature.getter();
      (*(v32 + 8))(v35, v31);
      v36 = 0;
    }

    v47 = v0[26];
    v48 = v0[22];
    v49 = v0[20];
    v50 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
    (*(*(v50 - 8) + 56))(v49, v36, 1, v50);
    v51 = *(*v33 + 104);
    v52 = *(v33 + v51);
    swift_beginAccess();
    os_unfair_lock_lock(v52 + 4);
    swift_endAccess();
    sub_100057DA0(v49);
    v53 = *(v33 + v51);
    swift_beginAccess();
    os_unfair_lock_unlock(v53 + 4);
    swift_endAccess();
    sub_10002D02C(v49, &qword_100116610, &qword_1000D3BC8);
    sub_10002D02C(v48, &qword_100117130, &unk_1000D4DD0);
    sub_100074F90(v47, type metadata accessor for CurrentLocationResult);
  }

  else
  {
    v37 = v4;
    v38 = v0[18];
    v39 = v0[19];
    v40 = *v28;
    sub_100074F90(v28, type metadata accessor for CurrentLocation);
    v41 = type metadata accessor for TaskPriority();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v39, 1, 1, v41);
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v43;
    v44[5] = v40;
    v44[6] = v37;
    sub_10002CFC4(v39, v38, &unk_100115E10, &qword_1000D27F0);
    LODWORD(v39) = (*(v42 + 48))(v38, 1, v41);
    v74 = v40;

    v45 = v0[18];
    if (v39 == 1)
    {
      sub_10002D02C(v0[18], &unk_100115E10, &qword_1000D27F0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v42 + 8))(v45, v41);
    }

    v55 = v44[2];
    v54 = v44[3];
    swift_unknownObjectRetain();

    if (v55)
    {
      swift_getObjectType();
      v56 = dispatch thunk of Actor.unownedExecutor.getter();
      v58 = v57;
      swift_unknownObjectRelease();
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    sub_10002D02C(v0[19], &unk_100115E10, &qword_1000D27F0);
    if (v58 | v56)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v56;
      v0[5] = v58;
    }

    v59 = swift_task_create();
    if (!*(v37 + 32) || (v60 = *(v37 + 32), , sub_1000032D4(&qword_100115EF0, &unk_1000D33C0), v61 = static Task.== infix(_:_:)(), , (v61 & 1) == 0))
    {
      v64 = v0[26];
      swift_getKeyPath();
      v65 = swift_task_alloc();
      *(v65 + 16) = v37;
      *(v65 + 24) = v59;
      v0[16] = v37;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_100074F90(v64, type metadata accessor for CurrentLocationResult);

      goto LABEL_30;
    }

    v62 = v0[26];

    sub_100074F90(v62, type metadata accessor for CurrentLocationResult);
    v63 = *(v37 + 32);
    *(v37 + 32) = v59;
  }

LABEL_30:
  v0[34] = 0;
  v66 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v67 = swift_task_alloc();
  v0[35] = v67;
  *v67 = v0;
  v67[1] = sub_1000713D8;
  v68 = v0[33];
  v69 = v0[31];
  v70 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v70, 0, 0, v69);
}

uint64_t sub_100071E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[25] = a4;
  v7 = type metadata accessor for ContinuousClock.Instant();
  v6[28] = v7;
  v8 = *(v7 - 8);
  v6[29] = v8;
  v9 = *(v8 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v6[32] = v10;
  v11 = *(v10 - 8);
  v6[33] = v11;
  v12 = *(v11 + 64) + 15;
  v6[34] = swift_task_alloc();
  v13 = *(*(sub_1000032D4(&unk_100115E10, &qword_1000D27F0) - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v14 = type metadata accessor for CurrentWeather();
  v6[37] = v14;
  v15 = *(v14 - 8);
  v6[38] = v15;
  v6[39] = *(v15 + 64);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v16 = sub_1000032D4(&qword_100117140, &qword_1000D4E08);
  v6[42] = v16;
  v17 = *(v16 - 8);
  v6[43] = v17;
  v18 = *(v17 + 64) + 15;
  v6[44] = swift_task_alloc();
  v19 = *(*(sub_1000032D4(&qword_100117130, &unk_1000D4DD0) - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();

  return _swift_task_switch(sub_1000720DC, 0, 0);
}

uint64_t sub_1000720DC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 200);
  swift_beginAccess();
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = *(v0 + 376);
  v5 = *(v0 + 296);
  v6 = *(v0 + 200);
  v7 = (*(v0 + 304) + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  *(v0 + 384) = v3;
  *(v0 + 392) = v7;
  v3(v4, 1, 1, v5);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(v0 + 352);
    v10 = *(v0 + 296);
    *(v0 + 400) = *(Strong + 16);

    static WeatherQuery.current.getter();
    v11 = async function pointer to WeatherService.weather<A>(for:including:)[1];
    v12 = swift_task_alloc();
    *(v0 + 408) = v12;
    *v12 = v0;
    v12[1] = sub_100072860;
    v13 = *(v0 + 368);
    v14 = *(v0 + 352);
    v15 = *(v0 + 296);
    v16 = *(v0 + 208);

    return WeatherService.weather<A>(for:including:)(v13, v16, v14, v15);
  }

  else
  {
    v18 = *(v0 + 384);
    v17 = *(v0 + 392);
    v19 = *(v0 + 368);
    v20 = *(v0 + 376);
    v21 = *(v0 + 296);
    sub_10002D02C(v20, &qword_100117130, &unk_1000D4DD0);
    v18(v19, 1, 1, v21);
    sub_10002C7C4(v19, v20, &qword_100117130, &unk_1000D4DD0);
    v22 = *(v0 + 360);
    v23 = *(v0 + 296);
    v24 = *(v0 + 304);
    sub_10002CFC4(*(v0 + 376), v22, &qword_100117130, &unk_1000D4DD0);
    v25 = (*(v24 + 48))(v22, 1, v23);
    v26 = *(v0 + 360);
    if (v25 == 1)
    {
      sub_10002D02C(*(v0 + 360), &qword_100117130, &unk_1000D4DD0);
    }

    else
    {
      v27 = *(v0 + 200);
      v28 = *(*(v0 + 304) + 32);
      v28(*(v0 + 328), *(v0 + 360), *(v0 + 296));
      v29 = swift_weakLoadStrong();
      v30 = *(v0 + 328);
      if (v29)
      {
        v31 = *(v0 + 320);
        v33 = *(v0 + 296);
        v32 = *(v0 + 304);
        v34 = *(v0 + 288);
        v69 = v34;
        v70 = *(v0 + 280);
        v68 = *(v0 + 216);
        v35 = type metadata accessor for TaskPriority();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v34, 1, 1, v35);
        (*(v32 + 16))(v31, v30, v33);
        type metadata accessor for MainActor();

        v37 = static MainActor.shared.getter();
        v38 = (*(v32 + 80) + 40) & ~*(v32 + 80);
        v39 = swift_allocObject();
        *(v39 + 2) = v37;
        *(v39 + 3) = &protocol witness table for MainActor;
        *(v39 + 4) = v68;
        v28(&v39[v38], v31, v33);
        sub_10002CFC4(v69, v70, &unk_100115E10, &qword_1000D27F0);
        v40 = (*(v36 + 48))(v70, 1, v35);

        v41 = *(v0 + 280);
        if (v40 == 1)
        {
          sub_10002D02C(*(v0 + 280), &unk_100115E10, &qword_1000D27F0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v36 + 8))(v41, v35);
        }

        v43 = *(v39 + 2);
        v42 = *(v39 + 3);
        swift_unknownObjectRetain();

        if (v43)
        {
          swift_getObjectType();
          v44 = dispatch thunk of Actor.unownedExecutor.getter();
          v46 = v45;
          swift_unknownObjectRelease();
        }

        else
        {
          v44 = 0;
          v46 = 0;
        }

        sub_10002D02C(*(v0 + 288), &unk_100115E10, &qword_1000D27F0);
        v47 = swift_allocObject();
        *(v47 + 16) = &unk_1000D4E18;
        *(v47 + 24) = v39;
        if (v46 | v44)
        {
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v44;
          *(v0 + 40) = v46;
        }

        v48 = *(v0 + 328);
        v50 = *(v0 + 296);
        v49 = *(v0 + 304);
        swift_task_create();

        (*(v49 + 8))(v48, v50);
      }

      else
      {
        (*(*(v0 + 304) + 8))(*(v0 + 328), *(v0 + 296));
      }
    }

    static Task<>.checkCancellation()();
    v51 = *(v0 + 272);
    v52 = *(v0 + 248);
    v53 = *(v0 + 256);
    v55 = *(v0 + 232);
    v54 = *(v0 + 240);
    v56 = *(v0 + 224);
    v57 = static Duration.seconds(_:)();
    v59 = v58;
    static Clock<>.continuous.getter();
    *(v0 + 176) = v57;
    *(v0 + 184) = v59;
    *(v0 + 128) = 0;
    *(v0 + 120) = 0;
    *(v0 + 136) = 1;
    v60 = sub_100075748(&qword_100117148, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100075748(&qword_100117150, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v61 = *(v55 + 8);
    *(v0 + 424) = v61;
    *(v0 + 432) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v61(v54, v56);
    v62 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v63 = swift_task_alloc();
    *(v0 + 440) = v63;
    *v63 = v0;
    v63[1] = sub_100073048;
    v64 = *(v0 + 272);
    v66 = *(v0 + 248);
    v65 = *(v0 + 256);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v66, v0 + 120, v65, v60);
  }
}

uint64_t sub_100072860()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = v2[50];
  (*(v2[43] + 8))(v2[44], v2[42]);

  if (v0)
  {
    v6 = sub_100073AC8;
  }

  else
  {
    v6 = sub_1000729E4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000729E4()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v6 = *(v0 + 296);
  sub_10002D02C(v5, &qword_100117130, &unk_1000D4DD0);
  v2(v4, 0, 1, v6);
  sub_10002C7C4(v4, v5, &qword_100117130, &unk_1000D4DD0);
  v7 = *(v0 + 360);
  v8 = *(v0 + 296);
  v9 = *(v0 + 304);
  sub_10002CFC4(*(v0 + 376), v7, &qword_100117130, &unk_1000D4DD0);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = *(v0 + 360);
  if (v10 == 1)
  {
    sub_10002D02C(*(v0 + 360), &qword_100117130, &unk_1000D4DD0);
    static Task<>.checkCancellation()();
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = *(v0 + 200);
    v13 = *(*(v0 + 304) + 32);
    v13(*(v0 + 328), *(v0 + 360), *(v0 + 296));
    Strong = swift_weakLoadStrong();
    v15 = *(v0 + 328);
    if (Strong)
    {
      v65 = v1;
      v16 = *(v0 + 320);
      v17 = *(v0 + 296);
      v18 = *(v0 + 304);
      v19 = *(v0 + 288);
      v61 = v19;
      v62 = *(v0 + 280);
      v60 = *(v0 + 216);
      v20 = type metadata accessor for TaskPriority();
      v21 = *(v20 - 8);
      (*(v21 + 56))(v19, 1, 1, v20);
      (*(v18 + 16))(v16, v15, v17);
      type metadata accessor for MainActor();

      v22 = static MainActor.shared.getter();
      v23 = (*(v18 + 80) + 40) & ~*(v18 + 80);
      v24 = swift_allocObject();
      *(v24 + 2) = v22;
      *(v24 + 3) = &protocol witness table for MainActor;
      *(v24 + 4) = v60;
      v13(&v24[v23], v16, v17);
      sub_10002CFC4(v61, v62, &unk_100115E10, &qword_1000D27F0);
      LODWORD(v17) = (*(v21 + 48))(v62, 1, v20);

      v25 = *(v0 + 280);
      if (v17 == 1)
      {
        sub_10002D02C(*(v0 + 280), &unk_100115E10, &qword_1000D27F0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v21 + 8))(v25, v20);
      }

      v43 = *(v24 + 2);
      v42 = *(v24 + 3);
      swift_unknownObjectRetain();

      if (v43)
      {
        swift_getObjectType();
        v44 = dispatch thunk of Actor.unownedExecutor.getter();
        v46 = v45;
        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      sub_10002D02C(*(v0 + 288), &unk_100115E10, &qword_1000D27F0);
      v47 = swift_allocObject();
      *(v47 + 16) = &unk_1000D4E18;
      *(v47 + 24) = v24;
      if (v46 | v44)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v44;
        *(v0 + 40) = v46;
      }

      v48 = *(v0 + 328);
      v49 = *(v0 + 296);
      v50 = *(v0 + 304);
      swift_task_create();

      (*(v50 + 8))(v48, v49);
      static Task<>.checkCancellation()();
      if (!v65)
      {
        goto LABEL_8;
      }
    }

    else
    {
      (*(*(v0 + 304) + 8))(*(v0 + 328), *(v0 + 296));
      static Task<>.checkCancellation()();
      if (!v1)
      {
LABEL_8:
        v26 = *(v0 + 272);
        v27 = *(v0 + 248);
        v28 = *(v0 + 256);
        v30 = *(v0 + 232);
        v29 = *(v0 + 240);
        v31 = *(v0 + 224);
        v32 = static Duration.seconds(_:)();
        v34 = v33;
        static Clock<>.continuous.getter();
        *(v0 + 176) = v32;
        *(v0 + 184) = v34;
        *(v0 + 128) = 0;
        *(v0 + 120) = 0;
        *(v0 + 136) = 1;
        v35 = sub_100075748(&qword_100117148, &type metadata accessor for ContinuousClock);
        dispatch thunk of Clock.now.getter();
        sub_100075748(&qword_100117150, &type metadata accessor for ContinuousClock.Instant);
        dispatch thunk of InstantProtocol.advanced(by:)();
        v36 = *(v30 + 8);
        *(v0 + 424) = v36;
        *(v0 + 432) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v36(v29, v31);
        v37 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
        v38 = swift_task_alloc();
        *(v0 + 440) = v38;
        *v38 = v0;
        v38[1] = sub_100073048;
        v39 = *(v0 + 272);
        v41 = *(v0 + 248);
        v40 = *(v0 + 256);

        return dispatch thunk of Clock.sleep(until:tolerance:)(v41, v0 + 120, v40, v35);
      }
    }
  }

  v51 = *(v0 + 368);
  v53 = *(v0 + 352);
  v52 = *(v0 + 360);
  v55 = *(v0 + 320);
  v54 = *(v0 + 328);
  v57 = *(v0 + 280);
  v56 = *(v0 + 288);
  v63 = *(v0 + 272);
  v64 = *(v0 + 248);
  v66 = *(v0 + 240);
  sub_10002D02C(*(v0 + 376), &qword_100117130, &unk_1000D4DD0);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_100073048()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v10 = *v1;
  *(*v1 + 448) = v0;

  v4 = *(v2 + 432);
  if (v0)
  {
    (*(v2 + 424))(*(v2 + 248), *(v2 + 224));
    v5 = sub_1000739A0;
  }

  else
  {
    v7 = *(v2 + 264);
    v6 = *(v2 + 272);
    v8 = *(v2 + 256);
    (*(v2 + 424))(*(v2 + 248), *(v2 + 224));
    (*(v7 + 8))(v6, v8);
    v5 = sub_1000731A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000731A0()
{
  sub_10002D02C(*(v0 + 376), &qword_100117130, &unk_1000D4DD0);
  if (static Task<>.isCancelled.getter())
  {
    v2 = *(v0 + 368);
    v1 = *(v0 + 376);
    v4 = *(v0 + 352);
    v3 = *(v0 + 360);
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = *(v0 + 272);
    v10 = *(v0 + 248);
    v88 = *(v0 + 240);

    v11 = *(v0 + 8);
LABEL_3:

    return v11();
  }

  v13 = *(v0 + 448);
  v14 = *(v0 + 376);
  v15 = *(v0 + 384);
  v16 = *(v0 + 296);
  v17 = *(v0 + 200);
  *(v0 + 392) = (*(v0 + 304) + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v14, 1, 1, v16);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = *(v0 + 352);
    v20 = *(v0 + 296);
    *(v0 + 400) = *(Strong + 16);

    static WeatherQuery.current.getter();
    v21 = async function pointer to WeatherService.weather<A>(for:including:)[1];
    v22 = swift_task_alloc();
    *(v0 + 408) = v22;
    *v22 = v0;
    v22[1] = sub_100072860;
    v23 = *(v0 + 368);
    v24 = *(v0 + 352);
    v25 = *(v0 + 296);
    v26 = *(v0 + 208);

    return WeatherService.weather<A>(for:including:)(v23, v26, v24, v25);
  }

  v27 = *(v0 + 384);
  v28 = *(v0 + 392);
  v29 = *(v0 + 368);
  v30 = *(v0 + 376);
  v31 = *(v0 + 296);
  sub_10002D02C(v30, &qword_100117130, &unk_1000D4DD0);
  v27(v29, 1, 1, v31);
  sub_10002C7C4(v29, v30, &qword_100117130, &unk_1000D4DD0);
  v32 = *(v0 + 360);
  v33 = *(v0 + 296);
  v34 = *(v0 + 304);
  sub_10002CFC4(*(v0 + 376), v32, &qword_100117130, &unk_1000D4DD0);
  v35 = (*(v34 + 48))(v32, 1, v33);
  v36 = *(v0 + 360);
  if (v35 == 1)
  {
    sub_10002D02C(*(v0 + 360), &qword_100117130, &unk_1000D4DD0);
    static Task<>.checkCancellation()();
    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_27:
    v76 = *(v0 + 368);
    v78 = *(v0 + 352);
    v77 = *(v0 + 360);
    v80 = *(v0 + 320);
    v79 = *(v0 + 328);
    v82 = *(v0 + 280);
    v81 = *(v0 + 288);
    v86 = *(v0 + 272);
    v87 = *(v0 + 248);
    v90 = *(v0 + 240);
    sub_10002D02C(*(v0 + 376), &qword_100117130, &unk_1000D4DD0);

    v11 = *(v0 + 8);
    goto LABEL_3;
  }

  v37 = *(v0 + 200);
  v38 = *(*(v0 + 304) + 32);
  v38(*(v0 + 328), *(v0 + 360), *(v0 + 296));
  v39 = swift_weakLoadStrong();
  v40 = *(v0 + 328);
  if (v39)
  {
    v89 = v13;
    v41 = *(v0 + 320);
    v42 = *(v0 + 296);
    v43 = *(v0 + 304);
    v44 = *(v0 + 288);
    v84 = v44;
    v85 = *(v0 + 280);
    v83 = *(v0 + 216);
    v45 = type metadata accessor for TaskPriority();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v44, 1, 1, v45);
    (*(v43 + 16))(v41, v40, v42);
    type metadata accessor for MainActor();

    v47 = static MainActor.shared.getter();
    v48 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v49 = swift_allocObject();
    *(v49 + 2) = v47;
    *(v49 + 3) = &protocol witness table for MainActor;
    *(v49 + 4) = v83;
    v38(&v49[v48], v41, v42);
    sub_10002CFC4(v84, v85, &unk_100115E10, &qword_1000D27F0);
    LODWORD(v42) = (*(v46 + 48))(v85, 1, v45);

    v50 = *(v0 + 280);
    if (v42 == 1)
    {
      sub_10002D02C(*(v0 + 280), &unk_100115E10, &qword_1000D27F0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v46 + 8))(v50, v45);
    }

    v68 = *(v49 + 2);
    v67 = *(v49 + 3);
    swift_unknownObjectRetain();

    if (v68)
    {
      swift_getObjectType();
      v69 = dispatch thunk of Actor.unownedExecutor.getter();
      v71 = v70;
      swift_unknownObjectRelease();
    }

    else
    {
      v69 = 0;
      v71 = 0;
    }

    sub_10002D02C(*(v0 + 288), &unk_100115E10, &qword_1000D27F0);
    v72 = swift_allocObject();
    *(v72 + 16) = &unk_1000D4E18;
    *(v72 + 24) = v49;
    if (v71 | v69)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v69;
      *(v0 + 40) = v71;
    }

    v73 = *(v0 + 328);
    v74 = *(v0 + 296);
    v75 = *(v0 + 304);
    swift_task_create();

    (*(v75 + 8))(v73, v74);
    static Task<>.checkCancellation()();
    if (!v89)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  (*(*(v0 + 304) + 8))(*(v0 + 328), *(v0 + 296));
  static Task<>.checkCancellation()();
  if (v13)
  {
    goto LABEL_27;
  }

LABEL_17:
  v51 = *(v0 + 272);
  v52 = *(v0 + 248);
  v53 = *(v0 + 256);
  v55 = *(v0 + 232);
  v54 = *(v0 + 240);
  v56 = *(v0 + 224);
  v57 = static Duration.seconds(_:)();
  v59 = v58;
  static Clock<>.continuous.getter();
  *(v0 + 176) = v57;
  *(v0 + 184) = v59;
  *(v0 + 128) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 1;
  v60 = sub_100075748(&qword_100117148, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100075748(&qword_100117150, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v61 = *(v55 + 8);
  *(v0 + 424) = v61;
  *(v0 + 432) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61(v54, v56);
  v62 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v63 = swift_task_alloc();
  *(v0 + 440) = v63;
  *v63 = v0;
  v63[1] = sub_100073048;
  v64 = *(v0 + 272);
  v66 = *(v0 + 248);
  v65 = *(v0 + 256);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v66, v0 + 120, v65, v60);
}

uint64_t sub_1000739A0()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  v1 = v0[46];
  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[34];
  v11 = v0[31];
  v12 = v0[30];
  v13 = v0[56];
  sub_10002D02C(v0[47], &qword_100117130, &unk_1000D4DD0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100073AC8()
{
  v1 = *(v0 + 416);
  v2 = objc_opt_self();
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v3 = *(v0 + 168);

  *(v0 + 144) = 0xD00000000000001CLL;
  *(v0 + 152) = 0x80000001000DAB30;
  swift_getErrorValue();
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v7);

  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = String._bridgeToObjectiveC()();

  [v2 logInfo:v10];

  v11 = *(v0 + 360);
  v12 = *(v0 + 296);
  v13 = *(v0 + 304);
  sub_10002CFC4(*(v0 + 376), v11, &qword_100117130, &unk_1000D4DD0);
  v14 = (*(v13 + 48))(v11, 1, v12);
  v15 = *(v0 + 360);
  if (v14 == 1)
  {
    sub_10002D02C(*(v0 + 360), &qword_100117130, &unk_1000D4DD0);
  }

  else
  {
    v16 = *(v0 + 200);
    v17 = *(*(v0 + 304) + 32);
    v17(*(v0 + 328), *(v0 + 360), *(v0 + 296));
    Strong = swift_weakLoadStrong();
    v19 = *(v0 + 328);
    if (Strong)
    {
      v58 = v17;
      v20 = *(v0 + 320);
      v22 = *(v0 + 296);
      v21 = *(v0 + 304);
      v23 = *(v0 + 288);
      v57 = v23;
      v59 = *(v0 + 280);
      v56 = *(v0 + 216);
      v24 = type metadata accessor for TaskPriority();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v23, 1, 1, v24);
      (*(v21 + 16))(v20, v19, v22);
      type metadata accessor for MainActor();

      v26 = static MainActor.shared.getter();
      v27 = (*(v21 + 80) + 40) & ~*(v21 + 80);
      v28 = swift_allocObject();
      *(v28 + 2) = v26;
      *(v28 + 3) = &protocol witness table for MainActor;
      *(v28 + 4) = v56;
      v58(&v28[v27], v20, v22);
      sub_10002CFC4(v57, v59, &unk_100115E10, &qword_1000D27F0);
      LODWORD(v20) = (*(v25 + 48))(v59, 1, v24);

      v29 = *(v0 + 280);
      if (v20 == 1)
      {
        sub_10002D02C(*(v0 + 280), &unk_100115E10, &qword_1000D27F0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v25 + 8))(v29, v24);
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      swift_unknownObjectRetain();

      if (v31)
      {
        swift_getObjectType();
        v32 = dispatch thunk of Actor.unownedExecutor.getter();
        v34 = v33;
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      sub_10002D02C(*(v0 + 288), &unk_100115E10, &qword_1000D27F0);
      v35 = swift_allocObject();
      *(v35 + 16) = &unk_1000D4E18;
      *(v35 + 24) = v28;
      if (v34 | v32)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v32;
        *(v0 + 40) = v34;
      }

      v36 = *(v0 + 328);
      v37 = *(v0 + 296);
      v38 = *(v0 + 304);
      swift_task_create();

      (*(v38 + 8))(v36, v37);
    }

    else
    {
      (*(*(v0 + 304) + 8))(*(v0 + 328), *(v0 + 296));
    }
  }

  static Task<>.checkCancellation()();
  v39 = *(v0 + 272);
  v40 = *(v0 + 248);
  v41 = *(v0 + 256);
  v43 = *(v0 + 232);
  v42 = *(v0 + 240);
  v44 = *(v0 + 224);
  v45 = static Duration.seconds(_:)();
  v47 = v46;
  static Clock<>.continuous.getter();
  *(v0 + 176) = v45;
  *(v0 + 184) = v47;
  *(v0 + 128) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 1;
  v48 = sub_100075748(&qword_100117148, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100075748(&qword_100117150, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v49 = *(v43 + 8);
  *(v0 + 424) = v49;
  *(v0 + 432) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49(v42, v44);
  v50 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v51 = swift_task_alloc();
  *(v0 + 440) = v51;
  *v51 = v0;
  v51[1] = sub_100073048;
  v52 = *(v0 + 272);
  v54 = *(v0 + 248);
  v53 = *(v0 + 256);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v54, v0 + 120, v53, v48);
}

uint64_t sub_100074198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000742A4, v10, v9);
}

uint64_t sub_1000742A4()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  swift_getKeyPath();
  v0[2] = v5;
  sub_100075748(&qword_100114C68, type metadata accessor for WeatherDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v5 + 56);
  CurrentWeather.temperature.getter();
  v6 = Measurement.unit.getter();
  v7 = sub_1000744D4();
  sub_10002BB3C(0, &qword_100117110, NSUnitTemperature_ptr);
  LOBYTE(v5) = static NSObject.== infix(_:_:)();

  if (v5)
  {
    (*(v0[6] + 16))(v0[7], v0[8], v0[5]);
  }

  else
  {
    v8 = v0[5];
    v9 = sub_1000744D4();
    Measurement<>.converted(to:)();
  }

  v10 = v0[7];
  v11 = v0[5];
  v12 = v0[3];
  v21 = v0[4];
  v13 = *(v0[6] + 8);
  v13(v0[8], v11);
  v14 = NSMeasurementFormatter.string<A>(from:)();
  v16 = v15;

  v13(v10, v11);
  sub_10006D834(v14, v16);
  v17 = CurrentWeather.symbolName.getter();
  sub_10006DE10(v17, v18);

  v19 = v0[1];

  return v19();
}

id sub_1000744D4()
{
  v0 = type metadata accessor for Locale.MeasurementSystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() _preferredTemperatureUnit];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {

LABEL_9:

      v21 = [objc_opt_self() celsius];
      goto LABEL_18;
    }

    v30 = v1;
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_9;
    }

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v30;
    if (v15 == v22 && v17 == v23)
    {

LABEL_14:
      v21 = [objc_opt_self() fahrenheit];
      goto LABEL_18;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_14;
    }
  }

  static Locale.current.getter();
  Locale.measurementSystem.getter();
  (*(v9 + 8))(v12, v8);
  static Locale.MeasurementSystem.us.getter();
  v25 = static Locale.MeasurementSystem.== infix(_:_:)();
  v26 = *(v1 + 8);
  v26(v5, v0);
  v26(v7, v0);
  v27 = objc_opt_self();
  if (v25)
  {
    v21 = [v27 fahrenheit];
  }

  else
  {
    v21 = [v27 celsius];
  }

LABEL_18:

  return v21;
}

uint64_t sub_100074820()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_1000032D4(&qword_100116618, &qword_1000D3BD0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_10002CFC4(a1, &v24 - v16, &qword_100116610, &qword_1000D3BC8);
  sub_10002CFC4(a2, &v17[v18], &qword_100116610, &qword_1000D3BC8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_10002CFC4(v17, v12, &qword_100116610, &qword_1000D3BC8);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_10002DAD8(&qword_100116630, &qword_100116608, &qword_1000D3BC0);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_10002D02C(v17, &qword_100116610, &qword_1000D3BC8);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_10002D02C(v17, &qword_100116618, &qword_1000D3BD0);
    v20 = 1;
    return v20 & 1;
  }

  sub_10002D02C(v17, &qword_100116610, &qword_1000D3BC8);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100074B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074C5C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 72);
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;

  return sub_10006D400();
}

uint64_t sub_100074CC8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_100074D10()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 104);
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

void sub_100074D50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

uint64_t sub_100074D90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100074DC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100074E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100031D4C;

  return sub_100070FD0(a1, v4, v5, v6);
}

uint64_t sub_100074EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100116628, &qword_1000D3BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocationResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074F90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100074FF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100075040(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100071E44(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100075108()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_100075144()
{
  v1 = type metadata accessor for CurrentWeather();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100075210(uint64_t a1)
{
  v4 = *(type metadata accessor for CurrentWeather() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100031D4C;

  return sub_100074198(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100075324()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 88);
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;

  return sub_10006D998();
}

uint64_t sub_100075390(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1000753D8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC10ClockAngel19WeatherDataProvider__weatherSymbolName);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100075424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocationResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000754E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000755C4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100075748(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100075938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100075990@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = type metadata accessor for Alarm();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_100075B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10007E254(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002D02C(v12, &unk_100115E10, &qword_1000D27F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10002D02C(a3, &unk_100115E10, &qword_1000D27F0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002D02C(a3, &unk_100115E10, &qword_1000D27F0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100075E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10007E254(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002D02C(v11, &unk_100115E10, &qword_1000D27F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10002D02C(a3, &unk_100115E10, &qword_1000D27F0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002D02C(a3, &unk_100115E10, &qword_1000D27F0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100076124()
{
  [objc_allocWithZone(MTAlarmManager) init];
  v1 = type metadata accessor for AlarmsViewModel();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = AlarmsViewModel.init(manager:delegate:)();
  sub_10007E734(&qword_100117458, v4, type metadata accessor for AlarmCoordinator);

  dispatch thunk of AlarmsViewModel.updateDelegate(_:)();

  v5 = objc_opt_self();
  _StringGuts.grow(_:)(19);
  v6._countAndFlagsBits = 0x696C616974696E49;
  v6._object = 0xED000020676E697ALL;
  String.append(_:)(v6);
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 774778400;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v5 logInfo:v8];

  return v0;
}

uint64_t sub_1000762C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_10007637C;

  return sub_1000765F0(a5, a6);
}

uint64_t sub_10007637C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_10007647C, 0, 0);
}

uint64_t sub_10007647C()
{
  v1 = v0[9];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v5 = objc_opt_self();
    _StringGuts.grow(_:)(39);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v0[4] = v4;
    type metadata accessor for AlarmCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v6._object = 0x80000001000DAFB0;
    v6._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v3;
    v7._object = v2;
    String.append(_:)(v7);
    v8 = v0[2];
    v9 = v0[3];
    v10 = String._bridgeToObjectiveC()();

    [v5 logInfo:v10];

    sub_10007E92C(v1, &AlarmPresentationState.init(_:), &qword_100113600, &qword_10011F3B0);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000765F0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_100076614, 0, 0);
}

uint64_t sub_100076614()
{
  v0[8] = *(v0[7] + 16);
  v1 = *(&async function pointer to dispatch thunk of AlarmsViewModel.getAlarm(_:includingSleepAlarm:) + 1);
  v6 = (&async function pointer to dispatch thunk of AlarmsViewModel.getAlarm(_:includingSleepAlarm:) + async function pointer to dispatch thunk of AlarmsViewModel.getAlarm(_:includingSleepAlarm:));

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1000766DC;
  v4 = v0[5];
  v3 = v0[6];

  return v6(v4, v3, 1);
}

uint64_t sub_1000766DC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 72);
  v7 = *v2;

  v8 = *(v4 + 64);
  if (v1)
  {

    v9 = sub_100076968;
  }

  else
  {

    *(v5 + 80) = a1;
    v9 = sub_100076830;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100076830()
{
  v1 = v0[10];
  if (!v1)
  {
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[5];
    v5 = objc_opt_self();
    _StringGuts.grow(_:)(34);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v0[4] = v3;
    type metadata accessor for AlarmCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v6._object = 0x80000001000DB040;
    v6._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v4;
    v7._object = v2;
    String.append(_:)(v7);
    v8 = v0[2];
    v9 = v0[3];
    v10 = String._bridgeToObjectiveC()();

    [v5 logError:v10];
  }

  v11 = v0[1];

  return v11(v1);
}

uint64_t sub_100076968()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(34);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = v2;
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x80000001000DB040;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v3;
  v6._object = v1;
  String.append(_:)(v6);
  v7 = v0[2];
  v8 = v0[3];
  v9 = String._bridgeToObjectiveC()();

  [v4 logError:v9];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_100076AA0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v18 = v2;
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001000DB010;
  v11._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v10 logInfo:v13];

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  sub_100075E54(0, 0, v9, &unk_1000D5168, v15);
}

uint64_t sub_100076C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100076CA4, 0, 0);
}

uint64_t sub_100076CA4()
{
  v0[5] = *(v0[2] + 16);
  v1 = *(&async function pointer to dispatch thunk of AlarmsViewModel.dismissAlarm(_:) + 1);
  v6 = (&async function pointer to dispatch thunk of AlarmsViewModel.dismissAlarm(_:) + async function pointer to dispatch thunk of AlarmsViewModel.dismissAlarm(_:));

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100076D68;
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v3);
}

uint64_t sub_100076D68()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007F0A4, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100076EA4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v18 = v2;
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001000DAFE0;
  v11._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v10 logInfo:v13];

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  sub_100075E54(0, 0, v9, &unk_1000D5158, v15);
}

uint64_t sub_100077084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000770A8, 0, 0);
}

uint64_t sub_1000770A8()
{
  v0[5] = *(v0[2] + 16);
  v1 = *(&async function pointer to dispatch thunk of AlarmsViewModel.dismissSnoozedAlarm(_:) + 1);
  v6 = (&async function pointer to dispatch thunk of AlarmsViewModel.dismissSnoozedAlarm(_:) + async function pointer to dispatch thunk of AlarmsViewModel.dismissSnoozedAlarm(_:));

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10007716C;
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v3);
}

uint64_t sub_10007716C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000772A8, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000772A8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_10007730C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v18 = v2;
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001000DAF80;
  v11._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13 = String._bridgeToObjectiveC()();

  [v10 logInfo:v13];

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v3;
  v15[5] = a1;
  v15[6] = a2;

  sub_100075E54(0, 0, v9, &unk_1000D5138, v15);
}

uint64_t sub_1000774EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_1000032D4(&unk_100115E10, &qword_1000D27F0) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_10007758C, 0, 0);
}

uint64_t sub_10007758C()
{
  v0[6] = *(v0[2] + 16);
  v1 = *(&async function pointer to dispatch thunk of AlarmsViewModel.snoozeAlarm(_:) + 1);
  v6 = (&async function pointer to dispatch thunk of AlarmsViewModel.snoozeAlarm(_:) + async function pointer to dispatch thunk of AlarmsViewModel.snoozeAlarm(_:));

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_100077650;
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v3);
}

uint64_t sub_100077650()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100077888;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10007776C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10007776C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_100075B64(0, 0, v2, &unk_1000D3290, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100077888()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1000778F4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100077950(unint64_t a1)
{
  v15 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_18:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if ([v5 isSnoozed] & 1) != 0 || (objc_msgSend(v6, "isFiring"))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v4 = *(v15 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
      }

      while (v7 != v2);
      v8 = v15;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v8 = &_swiftEmptyArrayStorage;
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
LABEL_20:
    if ((v8 & 0x4000000000000000) == 0)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

LABEL_32:
  while (1)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      break;
    }

LABEL_22:
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          goto LABEL_31;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = v11;
      sub_100077B54(&v15);

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

LABEL_33:
}

uint64_t sub_100077B54(void **a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(29);
  type metadata accessor for AlarmCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v3._object = 0x80000001000DAC90;
  v3._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v3);
  v4 = [v1 alarmIDString];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8236;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v10 = [v1 debugDescription];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15 = String._bridgeToObjectiveC()();

  [v2 logDebug:v15];

  return sub_10007E92C(v1, &AlarmPresentationState.init(_:), &qword_100113600, &qword_10011F3B0);
}