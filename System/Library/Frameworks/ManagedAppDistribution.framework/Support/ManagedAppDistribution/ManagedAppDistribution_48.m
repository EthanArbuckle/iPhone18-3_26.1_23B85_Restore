uint64_t sub_1005D9DE4()
{
  v0 = String.subscript.getter();
  v4 = sub_1005D9E64(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1005D9E64(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1005D9260(v9, 0), v12 = sub_1005D9FBC(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1005D9FBC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1005DA1DC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1005DA1DC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1005DA1DC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1005DA258(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_1005DA798(&qword_10077E8D8, type metadata accessor for URLResourceKey);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1003F12A0(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1005DA314(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1003F155C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1005DA3AC()
{
  result = qword_100788DF0;
  if (!qword_100788DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788DF0);
  }

  return result;
}

uint64_t sub_1005DA400(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1001F0C48(&qword_100788DF8);

  return sub_1005D8E00(a1, a2, a3);
}

uint64_t sub_1005DA49C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1005DA538();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v6 = *(v4 - 1);

      sub_1003F1D50(&v7, v6, v5);

      v4 += 16;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1005DA538()
{
  result = qword_100788E00;
  if (!qword_100788E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788E00);
  }

  return result;
}

uint64_t sub_1005DA58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_1007850E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005DA5FC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1005DA798(&qword_100781FF8, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1003F2BF0(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1005DA798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005DA7E4()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005DA8A0, 0, 0);
}

uint64_t sub_1005DA8A0()
{
  if (MKBGetDeviceLockState() == 3)
  {
    static Logger.daemon.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Key bag disabled, proceeding as if the device was unlocked since boot", v7, 2u);
    }

    (*(v5 + 8))(v4, v6);
    goto LABEL_6;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
LABEL_6:

    v8 = v0[1];

    return v8();
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_1005DAA7C;

  return withCheckedContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001ALL, 0x80000001006CDFF0, sub_1005DB200, 0, &type metadata for () + 8);
}

uint64_t sub_1005DAA7C()
{

  return _swift_task_switch(sub_1005DAB78, 0, 0);
}

uint64_t sub_1005DAB78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005DABD8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F0C48(&qword_100788E10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = SIG_IGN.getter();
  signal(15, v13);
  sub_100006190(0, &qword_100788E18);
  v14 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
  swift_getObjectType();
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = sub_1005DB080;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100495FFC;
  aBlock[3] = &unk_10076DEA0;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_1005DB120();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v17);
  (*(v21 + 8))(v4, v22);
  (*(v19 + 8))(v7, v20);

  OS_dispatch_source.activate()();
  return swift_unknownObjectRelease();
}

void sub_1005DAF24()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F0C48(&qword_100788E10);
  CheckedContinuation.resume(returning:)();
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  static Logger.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received SIGTERM; shutting down", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  exit(0);
}

void sub_1005DB080()
{
  sub_1001F0C48(&qword_100788E10);

  sub_1005DAF24();
}

uint64_t sub_1005DB120()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1005DB1A8();
  sub_1001F0C48(&qword_100780408);
  sub_100528510();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

unint64_t sub_1005DB1A8()
{
  result = qword_100780400;
  if (!qword_100780400)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780400);
  }

  return result;
}

uint64_t sub_1005DB200(uint64_t a1)
{
  v39 = a1;
  v1 = sub_1001F0C48(&qword_100788E10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v35 = &v35 - v12;
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  static Logger.daemon.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Device wasn't unlocked since boot, waiting for first unlock notification", v17, 2u);
  }

  v37 = *(v8 + 8);
  v38 = v7;
  v37(v14, v7);
  sub_1001F0C48(&qword_100788E20);
  v18 = swift_allocObject();
  *(v18 + 20) = 0;
  v19 = (v18 + 20);
  *(v18 + 16) = 0;
  v20 = (v18 + 16);
  v21 = *(v2 + 16);
  v21(v6, v39, v1);
  v21(v40, v6, v1);
  v22 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v24 = (*(v2 + 32))(v23 + v22, v6, v1);
  __chkstk_darwin(v24);
  *(&v35 - 2) = sub_1005DBB7C;
  *(&v35 - 1) = v23;

  os_unfair_lock_lock((v18 + 20));
  sub_1005DBBFC(&v41);
  os_unfair_lock_unlock((v18 + 20));
  if (v42)
  {
    (*(v2 + 8))(v40, v1);
    v25 = v35;
    static Logger.daemon.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to register for first unlock notification", v28, 2u);
    }

    v37(v25, v38);
    CheckedContinuation.resume(returning:)();
  }

  v29 = v41;
  if (MKBDeviceUnlockedSinceBoot() != 1)
  {
    (*(v2 + 8))(v40, v1);
  }

  static Logger.daemon.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    LODWORD(v39) = v29;
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Device was just unlocked, resuming startup", v32, 2u);
    v29 = v39;
  }

  v37(v36, v38);
  os_unfair_lock_lock(v19);
  v33 = *v20;
  *v20 = 1;
  os_unfair_lock_unlock(v19);
  if ((v33 & 1) == 0)
  {
    notify_cancel(v29);
    CheckedContinuation.resume(returning:)();
  }

  return (*(v2 + 8))(v40, v1);
}

void sub_1005DB770(int a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 20));
  v4 = *(a2 + 16);
  *(a2 + 16) = 1;
  os_unfair_lock_unlock((a2 + 20));
  if ((v4 & 1) == 0)
  {
    notify_cancel(a1);
    sub_1001F0C48(&qword_100788E10);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_1005DB7E4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = -1;
  sub_100006190(0, &qword_10077E680);
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.utility(_:), v6);
  v10 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v9, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1005DBC18;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005DBC28;
  aBlock[3] = &unk_10076DF18;
  v12 = _Block_copy(aBlock);

  LODWORD(a2) = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v10, v12);
  _Block_release(v12);

  v13 = out_token;
  if (a2)
  {
    v14 = 1;
  }

  else
  {
    v14 = out_token == -1;
  }

  v15 = v14;
  if (v14)
  {
    v13 = 0;
  }

  *a3 = v13;
  *(a3 + 4) = v15;
}

uint64_t sub_1005DBA1C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received first unlock notification, resuming startup", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1);
}

void sub_1005DBB7C(int a1)
{
  sub_1001F0C48(&qword_100788E10);
  v3 = *(v1 + 16);

  sub_1005DB770(a1, v3);
}

uint64_t sub_1005DBC28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1005DBC7C()
{
  v1[8] = v0;
  v2 = type metadata accessor for Logger();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1005DBE14, 0, 0);
}

uint64_t sub_1005DBE14()
{
  v1 = *(*(v0 + 64) + 16);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 25);
  os_unfair_lock_unlock((v1 + 28));
  if (v2)
  {
    static Logger.restore.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 72);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[RestoreStateObserver] Restore criteria fulfilled notification has already been sent", v9, 2u);
    }

    (*(v7 + 8))(v6, v8);
    goto LABEL_16;
  }

  if (BYSetupAssistantNeedsToRun())
  {
    *(v0 + 144) = 0;
    result = BYSetupAssistantFinishedDarwinNotification;
    if (!BYSetupAssistantFinishedDarwinNotification)
    {
      __break(1u);
      return result;
    }

    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 112);
    v14 = *(v0 + 64);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001F0FB0();
    (*(v12 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v15 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v11, v13);
    *(v0 + 48) = sub_1005DD388;
    *(v0 + 56) = v14;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1005DBC28;
    *(v0 + 40) = &unk_10076DF68;
    v16 = _Block_copy((v0 + 16));

    v17 = String.utf8CString.getter();

    v18 = notify_register_dispatch((v17 + 32), (v0 + 144), v15, v16);

    _Block_release(v16);

    if (v18)
    {
      v19 = (v0 + 96);
      static Logger.restore.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = v18;
        v23 = "[RestoreStateObserver] Failed to start observing Setup completion due to status: %u";
        v24 = 8;
LABEL_13:
        v29 = *v19;
        _os_log_impl(&_mh_execute_header, v20, v21, v23, v22, v24);

LABEL_15:
        v30 = *(v0 + 72);
        v31 = *(v0 + 80);

        (*(v31 + 8))(v29, v30);
        goto LABEL_16;
      }
    }

    else
    {
      v19 = (v0 + 104);
      static Logger.restore.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v24 = 2;
        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = "[RestoreStateObserver] Started observing Setup completion";
        goto LABEL_13;
      }
    }

    v29 = *v19;
    goto LABEL_15;
  }

  v25 = *(v0 + 136);
  v26 = *(v0 + 64);
  os_unfair_lock_lock((v1 + 28));
  *(v1 + 24) = 1;
  os_unfair_lock_unlock((v1 + 28));
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v26;

  sub_1004A673C(0, 0, v25, &unk_1006B7638, v28);

LABEL_16:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1005DC2B4(int a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  notify_cancel(a1);
  static Logger.restore.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "[RestoreStateObserver] Setup complete notification", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = BYSetupAssistantNeedsToRun() ^ 1;
  v15 = *(a2 + 16);
  os_unfair_lock_lock((v15 + 28));
  *(v15 + 24) = v14;
  os_unfair_lock_unlock((v15 + 28));
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;

  sub_1004A673C(0, 0, v6, &unk_1006B7640, v17);
}

uint64_t sub_1005DC500(void **a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100781408);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, a2, v4);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_100363CB4(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100363CB4(v9 > 1, v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, v4);
  *a1 = v8;
  return result;
}

uint64_t sub_1005DC680(char a1)
{
  v3 = sub_1001F0C48(&qword_100781408);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 16);
  os_unfair_lock_lock((v7 + 28));
  v8 = *(v7 + 16);
  *(v7 + 16) = _swiftEmptyArrayStorage;
  os_unfair_lock_unlock((v7 + 28));
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v18 = v8;
    v14 = v8 + v13;
    v15 = *(v10 + 56);
    v16 = a1 & 1;
    do
    {
      v11(v6, v14, v3);
      v19 = v16;
      CheckedContinuation.resume(returning:)();
      (*(v10 - 8))(v6, v3);
      v14 += v15;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_1005DC824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for NWPath();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1001F0C48(&qword_1007845D0);
  v4[6] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_1007875A8);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = sub_1001F0C48(&qword_1007875B0);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[13] = v8;
  v4[14] = *(v8 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1005DCA54, 0, 0);
}

uint64_t sub_1005DCA54()
{
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  v1 = NWPathMonitor.init()();
  v0[17] = v1;
  static Logger.restore.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[RestoreStateObserver] Waiting for available network interface", v4, 2u);
  }

  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  v11 = *(v7 + 8);
  v0[18] = v11;
  v11(v5, v6);
  sub_1001EF31C(v1);
  AsyncStream.makeAsyncIterator()();
  (*(v9 + 8))(v8, v10);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1005DCC20;
  v13 = v0[10];
  v14 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v14, 0, 0, v13);
}

uint64_t sub_1005DCC20()
{

  return _swift_task_switch(sub_1005DCD1C, 0, 0);
}

uint64_t sub_1005DCD1C()
{
  v1 = v0[6];
  v2 = type metadata accessor for NetworkPath();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_4;
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  (*(v4 + 16))(v3, v1, v5);
  sub_1001F0CF4(v1);
  v6 = NWPath.availableInterfaces.getter();
  (*(v4 + 8))(v3, v5);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = *(v0[2] + 16);
    os_unfair_lock_lock((v8 + 28));
    v9 = *(v8 + 25);
    os_unfair_lock_unlock((v8 + 28));
    if ((v9 & 1) == 0)
    {
      static Logger.restore.getter();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "[RestoreStateObserver] Sending restore criteria fulfilled notification", v17, 2u);
      }

      v18 = v0[18];
      v19 = v0[15];
      v20 = v0[13];
      v21 = v0[11];
      v22 = v0[10];
      v23 = v0[12];

      v18(v19, v20);
      os_unfair_lock_lock((v8 + 28));
      *(v8 + 25) = 1;
      os_unfair_lock_unlock((v8 + 28));
      sub_1005DC680(1);

      (*(v21 + 8))(v23, v22);
      goto LABEL_5;
    }

LABEL_4:
    (*(v0[11] + 8))(v0[12], v0[10]);

LABEL_5:

    v10 = v0[1];

    return v10();
  }

  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1005DCC20;
  v13 = v0[10];
  v14 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v14, 0, 0, v13);
}

void sub_1005DD060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  os_unfair_lock_lock((v2 + 28));
  sub_1005DD2B8((v2 + 16));
  os_unfair_lock_unlock((v2 + 28));
}

uint64_t sub_1005DD0B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_1005DD0DC, 0, 0);
}

uint64_t sub_1005DD0DC()
{
  if (static Task<>.isCancelled.getter())
  {
    **(v0 + 16) = 2;
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_10042B9E8;
    v4 = *(v0 + 24);

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 40, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_1005DD2B0, v4, &type metadata for Bool);
  }
}

uint64_t sub_1005DD1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10042BBC4;

  return sub_10042A5A0(a2, a3);
}

uint64_t sub_1005DD2D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1005DC824(a1, v4, v5, v6);
}

uint64_t sub_1005DD398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_1005DC824(a1, v4, v5, v6);
}

uint64_t sub_1005DD44C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 1;
  v11 = sub_10036BB34(1);
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 stringForKey:v13];

    if (!v14)
    {
      return 1;
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        return 1;
      }
    }

    static Logger.restore.getter();
    v20 = a3;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v7;
      v25 = v24;
      v26 = swift_slowAlloc();
      v30 = v26;
      *v23 = 138412546;
      *(v23 + 4) = v20;
      *v25 = v20;
      *(v23 + 12) = 2080;
      v27 = v20;
      *(v23 + 14) = sub_1002346CC(a1, a2, &v30);
      _os_log_impl(&_mh_execute_header, v21, v22, "[RestoreStateObserver] [%@] Already displayed prompts for build: %s", v23, 0x16u);
      sub_1001F8084(v25);

      sub_10000710C(v26);

      (*(v29 + 8))(v9, v6);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    return 0;
  }

  return v10;
}

