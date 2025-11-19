uint64_t sub_100001720()
{
  _s6ServerCMa();
  v0 = swift_allocObject();
  result = sub_10000EDA4();
  qword_10002CE80 = v0;
  return result;
}

void *sub_10000175C()
{
  if (v0[5])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v1 = v0[5];
  }

  v0[5] = 0;
  swift_unknownObjectRelease();
  if (v0[6])
  {
    v2 = v0[6];

    Task.cancel()();

    v3 = v0[6];
  }

  v0[6] = 0;

  v4 = v0[2];

  v5 = v0[3];

  v6 = v0[4];
  swift_unknownObjectRelease();
  v7 = v0[5];
  swift_unknownObjectRelease();
  v8 = v0[6];

  v9 = v0[7];

  v10 = v0[8];

  v11 = v0[9];

  v12 = v0[10];

  return v0;
}

uint64_t sub_10000185C()
{
  sub_10000175C();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void sub_1000018B4()
{
  sub_100011844();
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = sub_100010D80(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100010F5C();
  sub_10001189C();
  v4 = type metadata accessor for DispatchQoS();
  v5 = sub_100010FE8(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100010F5C();
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = sub_100010D0C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100010F5C();
  v16 = v15 - v14;
  sub_10001065C(0, &qword_10002C940, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  static DispatchQoS.unspecified.getter();
  sub_10000F784(&qword_10002C948, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000E634(&qword_10002C950, &qword_100020550);
  sub_10001069C(&qword_10002C958, &qword_10002C950, &qword_100020550);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  qword_10002CE88 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10001182C();
}

uint64_t sub_100001ACC()
{
  v0 = type metadata accessor for XPCPeerRequirement();
  sub_100010B0C(v0, qword_10002C608);
  sub_10000F74C(v0, qword_10002C608);
  return static XPCPeerRequirement.hasEntitlement(_:)();
}

NSString sub_100001B30()
{
  result = String._bridgeToObjectiveC()();
  qword_10002C628 = result;
  return result;
}

void sub_100001B68()
{
  v1 = v0;
  v74 = sub_10000E634(&qword_10002C990, &qword_100020578);
  v2 = *(*(v74 - 8) + 64);
  v3 = __chkstk_darwin(v74);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v75 = &v66 - v6;
  v7 = __chkstk_darwin(v5);
  v70 = &v66 - v8;
  __chkstk_darwin(v7);
  v10 = (&v66 - v9);
  v11 = sub_10000E634(&qword_10002C998, &qword_100020580);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v66 - v15;
  if (qword_10002C638 != -1)
  {
LABEL_18:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000F74C(v17, qword_10002CEB0);

  v72 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134349056;
    swift_beginAccess();
    *(v21 + 4) = *(*(v1 + 72) + 16);

    _os_log_impl(&_mh_execute_header, v19, v20, " ╭ Daemon server: %{public}ld active session(s):", v21, 0xCu);
  }

  else
  {
  }

  v73 = v10;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v68 = v1;
    v26 = v25;
    v77 = v25;
    *v24 = 136315138;
    v27 = [objc_opt_self() currentThread];
    v28 = [v27 description];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v16;
    v32 = v31;

    v33 = sub_100013F98(v29, v32, &v77);
    v16 = v30;

    *(v24 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, " │   thread: %s", v24, 0xCu);
    sub_10000F7CC(v26);
    v1 = v68;
  }

  swift_beginAccess();
  sub_100002294(*(v1 + 72), &v77);

  v10 = &qword_10002C990;
  *&v34 = 134349314;
  v68 = v34;
  for (i = v16; ; v16 = i)
  {
    v35 = v71;
    sub_1000022D0(v71);
    sub_1000107D8(v35, v16, &qword_10002C998, &qword_100020580);
    v36 = sub_10000E634(&qword_10002C9A0, &qword_100020588);
    if (sub_10000ED7C(v16, 1, v36) == 1)
    {
      break;
    }

    v37 = *v16;
    v38 = &v16[*(v36 + 48)];
    v39 = v74;
    v40 = *&v38[*(v74 + 48)];
    v41 = type metadata accessor for UUID();
    v1 = *(v41 - 8);
    v42 = v10;
    v43 = *(v1 + 32);
    v44 = v70;
    v43(v70, v38, v41);
    v45 = *(v39 + 48);
    v46 = v73;
    v43(v73, v44, v41);
    v10 = v42;
    *(v46 + v45) = v40;
    sub_10001078C(v46, v75, v42, &qword_100020578);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v16 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v76 = v49;
      *v16 = v68;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      v50 = v49;
      *(v16 + 4) = v37 + 1;
      *(v16 + 6) = 2082;
      v51 = v75;
      v52 = v67;
      v53 = v42;
      sub_10001078C(v75, v67, v42, &qword_100020578);
      v54 = *(v52 + *(v74 + 48));

      v55 = UUID.uuidString.getter();
      v56 = v51;
      v57 = v55;
      v59 = v58;
      sub_100010734(v56, v53, &qword_100020578);
      (*(v1 + 8))(v52, v41);
      v60 = sub_100013F98(v57, v59, &v76);

      *(v16 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v47, v48, " │   %{public}ld. %{public}s", v16, 0x16u);
      sub_10000F7CC(v50);
      v10 = v53;

      v61 = v73;
      v62 = v53;
    }

    else
    {

      sub_100010734(v75, v42, &qword_100020578);
      v61 = v46;
      v62 = v42;
    }

    sub_100010734(v61, v62, &qword_100020578);
  }

  sub_10000F818();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, " ╰─", v65, 2u);
  }
}

uint64_t sub_100002294@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_1000022D0@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_10000E634(&qword_10002C9A0, &qword_100020588);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v40 = (&v38 - v4);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000E634(&qword_10002C9A8, &qword_100020590);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v38 - v12;
  v14 = sub_10000E634(&qword_10002C990, &qword_100020578);
  v15 = *(*(v14 - 8) + 64);
  result = __chkstk_darwin(v14);
  v17 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v39 = &v38 - v22;
  if (v21)
  {
    v42 = v1;
    v43 = v20;
    v44 = v2;
    v23 = v19;
LABEL_7:
    v41 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v23 << 6);
    v25 = v9;
    v26 = v9;
    v27 = v17;
    (*(v6 + 16))(v26, *(v17 + 48) + *(v6 + 72) * v24, v5);
    v28 = *(*(v27 + 56) + 8 * v24);
    v29 = *(v14 + 48);
    (*(v6 + 32))(v13, v25, v5);
    *&v13[v29] = v28;
    sub_10000ED54(v13, 0, 1, v14);

    v30 = v41;
    v1 = v42;
    v20 = v43;
    v2 = v44;
LABEL_8:
    *v1 = v27;
    v1[1] = v18;
    v1[2] = v20;
    v1[3] = v19;
    v1[4] = v30;
    if (sub_10000ED7C(v13, 1, v14) == 1)
    {
      sub_100010734(v13, &qword_10002C9A8, &qword_100020590);
      v31 = v45;
      v32 = 1;
      return sub_10000ED54(v31, v32, 1, v2);
    }

    v33 = v39;
    sub_1000107D8(v13, v39, &qword_10002C990, &qword_100020578);
    v34 = *(v2 + 48);
    v35 = v1[5];
    v36 = v40;
    *v40 = v35;
    result = sub_1000107D8(v33, v36 + v34, &qword_10002C990, &qword_100020578);
    if (!__OFADD__(v35, 1))
    {
      v1[5] = v35 + 1;
      v37 = v45;
      sub_1000107D8(v36, v45, &qword_10002C9A0, &qword_100020588);
      v31 = v37;
      v32 = 0;
      return sub_10000ED54(v31, v32, 1, v2);
    }
  }

  else
  {
    while (1)
    {
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v23 >= ((v20 + 64) >> 6))
      {
        v27 = v17;
        sub_10000ED54(v13, 1, 1, v14);
        v30 = 0;
        goto LABEL_8;
      }

      v21 = *(v18 + 8 * v23);
      ++v19;
      if (v21)
      {
        v42 = v1;
        v43 = v20;
        v44 = v2;
        v19 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100002674()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 80) + 16))
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F74C(v2, qword_10002CEB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "begin observing library changes.", v5, 2u);
    }

    v6 = os_transaction_create();
    v7 = *(v1 + 32);
    *(v1 + 32) = v6;
    swift_unknownObjectRelease();
    sub_1000081FC();
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000F74C(v8, qword_10002CEB0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "end observing library changes.", v11, 2u);
    }

    sub_100008558();
    v12 = *(v1 + 32);
    *(v1 + 32) = 0;
    swift_unknownObjectRelease();
  }

  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F74C(v13, qword_10002CEB0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 134218242;
    *(v16 + 4) = *(*(v1 + 80) + 16);

    *(v16 + 12) = 2080;
    v18 = *(v1 + 80);
    type metadata accessor for UUID();
    _s14descr100028B61V18ObservationContextVMa();
    sub_10000F784(&qword_10002C978, &type metadata accessor for UUID);

    v19 = Dictionary.description.getter();
    v21 = v20;

    v22 = sub_100013F98(v19, v21, &v23);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "observationContexts count: %ld\n%s", v16, 0x16u);
    sub_10000F7CC(v17);
  }

  else
  {
  }
}

uint64_t sub_100002A20()
{
  v1 = type metadata accessor for XPCListener.InitializationOptions();
  v2 = sub_100010FE8(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100010F5C();
  v5 = type metadata accessor for XPCPeerRequirement();
  v6 = sub_100010D0C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100010F5C();
  v13 = v12 - v11;
  type metadata accessor for XPCListener();
  static MusicDaemon.machName.getter();
  if (qword_10002C5F8 != -1)
  {
    sub_100010CE4();
    swift_once();
  }

  v14 = qword_10002C600;
  v15 = qword_10002CE88;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_10000F74C(v5, qword_10002C608);
  (*(v8 + 16))(v13, v16, v5);

  static XPCListener.InitializationOptions.none.getter();
  sub_100011550();
  result = XPCListener.__allocating_init(service:targetQueue:options:requirement:incomingSessionHandler:)();
  if (!v25)
  {
    v18 = *(v0 + 24);
    *(v0 + 24) = result;

    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_10000F74C(v19, qword_10002CEB0);
    v21 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v22 = sub_10001186C();
    if (os_log_type_enabled(v22, v23))
    {
      sub_1000110C0();
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v21, v20, "xpc listener created.", v24, 2u);
      sub_100010FBC();
    }
  }

  return result;
}

uint64_t sub_100002CB4()
{
  _s14descr100028B61V14SessionHandlerCMa();
  sub_10000F784(&qword_10002CA98, _s14descr100028B61V14SessionHandlerCMa);
  return dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
}

uint64_t sub_100002D4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s14descr100028B61V14SessionHandlerCMa();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  result = sub_100011E04(a1);
  *a2 = result;
  return result;
}

void sub_100002DB8()
{
  sub_100011844();
  v48 = v0;
  v49 = v1;
  v3 = v2;
  v50 = v5;
  v51 = v4;
  v6 = type metadata accessor for MusicDaemon.Request.Context();
  v7 = sub_100010D0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v12 = type metadata accessor for MusicDaemon.Request.Action();
  v13 = sub_100010D0C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000E634(&qword_10002CA18, &qword_1000205D8);
  sub_100010FE8(v19);
  v21 = *(v20 + 64);
  sub_1000113E8();
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  type metadata accessor for TaskPriority();
  v46 = v24;
  v25 = sub_100010EE4();
  sub_10000ED54(v25, v26, v27, v28);
  sub_1000119F8();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = *(v15 + 16);
  v47 = v12;
  v30(v18, v49, v12);
  v31 = *(v9 + 16);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v6;
  v31(v48, v51, v6);
  v32 = qword_10002C630;

  v51 = v3;

  if (v32 != -1)
  {
    sub_100010CC4();
  }

  v33 = qword_10002CEA8;
  sub_100010CAC();
  v36 = sub_10000F784(v34, v35);
  v37 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v38 = (v17 + *(v9 + 80) + v37) & ~*(v9 + 80);
  v39 = (v11 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 2) = v33;
  *(v40 + 3) = v36;
  *(v40 + 4) = v29;
  (*(v15 + 32))(&v40[v37], v18, v47);
  (*(v9 + 32))(&v40[v38], v48, v49);
  v41 = &v40[v39];
  v42 = v51;
  *v41 = v50;
  *(v41 + 1) = v42;

  v43 = sub_1000114E8();
  sub_1000039D8(v43, v44, v46, v45, v40);

  sub_10001182C();
}

uint64_t sub_1000030B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = type metadata accessor for MusicDaemon.Request.Action();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = type metadata accessor for MusicDaemon.Error();
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();
  v15 = *(*(sub_10000E634(&qword_10002C9C0, &qword_1000205A8) - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v16 = *(*(sub_10000E634(&qword_10002C9B8, &qword_1000205A0) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v17 = *(*(sub_10000E634(&qword_10002CA68, &qword_100020650) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v18 = type metadata accessor for MusicDaemon.Request.Context();
  v8[19] = v18;
  v19 = *(v18 - 8);
  v8[20] = v19;
  v20 = *(v19 + 64) + 15;
  v8[21] = swift_task_alloc();
  v21 = type metadata accessor for MusicDaemon.Response.Context();
  v8[22] = v21;
  v22 = *(v21 - 8);
  v8[23] = v22;
  v23 = *(v22 + 64) + 15;
  v8[24] = swift_task_alloc();
  v24 = type metadata accessor for MusicDaemon.Response();
  v8[25] = v24;
  v25 = *(v24 - 8);
  v8[26] = v25;
  v26 = *(v25 + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v27 = qword_10002CEA8;
  v8[30] = qword_10002CEA8;

  return _swift_task_switch(sub_1000033F8, v27);
}

uint64_t sub_1000033F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100011958();
  sub_100011C44();
  sub_1000110D8();
  Strong = swift_weakLoadStrong();
  v24[31] = Strong;
  if (Strong)
  {
    swift_task_alloc();
    sub_10001104C();
    v24[32] = v26;
    *v26 = v27;
    v26[1] = sub_10000378C;
    v28 = v24[28];
    v29 = v24[6];
    v30 = v24[7];
    sub_1000114A8();

    return sub_100003CBC();
  }

  else
  {
    v33 = v24[30];
    v34 = v24[27];
    v90 = v24[26];
    v91 = v24[25];
    v81 = v24[24];
    v86 = v24[23];
    v87 = v24[22];
    v35 = v24[20];
    v36 = v24[21];
    v38 = v24[18];
    v37 = v24[19];
    v39 = v24[16];
    v40 = v24[12];
    v84 = v24[13];
    v85 = v24[15];
    v41 = v24[11];
    v79 = v24[17];
    v80 = v24[10];
    v88 = v24[8];
    v89 = v24[9];
    v42 = v24[7];
    v82 = v24[6];
    v83 = v24[14];

    (*(v35 + 16))(v36, v42, v37);
    v43 = type metadata accessor for MusicDaemon.Item();
    sub_100010DE8(v38, v44, v45, v43);
    v46 = type metadata accessor for MusicSubscription();
    sub_100010DE8(v79, v47, v48, v46);
    type metadata accessor for MusicRestrictions();
    sub_100010FB0();
    sub_10000ED54(v49, v50, v51, v52);
    MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
    (*(v41 + 104))(v40, enum case for MusicDaemon.Request.Action.favorite(_:), v80);
    LOBYTE(v35) = static MusicDaemon.Request.Action.== infix(_:_:)();
    (*(v41 + 8))(v40, v80);
    v53 = &enum case for MusicDaemon.Error.failedToPerformFavoriteAction(_:);
    if ((v35 & 1) == 0)
    {
      v53 = &enum case for MusicDaemon.Error.failedToPerformUndoFavoriteAction(_:);
    }

    (*(v83 + 104))(v85, *v53, v84);
    v54 = *(sub_10000E634(&qword_10002CA70, &qword_100020658) + 48);
    (*(v86 + 16))(v34, v81, v87);
    (*(v83 + 16))(v34 + v54, v85, v84);
    sub_100011040();
    sub_10000ED54(v55, v56, v57, v84);
    (*(v90 + 104))(v34, enum case for MusicDaemon.Response.actionPerformed(_:), v91);
    v88(v34);
    v58 = *(v90 + 8);
    v59 = sub_1000114DC();
    v60(v59);
    v61 = sub_100011280();
    v62(v61);
    v64 = v24[28];
    v63 = v24[29];
    v65 = v24[27];
    v66 = v24[21];
    v68 = v24[17];
    v67 = v24[18];
    v70 = v24[15];
    v69 = v24[16];
    v92 = v24[12];
    (*(v24[23] + 8))(v24[24], v24[22]);

    sub_1000112D0();
    sub_1000114A8();

    return v72(v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v92, a22, a23, a24);
  }
}

uint64_t sub_10000378C()
{
  sub_1000110FC();
  sub_100011384();
  v2 = v1[32];
  v3 = v1[31];
  v4 = v1[30];
  v5 = *v0;
  sub_100010E2C();
  *v6 = v5;

  return _swift_task_switch(sub_1000038A8, v4);
}

uint64_t sub_1000038A8()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v7 = v0[8];
  v6 = v0[9];

  v8 = *(v5 + 32);
  v9 = sub_1000119BC();
  v10(v9);
  v7(v2);
  v11 = v0[28];
  v12 = v0[27];
  v13 = v0[24];
  v14 = v0[21];
  v16 = v0[17];
  v15 = v0[18];
  v18 = v0[15];
  v17 = v0[16];
  v21 = v0[12];
  (*(v0[26] + 8))(v0[29], v0[25]);

  sub_1000112D0();

  return v19();
}

uint64_t sub_1000039D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000E634(&qword_10002CA18, &qword_1000205D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_10001078C(a3, v26 - v11, &qword_10002CA18, &qword_1000205D8);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_10000ED7C(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100010734(v12, &qword_10002CA18, &qword_1000205D8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100010734(a3, &qword_10002CA18, &qword_1000205D8);

      return v24;
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

  sub_100010734(a3, &qword_10002CA18, &qword_1000205D8);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100003CBC()
{
  sub_1000110FC();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v4);
  v6 = *(v5 + 64);
  v0[5] = sub_1000115D4();
  v7 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v7);
  v9 = *(v8 + 64);
  v0[6] = sub_1000115D4();
  v10 = sub_10000E634(&qword_10002CA68, &qword_100020650);
  sub_100010FE8(v10);
  v12 = *(v11 + 64);
  v0[7] = sub_1000115D4();
  v13 = type metadata accessor for MusicDaemon.Request.Context();
  v0[8] = v13;
  sub_100010D70(v13);
  v0[9] = v14;
  v16 = *(v15 + 64);
  v0[10] = sub_1000115D4();
  v17 = type metadata accessor for MusicDaemon.Item();
  v0[11] = v17;
  sub_100010D70(v17);
  v0[12] = v18;
  v20 = *(v19 + 64);
  v0[13] = sub_1000115EC();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v21 = type metadata accessor for MusicDaemon.Request.Action();
  v0[17] = v21;
  sub_100010D70(v21);
  v0[18] = v22;
  v24 = *(v23 + 64);
  v0[19] = sub_1000115EC();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v25 = type metadata accessor for MusicDaemon.Error();
  v0[23] = v25;
  sub_100010D70(v25);
  v0[24] = v26;
  v28 = *(v27 + 64);
  v0[25] = sub_1000115EC();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v29 = sub_10000E634(&qword_10002CA90, &qword_100020670);
  sub_100010FE8(v29);
  v31 = *(v30 + 64);
  v0[30] = sub_1000115D4();
  v32 = type metadata accessor for MusicDaemon.Response.Context();
  v0[31] = v32;
  sub_100010D70(v32);
  v0[32] = v33;
  v35 = *(v34 + 64);
  v0[33] = sub_1000115D4();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4();
  }

  v0[34] = qword_10002CEA8;
  sub_100011B58();
  v36 = sub_1000112A0();

  return _swift_task_switch(v36, v37);
}

uint64_t sub_100003FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  sub_100011704();
  a33 = v35;
  a34 = v36;
  sub_100011A04();
  a32 = v34;
  v37 = v34[22];
  v38 = v34[17];
  v39 = v34[18];
  v40 = v34[3];
  v41 = *(v39 + 16);
  v34[35] = v41;
  v34[36] = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v37, v40, v38);
  v42 = *(v39 + 88);
  v43 = sub_1000117F8();
  v45 = v44(v43);
  if (v45 == enum case for MusicDaemon.Request.Action.favorite(_:))
  {
    v46 = v34[15];
    v47 = v34[4];
    MusicDaemon.Request.Context.accountID.getter();
    v34[37] = v48;

    v34[38] = sub_10001B428();
    MusicDaemon.Request.Context.item.getter();
    swift_task_alloc();
    sub_10001104C();
    v34[39] = v49;
    *v49 = v50;
    v49[1] = sub_10000456C;
    v51 = v34[28];
    v53 = v34[15];
    v52 = v34[16];
    sub_100011C24();
    sub_100011534();

    return sub_100014D8C();
  }

  else if (v45 == enum case for MusicDaemon.Request.Action.undoFavorite(_:))
  {
    v56 = v34[13];
    v57 = v34[4];
    MusicDaemon.Request.Context.accountID.getter();
    v34[42] = v58;

    v34[43] = sub_10001B428();
    MusicDaemon.Request.Context.item.getter();
    swift_task_alloc();
    sub_10001104C();
    v34[44] = v59;
    *v59 = v60;
    v59[1] = sub_100004984;
    v61 = v34[27];
    v63 = v34[13];
    v62 = v34[14];
    sub_100011C24();
    sub_100011534();

    return sub_100015530();
  }

  else
  {
    v65 = v34[34];

    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v66 = v34[21];
    v67 = v34[17];
    v68 = v34[3];
    v69 = type metadata accessor for Logger();
    sub_10000F74C(v69, qword_10002CEB0);
    v41(v66, v68, v67);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v72 = sub_1000112DC(v71);
    v73 = v34[21];
    if (v72)
    {
      v74 = v34[20];
      v76 = v34[17];
      v75 = v34[18];
      sub_1000118AC();
      v131 = sub_1000115B8();
      a23 = v131;
      *v68 = 136446210;
      v41(v74, v73, v76);
      v77 = String.init<A>(describing:)();
      v79 = v78;
      v133 = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v134 = *(v75 + 8);
      v134(v73, v76);
      v80 = sub_100013F98(v77, v79, &a23);

      *(v68 + 4) = v80;
      sub_100010F6C();
      _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
      sub_10000F7CC(v131);
      sub_100010FBC();

      sub_100010FBC();
    }

    else
    {
      v86 = v34[17];
      v87 = v34[18];

      v88 = *(v87 + 8);
      v133 = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v89 = sub_1000119BC();
      v134 = v90;
      (v90)(v89);
    }

    v91 = v34[33];
    v92 = v34[30];
    v94 = v34[23];
    v93 = v34[24];
    v130 = v34[17];
    v132 = v34[22];
    v95 = v34[11];
    v97 = v34[6];
    v96 = v34[7];
    v98 = v34[5];
    (*(v34[9] + 16))(v34[10], v34[4], v34[8]);
    sub_100010FB0();
    sub_100011420(v99, v100, v101, v95);
    v102 = type metadata accessor for MusicSubscription();
    sub_100010DE8(v97, v103, v104, v102);
    type metadata accessor for MusicRestrictions();
    v105 = sub_100010EE4();
    sub_10000ED54(v105, v106, v107, v108);
    sub_100011550();
    MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
    (*(v93 + 104))(v92, enum case for MusicDaemon.Error.cannotPerformUnknownAction(_:), v94);
    sub_100011040();
    sub_10000ED54(v109, v110, v111, v94);
    v134(v132, v130);
    sub_100010D90();
    v112 = sub_10000E634(&qword_10002CA70, &qword_100020658);
    v113 = sub_100010F04(v112);
    v115 = v114(v113);
    sub_100011B70(v115, v116, &qword_10002CA90, &qword_100020670);
    v117 = type metadata accessor for MusicDaemon.Response();
    sub_100010CF8(v117);
    v119 = *(v118 + 104);
    v120 = sub_1000119E0();
    v121(v120);

    sub_1000112D0();
    sub_100011534();

    return v123(v122, v123, v124, v125, v126, v127, v128, v129, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v130, v132, v133, v134, a23, a24, a25, a26);
  }
}

uint64_t sub_10000456C()
{
  sub_1000117D4();
  sub_100010E2C();
  *v3 = v0;
  v4 = v0[39];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[11];
  *v3 = *v2;

  sub_10001188C();
  v0[40] = v8;
  v0[41] = v9;
  v10 = sub_100011390();
  v11(v10);
  sub_100011758();
  v13 = *(v12 + 272);
  if (v1)
  {
    v14 = sub_100004D9C;
  }

  else
  {
    v14 = sub_1000046E8;
  }

  return _swift_task_switch(v14, v13);
}

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011704();
  sub_100011A04();
  v28 = v26[34];

  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000114C4(v29, qword_10002CEB0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    sub_1000110C0();
    *swift_slowAlloc() = 0;
    sub_100011CAC(&_mh_execute_header, v32, v33, "item favorited successfully.");
    sub_100010FBC();
  }

  v34 = v26[40];
  v75 = v26[41];
  v35 = v26[37];
  v36 = v26[38];
  sub_100011650();
  v37 = v26[16];
  sub_1000118EC();
  v38 = sub_100011BC8();
  v39(v38);
  v40 = sub_10001198C();
  v41(v40);
  sub_100011040();
  sub_100011420(v42, v43, v44, v27);
  v45 = type metadata accessor for MusicSubscription();
  sub_100010DE8(a15, v46, v47, v45);
  type metadata accessor for MusicRestrictions();
  v48 = sub_100010FA0();
  sub_10000ED54(v48, v49, v50, v51);
  sub_100011A64();

  v52 = sub_100011624();
  a21(v52);
  sub_100010FB0();
  sub_10000ED54(v53, v54, v55, a22);
  sub_100010F1C();
  sub_100011230();
  v56 = sub_10000E634(&qword_10002CA70, &qword_100020658);
  v57 = sub_100010F04(v56);
  v59 = v58(v57);
  sub_100011B70(v59, v60, &qword_10002CA90, &qword_100020670);
  v61 = type metadata accessor for MusicDaemon.Response();
  sub_100010CF8(v61);
  v63 = *(v62 + 104);
  v64 = sub_1000119E0();
  v65(v64);

  sub_1000112D0();
  sub_100011534();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v75, a24, a25, a26);
}

