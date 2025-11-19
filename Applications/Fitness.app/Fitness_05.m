uint64_t sub_10007DA88()
{

  return _swift_deallocObject(v0, 33, 7);
}

char *sub_10007DADC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10007DD88(v5, 0);
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
        v7 = sub_10007DD88(v10, 0);
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

uint64_t sub_10007DC0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007DC74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007DCDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t sub_10007DD44(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE3F8, &unk_1006D7B58, type metadata accessor for TrendListMetric);
  *v3 = result;
  return result;
}

void *sub_10007DD88(uint64_t a1, uint64_t a2)
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

  sub_100140278(&qword_1008E8640);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_10007DDFC(uint64_t result)
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

  result = sub_10031728C(result, v11, 1, v3);
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

uint64_t sub_10007DEFC()
{

  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_10007DF60, v1, v2);
}

uint64_t sub_10007DF60()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v22 = v0[19];
  v23 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v19 = v0[15];
  v17 = v0[20];
  v16 = v0[14];
  v5 = type metadata accessor for OSSignposter();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000059F8(0, &qword_1008E3FD0);
  v18 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001B104(v1, v2, &unk_1008EE810);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  sub_100015E80(v2, v9 + v7, &unk_1008EE810);
  *(v9 + v8) = 0;
  *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v0[6] = sub_100479654;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000449A8;
  v0[5] = &unk_10085C248;
  v10 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[12] = _swiftEmptyArrayStorage;
  sub_100026E98(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v21 + 8))(v20, v19);
  (*(v22 + 8))(v17, v23);
  sub_10000EA04(v1, &unk_1008EE810);
  v11 = static MainActor.shared.getter();
  v0[43] = v11;
  if (v11)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[44] = v12;
  v0[45] = v14;

  return _swift_task_switch(sub_10007E3BC, v12, v14);
}

uint64_t sub_10007E2F8()
{
  v1 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0[5] = v0[2];

  return _swift_task_switch(sub_100044BF8, v1, 0);
}

uint64_t sub_10007E3BC()
{
  v1 = v0[43];
  v0[46] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10014A6B0(&qword_1008EE8A0, &qword_1008EE880);
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_10007A834;
  v3 = v0[25];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10007E4C0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for OSSignpostError();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&unk_1008EE810);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for OSSignposter();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B104(a1, v11, &unk_1008EE810);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10000EA04(v11, &unk_1008EE810);
  }

  (*(v13 + 32))(v15, v11, v12);
  if (v26)
  {

    v17 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v18 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v19 = v23;
      if ((*(v23 + 88))(v5, v3) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 8))(v5, v3);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v22, "addCardTest", v20, v21, 2u);
    }

    else
    {
    }

    (*(v24 + 8))(v8, v25);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10007E890()
{
  v1 = *(sub_100140278(&unk_1008EE810) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10007E4C0(v0 + v2, v3);
}

void sub_10007E928()
{
  v1 = *(sub_100140278(&unk_1008EE810) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10006A6A0(v3, v0 + v2, v4);
}

id sub_10007E9D4(char a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter);
  if ((a1 & 1) == 0)
  {
    result = [*(v2 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) localizedShortUnitStringForDistanceType:1];
    if (result)
    {
      v8 = result;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  result = [*(v2 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) unitManager];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = [result userDistanceUnitForDistanceType:1];

  result = [v3 localizedLongUnitStringForDistanceUnit:v7 distanceInUnit:a2];
  if (result)
  {
    v8 = result;
LABEL_7:
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [objc_opt_self() mainBundle];
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 localizedStringForKey:v13 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006D46C0;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10000A788();
    *(v15 + 32) = v9;
    *(v15 + 40) = v11;
    v16 = static String.localizedStringWithFormat(_:_:)();

    return v16;
  }

LABEL_10:
  __break(1u);
  return result;
}

Swift::Int sub_10007EC1C()
{
  v1 = v0;
  Hasher.init()();
  v2 = type metadata accessor for TrendsCard();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = *(v3 + 16);
  sub_100035B30(*v3, *(v3 + 16));
  String.hash(into:)();

  if (!v5 || v5 == 2)
  {
    Hasher._combine(_:)(v4);
  }

  else if (v5 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + v2[6]));
  Hasher._combine(_:)(*(v1 + v2[7]));
  sub_1000728E0(*(v1 + v2[9]), *(v1 + v2[9] + 8));
  String.hash(into:)();

  return Hasher.finalize()();
}

uint64_t sub_10007ED3C(uint64_t a1)
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

uint64_t sub_10007ED58()
{
  sub_10007EDB0();

  return swift_deallocClassInstance();
}

uint64_t sub_10007EDB0()
{
  v1 = OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10001D4F8(*(v0 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_type), *(v0 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_type + 8), *(v0 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_type + 16));

  return v0;
}

uint64_t sub_10007EEA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BBC0;

  return sub_10007EF60(a1, v4);
}

uint64_t sub_10007EF60(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100081808;

  return v5(v2 + 32);
}

uint64_t sub_10007F054(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10007F108(a1, v4, v5, v6);
}

uint64_t sub_10007F108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_10007F1A0, v6, v5);
}