uint64_t sub_1005DD728(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() standardUserDefaults];
  if (v10)
  {
    v11 = v10;
    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    [v11 setObject:v12 forKey:v13];
  }

  static Logger.restore.getter();
  v14 = a3;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v6;
    v19 = a1;
    v20 = v18;
    v21 = swift_slowAlloc();
    v25 = v21;
    *v17 = 138412546;
    *(v17 + 4) = v14;
    *v20 = v14;
    *(v17 + 12) = 2080;
    v22 = v14;
    *(v17 + 14) = sub_1002346CC(v19, a2, &v25);
    _os_log_impl(&_mh_execute_header, v15, v16, "[RestoreStateObserver] [%@] Updating last marketplace restore dialogs to build: %s", v17, 0x16u);
    sub_1001F8084(v20);

    sub_10000710C(v21);

    return (*(v7 + 8))(v9, v24);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1005DD9B4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1005DD9C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1005DDA10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005DDA70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v8 - 8);
  v133 = &v111 - v9;
  v10 = type metadata accessor for Restore();
  v11 = v10[10];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v131 = v11;
  v129 = v12;
  v125 = v13 + 56;
  v126 = v14;
  (v14)(a4 + v11, 1, 1);
  v15 = v10[13];
  v119 = (a4 + v10[12]);
  v16 = (a4 + v15);
  *v16 = 0;
  v16[1] = 0;
  v112 = (a4 + v15);
  v17 = (a4 + v10[14]);
  *v17 = 0;
  v17[1] = 0;
  v113 = v17;
  v18 = v10[16];
  v118 = a4 + v10[15];
  v120 = (a4 + v18);
  v19 = v10[17];
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v124 = v19;
  v22(a4 + v19, 1, 1, v20);
  v24 = (a4 + v10[19]);
  *v24 = 0;
  v24[1] = 0;
  v116 = v24;
  v25 = (a4 + v10[20]);
  *v25 = 0;
  v25[1] = 0;
  v114 = v25;
  v26 = a4 + v10[21];
  *v26 = 0;
  v115 = v26;
  *(v26 + 8) = 1;
  v123 = v10[23];
  v130 = v20;
  v127 = v23;
  v128 = v22;
  v22(a4 + v123, 1, 1, v20);
  UUID.init()();
  v27 = v10[7];
  v28 = type metadata accessor for AppInstallRequestType();
  v121 = *(v28 - 8);
  v122 = v28;
  v29 = *(v121 + 16);
  v134 = a2;
  v29(a4 + v27, a2);
  *(a4 + v10[6]) = a3;
  v30 = a3;
  v31 = [a1 identity];
  v32 = [v31 bundleID];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = (a4 + v10[9]);
  *v36 = v33;
  v36[1] = v35;
  sub_1001F0C48(&qword_100784460);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10069F6E0;

  v38 = LogKey.description.getter();
  v40 = v39;

  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  *(v37 + 48) = v33;
  *(v37 + 56) = v35;
  *(a4 + v10[22]) = sub_10046DD04() & 1;
  sub_100235E64();
  v132 = a1;
  v41 = [a1 identity];
  v42 = [v41 bundleID];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v46 = sub_10060BC54(v43, v45, 0, 0, 3);

  if (v46)
  {
    v48 = v118;
    v47 = v119;
    v117 = v46;
    v49 = [v46 iTunesMetadata];
    v50 = [v49 distributorInfo];
    v51 = [v50 domain];

    if (v51)
    {
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    *v47 = v52;
    v47[1] = v54;
    v58 = [v49 distributorInfo];
    v59 = [v58 distributorID];

    if (v59)
    {
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v63 = v112;
    *v112 = v60;
    v63[1] = v62;
    v135 = [v49 storeItemIdentifier];
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = *(v37 + 16);
    v66 = *(v37 + 24);
    if (v67 >= v66 >> 1)
    {
      v119 = v64;
      v109 = v65;
      v110 = sub_100009530((v66 > 1), v67 + 1, 1, v37);
      v65 = v109;
      v37 = v110;
      v64 = v119;
    }

    *(v37 + 16) = v67 + 1;
    v68 = v37 + 16 * v67;
    *(v68 + 32) = v64;
    *(v68 + 40) = v65;
    *v48 = [v49 storeItemIdentifier];
    *(v48 + 8) = 0;
    v69 = [v117 iTunesMetadata];
    v70 = [v69 distributorInfo];

    v71 = [v70 accountID];
    if (v71)
    {
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;
    }

    else
    {
      v72 = 0;
      v74 = 0;
    }

    v75 = v120;
    v76 = v113;
    *v113 = v72;
    v76[1] = v74;
    v77 = v117;
    v78 = [v117 iTunesMetadata];
    v79 = [v78 versionIdentifier];

    *v75 = v79;
    *(v75 + 8) = 0;
    v80 = [v49 distributorInfo];
    v81 = [v80 marketplaceDomain];

    if (v81)
    {
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;
    }

    else
    {
      v82 = 0;
      v84 = 0;
    }

    v85 = v114;
    *v114 = v82;
    v85[1] = v84;
    v86 = [v49 distributorInfo];
    v87 = [v86 marketplaceItemID];

    if (v87)
    {
      v88 = [v87 unsignedLongLongValue];

      v89 = v88 == 0;
    }

    else
    {
      v88 = 0;
      v89 = 1;
    }

    v90 = v115;
    *v115 = v88;
    *(v90 + 8) = v89;
    v91 = [v49 distributorInfo];
    v92 = [v91 localizedDistributorName];

    if (v92)
    {
      v93 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v93 + 16) && (v94 = sub_10052213C(0, 0xE000000000000000), (v95 & 1) != 0))
      {
        v96 = (*(v93 + 56) + 16 * v94);
        v97 = *v96;
        v92 = v96[1];
      }

      else
      {

        v97 = 0;
        v92 = 0;
      }
    }

    else
    {

      v97 = 0;
    }

    v98 = v116;
    *v116 = v97;
    v98[1] = v92;
  }

  else
  {
    v56 = v118;
    v55 = v119;
    *v119 = 0;
    v55[1] = 0;
    *v56 = 0;
    *(v56 + 8) = 1;
    v57 = v120;
    *v120 = 0;
    *(v57 + 8) = 1;
  }

  v99 = (a4 + v10[18]);
  v100 = objc_allocWithZone(type metadata accessor for LogKey());
  *(a4 + v10[5]) = LogKey.init(strings:)();
  v101 = v132;
  v102 = [v132 uniqueIdentifier];
  v103 = v133;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v121 + 8))(v134, v122);
  v126(v103, 0, 1, v129);
  sub_10020AD90(v103, a4 + v131, &unk_100780A00);
  v104 = v130;
  v105 = v128;
  v128(a4 + v10[8], 1, 1, v130);
  v106 = v124;
  sub_1000032A8(a4 + v124, &unk_1007809F0);
  v105(a4 + v106, 1, 1, v104);
  v107 = v123;
  sub_1000032A8(a4 + v123, &unk_1007809F0);
  result = (v105)(a4 + v107, 1, 1, v104);
  *v99 = 0;
  v99[1] = 0;
  *(a4 + v10[11]) = 0;
  return result;
}

unint64_t sub_1005DE368(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x4B676F4C6C6C7566;
      break;
    case 2:
      result = 0x79654B676F6CLL;
      break;
    case 3:
      result = 0x546C6C6174736E69;
      break;
    case 4:
      result = 0x556B726F77747261;
      break;
    case 5:
      result = 0x4449656C646E7562;
      break;
    case 6:
      result = 0x616E6964726F6F63;
      break;
    case 7:
      result = 0x6574617473;
      break;
    case 8:
      result = 0x6E69616D6F64;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x49746E756F636361;
      break;
    case 11:
      result = 0x657449656C707061;
      break;
    case 12:
      result = 0x726556656C707061;
      break;
    case 13:
      result = 0x4C5255706461;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x6572616853707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005DE5AC(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100788EE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_1005DFC7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  type metadata accessor for UUID();
  sub_100006EEC(&qword_1007849A0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for Restore();
    v17 = v3;
    v18 = v9;
    v19 = *(v3 + *(v9 + 20));
    v21 = 1;
    type metadata accessor for LogKey();
    sub_100006EEC(&qword_1007853C8, &type metadata accessor for LogKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = *(v17 + v18[6]);
    v21 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 3;
    type metadata accessor for AppInstallRequestType();
    sub_100006EEC(&qword_1007853A8, &type metadata accessor for AppInstallRequestType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 4;
    type metadata accessor for URL();
    sub_100006EEC(&qword_100782898, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19) = *(v17 + v18[11]);
    v21 = 7;
    sub_1005DFD24();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v19) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v19) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = (v17 + v18[15]);
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v19 = v11;
    v20 = v10;
    v21 = 11;
    sub_1004DA018();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v17 + v18[16]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v19 = v13;
    v20 = v12;
    v21 = 12;
    sub_1004D9F70();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19) = 13;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v19) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v19) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = (v17 + v18[21]);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    v19 = v15;
    v20 = v14;
    v21 = 17;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = 19;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005DEC98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v3 - 8);
  v90 = &v80 - v4;
  v5 = sub_1001F0C48(&unk_1007809F0);
  v6 = __chkstk_darwin(v5 - 8);
  v87 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v89 = &v80 - v9;
  __chkstk_darwin(v8);
  v91 = &v80 - v10;
  v11 = type metadata accessor for AppInstallRequestType();
  v92 = *(v11 - 8);
  v93 = v11;
  __chkstk_darwin(v11);
  v95 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v96 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001F0C48(&qword_100788EC8);
  v97 = *(v16 - 8);
  v98 = v16;
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  v19 = type metadata accessor for Restore();
  v20 = __chkstk_darwin(v19);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 40);
  v94 = v14;
  v24 = *(v14 + 56);
  v102 = v23;
  v24(&v22[v23], 1, 1, v13);
  v25 = *(v19 + 68);
  v26 = type metadata accessor for URL();
  v27 = *(*(v26 - 8) + 56);
  v101 = v25;
  v27(&v22[v25], 1, 1, v26);
  v100 = *(v19 + 92);
  v103 = v22;
  v27(&v22[v100], 1, 1, v26);
  sub_100006D8C(a1, a1[3]);
  sub_1005DFC7C();
  v99 = v18;
  v28 = v104;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v104 = v28;
    sub_10000710C(a1);
    v32 = v100;
    v34 = v102;
    v33 = v103;
LABEL_4:
    sub_1000032A8(&v33[v34], &unk_100780A00);

    sub_1000032A8(&v33[v101], &unk_1007809F0);

    return sub_1000032A8(&v33[v32], &unk_1007809F0);
  }

  v29 = v95;
  v84 = v26;
  v85 = v19;
  v86 = a1;
  LOBYTE(v105) = 0;
  v30 = sub_100006EEC(&qword_100784988, &type metadata accessor for UUID);
  v31 = v96;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v104 = v30;
  v36 = v103;
  (*(v94 + 32))(v103, v31, v13);
  type metadata accessor for LogKey();
  v107 = 1;
  sub_100006EEC(&qword_1007853C0, &type metadata accessor for LogKey);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v83 = v13;
  v37 = v85;
  *&v36[v85[5]] = v105;
  v107 = 2;
  v81 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 = v102;
  *&v36[v37[6]] = v105;
  LOBYTE(v105) = 3;
  sub_100006EEC(&qword_1007853A0, &type metadata accessor for AppInstallRequestType);
  v39 = v29;
  v40 = v93;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v92 + 32))(&v36[v37[7]], v39, v40);
  LOBYTE(v105) = 4;
  sub_100006EEC(&qword_100781BB8, &type metadata accessor for URL);
  v41 = v91;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1002321B0(v41, &v36[v37[8]]);
  LOBYTE(v105) = 5;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = &v36[v37[9]];
  *v43 = v42;
  v43[1] = v44;
  LOBYTE(v105) = 6;
  v45 = v90;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10020AD90(v45, &v36[v38], &unk_100780A00);
  v107 = 7;
  sub_1005DFCD0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36[v37[11]] = v105;
  LOBYTE(v105) = 8;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v104 = 0;
  v49 = &v36[v37[12]];
  *v49 = v46;
  v49[1] = v47;
  v82 = v47;
  LOBYTE(v105) = 9;
  v50 = v104;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v96 = v52;
  v104 = v50;
  if (v50)
  {
    (*(v97 + 8))(v99, v98);
    v90 = 0;
    v91 = 0;
    v95 = 0;
    v96 = 0;
    goto LABEL_14;
  }

  v53 = &v103[v85[13]];
  v54 = v96;
  *v53 = v51;
  v53[1] = v54;
  LOBYTE(v105) = 10;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v95 = v56;
  v104 = 0;
  v57 = &v103[v85[14]];
  *v57 = v55;
  v57[1] = v56;
  v107 = 11;
  sub_1004D9FC4();
  v58 = v104;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v104 = v58;
  if (v58 || (v59 = &v103[v85[15]], v60 = v106, *v59 = v105, v59[8] = v60, v107 = 12, sub_1003818F0(), v61 = v104, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v104 = v61) != 0) || (v62 = &v103[v85[16]], v63 = v106, *v62 = v105, v62[8] = v63, LOBYTE(v105) = 13, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), v104 = 0, sub_10020AD90(v89, &v103[v101], &unk_1007809F0), LOBYTE(v105) = 14, v64 = v104, v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v91 = v66, (v104 = v64) != 0))
  {
    (*(v97 + 8))(v99, v98);
    v90 = 0;
    v91 = 0;
LABEL_14:
    v34 = v102;
    v33 = v103;
    v67 = v85;
    v48 = v81;
    sub_10000710C(v86);
    (*(v94 + 8))(v33, v83);
    if (!v48)
    {
    }

    (*(v92 + 8))(&v33[v67[7]], v93);
    sub_1000032A8(&v33[v67[8]], &unk_1007809F0);

    v32 = v100;
    goto LABEL_4;
  }

  v68 = &v103[v85[18]];
  v69 = v91;
  *v68 = v65;
  v68[1] = v69;
  LOBYTE(v105) = 15;
  v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v90 = v71;
  v104 = 0;
  v72 = &v103[v85[19]];
  *v72 = v70;
  v72[1] = v71;
  LOBYTE(v105) = 16;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v104 = 0;
  v74 = &v103[v85[20]];
  *v74 = v73;
  v74[1] = v75;
  v107 = 17;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v104 = 0;
  v76 = &v103[v85[21]];
  v77 = v106;
  *v76 = v105;
  v76[8] = v77;
  LOBYTE(v105) = 18;
  v78 = KeyedDecodingContainer.decode(_:forKey:)();
  v104 = 0;
  v103[v85[22]] = v78 & 1;
  LOBYTE(v105) = 19;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v104 = 0;
  (*(v97 + 8))(v99, v98);
  v79 = v103;
  sub_10020AD90(v87, &v103[v100], &unk_1007809F0);
  sub_1001F75AC(v79, v88);
  sub_10000710C(v86);
  return sub_1001F7610(v79);
}

uint64_t sub_1005DFBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005E0BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005DFBD4(uint64_t a1)
{
  v2 = sub_1005DFC7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005DFC10(uint64_t a1)
{
  v2 = sub_1005DFC7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005DFC7C()
{
  result = qword_100788ED0;
  if (!qword_100788ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788ED0);
  }

  return result;
}

unint64_t sub_1005DFCD0()
{
  result = qword_100788ED8;
  if (!qword_100788ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788ED8);
  }

  return result;
}

unint64_t sub_1005DFD24()
{
  result = qword_100788EE8;
  if (!qword_100788EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788EE8);
  }

  return result;
}

uint64_t sub_1005DFD78(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_1001F0C48(&qword_100789048);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v29 - v4;
  v5 = sub_1001F0C48(&qword_100789050);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = sub_1001F0C48(&qword_100789058);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v29 - v8;
  v9 = sub_1001F0C48(&qword_100789060);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1001F0C48(&qword_100789068);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v41 = sub_1001F0C48(&qword_100789070);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v29 - v16;
  sub_100006D8C(a1, a1[3]);
  sub_1005E1B50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_1005E1CA0();
      v28 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_1005E1CF4();
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_1005E1C4C();
    v26 = v29;
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_1005E1BF8();
    v19 = v32;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_1005E1BA4();
    v19 = v35;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

uint64_t sub_1005E02EC(uint64_t a1)
{
  v2 = sub_1005E1BF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E0328(uint64_t a1)
{
  v2 = sub_1005E1BF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005E0364(uint64_t a1)
{
  v2 = sub_1005E1CA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E03A0(uint64_t a1)
{
  v2 = sub_1005E1CA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005E03DC()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0xD000000000000015;
  v4 = 0x61727473746F6F62;
  if (v1 != 3)
  {
    v4 = 0x516F547964616572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x61727473746F6F62;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005E0490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005E1224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005E04B8(uint64_t a1)
{
  v2 = sub_1005E1B50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E04F4(uint64_t a1)
{
  v2 = sub_1005E1B50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005E0530(uint64_t a1)
{
  v2 = sub_1005E1CF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E056C(uint64_t a1)
{
  v2 = sub_1005E1CF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005E05A8(uint64_t a1)
{
  v2 = sub_1005E1BA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E05E4(uint64_t a1)
{
  v2 = sub_1005E1BA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005E0620(uint64_t a1)
{
  v2 = sub_1005E1C4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E065C(uint64_t a1)
{
  v2 = sub_1005E1C4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005E0698@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005E13EC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Restore.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Restore.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1005E0868()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LogKey();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppInstallRequestType();
      if (v2 <= 0x3F)
      {
        sub_1005E0A2C(319, &qword_100780B40, &type metadata accessor for URL);
        if (v3 <= 0x3F)
        {
          sub_1005E0A2C(319, &qword_100785520, &type metadata accessor for UUID);
          if (v4 <= 0x3F)
          {
            sub_10000585C(319, &qword_1007819E0);
            if (v5 <= 0x3F)
            {
              sub_10000585C(319, &qword_100785518);
              if (v6 <= 0x3F)
              {
                sub_10000585C(319, &qword_100782068);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1005E0A2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1005E0A84()
{
  result = qword_100788FC8;
  if (!qword_100788FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788FC8);
  }

  return result;
}

unint64_t sub_1005E0ADC()
{
  result = qword_100788FD0;
  if (!qword_100788FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788FD0);
  }

  return result;
}

unint64_t sub_1005E0B34()
{
  result = qword_100788FD8;
  if (!qword_100788FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788FD8);
  }

  return result;
}

unint64_t sub_1005E0B8C()
{
  result = qword_100788FE0;
  if (!qword_100788FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788FE0);
  }

  return result;
}

uint64_t sub_1005E0BE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B676F4C6C6C7566 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546C6C6174736E69 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616E6964726F6F63 && a2 == 0xED00004449726F74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006CE0B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x726556656C707061 && a2 == 0xEE0044496E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x4C5255706461 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001006C3690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006CE0D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006CE0F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006CE110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006CE130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255)
  {

    return 19;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1005E1224(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61727473746F6F62 && a2 == 0xED0000676E697070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006CE150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61727473746F6F62 && a2 == 0xEC00000064657070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x516F547964616572 && a2 == 0xEC00000065756575)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1005E13EC(void *a1)
{
  v45 = sub_1001F0C48(&qword_100788FE8);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v35 - v2;
  v3 = sub_1001F0C48(&qword_100788FF0);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - v4;
  v5 = sub_1001F0C48(&qword_100788FF8);
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v48 = &v35 - v6;
  v7 = sub_1001F0C48(&qword_100789000);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1001F0C48(&qword_100789008);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1001F0C48(&qword_100789010);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  sub_100006D8C(a1, v17);
  sub_1005E1B50();
  v18 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_1005CD73C();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = type metadata accessor for DecodingError();
    v14 = swift_allocError();
    v31 = v30;
    sub_1001F0C48(&qword_1007896A0);
    *v31 = &type metadata for Restore.RestoreState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    sub_10000710C(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_1005E1CA0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_1005E1CF4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_1005E1C4C();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_1005E1BF8();
      v27 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_1005E1BA4();
      v34 = v47;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  sub_10000710C(v49);
  return v14;
}

unint64_t sub_1005E1B50()
{
  result = qword_100789018;
  if (!qword_100789018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789018);
  }

  return result;
}

unint64_t sub_1005E1BA4()
{
  result = qword_100789020;
  if (!qword_100789020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789020);
  }

  return result;
}

unint64_t sub_1005E1BF8()
{
  result = qword_100789028;
  if (!qword_100789028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789028);
  }

  return result;
}

unint64_t sub_1005E1C4C()
{
  result = qword_100789030;
  if (!qword_100789030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789030);
  }

  return result;
}

unint64_t sub_1005E1CA0()
{
  result = qword_100789038;
  if (!qword_100789038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789038);
  }

  return result;
}

unint64_t sub_1005E1CF4()
{
  result = qword_100789040;
  if (!qword_100789040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789040);
  }

  return result;
}

unint64_t sub_1005E1DAC()
{
  result = qword_100789078;
  if (!qword_100789078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789078);
  }

  return result;
}

unint64_t sub_1005E1E04()
{
  result = qword_100789080;
  if (!qword_100789080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789080);
  }

  return result;
}

unint64_t sub_1005E1E5C()
{
  result = qword_100789088;
  if (!qword_100789088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789088);
  }

  return result;
}

unint64_t sub_1005E1EB4()
{
  result = qword_100789090;
  if (!qword_100789090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789090);
  }

  return result;
}

unint64_t sub_1005E1F0C()
{
  result = qword_100789098;
  if (!qword_100789098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789098);
  }

  return result;
}

unint64_t sub_1005E1F64()
{
  result = qword_1007890A0;
  if (!qword_1007890A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007890A0);
  }

  return result;
}

unint64_t sub_1005E1FBC()
{
  result = qword_1007890A8;
  if (!qword_1007890A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007890A8);
  }

  return result;
}

unint64_t sub_1005E2014()
{
  result = qword_1007890B0;
  if (!qword_1007890B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007890B0);
  }

  return result;
}

unint64_t sub_1005E206C()
{
  result = qword_1007890B8;
  if (!qword_1007890B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007890B8);
  }

  return result;
}

unint64_t sub_1005E20C4()
{
  result = qword_1007890C0;
  if (!qword_1007890C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007890C0);
  }

  return result;
}