uint64_t sub_100004984()
{
  sub_1000117D4();
  sub_100010E2C();
  *v3 = v0;
  v4 = v0[44];
  v5 = v0[13];
  v6 = v0[12];
  v7 = v0[11];
  *v3 = *v2;

  sub_10001188C();
  v0[45] = v8;
  v0[46] = v9;
  v10 = sub_100011390();
  v11(v10);
  sub_100011758();
  v13 = *(v12 + 272);
  if (v1)
  {
    v14 = sub_1000051AC;
  }

  else
  {
    v14 = sub_100004B00;
  }

  return _swift_task_switch(v14, v13);
}

uint64_t sub_100004B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011704();
  sub_100011A04();
  v28 = v26[34];

  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000114C4(v29, qword_10002CEB0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    sub_1000110C0();
    *swift_slowAlloc() = 0;
    sub_100011CAC(&_mh_execute_header, v32, v33, "item un-favorited successfully.");
    sub_100010FBC();
  }

  v34 = v26[45];
  v75 = v26[46];
  v35 = v26[42];
  v36 = v26[43];
  sub_100011650();
  v37 = v26[14];
  sub_1000118EC();
  v38 = sub_100011BC8();
  v39(v38);
  v40 = sub_10001198C();
  v41(v40);
  sub_100011040();
  sub_100011420(v42, v43, v44, v27);
  v45 = type metadata accessor for MusicSubscription();
  sub_100010DE8(a15, v46, v47, v45);
  type metadata accessor for MusicRestrictions();
  v48 = sub_100010FA0();
  sub_10000ED54(v48, v49, v50, v51);
  sub_100011A64();

  v52 = sub_100011624();
  a21(v52);
  sub_100010FB0();
  sub_10000ED54(v53, v54, v55, a22);
  sub_100010F1C();
  sub_100011230();
  v56 = sub_10000E634(&qword_10002CA70, &qword_100020658);
  v57 = sub_100010F04(v56);
  v59 = v58(v57);
  sub_100011B70(v59, v60, &qword_10002CA90, &qword_100020670);
  v61 = type metadata accessor for MusicDaemon.Response();
  sub_100010CF8(v61);
  v63 = *(v62 + 104);
  v64 = sub_1000119E0();
  v65(v64);

  sub_1000112D0();
  sub_100011534();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v75, a24, a25, a26);
}

uint64_t sub_100004D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011704();
  sub_100011A04();
  v29 = v26[37];
  v30 = v26[38];
  v31 = v26[34];
  v32 = v26[28];
  v33 = v26[29];
  v34 = v26[26];
  v35 = v26[23];
  v36 = v26[24];

  v38 = *(v36 + 32);
  v37 = v36 + 32;
  v38(v33, v32, v35);
  v105 = v38;
  v38(v34, v33, v35);
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v39 = sub_1000116D4();
  sub_10000F74C(v39, qword_10002CEB0);
  v40 = sub_100011BF0();
  v28(v40);
  v41 = sub_100011974();
  v34(v41);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (sub_1000113CC(v43))
  {
    v44 = sub_100011438();
    a15 = sub_100011A28();
    a19 = swift_slowAlloc();
    a23 = a19;
    v45 = sub_100011B94(4.8752e-34);
    v28(v45);
    v27 = String.init<A>(describing:)();
    v46 = *(v37 + 8);
    v47 = sub_100011390();
    v48(v47);
    v49 = sub_100011C18();
    v52 = sub_100013F98(v49, v50, v51);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2114;
    sub_100010D40();
    sub_10000F784(v53, v54);
    v55 = sub_100011AA4();
    v57 = sub_1000117AC(v55, v56);
    v58(v57);
    v59 = _swift_stdlib_bridgeErrorToNSError();
    v60 = sub_100011280();
    v61(v60);
    *(v44 + 14) = v59;
    v35 = a15;
    *a15 = v59;
    sub_100011DAC(&_mh_execute_header, v62, v63, "failed to perform action: %{public}s with error: %{public}@.");
    sub_100010734(a15, &qword_10002CA80, &unk_100020870);
    sub_100010FBC();

    sub_10000F7CC(a19);
    sub_100010FBC();

    sub_100010FBC();
  }

  else
  {
    sub_100011D8C();
    v64 = v30[1];
    v65 = sub_1000114DC();
    v66(v65);
    v67 = *(v37 + 8);
    v68 = sub_10001149C();
    v69(v68);
  }

  v70 = sub_1000113F4();
  v71(v70);
  sub_100010FB0();
  sub_100011420(v72, v73, v74, v35);
  v75 = type metadata accessor for MusicSubscription();
  sub_100010DE8(v27, v76, v77, v75);
  type metadata accessor for MusicRestrictions();
  sub_100010FB0();
  sub_10000ED54(v78, v79, v80, v81);
  sub_100011AC8();
  v82 = sub_1000114DC();
  v105(v82);
  sub_100011040();
  sub_10000ED54(v83, v84, v85, v42);
  sub_100010D90();
  v86 = sub_10000E634(&qword_10002CA70, &qword_100020658);
  v87 = sub_100010F04(v86);
  v89 = v88(v87);
  sub_100011B70(v89, v90, &qword_10002CA90, &qword_100020670);
  v91 = type metadata accessor for MusicDaemon.Response();
  sub_100010CF8(v91);
  v93 = *(v92 + 104);
  v94 = sub_1000119E0();
  v95(v94);

  sub_1000112D0();
  sub_100011534();

  return v97(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v105, v37, a23, a24, a25, a26);
}

uint64_t sub_1000051AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011704();
  sub_100011A04();
  v29 = v26[42];
  v30 = v26[43];
  v31 = v26[34];
  v32 = v26[29];
  v34 = v26[26];
  v33 = v26[27];
  v35 = v26[23];
  v36 = v26[24];

  v38 = *(v36 + 32);
  v37 = v36 + 32;
  v39 = sub_1000114DC();
  v38(v39);
  v40 = sub_1000119BC();
  v107 = v38;
  v38(v40);
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v41 = sub_1000116D4();
  sub_10000F74C(v41, qword_10002CEB0);
  v42 = sub_100011BF0();
  v28(v42);
  v43 = sub_100011974();
  v34(v43);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (sub_1000113CC(v45))
  {
    v46 = sub_100011438();
    a15 = sub_100011A28();
    a19 = swift_slowAlloc();
    a23 = a19;
    v47 = sub_100011B94(4.8752e-34);
    v28(v47);
    v27 = String.init<A>(describing:)();
    v48 = *(v37 + 8);
    v49 = sub_100011390();
    v50(v49);
    v51 = sub_100011C18();
    v54 = sub_100013F98(v51, v52, v53);

    *(v46 + 4) = v54;
    *(v46 + 12) = 2114;
    sub_100010D40();
    sub_10000F784(v55, v56);
    v57 = sub_100011AA4();
    v59 = sub_1000117AC(v57, v58);
    v60(v59);
    v61 = _swift_stdlib_bridgeErrorToNSError();
    v62 = sub_100011280();
    v63(v62);
    *(v46 + 14) = v61;
    v35 = a15;
    *a15 = v61;
    sub_100011DAC(&_mh_execute_header, v64, v65, "failed to perform action: %{public}s with error: %{public}@.");
    sub_100010734(a15, &qword_10002CA80, &unk_100020870);
    sub_100010FBC();

    sub_10000F7CC(a19);
    sub_100010FBC();

    sub_100010FBC();
  }

  else
  {
    sub_100011D8C();
    v66 = v30[1];
    v67 = sub_1000114DC();
    v68(v67);
    v69 = *(v37 + 8);
    v70 = sub_10001149C();
    v71(v70);
  }

  v72 = sub_1000113F4();
  v73(v72);
  sub_100010FB0();
  sub_100011420(v74, v75, v76, v35);
  v77 = type metadata accessor for MusicSubscription();
  sub_100010DE8(v27, v78, v79, v77);
  type metadata accessor for MusicRestrictions();
  sub_100010FB0();
  sub_10000ED54(v80, v81, v82, v83);
  sub_100011AC8();
  v84 = sub_1000114DC();
  v107(v84);
  sub_100011040();
  sub_10000ED54(v85, v86, v87, v44);
  sub_100010D90();
  v88 = sub_10000E634(&qword_10002CA70, &qword_100020658);
  v89 = sub_100010F04(v88);
  v91 = v90(v89);
  sub_100011B70(v91, v92, &qword_10002CA90, &qword_100020670);
  v93 = type metadata accessor for MusicDaemon.Response();
  sub_100010CF8(v93);
  v95 = *(v94 + 104);
  v96 = sub_1000119E0();
  v97(v96);

  sub_1000112D0();
  sub_100011534();

  return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v107, v37, a23, a24, a25, a26);
}

uint64_t sub_1000055B4()
{
  sub_1000110FC();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v5 = type metadata accessor for MusicDaemon.Error();
  v0[11] = v5;
  sub_100010D70(v5);
  v0[12] = v6;
  v8 = *(v7 + 64);
  v0[13] = sub_1000115EC();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v9 = sub_10000E634(&qword_10002CA68, &qword_100020650);
  sub_100010FE8(v9);
  v11 = *(v10 + 64);
  v0[16] = sub_1000115D4();
  v12 = type metadata accessor for MusicDaemon.Request.Context();
  v0[17] = v12;
  sub_100010D70(v12);
  v0[18] = v13;
  v15 = *(v14 + 64);
  v0[19] = sub_1000115D4();
  v16 = type metadata accessor for MusicDaemon.Response.Context();
  v0[20] = v16;
  sub_100010D70(v16);
  v0[21] = v17;
  v19 = *(v18 + 64);
  v0[22] = sub_1000115D4();
  v20 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v20);
  v22 = *(v21 + 64);
  v0[23] = sub_1000115EC();
  v0[24] = swift_task_alloc();
  v23 = type metadata accessor for MusicRestrictions();
  v0[25] = v23;
  sub_100010D70(v23);
  v0[26] = v24;
  v26 = *(v25 + 64);
  v0[27] = sub_1000115D4();
  v27 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v27);
  v29 = *(v28 + 64);
  v0[28] = sub_1000115EC();
  v0[29] = swift_task_alloc();
  v30 = type metadata accessor for MusicSubscription();
  v0[30] = v30;
  sub_100010D70(v30);
  v0[31] = v31;
  v33 = *(v32 + 64);
  v0[32] = sub_1000115EC();
  v0[33] = swift_task_alloc();
  v34 = type metadata accessor for MusicDaemon.Item();
  v0[34] = v34;
  sub_100010D70(v34);
  v0[35] = v35;
  v37 = *(v36 + 64);
  v0[36] = sub_1000115EC();
  v0[37] = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4();
  }

  v0[38] = qword_10002CEA8;
  sub_100011B58();
  v38 = sub_1000112A0();

  return _swift_task_switch(v38, v39);
}

uint64_t sub_1000058D4()
{
  sub_1000111E4();
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v1[39] = sub_10000F74C(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    sub_1000110C0();
    v5 = swift_slowAlloc();
    sub_100011690(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "mapping item.", v0, 2u);
    sub_100010FBC();
  }

  v6 = v1[36];
  v7 = v1[8];

  MusicDaemon.Request.Context.accountID.getter();
  v8 = sub_10001B428();
  v1[40] = v8;
  MusicDaemon.Request.Context.item.getter();
  swift_task_alloc();
  sub_10001104C();
  v1[41] = v9;
  *v9 = v10;
  v9[1] = sub_100005A2C;
  v12 = v1[36];
  v11 = v1[37];

  return sub_10001B4F8(v11, v12, v8);
}

uint64_t sub_100005A2C()
{
  sub_1000117D4();
  sub_100010E2C();
  *v3 = v0;
  v4 = v0[41];
  v5 = v0[36];
  v6 = v0[35];
  v7 = v0[34];
  *v3 = *v2;
  v0[42] = v1;

  sub_10001188C();
  v0[43] = v8;
  v0[44] = v9;
  v10 = sub_100011390();
  v11(v10);
  sub_100011758();
  v13 = *(v12 + 304);
  if (v1)
  {
    v14 = sub_100006340;
  }

  else
  {
    v14 = sub_100005BAC;
  }

  return _swift_task_switch(v14, v13);
}

uint64_t sub_100005F68()
{
  sub_1000111E4();
  v2 = *v1;
  sub_100011058();
  *v4 = v3;
  v5 = *(v2 + 360);
  *v4 = *v1;
  *(v3 + 368) = v0;

  v6 = *(v2 + 304);
  if (v0)
  {
    v7 = sub_100006838;
  }

  else
  {
    v7 = sub_10000608C;
  }

  return _swift_task_switch(v7, v6);
}

uint64_t sub_100006340()
{
  v6 = v1[40];
  v7 = v1[38];

  v8 = v1[42];
  sub_100011A40();
  sub_10000E634(&qword_10002CA30, &qword_100020610);
  v9 = sub_100011AEC();
  v10 = *(v0 + 272);
  if (v9)
  {
    sub_100011D0C();
    v11 = sub_100011810();
    v12(v11);
    v13 = *(v5 + 16);
    v14 = sub_100011624();
    v13(v14);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = sub_1000112DC(v16);
    v19 = v1[12];
    v18 = v1[13];
    v20 = v1[11];
    if (v17)
    {
      v0 = sub_1000118AC();
      v119 = sub_100011A28();
      *v0 = 138543362;
      sub_100010D40();
      sub_10000F784(v21, v22);
      v23 = sub_100011CEC();
      v25 = sub_100011BDC(v23, v24);
      v13(v25);
      v4 = _swift_stdlib_bridgeErrorToNSError();
      v27 = *(v19 + 8);
      v26 = v19 + 8;
      v28 = sub_10001149C();
      v29(v28);
      *(v0 + 4) = v4;
      v18 = v119;
      *v119 = v4;
      sub_100010F6C();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      sub_100010734(v119, &qword_10002CA80, &unk_100020870);
      sub_100010FBC();

      sub_100010FBC();
    }

    else
    {

      v85 = *(v19 + 8);
      v26 = v19 + 8;
      v86 = sub_10001149C();
      v87(v86);
    }

    v88 = sub_1000111F0();
    v89(v88);
    sub_100010FB0();
    sub_10000ED54(v90, v91, v92, v26);
    sub_100010FB0();
    sub_10000ED54(v93, v94, v95, v4);
    v96 = sub_100010FA0();
    sub_10000ED54(v96, v97, v98, v117);
    sub_100011B10();
    v99 = sub_10000E634(&qword_10002CA78, &unk_100020660);
    v100 = sub_10001173C(v99);
    v101(v100);
    v102 = sub_100010EF4();
    sub_10000ED54(v102, v103, v104, v18);
    v120(&v15[v0], v119);
    v105 = enum case for MusicDaemon.Response.failure(_:);
    v106 = type metadata accessor for MusicDaemon.Response();
    sub_100010CF8(v106);
    (*(v107 + 104))(v15, v105);
    v108 = v1[5];
  }

  else
  {
    v35 = *v0;

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    if (v38)
    {
      v3 = sub_1000118AC();
      v46 = sub_100011A28();
      *v3 = 138543362;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v47;
      *v46 = v47;
      sub_100011CCC(&_mh_execute_header, v48, v49, "failed to perform library mapping with error: %{public}@.");
      sub_100010734(v46, &qword_10002CA80, &unk_100020870);
      sub_100010FBC();

      sub_100010FBC();
    }

    sub_10001131C(v38, v39, v40, v41, v42, v43, v44, v45, v111);
    v50 = sub_100011BB4();
    v51(v50);
    sub_100010FB0();
    sub_10000ED54(v52, v53, v54, v113);
    sub_100010FB0();
    sub_10000ED54(v55, v56, v57, v114);
    v58 = sub_100010EE4();
    sub_10000ED54(v58, v59, v60, v115);
    sub_1000118C4();
    v61 = sub_10000E634(&qword_10002CA78, &unk_100020660);
    v69 = sub_100011474(v61, v62, v63, v64, v65, v66, v67, v68, v112, v113, v114, v115, v116, v117, v118);
    v70(v69);
    sub_100011040();
    sub_10000ED54(v71, v72, v73, v3);
    swift_getErrorValue();
    v75 = v1[2];
    v74 = v1[3];
    v76 = v1[4];
    v77 = Error.localizedDescription.getter();
    v79 = v78;

    v80 = sub_100011C04();
    v81(v80);
    *v2 = v77;
    v2[1] = v79;
    (*(v119 + 104))(v2, enum case for MusicDaemon.Error.other(_:));
    v82 = enum case for MusicDaemon.Response.failure(_:);
    v83 = type metadata accessor for MusicDaemon.Response();
    sub_100010CF8(v83);
    (*(v84 + 104))(v37, v82);
  }

  sub_100010E08();
  sub_100011C6C();

  sub_1000112D0();

  return v109();
}

uint64_t sub_100006838()
{
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[40];
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[34];

  v10 = sub_1000117F8();
  (v5)(v10);
  v11 = v0[46];
  sub_100011A40();
  sub_10000E634(&qword_10002CA30, &qword_100020610);
  v12 = sub_100011AEC();
  v13 = *(v4 + 272);
  if (v12)
  {
    sub_100011D0C();
    v14 = sub_100011810();
    v15(v14);
    v16 = *(v3 + 16);
    v17 = sub_100011624();
    v16(v17);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = sub_1000112DC(v19);
    v22 = v0[12];
    v21 = v0[13];
    v23 = v0[11];
    if (v20)
    {
      v4 = sub_1000118AC();
      v122 = sub_100011A28();
      *v4 = 138543362;
      sub_100010D40();
      sub_10000F784(v24, v25);
      v26 = sub_100011CEC();
      v28 = sub_100011BDC(v26, v27);
      v16(v28);
      v2 = _swift_stdlib_bridgeErrorToNSError();
      v30 = *(v22 + 8);
      v29 = v22 + 8;
      v31 = sub_10001149C();
      v32(v31);
      *(v4 + 4) = v2;
      v21 = v122;
      *v122 = v2;
      sub_100010F6C();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      sub_100010734(v122, &qword_10002CA80, &unk_100020870);
      sub_100010FBC();

      sub_100010FBC();
    }

    else
    {

      v88 = *(v22 + 8);
      v29 = v22 + 8;
      v89 = sub_10001149C();
      v90(v89);
    }

    v91 = sub_1000111F0();
    v92(v91);
    sub_100010FB0();
    sub_10000ED54(v93, v94, v95, v29);
    sub_100010FB0();
    sub_10000ED54(v96, v97, v98, v2);
    v99 = sub_100010FA0();
    sub_10000ED54(v99, v100, v101, v120);
    sub_100011B10();
    v102 = sub_10000E634(&qword_10002CA78, &unk_100020660);
    v103 = sub_10001173C(v102);
    v104(v103);
    v105 = sub_100010EF4();
    sub_10000ED54(v105, v106, v107, v21);
    v123(&v18[v4], v122);
    v108 = enum case for MusicDaemon.Response.failure(_:);
    v109 = type metadata accessor for MusicDaemon.Response();
    sub_100010CF8(v109);
    (*(v110 + 104))(v18, v108);
    v111 = v0[5];
  }

  else
  {
    v38 = *v4;

    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    v41 = os_log_type_enabled(v39, v40);
    if (v41)
    {
      v1 = sub_1000118AC();
      v49 = sub_100011A28();
      *v1 = 138543362;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v50;
      *v49 = v50;
      sub_100011CCC(&_mh_execute_header, v51, v52, "failed to perform library mapping with error: %{public}@.");
      sub_100010734(v49, &qword_10002CA80, &unk_100020870);
      sub_100010FBC();

      sub_100010FBC();
    }

    sub_10001131C(v41, v42, v43, v44, v45, v46, v47, v48, v114);
    v53 = sub_100011BB4();
    v54(v53);
    sub_100010FB0();
    sub_10000ED54(v55, v56, v57, v116);
    sub_100010FB0();
    sub_10000ED54(v58, v59, v60, v117);
    v61 = sub_100010EE4();
    sub_10000ED54(v61, v62, v63, v118);
    sub_1000118C4();
    v64 = sub_10000E634(&qword_10002CA78, &unk_100020660);
    v72 = sub_100011474(v64, v65, v66, v67, v68, v69, v70, v71, v115, v116, v117, v118, v119, v120, v121);
    v73(v72);
    sub_100011040();
    sub_10000ED54(v74, v75, v76, v1);
    swift_getErrorValue();
    v78 = v0[2];
    v77 = v0[3];
    v79 = v0[4];
    v80 = Error.localizedDescription.getter();
    v82 = v81;

    v83 = sub_100011C04();
    v84(v83);
    *v5 = v80;
    *(v5 + 8) = v82;
    (*(v122 + 104))(v5, enum case for MusicDaemon.Error.other(_:));
    v85 = enum case for MusicDaemon.Response.failure(_:);
    v86 = type metadata accessor for MusicDaemon.Response();
    sub_100010CF8(v86);
    (*(v87 + 104))(v40, v85);
  }

  sub_100010E08();
  sub_100011C6C();

  sub_1000112D0();

  return v112();
}

