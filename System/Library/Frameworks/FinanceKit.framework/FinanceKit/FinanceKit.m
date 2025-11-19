int main(int argc, const char **argv, const char **envp)
{
  qword_1000080F8 = 0;
  v3 = objc_autoreleasePoolPush();
  sub_1000011B4();
  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_1000011B4()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  nullsub_1(isCurrentExecutor);
  if (MKBGetDeviceLockState() == 3)
  {
    if (qword_100008030 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100001FEC(v6, static Logger.daemon);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Key bag disabled, proceeding as if the device was unlocked since boot", v9, 2u);
    }

    goto LABEL_10;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
LABEL_10:
    if (qword_100008030 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100001FEC(v10, static Logger.daemon);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Device was unlocked since boot, starting daemon", v13, 2u);
    }

    sub_10000195C();
    goto LABEL_29;
  }

  if (qword_100008030 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100001FEC(v14, static Logger.daemon);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Device wasn't unlocked since boot, waiting for first unlock", v17, 2u);
  }

  sub_100002024();
  (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.utility(_:), v0);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v4, v0);
  out_token = -1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Registering for first unlock notification", v21, 2u);
  }

  v44 = sub_100001B54;
  v45 = 0;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100001C24;
  v43 = &unk_100004258;
  v22 = _Block_copy(&aBlock);
  v23 = v18;
  v24 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v23, v22);
  _Block_release(v22);
  if (v24 || out_token == -1)
  {

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_35;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Failed to register for first unlock notification";
    goto LABEL_34;
  }

  v39 = -1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Registering for lock status notification", v27, 2u);
  }

  v44 = sub_100001C78;
  v45 = 0;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100001C24;
  v43 = &unk_100004280;
  v28 = _Block_copy(&aBlock);
  v29 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v39, v23, v28);
  _Block_release(v28);

  if (v29 || v39 == -1)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_35;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Failed to register for lock status notification";
LABEL_34:
    _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

LABEL_35:

    exit(1);
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Device was unlocked already, exiting", v37, 2u);
    }

    exit(0);
  }

LABEL_29:
  v30 = [objc_opt_self() mainRunLoop];
  [v30 run];
}

uint64_t sub_10000195C()
{
  if (qword_100008030 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001FEC(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting daemon", v3, 2u);
  }

  v4 = type metadata accessor for Daemon();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  qword_1000080F8 = Daemon.init()();

  Daemon.run()();
  v7 = [objc_opt_self() defaultCenter];
  v11[4] = sub_100001E28;
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100001EF8;
  v11[3] = &unk_1000042A8;
  v8 = _Block_copy(v11);
  v9 = [v7 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v8];
  _Block_release(v8);

  return swift_unknownObjectRelease();
}

void sub_100001B54()
{
  if (qword_100008030 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001FEC(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received first unlock notification, exiting", v3, 2u);
  }

  exit(0);
}

uint64_t sub_100001C24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100001C78()
{
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    if (qword_100008030 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001FEC(v3, static Logger.daemon);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received lock status notification: device was unlocked, exiting", v6, 2u);
    }

    exit(0);
  }

  if (qword_100008030 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001FEC(v0, static Logger.daemon);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Received lock status notification: device remains locked since boot", v2, 2u);
  }
}

void sub_100001E28()
{
  if (qword_100008030 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001FEC(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Current locale did change, exiting", v3, 2u);
  }

  exit(0);
}

uint64_t sub_100001EF8(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100001FEC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100002024()
{
  result = qword_1000080F0;
  if (!qword_1000080F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000080F0);
  }

  return result;
}

uint64_t sub_100002070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000023E8()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.orderExtractionDiagnosticExtension);
  sub_100001FEC(v0, static Logger.orderExtractionDiagnosticExtension);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002518()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.diagnosticExtension);
  sub_100001FEC(v0, static Logger.diagnosticExtension);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002928()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.backgroundDelivery);
  sub_100001FEC(v0, static Logger.backgroundDelivery);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002A60()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.bankConnectOfflineLab);
  sub_100001FEC(v0, static Logger.bankConnectOfflineLab);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002B9C()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.bankConnectService);
  sub_100001FEC(v0, static Logger.bankConnectService);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002C8C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100002F00(v3, a2);
  sub_100001FEC(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002D4C()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.bankConnectWidget);
  sub_100001FEC(v0, static Logger.bankConnectWidget);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002DF0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_100001FEC(v3, a2);
}

uint64_t sub_100002E68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100001FEC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_100002F00(uint64_t a1, uint64_t *a2)
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