unint64_t sub_1005E211C()
{
  result = qword_1007890C8;
  if (!qword_1007890C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007890C8);
  }

  return result;
}

unint64_t sub_1005E2174()
{
  result = qword_1007890D0;
  if (!qword_1007890D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007890D0);
  }

  return result;
}

unint64_t sub_1005E21CC()
{
  result = qword_1007890D8;
  if (!qword_1007890D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007890D8);
  }

  return result;
}

uint64_t sub_1005E2220(char a1)
{
  if (a1)
  {
    v2 = *(v1 + *(type metadata accessor for IdentifiableAvailableUpdate(0) + 44));
    String.append(_:)(v2);
    v4 = 0x203A545649202CLL;
    v3 = 0xE700000000000000;
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(53);
  v5._countAndFlagsBits = 0x4920656C646E7562;
  v5._object = 0xEB00000000203A44;
  String.append(_:)(v5);
  String.append(_:)(v1[1]);
  v6._countAndFlagsBits = 0x49206D657469202CLL;
  v6._object = 0xEB00000000203A44;
  String.append(_:)(v6);
  String.append(_:)(v1[2]);
  v7._countAndFlagsBits = 0x6F6973726576202CLL;
  v7._object = 0xEE00203A4449206ELL;
  String.append(_:)(v7);
  String.append(_:)(v1[3]);
  v8._countAndFlagsBits = 0x203A504441202CLL;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  type metadata accessor for IdentifiableAvailableUpdate(0);
  type metadata accessor for URL();
  sub_1005E3878(&qword_10077EE18, &type metadata accessor for URL);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = v4;
  v10._object = v3;
  String.append(_:)(v10);

  return 0;
}

uint64_t sub_1005E2414()
{
  _StringGuts.grow(_:)(17);
  countAndFlagsBits = v0[1]._countAndFlagsBits;

  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(v0[2]);
  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  String.append(_:)(v0[3]);
  v4._countAndFlagsBits = 2108704;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  v5 = type metadata accessor for IdentifiableAvailableUpdate(0);
  String.append(_:)(*(v0 + *(v5 + 40)));
  v6._countAndFlagsBits = 40;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  String.append(_:)(*(v0 + *(v5 + 36)));
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return countAndFlagsBits;
}

void sub_1005E2580()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10037F89C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005E2640()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10037F89C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1005E26DC(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100789238);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_1005E3474();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_1001F0C48(&qword_100789248);
  sub_1005E34C8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[5] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005E28A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v3 - 8);
  v5 = v34 - v4;
  v6 = type metadata accessor for URL();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F0C48(&qword_100789288);
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = type metadata accessor for AvailableUpdate(0);
  __chkstk_darwin(v12);
  v14 = (v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v44 = a1;
  sub_100006D8C(a1, v15);
  sub_1005E38C0();
  v42 = v11;
  v16 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_10000710C(v44);
  }

  v17 = v8;
  v43 = v5;
  v18 = v39;
  v19 = v40;
  v20 = v41;
  v51 = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v21;
  v50 = 1;
  v14[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v14[3] = v22;
  v49 = 2;
  v23 = sub_1005E3878(&qword_100781BB8, &type metadata accessor for URL);
  v37 = v14;
  v24 = v23;
  v36 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v24;
  v25 = v37;
  (*(v20 + 32))(v37 + *(v12 + 32), v17, v6);
  v48 = 3;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v12;
  v27 = (v25 + *(v12 + 36));
  *v27 = v26;
  v27[1] = v28;
  v47 = 4;
  v25[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v25[5] = v29;
  v46 = 5;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v34[1] = 0;
  v25[6] = v30;
  v25[7] = v31;
  v45 = 6;
  v32 = v43;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 8))(v42, v19);
  sub_1002321B0(v32, v25 + *(v35 + 40));
  sub_1005E3914(v25, v38);
  sub_10000710C(v44);
  return sub_1005E3978(v25);
}

uint64_t sub_1005E2E48(uint64_t a1)
{
  v2 = sub_1005E3474();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E2E84(uint64_t a1)
{
  v2 = sub_1005E3474();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005E2EF0()
{
  String.hash(into:)();
}

unint64_t sub_1005E3034@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005E35A0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005E3064@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000064496DLL;
  v4 = 0x657449656C707061;
  v5 = 0x80000001006C3B50;
  v6 = 0x6572616853707061;
  if (v2 == 5)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xEB000000004C5255;
  }

  v7 = 0x80000001006C3690;
  v8 = 0xD000000000000018;
  result = 0x6556656C646E7562;
  if (v2 != 3)
  {
    v8 = 0x6556656C646E7562;
    v7 = 0xED00006E6F697372;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xEE0064496E6F6973;
  v11 = 0xD00000000000001ELL;
  if (v2 == 1)
  {
    v11 = 0x726556656C707061;
  }

  else
  {
    v10 = 0x80000001006C3670;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_1005E3170()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0x6572616853707061;
  if (v1 == 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0x6556656C646E7562;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ELL;
  if (v1 == 1)
  {
    v5 = 0x726556656C707061;
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

unint64_t sub_1005E3278@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1005E35A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005E32A0(uint64_t a1)
{
  v2 = sub_1005E38C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E32DC(uint64_t a1)
{
  v2 = sub_1005E38C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005E3348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73657461647075 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1005E33D0(uint64_t a1)
{
  v2 = sub_1005E3770();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005E340C(uint64_t a1)
{
  v2 = sub_1005E3770();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1005E3448@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1005E35EC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1005E3474()
{
  result = qword_100789240;
  if (!qword_100789240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789240);
  }

  return result;
}

unint64_t sub_1005E34C8()
{
  result = qword_100789250;
  if (!qword_100789250)
  {
    sub_1001F76D0(&qword_100789248);
    sub_1005E354C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789250);
  }

  return result;
}

unint64_t sub_1005E354C()
{
  result = qword_100789258;
  if (!qword_100789258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789258);
  }

  return result;
}

unint64_t sub_1005E35A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075B230, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void *sub_1005E35EC(void *a1)
{
  v3 = sub_1001F0C48(&qword_100789260);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100006D8C(a1, a1[3]);
  sub_1005E3770();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000710C(a1);
  }

  else
  {
    sub_1001F0C48(&qword_100789270);
    sub_1005E37C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000710C(a1);
  }

  return v7;
}

unint64_t sub_1005E3770()
{
  result = qword_100789268;
  if (!qword_100789268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789268);
  }

  return result;
}

unint64_t sub_1005E37C4()
{
  result = qword_100789278;
  if (!qword_100789278)
  {
    sub_1001F76D0(&qword_100789270);
    sub_1005E3878(&qword_100789280, type metadata accessor for AvailableUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789278);
  }

  return result;
}

uint64_t sub_1005E3878(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005E38C0()
{
  result = qword_100789290;
  if (!qword_100789290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789290);
  }

  return result;
}

uint64_t sub_1005E3914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailableUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E3978(uint64_t a1)
{
  v2 = type metadata accessor for AvailableUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005E3A08()
{
  result = qword_100789298;
  if (!qword_100789298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789298);
  }

  return result;
}

unint64_t sub_1005E3A60()
{
  result = qword_1007892A0;
  if (!qword_1007892A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007892A0);
  }

  return result;
}

unint64_t sub_1005E3AB8()
{
  result = qword_1007892A8;
  if (!qword_1007892A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007892A8);
  }

  return result;
}

unint64_t sub_1005E3B10()
{
  result = qword_1007892B0;
  if (!qword_1007892B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007892B0);
  }

  return result;
}

unint64_t sub_1005E3B68()
{
  result = qword_1007892B8;
  if (!qword_1007892B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007892B8);
  }

  return result;
}

unint64_t sub_1005E3BC0()
{
  result = qword_1007892C0;
  if (!qword_1007892C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007892C0);
  }

  return result;
}

unint64_t sub_1005E3C18()
{
  result = qword_1007892C8;
  if (!qword_1007892C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007892C8);
  }

  return result;
}

unint64_t sub_1005E3C70()
{
  result = qword_1007892D0;
  if (!qword_1007892D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007892D0);
  }

  return result;
}

unint64_t sub_1005E3CC8()
{
  result = qword_1007892D8;
  if (!qword_1007892D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007892D8);
  }

  return result;
}

void sub_1005E3DD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  sub_1005E8ECC(a1, a2, &v21 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &unk_100780A00);
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, &v23);
    v12 = (a2 + 24);
    if (v3)
    {
      os_unfair_lock_unlock(v12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v12);
      if (*(&v24 + 1) == 1)
      {
        sub_1000032A8(&v23, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v14 = v13;
        *(v13 + 24) = &type metadata for AppInstallEntity.Property;
        *(v13 + 32) = sub_1002360B0();
        *v14 = a1;
        v14[40] = 0;
        swift_willThrow();
      }

      else
      {
        v25[0] = v23;
        v25[1] = v24;
        sub_100005934(v25, &v21, &qword_100783A30);
        if (v22)
        {
          sub_1001F6498(&v21, &v23);
          sub_100513858();
          swift_allocError();
          v16 = v15;
          sub_100006D8C(&v23, *(&v24 + 1));
          swift_getDynamicType();
          v17 = _typeName(_:qualified:)();
          *v16 = 1145656661;
          *(v16 + 8) = 0xE400000000000000;
          *(v16 + 16) = v17;
          *(v16 + 24) = v18;
          *(v16 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v23);
        }

        else
        {
          sub_1000032A8(&v21, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v20 = v19;
          *(v19 + 24) = &type metadata for AppInstallEntity.Property;
          *(v19 + 32) = sub_1002360B0();
          *v20 = a1;
          v20[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v25, &qword_100783A30);
      }
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
  }
}

void sub_1005E410C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1001F0C48(&unk_1007843C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  sub_1005EB6E8(a1, a2, sub_100234CBC, sub_1005EDB8C, &type metadata accessor for AppInstallRequestType, &v21 - v8);
  v10 = type metadata accessor for AppInstallRequestType();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &unk_1007843C0);
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, &v23);
    v12 = (a2 + 24);
    if (v3)
    {
      os_unfair_lock_unlock(v12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v12);
      if (*(&v24 + 1) == 1)
      {
        sub_1000032A8(&v23, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v14 = v13;
        *(v13 + 24) = &type metadata for AppInstallEntity.Property;
        *(v13 + 32) = sub_1002360B0();
        *v14 = a1;
        v14[40] = 0;
        swift_willThrow();
      }

      else
      {
        v25[0] = v23;
        v25[1] = v24;
        sub_100005934(v25, &v21, &qword_100783A30);
        if (v22)
        {
          sub_1001F6498(&v21, &v23);
          sub_100513858();
          swift_allocError();
          v16 = v15;
          sub_100006D8C(&v23, *(&v24 + 1));
          swift_getDynamicType();
          v17 = _typeName(_:qualified:)();
          *v16 = 0xD000000000000015;
          *(v16 + 8) = 0x80000001006CE2B0;
          *(v16 + 16) = v17;
          *(v16 + 24) = v18;
          *(v16 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v23);
        }

        else
        {
          sub_1000032A8(&v21, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v20 = v19;
          *(v19 + 24) = &type metadata for AppInstallEntity.Property;
          *(v19 + 32) = sub_1002360B0();
          *v20 = a1;
          v20[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v25, &qword_100783A30);
      }
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
  }
}

void sub_1005E4488(uint64_t a1, uint64_t a2)
{
  if (sub_1005EB5A0(a1, a2, sub_100234CBC, sub_1005ED9A8) == 2)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, &v16);
    v5 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v5);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      if (*(&v17 + 1) == 1)
      {
        sub_1000032A8(&v16, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v7 = v6;
        *(v6 + 24) = &type metadata for AppInstallEntity.Property;
        *(v6 + 32) = sub_1002360B0();
        *v7 = a1;
        v7[40] = 0;
        swift_willThrow();
      }

      else
      {
        v18[0] = v16;
        v18[1] = v17;
        sub_100005934(v18, &v14, &qword_100783A30);
        if (v15)
        {
          sub_1001F6498(&v14, &v16);
          sub_100513858();
          swift_allocError();
          v9 = v8;
          sub_100006D8C(&v16, *(&v17 + 1));
          swift_getDynamicType();
          v10 = _typeName(_:qualified:)();
          *v9 = 0xD000000000000010;
          *(v9 + 8) = 0x80000001006CE290;
          *(v9 + 16) = v10;
          *(v9 + 24) = v11;
          *(v9 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v16);
        }

        else
        {
          sub_1000032A8(&v14, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v13 = v12;
          *(v12 + 24) = &type metadata for AppInstallEntity.Property;
          *(v12 + 32) = sub_1002360B0();
          *v13 = a1;
          v13[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v18, &qword_100783A30);
      }
    }
  }
}

void sub_1005E470C(uint64_t a1, uint64_t a2)
{
  if (!sub_1005E9730(a1, a2, sub_1005383F8, 0x79654B676F4CLL, 0xE600000000000000))
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, &v16);
    v5 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v5);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      if (*(&v17 + 1) == 1)
      {
        sub_1000032A8(&v16, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v7 = v6;
        *(v6 + 24) = &type metadata for AppInstallEntity.Property;
        *(v6 + 32) = sub_1002360B0();
        *v7 = a1;
        v7[40] = 0;
        swift_willThrow();
      }

      else
      {
        v18[0] = v16;
        v18[1] = v17;
        sub_100005934(v18, &v14, &qword_100783A30);
        if (v15)
        {
          sub_1001F6498(&v14, &v16);
          sub_100513858();
          swift_allocError();
          v9 = v8;
          sub_100006D8C(&v16, *(&v17 + 1));
          swift_getDynamicType();
          v10 = _typeName(_:qualified:)();
          *v9 = 0x79654B676F4CLL;
          *(v9 + 8) = 0xE600000000000000;
          *(v9 + 16) = v10;
          *(v9 + 24) = v11;
          *(v9 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v16);
        }

        else
        {
          sub_1000032A8(&v14, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v13 = v12;
          *(v12 + 24) = &type metadata for AppInstallEntity.Property;
          *(v12 + 32) = sub_1002360B0();
          *v13 = a1;
          v13[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v18, &qword_100783A30);
      }
    }
  }
}

void sub_1005E49C8(uint64_t a1, uint64_t a2)
{
  if (sub_1005E9074(a1, a2) == 8)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, &v16);
    v5 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v5);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      if (*(&v17 + 1) == 1)
      {
        sub_1000032A8(&v16, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v7 = v6;
        *(v6 + 24) = &type metadata for AppInstallEntity.Property;
        *(v6 + 32) = sub_1002360B0();
        *v7 = a1;
        v7[40] = 0;
        swift_willThrow();
      }

      else
      {
        v18[0] = v16;
        v18[1] = v17;
        sub_100005934(v18, &v14, &qword_100783A30);
        if (v15)
        {
          sub_1001F6498(&v14, &v16);
          sub_100513858();
          swift_allocError();
          v9 = v8;
          sub_100006D8C(&v16, *(&v17 + 1));
          swift_getDynamicType();
          v10 = _typeName(_:qualified:)();
          *v9 = 0x6174736E49707041;
          *(v9 + 8) = 0xEF65736168506C6CLL;
          *(v9 + 16) = v10;
          *(v9 + 24) = v11;
          *(v9 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v16);
        }

        else
        {
          sub_1000032A8(&v14, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v13 = v12;
          *(v12 + 24) = &type metadata for AppInstallEntity.Property;
          *(v12 + 32) = sub_1002360B0();
          *v13 = a1;
          v13[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v18, &qword_100783A30);
      }
    }
  }
}