void sub_100006D40()
{
  sub_100011844();
  v118 = v1;
  v3 = v2;
  v121 = v4;
  v5 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v5);
  v7 = *(v6 + 64);
  sub_1000113E8();
  __chkstk_darwin(v8);
  v120 = &v106 - v9;
  v10 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v10);
  v12 = *(v11 + 64);
  sub_1000113E8();
  __chkstk_darwin(v13);
  v119 = &v106 - v14;
  v15 = sub_10000E634(&qword_10002CA68, &qword_100020650);
  sub_100010FE8(v15);
  v17 = *(v16 + 64);
  sub_1000113E8();
  __chkstk_darwin(v18);
  v117 = &v106 - v19;
  v20 = type metadata accessor for MusicDaemon.Request.Context();
  v21 = sub_100010D0C(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_100010F5C();
  v114 = v27 - v26;
  v28 = type metadata accessor for MusicDaemon.Response.Context();
  v29 = sub_100010D0C(v28);
  v115 = v30;
  v116 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_100010F5C();
  v113 = v34 - v33;
  v35 = sub_10000E634(&qword_10002C960, &qword_100020558);
  v36 = sub_100010D80(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_100011290();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  v44 = &v106 - v43;
  v45 = _s14descr100028B61V18ObservationContextVMa();
  v46 = sub_100010D80(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  sub_100011290();
  v108 = v49 - v50;
  sub_100011804();
  __chkstk_darwin(v51);
  v109 = &v106 - v52;
  sub_100011804();
  __chkstk_darwin(v53);
  v107 = &v106 - v54;
  sub_100011804();
  v56 = __chkstk_darwin(v55);
  v58 = &v106 - v57;
  __chkstk_darwin(v56);
  v60 = &v106 - v59;
  v61 = type metadata accessor for UUID();
  sub_100010CF8(v61);
  (*(v62 + 16))(v60, v118);
  v63 = *(v23 + 16);
  v64 = &v60[*(v45 + 20)];
  v111 = v23 + 16;
  v112 = v20;
  v110 = v63;
  v63(v64, v3, v20);
  v65 = v44;
  v66 = *(v0 + 16);
  v122 = v0;
  v123 = v3;
  v118 = v3;
  v124 = v60;
  UnfairLock.locked<A>(_:)();
  sub_10001078C(v44, v41, &qword_10002C960, &qword_100020558);
  if (sub_10000ED7C(v41, 1, v45) != 1)
  {
    sub_10000ECF0(v41, v58);
    v68 = v58;
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_1000114C4(v77, qword_10002CEB0);
    v78 = v58;
    v79 = v107;
    sub_10000EC8C(v78, v107);
    v69 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (!sub_1000116BC(v80))
    {

      sub_10000F6F0(v79);
      goto LABEL_12;
    }

    sub_1000118AC();
    v81 = sub_1000115B8();
    v125 = v81;
    MEMORY[0] = 136446210;
    sub_10000EC8C(v79, v109);
    sub_100011624();
    String.init<A>(describing:)();
    sub_10000F6F0(v79);
    v82 = sub_10001149C();
    v85 = sub_100013F98(v82, v83, v84);

    MEMORY[4] = v85;
    sub_100011A10(&_mh_execute_header, v69, v80, "already observing context: %{public}s");
    sub_10000F7CC(v81);
    sub_100010FBC();

    sub_100010FBC();

LABEL_10:

LABEL_12:
    sub_10000F6F0(v68);
    goto LABEL_13;
  }

  sub_100010734(v41, &qword_10002C960, &qword_100020558);
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_1000114C4(v67, qword_10002CEB0);
  v68 = v108;
  sub_10000EC8C(v60, v108);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (!sub_1000116BC(v70))
  {
    goto LABEL_10;
  }

  sub_1000118AC();
  v71 = v65;
  v72 = sub_1000115B8();
  v125 = v72;
  MEMORY[0] = 136446210;
  sub_10000EC8C(v68, v109);
  sub_100011624();
  String.init<A>(describing:)();
  sub_10000F6F0(v68);
  v73 = sub_10001149C();
  v76 = sub_100013F98(v73, v74, v75);

  MEMORY[4] = v76;
  sub_100011A10(&_mh_execute_header, v69, v70, "beginning observing context: %{public}s");
  sub_10000F7CC(v72);
  v65 = v71;
  sub_100010FBC();

  sub_100010FBC();

LABEL_13:
  v110(v114, v118, v112);
  v86 = type metadata accessor for MusicDaemon.Item();
  sub_100010DE8(v117, v87, v88, v86);
  v89 = type metadata accessor for MusicSubscription();
  sub_100010DE8(v119, v90, v91, v89);
  type metadata accessor for MusicRestrictions();
  v92 = sub_100010EE4();
  sub_10000ED54(v92, v93, v94, v95);
  v96 = v113;
  MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
  sub_100010734(v65, &qword_10002C960, &qword_100020558);
  v97 = *(sub_10000E634(&qword_10002CA70, &qword_100020658) + 48);
  v98 = v121;
  (*(v115 + 32))(v121, v96, v116);
  type metadata accessor for MusicDaemon.Error();
  sub_100010FB0();
  sub_10000ED54(v99, v100, v101, v102);
  v103 = enum case for MusicDaemon.Response.observationBegan(_:);
  v104 = type metadata accessor for MusicDaemon.Response();
  sub_100010CF8(v104);
  (*(v105 + 104))(v98, v103);
  sub_10000F6F0(v60);
  sub_10001182C();
}

void sub_100007490(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a2;
  v5 = sub_10000E634(&qword_10002C960, &qword_100020558);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16[-v7];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MusicDaemon.Request.Context.observerID.getter();
  swift_beginAccess();
  v14 = *(a1 + 80);

  sub_100007688(v13, v14, a3);

  (*(v10 + 8))(v13, v9);
  v15 = _s14descr100028B61V18ObservationContextVMa();
  if (sub_10000ED7C(a3, 1, v15) == 1)
  {
    MusicDaemon.Request.Context.observerID.getter();
    sub_10000EC8C(v17, v8);
    sub_10000ED54(v8, 0, 1, v15);
    swift_beginAccess();
    sub_100007738(v8, v13);
    swift_endAccess();
    sub_100002674();
  }
}

uint64_t sub_100007688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_10000F1C0(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = _s14descr100028B61V18ObservationContextVMa();
    sub_10000EC8C(v8 + *(*(v9 - 8) + 72) * v7, a3);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = _s14descr100028B61V18ObservationContextVMa();
    v10 = a3;
    v11 = 1;
  }

  return sub_10000ED54(v10, v11, 1, v12);
}

uint64_t sub_100007738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000E634(&qword_10002C960, &qword_100020558);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = _s14descr100028B61V18ObservationContextVMa();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000ED7C(a1, 1, v14) == 1)
  {
    sub_100010734(a1, &qword_10002C960, &qword_100020558);
    sub_10000F414(a2, v9);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_100010734(v9, &qword_10002C960, &qword_100020558);
  }

  else
  {
    sub_10000ECF0(a1, v13);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_10000F820(v13, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    v19 = type metadata accessor for UUID();
    return (*(*(v19 - 8) + 8))(a2, v19);
  }
}

void sub_100007910()
{
  sub_100011844();
  v116 = v0;
  v2 = v1;
  v120 = v3;
  v115 = _s14descr100028B61V18ObservationContextVMa();
  v4 = sub_100010D80(v115);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100011290();
  v108 = v7 - v8;
  sub_100011804();
  __chkstk_darwin(v9);
  v113 = &v107 - v10;
  sub_100011804();
  __chkstk_darwin(v11);
  v111 = &v107 - v12;
  v114 = sub_10000E634(&qword_10002C960, &qword_100020558);
  v13 = sub_100010D80(v114);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100011290();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v107 - v20;
  v22 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v22);
  v24 = *(v23 + 64);
  sub_1000113E8();
  __chkstk_darwin(v25);
  v26 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v26);
  v28 = *(v27 + 64);
  sub_1000113E8();
  __chkstk_darwin(v29);
  v31 = &v107 - v30;
  v32 = sub_10000E634(&qword_10002CA68, &qword_100020650);
  sub_100010FE8(v32);
  v34 = *(v33 + 64);
  sub_1000113E8();
  __chkstk_darwin(v35);
  v37 = &v107 - v36;
  v38 = type metadata accessor for MusicDaemon.Request.Context();
  v39 = sub_100010D0C(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v39);
  sub_100011290();
  v110 = (v44 - v45);
  sub_100011804();
  __chkstk_darwin(v46);
  v48 = &v107 - v47;
  v49 = type metadata accessor for MusicDaemon.Response.Context();
  v50 = sub_100010D0C(v49);
  v118 = v51;
  v119 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v50);
  sub_100010F5C();
  v56 = v55 - v54;
  v112 = v41;
  v109 = *(v41 + 16);
  v109(v48, v2, v38);
  v57 = type metadata accessor for MusicDaemon.Item();
  sub_100010DE8(v37, v58, v59, v57);
  v60 = type metadata accessor for MusicSubscription();
  sub_100010DE8(v31, v61, v62, v60);
  type metadata accessor for MusicRestrictions();
  sub_100010FB0();
  sub_10000ED54(v63, v64, v65, v66);
  v117 = v56;
  v67 = v115;
  v68 = v21;
  MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
  v69 = *(v116 + 16);
  v121 = v116;
  v122 = v2;
  UnfairLock.locked<A>(_:)();
  sub_10001078C(v68, v18, &qword_10002C960, &qword_100020558);
  if (sub_10000ED7C(v18, 1, v67) == 1)
  {
    sub_100010734(v18, &qword_10002C960, &qword_100020558);
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_1000114C4(v70, qword_10002CEB0);
    v71 = v109;
    v72 = v110;
    v109(v110, v2, v38);
    v73 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v74 = sub_10001186C();
    if (os_log_type_enabled(v74, v75))
    {
      sub_1000118AC();
      v76 = sub_1000115B8();
      v123 = v76;
      MEMORY[0] = 136446210;
      v71(v48, v72, v38);
      String.init<A>(describing:)();
      v77 = *(v112 + 8);
      v78 = sub_100011C18();
      v79(v78);
      v80 = sub_100011390();
      v83 = sub_100013F98(v80, v81, v82);

      MEMORY[4] = v83;
      sub_100011A10(&_mh_execute_header, v73, v69, "cannot end context that is not being observed: %{public}s.");
      sub_10000F7CC(v76);
      sub_100010FBC();

      sub_100010FBC();
    }

    else
    {

      v95 = *(v112 + 8);
      v96 = sub_100011C18();
      v97(v96);
    }
  }

  else
  {
    v84 = v111;
    sub_10000ECF0(v18, v111);
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_1000114C4(v85, qword_10002CEB0);
    v86 = v113;
    sub_10000EC8C(v84, v113);
    v87 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v88 = sub_10001186C();
    if (os_log_type_enabled(v88, v89))
    {
      sub_1000118AC();
      v90 = sub_1000115B8();
      v123 = v90;
      MEMORY[0] = 136446210;
      sub_10000EC8C(v86, v108);
      String.init<A>(describing:)();
      sub_10000F6F0(v86);
      v91 = sub_10001149C();
      v94 = sub_100013F98(v91, v92, v93);

      MEMORY[4] = v94;
      sub_100011A10(&_mh_execute_header, v87, v69, "ending observing context: %{public}s.");
      sub_10000F7CC(v90);
      sub_100010FBC();

      sub_100010FBC();
    }

    else
    {

      sub_10000F6F0(v86);
    }

    sub_10000F6F0(v84);
  }

  sub_100010734(v68, &qword_10002C960, &qword_100020558);
  v98 = *(sub_10000E634(&qword_10002CA70, &qword_100020658) + 48);
  v99 = v120;
  (*(v118 + 32))(v120, v117, v119);
  type metadata accessor for MusicDaemon.Error();
  sub_100010FB0();
  sub_10000ED54(v100, v101, v102, v103);
  v104 = enum case for MusicDaemon.Response.observationEnded(_:);
  v105 = type metadata accessor for MusicDaemon.Response();
  sub_100010CF8(v105);
  (*(v106 + 104))(v99, v104);
  sub_10001182C();
}

void sub_100008000(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000E634(&qword_10002C960, &qword_100020558);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MusicDaemon.Request.Context.observerID.getter();
  swift_beginAccess();
  v13 = *(a1 + 80);

  sub_100007688(v12, v13, a2);

  v14 = *(v9 + 8);
  v14(v12, v8);
  v15 = _s14descr100028B61V18ObservationContextVMa();
  if (sub_10000ED7C(a2, 1, v15) != 1)
  {
    MusicDaemon.Request.Context.observerID.getter();
    swift_beginAccess();
    sub_10000F414(v12, v7);
    v14(v12, v8);
    sub_100010734(v7, &qword_10002C960, &qword_100020558);
    swift_endAccess();
    sub_100002674();
  }
}

uint64_t sub_1000081FC()
{
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000114C4(v0, qword_10002CEB0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_1000113CC(v2))
  {
    sub_1000110C0();
    v3 = swift_slowAlloc();
    sub_1000119EC(v3);
    sub_1000112B0(&_mh_execute_header, v4, v5, "beginning observing library, subscription and restrictions change notifications.");
    sub_100010FBC();
  }

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = String._bridgeToObjectiveC()();
  v8 = sub_1000117F8();
  CFNotificationCenterAddObserver(v8, v9, v10, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  v12 = String._bridgeToObjectiveC()();
  v13 = sub_1000117F8();
  CFNotificationCenterAddObserver(v13, v14, v15, v12, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_1000092BC();
  sub_10000B1D8();

  return sub_10000CBB4();
}

void sub_100008390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2)
  {

    sub_100008634();
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000114C4(v7, qword_10002CEB0);
    oslog = Logger.logObject.getter();
    v8 = a6();
    if (os_log_type_enabled(oslog, v8))
    {
      sub_1000110C0();
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "observer for darwin callback handler not found.", v9, 2u);
      sub_100010FBC();
    }
  }
}

void sub_1000084B8(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  v10 = a1;
  v11 = a3;
  v14 = a5;
  v12 = sub_100011624();
  sub_100008390(v12, v13, a3, a4, a5, a6);
}

uint64_t sub_100008558()
{
  v1 = v0;
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000114C4(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_1000113CC(v4))
  {
    sub_1000110C0();
    v5 = swift_slowAlloc();
    sub_1000119EC(v5);
    sub_1000112B0(&_mh_execute_header, v6, v7, "ending observing library, subscription and restrictions change notifications.");
    sub_100010FBC();
  }

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v8, v1);

  sub_10000B0DC();
  sub_10000CAB8();

  return sub_10000E410();
}

void sub_100008634()
{
  sub_100011844();
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100010D0C(v2);
  v26 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100010F5C();
  v9 = v8 - v7;
  v25 = type metadata accessor for DispatchQoS();
  v10 = sub_100010D0C(v25);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100010F5C();
  v17 = v16 - v15;
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000114C4(v18, qword_10002CEB0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (sub_1000116BC(v20))
  {
    sub_1000110C0();
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "library change notification triggered.", v21, 2u);
    sub_100010FBC();
  }

  if (qword_10002C5F8 != -1)
  {
    sub_100010CE4();
    swift_once();
  }

  v27[4] = sub_100010654;
  v27[5] = v1;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_1000091A0;
  v27[3] = &unk_100028F18;
  v22 = _Block_copy(v27);

  static DispatchQoS.unspecified.getter();
  sub_100010D58();
  sub_10000F784(v23, v24);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  sub_10001069C(&qword_10002CA00, &qword_10002C9F8, &qword_1000205D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v26 + 8))(v9, v2);
  (*(v12 + 8))(v17, v25);

  sub_10001182C();
}

uint64_t sub_10000894C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v0 - 8);
  v58 = v0;
  v1 = *(v57 + 64);
  __chkstk_darwin(v0);
  v55 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  v3 = *(v54 + 64);
  __chkstk_darwin(v56);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v44 - v19;
  v21 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v22 = *(*(v21 - 8) + 64);
  result = __chkstk_darwin(v21);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v24 + 40))
  {
    v44 = v25;
    v45 = v18;
    v46 = v20;
    v47 = v14;
    v48 = v13;
    v49 = v12;
    v50 = v10;
    v51 = v5;
    v52 = v24;
    sub_10001065C(0, &qword_10002CA48, OS_dispatch_source_ptr);
    if (qword_10002C5F8 != -1)
    {
      swift_once();
    }

    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000F784(&qword_10002CA50, &type metadata accessor for OS_dispatch_source.TimerFlags);
    sub_10000E634(&qword_10002CA58, &qword_100020648);
    sub_10001069C(&qword_10002CA60, &qword_10002CA58, &qword_100020648);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v44 + 8))(v27, v21);
    v29 = *(v52 + 40);
    *(v52 + 40) = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v31 = v45;
    static DispatchTime.now()();
    v32 = v46;
    + infix(_:_:)();
    v33 = v48;
    v34 = *(v47 + 8);
    v34(v31, v48);
    v35 = v53;
    v36 = v49;
    v37 = v6;
    (*(v53 + 104))(v49, enum case for DispatchTimeInterval.never(_:), v6);
    v38 = v50;
    v44 = ObjectType;
    sub_100008F90(v50);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v39 = *(v35 + 8);
    v39(v38, v37);
    v39(v36, v37);
    v34(v32, v33);
    v40 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000106F0;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000091A0;
    aBlock[3] = &unk_100028F40;
    v41 = _Block_copy(aBlock);

    v42 = v51;
    static DispatchQoS.unspecified.getter();
    v43 = v55;
    sub_1000091E4();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v41);
    (*(v57 + 8))(v43, v58);
    (*(v54 + 8))(v42, v56);

    OS_dispatch_source.resume()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100008F90@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_100009008()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() defaultCenter];
    if (qword_10002C620 != -1)
    {
      swift_once();
    }

    [v2 postNotificationName:qword_10002C628 object:0];

    v3 = *(v1 + 40);
    *(v1 + 40) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F74C(v4, qword_10002CEB0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "debounceTimer: self deallocated.", v7, 2u);
    }
  }
}

uint64_t sub_1000091A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000091E4()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000F784(&qword_10002C9F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  sub_10001069C(&qword_10002CA00, &qword_10002C9F8, &qword_1000205D0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_1000092BC()
{
  v1 = v0;
  v2 = sub_10000E634(&qword_10002CA18, &qword_1000205D8);
  sub_100010FE8(v2);
  v4 = *(v3 + 64);
  sub_1000113E8();
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  if (*(v0 + 48))
  {
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000114C4(v8, qword_10002CEB0);
    v33 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v9))
    {
      sub_1000110C0();
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v33, v9, "attempting to setup library notification task but it already exists.", v10, 2u);
      sub_100010FBC();
    }

    v11 = v33;
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      sub_100010C98();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000114C4(v12, qword_10002CEB0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (sub_1000116BC(v14))
    {
      sub_1000110C0();
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "setting up library notification task.", v15, 2u);
      sub_100010FBC();
    }

    type metadata accessor for TaskPriority();
    v16 = sub_100010FA0();
    sub_10000ED54(v16, v17, v18, v19);
    sub_1000119F8();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = qword_10002C630;

    if (v21 != -1)
    {
      sub_100010CC4();
    }

    v22 = qword_10002CEA8;
    sub_100010CAC();
    v25 = sub_10000F784(v23, v24);
    sub_100011BA8();
    v26 = swift_allocObject();
    v26[2] = v22;
    v26[3] = v25;
    v26[4] = v20;

    v27 = sub_1000114E8();
    v30 = sub_1000039D8(v27, v28, v7, v29, v26);
    v31 = *(v1 + 48);
    *(v1 + 48) = v30;
  }
}

uint64_t sub_100009574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v5 = qword_10002CEA8;
  *(v4 + 48) = qword_10002CEA8;

  return _swift_task_switch(sub_100009620, v5);
}

uint64_t sub_100009620()
{
  sub_1000110FC();
  sub_1000110D8();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1000096F4;

    return sub_10000988C();
  }

  else
  {
    v4 = v0[6];

    sub_1000112D0();

    return v5();
  }
}

uint64_t sub_1000096F4()
{
  sub_1000111E4();
  sub_1000117D4();
  v3 = *(v0 + 64);
  v4 = *v2;
  sub_100010E2C();
  *v5 = v4;

  sub_100011758();
  v7 = *(v6 + 56);
  v8 = *(v0 + 48);
  if (v1)
  {
  }

  sub_10001185C();

  return _swift_task_switch(v9, v10);
}

uint64_t sub_100009834()
{
  sub_1000110FC();
  v1 = *(v0 + 48);

  sub_1000112D0();

  return v2();
}

uint64_t sub_10000988C()
{
  sub_1000110FC();
  v1[12] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[13] = v2;
  sub_100010D70(v2);
  v1[14] = v3;
  v5 = *(v4 + 64);
  v1[15] = sub_1000115D4();
  v6 = type metadata accessor for DispatchQoS();
  v1[16] = v6;
  sub_100010D70(v6);
  v1[17] = v7;
  v9 = *(v8 + 64);
  v1[18] = sub_1000115D4();
  v10 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v10);
  v12 = *(v11 + 64);
  v1[19] = sub_1000115D4();
  v13 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v13);
  v15 = *(v14 + 64);
  v1[20] = sub_1000115D4();
  v16 = type metadata accessor for MusicDaemon.Response();
  v1[21] = v16;
  sub_100010D70(v16);
  v1[22] = v17;
  v1[23] = *(v18 + 64);
  v1[24] = sub_1000115EC();
  v1[25] = swift_task_alloc();
  v19 = _s14descr100028B61V18ObservationContextVMa();
  v1[26] = v19;
  sub_100010D70(v19);
  v1[27] = v20;
  v22 = *(v21 + 64);
  v1[28] = sub_1000115EC();
  v1[29] = swift_task_alloc();
  v23 = type metadata accessor for UUID();
  v1[30] = v23;
  sub_100010D70(v23);
  v1[31] = v24;
  v26 = *(v25 + 64);
  v1[32] = sub_1000115D4();
  v27 = sub_10000E634(&qword_10002C968, &qword_100020560);
  sub_100010FE8(v27);
  v29 = *(v28 + 64);
  v1[33] = sub_1000115EC();
  v1[34] = swift_task_alloc();
  v30 = sub_10000E634(&qword_10002CA38, &qword_100020628);
  sub_100010FE8(v30);
  v32 = *(v31 + 64);
  v1[35] = sub_1000115D4();
  v33 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[36] = v33;
  sub_100010D70(v33);
  v1[37] = v34;
  v36 = *(v35 + 64);
  v1[38] = sub_1000115D4();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4();
  }

  v1[39] = qword_10002CEA8;
  sub_100011B58();
  v37 = sub_1000112A0();

  return _swift_task_switch(v37, v38);
}

uint64_t sub_100009BB8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_10002C620 != -1)
  {
    swift_once();
  }

  v2 = v0[38];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v0[40] = qword_10002CEA8;
  sub_100010CAC();
  sub_10000F784(v3, v4);
  v9 = sub_100010FF4(dword_100020630);

  swift_task_alloc();
  sub_10001104C();
  v0[41] = v5;
  *v5 = v6;
  v7 = sub_100010EAC(v5);

  return (v9)(v7);
}

uint64_t sub_100009CFC()
{
  sub_1000110FC();
  sub_100011384();
  v3 = v2;
  sub_100011058();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  sub_100010E2C();
  *v8 = v7;
  v3[42] = v0;

  if (!v0)
  {
    v11 = v3[39];
    v10 = v3[40];

    v12 = sub_100011270();

    return _swift_task_switch(v12, v13);
  }

  return result;
}

uint64_t sub_100009DFC()
{
  v1 = *(v0 + 280);
  v2 = type metadata accessor for Notification();
  if (sub_10000ED7C(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 312);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 256);
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v9 = *(v0 + 200);
    v90 = *(v0 + 192);
    v91 = *(v0 + 160);
    v92 = *(v0 + 152);
    v10 = *(v0 + 144);
    v93 = *(v0 + 120);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

    sub_1000112D0();
    sub_100011C50();

    __asm { BRAA            X1, X16 }
  }

  v13 = *(v0 + 336);
  v14 = *(v0 + 96);
  v15 = *(v14 + 16);
  sub_10000E634(&qword_10002C9E0, &qword_1000205C0);
  sub_100011A88();
  v16 = *(v0 + 72);
  *(v0 + 344) = v16;
  sub_10000E634(&qword_10002C9E8, &qword_1000205C8);
  UnfairLock.locked<A>(_:)();
  v17 = 0;
  *(v0 + 352) = *(v0 + 80);
  v18 = *(v16 + 32);
  *(v0 + 392) = v18;
  sub_100010F7C(v18);
  if (v14)
  {
    goto LABEL_6;
  }

  while (2)
  {
    v20 = 1;
    while (1)
    {
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_27:
        sub_100010C98();
        swift_once();
LABEL_18:
        v64 = type metadata accessor for Logger();
        sub_1000114C4(v64, qword_10002CEB0);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        if (sub_1000112DC(v66))
        {
          sub_1000110C0();
          v67 = swift_slowAlloc();
          sub_100011690(v67);
          sub_100010F6C();
          _os_log_impl(v68, v69, v70, v71, v72, 2u);
          sub_100010FBC();
        }

        sub_100010734(*(v0 + 280), &qword_10002CA38, &qword_100020628);
        *(v0 + 320) = qword_10002CEA8;
        sub_100010CAC();
        sub_10000F784(v73, v74);
        sub_100010FF4(dword_100020630);

        swift_task_alloc();
        sub_10001104C();
        *(v0 + 328) = v75;
        *v75 = v76;
        sub_100010EAC();
        sub_100011C50();

        __asm { BR              X4 }
      }

      v21 = v20 << *(v0 + 392);
      sub_1000117EC();
      if (v23 == v24)
      {
        break;
      }

      v25 = *(v0 + 344);
      sub_1000117E0(v22);
      ++v17;
    }

    v56 = *(v0 + 264);
    v57 = sub_10001155C();
    sub_10000E634(v57, v58);
    v59 = sub_100010EE4();
    sub_10000ED54(v59, v60, v61, v62);
    v14 = 0;
