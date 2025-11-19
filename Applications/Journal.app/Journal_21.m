uint64_t sub_100247A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a4;
  v69 = a5;
  v81 = a3;
  v82 = a2;
  v83 = a1;
  v67 = a6;
  v6 = type metadata accessor for DateComponents();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalendarBinningUnit(0);
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - v11;
  v13 = type metadata accessor for Date();
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = __chkstk_darwin(v13);
  v62 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v62 - v16;
  v17 = type metadata accessor for Calendar();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F24EC(&qword_100AD2688);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = type metadata accessor for Calendar.Component();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for UniformDateBins(0);
  v28 = __chkstk_darwin(v63);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v65 = &v62 - v31;
  v32 = *(v25 + 16);
  v74 = v24;
  v33 = v24;
  v34 = v20;
  v72 = v32;
  v32(v27, v83, v33);
  sub_1000082B4(v82, v23, &qword_100AD2688);
  v66 = v18;
  v35 = *(v18 + 16);
  v80 = v17;
  v70 = v35;
  v35(v20, v81, v17);
  v36 = *(v87 + 56);
  v87 += 56;
  v64 = v36;
  v36(v30, 1, 1, v88);
  v78 = v23;
  v79 = v27;
  Calendar.dateInterval(of:for:)();
  v37 = v12;
  v38 = type metadata accessor for DateInterval();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 48))(v12, 1, v38);
  v71 = v25;
  v41 = v34;
  if (v40 == 1)
  {
    sub_100004F84(v37, &qword_100AD3750);
    (*(v85 + 16))(v84, v78, v86);
  }

  else
  {
    v42 = v62;
    DateInterval.start.getter();
    (*(v39 + 8))(v37, v38);
    (*(v85 + 32))(v84, v42, v86);
  }

  v43 = v73;
  v44 = v74;
  v45 = v72;
  v72(v73, v79, v74);
  v46 = v88;
  (*(v85 + 16))(v43 + *(v88 + 20), v84, v86);
  v47 = v43 + *(v46 + 24);
  v62 = v41;
  v70(v47, v41, v80);
  sub_1000F24EC(&qword_100AD3BF0);
  v48 = v71;
  v49 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100940080;
  v45(v50 + v49, v43, v44);
  sub_10005FF80(v50);
  swift_setDeallocating();
  v72 = *(v48 + 8);
  (v72)(v50 + v49, v44);
  swift_deallocClassInstance();
  v51 = v75;
  v52 = v78;
  Calendar.dateComponents(_:from:to:)();

  v71 = DateComponents.value(for:)();
  LOBYTE(v50) = v53;
  result = (*(v76 + 8))(v51, v77);
  if (v50)
  {
    __break(1u);
  }

  else
  {
    v55 = *(v63 + 20);
    v76 = *(v63 + 24);
    v77 = v55;
    v56 = v52;
    v57 = sub_1008B6838(v52);
    (*(v85 + 8))(v84, v86);
    v58 = *(v66 + 8);
    v59 = v80;
    v58(v62, v80);
    sub_100004F84(v56, &qword_100AD2688);
    v60 = v72;
    (v72)(v79, v44);
    sub_100004F84(v30, &qword_100AD6F90);
    sub_1000AC020(v43, v30, type metadata accessor for CalendarBinningUnit);
    v64(v30, 0, 1, v88);
    *&v30[v77] = v71;
    *&v30[v76] = v57;
    v61 = v65;
    sub_1000AC020(v30, v65, type metadata accessor for UniformDateBins);
    sub_10003E8B0(v61, v68, v67);
    v58(v81, v59);
    sub_100004F84(v82, &qword_100AD2688);
    return v60(v83, v44);
  }

  return result;
}

uint64_t sub_10024829C()
{

  return _swift_task_switch(sub_1002483B4, 0, 0);
}

uint64_t sub_1002483B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100248414()
{

  if (!v0)
  {

    return _swift_task_switch(sub_100248524, 0, 0);
  }

  return result;
}

uint64_t sub_100248524()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    sub_1007731F4();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100940050;
    *(v6 + 32) = type metadata accessor for JournalEntryMO();
    *(v6 + 40) = type metadata accessor for JournalEntryAssetMO();
    v7 = NSManagedObjectContext.ObjectIDNotification.affects(_:)();

    if (v7)
    {
      if (qword_100ACFB60 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000617C(v8, qword_100ADA5A8);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Requesting automatic update from DB changes", v11, 2u);
      }

      v13 = v0[5];
      v12 = v0[6];
      v14 = v0[4];

      AsyncStream.Continuation.yield<A>()();
      (*(v13 + 8))(v12, v14);
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    swift_getAssociatedConformanceWitness();
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_100248414;
    v16 = v0[10];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v16, 0, 0);
  }
}