void sub_1005E4C2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1001F0C48(&qword_10077FE28);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  sub_1005E93F8(a1, a2, &v21 - v8);
  v10 = type metadata accessor for Platform();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &qword_10077FE28);
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, &v23);
    v12 = (a2 + 24);
    if (v3)
    {
      os_unfair_lock_unlock(v12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v12);
      if (*(&v24 + 1) == 1)
      {
        sub_1000032A8(&v23, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v14 = v13;
        *(v13 + 24) = &type metadata for AppInstallEntity.Property;
        *(v13 + 32) = sub_1002360B0();
        *v14 = a1;
        v14[40] = 0;
        swift_willThrow();
      }

      else
      {
        v25[0] = v23;
        v25[1] = v24;
        sub_100005934(v25, &v21, &qword_100783A30);
        if (v22)
        {
          sub_1001F6498(&v21, &v23);
          sub_100513858();
          swift_allocError();
          v16 = v15;
          sub_100006D8C(&v23, *(&v24 + 1));
          swift_getDynamicType();
          v17 = _typeName(_:qualified:)();
          *v16 = 0x6D726F6674616C50;
          *(v16 + 8) = 0xE800000000000000;
          *(v16 + 16) = v17;
          *(v16 + 24) = v18;
          *(v16 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v23);
        }

        else
        {
          sub_1000032A8(&v21, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v20 = v19;
          *(v19 + 24) = &type metadata for AppInstallEntity.Property;
          *(v19 + 32) = sub_1002360B0();
          *v20 = a1;
          v20[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v25, &qword_100783A30);
      }
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
  }
}

void sub_1005E4F68(uint64_t a1, uint64_t a2)
{
  if (sub_1005E92EC(a1, a2, sub_1005ED018) == 5)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, &v16);
    v5 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v5);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      if (*(&v17 + 1) == 1)
      {
        sub_1000032A8(&v16, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v7 = v6;
        *(v6 + 24) = &type metadata for AppInstallEntity.Property;
        *(v6 + 32) = sub_1002360B0();
        *v7 = a1;
        v7[40] = 0;
        swift_willThrow();
      }

      else
      {
        v18[0] = v16;
        v18[1] = v17;
        sub_100005934(v18, &v14, &qword_100783A30);
        if (v15)
        {
          sub_1001F6498(&v14, &v16);
          sub_100513858();
          swift_allocError();
          v9 = v8;
          sub_100006D8C(&v16, *(&v17 + 1));
          swift_getDynamicType();
          v10 = _typeName(_:qualified:)();
          *v9 = 0xD000000000000012;
          *(v9 + 8) = 0x80000001006CD330;
          *(v9 + 16) = v10;
          *(v9 + 24) = v11;
          *(v9 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v16);
        }

        else
        {
          sub_1000032A8(&v14, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v13 = v12;
          *(v12 + 24) = &type metadata for AppInstallEntity.Property;
          *(v12 + 32) = sub_1002360B0();
          *v13 = a1;
          v13[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v18, &qword_100783A30);
      }
    }
  }
}

void sub_1005E51D8(uint64_t a1, uint64_t a2)
{
  if (sub_1005E92EC(a1, a2, sub_1005ECC50) == 5)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, &v16);
    v5 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v5);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      if (*(&v17 + 1) == 1)
      {
        sub_1000032A8(&v16, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v7 = v6;
        *(v6 + 24) = &type metadata for AppInstallEntity.Property;
        *(v6 + 32) = sub_1002360B0();
        *v7 = a1;
        v7[40] = 0;
        swift_willThrow();
      }

      else
      {
        v18[0] = v16;
        v18[1] = v17;
        sub_100005934(v18, &v14, &qword_100783A30);
        if (v15)
        {
          sub_1001F6498(&v14, &v16);
          sub_100513858();
          swift_allocError();
          v9 = v8;
          sub_100006D8C(&v16, *(&v17 + 1));
          swift_getDynamicType();
          v10 = _typeName(_:qualified:)();
          *v9 = 0xD000000000000010;
          *(v9 + 8) = 0x80000001006CD410;
          *(v9 + 16) = v10;
          *(v9 + 24) = v11;
          *(v9 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v16);
        }

        else
        {
          sub_1000032A8(&v14, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v13 = v12;
          *(v12 + 24) = &type metadata for AppInstallEntity.Property;
          *(v12 + 32) = sub_1002360B0();
          *v13 = a1;
          v13[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v18, &qword_100783A30);
      }
    }
  }
}

uint64_t sub_1005E5480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, v33);
  if (v3)
  {
    os_unfair_lock_unlock((a2 + 24));
    __break(1u);
    result = sub_1000032A8(&v24, &qword_100783A30);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((a2 + 24));
    sub_100005934(v33, &v31, &qword_1007854A0);
    if (*(&v32 + 1) == 1)
    {
      sub_1000032A8(v33, &qword_1007854A0);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = xmmword_1006B24D0;
      v40 = 0uLL;
    }

    else
    {
      v24 = v31;
      v25 = v32;
      sub_1005EE50C(&v24, a1, &v34);
      sub_1000032A8(&v24, &qword_100783A30);
      result = sub_1000032A8(v33, &qword_1007854A0);
      if ((~v39 & 0x3000000000000000) != 0 || (*(&v39 + 1) & 0xFFFFFFFFFFFFFFFELL) != 0x7FFFFFFE)
      {
        v14 = v39;
        a3[4] = v38;
        a3[5] = v14;
        a3[6] = v40;
        v15 = v35;
        *a3 = v34;
        a3[1] = v15;
        v16 = v37;
        a3[2] = v36;
        a3[3] = v16;
        return result;
      }
    }

    v28 = v38;
    v29 = v39;
    v30 = v40;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    sub_1000032A8(&v24, &qword_100787630);
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, &v21);
    os_unfair_lock_unlock((a2 + 24));
    if (*(&v22 + 1) == 1)
    {
      sub_1000032A8(&v21, &qword_1007854A0);
      sub_100513858();
      swift_allocError();
      v9 = v8;
      *(v8 + 24) = &type metadata for AppPackageEntity.Property;
      *(v8 + 32) = sub_10056688C();
      *v9 = a1;
      v9[40] = 0;
      return swift_willThrow();
    }

    else
    {
      v23[0] = v21;
      v23[1] = v22;
      sub_100005934(v23, &v19, &qword_100783A30);
      if (v20)
      {
        sub_1001F6498(&v19, &v21);
        sub_100513858();
        swift_allocError();
        v11 = v10;
        sub_100006D8C(&v21, *(&v22 + 1));
        swift_getDynamicType();
        v12 = _typeName(_:qualified:)();
        *v11 = 0xD000000000000014;
        *(v11 + 8) = 0x80000001006CE2F0;
        *(v11 + 16) = v12;
        *(v11 + 24) = v13;
        *(v11 + 40) = 2;
        swift_willThrow();
        sub_10000710C(&v21);
      }

      else
      {
        sub_1000032A8(&v19, &qword_100783A30);
        sub_100513858();
        swift_allocError();
        v18 = v17;
        *(v17 + 24) = &type metadata for AppPackageEntity.Property;
        *(v17 + 32) = sub_10056688C();
        *v18 = a1;
        v18[40] = 1;
        swift_willThrow();
      }

      return sub_1000032A8(v23, &qword_100783A30);
    }
  }

  return result;
}

void sub_1005E5864(uint64_t a1, uint64_t a2)
{
  if (sub_1005EB5A0(a1, a2, sub_1005AF1B0, sub_1005EE328) == 2)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, &v16);
    v5 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v5);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      if (*(&v17 + 1) == 1)
      {
        sub_1000032A8(&v16, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v7 = v6;
        *(v6 + 24) = &type metadata for AppPackageEntity.Property;
        *(v6 + 32) = sub_10056688C();
        *v7 = a1;
        v7[40] = 0;
        swift_willThrow();
      }

      else
      {
        v18[0] = v16;
        v18[1] = v17;
        sub_100005934(v18, &v14, &qword_100783A30);
        if (v15)
        {
          sub_1001F6498(&v14, &v16);
          sub_100513858();
          swift_allocError();
          v9 = v8;
          sub_100006D8C(&v16, *(&v17 + 1));
          swift_getDynamicType();
          v10 = _typeName(_:qualified:)();
          *v9 = 0xD000000000000010;
          *(v9 + 8) = 0x80000001006CD350;
          *(v9 + 16) = v10;
          *(v9 + 24) = v11;
          *(v9 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v16);
        }

        else
        {
          sub_1000032A8(&v14, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v13 = v12;
          *(v12 + 24) = &type metadata for AppPackageEntity.Property;
          *(v12 + 32) = sub_10056688C();
          *v13 = a1;
          v13[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v18, &qword_100783A30);
      }
    }
  }
}

void sub_1005E5B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void))
{
  if (sub_1005EB998(a1, a2, a3, a4) == 2)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, a3, &v23);
    v12 = (a2 + 24);
    if (v6)
    {
      os_unfair_lock_unlock(v12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v12);
      if (*(&v24 + 1) == 1)
      {
        sub_1000032A8(&v23, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v14 = v13;
        *(v13 + 24) = a5;
        *(v13 + 32) = a6();
        *v14 = a1;
        v14[40] = 0;
        swift_willThrow();
      }

      else
      {
        v25[0] = v23;
        v25[1] = v24;
        sub_100005934(v25, &v21, &qword_100783A30);
        if (v22)
        {
          sub_1001F6498(&v21, &v23);
          sub_100513858();
          swift_allocError();
          v16 = v15;
          sub_100006D8C(&v23, *(&v24 + 1));
          swift_getDynamicType();
          v17 = _typeName(_:qualified:)();
          *v16 = 1819242306;
          *(v16 + 8) = 0xE400000000000000;
          *(v16 + 16) = v17;
          *(v16 + 24) = v18;
          *(v16 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v23);
        }

        else
        {
          sub_1000032A8(&v21, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v20 = v19;
          *(v19 + 24) = a5;
          *(v19 + 32) = a6();
          *v20 = a1;
          v20[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v25, &qword_100783A30);
      }
    }
  }
}

void sub_1005E5DCC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  a3();
  if (v10)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, &v22);
    v11 = (a2 + 24);
    if (v5)
    {
      os_unfair_lock_unlock(v11);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v11);
      if (*(&v23 + 1) == 1)
      {
        sub_1000032A8(&v22, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v13 = v12;
        *(v12 + 24) = &type metadata for AppPackageEntity.Property;
        *(v12 + 32) = sub_10056688C();
        *v13 = a1;
        v13[40] = 0;
        swift_willThrow();
      }

      else
      {
        v24[0] = v22;
        v24[1] = v23;
        sub_100005934(v24, &v20, &qword_100783A30);
        if (v21)
        {
          sub_1001F6498(&v20, &v22);
          sub_100513858();
          swift_allocError();
          v15 = v14;
          sub_100006D8C(&v22, *(&v23 + 1));
          swift_getDynamicType();
          v16 = _typeName(_:qualified:)();
          *v15 = a4;
          *(v15 + 8) = a5;
          *(v15 + 16) = v16;
          *(v15 + 24) = v17;
          *(v15 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v22);
        }

        else
        {
          sub_1000032A8(&v20, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v19 = v18;
          *(v18 + 24) = &type metadata for AppPackageEntity.Property;
          *(v18 + 32) = sub_10056688C();
          *v19 = a1;
          v19[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v24, &qword_100783A30);
      }
    }
  }
}

void sub_1005E6014(uint64_t a1, uint64_t a2)
{
  if (sub_1005EA388(a1, a2) == 2)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, &v16);
    v5 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v5);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      if (*(&v17 + 1) == 1)
      {
        sub_1000032A8(&v16, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v7 = v6;
        *(v6 + 24) = &type metadata for AppPackageEntity.Property;
        *(v6 + 32) = sub_10056688C();
        *v7 = a1;
        v7[40] = 0;
        swift_willThrow();
      }

      else
      {
        v18[0] = v16;
        v18[1] = v17;
        sub_100005934(v18, &v14, &qword_100783A30);
        if (v15)
        {
          sub_1001F6498(&v14, &v16);
          sub_100513858();
          swift_allocError();
          v9 = v8;
          sub_100006D8C(&v16, *(&v17 + 1));
          swift_getDynamicType();
          v10 = _typeName(_:qualified:)();
          strcpy(v9, "AppPackageType");
          *(v9 + 15) = -18;
          *(v9 + 16) = v10;
          *(v9 + 24) = v11;
          *(v9 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v16);
        }

        else
        {
          sub_1000032A8(&v14, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v13 = v12;
          *(v12 + 24) = &type metadata for AppPackageEntity.Property;
          *(v12 + 32) = sub_10056688C();
          *v13 = a1;
          v13[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v18, &qword_100783A30);
      }
    }
  }
}

void sub_1005E6278(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  sub_1005EA0A0(a1, a2, &v21 - v8);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &unk_1007809F0);
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, &v23);
    v12 = (a2 + 24);
    if (v3)
    {
      os_unfair_lock_unlock(v12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v12);
      if (*(&v24 + 1) == 1)
      {
        sub_1000032A8(&v23, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v14 = v13;
        *(v13 + 24) = &type metadata for AppPackageEntity.Property;
        *(v13 + 32) = sub_10056688C();
        *v14 = a1;
        v14[40] = 0;
        swift_willThrow();
      }

      else
      {
        v25[0] = v23;
        v25[1] = v24;
        sub_100005934(v25, &v21, &qword_100783A30);
        if (v22)
        {
          sub_1001F6498(&v21, &v23);
          sub_100513858();
          swift_allocError();
          v16 = v15;
          sub_100006D8C(&v23, *(&v24 + 1));
          swift_getDynamicType();
          v17 = _typeName(_:qualified:)();
          *v16 = 5001813;
          *(v16 + 8) = 0xE300000000000000;
          *(v16 + 16) = v17;
          *(v16 + 24) = v18;
          *(v16 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v23);
        }

        else
        {
          sub_1000032A8(&v21, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v20 = v19;
          *(v19 + 24) = &type metadata for AppPackageEntity.Property;
          *(v19 + 32) = sub_10056688C();
          *v20 = a1;
          v20[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v25, &qword_100783A30);
      }
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
  }
}

void sub_1005E65AC(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_1005EC0B4(a1, a2, sub_1005EC290, sub_1005EF12C);
  if (!v5)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC290((a2 + 16), v4, &v17);
    v6 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v6);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v6);
      if (*(&v18 + 1) == 1)
      {
        sub_1000032A8(&v17, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v8 = v7;
        *(v7 + 24) = &type metadata for DDMJournalEntity.Property;
        *(v7 + 32) = sub_1004E3C1C();
        *v8 = v4;
        v8[40] = 0;
        swift_willThrow();
      }

      else
      {
        v19[0] = v17;
        v19[1] = v18;
        sub_100005934(v19, &v15, &qword_100783A30);
        if (v16)
        {
          sub_1001F6498(&v15, &v17);
          sub_100513858();
          swift_allocError();
          v10 = v9;
          sub_100006D8C(&v17, *(&v18 + 1));
          swift_getDynamicType();
          v11 = _typeName(_:qualified:)();
          *v10 = 0x676E69727453;
          *(v10 + 8) = 0xE600000000000000;
          *(v10 + 16) = v11;
          *(v10 + 24) = v12;
          *(v10 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v17);
        }

        else
        {
          sub_1000032A8(&v15, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v14 = v13;
          *(v13 + 24) = &type metadata for DDMJournalEntity.Property;
          *(v13 + 32) = sub_1004E3C1C();
          *v14 = v4;
          v14[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v19, &qword_100783A30);
      }
    }
  }
}

void sub_1005E6804(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1001F0C48(&qword_1007874F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  sub_1005EBC5C(a1, a2, sub_1005EC290, sub_1005EEE60, type metadata accessor for DDMJournalEntry, &v20 - v8);
  v10 = type metadata accessor for DDMJournalEntry();
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &qword_1007874F8);
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC290((a2 + 16), a1, &v22);
    v11 = (a2 + 24);
    if (v3)
    {
      os_unfair_lock_unlock(v11);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v11);
      if (*(&v23 + 1) == 1)
      {
        sub_1000032A8(&v22, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v13 = v12;
        *(v12 + 24) = &type metadata for DDMJournalEntity.Property;
        *(v12 + 32) = sub_1004E3C1C();
        *v13 = a1;
        v13[40] = 0;
        swift_willThrow();
      }

      else
      {
        v24[0] = v22;
        v24[1] = v23;
        sub_100005934(v24, &v20, &qword_100783A30);
        if (v21)
        {
          sub_1001F6498(&v20, &v22);
          sub_100513858();
          swift_allocError();
          v15 = v14;
          sub_100006D8C(&v22, *(&v23 + 1));
          swift_getDynamicType();
          v16 = _typeName(_:qualified:)();
          *v15 = 0x6E72756F4A4D4444;
          *(v15 + 8) = 0xEF7972746E456C61;
          *(v15 + 16) = v16;
          *(v15 + 24) = v17;
          *(v15 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v22);
        }

        else
        {
          sub_1000032A8(&v20, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v19 = v18;
          *(v18 + 24) = &type metadata for DDMJournalEntity.Property;
          *(v18 + 32) = sub_1004E3C1C();
          *v19 = a1;
          v19[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v24, &qword_100783A30);
      }
    }
  }

  else
  {
    sub_100232F0C(v9, a3);
  }
}

void sub_1005E6B44(unsigned __int8 a1, uint64_t a2)
{
  sub_1005EAA00(a1, a2);
  if (v5)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC290((a2 + 16), a1, &v17);
    v6 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v6);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v6);
      if (*(&v18 + 1) == 1)
      {
        sub_1000032A8(&v17, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v8 = v7;
        *(v7 + 24) = &type metadata for DDMJournalEntity.Property;
        *(v7 + 32) = sub_1004E3C1C();
        *v8 = a1;
        v8[40] = 0;
        swift_willThrow();
      }

      else
      {
        v19[0] = v17;
        v19[1] = v18;
        sub_100005934(v19, &v15, &qword_100783A30);
        if (v16)
        {
          sub_1001F6498(&v15, &v17);
          sub_100513858();
          swift_allocError();
          v10 = v9;
          sub_100006D8C(&v17, *(&v18 + 1));
          swift_getDynamicType();
          v11 = _typeName(_:qualified:)();
          *v10 = 0x3436746E49;
          *(v10 + 8) = 0xE500000000000000;
          *(v10 + 16) = v11;
          *(v10 + 24) = v12;
          *(v10 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v17);
        }

        else
        {
          sub_1000032A8(&v15, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v14 = v13;
          *(v13 + 24) = &type metadata for DDMJournalEntity.Property;
          *(v13 + 32) = sub_1004E3C1C();
          *v14 = a1;
          v14[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v19, &qword_100783A30);
      }
    }
  }
}

void sub_1005E6D7C(unsigned __int8 a1, uint64_t a2)
{
  if (sub_1005EA930(a1, a2))
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC290((a2 + 16), a1, &v16);
    v5 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v5);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      if (*(&v17 + 1) == 1)
      {
        sub_1000032A8(&v16, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v7 = v6;
        *(v6 + 24) = &type metadata for DDMJournalEntity.Property;
        *(v6 + 32) = sub_1004E3C1C();
        *v7 = a1;
        v7[40] = 0;
        swift_willThrow();
      }

      else
      {
        v18[0] = v16;
        v18[1] = v17;
        sub_100005934(v18, &v14, &qword_100783A30);
        if (v15)
        {
          sub_1001F6498(&v14, &v16);
          sub_100513858();
          swift_allocError();
          v9 = v8;
          sub_100006D8C(&v16, *(&v17 + 1));
          swift_getDynamicType();
          v10 = _typeName(_:qualified:)();
          strcpy(v9, "DDMJournalType");
          *(v9 + 15) = -18;
          *(v9 + 16) = v10;
          *(v9 + 24) = v11;
          *(v9 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v16);
        }

        else
        {
          sub_1000032A8(&v14, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v13 = v12;
          *(v12 + 24) = &type metadata for DDMJournalEntity.Property;
          *(v12 + 32) = sub_1004E3C1C();
          *v13 = a1;
          v13[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v18, &qword_100783A30);
      }
    }
  }
}

void sub_1005E7078(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void))
{
  sub_1005EAB3C(a1, a2, a3, a4);
  if (!v12)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, a3, &v24);
    v13 = (a2 + 24);
    if (v6)
    {
      os_unfair_lock_unlock(v13);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v13);
      if (*(&v25 + 1) == 1)
      {
        sub_1000032A8(&v24, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v15 = v14;
        *(v14 + 24) = a5;
        *(v14 + 32) = a6();
        *v15 = a1;
        v15[40] = 0;
        swift_willThrow();
      }

      else
      {
        v26[0] = v24;
        v26[1] = v25;
        sub_100005934(v26, &v22, &qword_100783A30);
        if (v23)
        {
          sub_1001F6498(&v22, &v24);
          sub_100513858();
          swift_allocError();
          v17 = v16;
          sub_100006D8C(&v24, *(&v25 + 1));
          swift_getDynamicType();
          v18 = _typeName(_:qualified:)();
          *v17 = 0x676E69727453;
          *(v17 + 8) = 0xE600000000000000;
          *(v17 + 16) = v18;
          *(v17 + 24) = v19;
          *(v17 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v24);
        }

        else
        {
          sub_1000032A8(&v22, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v21 = v20;
          *(v20 + 24) = a5;
          *(v20 + 32) = a6();
          *v21 = a1;
          v21[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v26, &qword_100783A30);
      }
    }
  }
}