LABEL_12:
    *(v0 + 360) = v14;
    *(v0 + 368) = v17;
    sub_1000107D8(*(v0 + 264), *(v0 + 272), &qword_10002C968, &qword_100020560);
    v41 = sub_10001155C();
    v43 = sub_10000E634(v41, v42);
    v44 = sub_1000110CC();
    v46 = sub_10000ED7C(v44, v45, v43);
    v47 = *(v0 + 352);
    if (v46 == 1)
    {
      v63 = *(v0 + 344);

      if (qword_10002C638 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }

    sub_10000ECF0(*(v0 + 272) + *(v43 + 48), *(v0 + 224));
    if (!*(v47 + 16) || (v48 = *(v0 + 352), v49 = sub_10000F1C0(*(v0 + 224)), (v50 & 1) == 0))
    {
      v51 = *(v0 + 272);
      v53 = *(v0 + 240);
      v52 = *(v0 + 248);
      sub_10000F6F0(*(v0 + 224));
      v54 = sub_100011004();
      v55(v54);
      if (!v14)
      {
        continue;
      }

LABEL_6:
      v19 = *(v0 + 344);
      v27 = *(v0 + 256);
      v26 = *(v0 + 264);
      v29 = *(v0 + 240);
      v28 = *(v0 + 248);
      v30 = *(v0 + 232);
      v94 = v30;
      sub_100010F34();
      v31 = sub_100010D20();
      v32(v31);
      v33 = sub_1000117C8(*(v19 + 56));
      sub_10000EC8C(v33, v30);
      v34 = sub_10000E634(&qword_10002C970, &qword_100020568);
      v35 = *(v34 + 48);
      v36 = sub_100010F48();
      v37(v36);
      sub_10000ECF0(v94, v26 + v35);
      v38 = sub_100010EF4();
      sub_10000ED54(v38, v39, v40, v34);
      goto LABEL_12;
    }

    break;
  }

  v79 = sub_100011584(v49);
  sub_100010DE8(v48, v80, v81, v79);
  type metadata accessor for MusicRestrictions();
  sub_100010FB0();
  sub_10000ED54(v82, v83, v84, v85);

  swift_task_alloc();
  sub_10001104C();
  *(v0 + 384) = v86;
  *v86 = v87;
  sub_100011170(v86);
  sub_100011C50();

  return sub_1000055B4();
}

uint64_t sub_10000A328()
{
  sub_1000111E4();
  sub_100011384();
  v2 = v1[48];
  v3 = v1[39];
  v4 = v1[20];
  v5 = v1[19];
  v6 = *v0;
  sub_100010E2C();
  *v7 = v6;

  sub_100010734(v5, &qword_10002C9C0, &qword_1000205A8);
  sub_100010734(v4, &qword_10002C9B8, &qword_1000205A0);
  v8 = sub_100011270();

  return _swift_task_switch(v8, v9);
}

uint64_t sub_10000A480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100011958();
  sub_100011C44();
  v25 = (v24 + 16);
  if (qword_10002C5F8 != -1)
  {
LABEL_20:
    sub_100010CE4();
    swift_once();
  }

  v26 = *(v24 + 376);
  v123 = *(v24 + 272);
  v121 = *(v24 + 248);
  v122 = *(v24 + 240);
  v28 = *(v24 + 192);
  v27 = *(v24 + 200);
  v30 = *(v24 + 176);
  v29 = *(v24 + 184);
  v31 = *(v24 + 168);
  v117 = v27;
  v118 = *(v24 + 136);
  v32 = *(v24 + 128);
  v119 = v32;
  v120 = *(v24 + 224);
  v112 = *(v24 + 144);
  v113 = *(v24 + 120);
  v33 = *(v24 + 104);
  v115 = v31;
  v116 = *(v24 + 112);
  v114 = qword_10002CE88;
  (*(v30 + 16))(v28);
  v34 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v35 = swift_allocObject();
  v111 = v26;
  *(v35 + 16) = v26;
  (*(v30 + 32))(v35 + v34, v28, v31);
  *(v24 + 48) = sub_100010528;
  *(v24 + 56) = v35;
  *(v24 + 16) = _NSConcreteStackBlock;
  *(v24 + 24) = 1107296256;
  *(v24 + 32) = sub_1000091A0;
  *(v24 + 40) = &unk_100028EC8;
  v36 = _Block_copy(v25);

  static DispatchQoS.unspecified.getter();
  *(v24 + 88) = &_swiftEmptyArrayStorage;
  sub_100010D58();
  sub_10000F784(v37, v38);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  sub_10001069C(&qword_10002CA00, &qword_10002C9F8, &qword_1000205D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v114;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  v39 = *(v116 + 8);
  v40 = sub_1000114DC();
  v41(v40);
  (*(v118 + 8))(v112, v119);
  (*(v30 + 8))(v117, v31);
  sub_10000F6F0(v120);
  v42 = *(v24 + 56);

  (*(v121 + 8))(v123, v122);
  v43 = *(v24 + 360);
  v44 = *(v24 + 368);
  if (!v43)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v45 = *(v24 + 344);
    v52 = *(v24 + 256);
    v51 = *(v24 + 264);
    v54 = *(v24 + 240);
    v53 = *(v24 + 248);
    v55 = *(v24 + 232);
    v124 = v55;
    v122 = *(v24 + 216);
    sub_100010F34();
    v56 = sub_100010D20();
    v57(v56);
    v58 = sub_1000117C8(*(v45 + 56));
    sub_10000EC8C(v58, v55);
    v59 = sub_10000E634(&qword_10002C970, &qword_100020568);
    v60 = *(v59 + 48);
    v61 = sub_100010F48();
    v62(v61);
    sub_10000ECF0(v124, v51 + v60);
    v63 = sub_100010EF4();
    sub_10000ED54(v63, v64, v65, v59);
LABEL_8:
    *(v24 + 360) = v43;
    *(v24 + 368) = v44;
    v66 = *(v24 + 272);
    sub_1000107D8(*(v24 + 264), v66, &qword_10002C968, &qword_100020560);
    v67 = sub_100011550();
    v69 = sub_10000E634(v67, v68);
    sub_100010FC8(v66);
    if (v70)
    {
      break;
    }

    v71 = *(v24 + 352);
    sub_10000ECF0(*(v24 + 272) + *(v69 + 48), *(v24 + 224));
    if (*(v71 + 16))
    {
      v72 = *(v24 + 352);
      v73 = sub_10000F1C0(*(v24 + 224));
      if (v74)
      {
        v101 = sub_100011584(v73);
        sub_100010DE8(v72, v102, v103, v101);
        type metadata accessor for MusicRestrictions();
        sub_100010FB0();
        sub_10000ED54(v104, v105, v106, v107);

        swift_task_alloc();
        sub_10001104C();
        *(v24 + 384) = v108;
        *v108 = v109;
        sub_100011170();
        sub_1000114A8();

        return sub_1000055B4();
      }
    }

    v25 = *(v24 + 272);
    v76 = *(v24 + 240);
    v75 = *(v24 + 248);
    sub_10000F6F0(*(v24 + 224));
    v77 = sub_100011004();
    v78(v77);
    if (!v43)
    {
LABEL_4:
      while (!__OFADD__(v44, 1))
      {
        v46 = 1 << *(v24 + 392);
        sub_1000117EC();
        if (v48 == v49)
        {
          v79 = *(v24 + 264);
          v80 = sub_100011550();
          sub_10000E634(v80, v81);
          v82 = sub_100010EE4();
          sub_10000ED54(v82, v83, v84, v85);
          v43 = 0;
          goto LABEL_8;
        }

        v50 = *(v24 + 344);
        sub_1000117E0(v47);
        ++v44;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  v86 = *(v24 + 344);
  v87 = *(v24 + 352);

  sub_100010734(*(v24 + 280), &qword_10002CA38, &qword_100020628);
  *(v24 + 320) = qword_10002CEA8;
  sub_100010CAC();
  sub_10000F784(v88, v89);
  v125 = sub_100010FF4(dword_100020630);

  swift_task_alloc();
  sub_10001104C();
  *(v24 + 328) = v90;
  *v90 = v91;
  sub_100010EAC();
  sub_1000114A8();

  return v96(v92, v93, v94, v95, v96, v97, v98, v99, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v125, a22, a23, a24);
}

uint64_t sub_10000A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v6 = sub_10000F784(&qword_10002CA40, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10000AAE8;

  return dispatch thunk of AsyncIteratorProtocol.next()(a1, v5, v6);
}

uint64_t sub_10000AAE8()
{
  sub_1000111E4();
  sub_100011384();
  v3 = v2;
  sub_100011058();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *(v5 + 24);
  v8 = *v1;
  sub_100010E2C();
  *v9 = v8;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (v7)
    {
      sub_100011DCC();
      dispatch thunk of Actor.unownedExecutor.getter();
      sub_100011B88();
    }

    else
    {
      sub_100011C38();
    }

    v11 = sub_100010C60;
  }

  else
  {
    if (v7)
    {
      sub_100011DCC();
      dispatch thunk of Actor.unownedExecutor.getter();
      sub_100011B88();
    }

    else
    {
      sub_100011C38();
    }

    v11 = sub_100010C4C;
  }

  return _swift_task_switch(v11, v10);
}

uint64_t sub_10000AC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = type metadata accessor for MusicSubscription.Updates.Iterator();
  v6 = sub_10000F784(&qword_10002CA28, &type metadata accessor for MusicSubscription.Updates.Iterator);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10000AD2C;

  return dispatch thunk of AsyncIteratorProtocol.next()(a1, v5, v6);
}

uint64_t sub_10000AD2C()
{
  sub_1000111E4();
  sub_100011384();
  v3 = v2;
  sub_100011058();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *(v5 + 24);
  v8 = *v1;
  sub_100010E2C();
  *v9 = v8;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (v7)
    {
      sub_100011DCC();
      dispatch thunk of Actor.unownedExecutor.getter();
      sub_100011B88();
    }

    else
    {
      sub_100011C38();
    }

    v11 = sub_10000AEA0;
  }

  else
  {
    if (v7)
    {
      sub_100011DCC();
      dispatch thunk of Actor.unownedExecutor.getter();
      sub_100011B88();
    }

    else
    {
      sub_100011C38();
    }

    v11 = sub_10000AE7C;
  }

  return _swift_task_switch(v11, v10);
}

uint64_t sub_10000AEA0()
{
  sub_1000110FC();
  *(v0 + 16) = *(v0 + 48);
  sub_10000E634(&qword_10002CA30, &qword_100020610);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  sub_1000112D0();

  return v1();
}

void sub_10000AF40(uint64_t a1)
{
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F74C(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "responding to library did change notification.", v5, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session))
  {
    type metadata accessor for MusicDaemon.Response();
    sub_10000F784(&qword_10002CA08, &type metadata accessor for MusicDaemon.Response);

    dispatch thunk of XPCSession.send<A>(_:)();
  }
}

uint64_t sub_10000B0DC()
{
  v1 = v0;
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000114C4(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_1000113CC(v4))
  {
    sub_1000110C0();
    v5 = swift_slowAlloc();
    sub_1000119EC(v5);
    sub_1000112B0(&_mh_execute_header, v6, v7, "resetting library notification task.");
    sub_100010FBC();
  }

  if (*(v1 + 48))
  {
    v8 = *(v1 + 48);

    Task.cancel()();

    v9 = *(v1 + 48);
  }

  *(v1 + 48) = 0;
}

uint64_t sub_10000B1D8()
{
  v3 = sub_10000E634(&qword_10002CA18, &qword_1000205D8);
  sub_100010FE8(v3);
  v5 = *(v4 + 64);
  sub_1000113E8();
  __chkstk_darwin(v6);
  sub_10001189C();
  type metadata accessor for TaskPriority();
  sub_100010FB0();
  sub_10000ED54(v7, v8, v9, v10);
  sub_1000119F8();
  swift_allocObject();
  swift_weakInit();
  v11 = qword_10002C630;

  if (v11 != -1)
  {
    sub_100010CC4();
  }

  sub_100010CAC();
  sub_10000F784(v12, v13);
  sub_100011BA8();
  v14 = swift_allocObject();
  sub_100011D6C(v14);

  v15 = sub_1000114E8();
  v18 = sub_1000039D8(v15, v16, v0, v17, v2);
  v19 = *(v1 + 56);
  *(v1 + 56) = v18;
}

uint64_t sub_10000B320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v5 = qword_10002CEA8;
  *(v4 + 48) = qword_10002CEA8;

  return _swift_task_switch(sub_10000B3CC, v5);
}

uint64_t sub_10000B3CC()
{
  sub_1000110FC();
  sub_1000110D8();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_10000B4A0;

    return sub_10000B5E0();
  }

  else
  {
    v4 = v0[6];

    sub_1000112D0();

    return v5();
  }
}

uint64_t sub_10000B4A0()
{
  sub_1000111E4();
  sub_1000117D4();
  v3 = *(v0 + 64);
  v4 = *v2;
  sub_100010E2C();
  *v5 = v4;

  sub_100011758();
  v7 = *(v6 + 56);
  v8 = *(v0 + 48);
  if (v1)
  {
  }

  sub_10001185C();

  return _swift_task_switch(v9, v10);
}

uint64_t sub_10000B5E0()
{
  sub_1000110FC();
  v1[12] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[13] = v2;
  sub_100010D70(v2);
  v1[14] = v3;
  v5 = *(v4 + 64);
  v1[15] = sub_1000115D4();
  v6 = type metadata accessor for DispatchQoS();
  v1[16] = v6;
  sub_100010D70(v6);
  v1[17] = v7;
  v9 = *(v8 + 64);
  v1[18] = sub_1000115D4();
  v10 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v10);
  v12 = *(v11 + 64);
  v1[19] = sub_1000115D4();
  v13 = type metadata accessor for MusicDaemon.Response();
  v1[20] = v13;
  sub_100010D70(v13);
  v1[21] = v14;
  v1[22] = *(v15 + 64);
  v1[23] = sub_1000115EC();
  v1[24] = swift_task_alloc();
  v16 = _s14descr100028B61V18ObservationContextVMa();
  v1[25] = v16;
  sub_100010D70(v16);
  v1[26] = v17;
  v19 = *(v18 + 64);
  v1[27] = sub_1000115EC();
  v1[28] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v1[29] = v20;
  sub_100010D70(v20);
  v1[30] = v21;
  v23 = *(v22 + 64);
  v1[31] = sub_1000115D4();
  v24 = sub_10000E634(&qword_10002C968, &qword_100020560);
  sub_100010FE8(v24);
  v26 = *(v25 + 64);
  v1[32] = sub_1000115EC();
  v1[33] = swift_task_alloc();
  v27 = type metadata accessor for MusicSubscription();
  v1[34] = v27;
  sub_100010D70(v27);
  v1[35] = v28;
  v1[36] = *(v29 + 64);
  v1[37] = sub_1000115EC();
  v1[38] = swift_task_alloc();
  v30 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v30);
  v32 = *(v31 + 64);
  v1[39] = sub_1000115EC();
  v1[40] = swift_task_alloc();
  v33 = type metadata accessor for MusicSubscription.Updates();
  v1[41] = v33;
  sub_100010D70(v33);
  v1[42] = v34;
  v36 = *(v35 + 64);
  v1[43] = sub_1000115D4();
  v37 = type metadata accessor for MusicSubscription.Updates.Iterator();
  v1[44] = v37;
  sub_100010D70(v37);
  v1[45] = v38;
  v40 = *(v39 + 64);
  v1[46] = sub_1000115D4();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4();
  }

  v1[47] = qword_10002CEA8;
  sub_100011B58();
  v41 = sub_1000112A0();

  return _swift_task_switch(v41, v42);
}

uint64_t sub_10000B998()
{
  v1 = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  static MusicSubscription.subscriptionUpdates.getter();
  MusicSubscription.Updates.makeAsyncIterator()();
  v5 = *(v3 + 8);
  v6 = sub_1000114DC();
  v7(v6);
  v0[48] = qword_10002CEA8;
  sub_100010CAC();
  sub_10000F784(v8, v9);
  v15 = sub_100010FF4(&unk_100020608);

  v10 = swift_task_alloc();
  v11 = sub_100011014(v10);
  *v11 = v12;
  v13 = sub_100010E3C(v11);

  return (v15)(v13);
}

uint64_t sub_10000BA90()
{
  sub_1000110FC();
  sub_100011384();
  v3 = v2;
  sub_100011058();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  sub_100010E2C();
  *v8 = v7;
  v3[50] = v0;

  if (!v0)
  {
    v11 = v3[47];
    v10 = v3[48];

    v12 = sub_100011270();

    return _swift_task_switch(v12, v13);
  }

  return result;
}

uint64_t sub_10000BB90()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 272);
  sub_100010FC8(v1);
  if (v3)
  {
    v4 = *(v0 + 376);
    v5 = *(v0 + 344);
    v6 = *(v0 + 304);
    v7 = *(v0 + 312);
    v8 = *(v0 + 296);
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v95 = *(v0 + 248);
    v96 = *(v0 + 224);
    v97 = *(v0 + 216);
    v98 = *(v0 + 192);
    v99 = *(v0 + 184);
    v100 = *(v0 + 152);
    v101 = *(v0 + 144);
    v102 = *(v0 + 120);
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

    sub_1000112D0();
    sub_100011568();

    __asm { BRAA            X1, X16 }
  }

  v13 = *(v0 + 400);
  v14 = *(v0 + 304);
  v15 = *(v0 + 280);
  v16 = *(v0 + 96);
  v17 = *(v15 + 32);
  *(v0 + 408) = v17;
  *(v0 + 416) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v14, v1, v2);
  v18 = *(v16 + 16);
  sub_10000E634(&qword_10002C9E0, &qword_1000205C0);
  sub_100011A88();
  v19 = *(v0 + 72);
  *(v0 + 424) = v19;
  sub_10000E634(&qword_10002C9E8, &qword_1000205C8);
  UnfairLock.locked<A>(_:)();
  v20 = 0;
  *(v0 + 432) = *(v0 + 80);
  v21 = *(v19 + 32);
  *(v0 + 488) = v21;
  sub_100010F7C(v21);
  if (v16)
  {
    goto LABEL_7;
  }

  while (2)
  {
    v23 = 1;
    while (1)
    {
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_28:
        sub_100010C98();
        swift_once();
LABEL_19:
        v66 = type metadata accessor for Logger();
        sub_1000114C4(v66, qword_10002CEB0);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (sub_1000112DC(v68))
        {
          sub_1000110C0();
          v69 = swift_slowAlloc();
          sub_100011690(v69);
          sub_100010F6C();
          _os_log_impl(v70, v71, v72, v73, v74, 2u);
          sub_100010FBC();
        }

        (*(*(v0 + 280) + 8))(*(v0 + 304), *(v0 + 272));
        *(v0 + 384) = qword_10002CEA8;
        sub_100010CAC();
        sub_10000F784(v75, v76);
        sub_100010FF4(&unk_100020608);

        v77 = swift_task_alloc();
        v78 = sub_100011014(v77);
        *v78 = v79;
        sub_100010E3C();
        sub_100011568();

        __asm { BR              X4 }
      }

      v24 = v23 << *(v0 + 488);
      sub_1000117EC();
      if (v26 == v27)
      {
        break;
      }

      v28 = *(v0 + 424);
      sub_1000117E0(v25);
      ++v20;
    }

    v58 = *(v0 + 256);
    v59 = sub_10001155C();
    sub_10000E634(v59, v60);
    v61 = sub_100010EE4();
    sub_10000ED54(v61, v62, v63, v64);
    v16 = 0;
LABEL_13:
    *(v0 + 440) = v16;
    *(v0 + 448) = v20;
    v44 = *(v0 + 264);
    sub_1000107D8(*(v0 + 256), v44, &qword_10002C968, &qword_100020560);
    v45 = sub_10001155C();
    v47 = sub_10000E634(v45, v46);
    v48 = sub_1000110CC();
    sub_100011DE4(v48, v49);
    if (v3)
    {
      v65 = *(v0 + 424);

      if (qword_10002C638 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }

    sub_10000ECF0(*(v0 + 264) + *(v47 + 48), *(v0 + 216));
    if (!*(v44 + 16) || (v50 = *(v0 + 432), v51 = sub_10000F1C0(*(v0 + 216)), (v52 & 1) == 0))
    {
      v53 = *(v0 + 264);
      v55 = *(v0 + 232);
      v54 = *(v0 + 240);
      sub_10000F6F0(*(v0 + 216));
      v56 = sub_100011004();
      v57(v56);
      if (!v16)
      {
        continue;
      }

LABEL_7:
      v22 = *(v0 + 424);
      v30 = *(v0 + 248);
      v29 = *(v0 + 256);
      v32 = *(v0 + 232);
      v31 = *(v0 + 240);
      v33 = *(v0 + 224);
      v103 = v33;
      sub_100010F34();
      v34 = sub_100010D20();
      v35(v34);
      v36 = sub_1000117C8(*(v22 + 56));
      sub_10000EC8C(v36, v33);
      v37 = sub_10000E634(&qword_10002C970, &qword_100020568);
      v38 = *(v37 + 48);
      v39 = sub_100010F48();
      v40(v39);
      sub_10000ECF0(v103, v29 + v38);
      v41 = sub_100010EF4();
      sub_10000ED54(v41, v42, v43, v37);
      goto LABEL_13;
    }

    break;
  }

  v82 = sub_1000111A0(v51);
  v83(v82);
  v84 = sub_100010EF4();
  sub_100011420(v84, v85, v86, v16);
  type metadata accessor for MusicRestrictions();
  v87 = sub_100010FA0();
  sub_10000ED54(v87, v88, v89, v90);

  swift_task_alloc();
  sub_10001104C();
  *(v0 + 480) = v91;
  *v91 = v92;
  sub_100011108(v91);
  sub_100011568();

  return sub_1000055B4();
}

uint64_t sub_10000C0F8()
{
  sub_1000111E4();
  sub_100011384();
  v2 = v1[60];
  v3 = v1[47];
  v4 = v1[39];
  v5 = v1[19];
  v6 = *v0;
  sub_100010E2C();
  *v7 = v6;

  sub_100010734(v5, &qword_10002C9C0, &qword_1000205A8);
  sub_100010734(v4, &qword_10002C9B8, &qword_1000205A0);
  v8 = sub_100011270();

  return _swift_task_switch(v8, v9);
}