uint64_t sub_100248830()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100248BF8;
  }

  else
  {
    v2 = sub_100248944;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100248960()
{
  v1 = v0[7];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_100ACFB60 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100ADA5A8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Requesting automatic update from time change", v8, 2u);
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[4];
    v12 = v0[5];

    AsyncStream.Continuation.yield<A>()();
    (*(v12 + 8))(v10, v11);
    sub_100004F84(v9, &qword_100AF6E60);
    v13 = sub_100034024(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v14 = swift_task_alloc();
    v0[11] = v14;
    *v14 = v0;
    v14[1] = sub_100248830;
    v15 = v0[7];
    v16 = v0[8];

    return dispatch thunk of AsyncIteratorProtocol.next()(v15, v16, v13);
  }
}

uint64_t sub_100248BF8()
{
  *(v0 + 16) = *(v0 + 96);
  sub_1000F24EC(&qword_100AD5BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100248C84()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10025AFAC;
  }

  else
  {
    v2 = sub_100248D98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100248DB4()
{
  v1 = v0[7];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_100ACFB60 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100ADA5A8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Requesting automatic update from unlock", v8, 2u);
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[4];
    v12 = v0[5];

    AsyncStream.Continuation.yield<A>()();
    (*(v12 + 8))(v10, v11);
    sub_100004F84(v9, &qword_100AF6E60);
    v13 = sub_100034024(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v14 = swift_task_alloc();
    v0[11] = v14;
    *v14 = v0;
    v14[1] = sub_100248C84;
    v15 = v0[7];
    v16 = v0[8];

    return dispatch thunk of AsyncIteratorProtocol.next()(v15, v16, v13);
  }
}

uint64_t sub_10024904C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_100249264;
  }

  else
  {
    v3 = sub_1002491B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002491B4()
{

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1000431AC;
  v2 = *(v0 + 80);

  return AsyncStream.Iterator.next(isolation:)(v0 + 144, 0, 0, v2);
}

uint64_t sub_100249264()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10024931C()
{
  v1 = *(v0 + 56);

  *(v0 + 128) = *(v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager_options);

  return _swift_task_switch(sub_100089540, 0, 0);
}

uint64_t sub_1002493A4()
{
  *(v0 + 152) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100249430, v2, v1);
}

uint64_t sub_100249430()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[7];

  swift_getKeyPath();
  v0[5] = v4;
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC7Journal19InsightsDataManager__calendar;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1002495A4;
  v7 = v0[18];
  v8 = v0[13];
  v9 = v0[8];
  v10 = v0[6];

  return sub_100249744(v10, v7, v8, v9);
}

uint64_t sub_1002495A4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100249744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = _s5MonthVMa(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v4[14] = *(v8 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = sub_1000F24EC(&qword_100ADA648);
  v4[17] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v4[20] = *(v10 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = sub_1000F24EC(&qword_100ADA650);
  v4[24] = swift_task_alloc();
  v4[25] = sub_1000F24EC(&qword_100ADA658);
  v4[26] = swift_task_alloc();
  v4[27] = sub_1000F24EC(&qword_100ADA660);
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for UniformDateBins(0);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100249A58, 0, 0);
}

uint64_t sub_100249A58()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v25 = *(v0 + 168);
  v28 = *(v0 + 160);
  v33 = *(v0 + 152);
  v23 = *(v0 + 144);
  v24 = *(v0 + 104);
  v26 = *(v0 + 96);
  v27 = *(v0 + 120);
  v32 = *(v0 + 88);
  v30 = *(v0 + 80);
  v31 = *(v0 + 72);
  v21 = *(v0 + 40);
  v22 = *(v0 + 32);
  v3 = *(v0 + 16);
  v29 = *(v0 + 24);
  v4 = type metadata accessor for CalendarBinningUnit(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  *(v2 + *(v1 + 20)) = 0;
  *(v2 + *(v1 + 24)) = 1;
  sub_10003E8B0(v2, &qword_100AD6FB8, v3);
  v6 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v7 = v3 + v6[5];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v6[6];
  *(v0 + 288) = v8;
  v5(v2, 1, 1, v4);
  *(v2 + *(v1 + 20)) = 0;
  *(v2 + *(v1 + 24)) = 1;
  sub_10003E8B0(v2, &qword_100AD6FB8, v3 + v8);
  v9 = v6[7];
  *(v0 + 292) = v9;
  v5(v2, 1, 1, v4);
  *(v2 + *(v1 + 20)) = 0;
  *(v2 + *(v1 + 24)) = 1;
  sub_10003E8B0(v2, &qword_100AD6FB8, v3 + v9);
  v10 = v3 + v6[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + 296) = v6[9];
  static Date.distantFuture.getter();
  (*(v33 + 16))(v25, v21, v23);
  (*(v24 + 16))(v27, v22, v26);
  v11 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v12 = (v28 + *(v24 + 80) + v11) & ~*(v24 + 80);
  v13 = swift_allocObject();
  *(v0 + 248) = v13;
  *(v13 + 16) = v29;
  v14 = *(v33 + 32);
  *(v0 + 256) = v14;
  *(v0 + 264) = (v33 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v14(v13 + v11, v25, v23);
  (*(v24 + 32))(v13 + v12, v27, v26);
  (*(v30 + 104))(v32, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v31);
  v15 = v29;
  v16 = swift_task_alloc();
  *(v0 + 272) = v16;
  *v16 = v0;
  v16[1] = sub_100249DE8;
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 88);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v17, v19, sub_10025AAB0, v13, v18);
}

uint64_t sub_100249DE8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 280) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_10024A5E0;
  }

  else
  {
    v5 = sub_100249F7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100249F7C()
{
  v75 = v0[32];
  v1 = v0[28];
  v72 = v0[27];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v7[12];
  v9 = v7[16];
  v10 = v7[20];
  sub_100021CEC(v6, v1, &qword_100ADA660);
  sub_100021CEC(v6 + v8, v2, &qword_100ADA658);
  sub_100021CEC(v6 + v9, v3, &qword_100ADA650);
  v75(v4, v6 + v10, v5);
  v11 = *(v1 + *(v72 + 32));
  sub_1000F24EC(&qword_100ADA668);
  result = static _DictionaryStorage.copy(original:)();
  v13 = result;
  v14 = 0;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v11 + 64);
  v18 = (v15 + 63) >> 6;
  for (i = result + 64; v17; v13[2] = v30)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = v20 | (v14 << 6);
LABEL_10:
    v24 = *(*(v11 + 48) + 8 * v21);
    v25 = *(*(v11 + 56) + 8 * v21);
    v26 = (v21 >> 3) & 0x1FFFFFFFFFFFFFF8;
    result = *(i + v26) | (1 << v21);
    *(i + v26) = result;
    *(v13[6] + 8 * v21) = v24;
    v27 = (v13[7] + 32 * v21);
    *v27 = 1;
    v27[1] = v25;
    v27[2] = _swiftEmptyArrayStorage;
    v27[3] = _swiftEmptyArrayStorage;
    v28 = v13[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v14 >= v18)
    {
      break;
    }

    v23 = *(v11 + 64 + 8 * v14);
    ++v22;
    if (v23)
    {
      v17 = (v23 - 1) & v23;
      v21 = __clz(__rbit64(v23)) | (v14 << 6);
      goto LABEL_10;
    }
  }

  v31 = *(v79 + 224);
  v33 = *(v79 + 200);
  v32 = *(v79 + 208);
  v77 = *(v79 + 56);
  v34 = *(v79 + 16);
  v35 = *(*(v79 + 216) + 28);
  sub_100004F84(v34, &qword_100AD6FB8);
  sub_10003ED0C(v31, v34, type metadata accessor for UniformDateBins);
  v36 = sub_1000F24EC(&qword_100AD6FB8);
  sub_1000082B4(v31 + v35, v34 + *(v36 + 28), &qword_100AD2688);
  v69 = v36;
  *(v34 + *(v36 + 32)) = v13;
  v37 = *(v32 + *(v33 + 32));
  result = static _DictionaryStorage.copy(original:)();
  v38 = 0;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v37 + 64;
  v42 = v40 & *(v37 + 64);
  v43 = (v39 + 63) >> 6;
  v70 = result + 64;
  v73 = v37;
  if (!v42)
  {
LABEL_17:
    v46 = v38;
    while (1)
    {
      v38 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_29;
      }

      if (v38 >= v43)
      {
        v78 = *(v79 + 296);
        v71 = *(v79 + 224);
        v56 = *(v79 + 208);
        v57 = *(v79 + 184);
        v58 = *(v79 + 192);
        v76 = *(v79 + 176);
        v68 = *(v79 + 152);
        v74 = *(v79 + 144);
        v67 = *(v79 + 16);
        v59 = v67 + *(v79 + 292);
        v60 = v67 + *(v79 + 288);
        v61 = *(*(v79 + 200) + 28);
        v62 = result;
        sub_100004F84(v60, &qword_100AD6FB8);
        sub_10003ED0C(v56, v60, type metadata accessor for UniformDateBins);
        sub_1000082B4(v56 + v61, v60 + *(v69 + 28), &qword_100AD2688);
        *(v60 + *(v69 + 32)) = v62;
        v63 = swift_task_alloc();
        *(v63 + 16) = v56;
        v64 = *(v57 + 28);
        v65 = sub_100254C9C(sub_10025AB84, v63, *(v58 + *(v57 + 32)));

        sub_100004F84(v59, &qword_100AD6FB8);
        sub_10003ED0C(v58, v59, type metadata accessor for UniformDateBins);
        sub_1000082B4(v58 + v64, v59 + *(v69 + 28), &qword_100AD2688);
        *(v59 + *(v69 + 32)) = v65;
        sub_100004F84(v58, &qword_100ADA650);
        sub_100004F84(v71, &qword_100ADA660);
        (*(v68 + 40))(v67 + v78, v76, v74);
        sub_100004F84(v56, &qword_100ADA658);

        v66 = *(v79 + 8);

        return v66();
      }

      v47 = *(v41 + 8 * v38);
      ++v46;
      if (v47)
      {
        v44 = result;
        v45 = __clz(__rbit64(v47));
        v42 = (v47 - 1) & v47;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v44 = result;
    v45 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_22:
    v48 = v45 | (v38 << 6);
    v49 = *(v79 + 64);
    v50 = *(*(v73 + 48) + 8 * v48);
    sub_10003ED0C(*(v73 + 56) + *(v77 + 72) * v48, v49, _s5MonthVMa);
    v51 = IndexSet.count.getter();
    v52 = *v49;
    result = sub_10003F8FC(v49, _s5MonthVMa);
    *(v70 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    *(v44[6] + 8 * v48) = v50;
    v53 = (v44[7] + 32 * v48);
    *v53 = v51;
    v53[1] = v52;
    v53[2] = _swiftEmptyArrayStorage;
    v53[3] = _swiftEmptyArrayStorage;
    v54 = v44[2];
    v29 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v29)
    {
      break;
    }

    result = v44;
    v44[2] = v55;
    if (!v42)
    {
      goto LABEL_17;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10024A5E0()
{
  if (qword_100ACFB60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100ADA5A8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch entries by entry date: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10024A804()
{
  v1 = *(v0 + 24);

  *(v0 + 56) = *(v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager_options);

  return _swift_task_switch(sub_1000898BC, 0, 0);
}

uint64_t sub_10024A88C()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10024A99C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 256) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_10024AC88;
  }

  else
  {
    v5 = sub_10024AB30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10024AB30()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[5];
  v5 = *(v0[22] + 8);
  v5(v0[26], v3);
  v5(v2, v3);
  swift_beginAccess();
  sub_10003ED0C(v1, v4, type metadata accessor for InsightsDataManager.Streaks);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10024AC88()
{
  if (qword_100ACFB60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100ADA5A8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch events for streaks: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[21];
  v10 = v0[5];
  v11 = *(v0[22] + 8);
  v11(v0[26], v9);
  v11(v8, v9);
  swift_beginAccess();
  sub_10003ED0C(v7, v10, type metadata accessor for InsightsDataManager.Streaks);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10024AF0C()
{
  v1 = *(v0 + 56);

  *(v0 + 112) = *(v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager_options);

  return _swift_task_switch(sub_100089C84, 0, 0);
}

uint64_t sub_10024AF94()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];

  swift_getKeyPath();
  v0[5] = v4;
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC7Journal19InsightsDataManager__calendar;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1000B535C;
  v7 = v0[16];
  v8 = v0[11];
  v9 = v0[8];

  return sub_100259C44(v7, v8, v9);
}

id sub_10024B118()
{
  v1 = [*(v0 + 16) newBackgroundContext];
  v2 = String._bridgeToObjectiveC()();
  [v1 setName:v2];

  v3 = [objc_opt_self() mergeByPropertyStoreTrumpMergePolicy];
  [v1 setMergePolicy:v3];

  [v1 setAutomaticallyMergesChangesFromParent:1];
  NSManagedObjectContext.setInitialQueryGeneration()();
  return v1;
}

uint64_t sub_10024B1D8()
{
  v1 = *(v0 + 24);

  *(v0 + 48) = *(v1 + OBJC_IVAR____TtC7Journal19InsightsDataManager_options);

  return _swift_task_switch(sub_100089D80, 0, 0);
}

uint64_t sub_10024B260(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10024B37C, 0, 0);
}

uint64_t sub_10024B3A0(unint64_t a1, Swift::Int a2, uint64_t a3)
{
  if (__OFADD__(*v4, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v4;
  v7 = a3;
  v8 = a2;
  v5 = a1;
  ++*v4;
  v6 = _s4YearVMa(0);
  IndexSet.insert(_:)(v8);
  v9 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  v26 = v11;
  a1 = sub_1000B8DAC(v7);
  v13 = v11[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v8) = v12;
  if (v11[3] < v16)
  {
    sub_10081EDF4(v16, isUniquelyReferenced_nonNull_native);
    v11 = v26;
    a1 = sub_1000B8DAC(v7);
    if ((v8 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

    a1 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  *(v3 + v9) = v11;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_8:
  v8 = a1;
  sub_1002035E4(a1, v7, 0, v11);
  a1 = v8;
LABEL_9:
  while (1)
  {
    v18 = v11[7];
    v19 = *(v18 + 8 * a1);
    v15 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v15)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v25 = a1;
    sub_100823444();
    a1 = v25;
    v11 = v26;
    *(v3 + v9) = v26;
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  *(v18 + 8 * a1) = v20;
  v21 = *(v5 + *(type metadata accessor for InsightsDataManager.EntrySummary(0) + 24));
  v22 = *(v6 + 28);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v3 + v22);
  result = sub_100254A70(v21, sub_100259C30, 0, v23, &v26);
  *(v3 + v22) = v26;
  return result;
}

void sub_10024B55C(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a3;
  v111 = a2;
  v97 = a4;
  v5 = sub_1000F24EC(&qword_100ADA650);
  __chkstk_darwin(v5 - 8);
  v107 = v94 - v6;
  v7 = sub_1000F24EC(&qword_100ADA658);
  __chkstk_darwin(v7 - 8);
  v98 = v94 - v8;
  v120 = type metadata accessor for Calendar();
  v106 = *(v120 - 8);
  __chkstk_darwin(v120);
  v105 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Calendar.Component();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v104 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100ADA660);
  __chkstk_darwin(v11 - 8);
  v113 = v94 - v12;
  v110 = sub_1000F24EC(&qword_100AD2680);
  v13 = __chkstk_darwin(v110);
  v100 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v115 = v94 - v15;
  v99 = sub_1000F24EC(&qword_100AD2688);
  v16 = __chkstk_darwin(v99);
  v101 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v112 = v94 - v18;
  v19 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v19 - 8);
  v108 = v94 - v20;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v116 = v21;
  v117 = v22;
  v23 = __chkstk_darwin(v21);
  v109 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v114 = v94 - v25;
  v26 = [objc_allocWithZone(NSExpressionDescription) init];
  v27 = String._bridgeToObjectiveC()();
  [v26 setName:v27];

  sub_1000065A8(0, &qword_100ADA670);
  sub_1000F24EC(&unk_100AD5B10);
  v28 = swift_allocObject();
  v118 = xmmword_100940080;
  *(v28 + 16) = xmmword_100940080;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100031B20();
  *(v28 + 32) = 0x7461447972746E65;
  *(v28 + 40) = 0xE900000000000065;
  v29 = NSExpression.init(format:_:)();
  [v26 setExpression:v29];

  [v26 setExpressionResultType:900];
  v30 = [objc_allocWithZone(NSFetchRequest) init];
  v31 = type metadata accessor for JournalEntryMO();
  v32 = [swift_getObjCClassFromMetadata() entity];
  [v30 setEntity:v32];

  v33 = sub_1000065A8(0, &qword_100ADB900);
  v34 = static NSPredicate.allJournalEntries.getter();
  [v30 setPredicate:v34];

  [v30 setResultType:2];
  sub_1000F24EC(&unk_100AE88B0);
  v35 = swift_allocObject();
  *(v35 + 16) = v118;
  *(v35 + 56) = sub_1000065A8(0, &qword_100ADA678);
  *(v35 + 32) = v26;
  v36 = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 setPropertiesToFetch:isa];

  sub_1000065A8(0, &qword_100AD1390);
  v38 = v119;
  v39 = NSManagedObjectContext.fetch<A>(_:)();
  if (v38)
  {

    return;
  }

  v40 = 0x80000001008E74C0;
  v41 = v116;
  v94[1] = v33;
  *&v118 = v36;
  v42 = v110;
  v94[2] = v31;
  v119 = v30;
  v43 = v111;
  v96 = a1;
  v95 = 0;
  if (v39 >> 62)
  {
    v93 = v39;
    v44 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v93;
  }

  else
  {
    v44 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v43;
  v46 = v42;
  v47 = v41;
  v48 = 0xD000000000000011;
  if (!v44)
  {

    v123 = 0u;
    v124 = 0u;
    v52 = v117;
    v42 = v115;
    v53 = v108;
    goto LABEL_16;
  }

  if ((v39 & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  for (i = *(v39 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v50 = i;

    *&v121 = v48;
    *(&v121 + 1) = v40;
    v51 = [v50 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    if (v51)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
    }

    v52 = v117;
    v46 = v42;
    v53 = v108;
    v123 = v121;
    v124 = v122;
    v42 = v115;
    if (*(&v122 + 1))
    {
      v54 = swift_dynamicCast();
      (*(v52 + 56))(v53, v54 ^ 1u, 1, v47);
      if ((*(v52 + 48))(v53, 1, v47) != 1)
      {
        v40 = v109;
        (*(v52 + 32))(v109, v53, v47);
        v55 = v114;
        goto LABEL_19;
      }
    }

    else
    {
LABEL_16:
      sub_100004F84(&v123, &qword_100AD13D0);
      (*(v52 + 56))(v53, 1, 1, v47);
    }

    v40 = v109;
    static Date.distantFuture.getter();
    v56 = (*(v52 + 48))(v53, 1, v47);
    v55 = v114;
    if (v56 != 1)
    {
      sub_100004F84(v53, &unk_100AD4790);
    }

LABEL_19:
    v48 = sub_100034024(&qword_100AD2698, &type metadata accessor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      (*(v52 + 8))(v40, v47);
      (*(v52 + 16))(v55, v45, v47);
    }

    else
    {
      (*(v52 + 32))(v55, v40, v47);
    }

    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      break;
    }

    __break(1u);
LABEL_29:
    ;
  }

  v57 = *(v52 + 16);
  v57(v42, v55, v47);
  v57(&v42[*(v46 + 12)], v45, v47);
  v58 = v42;
  v59 = v100;
  sub_1000082B4(v58, v100, &qword_100AD2680);
  v60 = v46;
  v61 = *(v46 + 12);
  v62 = *(v52 + 32);
  v63 = v112;
  v62(v112, v59, v47);
  v64 = v63;
  v65 = *(v52 + 8);
  v65(v59 + v61, v47);
  sub_100021CEC(v115, v59, &qword_100AD2680);
  v66 = v63 + *(v99 + 36);
  v67 = v59 + *(v60 + 12);
  v110 = v52 + 32;
  v109 = v62;
  v62(v66, v67, v47);
  v117 = v52 + 8;
  v111 = v65;
  v65(v59, v47);
  v115 = *(v102 + 104);
  v68 = v104;
  v69 = v103;
  (v115)(v104, enum case for Calendar.Component.day(_:), v103);
  v70 = v63;
  v71 = v101;
  sub_1000082B4(v64, v101, &qword_100AD2688);
  v72 = *(v106 + 16);
  v73 = v105;
  v72(v105, v125, v120);
  sub_100247A34(v68, v71, v73, &qword_100ADA660, &unk_10094A410, v113);
  v74 = v115;
  (v115)(v68, enum case for Calendar.Component.month(_:), v69);
  sub_1000082B4(v70, v71, &qword_100AD2688);
  v72(v73, v125, v120);
  v75 = v98;
  sub_100247A34(v68, v71, v73, &qword_100ADA658, &unk_10094A408, v98);
  (v74)(v68, enum case for Calendar.Component.year(_:), v69);
  v76 = v112;
  sub_1000082B4(v112, v71, &qword_100AD2688);
  v72(v73, v125, v120);
  v77 = v107;
  v78 = v73;
  v79 = v113;
  sub_100247A34(v68, v71, v78, &qword_100ADA650, &unk_10094A400, v107);
  v80 = static JournalEntryMO.fetchRequest()();
  v81 = static NSPredicate.allJournalEntries.getter();
  [v80 setPredicate:v81];

  sub_1000F24EC(&unk_100AD4780);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_100941D50;
  sub_1000065A8(0, &qword_100AD5B00);
  swift_getKeyPath();
  *(v82 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v83 = Array._bridgeToObjectiveC()().super.isa;

  [v80 setSortDescriptors:v83];

  v84 = Array._bridgeToObjectiveC()().super.isa;
  [v80 setRelationshipKeyPathsForPrefetching:v84];

  __chkstk_darwin(v85);
  v94[-4] = v79;
  v94[-3] = v75;
  v94[-2] = v77;
  v86 = v95;
  NSManagedObjectContext.forEach<A>(_:batchSize:using:)();
  if (v86)
  {

    sub_100004F84(v76, &qword_100AD2688);
    v111(v114, v116);
    sub_100004F84(v77, &qword_100ADA650);
  }

  else
  {
    sub_100004F84(v76, &qword_100AD2688);

    v87 = sub_1000F24EC(&qword_100ADA648);
    v88 = v77;
    v89 = v87[12];
    v90 = v87[16];
    v91 = v87[20];
    v92 = v97;
    sub_1000082B4(v79, v97, &qword_100ADA660);
    sub_1000082B4(v75, v92 + v89, &qword_100ADA658);
    sub_1000082B4(v88, v92 + v90, &qword_100ADA650);
    (v109)(v92 + v91, v114, v116);
    sub_100004F84(v88, &qword_100ADA650);
  }

  sub_100004F84(v75, &qword_100ADA658);
  sub_100004F84(v79, &qword_100ADA660);
}

uint64_t sub_10024C5CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v63 = _s4YearVMa(0);
  v7 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = _s5MonthVMa(0);
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v64 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for UniformDateBins(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100ADA680);
  __chkstk_darwin(v14 - 8);
  v16 = &v60 - v15;
  v17 = type metadata accessor for InsightsDataManager.EntrySummary(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10024CCD8(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100004F84(v16, &qword_100ADA680);
    return 1;
  }

  v60 = v7;
  sub_1000AC020(v16, v20, type metadata accessor for InsightsDataManager.EntrySummary);
  sub_10003ED0C(a2, v13, type metadata accessor for UniformDateBins);
  v65 = *(v17 + 20);
  v21 = sub_1000B89AC(&v20[v65]);
  sub_10003F8FC(v13, type metadata accessor for UniformDateBins);
  v22 = *(sub_1000F24EC(&qword_100ADA660) + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a2 + v22);
  v68 = v21;
  v69 = v24;
  *(a2 + v22) = 0x8000000000000000;
  v26 = sub_1000B8DAC(v21);
  v27 = *(v24 + 16);
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v21) = v25;
  if (*(v24 + 24) < v29)
  {
    sub_10081EDF4(v29, isUniquelyReferenced_nonNull_native);
    v24 = v69;
    v30 = sub_1000B8DAC(v68);
    if ((v21 & 1) == (v31 & 1))
    {
      v26 = v30;
      goto LABEL_8;
    }

    goto LABEL_36;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
LABEL_8:
    *(a2 + v22) = v24;

    v32 = *(a2 + v22);
    if ((v21 & 1) == 0)
    {
      sub_1002035E4(v26, v68, 0, *(a2 + v22));
    }

    v33 = *(v32 + 56);
    v34 = *(v33 + 8 * v26);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *(v33 + 8 * v26) = v36;
    sub_10003ED0C(a3, v13, type metadata accessor for UniformDateBins);
    v22 = sub_1000B89AC(&v20[v65]);
    sub_10003F8FC(v13, type metadata accessor for UniformDateBins);
    a2 = *(sub_1000F24EC(&qword_100ADA658) + 32);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a3 + a2);
    v38 = v69;
    *(a3 + a2) = 0x8000000000000000;
    v26 = sub_1000B8DAC(v22);
    v40 = *(v38 + 16);
    v41 = (v39 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_32;
    }

    LOBYTE(v21) = v39;
    v43 = *(v38 + 24);
    v61 = v22;
    if (v43 >= v42)
    {
      if ((v37 & 1) == 0)
      {
        sub_1008235CC();
        v38 = v69;
      }
    }

    else
    {
      sub_10081F094(v42, v37);
      v38 = v69;
      v44 = sub_1000B8DAC(v22);
      if ((v21 & 1) != (v45 & 1))
      {
        goto LABEL_36;
      }

      v26 = v44;
    }

    *(a3 + a2) = v38;

    v46 = *(a3 + a2);
    v22 = v67;
    if ((v21 & 1) == 0)
    {
      a2 = v64;
      *v64 = 0;
      IndexSet.init()();
      sub_100203654(v26, v61, a2, v46);
    }

    v47 = (v46[7] + *(v66 + 72) * v26);
    if (__OFADD__(*v47, 1))
    {
      goto LABEL_33;
    }

    ++*v47;
    IndexSet.insert(_:)(v68);
    sub_10003ED0C(a4, v13, type metadata accessor for UniformDateBins);
    v22 = sub_1000B89AC(&v20[v65]);
    sub_10003F8FC(v13, type metadata accessor for UniformDateBins);
    a2 = *(sub_1000F24EC(&qword_100ADA650) + 32);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a4 + a2);
    v48 = v69;
    *(a4 + a2) = 0x8000000000000000;
    a3 = sub_1000B8DAC(v22);
    v50 = *(v48 + 16);
    v51 = (v49 & 1) == 0;
    v52 = v50 + v51;
    if (!__OFADD__(v50, v51))
    {
      break;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    sub_100823444();
    v24 = v69;
  }

  v53 = v49;
  if (*(v48 + 24) >= v52)
  {
    if ((v26 & 1) == 0)
    {
      sub_100823590();
      v48 = v69;
    }

LABEL_26:
    *(a4 + a2) = v48;

    v56 = *(a4 + a2);
    if ((v53 & 1) == 0)
    {
      v58 = v62;
      v57 = v63;
      *v62 = 0;
      IndexSet.init()();
      *(v58 + *(v57 + 24)) = &_swiftEmptyDictionarySingleton;
      *(v58 + *(v57 + 28)) = &_swiftEmptyDictionarySingleton;
      sub_100203628(a3, v22, v58, v56);
    }

    sub_10024B3A0(v20, v68, v61);
    sub_10003F8FC(v20, type metadata accessor for InsightsDataManager.EntrySummary);
    return 1;
  }

  sub_10081F058(v52, v26);
  v48 = v69;
  v54 = sub_1000B8DAC(v22);
  if ((v53 & 1) == (v55 & 1))
  {
    a3 = v54;
    goto LABEL_26;
  }

LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10024CCD8@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v2 - 8);
  v4 = &v49[-v3];
  v5 = type metadata accessor for AssetType();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v86 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v90 = &v49[-v9];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = [v1 id];
  if (!v18)
  {
    goto LABEL_66;
  }

  v74 = v15;
  v19 = v18;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = [v1 entryDate];
  if (!v20)
  {
    (*(v74 + 8))(v17, v14);
LABEL_66:
    v45 = type metadata accessor for InsightsDataManager.EntrySummary(0);
    return (*(*(v45 - 8) + 56))(v75, 1, 1, v45);
  }

  v85 = v17;
  v21 = v20;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = JournalEntryMO.assetsArrayUnsorted.getter();
  v84 = v22;
  if (v22 >> 62)
  {
LABEL_75:
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v14;
  v68 = v13;
  v69 = v11;
  v70 = v10;
  if (!v23)
  {
    v10 = 0;
    v14 = &_swiftEmptyDictionarySingleton;
    v25 = v85;
LABEL_68:

    v47 = v75;
    (*(v74 + 32))(v75, v25, v67);
    v48 = type metadata accessor for InsightsDataManager.EntrySummary(0);
    (*(v69 + 32))(v47 + *(v48 + 20), v68, v70);
    *(v47 + *(v48 + 24)) = v14;
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    return sub_100004DF8(v10);
  }

  v24 = 0;
  v10 = 0;
  v13 = v84;
  v83 = enum case for AssetType.photo(_:);
  v88 = (v6 + 48);
  v89 = v84 & 0xC000000000000001;
  v81 = (v6 + 16);
  v82 = (v6 + 32);
  v80 = enum case for AssetType.livePhoto(_:);
  v79 = (v6 + 88);
  v76 = enum case for AssetType.video(_:);
  v73 = enum case for AssetType.music(_:);
  v72 = enum case for AssetType.podcast(_:);
  v71 = enum case for AssetType.book(_:);
  v66 = enum case for AssetType.audio(_:);
  v65 = enum case for AssetType.visit(_:);
  v64 = enum case for AssetType.multiPinMap(_:);
  v63 = enum case for AssetType.genericMap(_:);
  v62 = enum case for AssetType.link(_:);
  v61 = enum case for AssetType.contact(_:);
  v60 = enum case for AssetType.workoutIcon(_:);
  v59 = enum case for AssetType.workoutRoute(_:);
  v58 = enum case for AssetType.reflection(_:);
  v57 = enum case for AssetType.stateOfMind(_:);
  v56 = enum case for AssetType.motionActivity(_:);
  v55 = enum case for AssetType.thirdPartyMedia(_:);
  v54 = enum case for AssetType.placeholder(_:);
  v53 = enum case for AssetType.streakEvent(_:);
  v52 = enum case for AssetType.drawing(_:);
  v78 = (v6 + 8);
  v51 = enum case for AssetType.confetti(_:);
  v50 = enum case for AssetType.unknown(_:);
  v77 = v84 & 0xFFFFFFFFFFFFFF8;
  v14 = &_swiftEmptyDictionarySingleton;
  v25 = v85;
  v87 = v23;
  while (1)
  {
    if (v89)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v77 + 16))
      {
        goto LABEL_73;
      }

      v26 = *(v13 + 8 * v24 + 32);
    }

    v6 = v26;
    v11 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    JournalEntryAssetMO.type.getter();
    if ((*v88)(v4, 1, v5) != 1)
    {
      break;
    }

    sub_100004F84(v4, &qword_100AE4290);
LABEL_8:
    ++v24;
    if (v11 == v87)
    {
      goto LABEL_68;
    }
  }

  v27 = v90;
  (*v82)(v90, v4, v5);
  v28 = v86;
  (*v81)(v86, v27, v5);
  v29 = (*v79)(v28, v5);
  if (v29 == v83 || v29 == v80)
  {
    v13 = 0;
  }

  else if (v29 == v76)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
    if (v29 != v73 && v29 != v72 && v29 != v71)
    {
      if (v29 == v66)
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
        if (v29 != v65 && v29 != v64 && v29 != v63)
        {
          if (v29 == v62)
          {

            (*v78)(v90, v5);
LABEL_33:
            v13 = v84;
            v25 = v85;
            goto LABEL_8;
          }

          if (v29 == v61)
          {
            v13 = 5;
          }

          else
          {
            v13 = 6;
            if (v29 != v60 && v29 != v59)
            {
              if (v29 == v58)
              {
                v13 = 7;
              }

              else if (v29 == v57)
              {
                v13 = 8;
              }

              else if (v29 != v56)
              {
                if (v29 == v55)
                {
                  v13 = 3;
                }

                else
                {
                  v13 = v84;
                  v25 = v85;
                  if (v29 == v54 || v29 == v53)
                  {
                    goto LABEL_64;
                  }

                  if (v29 == v52)
                  {
                    v13 = 9;
                  }

                  else
                  {
                    if (v29 != v51)
                    {
                      if (v29 != v50)
                      {
                        goto LABEL_76;
                      }

LABEL_64:
                      (*v78)(v90, v5);

                      goto LABEL_8;
                    }

                    v13 = 10;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_100004DF8(v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v14;
  v32 = sub_1000AC088(v13);
  v34 = v14[2];
  v35 = (v33 & 1) == 0;
  v36 = __OFADD__(v34, v35);
  v37 = v34 + v35;
  if (v36)
  {
    goto LABEL_71;
  }

  v10 = v33;
  if (v14[3] >= v37)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = v32;
      sub_1008232F8();
      v32 = v44;
      v14 = v91;
      if ((v10 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

LABEL_28:
    v14 = v91;
    if ((v10 & 1) == 0)
    {
LABEL_29:
      v14[(v32 >> 6) + 8] |= 1 << v32;
      *(v14[6] + v32) = v13;
      *(v14[7] + 8 * v32) = 0;
      v39 = v14[2];
      v36 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v36)
      {
        goto LABEL_74;
      }

      v14[2] = v40;
    }

LABEL_31:
    v41 = v14[7];
    v42 = *(v41 + 8 * v32);
    v36 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v36)
    {
      goto LABEL_72;
    }

    *(v41 + 8 * v32) = v43;

    (*v78)(v90, v5);
    v10 = sub_1000B9B14;
    goto LABEL_33;
  }

  sub_1000AC5D0(v37, isUniquelyReferenced_nonNull_native);
  v32 = sub_1000AC088(v13);
  if ((v10 & 1) == (v38 & 1))
  {
    goto LABEL_28;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_76:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10024D724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = _s4YearVMa(0);
  v7 = IndexSet.count.getter();
  v8 = *a1;
  v9 = *(a1 + *(v6 + 24));
  v13[2] = a2;
  v10 = sub_100247008(sub_10025ABAC, v13, v9);
  v14 = sub_1000AC98C(*(a1 + *(v6 + 28)));

  sub_1000ACCB8(&v14);

  v12 = v14;
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = v12;
  return result;
}

uint64_t sub_10024D808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&qword_100AD2688);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(sub_1000F24EC(&qword_100AD6548) + 48);
  sub_10003F084(v8, v6);
  Date.timeIntervalSince(_:)();
  static Date.+ infix(_:_:)();
  result = sub_100004F84(v6, &qword_100AD2688);
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = (a2 + v9);
    *v11 = 0;
    v11[1] = v7;
  }

  return result;
}

void sub_10024D920()
{
  type metadata accessor for JournalEntryMO();
  v0 = static JournalEntryMO.fetchRequest()();
  sub_1000065A8(0, &qword_100ADB900);
  v1 = static NSPredicate.allJournalEntries.getter();
  [v0 setPredicate:v1];

  NSManagedObjectContext.forEach<A>(_:batchSize:using:)();
  if (v8)
  {
    if (qword_100ACFB60 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100ADA5A8);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch entries for word counts: %@", v5, 0xCu);
      sub_100004F84(v6, &unk_100AD4BB0);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_10024DB60(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v11 = type metadata accessor for Calendar.Component();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v82 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v78 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v79 = &v77 - v18;
  v19 = __chkstk_darwin(v17);
  v80 = &v77 - v20;
  __chkstk_darwin(v19);
  v22 = &v77 - v21;
  v23 = JournalEntryMO.unformattedMergeableTitle.getter();
  v81 = a5;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v23 = [a1 title];
    if (v23)
    {
      v26 = a2;
      v27 = v23;
      v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = Data.getAttributedString()();
      sub_1000340DC(v28, v30);
      if (v31)
      {
        v32 = [v31 string];

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v34;

        v23 = v33;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      a2 = v26;
    }

    else
    {
      v25 = 0xE000000000000000;
    }
  }

  v35 = a2;
  v36 = sub_10043F9D8(v23, v25, a2, a3);

  v37 = JournalEntryMO.unformattedMergeableText.getter();
  if (v38)
  {
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v41 = [a1 text];
    if (v41)
    {
      v77 = a3;
      v42 = v41;
      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = Data.getAttributedString()();
      sub_1000340DC(v43, v45);
      if (v46)
      {
        v47 = [v46 string];

        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v48;
      }

      else
      {
        v39 = 0;
        v40 = 0xE000000000000000;
      }

      a3 = v77;
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }
  }

  v49 = sub_10043F9D8(v39, v40, v35, a3);

  v51 = v36 + v49;
  if (__OFADD__(v36, v49))
  {
    __break(1u);
    goto LABEL_29;
  }

  result = swift_beginAccess();
  if (__OFADD__(*a4, v51))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *a4 += v51;
  v52 = [a1 entryDate];
  if (!v52)
  {
    goto LABEL_23;
  }

  v53 = v80;
  v77 = (v36 + v49);
  v54 = v52;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v55 = a4;
  v56 = v82;
  (*(v82 + 32))(v22, v53, v14);
  v57 = v14;
  v58 = v83;
  v59 = v84;
  (*(v83 + 104))(v13, enum case for Calendar.Component.month(_:), v84);
  LOBYTE(v53) = Calendar.isDate(_:equalTo:toGranularity:)();
  v60 = v58;
  v14 = v57;
  v61 = v59;
  v51 = v77;
  (*(v60 + 8))(v13, v61);
  v62 = v56;
  a4 = v55;
  (*(v62 + 8))(v22, v57);
  if ((v53 & 1) == 0)
  {
    goto LABEL_23;
  }

  result = swift_beginAccess();
  v63 = v55[1];
  v64 = __OFADD__(v63, v51);
  v65 = v63 + v51;
  if (v64)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v55[1] = v65;
LABEL_23:
  v66 = [a1 entryDate];
  if (!v66)
  {
    return 1;
  }

  v67 = v78;
  v68 = v66;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v69 = a4;
  v70 = v82;
  v71 = v79;
  (*(v82 + 32))(v79, v67, v14);
  v73 = v83;
  v72 = v84;
  (*(v83 + 104))(v13, enum case for Calendar.Component.year(_:), v84);
  v74 = Calendar.isDate(_:equalTo:toGranularity:)();
  (*(v73 + 8))(v13, v72);
  (*(v70 + 8))(v71, v14);
  if ((v74 & 1) == 0)
  {
    return 1;
  }

  result = swift_beginAccess();
  v75 = v69[2];
  v64 = __OFADD__(v75, v51);
  v76 = v75 + v51;
  if (!v64)
  {
    v69[2] = v76;
    return 1;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_10024E114(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v257 = a6;
  v256 = a5;
  v267 = a3;
  v263 = a2;
  v268 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v268);
  v234 = &v227 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_1000F24EC(&qword_100ADA628);
  __chkstk_darwin(v241);
  v240 = (&v227 - v9);
  v239 = sub_1000F24EC(&qword_100ADA630);
  v235 = *(v239 - 8);
  __chkstk_darwin(v239);
  v242 = &v227 - v10;
  v273 = type metadata accessor for AssetType();
  v238 = *(v273 - 1);
  __chkstk_darwin(v273);
  v237 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&unk_100AD4790);
  v13 = __chkstk_darwin(v12 - 8);
  v255 = &v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v259 = &v227 - v16;
  v17 = __chkstk_darwin(v15);
  v265 = &v227 - v18;
  v19 = __chkstk_darwin(v17);
  v254 = &v227 - v20;
  v21 = __chkstk_darwin(v19);
  v258 = &v227 - v22;
  v23 = __chkstk_darwin(v21);
  v272 = &v227 - v24;
  v25 = __chkstk_darwin(v23);
  v270 = &v227 - v26;
  v27 = __chkstk_darwin(v25);
  v269 = &v227 - v28;
  v29 = __chkstk_darwin(v27);
  v284 = &v227 - v30;
  v31 = __chkstk_darwin(v29);
  v283 = (&v227 - v32);
  __chkstk_darwin(v31);
  v282 = (&v227 - v33);
  v286 = type metadata accessor for Date();
  v274 = *(v286 - 1);
  v34 = __chkstk_darwin(v286);
  v236 = &v227 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v266 = &v227 - v37;
  v38 = __chkstk_darwin(v36);
  v247 = &v227 - v39;
  v40 = __chkstk_darwin(v38);
  v253 = &v227 - v41;
  v42 = __chkstk_darwin(v40);
  v271 = &v227 - v43;
  __chkstk_darwin(v42);
  v285 = &v227 - v44;
  v233 = type metadata accessor for InsightsDataManager.Streaks(0);
  v260 = a4;
  v232 = swift_projectBox();
  v264 = type metadata accessor for JournalEntryMO();
  v261 = static JournalEntryMO.fetchRequest()();
  v288 = sub_1000F24EC(&unk_100AD4780);
  v45 = swift_allocObject();
  v245 = xmmword_100941D70;
  *(v45 + 16) = xmmword_100941D70;
  v46 = sub_1000065A8(0, &qword_100ADB900);
  *(v45 + 32) = static NSPredicate.isNotDraftEntry.getter();
  *(v45 + 40) = static NSPredicate.isNotTipEntry.getter();
  v251 = sub_1000F24EC(&unk_100AD5B10);
  v47 = swift_allocObject();
  v250 = xmmword_100942000;
  *(v47 + 16) = xmmword_100942000;
  *(v47 + 56) = &type metadata for String;
  v48 = sub_100031B20();
  *(v47 + 64) = v48;
  *(v47 + 32) = 0x4464657461657263;
  *(v47 + 40) = 0xEB00000000657461;
  v248 = a1;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v244 = sub_1000065A8(0, &unk_100AE5E10);
  *(v47 + 96) = v244;
  v50 = sub_10006DAB0(&qword_100AD3758, &unk_100AE5E10);
  *(v47 + 72) = isa;
  *(v47 + 136) = &type metadata for String;
  *(v47 + 144) = v48;
  v252 = v48;
  v51 = v50;
  *(v47 + 104) = v50;
  *(v47 + 112) = 0x4464657461657263;
  *(v47 + 120) = 0xEB00000000657461;
  v246 = "InsightsDataManager";
  *(v45 + 48) = NSPredicate.init(format:_:)();
  v52 = Array._bridgeToObjectiveC()().super.isa;

  v53 = objc_opt_self();
  v54 = [v53 andPredicateWithSubpredicates:v52];

  v55 = v261;
  [v261 setPredicate:v54];

  v56 = swift_allocObject();
  v243 = xmmword_100941D50;
  *(v56 + 16) = xmmword_100941D50;
  v57 = sub_1000065A8(0, &qword_100AD5B00);
  swift_getKeyPath();
  *(v56 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v58 = Array._bridgeToObjectiveC()().super.isa;

  [v55 setSortDescriptors:v58];

  v59 = sub_1000F24EC(&unk_100AE88B0);
  v60 = swift_allocObject();
  v249 = xmmword_100940080;
  *(v60 + 16) = xmmword_100940080;
  *(v60 + 56) = &type metadata for String;
  *(v60 + 32) = 0x4464657461657263;
  *(v60 + 40) = 0xEB00000000657461;
  v61 = Array._bridgeToObjectiveC()().super.isa;

  [v55 setPropertiesToFetch:v61];

  v62 = v287;
  v63 = NSManagedObjectContext.fetch<A>(_:)();
  v262 = v62;
  if (v62)
  {

    return;
  }

  v227 = v53;
  v228 = v57;
  v229 = v51;
  v230 = v59;
  v231 = v46;
  v281 = v63;
  if (v63 >> 62)
  {
    goto LABEL_107;
  }

  v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v65 = v286;
  if (v64)
  {
    v66 = 0;
    v280 = v63 & 0xC000000000000001;
    v279 = v63 & 0xFFFFFFFFFFFFFF8;
    v276 = (v274 + 56);
    v275 = (v274 + 48);
    v287 = _swiftEmptyArrayStorage;
    *&v278 = v274 + 32;
    v277 = v64;
    while (1)
    {
      if (v280)
      {
        v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v68 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v66 >= *(v279 + 16))
        {
          goto LABEL_102;
        }

        v67 = *(v63 + 8 * v66 + 32);
        v68 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          v64 = _CocoaArrayWrapper.endIndex.getter();
          v63 = v281;
          goto LABEL_5;
        }
      }

      v69 = v67;
      v70 = [v69 createdDate];
      if (v70)
      {
        v71 = v70;
        v72 = v284;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = 0;
      }

      else
      {
        v73 = 1;
        v72 = v284;
      }

      (*v276)(v72, v73, 1, v65);
      v74 = v72;
      v75 = v283;
      sub_100021CEC(v74, v283, &unk_100AD4790);
      v76 = v75;
      v77 = v282;
      sub_100021CEC(v76, v282, &unk_100AD4790);

      if ((*v275)(v77, 1, v65) == 1)
      {
        sub_100004F84(v77, &unk_100AD4790);
      }

      else
      {
        v78 = *v278;
        (*v278)(v285, v77, v65);
        v79 = v287;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_1000881C0(0, v79[2] + 1, 1, v79);
        }

        v287 = v79;
        v81 = v79[2];
        v80 = v79[3];
        if (v81 >= v80 >> 1)
        {
          v287 = sub_1000881C0(v80 > 1, v81 + 1, 1, v287);
        }

        v82 = v287;
        v287[2] = v81 + 1;
        v83 = v82 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v81;
        v65 = v286;
        v78(v83);
      }

      ++v66;
      v63 = v281;
      if (v68 == v277)
      {
        goto LABEL_25;
      }
    }
  }

  v287 = _swiftEmptyArrayStorage;
LABEL_25:

  v84 = static JournalEntryMO.fetchRequest()();
  v85 = swift_allocObject();
  *(v85 + 16) = v245;
  *(v85 + 32) = static NSPredicate.isNotDraftEntry.getter();
  *(v85 + 40) = static NSPredicate.isNotTipEntry.getter();
  v86 = swift_allocObject();
  *(v86 + 16) = v250;
  v87 = v252;
  *(v86 + 56) = &type metadata for String;
  *(v86 + 64) = v87;
  *(v86 + 32) = 0x4464657461647075;
  *(v86 + 40) = 0xEB00000000657461;
  v88.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v89 = v229;
  *(v86 + 96) = v244;
  *(v86 + 104) = v89;
  *(v86 + 72) = v88;
  *(v86 + 136) = &type metadata for String;
  *(v86 + 144) = v87;
  *(v86 + 112) = 0x4464657461647075;
  *(v86 + 120) = 0xEB00000000657461;
  *(v85 + 48) = NSPredicate.init(format:_:)();
  v90 = Array._bridgeToObjectiveC()().super.isa;

  v91 = [v227 andPredicateWithSubpredicates:v90];

  [v84 setPredicate:v91];
  v92 = swift_allocObject();
  *(v92 + 16) = v243;
  swift_getKeyPath();
  *(v92 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v84 setSortDescriptors:v93];

  v94 = swift_allocObject();
  *(v94 + 16) = v249;
  *(v94 + 56) = &type metadata for String;
  *(v94 + 32) = 0x4464657461647075;
  *(v94 + 40) = 0xEB00000000657461;
  v95 = Array._bridgeToObjectiveC()().super.isa;

  [v84 setPropertiesToFetch:v95];

  v96 = v262;
  v97 = NSManagedObjectContext.fetch<A>(_:)();
  if (v96)
  {

    return;
  }

  v98 = v97;
  if (v97 >> 62)
  {
    v99 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v99 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v273;
  v264 = v84;
  v262 = 0;
  if (v99)
  {
    v101 = 0;
    v288 = (v98 & 0xC000000000000001);
    v285 = (v98 & 0xFFFFFFFFFFFFFF8);
    v284 = (v274 + 56);
    v283 = (v274 + 48);
    v102 = _swiftEmptyArrayStorage;
    v282 = (v274 + 32);
    v281 = v99;
    v280 = v98;
    while (1)
    {
      if (v288)
      {
        v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v104 = v272;
        v106 = (v101 + 1);
        if (__OFADD__(v101, 1))
        {
          goto LABEL_103;
        }
      }

      else
      {
        v104 = v272;
        if (v101 >= *(v285 + 2))
        {
          goto LABEL_104;
        }

        v105 = *(v98 + 8 * v101 + 32);
        v106 = (v101 + 1);
        if (__OFADD__(v101, 1))
        {
          goto LABEL_103;
        }
      }

      v107 = v105;
      v108 = [v107 updatedDate];
      v109 = v102;
      if (v108)
      {
        v110 = v108;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v111 = 0;
      }

      else
      {
        v111 = 1;
      }

      v112 = v286;
      (*v284)(v104, v111, 1, v286);
      v113 = v104;
      v114 = v270;
      sub_100021CEC(v113, v270, &unk_100AD4790);
      v115 = v114;
      v116 = v269;
      sub_100021CEC(v115, v269, &unk_100AD4790);

      if ((*v283)(v116, 1, v112) == 1)
      {
        sub_100004F84(v116, &unk_100AD4790);
        v102 = v109;
        v98 = v280;
        v103 = v281;
      }

      else
      {
        v117 = *v282;
        (*v282)(v271, v116, v112);
        v102 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1000881C0(0, v109[2] + 1, 1, v109);
        }

        v98 = v280;
        v119 = v102[2];
        v118 = v102[3];
        v103 = v281;
        if (v119 >= v118 >> 1)
        {
          v102 = sub_1000881C0(v118 > 1, v119 + 1, 1, v102);
        }

        v102[2] = v119 + 1;
        v117(v102 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v119);
      }

      ++v101;
      v100 = v273;
      if (v106 == v103)
      {
        goto LABEL_49;
      }
    }
  }

  v102 = _swiftEmptyArrayStorage;
LABEL_49:
  v279 = v102;

  v288 = type metadata accessor for JournalEntryAssetMO();
  v120 = static JournalEntryAssetMO.fetchRequest()();
  v121 = swift_allocObject();
  *(v121 + 16) = v250;
  v122 = v252;
  *(v121 + 56) = &type metadata for String;
  *(v121 + 64) = v122;
  *(v121 + 32) = 0x7079547465737361;
  *(v121 + 40) = 0xE900000000000065;
  v123 = v238;
  v124 = v237;
  (*(v238 + 104))(v237, enum case for AssetType.streakEvent(_:), v100);
  v125 = AssetType.rawValue.getter();
  v126 = v100;
  v128 = v127;
  (*(v123 + 8))(v124, v126);
  *(v121 + 96) = &type metadata for String;
  *(v121 + 104) = v122;
  *(v121 + 72) = v125;
  *(v121 + 80) = v128;
  *(v121 + 136) = &type metadata for String;
  *(v121 + 144) = v122;
  strcpy((v121 + 112), "assetMetaData");
  *(v121 + 126) = -4864;
  v129 = NSPredicate.init(format:_:)();
  [v120 setPredicate:v129];

  v130 = swift_allocObject();
  *(v130 + 16) = v249;
  *(v130 + 56) = &type metadata for String;
  strcpy((v130 + 32), "assetMetaData");
  *(v130 + 46) = -4864;
  v131 = Array._bridgeToObjectiveC()().super.isa;

  [v120 setPropertiesToFetch:v131];

  v132 = v262;
  v133 = NSManagedObjectContext.fetch<A>(_:)();
  if (v132)
  {

    return;
  }

  v134 = v133;
  v271 = v120;
  v135 = v287;
  if (v133 >> 62)
  {
    v136 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v136 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v137 = v242;
  v262 = 0;
  if (v136)
  {
    v138 = 0;
    v285 = (v134 & 0xC000000000000001);
    v284 = (v134 & 0xFFFFFFFFFFFFFF8);
    v280 = v235 + 56;
    v288 = _swiftEmptyArrayStorage;
    v281 = (v274 + 32);
    v278 = xmmword_100941EE0;
    v283 = v134;
    v282 = v136;
    while (1)
    {
      if (v285)
      {
        v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v138 >= *(v284 + 2))
        {
          goto LABEL_106;
        }

        v139 = *(v134 + 8 * v138 + 32);
      }

      v140 = v139;
      v141 = (v138 + 1);
      if (__OFADD__(v138, 1))
      {
        goto LABEL_105;
      }

      *(objc_allocWithZone(type metadata accessor for StreakEventAsset()) + OBJC_IVAR____TtC7Journal16StreakEventAsset_metadata) = 0;
      v142 = v140;
      v143 = sub_100038FE8(v142);
      v144 = v143;
      v145 = OBJC_IVAR____TtC7Journal16StreakEventAsset_metadata;
      if (*&v143[OBJC_IVAR____TtC7Journal16StreakEventAsset_metadata])
      {
        goto LABEL_67;
      }

      v146 = *&v143[OBJC_IVAR____TtC7Journal5Asset_assetMO];
      if (v146)
      {
        v147 = [v146 assetMetaData];
        if (v147)
        {
          v148 = v147;
          v149 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v151 = v150;

          v152 = v240;
          *v240 = v149;
          v152[1] = v151;
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100ADA638);
          v153 = swift_allocObject();
          (*v280)(v153 + *(*v153 + 104), 1, 1, v239);
          *(v153 + *(*v153 + 112)) = v278;
          v154 = v152;
          v137 = v242;
          sub_100021CEC(v154, v153 + *(*v153 + 120), &qword_100ADA628);
          *&v144[v145] = v153;
        }
      }

      if (*&v144[v145])
      {
LABEL_67:

        sub_10025E6AC(v137);

        v155 = type metadata accessor for StreakEvent();
        v156 = *(v155 - 8);
        if ((*(v156 + 48))(v137, 1, v155) != 1)
        {
          v157 = v247;
          StreakEvent.date.getter();

          (*(v156 + 8))(v137, v155);
          v158 = *v281;
          (*v281)(v253, v157, v286);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v134 = v283;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v288 = sub_1000881C0(0, v288[2] + 1, 1, v288);
          }

          v135 = v287;
          v161 = v288[2];
          v160 = v288[3];
          if (v161 >= v160 >> 1)
          {
            v288 = sub_1000881C0(v160 > 1, v161 + 1, 1, v288);
          }

          v162 = v288;
          v288[2] = v161 + 1;
          v158(&v162[((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v161]);
          goto LABEL_57;
        }
      }

      else
      {

        v163 = type metadata accessor for StreakEvent();
        (*(*(v163 - 8) + 56))(v137, 1, 1, v163);
      }

      v134 = v283;
      sub_100004F84(v137, &qword_100ADA630);
      v135 = v287;
LABEL_57:
      ++v138;
      if (v141 == v282)
      {
        goto LABEL_76;
      }
    }
  }

  v288 = _swiftEmptyArrayStorage;
LABEL_76:

  __chkstk_darwin(v164);
  *(&v227 - 2) = v248;
  v165 = v262;
  v166 = sub_100778588(sub_10025AA60, (&v227 - 4), v288);
  v167 = v268;
  *&v278 = swift_allocBox();
  v169 = v168;
  v170 = (v274 + 56);
  v171 = *(v274 + 56);
  v172 = v286;
  (v171)(v168, 1, 1, v286);
  (v171)(&v169[v167[5]], 1, 1, v172);
  (v171)(&v169[v167[6]], 1, 1, v172);
  v173 = v167[7];
  v283 = v169;
  *&v169[v173] = 0;
  v277 = swift_allocBox();
  v175 = v174;
  (v171)(v174, 1, 1, v172);
  (v171)(v175 + v167[5], 1, 1, v172);
  v176 = v175 + v167[6];
  v285 = v170;
  v284 = v171;
  (v171)(v176, 1, 1, v172);
  v177 = v167[7];
  v282 = v175;
  *(v175 + v177) = 0;
  v290 = v135;

  sub_1006AD8DC(v178);

  sub_1006AD8DC(v179);
  v289 = v290;

  sub_1000AF004(&v289, sub_100255D60, sub_100254FE0);
  v262 = v165;
  if (v165)
  {

    __break(1u);
  }

  else
  {

    v272 = v289;
    v180 = v267;
    if (qword_100ACFB60 != -1)
    {
      swift_once();
    }

    v181 = type metadata accessor for Logger();
    sub_10000617C(v181, qword_100ADA5A8);
    v182 = v287;

    v183 = v279;

    v184 = Logger.logObject.getter();
    v185 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      *v186 = 134218496;
      v187 = v182[2];

      *(v186 + 4) = v187;

      *(v186 + 12) = 2048;
      v188 = *(v183 + 16);

      *(v186 + 14) = v188;

      *(v186 + 22) = 2048;
      v189 = *(v166 + 16);

      *(v186 + 24) = v189;

      _os_log_impl(&_mh_execute_header, v184, v185, "Creating streaks from %ld created, %ld updated, %ld event dates", v186, 0x20u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v190 = v286;
    v191 = v236;
    [v263 reset];
    v192 = *(v272 + 2);
    v193 = v260;
    if (v192)
    {
      v194 = v274;
      v195 = &v272[(*(v274 + 80) + 32) & ~*(v274 + 80)];
      swift_beginAccess();
      swift_beginAccess();
      v196 = v194[2];
      v194 += 2;
      v276 = v194[7];
      v286 = (v194 + 4);
      v275 = (v194 + 2);
      v273 = v194 - 1;
      v197 = v266;
      v287 = v194;
      v288 = v196;
      (v196)(v266, v195, v190);
      while (1)
      {
        sub_1002508FC(v197, v278, v180, v193);
        sub_1002517C8(v197, v277, v180, v193);
        v204 = v254;
        sub_1000082B4(v283, v254, &unk_100AD4790);
        v205 = *v286;
        v206 = (*v286)(v204, 1, v190);
        v281 = v192;
        v280 = v195;
        v279 = v205;
        if (v206 == 1)
        {
          v207 = v258;
          (v288)(v258, v197, v190);
          if (v205(v204, 1, v190) != 1)
          {
            sub_100004F84(v204, &unk_100AD4790);
          }
        }

        else
        {
          v207 = v258;
          (*v275)(v258, v204, v190);
        }

        v208 = v284;
        (v284)(v207, 0, 1, v190);
        v209 = v283;
        sub_100041B1C(v207, v283);
        v210 = v268;
        v211 = *(v268 + 20);
        sub_100004F84(&v209[v211], &unk_100AD4790);
        v212 = v266;
        (v288)(&v209[v211], v266, v190);
        v208(&v209[v211], 0, 1, v190);
        v213 = v265;
        Calendar.date(byAdding:to:wrappingComponents:)();
        sub_100041B1C(v213, &v209[*(v210 + 24)]);
        v214 = v255;
        sub_1000082B4(v282, v255, &unk_100AD4790);
        v215 = v279;
        if ((v279)(v214, 1, v190) == 1)
        {
          v198 = v259;
          (v288)(v259, v212, v190);
          if (v215(v214, 1, v190) != 1)
          {
            sub_100004F84(v214, &unk_100AD4790);
          }
        }

        else
        {
          v198 = v259;
          (*v275)(v259, v214, v190);
        }

        v199 = v284;
        (v284)(v198, 0, 1, v190);
        v200 = v282;
        sub_100041B1C(v198, v282);
        v201 = v268;
        v202 = *(v268 + 20);
        sub_100004F84(&v200[v202], &unk_100AD4790);
        v197 = v266;
        (v288)(&v200[v202], v266, v190);
        v199(&v200[v202], 0, 1, v190);
        v203 = v265;
        v180 = v267;
        Calendar.date(byAdding:to:wrappingComponents:)();
        (*v273)(v197, v190);
        sub_100041B1C(v203, &v200[*(v201 + 24)]);
        v195 = &v276[v280];
        v192 = (v281 - 1);
        v193 = v260;
        if (v281 == 1)
        {
          break;
        }

        (v288)(v197, v195, v190);
      }

      v191 = v236;
    }

    else
    {
    }

    static Date.distantFuture.getter();
    sub_1002508FC(v191, v278, v180, v193);
    v216 = *(v274 + 8);
    v216(v191, v190);
    static Date.distantFuture.getter();
    sub_1002517C8(v191, v277, v180, v193);
    v216(v191, v190);
    v217 = v232;
    swift_beginAccess();
    v218 = v234;
    sub_10003ED0C(v217, v234, type metadata accessor for StreakSummary);
    v219 = v248;
    v220 = sub_100888C40(v248);
    sub_10003F8FC(v218, type metadata accessor for StreakSummary);
    v221 = v268;
    v222 = v233;
    if ((v220 & 1) == 0)
    {
      swift_beginAccess();
      sub_10003ED0C(v217, v218, type metadata accessor for StreakSummary);
      swift_beginAccess();
      sub_100041D94(v218, v217 + v222[6]);
      sub_10003F8FC(v217, type metadata accessor for StreakSummary);
      v223 = v284;
      (v284)(v217, 1, 1, v190);
      v223(v217 + v221[5], 1, 1, v190);
      v223(v217 + v221[6], 1, 1, v190);
      *(v217 + v221[7]) = 0;
    }

    swift_beginAccess();
    sub_10003ED0C(v217 + v222[5], v218, type metadata accessor for StreakSummary);
    v224 = sub_100888C40(v219);

    sub_10003F8FC(v218, type metadata accessor for StreakSummary);
    if ((v224 & 1) == 0)
    {
      swift_beginAccess();
      sub_10003ED0C(v217 + v222[5], v218, type metadata accessor for StreakSummary);
      swift_beginAccess();
      sub_100041D94(v218, v217 + v222[7]);
      v225 = v217 + v222[5];
      sub_10003F8FC(v225, type metadata accessor for StreakSummary);
      v226 = v284;
      (v284)(v225, 1, 1, v190);
      v226(v225 + v221[5], 1, 1, v190);
      v226(v225 + v221[6], 1, 1, v190);
      *(v225 + v221[7]) = 0;
    }
  }
}

void sub_100250714(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_1000082B4(a1, &v15 - v9, &unk_100AD4790);
  v11 = *a2;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_10025085C@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

uint64_t sub_1002508FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v118 = a4;
  v110 = a3;
  v4 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v4);
  v114 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Date.ISO8601FormatStyle();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v100 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DateComponents();
  v108 = *(v8 - 8);
  v109 = v8;
  __chkstk_darwin(v8);
  v111 = &v94[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000F24EC(&unk_100AD4790);
  v11 = __chkstk_darwin(v10 - 8);
  v112 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v94[-v14];
  __chkstk_darwin(v13);
  v17 = &v94[-v16];
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v105 = &v94[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v106 = &v94[-v23];
  v24 = __chkstk_darwin(v22);
  v107 = &v94[-v25];
  v26 = __chkstk_darwin(v24);
  v113 = &v94[-v27];
  v28 = __chkstk_darwin(v26);
  v116 = &v94[-v29];
  __chkstk_darwin(v28);
  v31 = &v94[-v30];
  v32 = swift_projectBox();
  v103 = type metadata accessor for InsightsDataManager.Streaks(0);
  v104 = swift_projectBox();
  swift_beginAccess();
  v115 = v4;
  v33 = *(v4 + 24);
  v118 = v32;
  sub_1000082B4(v32 + v33, v17, &unk_100AD4790);
  v34 = *(v19 + 48);
  if (v34(v17, 1, v18) == 1)
  {
    return sub_100004F84(v17, &unk_100AD4790);
  }

  v36 = *(v19 + 32);
  v36(v31, v17, v18);
  v37 = v18;
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    return (*(v19 + 8))(v31, v18);
  }

  v38 = v118;
  swift_beginAccess();
  sub_1000082B4(v38, v15, &unk_100AD4790);
  if (v34(v15, 1, v37) != 1)
  {
    v117 = v19;
    v36(v116, v15, v37);
    swift_beginAccess();
    v40 = v115;
    v41 = v112;
    sub_1000082B4(v38 + v115[5], v112, &unk_100AD4790);
    if (v34(v41, 1, v37) == 1)
    {
      v39 = v117;
      v42 = v41;
      v43 = v117[1];
      v43(v116, v37);
      v43(v31, v37);
      sub_100004F84(v42, &unk_100AD4790);
      goto LABEL_15;
    }

    v99 = v31;
    v36(v113, v41, v37);
    sub_1000F24EC(&qword_100AD3BF0);
    v44 = type metadata accessor for Calendar.Component();
    v45 = *(v44 - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100940050;
    v49 = v48 + v47;
    v50 = *(v45 + 104);
    v39 = (v45 + 104);
    v50(v49, enum case for Calendar.Component.day(_:), v44);
    v50(v49 + v46, enum case for Calendar.Component.second(_:), v44);
    v38 = v113;
    v51 = sub_10005FF80(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v52 = v111;
    v53 = v116;
    Calendar.dateComponents(_:from:to:)();

    v54 = DateComponents.day.getter();
    if (v55)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v38, v37);
LABEL_14:
      v56(v53, v37);
      v56(v99, v37);
      v38 = v118;
      goto LABEL_15;
    }

    v57 = v54;
    v58 = DateComponents.second.getter();
    if (v59)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v113, v37);
      goto LABEL_14;
    }

    v112 = v37;
    v62 = v58 != 0;
    v63 = __OFADD__(v57, v62);
    v64 = v57 + v62;
    if (v63)
    {
      __break(1u);
    }

    else
    {
      v39 = v117;
      v38 = v118;
      v65 = v113;
      v37 = v106;
      v51 = v107;
      if (v64 < 2)
      {
        (*(v108 + 8))(v52, v109);
        v87 = v39[1];
        v37 = v112;
        v87(v65, v112);
        v87(v53, v37);
        v87(v99, v37);
        goto LABEL_6;
      }

      v110 = v64;
      if (qword_100ACFB60 == -1)
      {
LABEL_20:
        v66 = type metadata accessor for Logger();
        sub_10000617C(v66, qword_100ADA5A8);
        v67 = v39[2];
        v68 = v51;
        v69 = v39;
        v70 = v112;
        v67(v68, v116, v112);
        v67(v37, v113, v70);
        v71 = v105;
        v67(v105, v99, v70);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v119[0] = v97;
          *v74 = 134218754;
          *(v74 + 4) = v110;
          *(v74 + 12) = 2080;
          v75 = v100;
          static FormatStyle<>.iso8601.getter();
          sub_100034024(&qword_100ADA640, &type metadata accessor for Date.ISO8601FormatStyle);
          v76 = v102;
          v96 = v72;
          v77 = v107;
          Date.formatted<A>(_:)();
          v95 = v73;
          v101 = *(v101 + 8);
          (v101)(v75, v76);
          v98 = v69[1];
          v98(v77, v70);
          v78 = sub_100008458(v120, v121, v119);

          *(v74 + 14) = v78;
          *(v74 + 22) = 2080;
          static FormatStyle<>.iso8601.getter();
          v79 = v106;
          Date.formatted<A>(_:)();
          (v101)(v75, v76);
          v98(v79, v70);
          v80 = sub_100008458(v120, v121, v119);

          *(v74 + 24) = v80;
          *(v74 + 32) = 2080;
          static FormatStyle<>.iso8601.getter();
          v81 = v105;
          Date.formatted<A>(_:)();
          (v101)(v75, v76);
          v82 = v98;
          v98(v81, v70);
          v83 = sub_100008458(v120, v121, v119);
          v84 = v110;

          *(v74 + 34) = v83;
          v85 = v96;
          _os_log_impl(&_mh_execute_header, v96, v95, "Ending %ld day streak from %s to %s after %s", v74, 0x2Au);
          swift_arrayDestroy();

          (*(v108 + 8))(v111, v109);
          v82(v113, v70);
          v82(v116, v70);
          v82(v99, v70);
          v38 = v118;
          v86 = v104;
        }

        else
        {

          v88 = v69[1];
          v88(v71, v70);
          v88(v37, v70);
          v88(v107, v70);
          (*(v108 + 8))(v52, v109);
          v88(v113, v70);
          v88(v116, v70);
          v88(v99, v70);
          v86 = v104;
          v84 = v110;
        }

        swift_beginAccess();
        v89 = v115;
        *(v38 + v115[7]) = v84;
        swift_beginAccess();
        v61 = v114;
        sub_10003ED0C(v86, v114, type metadata accessor for StreakSummary);
        swift_beginAccess();
        v90 = v103;
        sub_100041D94(v61, v86 + *(v103 + 24));
        swift_beginAccess();
        sub_10003ED0C(v38, v61, type metadata accessor for StreakSummary);
        swift_beginAccess();
        sub_100041D94(v61, v86);
        swift_beginAccess();
        v91 = *(v38 + v89[7]);
        swift_beginAccess();
        if (v91 >= *(v86 + *(v90 + 32) + v89[7]))
        {
          swift_beginAccess();
          sub_10003ED0C(v38, v61, type metadata accessor for StreakSummary);
          swift_beginAccess();
          sub_100041D94(v61, v86 + *(v90 + 32));
        }

        v92 = v117[7];
        v93 = v112;
        v92(v61, 1, 1, v112);
        v92(&v61[v89[5]], 1, 1, v93);
        v92(&v61[v89[6]], 1, 1, v93);
        *&v61[v89[7]] = 0;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_20;
  }

  (*(v19 + 8))(v31, v37);
  sub_100004F84(v15, &unk_100AD4790);
  v39 = v19;
LABEL_6:
  v40 = v115;
LABEL_15:
  v60 = v39[7];
  v61 = v114;
  v60(v114, 1, 1, v37);
  v60(&v61[v40[5]], 1, 1, v37);
  v60(&v61[v40[6]], 1, 1, v37);
  *&v61[v40[7]] = 0;
LABEL_16:
  swift_beginAccess();
  return sub_100041D94(v61, v38);
}

uint64_t sub_1002517C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v118 = a4;
  v110 = a3;
  v4 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v4);
  v114 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Date.ISO8601FormatStyle();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v100 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DateComponents();
  v108 = *(v8 - 8);
  v109 = v8;
  __chkstk_darwin(v8);
  v111 = &v94[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000F24EC(&unk_100AD4790);
  v11 = __chkstk_darwin(v10 - 8);
  v112 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v94[-v14];
  __chkstk_darwin(v13);
  v17 = &v94[-v16];
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v105 = &v94[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v106 = &v94[-v23];
  v24 = __chkstk_darwin(v22);
  v107 = &v94[-v25];
  v26 = __chkstk_darwin(v24);
  v113 = &v94[-v27];
  v28 = __chkstk_darwin(v26);
  v116 = &v94[-v29];
  __chkstk_darwin(v28);
  v31 = &v94[-v30];
  v32 = swift_projectBox();
  v103 = type metadata accessor for InsightsDataManager.Streaks(0);
  v104 = swift_projectBox();
  swift_beginAccess();
  v115 = v4;
  v33 = *(v4 + 24);
  v118 = v32;
  sub_1000082B4(v32 + v33, v17, &unk_100AD4790);
  v34 = *(v19 + 48);
  if (v34(v17, 1, v18) == 1)
  {
    return sub_100004F84(v17, &unk_100AD4790);
  }

  v36 = *(v19 + 32);
  v36(v31, v17, v18);
  v37 = v18;
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    return (*(v19 + 8))(v31, v18);
  }

  v38 = v118;
  swift_beginAccess();
  sub_1000082B4(v38, v15, &unk_100AD4790);
  if (v34(v15, 1, v37) != 1)
  {
    v117 = v19;
    v36(v116, v15, v37);
    swift_beginAccess();
    v40 = v115;
    v41 = v112;
    sub_1000082B4(v38 + v115[5], v112, &unk_100AD4790);
    if (v34(v41, 1, v37) == 1)
    {
      v39 = v117;
      v42 = v41;
      v43 = v117[1];
      v43(v116, v37);
      v43(v31, v37);
      sub_100004F84(v42, &unk_100AD4790);
      goto LABEL_15;
    }

    v99 = v31;
    v36(v113, v41, v37);
    sub_1000F24EC(&qword_100AD3BF0);
    v44 = type metadata accessor for Calendar.Component();
    v45 = *(v44 - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100940050;
    v49 = v48 + v47;
    v50 = *(v45 + 104);
    v39 = (v45 + 104);
    v50(v49, enum case for Calendar.Component.weekOfYear(_:), v44);
    v50(v49 + v46, enum case for Calendar.Component.second(_:), v44);
    v38 = v113;
    v51 = sub_10005FF80(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v52 = v111;
    v53 = v116;
    Calendar.dateComponents(_:from:to:)();

    v54 = DateComponents.weekOfYear.getter();
    if (v55)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v38, v37);
LABEL_14:
      v56(v53, v37);
      v56(v99, v37);
      v38 = v118;
      goto LABEL_15;
    }

    v57 = v54;
    v58 = DateComponents.second.getter();
    if (v59)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v113, v37);
      goto LABEL_14;
    }

    v112 = v37;
    v62 = v58 != 0;
    v63 = __OFADD__(v57, v62);
    v64 = v57 + v62;
    if (v63)
    {
      __break(1u);
    }

    else
    {
      v39 = v117;
      v38 = v118;
      v65 = v113;
      v37 = v106;
      v51 = v107;
      if (v64 < 2)
      {
        (*(v108 + 8))(v52, v109);
        v87 = v39[1];
        v37 = v112;
        v87(v65, v112);
        v87(v53, v37);
        v87(v99, v37);
        goto LABEL_6;
      }

      v110 = v64;
      if (qword_100ACFB60 == -1)
      {
LABEL_20:
        v66 = type metadata accessor for Logger();
        sub_10000617C(v66, qword_100ADA5A8);
        v67 = v39[2];
        v68 = v51;
        v69 = v39;
        v70 = v112;
        v67(v68, v116, v112);
        v67(v37, v113, v70);
        v71 = v105;
        v67(v105, v99, v70);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v119[0] = v97;
          *v74 = 134218754;
          *(v74 + 4) = v110;
          *(v74 + 12) = 2080;
          v75 = v100;
          static FormatStyle<>.iso8601.getter();
          sub_100034024(&qword_100ADA640, &type metadata accessor for Date.ISO8601FormatStyle);
          v76 = v102;
          v96 = v72;
          v77 = v107;
          Date.formatted<A>(_:)();
          v95 = v73;
          v101 = *(v101 + 8);
          (v101)(v75, v76);
          v98 = v69[1];
          v98(v77, v70);
          v78 = sub_100008458(v120, v121, v119);

          *(v74 + 14) = v78;
          *(v74 + 22) = 2080;
          static FormatStyle<>.iso8601.getter();
          v79 = v106;
          Date.formatted<A>(_:)();
          (v101)(v75, v76);
          v98(v79, v70);
          v80 = sub_100008458(v120, v121, v119);

          *(v74 + 24) = v80;
          *(v74 + 32) = 2080;
          static FormatStyle<>.iso8601.getter();
          v81 = v105;
          Date.formatted<A>(_:)();
          (v101)(v75, v76);
          v82 = v98;
          v98(v81, v70);
          v83 = sub_100008458(v120, v121, v119);
          v84 = v110;

          *(v74 + 34) = v83;
          v85 = v96;
          _os_log_impl(&_mh_execute_header, v96, v95, "Ending %ld week streak from %s to %s after %s", v74, 0x2Au);
          swift_arrayDestroy();

          (*(v108 + 8))(v111, v109);
          v82(v113, v70);
          v82(v116, v70);
          v82(v99, v70);
          v38 = v118;
          v86 = v104;
        }

        else
        {

          v88 = v69[1];
          v88(v71, v70);
          v88(v37, v70);
          v88(v107, v70);
          (*(v108 + 8))(v52, v109);
          v88(v113, v70);
          v88(v116, v70);
          v88(v99, v70);
          v86 = v104;
          v84 = v110;
        }

        swift_beginAccess();
        v89 = v115;
        *(v38 + v115[7]) = v84;
        swift_beginAccess();
        v90 = v103;
        v61 = v114;
        sub_10003ED0C(v86 + *(v103 + 20), v114, type metadata accessor for StreakSummary);
        swift_beginAccess();
        sub_100041D94(v61, v86 + v90[7]);
        swift_beginAccess();
        sub_10003ED0C(v38, v61, type metadata accessor for StreakSummary);
        swift_beginAccess();
        sub_100041D94(v61, v86 + v90[5]);
        swift_beginAccess();
        v91 = *(v38 + v89[7]);
        swift_beginAccess();
        if (v91 >= *(v86 + v90[9] + v89[7]))
        {
          swift_beginAccess();
          sub_10003ED0C(v38, v61, type metadata accessor for StreakSummary);
          swift_beginAccess();
          sub_100041D94(v61, v86 + v90[9]);
        }

        v92 = v117[7];
        v93 = v112;
        v92(v61, 1, 1, v112);
        v92(&v61[v89[5]], 1, 1, v93);
        v92(&v61[v89[6]], 1, 1, v93);
        *&v61[v89[7]] = 0;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_20;
  }

  (*(v19 + 8))(v31, v37);
  sub_100004F84(v15, &unk_100AD4790);
  v39 = v19;
LABEL_6:
  v40 = v115;
LABEL_15:
  v60 = v39[7];
  v61 = v114;
  v60(v114, 1, 1, v37);
  v60(&v61[v40[5]], 1, 1, v37);
  v60(&v61[v40[6]], 1, 1, v37);
  *&v61[v40[7]] = 0;
LABEL_16:
  swift_beginAccess();
  return sub_100041D94(v61, v38);
}

void sub_10025269C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = type metadata accessor for AssetType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v28 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v26 - v7;
  v30 = a2 + 16;
  v31 = type metadata accessor for JournalEntryAssetMO();
  v29 = static JournalEntryAssetMO.fetchRequest()();
  sub_1000F24EC(&unk_100AD4780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100941D60;
  v10 = v9;
  v27 = v9;
  v26[1] = sub_1000065A8(0, &qword_100ADB900);
  *(v10 + 32) = static NSPredicate.allNotDeletedAssets.getter();
  sub_1000F24EC(&unk_100AD5B10);
  v11 = swift_allocObject();
  v33 = xmmword_100940050;
  *(v11 + 16) = xmmword_100940050;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100031B20();
  *(v11 + 32) = 0x7079547465737361;
  *(v11 + 40) = 0xE900000000000065;
  sub_1000F24EC(&unk_100AD9A60);
  v12 = swift_allocObject();
  *(v12 + 16) = v33;
  v26[0] = *(v4 + 104);
  (v26[0])(v8, enum case for AssetType.visit(_:), v3);
  v13 = AssetType.rawValue.getter();
  v15 = v14;
  v16 = *(v4 + 8);
  v16(v8, v3);
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v17 = v28;
  (v26[0])(v28, enum case for AssetType.multiPinMap(_:), v3);
  v18 = AssetType.rawValue.getter();
  v20 = v19;
  v16(v17, v3);
  *(v12 + 48) = v18;
  *(v12 + 56) = v20;
  *(v11 + 96) = sub_1000F24EC(&qword_100AD60A0);
  *(v11 + 104) = sub_10000B58C(&qword_100AD3C00, &qword_100AD60A0);
  *(v11 + 72) = v12;
  *(v27 + 40) = NSPredicate.init(format:_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  v23 = v29;
  [v29 setPredicate:v22];

  sub_1000F24EC(&unk_100AE88B0);
  v24 = swift_allocObject();
  *(v24 + 16) = v33;
  *(v24 + 32) = 0x7079547465737361;
  *(v24 + 40) = 0xE900000000000065;
  *(v24 + 88) = &type metadata for String;
  *(v24 + 56) = &type metadata for String;
  strcpy((v24 + 64), "assetMetaData");
  *(v24 + 78) = -4864;
  v25 = Array._bridgeToObjectiveC()().super.isa;

  [v23 setPropertiesToFetch:v25];

  v34 = v30;
  NSManagedObjectContext.forEach<A>(_:batchSize:using:)();
}

uint64_t sub_100252B0C(void *a1, id *a2)
{
  v95 = a2;
  v3 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v3 - 8);
  v87 = &v81 - v4;
  v5 = type metadata accessor for MultiPinMapAssetMetadata();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v85 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v7 - 8);
  v90 = &v81 - v8;
  v92 = type metadata accessor for VisitAssetMetadata();
  v94 = *(v92 - 8);
  v9 = __chkstk_darwin(v92);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = &v81 - v11;
  v12 = sub_1000F24EC(&qword_100AE4290);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v93 = a1;
  JournalEntryAssetMO.type.getter();
  v18 = type metadata accessor for AssetType();
  v19 = *(v18 - 8);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_42;
  }

  sub_1000082B4(v17, v15, &qword_100AE4290);
  v24 = (*(v19 + 88))(v15, v18);
  if (v24 != enum case for AssetType.visit(_:))
  {
    v21 = v94;
    if (v24 == enum case for AssetType.multiPinMap(_:))
    {
      v81 = v17;
      v50 = [v93 assetMetaData];
      if (v50)
      {
        v51 = v50;
        v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        sub_100034024(&qword_100AD3870, &type metadata accessor for MultiPinMapAssetMetadata);
        v55 = v87;
        v56 = v89;
        Data.asObject<A>(of:)();
        sub_1000340DC(v52, v54);
        v57 = v88;
        if ((*(v88 + 48))(v55, 1, v56) != 1)
        {
          (*(v57 + 32))(v85, v55, v56);
          v58 = MultiPinMapAssetMetadata.visitsData.getter();
          if (!v58)
          {
            v58 = _swiftEmptyArrayStorage;
          }

          v87 = v58[2];
          v22 = 0;
          v38 = 0;
          v23 = 0;
          v39 = 0;
          if (v87)
          {
            v33 = 0;
            v86 = v58 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
            v83 = v21 + 8;
            v84 = v21 + 16;
            v59 = v92;
            v82 = v58;
            while (v33 < v58[2])
            {
              v19 = v91;
              (*(v21 + 16))(v91, &v86[*(v21 + 72) * v33], v59);
              v20 = sub_1000A09E4();
              v61 = v60;
              (*(v21 + 8))(v19, v59);
              if (v61)
              {
                v19 = swift_allocObject();
                *(v19 + 16) = v61;
                v90 = v61;
                sub_100004DF8(v22);
                v22 = [v93 objectID];
                v62 = v95;
                swift_beginAccess();
                v63 = swift_allocObject();
                *(v63 + 16) = sub_10025A7C8;
                *(v63 + 24) = v19;
                sub_100004DF8(v23);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v96[0] = *v62;
                v39 = v96[0];
                *v62 = 0x8000000000000000;
                v38 = sub_100362420(v20);
                v66 = v39[2];
                v67 = (v65 & 1) == 0;
                v68 = v66 + v67;
                if (__OFADD__(v66, v67))
                {
                  goto LABEL_44;
                }

                LOBYTE(v21) = v65;
                if (v39[3] >= v68)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_100823834();
                    v39 = v96[0];
                  }
                }

                else
                {
                  sub_10081F3EC(v68, isUniquelyReferenced_nonNull_native);
                  v39 = v96[0];
                  v69 = sub_100362420(v20);
                  if ((v21 & 1) != (v70 & 1))
                  {
                    goto LABEL_48;
                  }

                  v38 = v69;
                }

                v59 = v92;
                *v95 = v39;
                if ((v21 & 1) == 0)
                {
                  v71 = (*(v63 + 16))();
                  v39[(v38 >> 6) + 8] |= 1 << v38;
                  *(v39[6] + 8 * v38) = v20;
                  v72 = (v39[7] + 16 * v38);
                  *v72 = v71;
                  v72[1] = v73;
                  v74 = v39[2];
                  v75 = __OFADD__(v74, 1);
                  v76 = v74 + 1;
                  if (v75)
                  {
                    goto LABEL_45;
                  }

                  v39[2] = v76;
                  sub_10025A7B0(v20);
                }

                sub_100288038(v96, v22);
                swift_endAccess();
                sub_10025A7E8(v20);

                v23 = sub_10025A7E4;
                v22 = sub_10025A7C8;
                v38 = v19;
                v39 = v63;
                v21 = v94;
              }

              ++v33;
              v58 = v82;
              if (v87 == v33)
              {
                goto LABEL_36;
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_36:

          (*(v88 + 8))(v85, v89);
          v20 = 0;
          v21 = 0;
          v17 = v81;
LABEL_42:
          sub_100004F84(v17, &qword_100AE4290);
          sub_100004DF8(v20);
          sub_100004DF8(v21);
          sub_100004DF8(v22);
          sub_100004DF8(v23);
          return 1;
        }
      }

      else
      {
        v55 = v87;
        (*(v88 + 56))(v87, 1, 1, v89);
      }

      sub_100004F84(v55, &unk_100AD5B30);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v17 = v81;
      goto LABEL_42;
    }

    (*(v19 + 8))(v15, v18);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_42;
  }

  v19 = v17;
  v25 = [v93 assetMetaData];
  v26 = v94;
  if (!v25)
  {
    v31 = v90;
    (*(v94 + 56))(v90, 1, 1, v92);
    goto LABEL_33;
  }

  v27 = v25;
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  sub_100034024(&qword_100ADA608, &type metadata accessor for VisitAssetMetadata);
  v31 = v90;
  v32 = v92;
  Data.asObject<A>(of:)();
  sub_1000340DC(v28, v30);
  if ((*(v26 + 48))(v31, 1, v32) == 1)
  {
LABEL_33:
    sub_100004F84(v31, &unk_100AEED20);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_42;
  }

  v33 = v86;
  (*(v26 + 32))(v86, v31, v32);
  v34 = sub_1000A09E4();
  v36 = v35;
  if (!v35)
  {
    (*(v26 + 8))(v33, v32);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_42;
  }

  v22 = v34;
  v37 = swift_allocObject();
  v37[2] = v36;
  v38 = v36;
  v39 = [v93 objectID];
  v40 = v95;
  swift_beginAccess();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_10025AFB0;
  *(v41 + 24) = v37;
  v93 = v37;
  v91 = v41;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v96[0] = *v40;
  v43 = v96[0];
  *v40 = 0x8000000000000000;
  v20 = sub_100362420(v22);
  v45 = v43[2];
  v46 = (v44 & 1) == 0;
  v47 = v45 + v46;
  if (__OFADD__(v45, v46))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v21) = v44;
  if (v43[3] >= v47)
  {
    if (v42)
    {
      goto LABEL_39;
    }

LABEL_47:
    sub_100823834();
    v43 = v96[0];
    goto LABEL_39;
  }

  sub_10081F3EC(v47, v42);
  v43 = v96[0];
  v48 = sub_100362420(v22);
  if ((v21 & 1) == (v49 & 1))
  {
    v20 = v48;
LABEL_39:
    v77 = v92;
    *v95 = v43;
    if ((v21 & 1) == 0)
    {
      v78 = sub_10025A7C8();
      sub_100203728(v20, v22, v78, v79, v43);
      sub_10025A7B0(v22);
    }

    sub_100288038(v96, v39);
    swift_endAccess();
    sub_10025A7E8(v22);

    (*(v94 + 8))(v33, v77);
    v22 = 0;
    v23 = 0;
    v21 = sub_10025AFB4;
    v20 = sub_10025AFB0;
    v17 = v19;
    goto LABEL_42;
  }

LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100253708(void *a1)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100496D54(_swiftEmptyArrayStorage);
  }

  v2 = a1;
  return a1;
}

uint64_t sub_100253774()
{
  v1 = v0;
  v2 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = v0;
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
  swift_beginAccess();
  sub_10003ED0C(v1 + v5, v4, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v6 = sub_100247324(v4);
  sub_10003F8FC(v4, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v10 = v6;

  sub_100254A04(&v10);

  sub_1000F24EC(&qword_100AD60A0);
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
  v7 = BidirectionalCollection<>.joined(separator:)();

  return v7;
}

uint64_t sub_100253970()
{
  v1 = v0;
  v2 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
  swift_beginAccess();
  sub_10003ED0C(v1 + v6, v5, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v7 = sub_1002476AC(&v5[*(v3 + 32)]);
  sub_10003F8FC(v5, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v11 = v7;

  sub_100254A04(&v11);

  sub_1000F24EC(&qword_100AD60A0);
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
  v8 = BidirectionalCollection<>.joined(separator:)();

  return v8;
}

uint64_t sub_100253B7C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0x203A6874676E654CLL;
  v16 = 0xE800000000000000;
  v9 = type metadata accessor for StreakSummary();
  v14._countAndFlagsBits = *(v0 + *(v9 + 28));
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11 = v15;
  sub_1000082B4(v1 + *(v9 + 24), v4, &unk_100AD4790);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100004F84(v4, &unk_100AD4790);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14._countAndFlagsBits = 0x3A676E69646E450ALL;
    v14._object = 0xE900000000000020;
    sub_100034024(&qword_100AE1D80, &type metadata accessor for Date);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    String.append(_:)(v14);

    (*(v6 + 8))(v8, v5);
    return v15;
  }

  return v11;
}

uint64_t sub_100253E4C(uint64_t a1, uint64_t *a2)
{
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  __chkstk_darwin(Update - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003ED0C(a1, v6, type metadata accessor for InsightsDataManager.LastUpdate);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10003F8FC(v6, type metadata accessor for InsightsDataManager.LastUpdate);
}

uint64_t sub_100253F9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal19InsightsDataManager__calendar;
  swift_beginAccess();
  v5 = type metadata accessor for Calendar();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100254094(uint64_t a1)
{
  v2 = type metadata accessor for Calendar();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_100692B18(v4);
}

uint64_t sub_100254160@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal19InsightsDataManager__referenceDate;
  swift_beginAccess();
  return sub_1000082B4(v3 + v4, a2, &unk_100AD4790);
}

uint64_t sub_100254238(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000082B4(a1, &v6 - v3, &unk_100AD4790);
  return sub_1006932F4(v4);
}

uint64_t sub_1002542E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount + 16);
  v4 = *(v3 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount + 24);
  *a2 = *(v3 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount);
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
}

uint64_t sub_1002543A4()
{
  swift_getKeyPath();
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1002544AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_10003ED0C(v7 + v8, a4, a3);
}

uint64_t sub_100254580(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003ED0C(a1, v6, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10003F8FC(v6, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
}

uint64_t sub_1002546D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime + 8);
  v5 = *(v3 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime + 16);
  v6 = *(v3 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime + 24);
  *a2 = *(v3 + OBJC_IVAR____TtC7Journal19InsightsDataManager__allTime);
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_1002547A0()
{
  swift_getKeyPath();
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100254884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC7Journal19InsightsDataManager__places);
}

uint64_t sub_100254938()
{
  swift_getKeyPath();
  sub_100034024(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

Swift::Int sub_100254A04(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100205084(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100254EE8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_100254A70(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v38 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v16 = __clz(__rbit64(v9)) | (v11 << 6);
    v17 = *(*(a1 + 48) + v16);
    v18 = *(*(a1 + 56) + 8 * v16);
    v36[0] = v17;
    v37 = v18;
    a2(v35, v36);
    v19 = v35[0];
    v20 = v35[1];
    v21 = *v38;
    v22 = sub_1000AC088(v35[0]);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_23;
    }

    v28 = v23;
    if (v21[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v22;
        sub_1008232F8();
        v22 = v31;
      }
    }

    else
    {
      sub_1000AC5D0(v27, a4 & 1);
      v22 = sub_1000AC088(v19);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }
    }

    v30 = *v38;
    if (v28)
    {
      v12 = (v30[7] + 8 * v22);
      v14 = *v12 + v20;
      if (__OFADD__(*v12, v20))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      *(v30[6] + v22) = v19;
      *(v30[7] + 8 * v22) = v20;
      v13 = v30[2];
      v12 = v30 + 2;
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_25;
      }
    }

    v9 &= v9 - 1;
    *v12 = v14;
    a4 = 1;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
    if (v9)
    {
      v11 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100254C9C(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v4 = _s4YearVMa(0);
  v30 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100ADA668);
  result = static _DictionaryStorage.copy(original:)();
  v7 = result;
  v8 = 0;
  v33 = a3;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v28 = result + 64;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v33 + 48) + 8 * v19);
      v21 = v29;
      sub_10003ED0C(*(v33 + 56) + *(v30 + 72) * v19, v29, _s4YearVMa);
      v22 = v35;
      v31(v34, v21);
      result = sub_10003F8FC(v21, _s4YearVMa);
      v35 = v22;
      if (v22)
      {
        break;
      }

      *(v28 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v7[6] + 8 * v19) = v20;
      v23 = (v7[7] + 32 * v19);
      v24 = v34[1];
      *v23 = v34[0];
      v23[1] = v24;
      v25 = v7[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      v7[2] = v27;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    return v7;
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

Swift::Int sub_100254EE8(uint64_t *a1)
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
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1002570E8(v7, v8, a1, v4);
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
    return sub_1002552A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100254FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_100034024(&qword_100AD2698, &type metadata accessor for Date);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002552A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100255374(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v117 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v117 - v16;
  result = __chkstk_darwin(v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_100204C44(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_1002576C4(*v10 + a3[9] * v114, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_100204C44(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[16 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_100204BB8(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = static Date.> infix(_:_:)();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = static Date.> infix(_:_:)() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_1003E4B80(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_1003E4B80((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
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
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_1002576C4(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[16 * v56 + 32], *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_100204C44(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_100204BB8(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = static Date.> infix(_:_:)();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_100255D60(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v119 - v15;
  result = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100204C44(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_100257C54(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100204C44(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_100204BB8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_100034024(&qword_100AD2698, &type metadata accessor for Date);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003E4B80(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_1003E4B80((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_100257C54(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100204C44(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_100204BB8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_100034024(&qword_100AD2698, &type metadata accessor for Date);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100256788(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v126 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v9 = *(v126 - 8);
  v10 = __chkstk_darwin(v126);
  v115 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v123 = &v107 - v13;
  v14 = __chkstk_darwin(v12);
  v125 = &v107 - v15;
  result = __chkstk_darwin(v14);
  v124 = &v107 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v127 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        v103 = v9;
        while (*a3)
        {
          v104 = *(result + 16 * a4);
          v105 = result;
          v9 = *(result + 16 * (a4 - 1) + 40);
          sub_100258248(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v103 + 72) * v9, v5);
          if (v6)
          {
          }

          if (v9 < v104)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_100204C44(v105);
          }

          if (a4 - 2 >= *(v105 + 2))
          {
            goto LABEL_124;
          }

          v106 = &v105[16 * a4];
          *v106 = v104;
          *(v106 + 1) = v9;
          v127 = v105;
          sub_100204BB8(a4 - 1);
          result = v127;
          a4 = *(v127 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_100204C44(a4);
    goto LABEL_99;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v111 = a4;
  v113 = a3;
  v108 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v116 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v109 = v6;
      v23 = *a3;
      v24 = *(v9 + 72);
      v5 = *a3 + v24 * v22;
      v25 = v124;
      sub_10003ED0C(v5, v124, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v26 = v125;
      sub_10003ED0C(v23 + v24 * v21, v125, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v27 = *(v126 + 24);
      v28 = *(v25 + v27);
      v119 = *(v26 + v27);
      v120 = v28;
      sub_10003F8FC(v26, type metadata accessor for InsightsDataManager.TopAssetCategory);
      result = sub_10003F8FC(v25, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v110 = v21;
      v29 = v21 + 2;
      v121 = v24;
      v30 = v23 + v24 * v29;
      while (v18 != v29)
      {
        LODWORD(v122) = v119 < v120;
        v31 = v124;
        sub_10003ED0C(v30, v124, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v32 = v125;
        sub_10003ED0C(v5, v125, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v33 = *(v126 + 24);
        v34 = *(v31 + v33);
        v35 = *(v32 + v33);
        sub_10003F8FC(v32, type metadata accessor for InsightsDataManager.TopAssetCategory);
        result = sub_10003F8FC(v31, type metadata accessor for InsightsDataManager.TopAssetCategory);
        ++v29;
        v30 += v121;
        v5 += v121;
        if (((v122 ^ (v35 >= v34)) & 1) == 0)
        {
          v18 = v29 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v108;
      v6 = v109;
      v21 = v110;
      a4 = v111;
      if (v119 < v120)
      {
        if (v18 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v18)
        {
          v36 = v121 * (v18 - 1);
          v37 = v18 * v121;
          v120 = v18;
          v38 = v18;
          v39 = v110;
          v40 = v110 * v121;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v41 + v40;
              sub_1000AC020(v41 + v40, v115, type metadata accessor for InsightsDataManager.TopAssetCategory);
              if (v40 < v36 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1000AC020(v115, v41 + v36, type metadata accessor for InsightsDataManager.TopAssetCategory);
            }

            ++v39;
            v36 -= v121;
            v37 -= v121;
            v40 += v121;
          }

          while (v39 < v38);
          a3 = v113;
          v9 = v108;
          v21 = v110;
          a4 = v111;
          v18 = v120;
        }
      }
    }

    v42 = a3[1];
    if (v18 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_126;
    }

    if (v18 - v21 >= a4)
    {
LABEL_32:
      v44 = v18;
      if (v18 < v21)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v21, a4))
    {
      goto LABEL_128;
    }

    if ((v21 + a4) >= v42)
    {
      v43 = a3[1];
    }

    else
    {
      v43 = v21 + a4;
    }

    if (v43 < v21)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v18 == v43)
    {
      goto LABEL_32;
    }

    v89 = *a3;
    v90 = *(v9 + 72);
    v91 = *a3 + v90 * (v18 - 1);
    v92 = v21;
    v93 = -v90;
    v109 = v6;
    v110 = v92;
    v94 = v92 - v18;
    v122 = v89;
    v114 = v90;
    v5 = v89 + v18 * v90;
    v95 = v126;
    v117 = v43;
LABEL_86:
    v119 = v94;
    v120 = v18;
    v118 = v5;
    v121 = v91;
    v96 = v91;
LABEL_87:
    a4 = v124;
    sub_10003ED0C(v5, v124, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v97 = v125;
    sub_10003ED0C(v96, v125, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v98 = *(v95 + 24);
    v99 = *(a4 + v98);
    v100 = *(v97 + v98);
    sub_10003F8FC(v97, type metadata accessor for InsightsDataManager.TopAssetCategory);
    result = sub_10003F8FC(a4, type metadata accessor for InsightsDataManager.TopAssetCategory);
    if (v100 < v99)
    {
      break;
    }

    v95 = v126;
LABEL_85:
    v18 = v120 + 1;
    v91 = v121 + v114;
    v94 = v119 - 1;
    v5 = v118 + v114;
    v44 = v117;
    if (v120 + 1 != v117)
    {
      goto LABEL_86;
    }

    v9 = v108;
    v6 = v109;
    a3 = v113;
    v21 = v110;
    if (v117 < v110)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v116;
    }

    else
    {
      result = sub_1003E4B80(0, *(v116 + 2) + 1, 1, v116);
      v20 = result;
    }

    a4 = *(v20 + 2);
    v45 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_1003E4B80((v45 > 1), a4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v5;
    v46 = &v20[16 * a4];
    *(v46 + 4) = v21;
    *(v46 + 5) = v44;
    v47 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v117 = v44;
    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v20[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_112;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_113;
          }

          v60 = &v20[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_115;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v64 >= v56)
          {
            v82 = &v20[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_122;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_114;
            }

            v65 = &v20[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_117;
            }

            v71 = &v20[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_121;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v20[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_116;
          }

          v78 = &v20[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v86 = v20;
        v87 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v48 + 40];
        sub_100258248(*a3 + *(v9 + 72) * v87, *a3 + *(v9 + 72) * *&v20[16 * v48 + 32], *a3 + *(v9 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100204C44(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_111;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v127 = v86;
        result = sub_100204BB8(v48);
        v20 = v127;
        v5 = *(v127 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = a3[1];
    v19 = v117;
    a4 = v111;
    if (v117 >= v18)
    {
      goto LABEL_96;
    }
  }

  if (v122)
  {
    v101 = v123;
    sub_1000AC020(v5, v123, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v95 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000AC020(v101, v96, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v96 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1002570E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100204C44(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100258774((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003E4B80(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1003E4B80((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100258774((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100204C44(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100204BB8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1002576C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for Date();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = (a2 - a1) / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v18;
    if (v18 < 1)
    {
      v33 = a4 + v18;
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v18;
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = a2 + v30;
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = v31 + v30;
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = static Date.> infix(_:_:)();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v17;
    v58 = a4 + v17;
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = static Date.> infix(_:_:)();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = v49 + v23;
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_100204C58(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_100257C54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for Date();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_100034024(&qword_100AD2698, &type metadata accessor for Date);
          LOBYTE(v35) = dispatch thunk of static Comparable.< infix(_:_:)();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_100034024(&qword_100AD2698, &type metadata accessor for Date);
        LOBYTE(v22) = dispatch thunk of static Comparable.< infix(_:_:)();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_100204C58(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_100258248(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v9 = __chkstk_darwin(v8);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v50 = &v41 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v54 = a1;
  v53 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v45 = a4;
      v46 = a1;
      v49 = v8;
      v44 = -v14;
      do
      {
        v42 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v47 = a2;
        v48 = a2 + v27;
        while (1)
        {
          if (v29 <= a1)
          {
            v54 = v29;
            v52 = v42;
            goto LABEL_60;
          }

          v32 = a3;
          v43 = v26;
          a3 += v27;
          v33 = v28 + v27;
          v34 = v50;
          sub_10003ED0C(v28 + v27, v50, type metadata accessor for InsightsDataManager.TopAssetCategory);
          v35 = v51;
          sub_10003ED0C(v30, v51, type metadata accessor for InsightsDataManager.TopAssetCategory);
          v36 = *(v8 + 24);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          sub_10003F8FC(v35, type metadata accessor for InsightsDataManager.TopAssetCategory);
          sub_10003F8FC(v34, type metadata accessor for InsightsDataManager.TopAssetCategory);
          if (v38 < v37)
          {
            break;
          }

          v26 = v33;
          if (v32 < v28 || a3 >= v28)
          {
            v31 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v30 = v48;
            v8 = v31;
            v27 = v44;
          }

          else
          {
            v30 = v48;
            v8 = v49;
            v27 = v44;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v33;
          a1 = v46;
          v29 = v47;
          if (v33 <= v45)
          {
            a2 = v47;
            goto LABEL_59;
          }
        }

        v39 = v45;
        if (v32 < v47 || a3 >= v47)
        {
          a2 = v48;
          v8 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v43;
          v27 = v44;
        }

        else
        {
          v40 = v32 == v47;
          a2 = v48;
          v8 = v49;
          v26 = v43;
          v27 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v46;
      }

      while (v28 > v39);
    }

LABEL_59:
    v54 = a2;
    v52 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v52 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v47 = a3;
      v49 = v8;
      do
      {
        v20 = v50;
        sub_10003ED0C(a2, v50, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v21 = v51;
        sub_10003ED0C(a4, v51, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v22 = *(v8 + 24);
        v23 = *(v20 + v22);
        v24 = *(v21 + v22);
        sub_10003F8FC(v21, type metadata accessor for InsightsDataManager.TopAssetCategory);
        sub_10003F8FC(v20, type metadata accessor for InsightsDataManager.TopAssetCategory);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            v8 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v25 = v47;
          }

          else
          {
            v25 = v47;
            v8 = v49;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v53 = a4 + v14;
          a4 += v14;
        }

        else if (a1 < a2 || a1 >= a2 + v14)
        {
          v8 = v49;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v14;
          v25 = v47;
        }

        else
        {
          v25 = v47;
          v8 = v49;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v54 = a1;
      }

      while (a4 < v48 && a2 < v25);
    }
  }

LABEL_60:
  sub_100204CB4(&v54, &v53, &v52);
  return 1;
}

uint64_t sub_100258774(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_10025899C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000065A8(0, &qword_100AF02B0);
    sub_10006DAB0(&qword_100AD6FD8, &qword_100AF02B0);
    Set.Iterator.init(_cocoa:)();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = v3 + 7;
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_1000065A8(0, &qword_100AF02B0);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = NSObject._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_1000065A8(0, &qword_100AF02B0);
  v27 = *(v3[6] + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = NSObject._rawHashValue(seed:)(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_10065201C(v63, v61, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_100259754(v57, v61, v3, v8, &v73);
  v59 = v58;

  v3 = v59;
LABEL_62:
  sub_100014FF8();
  return v3;
}

_BYTE *sub_100259048(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << v5[32];
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 6) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = v5[32];
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 2);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_10065221C(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << v5[32];
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 6) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 6) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1002599F8(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_100014FF8();
    return v5;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1002595B8(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = result;
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = *a5;
  v10 = a5[1];
  v11 = *(*a5 + 16);
  if (v10 == v11)
  {
LABEL_2:

    return sub_1000B7D84(v6, a2, v8, a3);
  }

  else
  {
    v13 = a3 + 56;
    while ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 >= v11)
      {
        goto LABEL_18;
      }

      v14 = *(v9 + v10 + 32);
      a5[1] = v10 + 1;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v15 = -1 << *(a3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      if (((1 << v16) & *(v13 + 8 * (v16 >> 6))) != 0)
      {
        v19 = *(a3 + 48);
        if (*(v19 + v16) == v14)
        {
LABEL_13:
          v21 = v6[v17];
          v6[v17] = v21 & ~v18;
          if ((v21 & v18) != 0)
          {
            if (__OFSUB__(v8--, 1))
            {
              goto LABEL_19;
            }

            if (!v8)
            {
              return &_swiftEmptySetSingleton;
            }
          }
        }

        else
        {
          v20 = ~v15;
          while (1)
          {
            v16 = (v16 + 1) & v20;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v13 + 8 * (v16 >> 6))) == 0)
            {
              break;
            }

            if (*(v19 + v16) == v14)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v9 = *a5;
      v10 = a5[1];
      v11 = *(*a5 + 16);
      if (v10 == v11)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_100259754(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          sub_1000065A8(0, &qword_100AF02B0);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_10065201C(a1, a2, v30, a3);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1000065A8(0, &qword_100AF02B0);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_1002599F8(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_10065221C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100259C30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100259C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v3[13] = *(v6 + 64);
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v3[17] = *(v8 + 64);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100259DD0, 0, 0);
}

uint64_t sub_100259DD0()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v26 = v0[14];
  v27 = v0[17];
  v4 = v0[11];
  v24 = v0[12];
  v31 = v0[10];
  v29 = v0[9];
  v30 = v0[8];
  v22 = v0[6];
  v23 = v0[7];
  v28 = v0[5];
  v25 = swift_allocObject();
  v0[19] = v25;
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = _swiftEmptyArrayStorage;
  v21 = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  v0[20] = v21;
  sub_1000F24EC(&qword_100ADA610);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  *(v5 + 32) = NLTagSchemeScript;
  v6 = objc_allocWithZone(NLTagger);
  type metadata accessor for NLTagScheme(0);
  v7 = NLTagSchemeScript;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithTagSchemes:isa];
  v0[21] = v9;
  v10 = v9;
  v20 = v9;

  (*(v2 + 16))(v1, v22, v3);
  (*(v24 + 16))(v26, v23, v4);
  v11 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v12 = (v27 + *(v24 + 80) + v11) & ~*(v24 + 80);
  v13 = swift_allocObject();
  v0[22] = v13;
  *(v13 + 2) = v28;
  *(v13 + 3) = v21;
  *(v13 + 4) = v10;
  *(v13 + 5) = v25;
  (*(v2 + 32))(&v13[v11], v1, v3);
  (*(v24 + 32))(&v13[v12], v26, v4);
  (*(v29 + 104))(v31, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v30);
  v14 = v28;
  v15 = v21;
  v16 = v20;

  v17 = swift_task_alloc();
  v0[23] = v17;
  *v17 = v0;
  v17[1] = sub_10025A0F0;
  v18 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v17, v18, sub_10025A7F8, v13, &type metadata for () + 8);
}

uint64_t sub_10025A0F0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    return _swift_task_switch(sub_1000B5208, 0, 0);
  }
}

uint64_t sub_10025A248()
{
  if (qword_100ACFB60 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    sub_10000617C(v1, qword_100ADA5A8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch events for streaks: %@", v4, 0xCu);
      sub_100004F84(v5, &unk_100AD4BB0);
    }

    else
    {
    }

    v7 = *(v0 + 120);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    swift_beginAccess();
    *(v0 + 40) = *(v7 + 16);
    sub_1000F24EC(&qword_100ADA5D0);
    sub_1000F24EC(&qword_100ADA5D8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100940050;
    swift_getKeyPath();

    SortDescriptor.init<A>(_:order:)();
    swift_getKeyPath();
    static String.StandardComparator.localizedStandard.getter();
    (*(v10 + 16))(v8, v9, v11);
    SortDescriptor.init(_:comparator:)();
    (*(v10 + 8))(v9, v11);
    *(v0 + 48) = v12;
    sub_1000F24EC(&qword_100ADA5E0);
    sub_1000F24EC(&qword_100ADA5E8);
    sub_10000B58C(&qword_100ADA5F0, &qword_100ADA5E0);
    sub_10000B58C(&qword_100ADA5F8, &qword_100ADA5E8);
    sub_10000B58C(&qword_100ADA600, &qword_100ADA5D8);
    v13 = Sequence.sorted<A, B>(using:)();

    v14 = *(v13 + 16);
    if (!v14)
    {
      break;
    }

    v25 = v0;
    sub_100199E4C(0, v14, 0);
    v15 = 0;
    v16 = (v13 + 48);
    v26 = v13;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      sub_10025A7B0(v17);
      v0 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      v21 = v18;

      if (v0 >= v20 >> 1)
      {
        sub_100199E4C((v20 > 1), v0 + 1, 1);
      }

      ++v15;
      _swiftEmptyArrayStorage[2] = v0 + 1;
      v22 = &_swiftEmptyArrayStorage[5 * v0];
      v22[4] = v17;
      v22[5] = 0;
      *(v22 + 48) = 1;
      v22[7] = v19;
      v22[8] = v21;
      v16 += 3;
      v13 = v26;
      if (v14 == v15)
      {
        v0 = v25;

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_13:

  v23 = *(v0 + 8);

  return v23(_swiftEmptyArrayStorage);
}

id sub_10025A7B0(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void sub_10025A7E8(id a1)
{
  if (a1 >= 4)
  {
  }
}

void sub_10025A7F8()
{
  type metadata accessor for Calendar();
  type metadata accessor for Date();
  sub_10024D920();
}

void sub_10025A8E0()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for Calendar() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for DateComponents() - 8);
  v8 = *(v7 + 80);
  sub_10024E114((v0 + v2), *(v0 + v3), v0 + v5, *(v0 + v6), v0 + ((v6 + v8 + 8) & ~v8), v0 + ((*(v7 + 64) + v8 + ((v6 + v8 + 8) & ~v8)) & ~v8));
}

void sub_10025AAB0(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Calendar() - 8);
  sub_10024B55C(*(v1 + 16), (v1 + v4), v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_10025AC08()
{
  v1 = sub_1000F24EC(&qword_100ADA6A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_10025AD00()
{
  type metadata accessor for IndexSet();
  if (v0 <= 0x3F)
  {
    sub_10025ADAC();
    if (v1 <= 0x3F)
    {
      sub_10025AE08();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10025ADAC()
{
  if (!qword_100ADA728)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADA728);
    }
  }
}

void sub_10025AE08()
{
  if (!qword_100ADA730)
  {
    sub_10025AE6C();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADA730);
    }
  }
}

unint64_t sub_10025AE6C()
{
  result = qword_100ADA738;
  if (!qword_100ADA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA738);
  }

  return result;
}

uint64_t sub_10025AEE8()
{
  result = type metadata accessor for IndexSet();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10025AFE8(uint64_t a1)
{
  v28 = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10012B8BC();
  v31 = v27;
  v32 = v9;

  v10._countAndFlagsBits = 0x636965682ELL;
  v10._object = 0xE500000000000000;
  String.append(_:)(v10);
  v11 = v32;
  v12 = v31;
  sub_10069763C(v8);
  v29 = v12;
  v30 = v11;
  v31 = v12;
  v32 = v11;
  (*(v2 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_1000777B4();
  URL.appending<A>(path:directoryHint:)();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v13 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v14 = String._bridgeToObjectiveC()();

  LOBYTE(v6) = [v13 fileExistsAtPath:v14];

  if ((v6 & 1) == 0)
  {
    v15 = [objc_opt_self() configurationWithPointSize:250.0];
    v16 = String._bridgeToObjectiveC()();

    v17 = [objc_opt_self() _systemImageNamed:v16 withConfiguration:v15];

    if (v17)
    {
      v18 = [objc_opt_self() quaternaryLabelColor];
      v19 = [v17 imageWithTintColor:v18];

      if (v19)
      {
        v20 = UIImageHEICRepresentation(v19);
        if (v20)
        {
          v21 = v20;
          v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          Data.write(to:options:)();
          sub_1000340DC(v22, v24);
          return v29;
        }
      }
    }

    return v29;
  }

  return v29;
}

uint64_t sub_10025B3B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA928);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA930);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA930);
  v13 = sub_1000F24EC(&qword_100ADA938);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100ADA938);
  }

  sub_100004F84(v11, &qword_100ADA930);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for GenericMapAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for GenericMapAssetMetadata();
    sub_10004A6D8(&qword_100ADA940, &type metadata accessor for GenericMapAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v8, &qword_100ADA938);
  (*(v14 + 56))(v8, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v8, v1 + v12, &qword_100ADA930);
  return swift_endAccess();
}

uint64_t sub_10025B758@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA8A0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA8A8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA8A8);
  v13 = sub_1000F24EC(&qword_100AD5B28);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AD5B28);
  }

  sub_100004F84(v11, &qword_100ADA8A8);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for WorkoutRouteAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for WorkoutRouteAssetMetadata();
    sub_10004A6D8(&qword_100ADA8B0, &type metadata accessor for WorkoutRouteAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AD5B28);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA8A8);
  return swift_endAccess();
}

uint64_t sub_10025BAFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD64C0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA8D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA8D0);
  v13 = sub_1000F24EC(&qword_100AE6680);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AE6680);
  }

  sub_100004F84(v11, &qword_100ADA8D0);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100AD64C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for StateOfMindAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for StateOfMindAssetMetadata();
    sub_10004A6D8(&qword_100AD6450, &type metadata accessor for StateOfMindAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AE6680);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA8D0);
  return swift_endAccess();
}