void sub_1005E72B8(uint64_t a1, uint64_t a2)
{
  if (sub_1005EB5A0(a1, a2, sub_1004DC6A8, sub_1005EF9AC) == 2)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, &v16);
    v5 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v5);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      if (*(&v17 + 1) == 1)
      {
        sub_1000032A8(&v16, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v7 = v6;
        *(v6 + 24) = &type metadata for DDMDeclarationEntity.Property;
        *(v6 + 32) = sub_1004E0EE4();
        *v7 = a1;
        v7[40] = 0;
        swift_willThrow();
      }

      else
      {
        v18[0] = v16;
        v18[1] = v17;
        sub_100005934(v18, &v14, &qword_100783A30);
        if (v15)
        {
          sub_1001F6498(&v14, &v16);
          sub_100513858();
          swift_allocError();
          v9 = v8;
          sub_100006D8C(&v16, *(&v17 + 1));
          swift_getDynamicType();
          v10 = _typeName(_:qualified:)();
          *v9 = 0xD000000000000010;
          *(v9 + 8) = 0x80000001006CE210;
          *(v9 + 16) = v10;
          *(v9 + 24) = v11;
          *(v9 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v16);
        }

        else
        {
          sub_1000032A8(&v14, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v13 = v12;
          *(v12 + 24) = &type metadata for DDMDeclarationEntity.Property;
          *(v12 + 32) = sub_1004E0EE4();
          *v13 = a1;
          v13[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v18, &qword_100783A30);
      }
    }
  }
}

void sub_1005E753C(uint64_t a1, uint64_t a2)
{
  if (sub_1005EB29C(a1, a2) == 2)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, &v16);
    v5 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v5);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      if (*(&v17 + 1) == 1)
      {
        sub_1000032A8(&v16, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v7 = v6;
        *(v6 + 24) = &type metadata for DDMDeclarationEntity.Property;
        *(v6 + 32) = sub_1004E0EE4();
        *v7 = a1;
        v7[40] = 0;
        swift_willThrow();
      }

      else
      {
        v18[0] = v16;
        v18[1] = v17;
        sub_100005934(v18, &v14, &qword_100783A30);
        if (v15)
        {
          sub_1001F6498(&v14, &v16);
          sub_100513858();
          swift_allocError();
          v9 = v8;
          sub_100006D8C(&v16, *(&v17 + 1));
          swift_getDynamicType();
          v10 = _typeName(_:qualified:)();
          *v9 = 0x656D6567616E614DLL;
          *(v9 + 8) = 0xEF65706F6353746ELL;
          *(v9 + 16) = v10;
          *(v9 + 24) = v11;
          *(v9 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v16);
        }

        else
        {
          sub_1000032A8(&v14, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v13 = v12;
          *(v12 + 24) = &type metadata for DDMDeclarationEntity.Property;
          *(v12 + 32) = sub_1004E0EE4();
          *v13 = a1;
          v13[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v18, &qword_100783A30);
      }
    }
  }
}

void sub_1005E77FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void))
{
  sub_1005EAF98(a1, a2, a3, a4);
  if (v12 == 2)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, a3, &v24);
    v13 = (a2 + 24);
    if (v6)
    {
      os_unfair_lock_unlock(v13);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v13);
      if (*(&v25 + 1) == 1)
      {
        sub_1000032A8(&v24, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v15 = v14;
        *(v14 + 24) = a5;
        *(v14 + 32) = a6();
        *v15 = a1;
        v15[40] = 0;
        swift_willThrow();
      }

      else
      {
        v26[0] = v24;
        v26[1] = v25;
        sub_100005934(v26, &v22, &qword_100783A30);
        if (v23)
        {
          sub_1001F6498(&v22, &v24);
          sub_100513858();
          swift_allocError();
          v17 = v16;
          sub_100006D8C(&v24, *(&v25 + 1));
          swift_getDynamicType();
          v18 = _typeName(_:qualified:)();
          *v17 = 0x616E6F73726550;
          *(v17 + 8) = 0xE700000000000000;
          *(v17 + 16) = v18;
          *(v17 + 24) = v19;
          *(v17 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v24);
        }

        else
        {
          sub_1000032A8(&v22, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v21 = v20;
          *(v20 + 24) = a5;
          *(v20 + 32) = a6();
          *v21 = a1;
          v21[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v26, &qword_100783A30);
      }
    }
  }
}

void sub_1005E7A5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1001F0C48(&qword_10077FE28);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  sub_1005EAC94(a1, a2, &v21 - v8);
  v10 = type metadata accessor for Platform();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &qword_10077FE28);
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, &v23);
    v12 = (a2 + 24);
    if (v3)
    {
      os_unfair_lock_unlock(v12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v12);
      if (*(&v24 + 1) == 1)
      {
        sub_1000032A8(&v23, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v14 = v13;
        *(v13 + 24) = &type metadata for DDMDeclarationEntity.Property;
        *(v13 + 32) = sub_1004E0EE4();
        *v14 = a1;
        v14[40] = 0;
        swift_willThrow();
      }

      else
      {
        v25[0] = v23;
        v25[1] = v24;
        sub_100005934(v25, &v21, &qword_100783A30);
        if (v22)
        {
          sub_1001F6498(&v21, &v23);
          sub_100513858();
          swift_allocError();
          v16 = v15;
          sub_100006D8C(&v23, *(&v24 + 1));
          swift_getDynamicType();
          v17 = _typeName(_:qualified:)();
          *v16 = 0x6D726F6674616C50;
          *(v16 + 8) = 0xE800000000000000;
          *(v16 + 16) = v17;
          *(v16 + 24) = v18;
          *(v16 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v23);
        }

        else
        {
          sub_1000032A8(&v21, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v20 = v19;
          *(v19 + 24) = &type metadata for DDMDeclarationEntity.Property;
          *(v19 + 32) = sub_1004E0EE4();
          *v20 = a1;
          v20[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v25, &qword_100783A30);
      }
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
  }
}

void sub_1005E7D98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1001F0C48(&qword_10077F398);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  sub_1005EB6E8(a1, a2, sub_1004DC6A8, sub_1005EF5D8, &type metadata accessor for DDMPurchaseMethod, &v21 - v8);
  v10 = type metadata accessor for DDMPurchaseMethod();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &qword_10077F398);
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, &v23);
    v12 = (a2 + 24);
    if (v3)
    {
      os_unfair_lock_unlock(v12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v12);
      if (*(&v24 + 1) == 1)
      {
        sub_1000032A8(&v23, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v14 = v13;
        *(v13 + 24) = &type metadata for DDMDeclarationEntity.Property;
        *(v13 + 32) = sub_1004E0EE4();
        *v14 = a1;
        v14[40] = 0;
        swift_willThrow();
      }

      else
      {
        v25[0] = v23;
        v25[1] = v24;
        sub_100005934(v25, &v21, &qword_100783A30);
        if (v22)
        {
          sub_1001F6498(&v21, &v23);
          sub_100513858();
          swift_allocError();
          v16 = v15;
          sub_100006D8C(&v23, *(&v24 + 1));
          swift_getDynamicType();
          v17 = _typeName(_:qualified:)();
          *v16 = 0xD000000000000011;
          *(v16 + 8) = 0x80000001006CE1F0;
          *(v16 + 16) = v17;
          *(v16 + 24) = v18;
          *(v16 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v23);
        }

        else
        {
          sub_1000032A8(&v21, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v20 = v19;
          *(v19 + 24) = &type metadata for DDMDeclarationEntity.Property;
          *(v19 + 32) = sub_1004E0EE4();
          *v20 = a1;
          v20[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v25, &qword_100783A30);
      }
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
  }
}

void sub_1005E8114(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_1005EC0B4(a1, a2, sub_1005EC41C, sub_1005F0150);
  if (!v5)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC41C((a2 + 16), v4, &v17);
    v6 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v6);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v6);
      if (*(&v18 + 1) == 1)
      {
        sub_1000032A8(&v17, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v8 = v7;
        *(v7 + 24) = &type metadata for MarketplaceUpdateEntity.Property;
        *(v7 + 32) = sub_1005F18D8();
        *v8 = v4;
        v8[40] = 0;
        swift_willThrow();
      }

      else
      {
        v19[0] = v17;
        v19[1] = v18;
        sub_100005934(v19, &v15, &qword_100783A30);
        if (v16)
        {
          sub_1001F6498(&v15, &v17);
          sub_100513858();
          swift_allocError();
          v10 = v9;
          sub_100006D8C(&v17, *(&v18 + 1));
          swift_getDynamicType();
          v11 = _typeName(_:qualified:)();
          *v10 = 0x676E69727453;
          *(v10 + 8) = 0xE600000000000000;
          *(v10 + 16) = v11;
          *(v10 + 24) = v12;
          *(v10 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v17);
        }

        else
        {
          sub_1000032A8(&v15, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v14 = v13;
          *(v13 + 24) = &type metadata for MarketplaceUpdateEntity.Property;
          *(v13 + 32) = sub_1005F18D8();
          *v14 = v4;
          v14[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v19, &qword_100783A30);
      }
    }
  }
}

void sub_1005E836C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  sub_1005EBC5C(a1, a2, sub_1005EC41C, sub_1005F0464, &type metadata accessor for URL, &v21 - v8);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &unk_1007809F0);
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC41C((a2 + 16), a1, &v23);
    v12 = (a2 + 24);
    if (v3)
    {
      os_unfair_lock_unlock(v12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v12);
      if (*(&v24 + 1) == 1)
      {
        sub_1000032A8(&v23, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v14 = v13;
        *(v13 + 24) = &type metadata for MarketplaceUpdateEntity.Property;
        *(v13 + 32) = sub_1005F18D8();
        *v14 = a1;
        v14[40] = 0;
        swift_willThrow();
      }

      else
      {
        v25[0] = v23;
        v25[1] = v24;
        sub_100005934(v25, &v21, &qword_100783A30);
        if (v22)
        {
          sub_1001F6498(&v21, &v23);
          sub_100513858();
          swift_allocError();
          v16 = v15;
          sub_100006D8C(&v23, *(&v24 + 1));
          swift_getDynamicType();
          v17 = _typeName(_:qualified:)();
          *v16 = 5001813;
          *(v16 + 8) = 0xE300000000000000;
          *(v16 + 16) = v17;
          *(v16 + 24) = v18;
          *(v16 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v23);
        }

        else
        {
          sub_1000032A8(&v21, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v20 = v19;
          *(v19 + 24) = &type metadata for MarketplaceUpdateEntity.Property;
          *(v19 + 32) = sub_1005F18D8();
          *v20 = a1;
          v20[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v25, &qword_100783A30);
      }
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
  }
}

void sub_1005E86C8(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_1005EC0B4(a1, a2, sub_1005EC5F0, sub_1005F0C74);
  if (!v5)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC5F0((a2 + 16), v4, &v17);
    v6 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v6);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v6);
      if (*(&v18 + 1) == 1)
      {
        sub_1000032A8(&v17, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v8 = v7;
        *(v7 + 24) = &type metadata for DDMDeclarationStatusEntity.Property;
        *(v7 + 32) = sub_1005F192C();
        *v8 = v4;
        v8[40] = 0;
        swift_willThrow();
      }

      else
      {
        v19[0] = v17;
        v19[1] = v18;
        sub_100005934(v19, &v15, &qword_100783A30);
        if (v16)
        {
          sub_1001F6498(&v15, &v17);
          sub_100513858();
          swift_allocError();
          v10 = v9;
          sub_100006D8C(&v17, *(&v18 + 1));
          swift_getDynamicType();
          v11 = _typeName(_:qualified:)();
          *v10 = 0x676E69727453;
          *(v10 + 8) = 0xE600000000000000;
          *(v10 + 16) = v11;
          *(v10 + 24) = v12;
          *(v10 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v17);
        }

        else
        {
          sub_1000032A8(&v15, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v14 = v13;
          *(v13 + 24) = &type metadata for DDMDeclarationStatusEntity.Property;
          *(v13 + 32) = sub_1005F192C();
          *v14 = v4;
          v14[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v19, &qword_100783A30);
      }
    }
  }
}

void sub_1005E8920(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1001F0C48(&qword_10077F3D8);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  sub_1005EBF20(a1, a2, sub_10053AA1C, 0x6574617453, 0xE500000000000000, &type metadata accessor for ManagedAppStatus.State, &v21 - v8);
  v10 = type metadata accessor for ManagedAppStatus.State();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &qword_10077F3D8);
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC5F0((a2 + 16), a1, &v23);
    v12 = (a2 + 24);
    if (v3)
    {
      os_unfair_lock_unlock(v12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v12);
      if (*(&v24 + 1) == 1)
      {
        sub_1000032A8(&v23, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v14 = v13;
        *(v13 + 24) = &type metadata for DDMDeclarationStatusEntity.Property;
        *(v13 + 32) = sub_1005F192C();
        *v14 = a1;
        v14[40] = 0;
        swift_willThrow();
      }

      else
      {
        v25[0] = v23;
        v25[1] = v24;
        sub_100005934(v25, &v21, &qword_100783A30);
        if (v22)
        {
          sub_1001F6498(&v21, &v23);
          sub_100513858();
          swift_allocError();
          v16 = v15;
          sub_100006D8C(&v23, *(&v24 + 1));
          swift_getDynamicType();
          v17 = _typeName(_:qualified:)();
          *v16 = 0x6574617453;
          *(v16 + 8) = 0xE500000000000000;
          *(v16 + 16) = v17;
          *(v16 + 24) = v18;
          *(v16 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v23);
        }

        else
        {
          sub_1000032A8(&v21, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v20 = v19;
          *(v19 + 24) = &type metadata for DDMDeclarationStatusEntity.Property;
          *(v19 + 32) = sub_1005F192C();
          *v20 = a1;
          v20[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v25, &qword_100783A30);
      }
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
  }
}

void sub_1005E8C74(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_1005EC0B4(a1, a2, sub_1005EC758, sub_1005F0EEC);
  if (!v5)
  {
    os_unfair_lock_lock((a2 + 24));
    sub_1005EC758((a2 + 16), v4, &v17);
    v6 = (a2 + 24);
    if (v2)
    {
      os_unfair_lock_unlock(v6);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v6);
      if (*(&v18 + 1) == 1)
      {
        sub_1000032A8(&v17, &qword_1007854A0);
        sub_100513858();
        swift_allocError();
        v8 = v7;
        *(v7 + 24) = &type metadata for DDMUpdateEntity.Property;
        *(v7 + 32) = sub_1005F1884();
        *v8 = v4;
        v8[40] = 0;
        swift_willThrow();
      }

      else
      {
        v19[0] = v17;
        v19[1] = v18;
        sub_100005934(v19, &v15, &qword_100783A30);
        if (v16)
        {
          sub_1001F6498(&v15, &v17);
          sub_100513858();
          swift_allocError();
          v10 = v9;
          sub_100006D8C(&v17, *(&v18 + 1));
          swift_getDynamicType();
          v11 = _typeName(_:qualified:)();
          *v10 = 0x676E69727453;
          *(v10 + 8) = 0xE600000000000000;
          *(v10 + 16) = v11;
          *(v10 + 24) = v12;
          *(v10 + 40) = 2;
          swift_willThrow();
          sub_10000710C(&v17);
        }

        else
        {
          sub_1000032A8(&v15, &qword_100783A30);
          sub_100513858();
          swift_allocError();
          v14 = v13;
          *(v13 + 24) = &type metadata for DDMUpdateEntity.Property;
          *(v13 + 32) = sub_1005F1884();
          *v14 = v4;
          v14[40] = 1;
          swift_willThrow();
        }

        sub_1000032A8(v19, &qword_100783A30);
      }
    }
  }
}

uint64_t sub_1005E8ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    v6 = type metadata accessor for UUID();
    return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    sub_1005ED1FC(v10, a1, v9, sub_100537564, sub_100234CBC, 1145656661, 0xE400000000000000);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    v8 = type metadata accessor for UUID();
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }
}