uint64_t sub_10000C250()
{
  v118 = v0 + 16;
  if (qword_10002C5F8 != -1)
  {
LABEL_20:
    sub_100010CE4();
    swift_once();
  }

  v1 = *(v0 + 472);
  v112 = *(v0 + 416);
  v114 = *(v0 + 456);
  v109 = *(v0 + 408);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v126 = *(v0 + 240);
  v127 = *(v0 + 232);
  v128 = *(v0 + 264);
  v125 = *(v0 + 216);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v107 = *(v0 + 176);
  v6 = *(v0 + 160);
  v116 = *(v0 + 144);
  v122 = *(v0 + 192);
  v123 = *(v0 + 136);
  v124 = *(v0 + 128);
  v119 = *(v0 + 120);
  v120 = *(v0 + 104);
  v121 = *(v0 + 112);
  (*(v0 + 464))(*(v0 + 296), *(v0 + 304), *(v0 + 272));
  v7 = *(v5 + 16);
  v8 = sub_1000119BC();
  v9(v8);
  sub_10001139C();
  v10 = swift_allocObject();
  v11 = sub_100011720(v10);
  v13 = v12(v11);
  v21 = sub_100011630(v13, v14, v15, v16, v17, v18, v19, v20, v105, v107, v109, v0 + 32, v112, v114);
  v23 = v22(v21);
  sub_1000112F8(v23, v24, v25, v26, v27, v28, v29, v30, v106, v108, v110, v111, v113, v115, v116, v118);
  sub_10001136C(COERCE_DOUBLE(1107296256));
  *(v0 + 32) = v31;
  *(v0 + 40) = &unk_100028E50;
  v33 = _Block_copy(v32);

  static DispatchQoS.unspecified.getter();
  *(v0 + 88) = &_swiftEmptyArrayStorage;
  sub_100010D58();
  sub_10000F784(v34, v35);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  sub_10001069C(&qword_10002CA00, &qword_10002C9F8, &qword_1000205D0);
  sub_100011764();
  sub_100011B34();
  _Block_release(v33);

  v36 = sub_100011280();
  v37(v36);
  (*(v123 + 8))(v117, v124);
  (*(v5 + 8))(v122, v6);
  sub_10000F6F0(v125);
  v38 = *(v0 + 56);

  (*(v126 + 8))(v128, v127);
  v39 = *(v0 + 440);
  v40 = *(v0 + 448);
  if (!v39)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v41 = *(v0 + 424);
    v48 = *(v0 + 248);
    v47 = *(v0 + 256);
    v50 = *(v0 + 232);
    v49 = *(v0 + 240);
    v51 = *(v0 + 224);
    v129 = v51;
    sub_100010F34();
    v52 = sub_100010D20();
    v53(v52);
    v54 = sub_1000117C8(*(v41 + 56));
    sub_10000EC8C(v54, v51);
    v55 = sub_10000E634(&qword_10002C970, &qword_100020568);
    v56 = *(v55 + 48);
    v57 = sub_100010F48();
    v58(v57);
    sub_10000ECF0(v129, v47 + v56);
    v59 = sub_100010EF4();
    sub_10000ED54(v59, v60, v61, v55);
LABEL_8:
    *(v0 + 440) = v39;
    *(v0 + 448) = v40;
    v62 = *(v0 + 264);
    sub_1000107D8(*(v0 + 256), v62, &qword_10002C968, &qword_100020560);
    v63 = sub_100011550();
    v65 = sub_10000E634(v63, v64);
    sub_100010FC8(v62);
    if (v66)
    {
      v83 = *(v0 + 424);
      v84 = *(v0 + 432);

      (*(*(v0 + 280) + 8))(*(v0 + 304), *(v0 + 272));
      *(v0 + 384) = qword_10002CEA8;
      sub_100010CAC();
      sub_10000F784(v85, v86);
      sub_100010FF4(&unk_100020608);

      v87 = swift_task_alloc();
      v88 = sub_100011014(v87);
      *v88 = v89;
      sub_100010E3C();
      sub_10001193C();

      __asm { BR              X4 }
    }

    v67 = *(v0 + 432);
    sub_10000ECF0(*(v0 + 264) + *(v65 + 48), *(v0 + 216));
    if (*(v67 + 16))
    {
      v68 = *(v0 + 432);
      v69 = sub_10000F1C0(*(v0 + 216));
      if (v70)
      {
        break;
      }
    }

    v71 = *(v0 + 264);
    v73 = *(v0 + 232);
    v72 = *(v0 + 240);
    sub_10000F6F0(*(v0 + 216));
    v74 = sub_100011004();
    v75(v74);
    if (!v39)
    {
LABEL_4:
      while (!__OFADD__(v40, 1))
      {
        v42 = 1 << *(v0 + 488);
        sub_1000117EC();
        if (v44 == v45)
        {
          v76 = *(v0 + 256);
          v77 = sub_100011550();
          sub_10000E634(v77, v78);
          v79 = sub_100010EE4();
          sub_10000ED54(v79, v80, v81, v82);
          v39 = 0;
          goto LABEL_8;
        }

        v46 = *(v0 + 424);
        sub_1000117E0(v43);
        ++v40;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  v92 = sub_1000111A0(v69);
  v93(v92);
  v94 = sub_100010EF4();
  sub_100011420(v94, v95, v96, v39);
  type metadata accessor for MusicRestrictions();
  v97 = sub_100010FA0();
  sub_10000ED54(v97, v98, v99, v100);

  swift_task_alloc();
  sub_10001104C();
  *(v0 + 480) = v101;
  *v101 = v102;
  sub_100011108();
  sub_10001193C();

  return sub_1000055B4();
}

void sub_10000C7A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSubscription();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F74C(v9, qword_10002CEB0);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    sub_10000F784(&qword_10002CA20, &type metadata accessor for MusicSubscription);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_100013F98(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "responding to subscription change notification with new subscription: %{public}s.", v13, 0xCu);
    sub_10000F7CC(v14);

    a2 = v20;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if (*(a2 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session))
  {
    type metadata accessor for MusicDaemon.Response();
    sub_10000F784(&qword_10002CA08, &type metadata accessor for MusicDaemon.Response);

    dispatch thunk of XPCSession.send<A>(_:)();
  }
}

uint64_t sub_10000CAB8()
{
  v1 = v0;
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000114C4(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_1000113CC(v4))
  {
    sub_1000110C0();
    v5 = swift_slowAlloc();
    sub_1000119EC(v5);
    sub_1000112B0(&_mh_execute_header, v6, v7, "resetting subscription change notification task.");
    sub_100010FBC();
  }

  if (*(v1 + 56))
  {
    v8 = *(v1 + 56);

    Task.cancel()();

    v9 = *(v1 + 56);
  }

  *(v1 + 56) = 0;
}

uint64_t sub_10000CBB4()
{
  v3 = sub_10000E634(&qword_10002CA18, &qword_1000205D8);
  sub_100010FE8(v3);
  v5 = *(v4 + 64);
  sub_1000113E8();
  __chkstk_darwin(v6);
  sub_10001189C();
  type metadata accessor for TaskPriority();
  sub_100010FB0();
  sub_10000ED54(v7, v8, v9, v10);
  sub_1000119F8();
  swift_allocObject();
  swift_weakInit();
  v11 = qword_10002C630;

  if (v11 != -1)
  {
    sub_100010CC4();
  }

  sub_100010CAC();
  sub_10000F784(v12, v13);
  sub_100011BA8();
  v14 = swift_allocObject();
  sub_100011D6C(v14);

  v15 = sub_1000114E8();
  v18 = sub_1000039D8(v15, v16, v0, v17, v2);
  v19 = *(v1 + 64);
  *(v1 + 64) = v18;
}

uint64_t sub_10000CCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v5 = qword_10002CEA8;
  *(v4 + 48) = qword_10002CEA8;

  return _swift_task_switch(sub_10000CDA8, v5);
}

uint64_t sub_10000CDA8()
{
  sub_1000110FC();
  sub_1000110D8();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_10000B4A0;

    return sub_10000CE7C();
  }

  else
  {
    v4 = v0[6];

    sub_1000112D0();

    return v5();
  }
}

uint64_t sub_10000CE7C()
{
  sub_1000110FC();
  v1[11] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[12] = v2;
  sub_100010D70(v2);
  v1[13] = v3;
  v5 = *(v4 + 64);
  v1[14] = sub_1000115D4();
  v6 = type metadata accessor for DispatchQoS();
  v1[15] = v6;
  sub_100010D70(v6);
  v1[16] = v7;
  v9 = *(v8 + 64);
  v1[17] = sub_1000115D4();
  v10 = sub_10000E634(&qword_10002C9B8, &qword_1000205A0);
  sub_100010FE8(v10);
  v12 = *(v11 + 64);
  v1[18] = sub_1000115D4();
  v13 = type metadata accessor for MusicDaemon.Response();
  v1[19] = v13;
  sub_100010D70(v13);
  v1[20] = v14;
  v1[21] = *(v15 + 64);
  v1[22] = sub_1000115EC();
  v1[23] = swift_task_alloc();
  v16 = _s14descr100028B61V18ObservationContextVMa();
  v1[24] = v16;
  sub_100010D70(v16);
  v1[25] = v17;
  v19 = *(v18 + 64);
  v1[26] = sub_1000115EC();
  v1[27] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v1[28] = v20;
  sub_100010D70(v20);
  v1[29] = v21;
  v23 = *(v22 + 64);
  v1[30] = sub_1000115D4();
  v24 = sub_10000E634(&qword_10002C968, &qword_100020560);
  sub_100010FE8(v24);
  v26 = *(v25 + 64);
  v1[31] = sub_1000115EC();
  v1[32] = swift_task_alloc();
  v27 = type metadata accessor for MusicRestrictions();
  v1[33] = v27;
  sub_100010D70(v27);
  v1[34] = v28;
  v1[35] = *(v29 + 64);
  v1[36] = sub_1000115EC();
  v1[37] = swift_task_alloc();
  v30 = sub_10000E634(&qword_10002C9C0, &qword_1000205A8);
  sub_100010FE8(v30);
  v32 = *(v31 + 64);
  v1[38] = sub_1000115EC();
  v1[39] = swift_task_alloc();
  v33 = sub_10000E634(&qword_10002C9C8, &qword_1000205B0);
  v1[40] = v33;
  sub_100010D70(v33);
  v1[41] = v34;
  v36 = *(v35 + 64);
  v1[42] = sub_1000115D4();
  v37 = sub_10000E634(&qword_10002C9D0, &qword_1000205B8);
  v1[43] = v37;
  sub_100010D70(v37);
  v1[44] = v38;
  v40 = *(v39 + 64);
  v1[45] = sub_1000115D4();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4();
  }

  v1[46] = qword_10002CEA8;
  sub_100011B58();
  v41 = sub_1000112A0();

  return _swift_task_switch(v41, v42);
}

uint64_t sub_10000D24C()
{
  sub_1000111E4();
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  static MusicRestrictions.updates.getter();
  AsyncStream.makeAsyncIterator()();
  v5 = *(v3 + 8);
  v6 = sub_1000114DC();
  v7(v6);
  v8 = qword_10002CEA8;
  v0[47] = 0;
  v0[48] = v8;
  sub_100010CAC();
  sub_10000F784(v9, v10);
  v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];

  v12 = swift_task_alloc();
  v13 = sub_100011014(v12);
  *v13 = v14;
  v15 = sub_100010E74(v13);

  return AsyncStream.Iterator.next(isolation:)(v15);
}

uint64_t sub_10000D338()
{
  sub_1000110FC();
  sub_100011384();
  v2 = v1[49];
  v3 = v1[48];
  v4 = v1[46];
  v5 = *v0;
  sub_100010E2C();
  *v6 = v5;

  return _swift_task_switch(sub_10000D454, v4);
}

uint64_t sub_10000D454()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 264);
  sub_100010FC8(v1);
  if (v3)
  {
    v4 = *(v0 + 368);
    v5 = *(v0 + 336);
    v6 = *(v0 + 296);
    v7 = *(v0 + 304);
    v8 = *(v0 + 288);
    v10 = *(v0 + 248);
    v9 = *(v0 + 256);
    v93 = *(v0 + 240);
    v94 = *(v0 + 216);
    v95 = *(v0 + 208);
    v96 = *(v0 + 184);
    v97 = *(v0 + 176);
    v98 = *(v0 + 144);
    v99 = *(v0 + 136);
    v100 = *(v0 + 112);
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));

    sub_1000112D0();
    sub_100011568();

    __asm { BRAA            X1, X16 }
  }

  v13 = *(v0 + 376);
  v14 = *(v0 + 296);
  v15 = *(v0 + 272);
  v16 = *(v0 + 88);
  v17 = *(v15 + 32);
  *(v0 + 400) = v17;
  *(v0 + 408) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v14, v1, v2);
  v18 = *(v16 + 16);
  sub_10000E634(&qword_10002C9E0, &qword_1000205C0);
  UnfairLock.locked<A>(_:)();
  v19 = *(v0 + 64);
  *(v0 + 416) = v19;
  sub_10000E634(&qword_10002C9E8, &qword_1000205C8);
  sub_100011A88();
  v20 = 0;
  v21 = *(v0 + 72);
  *(v0 + 424) = v13;
  *(v0 + 432) = v21;
  LOBYTE(v21) = *(v19 + 32);
  *(v0 + 488) = v21;
  sub_100010F7C(v21);
  if (v16)
  {
    while (1)
    {
      v22 = *(v0 + 416);
      v30 = *(v0 + 240);
      v29 = *(v0 + 248);
      v31 = *(v0 + 224);
      v13 = *(v0 + 232);
      v32 = *(v0 + 216);
      v101 = v32;
      sub_100010F34();
      v33 = sub_100010D20();
      v34(v33);
      v35 = sub_1000117C8(*(v22 + 56));
      sub_10000EC8C(v35, v32);
      v36 = sub_10000E634(&qword_10002C970, &qword_100020568);
      v37 = *(v36 + 48);
      v38 = sub_100010F48();
      v39(v38);
      sub_10000ECF0(v101, v29 + v37);
      v40 = sub_100010EF4();
      sub_10000ED54(v40, v41, v42, v36);
LABEL_13:
      *(v0 + 440) = v16;
      *(v0 + 448) = v20;
      v43 = *(v0 + 256);
      sub_1000107D8(*(v0 + 248), v43, &qword_10002C968, &qword_100020560);
      v44 = sub_10001155C();
      sub_10000E634(v44, v45);
      v46 = sub_1000110CC();
      sub_100011DE4(v46, v47);
      if (v3)
      {
        break;
      }

      sub_100011C8C();
      if (*(v43 + 16))
      {
        v48 = *(v0 + 432);
        v49 = sub_10000F1C0(*(v0 + 208));
        if (v50)
        {
          sub_1000114F8(v49);
          sub_100010FB0();
          sub_10000ED54(v80, v81, v82, v83);
          v84 = sub_100011604();
          v85(v84);
          v86 = sub_100010EF4();
          sub_10000ED54(v86, v87, v88, v13);

          swift_task_alloc();
          sub_10001104C();
          *(v0 + 480) = v89;
          *v89 = v90;
          sub_10001113C(v89);
          sub_100011568();

          return sub_1000055B4();
        }
      }

      v51 = *(v0 + 256);
      v52 = *(v0 + 224);
      v13 = *(v0 + 232);
      sub_10000F6F0(*(v0 + 208));
      v53 = sub_100011004();
      v54(v53);
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v62 = *(v0 + 416);

    if (qword_10002C638 != -1)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_8:
    v23 = 1;
    while (!__OFADD__(v20, 1))
    {
      v24 = v23 << *(v0 + 488);
      sub_1000117EC();
      if (v26 == v27)
      {
        v55 = *(v0 + 248);
        v56 = sub_10001155C();
        sub_10000E634(v56, v57);
        v58 = sub_100010EE4();
        sub_10000ED54(v58, v59, v60, v61);
        v16 = 0;
        goto LABEL_13;
      }

      v28 = *(v0 + 416);
      sub_1000117E0(v25);
      ++v20;
    }

    __break(1u);
LABEL_28:
    sub_100010C98();
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_1000114C4(v63, qword_10002CEB0);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (sub_1000112DC(v65))
  {
    sub_1000110C0();
    v66 = swift_slowAlloc();
    sub_100011690(v66);
    sub_100010F6C();
    _os_log_impl(v67, v68, v69, v70, v71, 2u);
    sub_100010FBC();
  }

  (*(*(v0 + 272) + 8))(*(v0 + 296), *(v0 + 264));
  v72 = qword_10002CEA8;
  *(v0 + 376) = *(v0 + 424);
  *(v0 + 384) = v72;
  sub_100010CAC();
  sub_10000F784(v73, v74);
  v75 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];

  v76 = swift_task_alloc();
  v77 = sub_100011014(v76);
  *v77 = v78;
  sub_100010E74();
  sub_100011568();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_10000D9AC()
{
  sub_1000111E4();
  sub_100011384();
  v2 = v1[60];
  v3 = v1[46];
  v4 = v1[38];
  v5 = v1[18];
  v6 = *v0;
  sub_100010E2C();
  *v7 = v6;

  sub_100010734(v4, &qword_10002C9C0, &qword_1000205A8);
  sub_100010734(v5, &qword_10002C9B8, &qword_1000205A0);
  v8 = sub_100011270();

  return _swift_task_switch(v8, v9);
}

uint64_t sub_10000DB04()
{
  v117 = v0 + 16;
  if (qword_10002C5F8 != -1)
  {
LABEL_20:
    sub_100010CE4();
    swift_once();
  }

  v1 = *(v0 + 472);
  v111 = *(v0 + 408);
  v113 = *(v0 + 456);
  v108 = *(v0 + 400);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v125 = *(v0 + 232);
  v126 = *(v0 + 224);
  v127 = *(v0 + 256);
  v124 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v106 = *(v0 + 168);
  v6 = *(v0 + 152);
  v115 = *(v0 + 136);
  v121 = *(v0 + 184);
  v122 = *(v0 + 128);
  v123 = *(v0 + 120);
  v118 = *(v0 + 112);
  v119 = *(v0 + 96);
  v120 = *(v0 + 104);
  (*(v0 + 464))(*(v0 + 288), *(v0 + 296), *(v0 + 264));
  v7 = *(v5 + 16);
  v8 = sub_1000119BC();
  v9(v8);
  sub_10001139C();
  v10 = swift_allocObject();
  v11 = sub_100011720(v10);
  v13 = v12(v11);
  v21 = sub_100011630(v13, v14, v15, v16, v17, v18, v19, v20, v104, v106, v108, v0 + 32, v111, v113);
  v23 = v22(v21);
  sub_1000112F8(v23, v24, v25, v26, v27, v28, v29, v30, v105, v107, v109, v110, v112, v114, v115, v117);
  sub_10001136C(COERCE_DOUBLE(1107296256));
  *(v0 + 32) = v31;
  *(v0 + 40) = &unk_100028D60;
  v33 = _Block_copy(v32);

  v34 = v116;
  static DispatchQoS.unspecified.getter();
  *(v0 + 80) = &_swiftEmptyArrayStorage;
  sub_100010D58();
  sub_10000F784(v35, v36);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  sub_10001069C(&qword_10002CA00, &qword_10002C9F8, &qword_1000205D0);
  sub_100011764();
  sub_100011B34();
  _Block_release(v33);

  v37 = sub_100011280();
  v38(v37);
  (*(v122 + 8))(v116, v123);
  (*(v5 + 8))(v121, v6);
  sub_10000F6F0(v124);
  v39 = *(v0 + 56);

  (*(v125 + 8))(v127, v126);
  v40 = *(v0 + 440);
  v41 = *(v0 + 448);
  if (!v40)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v42 = *(v0 + 416);
    v49 = *(v0 + 240);
    v48 = *(v0 + 248);
    v50 = *(v0 + 224);
    v34 = *(v0 + 232);
    v51 = *(v0 + 216);
    v128 = v51;
    sub_100010F34();
    v52 = sub_100010D20();
    v53(v52);
    v54 = sub_1000117C8(*(v42 + 56));
    sub_10000EC8C(v54, v51);
    v55 = sub_10000E634(&qword_10002C970, &qword_100020568);
    v56 = *(v55 + 48);
    v57 = sub_100010F48();
    v58(v57);
    sub_10000ECF0(v128, v48 + v56);
    v59 = sub_100010EF4();
    sub_10000ED54(v59, v60, v61, v55);
LABEL_8:
    *(v0 + 440) = v40;
    *(v0 + 448) = v41;
    v62 = *(v0 + 256);
    sub_1000107D8(*(v0 + 248), v62, &qword_10002C968, &qword_100020560);
    v63 = sub_100011550();
    sub_10000E634(v63, v64);
    v65 = sub_1000110CC();
    sub_100011DE4(v65, v66);
    if (v67)
    {
      break;
    }

    sub_100011C8C();
    if (*(v62 + 16))
    {
      v68 = *(v0 + 432);
      v69 = sub_10000F1C0(*(v0 + 208));
      if (v70)
      {
        sub_1000114F8(v69);
        sub_100010FB0();
        sub_10000ED54(v91, v92, v93, v94);
        v95 = sub_100011604();
        v96(v95);
        v97 = sub_100010EF4();
        sub_10000ED54(v97, v98, v99, v34);

        swift_task_alloc();
        sub_10001104C();
        *(v0 + 480) = v100;
        *v100 = v101;
        sub_10001113C();
        sub_10001193C();

        return sub_1000055B4();
      }
    }

    v71 = *(v0 + 256);
    v72 = *(v0 + 224);
    v34 = *(v0 + 232);
    sub_10000F6F0(*(v0 + 208));
    v73 = sub_100011004();
    v74(v73);
    if (!v40)
    {
LABEL_4:
      while (!__OFADD__(v41, 1))
      {
        v43 = 1 << *(v0 + 488);
        sub_1000117EC();
        if (v45 == v46)
        {
          v75 = *(v0 + 248);
          v76 = sub_100011550();
          sub_10000E634(v76, v77);
          v78 = sub_100010EE4();
          sub_10000ED54(v78, v79, v80, v81);
          v40 = 0;
          goto LABEL_8;
        }

        v47 = *(v0 + 416);
        sub_1000117E0(v44);
        ++v41;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  v82 = *(v0 + 416);

  (*(*(v0 + 272) + 8))(*(v0 + 296), *(v0 + 264));
  v83 = qword_10002CEA8;
  *(v0 + 376) = *(v0 + 424);
  *(v0 + 384) = v83;
  sub_100010CAC();
  sub_10000F784(v84, v85);
  v86 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];

  v87 = swift_task_alloc();
  v88 = sub_100011014(v87);
  *v88 = v89;
  sub_100010E74();
  sub_10001193C();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_10000E048@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 80);
}

uint64_t sub_10000E0A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 72);
}

void sub_10000E100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicRestrictions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F74C(v9, qword_10002CEB0);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    sub_10000F784(&qword_10002CA10, &type metadata accessor for MusicRestrictions);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_100013F98(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "responding to restrictions change notification with new restrictions: %{public}s.", v13, 0xCu);
    sub_10000F7CC(v14);

    a2 = v20;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if (*(a2 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session))
  {
    type metadata accessor for MusicDaemon.Response();
    sub_10000F784(&qword_10002CA08, &type metadata accessor for MusicDaemon.Response);

    dispatch thunk of XPCSession.send<A>(_:)();
  }
}