uint64_t sub_10007F1A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100081654;

    return sub_10007F2A4();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10007F2A4()
{
  v1[21] = v0;
  v2 = type metadata accessor for Calendar();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for DayIndex();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  sub_100140278(&qword_1008E04A8);
  v1[28] = swift_task_alloc();
  v4 = type metadata accessor for GregorianDayRange();
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[33] = v5;
  v1[34] = *(v5 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v6 = type metadata accessor for DispatchPredicate();
  v1[37] = v6;
  v1[38] = *(v6 - 8);
  v1[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[40] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[41] = v8;
  v1[42] = v7;

  return _swift_task_switch(sub_10007F558, v8, v7);
}

uint64_t sub_10007F558()
{
  v68 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  sub_1000059F8(0, &qword_1008E3FD0);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v4 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v6 = v0[21];
  v7 = *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider_historyDataProvider);
  if ((*(v7 + OBJC_IVAR___CHHistoryDataProvider_hasInitialWorkouts) != 1 || (*(v7 + OBJC_IVAR___CHHistoryDataProvider_hasInitialMindfulnessSessions) & 1) == 0) && (*(v7 + OBJC_IVAR___CHHistoryDataProvider_shouldForceReload) & 1) == 0)
  {
    v10 = (v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__isFetchingWorkouts);
    v9 = 1;
    if ((*(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__isFetchingWorkouts) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v10 = v9;
    goto LABEL_10;
  }

  v8 = [*(v7 + OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider) isRetrying];
  v9 = v8;
  v10 = (v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__isFetchingWorkouts);
  if (v8 == *(v6 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__isFetchingWorkouts))
  {
    goto LABEL_8;
  }

  v6 = v0[21];
LABEL_9:
  swift_getKeyPath();
  v11 = swift_task_alloc();
  *(v11 + 16) = v6;
  *(v11 + 24) = v9;
  v0[15] = v6;
  sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_10:
  v12 = *(v7 + OBJC_IVAR___CHHistoryDataProvider_lock);
  v13 = swift_task_alloc();
  *(v13 + 16) = v7;
  v14 = swift_task_alloc();
  *(v14 + 16) = sub_1001DF08C;
  *(v14 + 24) = v13;
  os_unfair_lock_lock(v12 + 4);
  sub_1001DF0A8(v67);
  os_unfair_lock_unlock(v12 + 4);
  v15 = v0[21];
  v16 = v67[0];

  v17 = *(v16 + 16);
  v0[43] = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider___observationRegistrar;
  v52 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  v53 = v15;
  swift_beginAccess();
  v51 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = v0[30];
    v20 = v0[26];
    result = v16 + 32;
    v48 = (v19 + 8);
    v49 = (v19 + 16);
    v47 = (v20 + 16);
    v46 = (v0[23] + 8);
    v44 = (v0[34] + 8);
    v45 = (v20 + 8);
    v21 = _swiftEmptyArrayStorage;
    v50 = v16;
    while (v18 < *(v16 + 16))
    {
      v65 = v21;
      v55 = v18;
      v63 = v0[36];
      v61 = v0[35];
      v22 = v0[32];
      v64 = v0[33];
      v24 = v0[28];
      v23 = v0[29];
      v58 = v0[27];
      v59 = v0[31];
      v66 = v0[25];
      v60 = v0[24];
      v25 = v0[21];
      v62 = v0[22];
      v54 = result;
      sub_100007C5C(result, (v0 + 2));
      v26 = v0[5];
      v27 = v0[6];
      sub_1000066AC(v0 + 2, v26);
      (*(v27 + 32))(v26, v27);
      swift_getKeyPath();
      v0[16] = v25;
      sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v57 = *v49;
      (*v49)(v22, v53 + v52, v23);
      GregorianDayRange.dayIndexRange.getter();
      v56 = *v48;
      (*v48)(v22, v23);
      (*v47)(v58, v24, v66);
      sub_10000EA04(v24, &qword_1008E04A8);
      swift_getKeyPath();
      v0[17] = v25;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v57(v59, v53 + v52, v23);
      GregorianDayRange.gregorianCalendar.getter();
      v56(v59, v23);
      DayIndex.startDate(in:)();
      (*v46)(v60, v62);
      (*v45)(v58, v66);
      sub_10007FF70(&qword_1008E4080, &type metadata accessor for Date);
      v28 = dispatch thunk of static Comparable.< infix(_:_:)();
      v29 = *v44;
      (*v44)(v61, v64);
      v29(v63, v64);
      v30 = (v0 + 2);
      if (v28)
      {
        sub_100005A40(v30);

        v21 = v65;
        goto LABEL_23;
      }

      sub_1001AB740(v30, (v0 + 7));
      v31 = v65;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67[0] = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100185DC4(0, *(v65 + 16) + 1, 1);
        v31 = v67[0];
      }

      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_100185DC4((v33 > 1), v34 + 1, 1);
      }

      v18 = v55 + 1;
      v35 = v0[10];
      v36 = v0[11];
      v37 = sub_1001DF03C((v0 + 7), v35);
      v38 = *(v35 - 8);
      v39 = swift_task_alloc();
      (*(v38 + 16))(v39, v37, v35);
      sub_10044FA40(v34, v39, v67, v35, v36);
      sub_100005A40((v0 + 7));

      v21 = v67[0];
      result = v54 + 40;
      v16 = v50;
      if (v51 == v55 + 1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_21:

LABEL_23:
  v40 = v0[21];
  swift_getKeyPath();
  v41 = swift_task_alloc();
  *(v41 + 16) = v40;
  *(v41 + 24) = v21;
  v0[18] = v40;
  v0[44] = sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v0[45] = 0;

  swift_getKeyPath();
  v0[19] = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v40 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsInDayRange);
  v0[46] = v42;

  v43 = swift_task_alloc();
  v0[47] = v43;
  *v43 = v0;
  v43[1] = sub_100080D58;

  return sub_100080124(v42);
}

uint64_t type metadata accessor for BalanceDataProvider()
{
  result = qword_1008E0478;
  if (!qword_1008E0478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007FF70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007FFB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100080000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100080048(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000800E0(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_100080124(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100080218, v5, v4);
}

uint64_t sub_100080218()
{
  v13 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  sub_1000059F8(0, &qword_1008E3FD0);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v2);
  v4 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v1, v2);
  if (v4)
  {
    v6 = v0[4];
    v7 = v0[5];
    swift_getKeyPath();
    v0[2] = v7;
    sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = sub_1000804E8(v6, *(v7 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter), *(v7 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsFilter + 8));

    sub_100080A64(&v12);
    v8 = v0[5];

    v9 = v12;
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v0[3] = v8;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v11 = v0[1];

    return v11();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000804E8(void *a1, void *a2, __int16 a3)
{
  v4 = a1;
  if ((a3 & 0xFF00) == 0x200)
  {

    return v4;
  }

  v7 = *(v3 + OBJC_IVAR___CHHistoryDataProvider_lock);
  v8 = __chkstk_darwin(a1);
  __chkstk_darwin(v8);
  os_unfair_lock_lock(v7 + 4);
  sub_1001DF0A8(v29);
  os_unfair_lock_unlock(v7 + 4);
  v9 = *&v29[0];
  *&v29[0] = v4;

  sub_1000808F8(v9);
  v10 = *&v29[0];
  v11 = *(*&v29[0] + 16);
  if (!v11)
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_15:

    return v4;
  }

  v12 = 0;
  v13 = *&v29[0] + 32;
  v4 = _swiftEmptyArrayStorage;
  v24 = *(*&v29[0] + 16);
  v25 = a2;
  while (v12 < *(v10 + 16))
  {
    sub_100007C5C(v13, v29);
    if (sub_1004493C4(v29, a2, a3))
    {
      sub_1001AB740(v29, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100185DC4(0, v4[2] + 1, 1);
        v4 = v30;
      }

      v16 = v4[2];
      v15 = v4[3];
      if (v16 >= v15 >> 1)
      {
        sub_100185DC4((v15 > 1), v16 + 1, 1);
      }

      v17 = v27;
      v18 = v28;
      v19 = sub_1001DF03C(v26, v27);
      __chkstk_darwin(v19);
      v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21);
      sub_10044FA40(v16, v21, &v30, v17, v18);
      sub_100005A40(v26);
      v4 = v30;
      v11 = v24;
      a2 = v25;
    }

    else
    {
      sub_100005A40(v29);
    }

    ++v12;
    v13 += 40;
    if (v11 == v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);

  sub_100005A40(v29);

  __break(1u);
  return result;
}

void *sub_1000807C8(void *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = result[2];
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= v6[3] >> 1)
  {
    if (v12[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v16 = v7 + v5;
  }

  else
  {
    v16 = v7;
  }

  result = sub_10008091C(result, v16, 1, v6, a2, a3, a4);
  v6 = result;
  if (!v12[2])
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100140278(a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v13 = v6[2];
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    v6[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10008091C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100140278(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

Swift::Int sub_100080A64(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100080AF4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100080C50(v5);
  *a1 = v2;
  return result;
}

void *sub_100080B08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100140278(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

Swift::Int sub_100080C50(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100140278(&unk_1008E4E60);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1001DDC94(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001DDA38(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100080D58()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return _swift_task_switch(sub_100080E9C, v3, v2);
}

uint64_t sub_100080E9C()
{
  v1 = v0[21];

  v2 = sub_10008105C();
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v0[20] = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008105C()
{
  v1 = v0;
  v27 = sub_100140278(&qword_1008E04A8) - 8;
  __chkstk_darwin(v27);
  v3 = v23 - v2;
  v26 = type metadata accessor for GregorianDayRange();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DayIndex();
  v7 = *(v25 - 8);
  v8 = __chkstk_darwin(v25);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v23 - v12;
  __chkstk_darwin(v11);
  v24 = v23 - v14;
  swift_getKeyPath();
  v23[1] = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider___observationRegistrar;
  v32 = v0;
  v23[0] = sub_10007FF70(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v16 = v26;
  (*(v4 + 16))(v6, v1 + v15, v26);
  GregorianDayRange.dayIndexRange.getter();
  (*(v4 + 8))(v6, v16);
  v17 = v25;
  (*(v7 + 16))(v13, &v3[*(v27 + 44)], v25);
  sub_10000EA04(v3, &qword_1008E04A8);
  DayIndex.init(integerLiteral:)();
  v18 = v24;
  static DayIndex.- infix(_:_:)();
  v19 = *(v7 + 8);
  v19(v10, v17);
  v19(v13, v17);
  swift_getKeyPath();
  v31 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v1 + OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsInDayRange);
  v29 = v18;
  v30 = v1;

  v21 = sub_100081418(sub_1001DEB60, v28, v20);
  v19(v18, v17);
  return v21;
}

uint64_t sub_100081418(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v21 = a2;
  v19 = *(a3 + 16);
  if (v19)
  {
    v5 = 0;
    v6 = a3 + 32;
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(a3 + 16))
    {
      sub_100007C5C(v6, v25);
      v8 = v20(v25);
      if (v3)
      {
        sub_100005A40(v25);

        goto LABEL_15;
      }

      if ((v8 & 1) == 0)
      {
        sub_100005A40(v25);
        goto LABEL_15;
      }

      sub_1001AB740(v25, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100185DC4(0, v7[2] + 1, 1);
        v7 = v26;
      }

      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100185DC4((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      v12 = v23;
      v13 = v24;
      v14 = sub_1001DF03C(v22, v23);
      __chkstk_darwin(v14);
      v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      sub_10044FA40(v11, v16, &v26, v12, v13);
      result = sub_100005A40(v22);
      v7 = v26;
      v6 += 40;
      if (v19 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_15:

    return v7;
  }

  return result;
}

uint64_t sub_100081654()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100081794, v4, v3);
}

uint64_t sub_100081794()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100081808()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10008192C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100081974()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000EA04(v3, &qword_1008EE870);
    v4 = v0[41];
    v5 = v0[42];

    return _swift_task_switch(sub_10046E234, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[28], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[48] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[49] = v8;
    *v8 = v0;
    v8[1] = sub_10046E348;
    v9 = v0[28];

    return (v11)(v0 + 50, v9);
  }
}

uint64_t sub_100081B34()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000EA04(v3, &qword_1008EE870);
    v4 = v0[41];
    v5 = v0[42];

    return _swift_task_switch(sub_10047964C, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[28], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[48] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[49] = v8;
    *v8 = v0;
    v8[1] = sub_10046FAA4;
    v9 = v0[28];

    return (v11)(v0 + 50, v9);
  }
}

uint64_t sub_100081CF4(char a1, Swift::Int a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(a2);

  v7._countAndFlagsBits = sub_10002A094(a1);
  String.append(_:)(v7);

  v8._countAndFlagsBits = a3;
  v8._object = a4;
  String.append(_:)(v8);
  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

uint64_t sub_100081E34()
{

  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_100081E98, v1, v2);
}

uint64_t sub_100081E98()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v22 = v0[19];
  v23 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v19 = v0[15];
  v17 = v0[20];
  v16 = v0[14];
  v5 = type metadata accessor for OSSignposter();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000059F8(0, &qword_1008E3FD0);
  v18 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001B104(v1, v2, &unk_1008EE810);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  sub_100015E80(v2, v9 + v7, &unk_1008EE810);
  *(v9 + v8) = 0;
  *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v0[6] = sub_100479654;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000449A8;
  v0[5] = &unk_10085C1A8;
  v10 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[12] = _swiftEmptyArrayStorage;
  sub_100026E98(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v21 + 8))(v20, v19);
  (*(v22 + 8))(v17, v23);
  sub_10000EA04(v1, &unk_1008EE810);
  v11 = static MainActor.shared.getter();
  v0[43] = v11;
  if (v11)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[44] = v12;
  v0[45] = v14;

  return _swift_task_switch(sub_100082230, v12, v14);
}

uint64_t sub_100082230()
{
  v1 = v0[43];
  v0[46] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10014A6B0(&qword_1008EE8A0, &qword_1008EE880);
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_10046F97C;
  v3 = v0[25];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_100082334()
{
  if (sub_10069AF38(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_10008239C()
{
  if (sub_10069AF38(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_10013FE70();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_100141D0C(&qword_1008DB010, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

uint64_t sub_100082494()
{
  if (sub_10069AF38(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_1000825F8()
{
  if (sub_10069AF38(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_100082828@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100082840(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100082884@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Aggregate(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Aggregate(uint64_t result, int a2, int a3)
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

uint64_t sub_100082990(uint64_t a1, int a2)
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

uint64_t sub_1000829B0(uint64_t result, int a2, int a3)
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

uint64_t sub_100082B98()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 232) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100082D0C()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100082DA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100082DE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100082E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DC1F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100082E94(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DC1F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100082F48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100140278(&qword_1008DC2A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[10]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100140278(&qword_1008DC2A8);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[11];
      goto LABEL_3;
    }

    v14 = type metadata accessor for MetricFormattingHelper();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[13];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1000830D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100140278(&qword_1008DC2A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return result;
  }

  v13 = sub_100140278(&qword_1008DC2A8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_3;
  }

  v14 = type metadata accessor for MetricFormattingHelper();
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000832EC()
{
  v1 = type metadata accessor for AwardsCardView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[5];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for AwardsCard();
  sub_10001D4F8(*(v7 + v9[5]), *(v7 + v9[5] + 8), *(v7 + v9[5] + 16));

  v10 = v5 + v1[7];
  if (*(v10 + 24))
  {
    sub_100005A40(v10);
  }

  v11 = v5 + v1[9];
  v12 = type metadata accessor for GeometryProxy();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  sub_100140278(&qword_1008DC6B0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_10008357C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 template];
  *a2 = result;
  return result;
}

uint64_t sub_1000835C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000835FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100083648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for AppComposer();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008377C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DC6A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for AppComposer();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000838B8()
{
  sub_100005A40(v0 + 16);
  sub_100005A40(v0 + 56);
  if (*(v0 + 120))
  {
    sub_100005A40(v0 + 96);
  }

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100083924@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100083950()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100083988()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000839C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100083A00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100083A40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100083AC0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100083B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DD538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083B70(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DD538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100083BD8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100083C40()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100083C90()
{
  v1 = sub_100140278(&qword_1008DD8C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100083D60()
{
  v1 = sub_100140278(&qword_1008DD8D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100083DF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100083E2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100083E64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100083ED4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100083FC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100084004()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100084048()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000840A0()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008419C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100140278(&qword_1008DDCB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100084258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_100140278(&qword_1008DDCB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10008430C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DDE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008437C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DDE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000843E4()
{
  sub_100141EEC(&qword_1008DDDA0);
  sub_10014A6B0(&qword_1008DDE38, &qword_1008DDDA0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100084490()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000844D0()
{
  sub_100141EEC(&qword_1008DDE50);
  sub_10014A6B0(&qword_1008DDE68, &qword_1008DDE50);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008458C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100140278(&qword_1008DDCB8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000846B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100140278(&qword_1008DC6A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100140278(&qword_1008DDCB8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100084834()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100084954@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100084980()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000849B8()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100084C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DE680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100084C8C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DE680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100084D08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100084D40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100084D80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100084E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100084F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000850A0()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_1000850E8()
{

  if (*(v0 + 120) != 1)
  {
  }

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_100085170()
{
  type metadata accessor for ModifiedContent();
  sub_100141EEC(&qword_1008DC530);
  sub_100141EEC(&qword_1008DF358);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100141EEC(&qword_1008DF350);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  sub_100141EEC(&qword_1008DC530);
  sub_100141EEC(&qword_1008DF340);
  sub_100141EEC(&qword_1008DF348);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000853F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&unk_1008EB5B0);
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

uint64_t sub_1000854C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&unk_1008EB5B0);
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

uint64_t sub_10008558C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100085644(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100085670()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000856D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentAvailability();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100085740(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ContentAvailability();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000857C4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008584C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000858A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000858F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100085934()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100085988()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000859C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100085A00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100085A40()
{

  return _swift_deallocObject(v0, 44, 7);
}

uint64_t sub_100085AC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100140278(&qword_1008DC7F0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[12];
      goto LABEL_3;
    }

    v15 = sub_100140278(&qword_1008DC6B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100085C60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100140278(&qword_1008DC6A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_100140278(&qword_1008DC7F0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[12];
    goto LABEL_3;
  }

  v15 = sub_100140278(&qword_1008DC6B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100085DFC()
{

  return _swift_deallocObject(v0, 88, 7);
}

void sub_100086008(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001D5A58(v1);
}

uint64_t sub_100086088()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000861A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000861E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100086228()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100086260()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000862A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SleepingSampleViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DayIndex();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100140278(&qword_1008E0600);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10008640C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for SleepingSampleViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for DayIndex();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_100140278(&qword_1008E0600);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008656C()
{
  v1 = type metadata accessor for SleepingSampleChartLollipopView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for SleepingSampleViewModel();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[6];
  v7 = type metadata accessor for DayIndex();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v0 + v3 + v1[7];
  v9 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = *(v9 + 20);
    v12 = type metadata accessor for BaselineRelativeValue();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100086788(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E06F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000867F8()
{
  sub_100141EEC(&qword_1008E06F0);
  sub_1001E4DEC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100086860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100086918(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000869E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100086A64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100140278(&qword_1008E09C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_100086B20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100140278(&qword_1008E09C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100086BDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100086C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100140278(&qword_1008E0B00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100086CEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100140278(&qword_1008E0B00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100086DAC()
{
  v1 = (type metadata accessor for LoadHistoryItemView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for FitnessPlusStackViewModel();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  sub_100005A40(v0 + v3);

  sub_1000A73A4(*(v0 + v3 + 64), *(v0 + v3 + 72));
  v8 = v0 + v3 + v1[11];
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = (v3 + v4 + v6) & ~v6;
  sub_100140278(&qword_1008E0B00);

  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);

  v13(v0 + v11 + *(v5 + 32), v12);
  v14 = *(v5 + 36);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v0 + v11 + v14, v15);

  return _swift_deallocObject(v0, v11 + v7, v2 | v6 | 7);
}

uint64_t sub_100087044()
{
  v1 = (type metadata accessor for LoadHistoryItemView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_100005A40(v0 + v3);

  sub_1000A73A4(*(v0 + v3 + 64), *(v0 + v3 + 72));
  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100140278(&qword_1008E0B00);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_1000871C8()
{
  v1 = (type metadata accessor for LoadHistoryItemView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_100005A40(v0 + v3);
  sub_1000A73A4(*(v0 + v3 + 64), *(v0 + v3 + 72));
  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_100140278(&qword_1008E0B00);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100087348()
{
  v1 = (type metadata accessor for LoadHistoryItemView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_100005A40(v0 + v3);

  sub_1000A73A4(*(v0 + v3 + 64), *(v0 + v3 + 72));
  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_100140278(&qword_1008E0B00);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000874BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000874F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008752C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100087578()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000875B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100140278(&unk_1008F73A0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000876F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AttributedString();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_100140278(&unk_1008F73A0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_10008786C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_100087964()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008799C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v3 + ((((((v5 + v4) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v9 = (((v5 + v6) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v9 + 8, v3 | 7);
}

uint64_t sub_100087B10()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100087B60()
{
  v1 = type metadata accessor for DateComponents();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100087C3C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100087C7C()
{
  v1 = type metadata accessor for DateComponents();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100087D64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100087D9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100087DDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100087E18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CatalogTipSectionItem();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100087EBC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100087EF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100087F34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100087F90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008804C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100088140()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100088180(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E17F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100088204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100209B68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100088250()
{
  sub_1001ED5AC();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

void sub_100088304()
{
  sub_10005FAB0();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_100088388()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000883C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100088400()
{
  v1 = type metadata accessor for URLRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100140278(&qword_1008E1B18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100088554()
{
  v1 = sub_100140278(&qword_1008E1B40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008862C()
{
  v1 = type metadata accessor for DataLinkCommand();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000886C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E1DA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000887A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000887E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008E2188);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000888AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008E2188);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10008897C()
{
  v1 = type metadata accessor for AdvancedChangeGoalView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008E2280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Calendar();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_1000A73A4(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100088B04()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100088B3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088B74()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100088BBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088C68@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100088CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E2540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100088D3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100088D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for BaselineRelativeValue();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100088E88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for BaselineRelativeValue();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100088F98()
{

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_100088FE0()
{
  sub_100141EEC(&qword_1008E2718);
  sub_100141EEC(&qword_1008E2710);
  sub_100141EEC(&qword_1008E2760);
  sub_100141EEC(&qword_1008E2708);
  sub_100232594();
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008E2768, &qword_1008E2760);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008911C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for MetricFormattingHelper();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[9];
LABEL_15:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_16;
  }

  v16 = type metadata accessor for Date();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[11];
    goto LABEL_15;
  }

  v17 = type metadata accessor for Calendar.Component();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[12];
    goto LABEL_15;
  }

  v18 = type metadata accessor for Date.FormatStyle();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[13];
    goto LABEL_15;
  }

  v19 = type metadata accessor for AxisMarkValues();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[15];

  return v20(v21, a2, v19);
}

uint64_t sub_100089374(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100140278(&qword_1008DC6A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for MetricFormattingHelper();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[9];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = type metadata accessor for Date();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_13;
  }

  v17 = type metadata accessor for Calendar.Component();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_13;
  }

  v18 = type metadata accessor for Date.FormatStyle();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[13];
    goto LABEL_13;
  }

  v19 = type metadata accessor for AxisMarkValues();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[15];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1000895D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008968C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Calendar();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100089788()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000897D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100089898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DC6A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10008995C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000066AC(a1, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_1000899B4()
{
  v1 = type metadata accessor for HistoryItemsCardView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DynamicTypeSize();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 24);
  if (*(v6 + 24))
  {
    sub_100005A40(v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100089AE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100089B30()
{
  sub_100141EEC(&qword_1008E2F58);
  sub_1002416E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100089B94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100140278(&unk_1008F73A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_100089C5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100140278(&unk_1008F73A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100089D10()
{
  sub_100141EEC(&qword_1008E3178);
  type metadata accessor for Section();
  sub_100141EEC(&qword_1008E3180);
  type metadata accessor for ModifiedContent();
  sub_100242D98();
  swift_getWitnessTable();
  sub_100242FB4(&qword_1008E3198, &qword_1008E3180);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100141EEC(&qword_1008DD578);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_100242FB4(&qword_1008DD570, &qword_1008DD578);
  return swift_getWitnessTable();
}

uint64_t sub_100089ED0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100089F10()
{
  sub_100141EEC(&qword_1008E31A8);
  sub_10014A6B0(&qword_1008E31B8, &qword_1008E31A8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100089FF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008A030()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008A068(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MetricDetailViewModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for MetricFormattingHelper();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v11 = sub_100140278(&qword_1008DC470);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  v12 = sub_100140278(&qword_1008E33E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[9];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[12] + 16);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10008A21C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MetricDetailViewModel();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    v12 = type metadata accessor for MetricFormattingHelper();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      v13 = sub_100140278(&qword_1008DC470);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[8];
      }

      else
      {
        result = sub_100140278(&qword_1008E33E8);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[12] + 16) = (a2 - 1);
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[9];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

uint64_t sub_10008A3D0()
{
  v1 = type metadata accessor for MetricDetailChartView();
  v27 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v28 = type metadata accessor for Calendar.Component();
  v2 = *(v28 - 8);
  v24 = *(v2 + 80);
  v23 = *(v2 + 64);
  v29 = v0;
  v26 = (v27 + 16) & ~v27;
  v3 = v0 + v26;
  v4 = (v0 + v26 + v1[6]);

  v5 = type metadata accessor for MetricDetailViewModel();
  v6 = *(v5 + 36);
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = *(v5 + 44);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v4 + v9, v10);
  v13 = (v3 + v1[7]);

  v14 = type metadata accessor for MetricFormattingHelper();
  v15 = *(v14 + 20);
  v16 = type metadata accessor for AttributedString();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);

  v17 = v3 + v1[8];

  v18 = (v17 + *(sub_100140278(&qword_1008DC470) + 32));
  v19 = type metadata accessor for MetricChartData();
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {

    v12(v18 + *(v19 + 20), v10);
  }

  v20 = (v3 + v1[9]);
  if (!(*(v11 + 48))(v20, 1, v10))
  {
    v12(v20, v10);
  }

  v21 = (v26 + v25 + v24) & ~v24;
  sub_100140278(&qword_1008E33E8);

  (*(v2 + 8))(v29 + v21, v28);

  return _swift_deallocObject(v29, ((v23 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v27 | v24 | 7);
}

uint64_t sub_10008A7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E35F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A84C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E35F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008A904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for DynamicTypeSize();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 60);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008AA34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DC6A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for DynamicTypeSize();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 60);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10008ABB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008AC00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008AC38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008AC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FriendCard();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10008AD40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FriendCard();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_10008ADFC()
{
  v1 = (type metadata accessor for FriendCardView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for FriendCard();
  sub_10001D4F8(*(v0 + v3 + v6[5]), *(v0 + v3 + v6[5] + 8), *(v0 + v3 + v6[5] + 16));

  v7 = v0 + v3 + v1[7];
  if (*(v7 + 24))
  {
    sub_100005A40(v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10008AF64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008AFAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008AFEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B040(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100140278(&unk_1008EB5B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Reply();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ReplyLayoutValues();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_10008B1B8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100140278(&unk_1008EB5B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Reply();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ReplyLayoutValues();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10008B354()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B39C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008B4C8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008B50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E4B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B57C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E4B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008B5F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B66C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B6A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008B6E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B71C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B754()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B794()
{
  v1 = *(sub_100140278(&unk_1008DB8A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 16, v2 | 7);
}

uint64_t sub_10008B8D4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008B924()
{
  v1 = type metadata accessor for CatalogTipSection();
  v2 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);

  v16 = v0;
  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = v3 + *(v1 + 36);
  v5 = type metadata accessor for ShelfLockupAttributedTagStrings();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for CatalogTipSectionItem();
  v7 = v6[5];
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v4 + v7, v8);

  v11 = v6[8];
  if (!(*(v9 + 48))(v4 + v11, 1, v8))
  {
    v10(v4 + v11, v8);
  }

  v12 = v6[12];
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);

  return _swift_deallocObject(v16, ((v2 + 24) & ~v2) + v15, v2 | 7);
}

uint64_t sub_10008BB84()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10008BBCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10008BC14()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008BC4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008BD08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008BD40()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10008BD78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008BDB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BDFC()
{
  sub_100005A40(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008BE34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BE94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BECC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BF0C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10008BF60()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008BFA8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008BFE0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008C028()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008C070()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008C0B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AttributedString();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for WorkoutEffort();
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[10];
      goto LABEL_3;
    }

    v14 = sub_100140278(&qword_1008DC6A8);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[11];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_10008C234(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AttributedString();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for WorkoutEffort();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_3;
  }

  v14 = sub_100140278(&qword_1008DC6A8);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10008C3B8()
{
  v1 = type metadata accessor for WorkloadListItemStack();
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v1 + 20);
  v7 = type metadata accessor for AttributedString();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v4 + v6, v7);

  v8(v0 + v4 + v2[9], v7);

  v9 = v2[12];
  v10 = type metadata accessor for WorkoutEffort();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = v2[13];
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DynamicTypeSize();
    (*(*(v12 - 8) + 8))(v0 + v4 + v11, v12);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008C6E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008C718()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008C750()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008CB0C@<X0>(uint64_t *a1@<X8>)
{
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CB38@<X0>(uint64_t *a1@<X8>)
{
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CB64@<X0>(uint64_t *a1@<X8>)
{
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CB90@<X0>(uint64_t *a1@<X8>)
{
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CBBC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CBE8@<X0>(uint64_t *a1@<X8>)
{
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CC14@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CC40@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CC6C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CC98@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CCC4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CCF0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CD1C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CD48@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CD88@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CDB4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CDE0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CE0C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CE38@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CE64@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CE90@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CEBC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CEE8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CF14@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CF40@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CF6C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008CFAC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008D0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TrendListMetric();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10008D1EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100140278(&qword_1008DC6A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TrendListMetric();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008D318()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008D384(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100140278(&qword_1008DC7F0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[12];
      goto LABEL_3;
    }

    v15 = sub_100140278(&qword_1008DC6B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[16];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10008D520(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100140278(&qword_1008DC6A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_100140278(&qword_1008DC7F0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[12];
    goto LABEL_3;
  }

  v15 = sub_100140278(&qword_1008DC6B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[16];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10008D6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E6808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008D738()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10008D790(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008D84C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10008D904()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10008D94C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008D984()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008D9C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008DA04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008DA54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MetricFormattingHelper();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10008DB00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MetricFormattingHelper();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10008DBAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008DBE4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002A094(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10008DC70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008DCA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008DCF0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008DD38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008DD70()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008DDB8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008DE00()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008DE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivitySharingHighlight();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for FIUIRelativeDateTimeFormatter();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008DF6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivitySharingHighlight();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for FIUIRelativeDateTimeFormatter();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10008E0B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008E0F0()
{
  v1 = (type metadata accessor for ActivitySharingHighlightViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for ActivitySharingHighlight();
  v6 = v5[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v5[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = v1[12];
  v11 = type metadata accessor for FIUIRelativeDateTimeFormatter();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10008E2BC()
{
  v1 = sub_100140278(&qword_1008E7460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ActivitySharingHighlightViewModel() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = type metadata accessor for ActivitySharingHighlight();
  v12 = v11[5];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);
  v14 = v11[6];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);

  v16 = v6[12];
  v17 = type metadata accessor for FIUIRelativeDateTimeFormatter();
  (*(*(v17 - 8) + 8))(v0 + v8 + v16, v17);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10008E564()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008E5FC()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_10008E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for QuickStartWorkoutCard();
  v7 = *(started - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, started);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10008E7AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for QuickStartWorkoutCard();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_10008E86C()
{
  v1 = (type metadata accessor for QuickStartWorkoutCardView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  started = type metadata accessor for QuickStartWorkoutCard();
  sub_10001D4F8(*(v0 + v3 + *(started + 20)), *(v0 + v3 + *(started + 20) + 8), *(v0 + v3 + *(started + 20) + 16));

  v7 = v0 + v3 + v1[7];
  if (*(v7 + 24))
  {
    sub_100005A40(v7);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10008E9B0()
{

  sub_100005A40(v0 + 24);
  if (*(v0 + 88))
  {
    sub_100005A40(v0 + 64);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10008EA00()
{
  sub_100005A40(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008EA38()
{
  sub_100141EEC(&qword_1008E7898);
  sub_1002FB384();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008EA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008EB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivitySharingHighlightViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10008EC24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivitySharingHighlightViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_10008ECE0(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E7B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008ED48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivitySharingHighlightViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008EE04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivitySharingHighlightViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10008EEBC()
{
  sub_100141EEC(&qword_1008E7B38);
  sub_1002FE714();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008EF90()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ViewSizeCalculator();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v13 = *(*(v2 - 8) + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v14 = *(v6 + 64);
  v8 = v0 + v4;

  v9 = *(sub_100140278(&qword_1008DC7F0) + 32);
  if (!(*(v6 + 48))(v0 + v4 + v9, 1, v5))
  {
    (*(v6 + 8))(v8 + v9, v5);
  }

  v10 = v3 | v7;
  v11 = (v4 + v13 + v7) & ~v7;
  (*(*(v1 - 8) + 8))(v8 + *(v2 + 36), v1);
  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v14, v10 | 7);
}

uint64_t sub_10008F180()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008F1B8()
{
  v1 = type metadata accessor for AAUIAwardsDataProviderSection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10008F350()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008F44C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008F484()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008F4C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008F504()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008F54C()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 136) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008F638()
{
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_10030E328();
  swift_getOpaqueTypeMetadata2();
  sub_100141EEC(&qword_1008E8268);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PagingScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  sub_10030E37C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollViewReader();
  return swift_getWitnessTable();
}

uint64_t sub_10008F958()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008F990()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008F9C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008FA08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MetricDetailViewModel();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for MetricFormattingHelper();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10008FB10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MetricDetailViewModel();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = type metadata accessor for MetricFormattingHelper();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_10008FC18(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E8478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008FC90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008FCC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008FD00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008FD4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008FD84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008FDBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008FDFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008FE68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008FED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100090000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100090160()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090198()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000901E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100090234()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009026C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000902FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090348()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090380()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000903BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000903FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090484()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000904C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090504()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009053C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090574()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000905AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000905F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009062C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000906DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090714()
{
  v1 = (type metadata accessor for FitnessPlusStackViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v3;
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);

  v8(v6 + v1[10], v7);
  v9 = v1[11];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_1000908BC()
{
  v1 = (type metadata accessor for FitnessPlusStackViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);

  v7(v5 + v1[10], v6);
  v8 = v1[11];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  if (*(v0 + v4))
  {
  }

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100090A4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090AB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090AF4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100090B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E96A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100090BF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090C28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090C68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090CAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090CEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090D24()
{
  v1 = type metadata accessor for ImpressionMetrics();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100090DE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090E20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090E60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090E98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090ED4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090F14()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivitySharingFriendListItem();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100091024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivitySharingFriendListItem();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1000910E0(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E9C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100091158()
{
  sub_100141EEC(&qword_1008E9C00);
  sub_10034F024();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000911C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E9CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100091238(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E9CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000912A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000912E4()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100091334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutEffort();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000913A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutEffort();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

BOOL sub_10009142C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_100091468()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000914BC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D64F0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1000915B4()
{
  v12 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006EB180;
  *(v9 + 32) = v12;
  *(v9 + 40) = v0;
  *(v9 + 48) = v1;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_10009177C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006E87A0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_1000918CC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D6BC0;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100091A00()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D64F0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100091AB0()
{
  v12 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006EB180;
  *(v9 + 32) = v12;
  *(v9 + 40) = v0;
  *(v9 + 48) = v1;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

double sub_100091C6C@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100091CAC@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

double sub_100091D48@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  a1[12] = v15;
  a1[13] = v16;
  a1[14] = v17;
  a1[15] = v18;
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = v13;
  a1[11] = v14;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100091DC4(_OWORD *a1)
{
  v1 = a1[13];
  v2 = a1[11];
  v31 = a1[12];
  v32 = v1;
  v3 = a1[13];
  v4 = a1[15];
  v33 = a1[14];
  v34 = v4;
  v5 = a1[9];
  v6 = a1[7];
  v27 = a1[8];
  v28 = v5;
  v7 = a1[9];
  v8 = a1[11];
  v29 = a1[10];
  v30 = v8;
  v9 = a1[5];
  v10 = a1[3];
  v23 = a1[4];
  v24 = v9;
  v11 = a1[5];
  v12 = a1[7];
  v25 = a1[6];
  v26 = v12;
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v14 = a1[3];
  v16 = *a1;
  v15 = a1[1];
  v21 = a1[2];
  v22 = v14;
  v19[28] = v31;
  v19[29] = v3;
  v17 = a1[15];
  v19[30] = v33;
  v19[31] = v17;
  v19[24] = v27;
  v19[25] = v7;
  v19[26] = v29;
  v19[27] = v2;
  v19[20] = v23;
  v19[21] = v11;
  v19[22] = v25;
  v19[23] = v6;
  v19[16] = v16;
  v19[17] = v15;
  v19[18] = v21;
  v19[19] = v10;
  sub_1001C6FE0(v20, v19);
  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_100091E84@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100091F00@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100091F74@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

double sub_100092010@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  a1[12] = v15;
  a1[13] = v16;
  a1[14] = v17;
  a1[15] = v18;
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = v13;
  a1[11] = v14;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_10009208C(_OWORD *a1)
{
  v1 = a1[13];
  v2 = a1[11];
  v31 = a1[12];
  v32 = v1;
  v3 = a1[13];
  v4 = a1[15];
  v33 = a1[14];
  v34 = v4;
  v5 = a1[9];
  v6 = a1[7];
  v27 = a1[8];
  v28 = v5;
  v7 = a1[9];
  v8 = a1[11];
  v29 = a1[10];
  v30 = v8;
  v9 = a1[5];
  v10 = a1[3];
  v23 = a1[4];
  v24 = v9;
  v11 = a1[5];
  v12 = a1[7];
  v25 = a1[6];
  v26 = v12;
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v14 = a1[3];
  v16 = *a1;
  v15 = a1[1];
  v21 = a1[2];
  v22 = v14;
  v19[28] = v31;
  v19[29] = v3;
  v17 = a1[15];
  v19[30] = v33;
  v19[31] = v17;
  v19[24] = v27;
  v19[25] = v7;
  v19[26] = v29;
  v19[27] = v2;
  v19[20] = v23;
  v19[21] = v11;
  v19[22] = v25;
  v19[23] = v6;
  v19[16] = v16;
  v19[17] = v15;
  v19[18] = v21;
  v19[19] = v10;
  sub_1001C6FE0(v20, v19);
  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_10009217C@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000921F0@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_10009227C@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000922F0@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100092364@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000923DC@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100092464@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

double sub_1000924D8@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100092518@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000925B4@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100092638@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000926AC@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100092730@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1000927B4@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100092838@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1000928BC@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100092940@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_100092A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100092B24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100092C4C()
{
  sub_100141EEC(&qword_1008EA690);
  sub_100141EEC(&qword_1008E62D8);
  sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8);
  sub_100379244();
  swift_getOpaqueTypeConformance2();
  sub_100379298();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100092D4C()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 48, v3 | 7);
}

uint64_t sub_100092DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EA6C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100092E7C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100092F04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092F3C()
{
  sub_100005A40(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100092F7C()
{

  sub_100005A40(v0 + 32);

  return _swift_deallocObject(v0, 77, 7);
}

uint64_t sub_100092FBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092FF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009302C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093064()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000930B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FitnessPlusSampleContentCard();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1000931CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FitnessPlusSampleContentCard();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AppComposer();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000932F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093444()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009347C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000934BC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000934FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100093540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DDCB8);
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

uint64_t sub_10009360C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DDCB8);
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

uint64_t sub_100093798()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000937D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100093808()
{
  v1 = type metadata accessor for CatalogTipSection();
  v2 = *(*(v1 - 8) + 80);
  v14 = *(*(v1 - 8) + 64);
  v15 = (v2 + 16) & ~v2;
  v16 = v0;

  v3 = v0 + v15 + *(v1 + 36);
  v4 = type metadata accessor for ShelfLockupAttributedTagStrings();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for CatalogTipSectionItem();
  v6 = v5[5];
  v7 = type metadata accessor for Artwork();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);

  v10 = v5[8];
  if (!(*(v8 + 48))(v3 + v10, 1, v7))
  {
    v9(v3 + v10, v7);
  }

  v11 = v5[12];
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);

  return _swift_deallocObject(v16, v15 + v14, v2 | 7);
}

uint64_t sub_100093A60()
{
  v1 = type metadata accessor for CatalogTipSection();
  v2 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v16 = v0;
  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = v3 + *(v1 + 36);
  v5 = type metadata accessor for ShelfLockupAttributedTagStrings();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for CatalogTipSectionItem();
  v7 = v6[5];
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v4 + v7, v8);

  v11 = v6[8];
  if (!(*(v9 + 48))(v4 + v11, 1, v8))
  {
    v10(v4 + v11, v8);
  }

  v12 = v6[12];
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);

  return _swift_deallocObject(v16, ((v2 + 32) & ~v2) + v15, v2 | 7);
}

uint64_t sub_100093CC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100093CF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100093D38()
{
  v1 = *(sub_100140278(&unk_1008DB8A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 16, v2 | 7);
}

uint64_t sub_100093E78()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100093EC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093F00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093F38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100093FA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100093FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_100140278(&unk_1008F73A0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10009411C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000941E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094230(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EB2B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000942B4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100094300()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094338()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10009441C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000944BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000944F8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000945EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100094698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009473C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094774()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000947AC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100094804()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009483C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009487C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000948BC()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100094904()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009493C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000949A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000949E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100094A20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100094A68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094C7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094CB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100094D34()
{
  v1 = sub_100140278(&qword_1008EBBD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_100094E9C()
{
  swift_unknownObjectRelease();
  sub_10000AF88(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100094EE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100094F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100094FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100095034()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009506C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000950AC()
{
  v1 = *(sub_100140278(&qword_1008EBF18) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 73) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100005A40(v0 + 24);
  v5 = type metadata accessor for OSSignposter();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000951C4()
{
  v1 = *(sub_100140278(&qword_1008EBF18) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for OSSignposter();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000952C0()
{

  sub_100005A40(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100095300()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100095338()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100095370()
{

  sub_100005A40(v0 + 24);
  sub_100005A40(v0 + 64);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000953B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095418()
{
  sub_100141EEC(&qword_1008EBF70);
  sub_10014A6B0(&qword_1008EBF80, &qword_1008EBF70);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000954B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutChartViewModel(0);
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

uint64_t sub_100095574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutChartViewModel(0);
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

uint64_t sub_100095638@<X0>(uint64_t *a1@<X8>)
{
  result = Date.hashValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095668()
{
  sub_100141EEC(&qword_1008EC188);
  sub_100141EEC(&qword_1008E2900);
  sub_100141EEC(&qword_1008EC180);
  sub_100141EEC(&qword_1008E1BD8);
  sub_100141EEC(&qword_1008EC178);
  type metadata accessor for WorkoutChart();
  sub_10014A6B0(&qword_1008EC298, &qword_1008EC178);
  sub_1003EF8B4(&qword_1008EC2A0, type metadata accessor for WorkoutChart);
  swift_getOpaqueTypeConformance2();
  sub_1003EF8FC(&qword_1008EC2A8, &qword_1008E1BD8);
  swift_getOpaqueTypeConformance2();
  sub_1003EF8FC(&qword_1008E2908, &qword_1008E2900);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009586C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MetricFormattingHelper();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100095990(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MetricFormattingHelper();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100095DCC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095DF8@<X0>(uint64_t *a1@<X8>)
{
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095E24@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095E50@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095E7C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095EA8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095ED4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095F00@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095F2C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095F5C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095F88@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095FBC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

double sub_100095FE8@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  a1[12] = v15;
  a1[13] = v16;
  a1[14] = v17;
  a1[15] = v18;
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = v13;
  a1[11] = v14;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100096064(_OWORD *a1)
{
  v1 = a1[13];
  v2 = a1[11];
  v31 = a1[12];
  v32 = v1;
  v3 = a1[13];
  v4 = a1[15];
  v33 = a1[14];
  v34 = v4;
  v5 = a1[9];
  v6 = a1[7];
  v27 = a1[8];
  v28 = v5;
  v7 = a1[9];
  v8 = a1[11];
  v29 = a1[10];
  v30 = v8;
  v9 = a1[5];
  v10 = a1[3];
  v23 = a1[4];
  v24 = v9;
  v11 = a1[5];
  v12 = a1[7];
  v25 = a1[6];
  v26 = v12;
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v14 = a1[3];
  v16 = *a1;
  v15 = a1[1];
  v21 = a1[2];
  v22 = v14;
  v19[28] = v31;
  v19[29] = v3;
  v17 = a1[15];
  v19[30] = v33;
  v19[31] = v17;
  v19[24] = v27;
  v19[25] = v7;
  v19[26] = v29;
  v19[27] = v2;
  v19[20] = v23;
  v19[21] = v11;
  v19[22] = v25;
  v19[23] = v6;
  v19[16] = v16;
  v19[17] = v15;
  v19[18] = v21;
  v19[19] = v10;
  sub_1001C6FE0(v20, v19);
  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_100096124()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009615C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100096194()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000961CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InferenceClient();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SnapshotClient();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000962F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for InferenceClient();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SnapshotClient();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10009641C()
{
  v1 = type metadata accessor for AppComposer();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000964C4(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_10009652C()
{
  v1 = *(sub_100140278(&qword_1008EB280) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(v1 + 64);
  v21 = type metadata accessor for Artwork();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v19 = *(v4 + 64);
  v6 = type metadata accessor for FitnessPlusStackViewModel();
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (((v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;
  v12 = (v19 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 40) & ~v7;

  (*(v4 + 8))(v0 + v11, v21);
  sub_100005A40(v0 + v12);
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v13, v14);

  v15(v0 + v13 + *(v6 + 32), v14);
  v16 = *(v6 + 36);
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 8))(v0 + v13 + v16, v17);

  return _swift_deallocObject(v0, ((((((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v5 | v7 | 7);
}

uint64_t sub_1000968F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009697C()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000969D4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100096A38()
{
  sub_100005A40(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100096AC8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100096B00()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100096F0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100096F44()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100097010()
{
  swift_unknownObjectRelease();
  sub_100005A40(v0 + 32);

  sub_100005A40(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100097068()
{
  swift_unknownObjectRelease();

  sub_100005A40(v0 + 40);
  sub_100005A40(v0 + 80);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000970BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000970FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100097144()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097180()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000971E0()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100097248(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008ED2F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009732C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivitySharingSettings();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000973EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivitySharingSettings();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000974AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008ED508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009751C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008ED508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100097588()
{
  v1 = (type metadata accessor for ActivitySharingFriendDetailInternalDashboardView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64) + v3;
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = type metadata accessor for ActivitySharingSettings();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 1, v2 | 7);
}

uint64_t sub_100097724()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009775C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100097798()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000977DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097814()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100097854()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009788C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutChartViewModel(0);
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

uint64_t sub_10009794C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutChartViewModel(0);
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

uint64_t sub_100097A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008ED880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097A9C@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100097AF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100097B84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100097BC4()
{
  sub_100005A40(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100097C04()
{

  sub_100005A40(v0 + 24);
  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100097C54()
{

  sub_100005A40(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100097C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008EDB60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100097D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008EDB60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100097E2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097E64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097E9C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100097EDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100097F14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100097F4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100097FA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097FE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100098020()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098058(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ShelfLockupAttributedTagStrings();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Artwork();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_100140278(&unk_1008EAF20);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = type metadata accessor for URL();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100098224(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ShelfLockupAttributedTagStrings();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for Artwork();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_100140278(&unk_1008EAF20);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_100098498()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000984D0()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100098518()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098550()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100098588()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009861C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000986D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

id sub_1000987BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_1000987F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100098830()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009886C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000988A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100098A70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098AA8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100098B30@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100098B8C()
{
  View = type metadata accessor for FitnessPlusUpNextView();
  v2 = *(*(View - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(View - 8) + 64);

  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(View + 24);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  Card = type metadata accessor for FitnessPlusUpNextCard();
  sub_10001D4F8(*(v7 + Card[5]), *(v7 + Card[5] + 8), *(v7 + Card[5] + 16));
  if (*(v7 + Card[9]) >= 4uLL)
  {
  }

  sub_100005A40(v7 + Card[10]);
  sub_100005A40(v7 + Card[11]);
  v10 = v5 + *(View + 28);
  if (*(v10 + 24))
  {
    sub_100005A40(v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100098DB4@<X0>(uint64_t *a1@<X8>)
{
  result = CatalogLockup.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100098DE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100098E18@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100098F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrendListMetric();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100099058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TrendListMetric();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_100099110()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10009914C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EF2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000991CC()
{
  sub_100141EEC(&qword_1008EF270);
  type metadata accessor for DynamicTypeSize();
  sub_10014A6B0(&qword_1008EF290, &qword_1008EF270);
  sub_100073CB0(&qword_1008EF298, &type metadata accessor for DynamicTypeSize);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000992BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009930C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099344()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000993B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000993EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009942C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100099464()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000994A4()
{
  v1 = (type metadata accessor for WorkoutChartViewModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[12];
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v1[13], v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100099694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineBand.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100099700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineBand.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100099770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008E1BD8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10009983C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008E1BD8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100099904()
{
  sub_100141EEC(&qword_1008EFD78);
  sub_1004D2FC8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100099968(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100099A14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100099C80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099CC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099D00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100099D40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100099D78()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100099DF0@<X0>(uint64_t *a1@<X8>)
{
  result = AnyRegexOutput.count.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100099E78()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100099F44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099F7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100099FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009A020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10009A090()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009A0D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A108(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100140278(&qword_1008F0320);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[7]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_100140278(&qword_1008F0328);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[11];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = type metadata accessor for DayIndex();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[16];
    goto LABEL_13;
  }

  v17 = sub_100140278(&qword_1008DDCB8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[18];
    goto LABEL_13;
  }

  v18 = sub_100140278(&qword_1008F0330);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[19];

  return v19(v20, a2, v18);
}

uint64_t sub_10009A33C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100140278(&qword_1008F0320);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = sub_100140278(&qword_1008F0328);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[11];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for DayIndex();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[16];
    goto LABEL_11;
  }

  v17 = sub_100140278(&qword_1008DDCB8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[18];
    goto LABEL_11;
  }

  v18 = sub_100140278(&qword_1008F0330);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[19];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_10009A64C()
{

  sub_1000A73A4(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10009A698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DDCB8);
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

uint64_t sub_10009A764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DDCB8);
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

uint64_t sub_10009A82C()
{
  sub_100141EEC(&qword_1008F0A88);
  sub_1004F2AB0(&qword_1008F0AD0, &qword_1008F0A88, &unk_1006F5EC0, sub_1004F3C54);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009A8C4()
{
  sub_100141EEC(&qword_1008F0AE8);
  type metadata accessor for OvernightMetricsReorderingView(255);
  sub_100141EEC(&qword_1008F0A88);
  sub_1004F2AB0(&qword_1008F0AD0, &qword_1008F0A88, &unk_1006F5EC0, sub_1004F3C54);
  swift_getOpaqueTypeConformance2();
  sub_1004EFA78(&qword_1008F0AF0, type metadata accessor for OvernightMetricsReorderingView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009A9F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009AAB0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009AB3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009AB78()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009ABBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009ABF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009AC70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009ACF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F0FA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009AD60()
{
  sub_100141EEC(&qword_1008F0F80);
  type metadata accessor for SegmentedPickerStyle();
  sub_10014A6B0(&qword_1008F0F98, &qword_1008F0F80);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10009AE10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009AE9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009AF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FitnessPlusStackViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100140278(&qword_1008E09C0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10009B05C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FitnessPlusStackViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100140278(&qword_1008E09C0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10009B1AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009B1E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009B21C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009B264()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009B29C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009B2DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009B31C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009B368()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009B3A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100140278(&qword_1008E09C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_10009B464(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100140278(&qword_1008E09C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009B530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}