uint64_t sub_1005E9074(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 8;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005EC844(v6, a1);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005E9178(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005ECA2C(v6, a1);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005E92EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t))
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v11);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v11, &v9, &qword_1007854A0);
  if (*(&v10 + 1) == 1)
  {
    sub_1000032A8(v11, &qword_1007854A0);
    return 5;
  }

  else
  {
    v8[0] = v9;
    v8[1] = v10;
    v7 = a3(v8, a1);
    sub_1000032A8(v8, &qword_100783A30);
    sub_1000032A8(v11, &qword_1007854A0);
    return v7;
  }
}

uint64_t sub_1005E93F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    v6 = type metadata accessor for Platform();
    return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    sub_1005ED1FC(v10, a1, v9, sub_100537F3C, sub_100234CBC, 0x6D726F6674616C50, 0xE800000000000000);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    v8 = type metadata accessor for Platform();
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }
}

uint64_t sub_1005E95A8(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 2;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005ED3F0(v6, a1);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5 & 0x1010101;
  }
}

uint64_t sub_1005E9730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v15);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v15, &v13, &qword_1007854A0);
  if (*(&v14 + 1) == 1)
  {
    sub_1000032A8(v15, &qword_1007854A0);
    return 0;
  }

  else
  {
    v12[0] = v13;
    v12[1] = v14;
    v11 = sub_1005ED7B0(v12, a1, a3, sub_100234CBC, a4, a5);
    sub_1000032A8(v12, &qword_100783A30);
    sub_1000032A8(v15, &qword_1007854A0);
    return v11;
  }
}

uint64_t sub_1005E9894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    v6 = type metadata accessor for URL();
    return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    sub_1005ED1FC(v10, a1, v9, sub_100538AFC, sub_100234CBC, 5001813, 0xE300000000000000);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    v8 = type metadata accessor for URL();
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }
}

uint64_t sub_1005E9A3C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005ED7B0(v6, a1, sub_100538DB8, sub_100234CBC, 0x726556656C707041, 0xEE0044496E6F6973);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005E9B90(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005ED7B0(v6, a1, sub_100538DFC, sub_100234CBC, 0x657449656C707041, 0xEB0000000044496DLL);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005E9CE0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005ED7B0(v6, a1, sub_100538F38, sub_100234CBC, 7630409, 0xE300000000000000);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005E9E20(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_100234CBC, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005ED7B0(v6, a1, sub_100538F70, sub_100234CBC, 0x3436746E4955, 0xE600000000000000);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005E9F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, v10);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v10, &v8, &qword_1007854A0);
  if (*(&v9 + 1) == 1)
  {
    result = sub_1000032A8(v10, &qword_1007854A0);
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
  }

  else
  {
    v7[0] = v8;
    v7[1] = v9;
    sub_1005EDF6C(v7, a1, a3);
    sub_1000032A8(v7, &qword_100783A30);
    return sub_1000032A8(v10, &qword_1007854A0);
  }

  return result;
}

uint64_t sub_1005EA0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    v6 = type metadata accessor for URL();
    return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    sub_1005ED1FC(v10, a1, v9, sub_100538AFC, sub_1005AF1B0, 5001813, 0xE300000000000000);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    v8 = type metadata accessor for URL();
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }
}

uint64_t sub_1005EA248(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005ED7B0(v6, a1, sub_100539174, sub_1005AF1B0, 1953384789, 0xE400000000000000);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005EA388(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 2;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005EF7B4(v6, a1, sub_1005391AC, sub_1005AF1B0, 0x616B636150707041, 0xEE00657079546567);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5 & 1;
  }
}

uint64_t sub_1005EA4D4(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005ED7B0(v6, a1, sub_1005391F0, sub_1005AF1B0, 0x3436746E49, 0xE500000000000000);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005EA618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    v6 = type metadata accessor for UUID();
    return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    sub_1005ED1FC(v10, a1, v9, sub_100537564, sub_1005AF1B0, 1145656661, 0xE400000000000000);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    v8 = type metadata accessor for UUID();
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }
}

uint64_t sub_1005EA7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1005AF1B0, v16);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v16, &v14, &qword_1007854A0);
  if (*(&v15 + 1) == 1)
  {
    result = sub_1000032A8(v16, &qword_1007854A0);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = xmmword_10069E880;
  }

  else
  {
    v13[0] = v14;
    v13[1] = v15;
    sub_1005EE6EC(v13, a1, &v17);
    v7 = v17;
    v12 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    sub_1000032A8(v13, &qword_100783A30);
    result = sub_1000032A8(v16, &qword_1007854A0);
    v11 = v12;
  }

  *a3 = v7;
  *(a3 + 8) = v11;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  return result;
}

BOOL sub_1005EA930(unsigned __int8 a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC290((a2 + 16), a1, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  v4 = *(&v8 + 1);
  if (*(&v8 + 1) != 1)
  {
    v6[0] = v7;
    v6[1] = v8;
    sub_1005EE8DC(v6, a1);
    sub_1000032A8(v6, &qword_100783A30);
  }

  sub_1000032A8(v9, &qword_1007854A0);
  return v4 == 1;
}

uint64_t sub_1005EAA00(unsigned __int8 a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC290((a2 + 16), a1, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005EEBA0(v6, a1);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005EAB3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, a3, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    return 0;
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    v9 = sub_1005EDD6C(v10, a1, sub_100538A30, a4, 0x676E69727453, 0xE600000000000000);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    return v9;
  }
}

uint64_t sub_1005EAC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    v6 = type metadata accessor for Platform();
    return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    sub_1005ED1FC(v10, a1, v9, sub_100537F3C, sub_1004DC6A8, 0x6D726F6674616C50, 0xE800000000000000);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    v8 = type metadata accessor for Platform();
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }
}

uint64_t sub_1005EAE44(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005ED7B0(v6, a1, sub_100538DB8, sub_1004DC6A8, 0x726556656C707041, 0xEE0044496E6F6973);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005EAF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, a3, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    return 0;
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    v9 = sub_1005EDD6C(v10, a1, sub_1005381F8, a4, 0x616E6F73726550, 0xE700000000000000);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    return v9;
  }
}

uint64_t sub_1005EB0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    v6 = type metadata accessor for URL();
    return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    sub_1005ED1FC(v10, a1, v9, sub_100538AFC, sub_1004DC6A8, 5001813, 0xE300000000000000);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    v8 = type metadata accessor for URL();
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }
}

uint64_t sub_1005EB29C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 2;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005EF7B4(v6, a1, sub_100539F14, sub_1004DC6A8, 0x656D6567616E614DLL, 0xEF65706F6353746ELL);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5 & 1;
  }
}

uint64_t sub_1005EB3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    v6 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
    return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    sub_1005ED1FC(v10, a1, v9, sub_100539F58, sub_1004DC6A8, 0x4565736E6563694CLL, 0xEB000000006D756ELL);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    v8 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }
}

uint64_t sub_1005EB5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(_OWORD *, uint64_t))
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, a3, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    return 2;
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    v9 = a4(v10, a1);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    return v9 & 1;
  }
}

uint64_t sub_1005EB6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(_OWORD *, uint64_t, _BYTE *)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, a3, v19);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v19, &v17, &qword_1007854A0);
  if (*(&v18 + 1) == 1)
  {
    sub_1000032A8(v19, &qword_1007854A0);
    v12 = a5(0);
    return (*(*(v12 - 8) + 56))(a6, 1, 1, v12);
  }

  else
  {
    v16[0] = v17;
    v16[1] = v18;
    a4(v16, a1, v15);
    sub_1000032A8(v16, &qword_100783A30);
    sub_1000032A8(v19, &qword_1007854A0);
    v14 = a5(0);
    return (*(*(v14 - 8) + 56))(a6, 0, 1, v14);
  }
}

uint64_t sub_1005EB88C(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t))
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, v11);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v11, &v9, &qword_1007854A0);
  if (*(&v10 + 1) == 1)
  {
    sub_1000032A8(v11, &qword_1007854A0);
    return 3;
  }

  else
  {
    v8[0] = v9;
    v8[1] = v10;
    v7 = a3(v8, a1);
    sub_1000032A8(v8, &qword_100783A30);
    sub_1000032A8(v11, &qword_1007854A0);
    return v7;
  }
}

uint64_t sub_1005EB998(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, a3, v13);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    return 2;
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    v9 = sub_1005EE14C(v10, a1, a4);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    return v9 & 1;
  }
}

uint64_t sub_1005EBAA0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC1E8((a2 + 16), a1, sub_1004DC6A8, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005ED7B0(v6, a1, sub_100538DFC, sub_1004DC6A8, 0x657449656C707041, 0xEB0000000044496DLL);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005EBC5C@<X0>(uint64_t a1@<X0>, os_unfair_lock_s *a2@<X1>, void (*a3)(void *__return_ptr, os_unfair_lock_s *, uint64_t)@<X2>, void (*a4)(_OWORD *, uint64_t, _BYTE *)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  os_unfair_lock_lock(a2 + 6);
  a3(v19, a2 + 4, a1);
  os_unfair_lock_unlock(a2 + 6);
  sub_100005934(v19, &v17, &qword_1007854A0);
  if (*(&v18 + 1) == 1)
  {
    sub_1000032A8(v19, &qword_1007854A0);
    v12 = a5(0);
    return (*(*(v12 - 8) + 56))(a6, 1, 1, v12);
  }

  else
  {
    v16[0] = v17;
    v16[1] = v18;
    a4(v16, a1, v15);
    sub_1000032A8(v16, &qword_100783A30);
    sub_1000032A8(v19, &qword_1007854A0);
    v14 = a5(0);
    return (*(*(v14 - 8) + 56))(a6, 0, 1, v14);
  }
}

uint64_t sub_1005EBDE8(unsigned __int8 a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC5F0((a2 + 16), a1, v9);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v9, &v7, &qword_1007854A0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000032A8(v9, &qword_1007854A0);
    return 0;
  }

  else
  {
    v6[0] = v7;
    v6[1] = v8;
    v5 = sub_1005F076C(v6, a1);
    sub_1000032A8(v6, &qword_100783A30);
    sub_1000032A8(v9, &qword_1007854A0);
    return v5;
  }
}

uint64_t sub_1005EBF20@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC5F0((a2 + 16), a1, v21);
  os_unfair_lock_unlock((a2 + 24));
  sub_100005934(v21, &v19, &qword_1007854A0);
  if (*(&v20 + 1) == 1)
  {
    sub_1000032A8(v21, &qword_1007854A0);
    v14 = a6(0);
    return (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  }

  else
  {
    v18[0] = v19;
    v18[1] = v20;
    sub_1005F09EC(v18, a1, v17, a3, a4, a5);
    sub_1000032A8(v18, &qword_100783A30);
    sub_1000032A8(v21, &qword_1007854A0);
    v16 = a6(0);
    return (*(*(v16 - 8) + 56))(a7, 0, 1, v16);
  }
}

uint64_t sub_1005EC0B4(uint64_t a1, os_unfair_lock_s *a2, void (*a3)(void *__return_ptr, os_unfair_lock_s *, uint64_t), uint64_t (*a4)(_OWORD *, uint64_t))
{
  os_unfair_lock_lock(a2 + 6);
  a3(v13, a2 + 4, a1);
  os_unfair_lock_unlock(a2 + 6);
  sub_100005934(v13, &v11, &qword_1007854A0);
  if (*(&v12 + 1) == 1)
  {
    sub_1000032A8(v13, &qword_1007854A0);
    return 0;
  }

  else
  {
    v10[0] = v11;
    v10[1] = v12;
    v9 = a4(v10, a1);
    sub_1000032A8(v10, &qword_100783A30);
    sub_1000032A8(v13, &qword_1007854A0);
    return v9;
  }
}

uint64_t sub_1005EC1E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v6 = a3(a2);
  v8 = *a1;
  if (*(v8 + 16))
  {
    v9 = sub_10052213C(v6, v7);
    v11 = v10;

    if (v11)
    {
      return sub_100005934(*(v8 + 56) + 32 * v9, a4, &qword_100783A30);
    }
  }

  else
  {
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = 1;
  return result;
}