uint64_t sub_10000E410()
{
  v1 = v0;
  if (qword_10002C638 != -1)
  {
    sub_100010C98();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000114C4(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_1000113CC(v4))
  {
    sub_1000110C0();
    v5 = swift_slowAlloc();
    sub_1000119EC(v5);
    sub_1000112B0(&_mh_execute_header, v6, v7, "resetting restrictions change notification task.");
    sub_100010FBC();
  }

  if (*(v1 + 64))
  {
    v8 = *(v1 + 64);

    Task.cancel()();

    v9 = *(v1 + 64);
  }

  *(v1 + 64) = 0;
}

void sub_10000E524(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_id;
  swift_beginAccess();

  v5 = *(a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 72);
  sub_10000F9FC(a2, a2 + v4, isUniquelyReferenced_nonNull_native);
  *(a1 + 72) = v7;
  swift_endAccess();
  sub_100001B68();
}

uint64_t sub_10000E634(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000E67C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10000E6C4(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_10000E634(&qword_10002C960, &qword_100020558);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v52 = &v51[-v5];
  v6 = _s14descr100028B61V18ObservationContextVMa();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  __chkstk_darwin(v6 - 8);
  v55 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = type metadata accessor for UUID();
  v9 = *(v69 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v69);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v66 = &v51[-v14];
  v15 = sub_10000E634(&qword_10002C968, &qword_100020560);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v62 = &v51[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v51[-v19];
  swift_beginAccess();
  v53 = a1;
  v21 = *(a1 + 80);
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v60 = OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_id;
  v26 = (v23 + 63) >> 6;
  v64 = (v9 + 32);
  v65 = (v9 + 16);
  v54 = v9;
  v68 = (v9 + 8);
  v57 = v21;

  v27 = 0;
  v67 = v13;
  v63 = v20;
  v58 = v26;
  v59 = v22;
  if (v25)
  {
    while (1)
    {
      v28 = v27;
LABEL_10:
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v31 = v30 | (v28 << 6);
      v32 = v57;
      v33 = v54;
      v34 = v66;
      v35 = v69;
      (*(v54 + 16))(v66, *(v57 + 48) + *(v54 + 72) * v31, v69);
      v36 = *(v32 + 56);
      v37 = v55;
      sub_10000EC8C(v36 + *(v56 + 72) * v31, v55);
      v38 = sub_10000E634(&qword_10002C970, &qword_100020568);
      v39 = *(v38 + 48);
      v40 = *(v33 + 32);
      v41 = v62;
      v40(v62, v34, v35);
      v42 = v37;
      v29 = v41;
      sub_10000ECF0(v42, v41 + v39);
      sub_10000ED54(v41, 0, 1, v38);
      v13 = v67;
      v20 = v63;
LABEL_11:
      sub_1000107D8(v29, v20, &qword_10002C968, &qword_100020560);
      v43 = sub_10000E634(&qword_10002C970, &qword_100020568);
      if (sub_10000ED7C(v20, 1, v43) == 1)
      {
        break;
      }

      v44 = *(v43 + 48);
      v45 = v69;
      (*v64)(v13, v20, v69);
      v46 = v66;
      (*v65)(v66, &v20[v44], v45);
      sub_10000F6F0(&v20[v44]);
      LOBYTE(v44) = static UUID.== infix(_:_:)();
      v47 = *v68;
      (*v68)(v46, v45);
      if (v44)
      {
        swift_beginAccess();
        v48 = v52;
        sub_10000F414(v67, v52);
        v49 = v48;
        v20 = v63;
        sub_100010734(v49, &qword_10002C960, &qword_100020558);
        swift_endAccess();
        v13 = v67;
        sub_100002674();
      }

      v47(v13, v69);
      v26 = v58;
      v22 = v59;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    swift_beginAccess();
    sub_10000F5B0(v61 + v60);
    swift_endAccess();

    sub_100001B68();
  }

  else
  {
LABEL_5:
    v29 = v62;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {
        v50 = sub_10000E634(&qword_10002C970, &qword_100020568);
        sub_10000ED54(v29, 1, 1, v50);
        v25 = 0;
        goto LABEL_11;
      }

      v25 = *(v22 + 8 * v28);
      ++v27;
      if (v25)
      {
        v27 = v28;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10000EC8C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr100028B61V18ObservationContextVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000ECF0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr100028B61V18ObservationContextVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EDA4()
{
  v1 = type metadata accessor for UnfairLock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = UnfairLock.init()();
  type metadata accessor for UUID();
  _s14descr100028B61V14SessionHandlerCMa();
  sub_10000F784(&qword_10002C978, &type metadata accessor for UUID);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = Dictionary.init(dictionaryLiteral:)();
  _s14descr100028B61V18ObservationContextVMa();
  *(v0 + 80) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

void sub_10000EEA4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10000EF04();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_10000EED8@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

Swift::Int sub_10000EF14(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10000EF94(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_10000EFE4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F0DC;

  return v7(a1);
}

uint64_t sub_10000F0DC()
{
  sub_1000110FC();
  sub_100011384();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100010E2C();
  *v4 = v3;

  sub_1000112D0();

  return v5();
}

unint64_t sub_10000F1C0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10000F784(&qword_10002C978, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000F258(a1, v5);
}

unint64_t sub_10000F258(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_10000F784(&qword_10002C988, &type metadata accessor for UUID);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000F414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10000F1C0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    v11 = *(*v3 + 24);
    sub_10000E634(&qword_10002C980, &qword_100020570);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
    v12 = *(v20 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v20 + 56);
    v15 = _s14descr100028B61V18ObservationContextVMa();
    sub_10000ECF0(v14 + *(*(v15 - 8) + 72) * v8, a2);
    sub_10000F784(&qword_10002C978, &type metadata accessor for UUID);
    _NativeDictionary._delete(at:)();
    *v3 = v20;
    v16 = a2;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v18 = _s14descr100028B61V18ObservationContextVMa();
    v16 = a2;
    v17 = 1;
  }

  return sub_10000ED54(v16, v17, 1, v18);
}

uint64_t sub_10000F5B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10000F1C0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v9 = *(*v2 + 24);
  sub_10000E634(&qword_10002C9B0, &qword_100020598);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(v14 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v14 + 56) + 8 * v6);
  _s14descr100028B61V14SessionHandlerCMa();
  sub_10000F784(&qword_10002C978, &type metadata accessor for UUID);
  _NativeDictionary._delete(at:)();
  *v2 = v14;
  return v12;
}

uint64_t sub_10000F6F0(uint64_t a1)
{
  v2 = _s14descr100028B61V18ObservationContextVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F74C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000F784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F7CC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000F820(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v14 = sub_10000F1C0(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v14;
  v20 = v15;
  sub_10000E634(&qword_10002C980, &qword_100020570);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = *v4;
  v22 = sub_10000F1C0(a2);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *v4;
  if (v20)
  {
    v25 = v24[7];
    v26 = v25 + *(*(_s14descr100028B61V18ObservationContextVMa() - 8) + 72) * v19;

    return sub_10000FC98(a1, v26);
  }

  else
  {
    (*(v9 + 16))(v12, a2, v8);
    return sub_10000FBBC(v19, v12, a1, v24);
  }
}

uint64_t sub_10000F9FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v14 = sub_10000F1C0(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v14;
  v20 = v15;
  sub_10000E634(&qword_10002C9B0, &qword_100020598);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = *v4;
  v22 = sub_10000F1C0(a2);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *v4;
  if (v20)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v19);
    *(v25 + 8 * v19) = a1;
  }

  else
  {
    (*(v9 + 16))(v12, a2, v8);
    return sub_10000FD18(v19, v12, a1, v24);
  }
}

uint64_t sub_10000FBBC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = _s14descr100028B61V18ObservationContextVMa();
  result = sub_10000ECF0(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

uint64_t sub_10000FC98(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr100028B61V18ObservationContextVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FD18(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10000FE14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000FE2C()
{
  swift_weakDestroy();
  sub_1000119F8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000FE64()
{
  sub_1000111E4();
  sub_10001187C();
  swift_task_alloc();
  sub_10001104C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100011024(v1);

  return sub_10000CCFC(v3, v4, v5, v6);
}

uint64_t sub_10000FEF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FF2C()
{
  sub_1000111E4();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_10001104C();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_100011670(v4);

  return v7(v6);
}

uint64_t sub_10000FFC4()
{
  sub_1000111E4();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_10001104C();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_100011670(v4);

  return v7(v6);
}

uint64_t sub_10001005C()
{
  sub_1000110FC();
  sub_100011384();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100010E2C();
  *v4 = v3;

  sub_1000112D0();

  return v5();
}

uint64_t sub_100010154()
{
  sub_100011844();
  v2 = v1(0);
  sub_100010D0C(v2);
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for MusicDaemon.Response();
  sub_100010D0C(v8);
  v10 = v9;
  v11 = (v7 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  (*(v4 + 8))(v0 + v5, v2);
  v14 = *(v0 + v7);

  (*(v10 + 8))(v0 + v11, v8);
  sub_10001182C();

  return _swift_deallocObject(v15, v16, v17);
}

uint64_t sub_1000102BC(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v3 = a1(0);
  sub_100010D70(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for MusicDaemon.Response();
  sub_100010FE8(v8);
  v10 = *(v2 + v7);
  v11 = v2 + ((v7 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return a2(v2 + v5, v10, v11);
}

uint64_t sub_1000103A8()
{
  sub_1000111E4();
  sub_10001187C();
  swift_task_alloc();
  sub_10001104C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100011024(v1);

  return sub_10000B320(v3, v4, v5, v6);
}

uint64_t sub_100010470()
{
  v1 = type metadata accessor for MusicDaemon.Response();
  sub_100010D0C(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

void sub_100010528()
{
  v1 = type metadata accessor for MusicDaemon.Response();
  sub_100010FE8(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  sub_10000AF40(v4);
}

uint64_t sub_100010588()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_100011BA8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000105C4()
{
  sub_1000111E4();
  sub_10001187C();
  swift_task_alloc();
  sub_10001104C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100011024(v1);

  return sub_100009574(v3, v4, v5, v6);
}

uint64_t sub_10001065C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10001069C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000E67C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010734(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000E634(a2, a3);
  sub_100010D80(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10001078C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100011D4C(a1, a2, a3, a4);
  sub_100010CF8(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1000107D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100011D4C(a1, a2, a3, a4);
  sub_100010CF8(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_100010824()
{
  sub_100011844();
  v1 = type metadata accessor for MusicDaemon.Request.Action();
  sub_100010D0C(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D0C(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  v15 = *(v0 + v12 + 8);

  sub_10001182C();

  return _swift_deallocObject(v16, v17, v18);
}

uint64_t sub_10001096C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for MusicDaemon.Request.Action();
  sub_100010D70(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D70(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[4];
  v17 = (v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = *v17;
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_100010C48;

  return sub_1000030B8(a1, v14, v15, v16, v1 + v7, v1 + v12, v18, v19);
}

uint64_t *sub_100010B0C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_100010B98(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100010CC4()
{

  return swift_once();
}

uint64_t sub_100010D20()
{
  v4 = *(v3 + 48) + *(v0 + 72) * v2;
  v5 = *(v0 + 16);
  return v1;
}

void sub_100010D90()
{
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[27];
  v11 = v0[26];
  v12 = v0[25];
  v13 = v0[22];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[15];
  v19 = v0[14];
  v20 = v0[13];
  v9 = v0[10];
  v21 = v0[7];
  v22 = v0[6];
  *(v1 - 88) = v0[5];
  v10 = v0[2];
}

uint64_t sub_100010E08()
{
  v2 = v0[36];
  result = v0[37];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  v11 = v0[19];
  v13 = v0[15];
  v12 = v0[16];
  return result;
}

uint64_t sub_100010E3C(uint64_t a1)
{
  *(a1 + 8) = sub_10000BA90;
  v2 = *(v1 + 368);
  return *(v1 + 320);
}

uint64_t sub_100010E74(uint64_t a1)
{
  *(a1 + 8) = sub_10000D338;
  v2 = v1[45];
  v3 = v1[43];
  return v1[39];
}

uint64_t sub_100010EAC(uint64_t a1)
{
  *(a1 + 8) = sub_100009CFC;
  v2 = *(v1 + 304);
  return *(v1 + 280);
}

uint64_t sub_100010F04(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v2 + 32);
  return v1;
}

void sub_100010F1C()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
}

void sub_100010F7C(char a1@<W8>)
{
  v2 = 1 << a1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(v1 + 64);
}

uint64_t sub_100011064()
{
  v22 = v0[43];
  v23 = v0[44];
  v2 = v0[37];
  v18 = v0[40];
  v3 = v0[34];
  v4 = v0[35];
  v15 = v0[33];
  v5 = v0[31];
  *(v1 - 80) = v0[30];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[23];
  v17 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  result = v0[19];
  v16 = v0[27];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[8];
  v19 = v0[7];
  v14 = *(v0[18] + 16);
  return result;
}

uint64_t sub_1000110D8()
{
  v2 = *(v0 + 40);

  return swift_beginAccess();
}

uint64_t sub_100011108(uint64_t a1)
{
  *(a1 + 8) = sub_10000C0F8;
  v2 = v1[39];
  result = v1[24];
  v4 = v1[19];
  return result;
}

uint64_t sub_10001113C(uint64_t a1)
{
  *(a1 + 8) = sub_10000D9AC;
  v2 = v1[38];
  result = v1[23];
  v4 = v1[18];
  return result;
}

uint64_t sub_100011170(uint64_t a1)
{
  *(a1 + 8) = sub_10000A328;
  result = v1[25];
  v4 = v1[19];
  v3 = v1[20];
  return result;
}

uint64_t sub_1000111A0(uint64_t a1)
{
  v2 = v1[38];
  v3 = v1[39];
  v5 = v1[34];
  v4 = v1[35];
  v6 = v1[27];
  v7 = v1[25];
  v8 = v1[19];
  v1[57] = *(*(v1[54] + 56) + 8 * a1);
  v9 = *(v7 + 20);
  v1[58] = *(v4 + 16);
  v1[59] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v3;
}

uint64_t sub_1000111F0()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[28];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v13 = v0[25];
  v14 = v0[20];
  v8 = v0[16];
  v7 = v0[17];
  v15 = v0[11];
  v16 = v0[14];
  v10 = v0[7];
  v9 = v0[8];
  v11 = *(v0[18] + 16);
  return v0[19];
}

void sub_100011230()
{
  v5 = v0[22];
  v6 = v0[21];
  v7 = v0[20];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[15];
  v11 = v0[14];
  v12 = v0[13];
  v2 = v0[10];
  v13 = v0[7];
  v3 = v0[5];
  *(v1 - 88) = v0[6];
  *(v1 - 80) = v3;
  v4 = v0[2];
}

void sub_1000112B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1000112D0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

BOOL sub_1000112DC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000112F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17[6] = v16;
  v17[7] = v18;
  result = a16;
  v17[2] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10001131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = v9[34];
  v21 = v9[30];
  v11 = v9[28];
  v12 = v9[23];
  v22 = v9[25];
  v23 = v9[22];
  v24 = v9[21];
  v25 = v9[20];
  v14 = v9[18];
  v13 = v9[19];
  v15 = v9[16];
  v16 = v9[17];
  v26 = v9[12];
  v27 = v9[11];
  v17 = v9[7];
  v18 = v9[8];

  return _objc_release_x9(a1, a2, a3, a4, a5, a6, a7, a8, a9, v20);
}

BOOL sub_1000113CC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000113F4()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[11];
  v6 = v0[8];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
  v11 = *(v0[9] + 16);
  return v0[10];
}

uint64_t sub_100011438()
{
  v3 = v0[35];
  v2 = v0[36];
  v10 = v0[25];
  v11 = v0[24];
  v9 = v0[23];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[18];

  return swift_slowAlloc();
}

uint64_t sub_100011474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = a14 + *(a1 + 48);
  v16 = *(a15 + 16);
  return a14;
}

uint64_t sub_1000114F8(uint64_t a1)
{
  v3 = v1[37];
  v4 = v1[38];
  v5 = v1[33];
  v6 = v1[34];
  v7 = v1[26];
  v8 = v1[24];
  v9 = v1[18];
  v1[57] = *(*(v1[54] + 56) + 8 * a1);
  v10 = *(v8 + 20);

  return type metadata accessor for MusicSubscription();
}

uint64_t sub_100011584(uint64_t a1)
{
  v3 = v1[28];
  v4 = v1[26];
  v5 = v1[19];
  v6 = v1[20];
  v1[47] = *(*(v1[44] + 56) + 8 * a1);
  v7 = *(v4 + 20);

  return type metadata accessor for MusicSubscription();
}

uint64_t sub_1000115B8()
{

  return swift_slowAlloc();
}

uint64_t sub_1000115D4()
{

  return swift_task_alloc();
}

uint64_t sub_1000115EC()
{

  return swift_task_alloc();
}

uint64_t sub_100011604()
{
  *(v1 + 464) = *(v2 + 16);
  *(v1 + 472) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v0;
}

uint64_t sub_100011630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v16 + v14) = a14;
  v18 = *(v17 + 32);
  return v16 + v15;
}

void sub_100011650()
{
  v2 = v0[33];
  v3 = v0[30];
  *(v1 - 88) = v0[23];
}

uint64_t sub_100011670(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10001169C()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 80);
  return result;
}

BOOL sub_1000116BC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000116D4()
{
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[25];
  v11 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[19];
  v8 = v0[17];
  v9 = v0[3];

  return type metadata accessor for Logger();
}

uint64_t sub_10001173C(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 + 32);
  return v2;
}

uint64_t sub_100011764()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100011810()
{
  result = v0;
  v3 = *(v1 + 32);
  return result;
}

void sub_10001187C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1000118AC()
{

  return swift_slowAlloc();
}

uint64_t sub_1000118C4()
{

  return MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
}

void sub_1000118EC()
{
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v10 = v0[6];
  v11 = v0[5];
  v9 = v0[4];
}

uint64_t sub_100011914()
{

  return MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
}

void sub_100011A10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100011A28()
{

  return swift_slowAlloc();
}

uint64_t sub_100011A40()
{
  v1[5] = v0;
  v3 = v1[15];
  v4 = v1[11];

  return swift_errorRetain();
}

uint64_t sub_100011A64()
{

  return MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
}

uint64_t sub_100011A88()
{

  return UnfairLock.locked<A>(_:)();
}

uint64_t sub_100011AA4()
{

  return swift_allocError();
}

uint64_t sub_100011AC8()
{

  return MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
}

uint64_t sub_100011AEC()
{

  return swift_dynamicCast();
}

uint64_t sub_100011B10()
{

  return MusicDaemon.Response.Context.init(requestContext:item:subscription:restrictions:)();
}

uint64_t sub_100011B34()
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_100011B58()
{
}

uint64_t sub_100011B70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000107D8(v6, v4 + v5, a3, a4);
}

uint64_t sub_100011C6C()
{
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
}

uint64_t sub_100011C8C()
{
  v3 = *(v0 + 208);
  v4 = *(v0 + 256) + *(v1 + 48);

  return sub_10000ECF0(v4, v3);
}

void sub_100011CAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

void sub_100011CCC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100011CEC()
{

  return swift_allocError();
}

uint64_t sub_100011D0C()
{
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
}

uint64_t sub_100011D2C()
{
  v4 = *(v0 + 112);
  *(v1 - 80) = *(v0 + 104);
}

uint64_t sub_100011D4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10000E634(a3, a4);
}

uint64_t sub_100011D6C(void *a1)
{
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v1;
}

void sub_100011D8C()
{
  v4 = v1[24];
  v3 = v1[25];
  v5 = v1[23];
  v7 = v1[18];
  v6 = v1[19];
  v8 = v1[17];
}

void sub_100011DAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_100011DCC()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return swift_getObjectType();
}

uint64_t sub_100011DE4(uint64_t a1, uint64_t a2)
{
  result = sub_10000ED7C(a1, a2, v3);
  v5 = *(v2 + 432);
  return result;
}

uint64_t sub_100011E04(uint64_t a1)
{
  v2 = v1;
  UUID.init()();
  v4 = OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session;
  *(v1 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session) = 0;
  swift_weakInit();
  v5 = *(v1 + v4);
  *(v2 + v4) = a1;

  swift_weakAssign();
  static MusicDaemon.Item.ensureRequiredTypeValuesLoaded()();
  if (qword_10002C638 != -1)
  {
    sub_100014C08();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F74C(v6, qword_10002CEB0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1000118AC();
    v10 = sub_100014D3C();
    v15 = v10;
    *v9 = 136315138;
    type metadata accessor for XPCSession();

    v11 = String.init<A>(describing:)();
    v13 = sub_100013F98(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "session %s init.", v9, 0xCu);
    sub_10000F7CC(v10);
    sub_100014CDC();
    sub_100014CDC();
  }

  sub_10000E50C();

  return v2;
}

uint64_t sub_100011FD0()
{
  v1 = v0;
  if (qword_10002C638 != -1)
  {
    sub_100014C08();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F74C(v2, qword_10002CEB0);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100014D30();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_1000112B0(&_mh_execute_header, v5, v6, "session deinit.");
    sub_100014C80();
  }

  v7 = OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_id;
  v8 = type metadata accessor for UUID();
  sub_100010D80(v8);
  (*(v9 + 8))(v1 + v7);
  v10 = *(v1 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session);

  swift_weakDestroy();
  return v1;
}

uint64_t sub_1000120D8()
{
  sub_100011FD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s14descr100028B61V14SessionHandlerCMa()
{
  result = qword_10002CBA8;
  if (!qword_10002CBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012184()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100012228()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_100010D0C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100010F5C();
  v10 = (v9 - v8);
  if (qword_10002C5F8 != -1)
  {
    sub_100014C4C();
  }

  v11 = qword_10002CE88;
  *v10 = qword_10002CE88;
  (*(v5 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v2);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v10, v2);
  if (v11)
  {
    if (qword_10002C638 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100014C08();
LABEL_5:
  v13 = type metadata accessor for Logger();
  sub_10000F74C(v13, qword_10002CEB0);
  v14 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100014D30();
  if (os_log_type_enabled(v14, v15))
  {
    *swift_slowAlloc() = 0;
    sub_1000112B0(&_mh_execute_header, v16, v17, "xpc - handle cancellation.");
    sub_100014C80();
  }

  if (swift_weakLoadStrong())
  {
    sub_10000E5C4();
  }

  v18 = *(v1 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session);
  *(v1 + OBJC_IVAR____TtCCE6musicdV16MusicKitInternal11MusicDaemon6Server14SessionHandler_session) = 0;
}

double sub_100012404@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v237 = a1;
  v221 = type metadata accessor for XPCReceivedMessage();
  v3 = sub_100010D0C(v221);
  v220 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v218 = v7;
  v219 = &v206 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014D80();
  v8 = type metadata accessor for MusicDaemon.Request.Context();
  v229 = sub_100010D0C(v8);
  v230 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v229);
  sub_100014C3C(&v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  sub_100014CD0();
  sub_100014C3C(v13);
  __chkstk_darwin(v14);
  sub_100014CD0();
  sub_100014C3C(v15);
  __chkstk_darwin(v16);
  sub_100014CD0();
  sub_100014C3C(v17);
  __chkstk_darwin(v18);
  sub_100014CD0();
  sub_100014C3C(v19);
  __chkstk_darwin(v20);
  sub_100014CD0();
  v228 = v21;
  sub_100014D80();
  v22 = type metadata accessor for MusicDaemon.Request.Action();
  v23 = sub_100010D0C(v22);
  v224 = v24;
  v225 = v23;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v23);
  v234 = &v206 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  sub_100014CD0();
  v214 = v29;
  v217 = v30;
  __chkstk_darwin(v31);
  sub_100014CD0();
  v227 = v32;
  sub_100014D80();
  v33 = type metadata accessor for MusicDaemon.Request();
  v34 = sub_100010D0C(v33);
  v235 = v35;
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v34);
  v212 = &v206 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v226 = &v206 - v41;
  v42 = __chkstk_darwin(v40);
  v222 = &v206 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v206 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v206 - v48;
  __chkstk_darwin(v47);
  v51 = &v206 - v50;
  v52 = type metadata accessor for MusicDaemon.Response();
  v53 = sub_100010D0C(v52);
  v232 = v54;
  v233 = v53;
  v56 = *(v55 + 64);
  __chkstk_darwin(v53);
  sub_100010F5C();
  v231 = (v58 - v57);
  sub_100014D80();
  v59 = type metadata accessor for DispatchPredicate();
  v60 = sub_100010D0C(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  __chkstk_darwin(v60);
  sub_100010F5C();
  v67 = (v66 - v65);
  if (qword_10002C5F8 != -1)
  {
    sub_100014C4C();
  }

  v68 = qword_10002CE88;
  *v67 = qword_10002CE88;
  (*(v62 + 104))(v67, enum case for DispatchPredicate.onQueue(_:), v59);
  v215 = v68;
  LOBYTE(v68) = _dispatchPreconditionTest(_:)();
  (*(v62 + 8))(v67, v59);
  if (v68)
  {
    if (qword_10002C638 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100014C08();
LABEL_5:
  v69 = type metadata accessor for Logger();
  v236 = sub_10000F74C(v69, qword_10002CEB0);
  v70 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100014D30();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v67, "xpc - handle incoming request with session.", v72, 2u);
    sub_100014C80();
  }

  sub_100014AE4(&qword_10002CC80, &type metadata accessor for MusicDaemon.Request);
  XPCReceivedMessage.decode<A>(as:)();
  v73 = v235;
  v74 = v49;
  v75 = v235;
  (*(v235 + 32))(v51, v74, v33);
  v211 = *(v73 + 16);
  v211(v46, v51, v33);
  v76 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100014D30();
  v78 = os_log_type_enabled(v76, v77);
  v209 = a2;
  v210 = v51;
  if (v78)
  {
    v79 = sub_1000118AC();
    v207 = sub_100014D3C();
    v238 = v207;
    *v79 = 136446210;
    v211(v222, v46, v33);
    v80 = String.init<A>(describing:)();
    v81 = v33;
    v83 = v82;
    v208 = *(v235 + 8);
    v208(v46, v81);
    v84 = sub_100013F98(v80, v83, &v238);
    v33 = v81;
    v51 = v210;

    *(v79 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "message decoded to request: %{public}s.", v79, 0xCu);
    sub_10000F7CC(v207);
    sub_100014CDC();
    v75 = v235;
    sub_100014CDC();
  }

  else
  {

    v208 = *(v75 + 8);
    v208(v46, v33);
  }

  v85 = v230;
  v86 = v226;
  v87 = v211;
  v211(v226, v51, v33);
  v88 = (*(v75 + 88))(v86, v33);
  v89 = v234;
  if (v88 == enum case for MusicDaemon.Request.perform(_:))
  {
    v90 = sub_100014C6C();
    v91(v90);
    v92 = *(sub_10000E634(&qword_10002CC88, &qword_100020830) + 48);
    v93 = v224;
    v94 = v225;
    v95 = *(v224 + 32);
    v96 = v227;
    v233 = v224 + 32;
    v231 = v95;
    (v95)(v227, v86, v225);
    v97 = *(v85 + 32);
    v226 = (v85 + 32);
    v222 = v97;
    (v97)(v228, &v86[v92], v229);
    v98 = *(v93 + 16);
    v99 = v214;
    v98(v214, v96, v94);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    v102 = os_log_type_enabled(v100, v101);
    v213 = v98;
    if (v102)
    {
      v103 = sub_1000118AC();
      v104 = sub_100014D3C();
      v238 = v104;
      *v103 = 136315138;
      v98(v234, v99, v94);
      v105 = String.init<A>(describing:)();
      v106 = v93;
      v107 = v105;
      v109 = v108;
      v110 = sub_100014CAC(v106);
      v111(v110);
      v112 = sub_100013F98(v107, v109, &v238);
      v113 = v230;

      *(v103 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v100, v101, "starting to perform action: %s.", v103, 0xCu);
      sub_10000F7CC(v104);
      sub_100014CDC();
      v89 = v234;
      sub_100014CDC();
    }

    else
    {

      v132 = sub_100014CAC(v93);
      v133(v132);
      v113 = v85;
    }

    v134 = v220;
    v135 = v219;
    v136 = v221;
    (*(v220 + 16))(v219, v237, v221);
    v137 = (*(v134 + 80) + 16) & ~*(v134 + 80);
    v138 = swift_allocObject();
    (*(v134 + 32))(v138 + v137, v135, v136);
    v139 = swift_allocObject();
    swift_weakInit();
    v213(v89, v227, v94);
    v140 = v223;
    v141 = v229;
    (*(v113 + 16))(v223, v228, v229);
    v142 = (*(v224 + 80) + 24) & ~*(v224 + 80);
    v143 = (v217 + *(v113 + 80) + v142) & ~*(v113 + 80);
    v144 = (v11 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
    v145 = swift_allocObject();
    *(v145 + 16) = v139;
    v146 = v225;
    (v231)(v145 + v142, v234, v225);
    (v222)(v145 + v143, v140, v141);
    v147 = (v145 + v144);
    *v147 = sub_1000145F0;
    v147[1] = v138;

    XPCReceivedMessage.handoffReply(to:_:)();

    (*(v113 + 8))(v228, v141);
    v236(v227, v146);
    sub_100014D74();
    v148();

    return result;
  }

  if (v88 == enum case for MusicDaemon.Request.beginObserving(_:))
  {
    v114 = sub_100014C6C();
    v115(v114);
    v116 = v229;
    (*(v85 + 32))(v216, v86, v229);
    v117 = v85;
    v118 = *(v85 + 16);
    v119 = sub_100014D54(v240);
    v118(v119);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = sub_1000118AC();
      v238 = sub_100014D3C();
      v123 = v238;
      v124 = sub_100014D14(4.8751e-34);
      v118(v124);
      v125 = String.init<A>(describing:)();
      v127 = v126;
      v128 = sub_100014C28();
      v117(v128);
      v129 = sub_100013F98(v125, v127, &v238);

      *(v122 + 4) = v129;
      sub_100014CF4(&_mh_execute_header, v130, v131, "beginning to observe context: %{public}s).");
      sub_10000F7CC(v123);
      sub_100014CDC();
      sub_100014C80();
    }

    else
    {

      v167 = sub_100014C28();
      v117(v167);
    }

    v168 = v209;
    if (!swift_weakLoadStrong())
    {
      sub_100014D68();
      (v117)(v216, v116);
      sub_100014C9C();
      sub_100014D74();
      v185();
      v168[4] = 0;
      result = 0.0;
      *v168 = 0u;
      *(v168 + 1) = 0u;
      return result;
    }

    v168[3] = v233;
    sub_100014BF0();
    v168[4] = sub_100014AE4(v169, v170);
    sub_100013F38(v168);
    v171 = v216;
    sub_100006D40();

    sub_100014D68();
    (v117)(v171, v116);
    sub_100014C9C();
    goto LABEL_30;
  }

  v150 = v229;
  if (v88 == enum case for MusicDaemon.Request.endObserving(_:))
  {
    v151 = sub_100014C6C();
    v152(v151);
    (*(v85 + 32))(v213, v86, v150);
    v153 = v85;
    v154 = *(v85 + 16);
    v155 = sub_100014D54(v239);
    v154(v155);
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = sub_1000118AC();
      v237 = sub_100014D3C();
      v238 = v237;
      v159 = sub_100014D14(4.8751e-34);
      v154(v159);
      v160 = String.init<A>(describing:)();
      v162 = v161;
      v163 = sub_100014C28();
      v153(v163);
      v164 = sub_100013F98(v160, v162, &v238);

      *(v158 + 4) = v164;
      sub_100014CF4(&_mh_execute_header, v165, v166, "ending observation of context: %{public}s).");
      sub_10000F7CC(v237);
      sub_100014CDC();
      sub_100014C80();
    }

    else
    {

      v186 = sub_100014C28();
      v153(v186);
    }

    v187 = v209;
    if (!swift_weakLoadStrong())
    {
      sub_100014D68();
      (v153)(v213, v150);
      sub_100014C9C();
      sub_100014D74();
      v205();
      v187[4] = 0;
      result = 0.0;
      *v187 = 0u;
      *(v187 + 1) = 0u;
      return result;
    }

    v187[3] = v233;
    sub_100014BF0();
    v187[4] = sub_100014AE4(v188, v189);
    sub_100013F38(v187);
    v190 = v213;
    sub_100007910();

    sub_100014D68();
    (v153)(v190, v150);
    sub_100014C9C();
LABEL_30:
    sub_100014D74();
    v191();
    return result;
  }

  v172 = v212;
  v87(v212, v51, v33);
  v173 = v87;
  v174 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100014D30();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = sub_1000118AC();
    v177 = sub_100014D3C();
    v238 = v177;
    *v176 = 136315138;
    v173(v222, v172, v33);
    v178 = String.init<A>(describing:)();
    v179 = v33;
    v181 = v180;
    v182 = v172;
    v183 = v208;
    v208(v182, v179);
    v184 = sub_100013F98(v178, v181, &v238);
    v33 = v179;

    *(v176 + 4) = v184;
    _os_log_impl(&_mh_execute_header, v174, v86, "encountered unknown request type: %s.", v176, 0xCu);
    sub_10000F7CC(v177);
    sub_100014CDC();
    sub_100014CDC();
  }

  else
  {

    v192 = v172;
    v183 = v208;
    v208(v192, v33);
  }

  v193 = *(sub_10000E634(&qword_10002CA78, &unk_100020660) + 48);
  v194 = type metadata accessor for MusicDaemon.Response.Context();
  v195 = v231;
  sub_10000ED54(v231, 1, 1, v194);
  v196 = enum case for MusicDaemon.Error.unknownXPCRequest(_:);
  v197 = type metadata accessor for MusicDaemon.Error();
  sub_100010D80(v197);
  (*(v198 + 104))(&v195[v193], v196);
  v200 = v232;
  v199 = v233;
  (*(v232 + 104))(v195, enum case for MusicDaemon.Response.failure(_:), v233);
  v183(v226, v33);
  v201 = v209;
  v209[3] = v199;
  sub_100014BF0();
  v201[4] = sub_100014AE4(v202, v203);
  v204 = sub_100013F38(v201);
  (*(v200 + 32))(v204, v195, v199);
  v183(v51, v33);
  return result;
}

uint64_t sub_10001389C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicDaemon.Response();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = type metadata accessor for XPCReceivedMessage();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002C5F8 != -1)
  {
    swift_once();
  }

  v25 = qword_10002CE88;
  (*(v14 + 16))(&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  (*(v11 + 16))(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + *(v11 + 80) + v17) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v17, v16, v13);
  (*(v11 + 32))(v19 + v18, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_100014A08;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000091A0;
  aBlock[3] = &unk_100029070;
  v20 = _Block_copy(aBlock);
  v21 = v26;
  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_100014AE4(&qword_10002C9F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000E634(&qword_10002C9F8, &qword_1000205D0);
  sub_100014B2C();
  v22 = v29;
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v30 + 8))(v22, v23);
  (*(v27 + 8))(v21, v28);
}

uint64_t sub_100013D08()
{
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F74C(v0, qword_10002CEB0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "action performed, sending result.", v3, 2u);
  }

  type metadata accessor for MusicDaemon.Response();
  sub_100014AE4(&qword_10002CA08, &type metadata accessor for MusicDaemon.Response);
  return XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_100013E44()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      sub_100002DB8();
    }
  }

  return result;
}

uint64_t *sub_100013F38(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100013F98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001405C(v11, 0, 0, 1, a1, a2);
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
    sub_100014B90(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000F7CC(v11);
  return v7;
}

unint64_t sub_10001405C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001415C(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10001415C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000141A8(a1, a2);
  sub_1000142C0(&off_100028D10);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000141A8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_1000143A4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
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
          result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_1000142C0(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100014414(result, v8, 1, v3);
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

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000143A4(uint64_t a1, uint64_t a2)
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

  sub_10000E634(&qword_10002CC90, &qword_100020838);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100014414(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E634(&qword_10002CC90, &qword_100020838);
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

uint64_t sub_100014508(uint64_t a1)
{
  v2 = sub_10000E634(&qword_10002CA80, &unk_100020870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014570()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  sub_100010D80(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000145F0(uint64_t a1)
{
  v3 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001389C(a1, v4);
}

uint64_t sub_100014660()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014698()
{
  v1 = type metadata accessor for MusicDaemon.Request.Action();
  sub_100010D0C(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D0C(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);
  v18 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v16 + 16, v15 | 7);
}

uint64_t sub_1000147E8()
{
  v1 = type metadata accessor for MusicDaemon.Request.Action();
  sub_100010D70(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for MusicDaemon.Request.Context();
  sub_100010D70(v6);
  v9 = *(v0 + 16);
  v10 = (v0 + ((*(v8 + 64) + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_100013E44();
}

uint64_t sub_1000148D8()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  sub_100010D0C(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for MusicDaemon.Response();
  sub_100010D0C(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v14 + v15, v16 | 7);
}

uint64_t sub_100014A08()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  sub_100010D70(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for MusicDaemon.Response() - 8);
  v7 = v0 + ((v3 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100013D08();
}

uint64_t sub_100014ACC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014AE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100014B2C()
{
  result = qword_10002CA00;
  if (!qword_10002CA00)
  {
    sub_10000E67C(&qword_10002C9F8, &qword_1000205D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA00);
  }

  return result;
}

uint64_t sub_100014B90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100014C08()
{

  return swift_once();
}

uint64_t sub_100014C4C()
{

  return swift_once();
}

uint64_t sub_100014C6C()
{
  v4 = *(v2 + 96);
  result = v0;
  *(v3 - 184) = v1;
  return result;
}

uint64_t sub_100014C80()
{
}

uint64_t sub_100014CAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v2 - 320) = (a1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v2 - 152) = v3;
  return result;
}

uint64_t sub_100014CDC()
{
}

void sub_100014CF4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100014D3C()
{

  return swift_slowAlloc();
}

uint64_t sub_100014D8C()
{
  sub_1000110FC();
  v7 = sub_10001B234(v1, v2, v3, v4, v5, v6);
  v0[8] = v7;
  sub_100010D70(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = sub_1000115EC();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v11 = type metadata accessor for MusicDaemon.Item();
  v0[14] = v11;
  sub_100010D70(v11);
  v0[15] = v12;
  v14 = *(v13 + 64);
  v0[16] = sub_1000115EC();
  v0[17] = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4();
  }

  v0[18] = qword_10002CEA8;

  sub_10001B1AC();

  return _swift_task_switch(v15, v16);
}

uint64_t sub_100015078()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  sub_100010E2C();
  *v5 = v4;

  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_100015310;
  }

  else
  {
    v7 = sub_10001519C;
  }

  return _swift_task_switch(v7, v6);
}

uint64_t sub_10001519C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10001AFC0();
  sub_10001B068();
  sub_10001B150();
  v18(v14, v17, v15);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = sub_10001B014(v20);
  v22 = v16[22];
  v24 = v16[15];
  v23 = v16[16];
  v25 = v16[14];
  if (v21)
  {
    sub_1000118AC();
    a10 = v22;
    a11 = sub_10001AF88();
    *v22 = 136446210;
    sub_10001AE5C();
    sub_100019F30(v26, v27);
    sub_10001B26C();
    sub_10001B0D8();
    v28 = sub_10001B058();
    v29 = (v22)(v28);
    sub_10001B0A0(v29, v30);
    sub_10001B174();
    *(v22 + 4) = v23;
    sub_10001AEE0();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_10000F7CC(a11);
    sub_10001AF38();
    sub_10001AFA4();
  }

  else
  {

    v36 = sub_10001B058();
    (v22)(v36);
  }

  v38 = v16[16];
  v37 = v16[17];
  sub_10001B1A0();

  sub_10001AEF0();
  sub_10001AF54();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100015310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void (*a11)(void *, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10001AFC0();
  sub_10001B068();
  v19 = v15[18];
  v20 = v15[19];
  sub_10001B1A0();
  v21 = v15[8];
  v22 = v15[9];

  v23 = sub_10001B0FC();
  v18(v23);
  (v18)(v16, v14, v21);
  v24 = sub_10001B0E4();
  v25(v24);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = sub_1000116BC(v27);
  v29 = v15[9];
  v30 = v15[10];
  v31 = v15[8];
  if (v28)
  {
    v32 = sub_1000118AC();
    a9 = swift_slowAlloc();
    *v32 = 138543362;
    sub_10001AE44();
    sub_100019F30(v33, v34);
    v35 = sub_100011CEC();
    v37 = sub_10001B18C(v35, v36);
    v16(v37);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    v38 = sub_10001AE74();
    v39(v38);
    *(v32 + 4) = v17;
    v31 = a9;
    *a9 = v17;
    sub_10001B1F4(&_mh_execute_header, v40, v41, "╰ ending favorite operation with error: %{public}@.");
    sub_100010734(a9, &qword_10002CA80, &unk_100020870);
    sub_10001AF38();
    sub_100014CDC();
  }

  else
  {

    v42 = sub_10001AE74();
    v43(v42);
  }

  v44 = sub_10001AFEC();
  v45(v44);
  sub_10001AE44();
  sub_100019F30(v46, v47);
  swift_willThrowTypedImpl();
  a11(v31, v17);

  sub_10001AED0();
  sub_10001AF54();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, v16, a11, a12, a13, a14);
}

uint64_t sub_100015530()
{
  sub_1000110FC();
  v7 = sub_10001B234(v1, v2, v3, v4, v5, v6);
  v0[8] = v7;
  sub_100010D70(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = sub_1000115EC();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v11 = type metadata accessor for MusicDaemon.Item();
  v0[14] = v11;
  sub_100010D70(v11);
  v0[15] = v12;
  v14 = *(v13 + 64);
  v0[16] = sub_1000115EC();
  v0[17] = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    sub_100010CC4();
  }

  v0[18] = qword_10002CEA8;

  sub_10001B1AC();

  return _swift_task_switch(v15, v16);
}

uint64_t sub_10001581C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  sub_100010E2C();
  *v5 = v4;

  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_100015AB4;
  }

  else
  {
    v7 = sub_100015940;
  }

  return _swift_task_switch(v7, v6);
}

uint64_t sub_100015940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10001AFC0();
  sub_10001B068();
  sub_10001B150();
  v18(v14, v17, v15);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = sub_10001B014(v20);
  v22 = v16[22];
  v24 = v16[15];
  v23 = v16[16];
  v25 = v16[14];
  if (v21)
  {
    sub_1000118AC();
    a10 = v22;
    a11 = sub_10001AF88();
    *v22 = 136446210;
    sub_10001AE5C();
    sub_100019F30(v26, v27);
    sub_10001B26C();
    sub_10001B0D8();
    v28 = sub_10001B058();
    v29 = (v22)(v28);
    sub_10001B0A0(v29, v30);
    sub_10001B174();
    *(v22 + 4) = v23;
    sub_10001AEE0();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_10000F7CC(a11);
    sub_10001AF38();
    sub_10001AFA4();
  }

  else
  {

    v36 = sub_10001B058();
    (v22)(v36);
  }

  v38 = v16[16];
  v37 = v16[17];
  sub_10001B1A0();

  sub_10001AEF0();
  sub_10001AF54();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100015AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void (*a11)(void *, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10001AFC0();
  sub_10001B068();
  v19 = v15[18];
  v20 = v15[19];
  sub_10001B1A0();
  v21 = v15[8];
  v22 = v15[9];

  v23 = sub_10001B0FC();
  v18(v23);
  (v18)(v16, v14, v21);
  v24 = sub_10001B0E4();
  v25(v24);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = sub_1000116BC(v27);
  v29 = v15[9];
  v30 = v15[10];
  v31 = v15[8];
  if (v28)
  {
    v32 = sub_1000118AC();
    a9 = swift_slowAlloc();
    *v32 = 138543362;
    sub_10001AE44();
    sub_100019F30(v33, v34);
    v35 = sub_100011CEC();
    v37 = sub_10001B18C(v35, v36);
    v16(v37);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    v38 = sub_10001AE74();
    v39(v38);
    *(v32 + 4) = v17;
    v31 = a9;
    *a9 = v17;
    sub_10001B1F4(&_mh_execute_header, v40, v41, "╰ ending undo favorite operation with error: %{public}@.");
    sub_100010734(a9, &qword_10002CA80, &unk_100020870);
    sub_10001AF38();
    sub_100014CDC();
  }

  else
  {

    v42 = sub_10001AE74();
    v43(v42);
  }

  v44 = sub_10001AFEC();
  v45(v44);
  sub_10001AE44();
  sub_100019F30(v46, v47);
  swift_willThrowTypedImpl();
  a11(v31, v17);

  sub_10001AED0();
  sub_10001AF54();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, v16, a11, a12, a13, a14);
}

uint64_t sub_100015CD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 136) = a6;
  *(v7 + 144) = a7;
  *(v7 + 120) = a4;
  *(v7 + 128) = a5;
  *(v7 + 57) = a3;
  *(v7 + 104) = a1;
  *(v7 + 112) = a2;
  v13 = *(*(sub_10000E634(&qword_10002CA90, &qword_100020670) - 8) + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v14 = *(*(sub_10000E634(&qword_10002CCA0, &qword_100020880) - 8) + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  v15 = type metadata accessor for Date();
  *(v7 + 168) = v15;
  v16 = *(v15 - 8);
  *(v7 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v18 = sub_10000E634(&qword_10002CCA8, &qword_100020888);
  *(v7 + 200) = v18;
  v19 = *(v18 - 8);
  *(v7 + 208) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  v21 = sub_10000E634(&qword_10002CCB0, &qword_100020890);
  *(v7 + 224) = v21;
  v22 = *(v21 - 8);
  *(v7 + 232) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  v24 = sub_10000E634(&qword_10002CCB8, &qword_100020898);
  *(v7 + 248) = v24;
  v25 = *(v24 - 8);
  *(v7 + 256) = v25;
  v26 = *(v25 + 64) + 15;
  *(v7 + 264) = swift_task_alloc();
  v27 = type metadata accessor for MusicDaemon.Error();
  *(v7 + 272) = v27;
  v28 = *(v27 - 8);
  *(v7 + 280) = v28;
  v29 = *(v28 + 64) + 15;
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  v30 = swift_task_alloc();
  *(v7 + 304) = v30;
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  *(v7 + 312) = qword_10002CEA8;

  v31 = swift_task_alloc();
  *(v7 + 320) = v31;
  *v31 = v7;
  v31[1] = sub_100016080;

  return sub_10001745C(a2, a3 & 1, a4, a5, a6, v30);
}

uint64_t sub_100016080()
{
  sub_1000110FC();
  sub_100011384();
  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  v5 = *v1;
  sub_100010E2C();
  *v6 = v5;

  if (v0)
  {
    v7 = sub_1000170DC;
  }

  else
  {
    v7 = sub_100016194;
  }

  return _swift_task_switch(v7, v4);
}

uint64_t sub_100016194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10001AFC0();
  a21 = v23;
  a22 = v24;
  sub_10001B068();
  a20 = v22;
  v25 = *(v22 + 128);
  v26 = *(v22 + 136);
  v27 = *(v22 + 112);
  v28 = *(v22 + 120);
  v29 = sub_10001855C();
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    if (qword_10002C638 != -1)
    {
      sub_100014C08();
    }

    v33 = type metadata accessor for Logger();
    *(v22 + 328) = sub_10000F74C(v33, qword_10002CEB0);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = sub_1000118AC();
      v37 = sub_100014D3C();
      a11 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_100013F98(v31, v32, &a11);
      _os_log_impl(&_mh_execute_header, v34, v35, "| fetching database track with query: %{public}s.", v36, 0xCu);
      sub_10000F7CC(v37);
      sub_100014CDC();
      sub_10001AF38();
    }

    v38 = v31;
    v40 = *(v22 + 232);
    v39 = *(v22 + 240);
    v41 = *(v22 + 216);
    v71 = *(v22 + 224);
    v72 = *(v22 + 264);
    v43 = *(v22 + 200);
    v42 = *(v22 + 208);
    v44 = *(v22 + 120);
    v45 = swift_task_alloc();
    v46 = *(v22 + 128);
    *(v45 + 16) = v44;
    *(v45 + 24) = v46;
    *(v45 + 40) = v38;
    *(v45 + 48) = v32;
    (*(v42 + 104))(v41, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v43);
    AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

    AsyncThrowingStream.makeAsyncIterator()();
    (*(v40 + 8))(v39, v71);
    *(v22 + 58) = 1;
    *(v22 + 336) = 0;
    *(v22 + 344) = 0;
    *(v22 + 352) = qword_10002CEA8;
    sub_10001AF70();
    sub_100019F30(v47, v48);
    v49 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];

    swift_task_alloc();
    sub_10001104C();
    *(v22 + 360) = v50;
    *v50 = v51;
    sub_10001AF10(v50);
    sub_10001AF54();

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v52, v53, v54);
  }

  else
  {
    v56 = *(v22 + 312);
    v57 = *(v22 + 272);
    v58 = *(v22 + 280);
    v59 = *(v22 + 144);

    (*(v58 + 104))(v59, enum case for MusicDaemon.Error.itemDeviceLocalIDNotFound(_:), v57);
    sub_10001AE44();
    sub_100019F30(v60, v61);
    swift_willThrowTypedImpl();
    sub_10001AE90();

    sub_10001AED0();
    sub_10001AF54();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_100016504()
{
  sub_1000110FC();
  sub_100011384();
  v2 = v1;
  v3 = *(v1 + 360);
  v4 = *v0;
  sub_100010E2C();
  *v5 = v4;

  v6 = *(v2 + 352);
  v7 = *(v2 + 312);

  sub_10001B1AC();

  return _swift_task_switch(v8, v9);
}

uint64_t sub_100016618()
{
  v117 = v0;
  v1 = *(v0 + 40);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 58);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    if ((v2 & 1) != 0 || (v3 = [objc_allocWithZone(ML3Track) initWithPersistentID:*(v0 + 344) inLibrary:*(v0 + 136)], (*(v0 + 368) = v3) == 0))
    {
      v51 = *(v0 + 312);
      v52 = *(v0 + 272);
      v53 = *(v0 + 280);
      v54 = *(v0 + 144);

      (*(v53 + 104))(v54, enum case for MusicDaemon.Error.libraryEntityNotFound(_:), v52);
      sub_10001AE44();
      sub_100019F30(v55, v56);
      swift_willThrowTypedImpl();
    }

    else
    {
      v4 = v3;
      v5 = *(v0 + 328);
      v6 = *(v0 + 192);
      if (*(v0 + 57))
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      Date.init()();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      v115 = v4;
      if (sub_1000116BC(v9))
      {
        v10 = *(v0 + 344);
        v11 = sub_10001B254();
        v12 = sub_100014D3C();
        v116 = v12;
        *v11 = 134349314;
        *(v11 + 4) = v10;
        *(v11 + 12) = 2082;
        *(v0 + 96) = v7;
        type metadata accessor for ML3EntityLikedState(0);
        v13 = String.init<A>(describing:)();
        v15 = sub_100013F98(v13, v14, &v116);

        *(v11 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "| updating liked_state for entity with pid: %{public}lld to %{public}s.", v11, 0x16u);
        sub_10000F7CC(v12);
        v4 = v115;
        sub_100014CDC();
        sub_100014CDC();
      }

      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v17 = &MusicDaemon.Server;
      v18 = [v4 setValue:isa forProperty:ML3TrackPropertyLikedState];

      if (v18)
      {
        v19 = *(v0 + 328);
        (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          HIDWORD(v112) = v21;
          v22 = *(v0 + 344);
          v23 = *(v0 + 176);
          v24 = *(v0 + 184);
          v25 = *(v0 + 168);
          v26 = sub_10001B254();
          v113 = sub_100014D3C();
          v114 = v7;
          v116 = v113;
          *v26 = 134349314;
          *(v26 + 4) = v22;
          *(v26 + 12) = 2082;
          sub_100019F30(&qword_10002CCC0, &type metadata accessor for Date);
          v27 = v24;
          v28 = dispatch thunk of CustomStringConvertible.description.getter();
          v30 = v29;
          v31 = *(v23 + 8);
          v31(v27, v25);
          v17 = &MusicDaemon.Server;
          v32 = sub_100013F98(v28, v30, &v116);

          *(v26 + 14) = v32;
          _os_log_impl(&_mh_execute_header, v20, BYTE4(v112), "| updating liked_state_changed_date for entity with pid: %{public}lld to %{public}s.", v26, 0x16u);
          sub_10001B080(v33, v34, v35, v36, v37, v38, v39, v40, v112, v113);
          v7 = v114;
          sub_100014CDC();
          v4 = v115;
          sub_100014CDC();
        }

        else
        {
          v58 = *(v0 + 176);
          v57 = *(v0 + 184);
          v59 = *(v0 + 168);

          v31 = *(v58 + 8);
          v60 = sub_10001B074();
          (v31)(v60);
        }

        *(v0 + 376) = v31;
        v61 = *(v0 + 192);
        v62 = Date._bridgeToObjectiveC()().super.isa;
        v63 = [v4 v17[15].base_props];

        if (v63)
        {
          v64 = v7;
          v65 = *(v0 + 328);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          if (sub_1000116BC(v67))
          {
            v69 = *(v0 + 336);
            v68 = *(v0 + 344);
            v70 = sub_100014D3C();
            v71 = sub_100014D3C();
            v116 = v71;
            *v70 = 134349570;
            *(v70 + 4) = v68;
            *(v70 + 12) = 2050;
            *(v70 + 14) = v69;
            *(v70 + 22) = 2082;
            *(v0 + 88) = v64;
            type metadata accessor for ML3EntityLikedState(0);
            v72 = String.init<A>(describing:)();
            v74 = sub_100013F98(v72, v73, &v116);

            *(v70 + 24) = v74;
            _os_log_impl(&_mh_execute_header, v66, v67, "| updating content taste for entity with pid: %{public}lld and store ID: %{public}lld to %{public}s.", v70, 0x20u);
            sub_10000F7CC(v71);
            sub_100014CDC();
            sub_10001AF38();
          }

          v97 = swift_task_alloc();
          *(v0 + 384) = v97;
          *v97 = v0;
          v97[1] = sub_100016DA8;
          v98 = *(v0 + 336);
          v99 = *(v0 + 344);
          v100 = *(v0 + 192);
          v101 = *(v0 + 128);
          v102 = *(v0 + 136);
          v103 = *(v0 + 120);
          sub_10001B1D8();

          return sub_100018A48(v104, v105, v106, v107, v108, v109);
        }
      }

      v75 = *(v0 + 328);
      v76 = *(v0 + 312);

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = *(v0 + 344);
        v80 = sub_1000118AC();
        *v80 = 134349056;
        *(v80 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v77, v78, "| failed to set values to entity with pid: %{public}lld.", v80, 0xCu);
        sub_100014CDC();
      }

      v81 = *(v0 + 296);
      v82 = *(v0 + 272);
      v83 = *(v0 + 280);
      v84 = *(v0 + 192);
      v85 = *(v0 + 168);
      v86 = *(v0 + 176);
      v87 = *(v0 + 144);
      v88 = *(v0 + 57);

      v89 = &enum case for MusicDaemon.Error.failedToPerformFavoriteAction(_:);
      if (!v88)
      {
        v89 = &enum case for MusicDaemon.Error.failedToPerformUndoFavoriteAction(_:);
      }

      (*(v83 + 104))(v81, *v89, v82);
      (*(v83 + 16))(v87, v81, v82);
      sub_10001AE44();
      sub_100019F30(v90, v91);
      swift_willThrowTypedImpl();

      v92 = *(v83 + 8);
      v93 = sub_100011390();
      v94(v93);
      (*(v86 + 8))(v84, v85);
    }

    sub_10001AE90();

    sub_10001AED0();
    sub_10001B1D8();

    __asm { BRAA            X1, X16 }
  }

  v41 = *(v0 + 48);
  *(v0 + 58) = 0;
  *(v0 + 336) = v41;
  *(v0 + 344) = v1;
  *(v0 + 352) = qword_10002CEA8;
  sub_10001AF70();
  sub_100019F30(v42, v43);
  v44 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];

  swift_task_alloc();
  sub_10001104C();
  *(v0 + 360) = v45;
  *v45 = v46;
  sub_10001AF10();
  sub_10001B1D8();

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v47, v48, v49);
}

uint64_t sub_100016DA8()
{
  sub_1000110FC();
  sub_100011384();
  v2 = *(v1 + 384);
  v3 = *(v1 + 312);
  v4 = *v0;
  sub_100010E2C();
  *v5 = v4;

  sub_10001B1AC();

  return _swift_task_switch(v6, v7);
}

void sub_100016EA4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = sub_10001B254();
    *v7 = 134349312;
    *(v7 + 4) = v5;
    *(v7 + 12) = 2050;
    *(v7 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v3, v4, "| successfully set content taste for entity with pid: %{public}lld and store ID: %{public}lld", v7, 0x16u);
    sub_100014CDC();
  }

  v8 = *(v0 + 368);
  v28 = *(v0 + 376);
  v29 = *(v0 + 304);
  v30 = *(v0 + 296);
  v31 = *(v0 + 288);
  v32 = *(v0 + 264);
  v33 = *(v0 + 240);
  v9 = *(v0 + 192);
  v34 = *(v0 + 216);
  v35 = *(v0 + 184);
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  v12 = *(v0 + 160);
  v36 = *(v0 + 152);
  v13 = *(v0 + 57);
  v14 = *(v0 + 104);
  v15 = *(v0 + 112);

  v16 = type metadata accessor for MusicDaemon.Item();
  sub_100010D80(v16);
  v18 = *(v17 + 16);
  v19 = sub_10001B1B8();
  v20(v19);
  v21 = &enum case for MusicFavoriteStatus.favorited(_:);
  if (!v13)
  {
    v21 = &enum case for MusicFavoriteStatus.neutral(_:);
  }

  v22 = *v21;
  v23 = type metadata accessor for MusicFavoriteStatus();
  sub_100010D80(v23);
  (*(v24 + 104))(v12, v22, v23);
  sub_10000ED54(v12, 0, 1, v23);
  MusicDaemon.Item.favoriteStatus.setter();

  v25 = sub_100011390();
  v28(v25);

  sub_10001AEF0();
  sub_100011568();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000170DC()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[18];

  (*(v4 + 32))(v5, v2, v3);
  sub_10001AE90();

  sub_10001AED0();

  return v6();
}

uint64_t sub_1000171C8()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[19];

  (*(v5 + 8))(v2, v4);
  v0[9] = v0[8];
  swift_errorRetain();
  sub_10000E634(&qword_10002CA30, &qword_100020610);
  v7 = swift_dynamicCast();
  v8 = v0[35];
  v9 = v0[34];
  v10 = v0[19];
  v11 = v0[18];
  if (v7)
  {
    v12 = v0[36];
    sub_10000ED54(v0[19], 0, 1, v0[34]);
    (*(v8 + 32))(v12, v10, v9);
    (*(v8 + 16))(v11, v12, v9);
    sub_10001AE44();
    sub_100019F30(v13, v14);
    sub_10001B120();
    swift_willThrowTypedImpl();

    (*(v8 + 8))(v12, v9);
  }

  else
  {
    sub_10000ED54(v0[19], 1, 1, v0[34]);
    sub_100010734(v10, &qword_10002CA90, &qword_100020670);
    swift_getErrorValue();
    v16 = v0[2];
    v15 = v0[3];
    v17 = v0[4];
    *v11 = Error.localizedDescription.getter();
    v11[1] = v18;
    (*(v8 + 104))(v11, enum case for MusicDaemon.Error.other(_:), v9);
    sub_10001AE44();
    sub_100019F30(v19, v20);
    sub_10001B120();
    swift_willThrowTypedImpl();
  }

  sub_10001AE90();

  sub_10001AED0();

  return v21();
}

uint64_t sub_10001745C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = a6;
  *(v6 + 344) = a2;
  *(v6 + 160) = a1;
  v7 = *(*(sub_10000E634(&qword_10002CCE0, &qword_1000208D0) - 8) + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  v8 = type metadata accessor for MusicDaemon.Item();
  *(v6 + 192) = v8;
  v9 = *(v8 - 8);
  *(v6 + 200) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v11 = type metadata accessor for MusicIdentifierSet();
  *(v6 + 240) = v11;
  v12 = *(v11 - 8);
  *(v6 + 248) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v14 = qword_10002CEA8;
  *(v6 + 280) = qword_10002CEA8;

  return _swift_task_switch(sub_10001763C, v14);
}

uint64_t sub_10001763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v172 = v14;
  v15 = *(v14 + 272);
  v16 = *(v14 + 240);
  v17 = *(v14 + 248);
  v18 = *(v14 + 160);
  MusicDaemon.Item.identifierSet.getter();
  LOBYTE(v18) = MusicIdentifierSet.isLibrary.getter();
  v19 = *(v17 + 8);
  v19(v15, v16);
  if (v18)
  {
    v20 = *(v14 + 280);

    if (qword_10002C638 != -1)
    {
      sub_100014C08();
    }

    v21 = *(v14 + 216);
    v22 = *(v14 + 192);
    v23 = *(v14 + 200);
    v24 = *(v14 + 160);
    v25 = type metadata accessor for Logger();
    v26 = sub_10000F74C(v25, qword_10002CEB0);
    v27 = *(v23 + 16);
    v28 = sub_10001B074();
    v29(v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (!sub_10001B014(v31))
    {
      v67 = *(v14 + 216);
      v68 = *(v14 + 192);
      v69 = *(v14 + 200);

      v70 = *(v69 + 8);
      v71 = sub_10001B074();
      v72(v71);
      goto LABEL_90;
    }

    v32 = *(v14 + 272);
    v33 = *(v14 + 240);
    v34 = *(v14 + 216);
    v35 = *(v14 + 192);
    v36 = *(v14 + 200);
    sub_1000118AC();
    v37 = sub_10001AF88();
    v171[0] = v37;
    *v26 = 136446210;
    MusicDaemon.Item.identifierSet.getter();
    sub_100011390();
    String.init<A>(describing:)();
    v38 = *(v36 + 8);
    v39 = sub_10001B1B8();
    v40(v39);
    v41 = sub_100011390();
    v44 = sub_100013F98(v41, v42, v43);

    *(v26 + 4) = v44;
    goto LABEL_88;
  }

  if (qword_10002C638 != -1)
  {
    sub_100014C08();
  }

  v45 = *(v14 + 232);
  v46 = *(v14 + 192);
  v47 = *(v14 + 200);
  v48 = *(v14 + 160);
  v49 = type metadata accessor for Logger();
  *(v14 + 288) = sub_10000F74C(v49, qword_10002CEB0);
  v50 = *(v47 + 16);
  *(v14 + 296) = v50;
  *(v14 + 304) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v169 = v50;
  v50(v45, v48, v46);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = *(v14 + 272);
    v54 = *(v14 + 232);
    v55 = *(v14 + 240);
    v56 = *(v14 + 200);
    v165 = *(v14 + 192);
    v167 = v19;
    v57 = sub_1000118AC();
    v166 = sub_100014D3C();
    v171[0] = v166;
    *v57 = 136446210;
    MusicDaemon.Item.identifierSet.getter();
    String.init<A>(describing:)();
    sub_10001B0D8();
    v58 = *(v56 + 8);
    v58(v54, v165);
    sub_100013F98(v53, v55, v171);
    sub_10001B174();
    *(v57 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v51, v52, "| starting to import track with identifier set: %{public}s.", v57, 0xCu);
    sub_10001B080(v59, v60, v61, v62, v63, v64, v65, v66, v165, v166);
    sub_100014CDC();
    v19 = v167;
    sub_100014CDC();
  }

  else
  {
    v73 = *(v14 + 232);
    v75 = *(v14 + 192);
    v74 = *(v14 + 200);

    v76 = *(v74 + 8);
    v76(v73, v75);
    v58 = v76;
  }

  v77 = v58;
  *(v14 + 312) = v58;
  v78 = *(v14 + 264);
  v79 = *(v14 + 240);
  v80 = *(v14 + 184);
  v81 = *(v14 + 160);
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.catalogID.getter();
  v19(v78, v79);
  v82 = v19;
  v83 = type metadata accessor for MusicCatalogID();
  if (sub_10000ED7C(v80, 1, v83) == 1)
  {
    v84 = *(v14 + 256);
    v85 = *(v14 + 240);
    v86 = *(v14 + 160);
    sub_100010734(*(v14 + 184), &qword_10002CCE0, &qword_1000208D0);
    MusicDaemon.Item.identifierSet.getter();
    v87 = MusicIdentifierSet.purchasedAdamID.getter();
    v89 = v88;
    v90 = sub_100011390();
    v91 = v82(v90);
    if (!v89)
    {
      v168 = v77;
      v98 = *(v14 + 280);

LABEL_86:
      v169(*(v14 + 224), *(v14 + 160), *(v14 + 192));
      v30 = Logger.logObject.getter();
      v122 = static os_log_type_t.error.getter();
      if (!sub_10001B014(v122))
      {
        v138 = *(v14 + 224);
        v139 = *(v14 + 192);
        v140 = *(v14 + 200);

        v141 = sub_10001B074();
        v168(v141);
LABEL_90:
        sub_10001B12C();

        sub_10001AEF0();
        sub_100011568();

        __asm { BRAA            X1, X16 }
      }

      v123 = *(v14 + 272);
      v124 = *(v14 + 240);
      v125 = *(v14 + 224);
      v126 = *(v14 + 192);
      v127 = *(v14 + 200);
      sub_1000118AC();
      v37 = sub_10001AF88();
      v171[0] = v37;
      *v87 = 136446210;
      MusicDaemon.Item.identifierSet.getter();
      sub_100011390();
      String.init<A>(describing:)();
      v128 = sub_10001B1B8();
      v168(v128);
      v129 = sub_100011390();
      v132 = sub_100013F98(v129, v130, v131);

      *(v87 + 4) = v132;
LABEL_88:
      sub_10001AEE0();
      _os_log_impl(v133, v134, v135, v136, v137, 0xCu);
      sub_10000F7CC(v37);
      sub_100014CDC();
      sub_10001AFA4();

      goto LABEL_90;
    }
  }

  else
  {
    v99 = *(v14 + 184);
    v87 = MusicCatalogID.value.getter();
    v89 = v100;
    v91 = (*(*(v83 - 8) + 8))(v99, v83);
  }

  v101 = HIBYTE(v89) & 0xF;
  v102 = v87 & 0xFFFFFFFFFFFFLL;
  if ((v89 & 0x2000000000000000) != 0)
  {
    v103 = HIBYTE(v89) & 0xF;
  }

  else
  {
    v103 = v87 & 0xFFFFFFFFFFFFLL;
  }

  if (!v103)
  {
LABEL_85:
    v168 = v77;
    v121 = *(v14 + 280);

    goto LABEL_86;
  }

  if ((v89 & 0x1000000000000000) == 0)
  {
    if ((v89 & 0x2000000000000000) != 0)
    {
      v171[0] = v87;
      v171[1] = v89 & 0xFFFFFFFFFFFFFFLL;
      if (v87 == 43)
      {
        if (v101)
        {
          if (v101 != 1)
          {
            sub_10001B1C4();
            while (1)
            {
              sub_10001AF00();
              if (!v107 & v106)
              {
                break;
              }

              sub_10001AEBC();
              if (!v107)
              {
                break;
              }

              v105 = (v116 + v115);
              if (__OFADD__(v116, v115))
              {
                break;
              }

              sub_10001B114();
              if (v107)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_83;
        }

LABEL_107:
        __break(1u);
        return _swift_continuation_await(v91, v102, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14);
      }

      if (v87 != 45)
      {
        if (v101)
        {
          while (1)
          {
            sub_10001AF00();
            if (!v107 & v106)
            {
              break;
            }

            sub_10001AEBC();
            if (!v107)
            {
              break;
            }

            v105 = (v120 + v119);
            if (__OFADD__(v120, v119))
            {
              break;
            }

            sub_10001B114();
            if (v107)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }

      if (v101)
      {
        if (v101 != 1)
        {
          sub_10001B1C4();
          while (1)
          {
            sub_10001AF00();
            if (!v107 & v106)
            {
              break;
            }

            sub_10001AEBC();
            if (!v107)
            {
              break;
            }

            v105 = (v112 - v111);
            if (__OFSUB__(v112, v111))
            {
              break;
            }

            sub_10001B114();
            if (v107)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }
    }

    else
    {
      if ((v87 & 0x1000000000000000) != 0)
      {
        v91 = ((v89 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        sub_10001B120();
        v91 = _StringObject.sharedUTF8.getter();
      }

      v104 = *v91;
      if (v104 == 43)
      {
        if (v102 >= 1)
        {
          if (v102 != 1)
          {
            v105 = 0;
            if (v91)
            {
              while (1)
              {
                sub_10001AF00();
                if (!v107 & v106)
                {
                  goto LABEL_83;
                }

                sub_10001AEBC();
                if (!v107)
                {
                  goto LABEL_83;
                }

                v105 = (v114 + v113);
                if (__OFADD__(v114, v113))
                {
                  goto LABEL_83;
                }

                sub_10001B114();
                if (v107)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_83;
        }

        goto LABEL_106;
      }

      if (v104 != 45)
      {
        if (v102)
        {
          v105 = 0;
          if (v91)
          {
            while (1)
            {
              v117 = *v91 - 48;
              if (v117 > 9)
              {
                goto LABEL_83;
              }

              v118 = 10 * v105;
              if ((v105 * 10) >> 64 != (10 * v105) >> 63)
              {
                goto LABEL_83;
              }

              v105 = (v118 + v117);
              if (__OFADD__(v118, v117))
              {
                goto LABEL_83;
              }

              ++v91;
              if (!--v102)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_83:
        v105 = 0;
        v110 = 1;
LABEL_84:
        if (v110)
        {
          goto LABEL_85;
        }

        goto LABEL_94;
      }

      if (v102 >= 1)
      {
        if (v102 != 1)
        {
          v105 = 0;
          if (v91)
          {
            while (1)
            {
              sub_10001AF00();
              if (!v107 & v106)
              {
                goto LABEL_83;
              }

              sub_10001AEBC();
              if (!v107)
              {
                goto LABEL_83;
              }

              v105 = (v109 - v108);
              if (__OFSUB__(v109, v108))
              {
                goto LABEL_83;
              }

              sub_10001B114();
              if (v107)
              {
                goto LABEL_84;
              }
            }
          }

LABEL_74:
          v110 = 0;
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      __break(1u);
    }

    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v144 = sub_10001B120();
  v105 = sub_10001A11C(v144, v145, 10);
  v147 = v146;

  if (v147)
  {
    goto LABEL_85;
  }

LABEL_94:
  *(v14 + 320) = v105;
  v148 = *(v14 + 168);
  v149 = *(v14 + 344);
  sub_10001AC80();
  v150 = sub_10001ED64();
  *(v14 + 328) = v150;
  v151 = [v148 sagaCloudFavoriteSongAddToLibraryBehavior];

  v152 = Logger.logObject.getter();
  v153 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v152, v153))
  {
    v170 = v149;
    v154 = sub_10001B254();
    v171[0] = swift_slowAlloc();
    *v154 = 136446466;
    v155 = sub_10001B120();
    v158 = sub_100013F98(v155, v156, v157);

    *(v154 + 4) = v158;
    *(v154 + 12) = 2082;
    *(v14 + 152) = v151;
    type metadata accessor for ML3FavoriteSongAddToLibraryBehavior(0);
    v159 = String.init<A>(describing:)();
    v161 = sub_100013F98(v159, v160, v171);

    *(v154 + 14) = v161;
    _os_log_impl(&_mh_execute_header, v152, v153, "| importing track with catalog ID: %{public}s with add-to-library behavior: %{public}s.", v154, 0x16u);
    swift_arrayDestroy();
    sub_100014CDC();
    v149 = v170;
    sub_100014CDC();
  }

  else
  {
  }

  if (v151 < 2)
  {
    v162 = v149;
  }

  else
  {
    v162 = 0;
  }

  *(v14 + 16) = v14;
  *(v14 + 24) = sub_100018054;
  v163 = swift_continuation_init();
  *(v14 + 136) = sub_10000E634(&qword_10002CCF8, &qword_1000208E0);
  *(v14 + 80) = _NSConcreteStackBlock;
  *(v14 + 88) = 1107296256;
  *(v14 + 96) = sub_100018F74;
  *(v14 + 104) = &unk_100029188;
  *(v14 + 112) = v163;
  [v150 _musicKit_importTrackWithID:v105 addingToLibrary:v162 completionHandler:v14 + 80];
  sub_100011568();

  return _swift_continuation_await(v91, v102, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100018054()
{
  sub_1000110FC();
  sub_100011384();
  v1 = *v0;
  v3 = v2[6];
  v2[42] = v3;
  v4 = v2[35];
  if (v3)
  {
    v5 = sub_100018228;
  }

  else
  {
    v5 = sub_10001816C;
  }

  return _swift_task_switch(v5, v4);
}

uint64_t sub_10001816C()
{
  v1 = *(v0 + 280);

  sub_10001B12C();

  sub_10001AEF0();

  return v2();
}

uint64_t sub_100018228()
{
  v58 = v0;
  v1 = v0[42];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[26];
  v7 = v0[24];
  v8 = v0[20];

  swift_willThrow();
  v3(v6, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[42];
    v53 = v0[39];
    v55 = v0[40];
    v12 = v0[26];
    v51 = v0[25];
    v13 = v0[24];
    v14 = sub_100014D3C();
    v57[0] = swift_slowAlloc();
    *v14 = 136446722;
    sub_10001AE5C();
    sub_100019F30(v15, v16);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = sub_10001B1B8();
    v21(v20);
    v22 = sub_100013F98(v17, v19, v57);

    *(v14 + 4) = v22;
    *(v14 + 12) = 2050;
    *(v14 + 14) = v55;
    *(v14 + 22) = 2082;
    v0[18] = v11;
    swift_errorRetain();
    sub_10000E634(&qword_10002CA30, &qword_100020610);
    v23 = String.init<A>(describing:)();
    v25 = sub_100013F98(v23, v24, v57);

    *(v14 + 24) = v25;
    sub_10001AEE0();
    _os_log_impl(v26, v27, v28, v29, v30, 0x20u);
    swift_arrayDestroy();
    sub_10001AF38();
    sub_10001AFA4();
  }

  else
  {
    v31 = v0[39];
    v33 = v0[25];
    v32 = v0[26];
    v34 = v0[24];

    v35 = sub_10001B074();
    v31(v35);
  }

  v36 = v0[41];
  v37 = v0[42];
  v38 = v0[33];
  v39 = v0[34];
  v40 = v0[32];
  v41 = v0[29];
  v50 = v0[28];
  v52 = v0[27];
  v42 = v0[22];
  v54 = v0[26];
  v56 = v0[23];
  v43 = enum case for MusicDaemon.Error.failedToImportTrack(_:);
  v44 = type metadata accessor for MusicDaemon.Error();
  sub_100010D80(v44);
  (*(v45 + 104))(v42, v43, v44);
  sub_10001AE44();
  sub_100019F30(v46, v47);
  sub_10001B074();
  swift_willThrowTypedImpl();

  sub_10001AED0();

  return v48();
}

unint64_t sub_10001855C()
{
  v0 = sub_10000E634(&qword_10002CCE0, &qword_1000208D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v40 - v2;
  v4 = type metadata accessor for MusicIdentifierSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = sub_10000E634(&qword_10002CCE8, &qword_1000208D8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v40 - v19;
  v43 = 0xD00000000000006CLL;
  v44 = 0x8000000100020F50;
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.deviceLocalID.getter();
  v21 = *(v5 + 8);
  v21(v16, v4);
  v22 = type metadata accessor for MusicDeviceLocalID();
  if (sub_10000ED7C(v20, 1, v22) != 1)
  {
    v29 = MusicDeviceLocalID.value.getter();
    v31 = v30;
    (*(*(v22 - 8) + 8))(v20, v22);
    strcpy(&v42, "item_pid=");
    WORD1(v42._object) = 0;
    HIDWORD(v42._object) = -385875968;
LABEL_7:
    v33._countAndFlagsBits = v29;
    v33._object = v31;
    String.append(_:)(v33);
LABEL_8:

    goto LABEL_9;
  }

  sub_100010734(v20, &qword_10002CCE8, &qword_1000208D8);
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.catalogID.getter();
  v21(v14, v4);
  v23 = type metadata accessor for MusicCatalogID();
  if (sub_10000ED7C(v3, 1, v23) != 1)
  {
    v29 = MusicCatalogID.value.getter();
    v31 = v32;
    (*(*(v23 - 8) + 8))(v3, v23);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v42._countAndFlagsBits = 0xD00000000000001BLL;
    v42._object = 0x8000000100020FE0;
    goto LABEL_7;
  }

  sub_100010734(v3, &qword_10002CCE0, &qword_1000208D0);
  MusicDaemon.Item.identifierSet.getter();
  v24 = MusicIdentifierSet.libraryID.getter();
  v26 = v25;
  v21(v11, v4);
  if (!v26)
  {
    v35 = v41;
    MusicDaemon.Item.identifierSet.getter();
    v36 = MusicIdentifierSet.purchasedAdamID.getter();
    v38 = v37;
    v21(v35, v4);
    if (!v38)
    {
      return 0;
    }

    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v42, "store_item_id=");
    HIBYTE(v42._object) = -18;
    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);
    goto LABEL_8;
  }

  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v42._countAndFlagsBits = 0xD00000000000001CLL;
  v42._object = 0x8000000100020FC0;
  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 34;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
LABEL_9:
  String.append(_:)(v42);

  return v43;
}

uint64_t sub_100018A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v7 = qword_10002CEA8;
  v6[25] = qword_10002CEA8;

  return _swift_task_switch(sub_100018AFC, v7);
}