uint64_t sub_1005EC290@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v4 = 0xE500000000000000;
  v5 = 0x4449574F52;
  v6 = 0xE500000000000000;
  v7 = 0x7972746E65;
  if (a2 != 5)
  {
    v7 = 1701869940;
    v6 = 0xE400000000000000;
  }

  v8 = 0xEB0000000079616CLL;
  v9 = 0x7065725F7473616CLL;
  if (a2 != 3)
  {
    v9 = 0x635F79616C706572;
    v8 = 0xEC000000746E756FLL;
  }

  if (a2 <= 4u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xEE0064695F6E6F69;
  if (a2 != 1)
  {
    v10 = 0xEF79656B5F6E6F69;
  }

  if (a2)
  {
    v5 = 0x746172616C636564;
    v4 = v10;
  }

  if (a2 <= 2u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  v13 = *a1;
  if (*(*a1 + 16))
  {
    v14 = sub_10052213C(v11, v12);
    v16 = v15;

    if (v16)
    {
      return sub_100005934(*(v13 + 56) + 32 * v14, a3, &qword_100783A30);
    }
  }

  else
  {
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 1;
  return result;
}

uint64_t sub_1005EC41C@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v4 = 0xEA00000000006469;
  if (a2 <= 3u)
  {
    v11 = 0x5F746E756F636361;
    v12 = 0xE900000000000064;
    v13 = 0x695F656C646E7562;
    if (a2 != 2)
    {
      v13 = 0x765F656C646E7562;
      v12 = 0xEE006E6F69737265;
    }

    if (a2)
    {
      v11 = 0x726168735F707061;
      v4 = 0xED00006C72755F65;
    }

    if (a2 <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v13;
    }

    if (a2 <= 1u)
    {
      v10 = v4;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x64695F6D657469;
    if (a2 == 7)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x5F6E6F6973726576;
    }

    if (a2 == 6)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 6)
    {
      v4 = 0x80000001006C3EA0;
    }

    v7 = 0xE700000000000000;
    v8 = 0xD00000000000001ALL;
    if (a2 == 4)
    {
      v8 = 0x6C72755F706461;
    }

    else
    {
      v7 = 0x80000001006C2BB0;
    }

    if (a2 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (a2 <= 5u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  v14 = *a1;
  if (*(*a1 + 16))
  {
    v15 = sub_10052213C(v9, v10);
    v17 = v16;

    if (v17)
    {
      return sub_100005934(*(v14 + 56) + 32 * v15, a3, &qword_100783A30);
    }
  }

  else
  {
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 1;
  return result;
}

uint64_t sub_1005EC5F0@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v4 = 0x746172616C636564;
  v5 = 0xEE0064695F6E6F69;
  v6 = 0xE500000000000000;
  v7 = 0x6574617473;
  v8 = 0xEC00000065746174;
  v9 = 0x735F657461647075;
  if (a2 != 3)
  {
    v9 = 0x736E6F73616572;
    v8 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (a2)
  {
    v5 = 0xEF79656B5F6E6F69;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v4 = v7;
    v10 = v6;
  }

  v11 = *a1;
  if (*(*a1 + 16))
  {
    v12 = sub_10052213C(v4, v10);
    v14 = v13;

    if (v14)
    {
      return sub_100005934(*(v11 + 56) + 32 * v12, a3, &qword_100783A30);
    }
  }

  else
  {
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 1;
  return result;
}

uint64_t sub_1005EC758@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = 0x696669746E656469;
    if (a2 == 1)
    {
      v5 = 0xEA00000000007265;
    }

    else
    {
      v4 = 0x6E6F6973726576;
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701869940;
  }

  v6 = *a1;
  if (*(*a1 + 16))
  {
    v7 = sub_10052213C(v4, v5);
    v9 = v8;

    if (v9)
    {
      return sub_100005934(*(v6 + 56) + 32 * v7, a3, &qword_100783A30);
    }
  }

  else
  {
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 1;
  return result;
}

uint64_t sub_1005EC844(uint64_t a1, char a2)
{
  v13[3] = sub_1001F0C48(&qword_100783A30);
  v13[0] = swift_allocObject();
  sub_100005934(a1, v13[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v5 = sub_100537498(v13);
  if (v2)
  {

    sub_10000710C(v13);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v8._object = 0x80000001006CE1B0;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9._countAndFlagsBits = sub_100234CBC(a2);
    String.append(_:)(v9);

    v10._countAndFlagsBits = 544432416;
    v10._object = 0xE400000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 0x6174736E49707041;
    v11._object = 0xEF65736168506C6CLL;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 8250;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v5;

    sub_10000710C(v13);
    return v6;
  }

  return result;
}

uint64_t sub_1005ECA2C(uint64_t a1, char a2)
{
  v13[3] = sub_1001F0C48(&qword_100783A30);
  v13[0] = swift_allocObject();
  sub_100005934(a1, v13[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v5 = sub_100537ADC(v13);
  if (v2)
  {

    sub_10000710C(v13);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v8._object = 0x80000001006CE1B0;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9._countAndFlagsBits = sub_100234CBC(a2);
    String.append(_:)(v9);

    v10._countAndFlagsBits = 544432416;
    v10._object = 0xE400000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 0x7274736944796E41;
    v11._object = 0xEE00726F74756269;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 8250;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v5;

    sub_10000710C(v13);
    return v6;
  }

  return result;
}

uint64_t sub_1005ECC50(uint64_t a1, char a2)
{
  v14[3] = sub_1001F0C48(&qword_100783A30);
  v14[0] = swift_allocObject();
  sub_100005934(a1, v14[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  v6 = sub_100537BF8(v14, v5);
  if (v2)
  {

    sub_10000710C(v14);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v9._countAndFlagsBits = 0xD000000000000011;
    v9._object = 0x80000001006CE1B0;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_100234CBC(a2);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544432416;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._object = 0x80000001006CD410;
    v12._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v6;

    sub_10000710C(v14);
    return v7;
  }

  return result;
}

uint64_t sub_1005ECE34@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v13[3] = sub_1001F0C48(&qword_100783A30);
  v13[0] = swift_allocObject();
  sub_100005934(a1, v13[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100537C3C(v13, a3);

  if (!v3)
  {
    return sub_10000710C(v13);
  }

  sub_10000710C(v13);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v8._object = 0x80000001006CE1B0;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_100234CBC(a2);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 544432416;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x65726F7453707041;
  v11._object = 0xEF74706965636552;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005ED018(uint64_t a1, char a2)
{
  v14[3] = sub_1001F0C48(&qword_100783A30);
  v14[0] = swift_allocObject();
  sub_100005934(a1, v14[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  v6 = sub_100537E00(v14, v5);
  if (v2)
  {

    sub_10000710C(v14);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v9._object = 0x80000001006CE1B0;
    v9._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_100234CBC(a2);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544432416;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0xD000000000000012;
    v12._object = 0x80000001006CD330;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v6;

    sub_10000710C(v14);
    return v7;
  }

  return result;
}

uint64_t sub_1005ED1FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t (*a5)(uint64_t), uint64_t a6, void *a7)
{
  v21[3] = sub_1001F0C48(&qword_100783A30);
  v21[0] = swift_allocObject();
  sub_100005934(a1, v21[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v13 = JSONDecoder.init()();
  a4(v21, v13);

  if (!v7)
  {
    return sub_10000710C(v21);
  }

  sub_10000710C(v21);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v15._object = 0x80000001006CE1B0;
  v15._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a5(a2);
  String.append(_:)(v16);

  v17._countAndFlagsBits = 544432416;
  v17._object = 0xE400000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = a6;
  v18._object = a7;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 8250;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005ED3F0(uint64_t a1, char a2)
{
  v13[3] = sub_1001F0C48(&qword_100783A30);
  v13[0] = swift_allocObject();
  sub_100005934(a1, v13[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v5 = sub_1005382C4(v13);
  if (v2)
  {

    sub_10000710C(v13);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v8._object = 0x80000001006CE1B0;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9._countAndFlagsBits = sub_100234CBC(a2);
    String.append(_:)(v9);

    v10._countAndFlagsBits = 544432416;
    v10._object = 0xE400000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 0x6E6F697369636544;
    v11._object = 0xE800000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 8250;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v5;

    sub_10000710C(v13);
    return v6 & 0x1010101;
  }

  return result;
}

uint64_t sub_1005ED5CC(uint64_t a1, char a2)
{
  v14[3] = sub_1001F0C48(&qword_100783A30);
  v14[0] = swift_allocObject();
  sub_100005934(a1, v14[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  v6 = sub_1005383B4(v14, v5);
  if (v2)
  {

    sub_10000710C(v14);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v9._object = 0x80000001006CE1B0;
    v9._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_100234CBC(a2);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544432416;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0xD000000000000013;
    v12._object = 0x80000001006CE270;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v6;

    sub_10000710C(v14);
    return v7 & 1;
  }

  return result;
}

uint64_t sub_1005ED7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v22[3] = sub_1001F0C48(&qword_100783A30);
  v22[0] = swift_allocObject();
  sub_100005934(a1, v22[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v13 = JSONDecoder.init()();
  v14 = a3(v22, v13);
  if (v6)
  {

    sub_10000710C(v22);
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v17._object = 0x80000001006CE1B0;
    v17._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v17);
    v18._countAndFlagsBits = a4(a2);
    String.append(_:)(v18);

    v19._countAndFlagsBits = 544432416;
    v19._object = 0xE400000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a5;
    v20._object = a6;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = v14;

    sub_10000710C(v22);
    return v15;
  }

  return result;
}

uint64_t sub_1005ED9A8(uint64_t a1, char a2)
{
  v14[3] = sub_1001F0C48(&qword_100783A30);
  v14[0] = swift_allocObject();
  sub_100005934(a1, v14[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  v6 = sub_1005385F4(v14, v5);
  if (v2)
  {

    sub_10000710C(v14);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v9._countAndFlagsBits = 0xD000000000000011;
    v9._object = 0x80000001006CE1B0;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_100234CBC(a2);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544432416;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._object = 0x80000001006CE290;
    v12._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v6;

    sub_10000710C(v14);
    return v7 & 1;
  }

  return result;
}

uint64_t sub_1005EDB8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v13[3] = sub_1001F0C48(&qword_100783A30);
  v13[0] = swift_allocObject();
  sub_100005934(a1, v13[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100538638(v13, a3);

  if (!v3)
  {
    return sub_10000710C(v13);
  }

  sub_10000710C(v13);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v8._object = 0x80000001006CE1B0;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_100234CBC(a2);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 544432416;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000015;
  v11._object = 0x80000001006CE2B0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005EDD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v22[3] = sub_1001F0C48(&qword_100783A30);
  v22[0] = swift_allocObject();
  sub_100005934(a1, v22[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v13 = JSONDecoder.init()();
  v14 = a3(v22, v13);
  if (v6)
  {

    sub_10000710C(v22);
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v17._object = 0x80000001006CE1B0;
    v17._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v17);
    v18._countAndFlagsBits = a4(a2);
    String.append(_:)(v18);

    v19._countAndFlagsBits = 544432416;
    v19._object = 0xE400000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a5;
    v20._object = a6;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = v14;

    sub_10000710C(v22);
    return v15;
  }

  return result;
}

uint64_t sub_1005EDF6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v13[3] = sub_1001F0C48(&qword_100783A30);
  v13[0] = swift_allocObject();
  sub_100005934(a1, v13[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100538FA8(v13, a3);

  if (!v3)
  {
    return sub_10000710C(v13);
  }

  sub_10000710C(v13);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v8._object = 0x80000001006CE1B0;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_1005AF1B0(a2);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 544432416;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000012;
  v11._object = 0x80000001006CE2D0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005EE14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v15[3] = sub_1001F0C48(&qword_100783A30);
  v15[0] = swift_allocObject();
  sub_100005934(a1, v15[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v7 = sub_100538524(v15);
  if (v3)
  {

    sub_10000710C(v15);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v10._object = 0x80000001006CE1B0;
    v10._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v10);
    v11._countAndFlagsBits = a3(a2);
    String.append(_:)(v11);

    v12._countAndFlagsBits = 544432416;
    v12._object = 0xE400000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 1819242306;
    v13._object = 0xE400000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8250;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v8 = v7;

    sub_10000710C(v15);
    return v8 & 1;
  }

  return result;
}

uint64_t sub_1005EE328(uint64_t a1, char a2)
{
  v14[3] = sub_1001F0C48(&qword_100783A30);
  v14[0] = swift_allocObject();
  sub_100005934(a1, v14[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  v6 = sub_100539318(v14, v5);
  if (v2)
  {

    sub_10000710C(v14);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v9._countAndFlagsBits = 0xD000000000000011;
    v9._object = 0x80000001006CE1B0;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_1005AF1B0(a2);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544432416;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._object = 0x80000001006CD350;
    v12._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v6;

    sub_10000710C(v14);
    return v7 & 1;
  }

  return result;
}

uint64_t sub_1005EE50C@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v13[3] = sub_1001F0C48(&qword_100783A30);
  v13[0] = swift_allocObject();
  sub_100005934(a1, v13[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10053935C(v13, a3);

  if (!v3)
  {
    return sub_10000710C(v13);
  }

  sub_10000710C(v13);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v8._object = 0x80000001006CE1B0;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_1005AF1B0(a2);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 544432416;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000014;
  v11._object = 0x80000001006CE2F0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005EE6EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v14[3] = sub_1001F0C48(&qword_100783A30);
  v14[0] = swift_allocObject();
  sub_100005934(a1, v14[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10053959C(v14, v15);

  if (v3)
  {
    sub_10000710C(v14);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v9._object = 0x80000001006CE1B0;
    v9._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_1005AF1B0(a2);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544432416;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0x6769446B636F6C42;
    v12._object = 0xEB00000000747365;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = sub_10000710C(v14);
    v8 = v15[1];
    *a3 = v15[0];
    a3[1] = v8;
    a3[2] = v15[2];
  }

  return result;
}

uint64_t sub_1005EE8DC(uint64_t a1, unsigned __int8 a2)
{
  v20[3] = sub_1001F0C48(&qword_100783A30);
  v20[0] = swift_allocObject();
  sub_100005934(a1, v20[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005396AC(v20);
  if (v2)
  {

    sub_10000710C(v20);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v6._object = 0x80000001006CE1B0;
    v6._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v6);
    v7 = 0xE500000000000000;
    v8 = 0x4449574F52;
    v9 = 0xE500000000000000;
    v10 = 0x7972746E65;
    if (a2 != 5)
    {
      v10 = 1701869940;
      v9 = 0xE400000000000000;
    }

    v11 = 0xEB0000000079616CLL;
    v12 = 0x7065725F7473616CLL;
    if (a2 != 3)
    {
      v12 = 0x635F79616C706572;
      v11 = 0xEC000000746E756FLL;
    }

    if (a2 <= 4u)
    {
      v10 = v12;
      v9 = v11;
    }

    v13 = 0xEE0064695F6E6F69;
    if (a2 != 1)
    {
      v13 = 0xEF79656B5F6E6F69;
    }

    if (a2)
    {
      v8 = 0x746172616C636564;
      v7 = v13;
    }

    if (a2 <= 2u)
    {
      v14 = v8;
    }

    else
    {
      v14 = v10;
    }

    if (a2 <= 2u)
    {
      v15 = v7;
    }

    else
    {
      v15 = v9;
    }

    v16 = v15;
    String.append(_:)(*&v14);

    v17._countAndFlagsBits = 544432416;
    v17._object = 0xE400000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x6E72756F4A4D4444;
    v18._object = 0xEE00657079546C61;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 8250;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return sub_10000710C(v20);
  }

  return result;
}

uint64_t sub_1005EEBA0(uint64_t a1, unsigned __int8 a2)
{
  v23[3] = sub_1001F0C48(&qword_100783A30);
  v23[0] = swift_allocObject();
  sub_100005934(a1, v23[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  v6 = sub_1005391F0(v23, v5);
  if (v2)
  {

    sub_10000710C(v23);
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v9._object = 0x80000001006CE1B0;
    v9._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v9);
    v10 = 0xE500000000000000;
    v11 = 0x4449574F52;
    v12 = 0xE500000000000000;
    v13 = 0x7972746E65;
    if (a2 != 5)
    {
      v13 = 1701869940;
      v12 = 0xE400000000000000;
    }

    v14 = 0xEB0000000079616CLL;
    v15 = 0x7065725F7473616CLL;
    if (a2 != 3)
    {
      v15 = 0x635F79616C706572;
      v14 = 0xEC000000746E756FLL;
    }

    if (a2 <= 4u)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = 0xEE0064695F6E6F69;
    if (a2 != 1)
    {
      v16 = 0xEF79656B5F6E6F69;
    }

    if (a2)
    {
      v11 = 0x746172616C636564;
      v10 = v16;
    }

    if (a2 <= 2u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v13;
    }

    if (a2 <= 2u)
    {
      v18 = v10;
    }

    else
    {
      v18 = v12;
    }

    v19 = v18;
    String.append(_:)(*&v17);

    v20._countAndFlagsBits = 544432416;
    v20._object = 0xE400000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x3436746E49;
    v21._object = 0xE500000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 8250;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v6;

    sub_10000710C(v23);
    return v7;
  }

  return result;
}

uint64_t sub_1005EEE60@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v22[3] = sub_1001F0C48(&qword_100783A30);
  v22[0] = swift_allocObject();
  sub_100005934(a1, v22[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100539768(v22, a3);
  if (v3)
  {

    sub_10000710C(v22);
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v8._object = 0x80000001006CE1B0;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9 = 0xE500000000000000;
    v10 = 0x4449574F52;
    v11 = 0xE500000000000000;
    v12 = 0x7972746E65;
    if (a2 != 5)
    {
      v12 = 1701869940;
      v11 = 0xE400000000000000;
    }

    v13 = 0xEB0000000079616CLL;
    v14 = 0x7065725F7473616CLL;
    if (a2 != 3)
    {
      v14 = 0x635F79616C706572;
      v13 = 0xEC000000746E756FLL;
    }

    if (a2 <= 4u)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0xEE0064695F6E6F69;
    if (a2 != 1)
    {
      v15 = 0xEF79656B5F6E6F69;
    }

    if (a2)
    {
      v10 = 0x746172616C636564;
      v9 = v15;
    }

    if (a2 <= 2u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v12;
    }

    if (a2 <= 2u)
    {
      v17 = v9;
    }

    else
    {
      v17 = v11;
    }

    v18 = v17;
    String.append(_:)(*&v16);

    v19._countAndFlagsBits = 544432416;
    v19._object = 0xE400000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x6E72756F4A4D4444;
    v20._object = 0xEF7972746E456C61;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return sub_10000710C(v22);
  }

  return result;
}

uint64_t sub_1005EF12C(uint64_t a1, unsigned __int8 a2)
{
  v22[3] = sub_1001F0C48(&qword_100783A30);
  v22[0] = swift_allocObject();
  sub_100005934(a1, v22[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v5 = sub_100538A30(v22);
  if (v2)
  {

    sub_10000710C(v22);
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v8._object = 0x80000001006CE1B0;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9 = 0xE500000000000000;
    v10 = 0x4449574F52;
    v11 = 0xE500000000000000;
    v12 = 0x7972746E65;
    if (a2 != 5)
    {
      v12 = 1701869940;
      v11 = 0xE400000000000000;
    }

    v13 = 0xEB0000000079616CLL;
    v14 = 0x7065725F7473616CLL;
    if (a2 != 3)
    {
      v14 = 0x635F79616C706572;
      v13 = 0xEC000000746E756FLL;
    }

    if (a2 <= 4u)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0xEE0064695F6E6F69;
    if (a2 != 1)
    {
      v15 = 0xEF79656B5F6E6F69;
    }

    if (a2)
    {
      v10 = 0x746172616C636564;
      v9 = v15;
    }

    if (a2 <= 2u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v12;
    }

    if (a2 <= 2u)
    {
      v17 = v9;
    }

    else
    {
      v17 = v11;
    }

    v18 = v17;
    String.append(_:)(*&v16);

    v19._countAndFlagsBits = 544432416;
    v19._object = 0xE400000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x676E69727453;
    v20._object = 0xE600000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v5;

    sub_10000710C(v22);
    return v6;
  }

  return result;
}

uint64_t sub_1005EF3F4(uint64_t a1, char a2)
{
  v14[3] = sub_1001F0C48(&qword_100783A30);
  v14[0] = swift_allocObject();
  sub_100005934(a1, v14[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  v6 = sub_100539B1C(v14, v5);
  if (v2)
  {

    sub_10000710C(v14);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v9._object = 0x80000001006CE1B0;
    v9._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_1004DC6A8(a2);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544432416;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0xD000000000000018;
    v12._object = 0x80000001006CE1D0;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v6;

    sub_10000710C(v14);
    return v7;
  }

  return result;
}

uint64_t sub_1005EF5D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v13[3] = sub_1001F0C48(&qword_100783A30);
  v13[0] = swift_allocObject();
  sub_100005934(a1, v13[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100539C58(v13, a3);

  if (!v3)
  {
    return sub_10000710C(v13);
  }

  sub_10000710C(v13);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v8._object = 0x80000001006CE1B0;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_1004DC6A8(a2);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 544432416;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v11._object = 0x80000001006CE1F0;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005EF7B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v22[3] = sub_1001F0C48(&qword_100783A30);
  v22[0] = swift_allocObject();
  sub_100005934(a1, v22[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v13 = JSONDecoder.init()();
  v14 = a3(v22, v13);
  if (v6)
  {

    sub_10000710C(v22);
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v17._object = 0x80000001006CE1B0;
    v17._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v17);
    v18._countAndFlagsBits = a4(a2);
    String.append(_:)(v18);

    v19._countAndFlagsBits = 544432416;
    v19._object = 0xE400000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a5;
    v20._object = a6;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = v14;

    sub_10000710C(v22);
    return v15 & 1;
  }

  return result;
}

uint64_t sub_1005EF9AC(uint64_t a1, char a2)
{
  v14[3] = sub_1001F0C48(&qword_100783A30);
  v14[0] = swift_allocObject();
  sub_100005934(a1, v14[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  v6 = sub_10053A214(v14, v5);
  if (v2)
  {

    sub_10000710C(v14);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v9._countAndFlagsBits = 0xD000000000000011;
    v9._object = 0x80000001006CE1B0;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_1004DC6A8(a2);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544432416;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._object = 0x80000001006CE210;
    v12._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v6;

    sub_10000710C(v14);
    return v7 & 1;
  }

  return result;
}

uint64_t sub_1005EFB90@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v13[3] = sub_1001F0C48(&qword_100783A30);
  v13[0] = swift_allocObject();
  sub_100005934(a1, v13[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10053A358(v13, a3);

  if (!v3)
  {
    return sub_10000710C(v13);
  }

  sub_10000710C(v13);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v8._object = 0x80000001006CE1B0;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_1004DC6A8(a2);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 544432416;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000012;
  v11._object = 0x80000001006CE230;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005EFD70(uint64_t a1, char a2)
{
  v14[3] = sub_1001F0C48(&qword_100783A30);
  v14[0] = swift_allocObject();
  sub_100005934(a1, v14[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  v6 = sub_10053A614(v14, v5);
  if (v2)
  {

    sub_10000710C(v14);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v9._object = 0x80000001006CE1B0;
    v9._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_1004DC6A8(a2);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544432416;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._object = 0x80000001006CE250;
    v12._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v6;

    sub_10000710C(v14);
    return v7;
  }

  return result;
}

uint64_t sub_1005EFF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X3>, _OWORD *a4@<X8>)
{
  v15[3] = sub_1001F0C48(&qword_100783A30);
  v15[0] = swift_allocObject();
  sub_100005934(a1, v15[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();

  sub_1005499AC(v15, &type metadata for Data, a4);
  if (!v4)
  {
    return sub_10000710C(v15);
  }

  sub_10000710C(v15);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v10._object = 0x80000001006CE1B0;
  v10._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a3(a2);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 544432416;
  v12._object = 0xE400000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 1635017028;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005F0150(uint64_t a1, unsigned __int8 a2)
{
  v25[3] = sub_1001F0C48(&qword_100783A30);
  v25[0] = swift_allocObject();
  sub_100005934(a1, v25[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v5 = sub_100538A30(v25);
  if (v2)
  {

    sub_10000710C(v25);
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v8._object = 0x80000001006CE1B0;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    if (a2 <= 3u)
    {
      v17 = 0x5F746E756F636361;
      v18 = 0xE900000000000064;
      v19 = 0x695F656C646E7562;
      if (a2 != 2)
      {
        v19 = 0x765F656C646E7562;
        v18 = 0xEE006E6F69737265;
      }

      v20 = 0xED00006C72755F65;
      if (a2)
      {
        v17 = 0x726168735F707061;
      }

      else
      {
        v20 = 0xEA00000000006469;
      }

      if (a2 <= 1u)
      {
        v15 = v17;
      }

      else
      {
        v15 = v19;
      }

      if (a2 <= 1u)
      {
        v16 = v20;
      }

      else
      {
        v16 = v18;
      }
    }

    else
    {
      v9 = 0x80000001006C3EA0;
      v10 = 0xD000000000000014;
      v11 = 0xE700000000000000;
      v12 = 0x64695F6D657469;
      if (a2 != 7)
      {
        v12 = 0x5F6E6F6973726576;
        v11 = 0xEA00000000006469;
      }

      if (a2 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0xE700000000000000;
      v14 = 0x6C72755F706461;
      if (a2 != 4)
      {
        v14 = 0xD00000000000001ALL;
        v13 = 0x80000001006C2BB0;
      }

      if (a2 <= 5u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      if (a2 <= 5u)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }
    }

    v21 = v16;
    String.append(_:)(*&v15);

    v22._countAndFlagsBits = 544432416;
    v22._object = 0xE400000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 0x676E69727453;
    v23._object = 0xE600000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 8250;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v5;

    sub_10000710C(v25);
    return v6;
  }

  return result;
}

uint64_t sub_1005F0464@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v25[3] = sub_1001F0C48(&qword_100783A30);
  v25[0] = swift_allocObject();
  sub_100005934(a1, v25[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100538AFC(v25, a3);
  if (v3)
  {

    sub_10000710C(v25);
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v8._object = 0x80000001006CE1B0;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    if (a2 <= 3u)
    {
      v17 = 0x5F746E756F636361;
      v18 = 0xE900000000000064;
      v19 = 0x695F656C646E7562;
      if (a2 != 2)
      {
        v19 = 0x765F656C646E7562;
        v18 = 0xEE006E6F69737265;
      }

      v20 = 0xED00006C72755F65;
      if (a2)
      {
        v17 = 0x726168735F707061;
      }

      else
      {
        v20 = 0xEA00000000006469;
      }

      if (a2 <= 1u)
      {
        v15 = v17;
      }

      else
      {
        v15 = v19;
      }

      if (a2 <= 1u)
      {
        v16 = v20;
      }

      else
      {
        v16 = v18;
      }
    }

    else
    {
      v9 = 0x80000001006C3EA0;
      v10 = 0xD000000000000014;
      v11 = 0xE700000000000000;
      v12 = 0x64695F6D657469;
      if (a2 != 7)
      {
        v12 = 0x5F6E6F6973726576;
        v11 = 0xEA00000000006469;
      }

      if (a2 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0xE700000000000000;
      v14 = 0x6C72755F706461;
      if (a2 != 4)
      {
        v14 = 0xD00000000000001ALL;
        v13 = 0x80000001006C2BB0;
      }

      if (a2 <= 5u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      if (a2 <= 5u)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }
    }

    v21 = v16;
    String.append(_:)(*&v15);

    v22._countAndFlagsBits = 544432416;
    v22._object = 0xE400000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 5001813;
    v23._object = 0xE300000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 8250;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return sub_10000710C(v25);
  }

  return result;
}

uint64_t sub_1005F076C(uint64_t a1, unsigned __int8 a2)
{
  v20[3] = sub_1001F0C48(&qword_100783A30);
  v20[0] = swift_allocObject();
  sub_100005934(a1, v20[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v5 = sub_10053A658(v20);
  if (v2)
  {

    sub_10000710C(v20);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v8._object = 0x80000001006CE1B0;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9 = 0xEE0064695F6E6F69;
    v10 = 0xE500000000000000;
    v11 = 0x6574617473;
    v12 = 0xEC00000065746174;
    v13 = 0x735F657461647075;
    if (a2 != 3)
    {
      v13 = 0x736E6F73616572;
      v12 = 0xE700000000000000;
    }

    if (a2 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (a2)
    {
      v9 = 0xEF79656B5F6E6F69;
    }

    if (a2 <= 1u)
    {
      v14 = 0x746172616C636564;
    }

    else
    {
      v14 = v11;
    }

    if (a2 <= 1u)
    {
      v15 = v9;
    }

    else
    {
      v15 = v10;
    }

    v16 = v15;
    String.append(_:)(*&v14);

    v17._countAndFlagsBits = 544432416;
    v17._object = 0xE400000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x65523C7961727241;
    v18._object = 0xED00003E6E6F7361;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 8250;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v5;

    sub_10000710C(v20);
    return v6;
  }

  return result;
}

uint64_t sub_1005F09EC(uint64_t a1, unsigned __int8 a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, void *a6)
{
  v26[3] = sub_1001F0C48(&qword_100783A30);
  v26[0] = swift_allocObject();
  sub_100005934(a1, v26[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v12 = JSONDecoder.init()();
  a4(v26, v12);
  if (v6)
  {

    sub_10000710C(v26);
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v14._object = 0x80000001006CE1B0;
    v14._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v14);
    v15 = 0xEE0064695F6E6F69;
    v16 = 0xE500000000000000;
    v17 = 0x6574617473;
    v18 = 0xEC00000065746174;
    v19 = 0x735F657461647075;
    if (a2 != 3)
    {
      v19 = 0x736E6F73616572;
      v18 = 0xE700000000000000;
    }

    if (a2 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (a2)
    {
      v15 = 0xEF79656B5F6E6F69;
    }

    if (a2 <= 1u)
    {
      v20 = 0x746172616C636564;
    }

    else
    {
      v20 = v17;
    }

    if (a2 <= 1u)
    {
      v21 = v15;
    }

    else
    {
      v21 = v16;
    }

    v22 = v21;
    String.append(_:)(*&v20);

    v23._countAndFlagsBits = 544432416;
    v23._object = 0xE400000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = a5;
    v24._object = a6;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 8250;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return sub_10000710C(v26);
  }

  return result;
}

uint64_t sub_1005F0C74(uint64_t a1, unsigned __int8 a2)
{
  v20[3] = sub_1001F0C48(&qword_100783A30);
  v20[0] = swift_allocObject();
  sub_100005934(a1, v20[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v5 = sub_100538A30(v20);
  if (v2)
  {

    sub_10000710C(v20);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v8._object = 0x80000001006CE1B0;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    v9 = 0xEE0064695F6E6F69;
    v10 = 0xE500000000000000;
    v11 = 0x6574617473;
    v12 = 0xEC00000065746174;
    v13 = 0x735F657461647075;
    if (a2 != 3)
    {
      v13 = 0x736E6F73616572;
      v12 = 0xE700000000000000;
    }

    if (a2 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (a2)
    {
      v9 = 0xEF79656B5F6E6F69;
    }

    if (a2 <= 1u)
    {
      v14 = 0x746172616C636564;
    }

    else
    {
      v14 = v11;
    }

    if (a2 <= 1u)
    {
      v15 = v9;
    }

    else
    {
      v15 = v10;
    }

    v16 = v15;
    String.append(_:)(*&v14);

    v17._countAndFlagsBits = 544432416;
    v17._object = 0xE400000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x676E69727453;
    v18._object = 0xE600000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 8250;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v5;

    sub_10000710C(v20);
    return v6;
  }

  return result;
}

uint64_t sub_1005F0EEC(uint64_t a1, char a2)
{
  v15[3] = sub_1001F0C48(&qword_100783A30);
  v15[0] = swift_allocObject();
  sub_100005934(a1, v15[0] + 16, &qword_100783A30);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v5 = sub_100538A30(v15);
  if (v2)
  {

    sub_10000710C(v15);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v8._object = 0x80000001006CE1B0;
    v8._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v8);
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 0x696669746E656469;
      }

      else
      {
        v9 = 0x6E6F6973726576;
      }

      if (a2 == 1)
      {
        v10 = 0xEA00000000007265;
      }

      else
      {
        v10 = 0xE700000000000000;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      v9 = 1701869940;
    }

    v11 = v10;
    String.append(_:)(*&v9);

    v12._countAndFlagsBits = 544432416;
    v12._object = 0xE400000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 0x676E69727453;
    v13._object = 0xE600000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8250;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = v5;

    sub_10000710C(v15);
    return v6;
  }

  return result;
}

uint64_t sub_1005F1114(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696669746E656469;
  v4 = 0xEA00000000007265;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x696669746E656469;
  v8 = 0xEA00000000007265;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
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

Swift::Int sub_1005F1218()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005F12B8()
{
  String.hash(into:)();
}

Swift::Int sub_1005F1344()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005F13E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005F1C00(*a1);
  *a2 = result;
  return result;
}

void sub_1005F1410(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA00000000007265;
  v5 = 0x696669746E656469;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_1005F161C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDMUpdateEntity.Entity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005F1674()
{
  sub_1001F0C48(&qword_100789318);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_1006A4050;
  v9 = *(v0 + 8);
  v2 = v9;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &protocol witness table for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = v2;
  *(inited + 88) = 1;
  v3 = *(v0 + 24);
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = &protocol witness table for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 96) = v3;
  *(inited + 144) = 2;
  v7 = *(v0 + 40);
  v8 = v3;
  *(inited + 176) = &type metadata for String;
  *(inited + 184) = &protocol witness table for String;
  *(inited + 192) = &protocol witness table for String;
  *(inited + 152) = *(v0 + 40);
  sub_100222DF8(&v9, v6);
  sub_100222DF8(&v8, v6);
  sub_100222DF8(&v7, v6);
  v4 = sub_100529D98(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_1007870E8);
  swift_arrayDestroy();
  return sub_1004E7C24(v4);
}

uint64_t sub_1005F17A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1005E8C74(0, a2);
  if (v3)
  {
  }

  v9 = v8;
  v10 = v7;
  sub_1005E8C74(1, a2);
  v12 = v11;
  v19 = v13;
  sub_1005E8C74(2, a2);
  v15 = v14;
  v17 = v16;

  *a3 = a1;
  a3[1] = v10;
  a3[2] = v9;
  a3[3] = v19;
  a3[4] = v12;
  a3[5] = v15;
  a3[6] = v17;
  return result;
}

unint64_t sub_1005F1884()
{
  result = qword_100789308;
  if (!qword_100789308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789308);
  }

  return result;
}

unint64_t sub_1005F18D8()
{
  result = qword_100789310;
  if (!qword_100789310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789310);
  }

  return result;
}

unint64_t sub_1005F192C()
{
  result = qword_100789320;
  if (!qword_100789320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789320);
  }

  return result;
}

unint64_t sub_1005F19B4()
{
  result = qword_100789328;
  if (!qword_100789328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789328);
  }

  return result;
}

unint64_t sub_1005F1A10()
{
  result = qword_100789390;
  if (!qword_100789390)
  {
    sub_1001F76D0(&qword_100789398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789390);
  }

  return result;
}

unint64_t sub_1005F1A78()
{
  result = qword_1007893A0;
  if (!qword_1007893A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007893A0);
  }

  return result;
}

unint64_t sub_1005F1ACC(void *a1)
{
  a1[1] = sub_1005F1B04();
  a1[2] = sub_1005F1B58();
  result = sub_1005F1BAC();
  a1[3] = result;
  return result;
}

unint64_t sub_1005F1B04()
{
  result = qword_1007893A8;
  if (!qword_1007893A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007893A8);
  }

  return result;
}

unint64_t sub_1005F1B58()
{
  result = qword_1007893B0;
  if (!qword_1007893B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007893B0);
  }

  return result;
}

unint64_t sub_1005F1BAC()
{
  result = qword_1007893B8;
  if (!qword_1007893B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007893B8);
  }

  return result;
}

unint64_t sub_1005F1C00(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075B2F8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1005F1C64()
{
  type metadata accessor for SlotMachine();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = [objc_allocWithZone(type metadata accessor for SlotDrawer()) init];
  v2 = [objc_allocWithZone(UISSlotMachine) initWithSlotDrawer:v1 options:1];

  *(v0 + 112) = v2;
  qword_1007B88D0 = v0;
}

uint64_t sub_1005F1CEC()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_1005F1E78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SlotDrawer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1005F1ED0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_100007158(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1005D9260(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_100007158(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}