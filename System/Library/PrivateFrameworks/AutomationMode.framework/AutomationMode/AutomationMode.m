uint64_t sub_100001250()
{
  v0 = type metadata accessor for Logger();
  sub_100002E18(v0, qword_100010818);
  sub_100002DE0(v0, qword_100010818);
  if (qword_100010830 != -1)
  {
    swift_once();
  }

  v1 = qword_100010C10;
  return Logger.init(_:)();
}

id sub_1000012DC()
{
  v1 = v0;
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002DE0(v2, qword_100010818);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tearing down Reader", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for Reader();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100001498(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1000015B8(void *a1, uint64_t a2)
{
  v4 = (*(*(sub_100002E7C(&unk_100010990, &qword_100009D48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v71 - v5;
  v7 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002DE0(v8, qword_100010818);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v74 = v6;
  if (v12)
  {
    v13 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v76 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_100006E44(*&v9[OBJC_IVAR____TtC21automationmode_writer6Reader_stateFilePath], *&v9[OBJC_IVAR____TtC21automationmode_writer6Reader_stateFilePath + 8], &v76);
    _os_log_impl(&_mh_execute_header, v10, v11, "Reader client asked if automation mode is enabled, checking for state file at %{public}s", v14, 0xCu);
    sub_100003050(v15);

    a2 = v13;
  }

  v73 = objc_opt_self();
  v16 = [v73 defaultManager];
  v17 = *&v9[OBJC_IVAR____TtC21automationmode_writer6Reader_stateFilePath];
  v18 = *&v9[OBJC_IVAR____TtC21automationmode_writer6Reader_stateFilePath + 8];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v16 fileExistsAtPath:v19];

  v21 = v9;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  if (v20)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v76 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_100006E44(v17, v18, &v76);
      _os_log_impl(&_mh_execute_header, v22, v23, "State file exists at path %{public}s", v25, 0xCu);
      sub_100003050(v26);
    }

    static String.Encoding.utf8.getter();
    v27 = String.init(contentsOfFile:encoding:)();
    v71 = v18;
    v72 = v17;
    v32 = v27;
    v34 = v33;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v76 = v38;
      *v37 = 136446210;

      v39 = a2;
      v40 = sub_100006E44(v32, v34, &v76);

      *(v37 + 4) = v40;
      a2 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "Read boot session id from automation mode state file: %{public}s", v37, 0xCu);
      sub_100003050(v38);
    }

    v41 = v74;
    sub_100002EC4(&v21[OBJC_IVAR____TtC21automationmode_writer6Reader_bootSessionUUID], v74);
    v42 = type metadata accessor for UUID();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v41, 1, v42);

    if (v44 == 1)
    {
      sub_100002F34(v41);

      v45 = v34;
    }

    else
    {
      v46 = UUID.uuidString.getter();
      v45 = v47;
      (*(v43 + 8))(v41, v42);
      if (v32 != v46)
      {
        goto LABEL_21;
      }
    }

    if (v34 == v45)
    {

      goto LABEL_22;
    }

LABEL_21:
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v48 & 1) == 0)
    {
      v49 = v21;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = a2;
        v54 = swift_slowAlloc();
        v76 = v54;
        *v52 = 136446210;
        v56 = v71;
        v55 = v72;
        *(v52 + 4) = sub_100006E44(v72, v71, &v76);
        _os_log_impl(&_mh_execute_header, v50, v51, "Removing expired state file at path %{public}s", v52, 0xCu);
        sub_100003050(v54);
        a2 = v53;
      }

      else
      {

        v56 = v71;
        v55 = v72;
      }

      v57 = [v73 defaultManager];
      v58 = String._bridgeToObjectiveC()();
      v76 = 0;
      v59 = [v57 removeItemAtPath:v58 error:&v76];

      if (v59)
      {
        v60 = v76;
      }

      else
      {
        v61 = v76;
        v62 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v63 = v49;
        swift_errorRetain();
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *v66 = 136446466;
          *(v66 + 4) = sub_100006E44(v55, v56, &v76);
          *(v66 + 12) = 2082;
          v75 = v62;
          swift_errorRetain();
          sub_100002E7C(&qword_100010BE0, &qword_100009D50);
          v67 = String.init<A>(describing:)();
          v69 = a2;
          v70 = sub_100006E44(v67, v68, &v76);

          *(v66 + 14) = v70;
          a2 = v69;
          _os_log_impl(&_mh_execute_header, v64, v65, "Failed to remove expired automation mode state file at %{public}s: %{public}s", v66, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      (*(a2 + 16))(a2, 0);
    }

LABEL_22:
    (*(a2 + 16))(a2, 1);
  }

  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v76 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_100006E44(v17, v18, &v76);
    _os_log_impl(&_mh_execute_header, v22, v23, "State file does not exist at path %{public}s", v28, 0xCu);
    sub_100003050(v29);
  }

  v30 = *(a2 + 16);

  return v30(a2, 0);
}

uint64_t sub_100002070(char *a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = *&a1[OBJC_IVAR____TtC21automationmode_writer6Reader_noAuthRequiredFilePath];
  v6 = *&a1[OBJC_IVAR____TtC21automationmode_writer6Reader_noAuthRequiredFilePath + 8];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v4 fileExistsAtPath:v7];

  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002DE0(v9, qword_100010818);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_100006E44(v5, v6, &v17);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reader client asked if automation mode requires user authentication, checked for file at %{public}s, exists: %{BOOL}d", v13, 0x12u);
    sub_100003050(v14);
  }

  v15 = *(a2 + 16);

  return v15(a2, v8 ^ 1);
}

uint64_t sub_100002250(void *a1)
{
  v2 = v1;
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002DE0(v4, qword_100010818);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received reader connection request", v7, 2u);
  }

  [a1 setExportedObject:v2];
  v8 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AutomationModeReaderProtocol];
  [a1 setExportedInterface:v8];

  [a1 resume];
  return 1;
}

id sub_1000023A8()
{
  v0 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v77 = &v71 - v2;
  v3 = XAMAutomationModeDataVaultPath();
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v4;

  v5 = XAMAutomationModeStateFilePath();
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = XAMAutomationModeDoesNotRequireAuthenticationFilePath();
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v9;

  v10 = XAMAutomationModeWriterMachServiceName();
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v74 = v10;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002DE0(v14, qword_100010818);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_100006E44(v78, v7, v83);
    *(v17 + 12) = 2082;
    v18 = sub_100006E44(v11, v13, v83);

    *(v17 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v15, v16, "AutomationMode writer daemon launched with state file %{public}s, mach service name %{public}s.", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = type metadata accessor for LocalAuthenticationWrapper();
  v20 = swift_allocObject();
  v21 = qword_100010850;

  if (v21 != -1)
  {
    swift_once();
  }

  v76 = v7;
  v22 = qword_100010C28;
  if (qword_100010860 != -1)
  {
    swift_once();
  }

  v71 = sub_100002DE0(v0, qword_100010C38);
  v23 = v77;
  sub_100002EC4(v71, v77);
  v84 = v19;
  v85 = &off_10000C6E0;
  v83[0] = v20;
  v24 = type metadata accessor for Writer();
  v25 = objc_allocWithZone(v24);
  v26 = v84;
  v27 = sub_100002F9C(v83, v84);
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  v82[3] = v19;
  v82[4] = &off_10000C6E0;
  v82[0] = v32;
  *&v25[OBJC_IVAR____TtC21automationmode_writer6Writer_lock] = 0;
  *&v25[OBJC_IVAR____TtC21automationmode_writer6Writer_userPreferencesScope] = kCFPreferencesAnyUser;
  v33 = &v25[OBJC_IVAR____TtC21automationmode_writer6Writer_dataVaultPath];
  v34 = v72;
  *v33 = v73;
  v33[1] = v34;
  v35 = &v25[OBJC_IVAR____TtC21automationmode_writer6Writer_stateFilePath];
  v36 = v76;
  *v35 = v78;
  v35[1] = v36;
  v37 = &v25[OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath];
  v38 = v79;
  *v37 = v75;
  v37[1] = v38;
  v25[OBJC_IVAR____TtC21automationmode_writer6Writer_enforcesClientEntitlement] = 1;
  sub_100002FEC(v82, &v25[OBJC_IVAR____TtC21automationmode_writer6Writer_authorizationManager]);
  *&v25[OBJC_IVAR____TtC21automationmode_writer6Writer_credentialTimeout] = v22;
  sub_100002EC4(v23, &v25[OBJC_IVAR____TtC21automationmode_writer6Writer_bootSessionUUID]);
  v81.receiver = v25;
  v81.super_class = v24;
  v39 = kCFPreferencesAnyUser;
  v40 = objc_msgSendSuper2(&v81, "init");
  sub_100002F34(v23);
  sub_100003050(v82);
  sub_100003050(v83);
  v41 = objc_allocWithZone(NSXPCListener);
  v42 = v40;
  v43 = v74;
  v44 = [v41 initWithMachServiceName:v74];

  v45 = v44;
  [v45 setDelegate:v42];

  [v45 resume];
  v46 = XAMAutomationModeReaderMachServiceName();
  if (!v46)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = String._bridgeToObjectiveC()();
  }

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v83[0] = v53;
    *v52 = 136446210;
    v54 = sub_100006E44(v47, v49, v83);

    *(v52 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v50, v51, "AutomationMode reader listening to mach service name %{public}s", v52, 0xCu);
    sub_100003050(v53);
  }

  else
  {
  }

  v55 = v77;
  sub_100002EC4(v71, v77);
  v56 = type metadata accessor for Reader();
  v57 = objc_allocWithZone(v56);
  v58 = &v57[OBJC_IVAR____TtC21automationmode_writer6Reader_stateFilePath];
  v59 = v75;
  v60 = v76;
  *v58 = v78;
  *(v58 + 1) = v60;
  v61 = &v57[OBJC_IVAR____TtC21automationmode_writer6Reader_noAuthRequiredFilePath];
  *v61 = v59;
  v61[1] = v79;
  sub_100002EC4(v55, &v57[OBJC_IVAR____TtC21automationmode_writer6Reader_bootSessionUUID]);
  v80.receiver = v57;
  v80.super_class = v56;
  v62 = objc_msgSendSuper2(&v80, "init");
  sub_100002F34(v55);
  v63 = objc_allocWithZone(NSXPCListener);
  v64 = v62;
  v65 = [v63 initWithMachServiceName:v46];

  v66 = v65;
  [v66 setDelegate:v64];

  [v66 resume];
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "Waiting for connections", v69, 2u);
  }

  return v42;
}

uint64_t type metadata accessor for Reader()
{
  result = qword_100010968;
  if (!qword_100010968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100002C20()
{
  sub_100002CBC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100002CBC()
{
  if (!qword_100010B30)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100010B30);
    }
  }
}

uint64_t sub_100002D38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002D58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_100002D94(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100002DE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002E18(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100002E7C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002F34(uint64_t a1)
{
  v2 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002F9C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100002FEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003050(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000309C()
{
  sub_100008D90(0, &qword_100010BA0, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_100010C10 = result;
  return result;
}

uint64_t sub_10000310C()
{
  v0 = type metadata accessor for Logger();
  sub_100002E18(v0, qword_100010A00);
  sub_100002DE0(v0, qword_100010A00);
  if (qword_100010830 != -1)
  {
    swift_once();
  }

  v1 = qword_100010C10;
  return Logger.init(_:)();
}

id sub_100003198(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100002DE0(v8, qword_100010A00);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_errorRetain();
      sub_100002E7C(&qword_100010BE0, &qword_100009D50);
      v13 = String.init<A>(describing:)();
      v15 = sub_100006E44(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Provided authorization failed evaluation of device owner policy with error %{public}s", v11, 0xCu);
      sub_100003050(v12);
    }

    else
    {
    }
  }

  a3(a2);
  return [a5 invalidate];
}

uint64_t sub_10000336C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

id sub_10000344C()
{
  v1 = v0;
  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002DE0(v2, qword_100010A00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tearing down Writer", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for Writer();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for Writer()
{
  result = qword_100010B20;
  if (!qword_100010B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003670(int a1)
{
  v134 = a1;
  v1 = type metadata accessor for String.Encoding();
  v126 = *(v1 - 8);
  v127 = v1;
  v2 = *(v126 + 64);
  __chkstk_darwin(v1);
  v129 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v116 - v9;
  v11 = type metadata accessor for URL();
  v131 = *(v11 - 8);
  v12 = *(v131 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v116 - v16;
  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v132 = v17;
  v18 = type metadata accessor for Logger();
  v19 = sub_100002DE0(v18, qword_100010A00);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v130 = v11;
  v125 = v15;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v136[0] = v24;
    *v23 = 136446210;
    if (v134)
    {
      v25 = 0x454C42414E45;
    }

    else
    {
      v25 = 0x656C6261736964;
    }

    if (v134)
    {
      v26 = 0xE600000000000000;
    }

    else
    {
      v26 = 0xE700000000000000;
    }

    v27 = sub_100006E44(v25, v26, v136);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Executing request to %{public}s automation mode", v23, 0xCu);
    sub_100003050(v24);
  }

  v28 = OBJC_IVAR____TtC21automationmode_writer6Writer_lock;
  v29 = v133;
  swift_beginAccess();
  os_unfair_lock_lock(&v29[v28]);
  swift_endAccess();
  v128 = objc_opt_self();
  v30 = [v128 defaultManager];
  v31 = &v29[OBJC_IVAR____TtC21automationmode_writer6Writer_stateFilePath];
  v32 = *&v29[OBJC_IVAR____TtC21automationmode_writer6Writer_stateFilePath];
  v33 = *(v31 + 1);
  v34 = String._bridgeToObjectiveC()();
  v35 = [v30 fileExistsAtPath:v34];

  if (((v35 ^ v134) & 1) == 0)
  {
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v136[0] = v55;
      *v54 = 136446210;
      if (v134)
      {
        v56 = 0x44454C42414E45;
      }

      else
      {
        v56 = 0x64656C6261736964;
      }

      if (v134)
      {
        v57 = 0xE700000000000000;
      }

      else
      {
        v57 = 0xE800000000000000;
      }

      v58 = sub_100006E44(v56, v57, v136);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "Requested automation mode state matches current state (%{public}s), nothing to do.", v54, 0xCu);
      sub_100003050(v55);

      goto LABEL_25;
    }

LABEL_26:

LABEL_27:
    v59 = v133;
    swift_beginAccess();
    v60 = &v59[v28];
    goto LABEL_36;
  }

  v122 = v10;
  v36 = v132;
  URL.init(fileURLWithPath:)();
  v37 = v133;
  v124 = v19;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v40 = os_log_type_enabled(v38, v39);
  v119 = v8;
  v120 = v32;
  v121 = v33;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = v28;
    v43 = swift_slowAlloc();
    v136[0] = v43;
    *v41 = 136446210;
    *(v41 + 4) = sub_100006E44(v32, v33, v136);
    _os_log_impl(&_mh_execute_header, v38, v39, "State file path %{public}s", v41, 0xCu);
    sub_100003050(v43);
    v28 = v42;

    v36 = v132;
  }

  v44 = v131;
  v45 = v129;
  if (v134)
  {
    v118 = OBJC_IVAR____TtC21automationmode_writer6Writer_bootSessionUUID;
    v46 = v122;
    sub_100008FF4(&v37[OBJC_IVAR____TtC21automationmode_writer6Writer_bootSessionUUID], v122, &unk_100010990, &qword_100009D48);
    v47 = type metadata accessor for UUID();
    v48 = *(v47 - 8);
    v117 = *(v48 + 48);
    v49 = v117(v46, 1, v47);
    v123 = v28;
    v116 = v48;
    if (v49 == 1)
    {
      v50 = 0x6E776F6E6B6E75;
      sub_10000905C(v46, &unk_100010990, &qword_100009D48);
      v51 = 0xE700000000000000;
    }

    else
    {
      v50 = UUID.uuidString.getter();
      v51 = v68;
      (*(v48 + 8))(v46, v47);
    }

    v136[0] = v50;
    v136[1] = v51;
    static String.Encoding.utf8.getter();
    sub_100008DD8();
    v69 = v132;
    StringProtocol.write(to:atomically:encoding:)();
    (*(v126 + 8))(v45, v127);

    v82 = v125;
    v83 = v130;
    (*(v44 + 16))(v125, v69, v130);
    v84 = v37;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      LODWORD(v129) = v86;
      v88 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v136[0] = v127;
      *v88 = 136446466;
      sub_1000090BC(&qword_100010C00, &type metadata accessor for URL);
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v83;
      v92 = v91;
      v93 = *(v44 + 8);
      v131 = v44 + 8;
      v94 = v93;
      v93(v82, v90);
      v95 = sub_100006E44(v89, v92, v136);

      *(v88 + 4) = v95;
      *(v88 + 12) = 2082;
      v96 = v119;
      sub_100008FF4(&v37[v118], v119, &unk_100010990, &qword_100009D48);
      if (v117(v96, 1, v47) == 1)
      {
        v97 = 0x6E776F6E6B6E75;
        sub_10000905C(v96, &unk_100010990, &qword_100009D48);
        v98 = 0xE700000000000000;
      }

      else
      {
        v97 = UUID.uuidString.getter();
        v98 = v100;
        (*(v116 + 8))(v96, v47);
      }

      v101 = v132;
      v102 = sub_100006E44(v97, v98, v136);

      *(v88 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v85, v129, "Created state file for automation mode at %{public}s with boot session id %{public}s", v88, 0x16u);
      swift_arrayDestroy();

      v94(v101, v130);
    }

    else
    {

      v99 = *(v44 + 8);
      v99(v82, v83);
      v99(v69, v83);
    }

    v28 = v123;
LABEL_44:
    v103 = [v128 defaultManager];
    v104 = String._bridgeToObjectiveC()();
    v105 = [v103 fileExistsAtPath:v104];

    LOBYTE(v104) = v105 ^ v134;
    v52 = Logger.logObject.getter();
    if ((v104 & 1) == 0)
    {
      v108 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v136[0] = v110;
        *v109 = 136446210;
        if (v134)
        {
          v111 = 0x44454C42414E45;
        }

        else
        {
          v111 = 0x64656C6261736964;
        }

        if (v134)
        {
          v112 = 0xE700000000000000;
        }

        else
        {
          v112 = 0xE800000000000000;
        }

        v113 = sub_100006E44(v111, v112, v136);

        *(v109 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v52, v108, "Successfully set automation mode to %{public}s", v109, 0xCu);
        sub_100003050(v110);
      }

      v114 = XAMAutomationModeStateChangedNotificationName();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v115 = String.utf8CString.getter();

      notify_post((v115 + 32));

      goto LABEL_27;
    }

    v106 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v52, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v52, v106, "Failed to change automation mode", v107, 2u);
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v61 = [v128 defaultManager];
  URL._bridgeToObjectiveC()(v62);
  v64 = v63;
  v136[0] = 0;
  v65 = [v61 removeItemAtURL:v63 error:v136];

  if (v65)
  {
    v66 = *(v44 + 8);
    v67 = v136[0];
    v66(v36, v130);
    goto LABEL_44;
  }

  v123 = v28;
  v70 = v136[0];
  v71 = _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v44 + 8))(v36, v130);
  swift_errorRetain();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v136[0] = v75;
    *v74 = 136446210;
    v135 = v71;
    swift_errorRetain();
    sub_100002E7C(&qword_100010BE0, &qword_100009D50);
    v76 = String.init<A>(describing:)();
    v78 = sub_100006E44(v76, v77, v136);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v72, v73, "Failed to change automation mode: %{public}s", v74, 0xCu);
    sub_100003050(v75);
  }

  else
  {
  }

  v79 = v123;
  v80 = v133;
  swift_beginAccess();
  v60 = &v80[v79];
LABEL_36:
  os_unfair_lock_unlock(v60);
  return swift_endAccess();
}

void sub_1000044D0()
{
  sub_100002CBC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000045AC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  sub_100008FF4(v13, &v11, &qword_100010BA8, &qword_100009E68);
  if (!*(&v12 + 1))
  {
    sub_10000905C(&v11, &qword_100010BA8, &qword_100009E68);
LABEL_9:
    v5 = String._bridgeToObjectiveC()();
    v6 = [v0 valueForEntitlement:v5];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      *v9 = 0u;
      v10 = 0u;
    }

    v11 = *v9;
    v12 = v10;
    sub_100008FF4(&v11, v9, &qword_100010BA8, &qword_100009E68);
    if (*(&v10 + 1))
    {
      sub_100008D90(0, &qword_100010BB0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v4 = [v8 BOOLValue];

LABEL_17:
        sub_10000905C(&v11, &qword_100010BA8, &qword_100009E68);
        sub_10000905C(v13, &qword_100010BA8, &qword_100009E68);
        return v4;
      }
    }

    else
    {
      sub_10000905C(v9, &qword_100010BA8, &qword_100009E68);
    }

    v4 = 0;
    goto LABEL_17;
  }

  sub_100008D90(0, &qword_100010BB0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = [v9[0] BOOLValue];

  if (!v3)
  {
    goto LABEL_9;
  }

  sub_10000905C(v13, &qword_100010BA8, &qword_100009E68);
  return 1;
}

void sub_100004910(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

NSString sub_100004974()
{
  result = String._bridgeToObjectiveC()();
  qword_100010C18 = result;
  return result;
}

NSString sub_1000049AC()
{
  result = String._bridgeToObjectiveC()();
  qword_100010C20 = result;
  return result;
}

double sub_100004A04()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16) && (v3 = sub_1000073EC(0xD00000000000002ELL, 0x800000010000A360), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = sub_100007628(v7, v6);

  if (v8)
  {
    return 0.0;
  }

  if (qword_100010848 != -1)
  {
    swift_once();
  }

  v10 = qword_100010C20;
  v11 = sub_100007720();
  LODWORD(v10) = CFPreferencesGetAppBooleanValue(v10, v11, 0);

  result = 2419200.0;
  if (!v10)
  {
    return 28800.0;
  }

  return result;
}

uint64_t sub_100004B8C()
{
  if (qword_100010840 != -1)
  {
    swift_once();
  }

  v1 = sub_100007720();
  v2 = *(v0 + OBJC_IVAR____TtC21automationmode_writer6Writer_userPreferencesScope);
  v3 = *(v0 + OBJC_IVAR____TtC21automationmode_writer6Writer_dataVaultPath);
  v4 = *(v0 + OBJC_IVAR____TtC21automationmode_writer6Writer_dataVaultPath + 8);
  v5 = String._bridgeToObjectiveC()();
  v6 = _CFPreferencesCopyValueWithContainer();

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 doubleValue];
      v9 = v8;
      swift_unknownObjectRelease();
      return v9;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_100004CA8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = v2;
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100002DE0(v5, qword_100010A00);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v6, v7, "Storing credential creation time:  %f", v8, 0xCu);
    }

    if (qword_100010840 != -1)
    {
      swift_once();
    }

    v9 = [objc_allocWithZone(NSNumber) initWithDouble:*&a1];
    v10 = sub_100007720();
    v11 = *(v3 + OBJC_IVAR____TtC21automationmode_writer6Writer_userPreferencesScope);
    v12 = *(v3 + OBJC_IVAR____TtC21automationmode_writer6Writer_dataVaultPath);
    v13 = *(v3 + OBJC_IVAR____TtC21automationmode_writer6Writer_dataVaultPath + 8);
    v14 = String._bridgeToObjectiveC()();
    _CFPreferencesSetValueWithContainer();
  }
}

NSString sub_100004E98()
{
  result = String._bridgeToObjectiveC()();
  qword_100010C30 = result;
  return result;
}

uint64_t sub_100004ED0()
{
  if (qword_100010858 != -1)
  {
    swift_once();
  }

  v1 = sub_100007720();
  v2 = *(v0 + OBJC_IVAR____TtC21automationmode_writer6Writer_userPreferencesScope);
  v3 = *(v0 + OBJC_IVAR____TtC21automationmode_writer6Writer_dataVaultPath);
  v4 = *(v0 + OBJC_IVAR____TtC21automationmode_writer6Writer_dataVaultPath + 8);
  v5 = String._bridgeToObjectiveC()();
  v6 = _CFPreferencesCopyValueWithContainer();

  if (!v6)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v8;
  }

  return 0;
}

void sub_100004FE0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100002DE0(v6, qword_100010A00);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100006E44(a1, a2, &v17);
      _os_log_impl(&_mh_execute_header, v7, v8, "Storing credential boot session UUID:  %s", v9, 0xCu);
      sub_100003050(v10);
    }

    if (qword_100010858 != -1)
    {
      swift_once();
    }

    v11 = String._bridgeToObjectiveC()();

    v12 = sub_100007720();
    v13 = *(v3 + OBJC_IVAR____TtC21automationmode_writer6Writer_userPreferencesScope);
    v14 = *(v3 + OBJC_IVAR____TtC21automationmode_writer6Writer_dataVaultPath);
    v15 = *(v3 + OBJC_IVAR____TtC21automationmode_writer6Writer_dataVaultPath + 8);
    v16 = String._bridgeToObjectiveC()();
    _CFPreferencesSetValueWithContainer();
  }
}

BOOL sub_100005214()
{
  v1 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v55 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  *&v13 = COERCE_DOUBLE(sub_100004B8C());
  if (v14)
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100002DE0(v15, qword_100010A00);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "No previous credential exists";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);

LABEL_14:

    return 0;
  }

  v20 = *&v13;
  v21 = sub_100004ED0();
  if (!v22)
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100002DE0(v25, qword_100010A00);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Previous credential did not record boot session, will require new authorization";
    goto LABEL_13;
  }

  v23 = v21;
  v24 = v22;
  sub_100008FF4(v0 + OBJC_IVAR____TtC21automationmode_writer6Writer_bootSessionUUID, v4, &unk_100010990, &qword_100009D48);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_10000905C(v4, &unk_100010990, &qword_100009D48);
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    if (v23 == UUID.uuidString.getter() && v24 == v27)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        if (qword_100010838 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100002DE0(v30, qword_100010A00);
        (*(v6 + 16))(v10, v12, v5);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v56 = v55;
          *v33 = 136315394;
          v34 = sub_100006E44(v23, v24, &v56);

          *(v33 + 4) = v34;
          *(v33 + 12) = 2080;
          v35 = UUID.uuidString.getter();
          v37 = v36;
          v38 = *(v6 + 8);
          v38(v10, v5);
          v39 = sub_100006E44(v35, v37, &v56);

          *(v33 + 14) = v39;
          _os_log_impl(&_mh_execute_header, v31, v32, "Previous credential boot session does not match current (%s != %s, will require new authorization", v33, 0x16u);
          swift_arrayDestroy();

          v38(v12, v5);
        }

        else
        {

          v54 = *(v6 + 8);
          v54(v10, v5);
          v54(v12, v5);
        }

        return 0;
      }
    }

    (*(v6 + 8))(v12, v5);
  }

  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100002DE0(v40, qword_100010A00);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v41, v42, "Last credential created at %f", v43, 0xCu);
  }

  TMGetKernelMonotonicClock();
  v45 = v44;
  v46 = v44 - v20;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134218240;
    *(v49 + 4) = v45;
    *(v49 + 12) = 2048;
    *(v49 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "Credential age based on current time %f is %f", v49, 0x16u);
  }

  v50 = v0;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = *&v50[OBJC_IVAR____TtC21automationmode_writer6Writer_credentialTimeout];
    _os_log_impl(&_mh_execute_header, v51, v52, "Credential timeout: %f", v53, 0xCu);
  }

  if (v46 < 0.0)
  {
    return 0;
  }

  return v46 < *&v50[OBJC_IVAR____TtC21automationmode_writer6Writer_credentialTimeout];
}

char *sub_100005990()
{
  v0 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  sub_100002E18(v0, qword_100010C38);
  v1 = sub_100002DE0(v0, qword_100010C38);
  return sub_1000059E8(v1);
}

char *sub_1000059E8@<X0>(char *a1@<X8>)
{
  v2 = (*(*(sub_100002E7C(&unk_100010990, &qword_100009D48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v58 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = 37;
  v17 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v17 + 16) = 37;
  *(v17 + 48) = 0u;
  *(v17 + 61) = 0;
  *(v17 + 32) = 0u;
  if (!sysctlbyname("kern.bootsessionuuid", (v17 + 32), &v63, 0, 0))
  {

    static String.Encoding.ascii.getter();
    v30 = sub_100006220(v17, v16);
    if (!v31)
    {
      if (qword_100010838 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100002DE0(v40, qword_100010A00);
      v25 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v25, v41))
      {
        goto LABEL_21;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64 = v43;
      *v42 = 136315138;

      v44 = Array.description.getter();
      v46 = v45;

      v47 = sub_100006E44(v44, v46, &v64);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v25, v41, "Unable to convert kern.bootsessionuuid value %s to ascii string.", v42, 0xCu);
      sub_100003050(v43);

      goto LABEL_13;
    }

    v32 = v31;
    v33 = v30;
    UUID.init(uuidString:)();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      v62 = a1;

      v48 = *(v6 + 32);
      v48(v12, v4, v5);
      if (qword_100010838 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100002DE0(v49, qword_100010A00);
      (*(v6 + 16))(v10, v12, v5);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v59 = v52;
        v60 = swift_slowAlloc();
        v64 = v60;
        *v52 = 136446210;
        sub_1000090BC(&qword_100010C08, &type metadata accessor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v48;
        v55 = v54;
        (*(v6 + 8))(v10, v5);
        v56 = sub_100006E44(v53, v55, &v64);
        v48 = v61;

        v57 = v59;
        *(v59 + 1) = v56;
        _os_log_impl(&_mh_execute_header, v50, v51, "Boot session UUID is %{public}s", v57, 0xCu);
        sub_100003050(v60);
      }

      else
      {

        (*(v6 + 8))(v10, v5);
      }

      a1 = v62;
      v48(v62, v12, v5);
      v39 = 0;
      goto LABEL_22;
    }

    sub_10000905C(v4, &unk_100010990, &qword_100009D48);
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100002DE0(v34, qword_100010A00);

    v25 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v25, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v64 = v37;
      *v36 = 136446210;
      v38 = sub_100006E44(v33, v32, &v64);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v25, v35, "Unable to convert kern.bootsessionuuid value %{public}s to UUID", v36, 0xCu);
      sub_100003050(v37);

      goto LABEL_13;
    }

LABEL_20:

    goto LABEL_21;
  }

  v18 = errno.getter();
  result = strerror(v18);
  if (result)
  {
    v20 = String.init(utf8String:)();
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0x6E776F6E6B6E55;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE700000000000000;
    }

    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100002DE0(v24, qword_100010A00);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v64 = v28;
      *v27 = 67109378;
      *(v27 + 4) = errno.getter();
      *(v27 + 8) = 2082;
      v29 = sub_100006E44(v22, v23, &v64);

      *(v27 + 10) = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error %d from sysctlbyname: %{public}s", v27, 0x12u);
      sub_100003050(v28);

LABEL_13:

LABEL_21:

      v39 = 1;
LABEL_22:
      (*(v6 + 56))(a1, v39, 1, v5);
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100006220(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v9 = static String.Encoding.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    static String.Encoding.ascii.getter();
    v11 = static String.Encoding.== infix(_:_:)();
    v10(v8, v4);
    if ((v11 & 1) == 0)
    {
      static String.Encoding.nonLossyASCII.getter();
      v12 = static String.Encoding.== infix(_:_:)();
      v10(v8, v4);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_100006DC0(v13);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  static String.Encoding.utf8.getter();
  v17 = static String.Encoding.== infix(_:_:)();
  v10(v8, v4);
  if (v17)
  {

LABEL_17:
    v10(a2, v4);
    return v16;
  }

  if ((_StringGuts._isContiguousASCII.getter() & 1) == 0)
  {

LABEL_10:
    v18 = *(a1 + 16);
    if (v18)
    {
      v8 = 0;
      while (v8[a1 + 32])
      {
        if (v18 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v19 = [objc_allocWithZone(NSString) initWithBytes:a1 + 32 length:v8 encoding:String.Encoding.rawValue.getter()];

    if (!v19)
    {
      v10(a2, v4);
      return 0;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_17;
  }

  v10(a2, v4);

  return v16;
}

id sub_100006504()
{
  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002DE0(v1, qword_100010A00);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100006E44(*&v2[OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath], *&v2[OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath + 8], &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking for '%s'", v5, 0xCu);
    sub_100003050(v6);
  }

  v7 = [objc_opt_self() defaultManager];
  v8 = *&v2[OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath];
  v9 = *&v2[OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath + 8];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v7 fileExistsAtPath:v10];

  return v11;
}

uint64_t sub_1000066A8()
{
  v0 = [objc_allocWithZone(LAContext) init];
  v1 = [v0 canEvaluatePolicy:2 error:0];

  if ((v1 & 1) == 0)
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100002DE0(v7, qword_100010A00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Unable to evaluate device owner authentication policy, probably no passcode set.";
    goto LABEL_11;
  }

  if (sub_1000080D8())
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100002DE0(v2, qword_100010A00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Authentication not required for privileged connection";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_12:

    return 0;
  }

  if (sub_100005214())
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100002DE0(v9, qword_100010A00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Previous authentication has not expired";
    goto LABEL_11;
  }

  if (sub_100006504())
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100002DE0(v10, qword_100010A00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Waiving the requirement for authentication because of the existence of the no-auth-required cookie";
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_100006A70(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    TMGetKernelMonotonicClock();
    sub_100004CA8(v12, 0);
    sub_100008FF4(a4 + OBJC_IVAR____TtC21automationmode_writer6Writer_bootSessionUUID, v10, &unk_100010990, &qword_100009D48);
    v13 = type metadata accessor for UUID();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      sub_10000905C(v10, &unk_100010990, &qword_100009D48);
      v15 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E75;
    }

    else
    {
      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v14 + 8))(v10, v13);
      v16 = v17;
      v15 = v19;
    }

    sub_100004FE0(v16, v15);
    sub_100003670(1);
    return (a2)(0);
  }
}

void sub_100006D44(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_100006DC0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = static String._tryFromUTF8(_:)();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100006E44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006F10(v11, 0, 0, 1, a1, a2);
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
    sub_100008D30(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003050(v11);
  return v7;
}

unint64_t sub_100006F10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000701C(a5, a6);
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

char *sub_10000701C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100007068(a1, a2);
  sub_100007198(&off_10000C608);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100007068(uint64_t a1, unint64_t a2)
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

  v6 = sub_100007284(v5, 0);
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
        v7 = sub_100007284(v10, 0);
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

uint64_t sub_100007198(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000072F8(result, v12, 1, v3);
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

void *sub_100007284(uint64_t a1, uint64_t a2)
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

  sub_100002E7C(&qword_100010B98, &qword_100009E60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000072F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002E7C(&qword_100010B98, &qword_100009E60);
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

unint64_t sub_1000073EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000074A8(a1, a2, v6);
}

unint64_t sub_100007464(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100007560(a1, v4);
}

unint64_t sub_1000074A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100007560(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100008F44(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100008FA0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

BOOL sub_100007628(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

NSString sub_100007720()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 environment];

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v3 + 16) && (v4 = sub_1000073EC(0xD00000000000002ELL, 0x800000010000A1D0), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 16 * v4);
    v7 = *v6;
    v8 = v6[1];

    v9 = String._bridgeToObjectiveC()();

    return v9;
  }

  else
  {

    return v0;
  }
}

unint64_t sub_100007840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002E7C(&qword_100010BE8, &qword_100009E98);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008FF4(v4, v13, &qword_100010BD8, &unk_100009E88);
      result = sub_100007464(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100008F34(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10000797C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002E7C(&unk_100010BF0, &unk_100009EA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008FF4(v4, &v13, &qword_100010BC8, &qword_100009E78);
      v5 = v13;
      v6 = v14;
      result = sub_1000073EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100008F34(&v15, (v3[7] + 32 * result));
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

void sub_100007AAC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = swift_allocObject();
  v7[2] = sub_100008EB8;
  v7[3] = v6;
  v7[4] = a3;
  v8 = objc_allocWithZone(LAContext);
  _Block_copy(a4);

  v9 = a3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v8 initWithExternalizedContext:isa];

  if (v11)
  {
    sub_100002E7C(&qword_100010BD0, &qword_100009E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100009D90;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    sub_100007840(inited);
    swift_setDeallocating();
    sub_10000905C(inited + 32, &qword_100010BD8, &unk_100009E88);
    v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = swift_allocObject();
    v14[2] = sub_100008EC4;
    v14[3] = v7;
    v14[4] = v11;
    aBlock[4] = sub_100008F10;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000336C;
    aBlock[3] = &unk_10000C770;
    a4 = _Block_copy(aBlock);
    v15 = v11;

    [v15 evaluatePolicy:2 options:v13.super.isa reply:a4];
  }

  else
  {
    sub_100002E7C(&qword_100010BC0, &qword_100009E70);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_100009D90;
    *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v16 + 72) = &type metadata for String;
    *(v16 + 40) = v17;
    *(v16 + 48) = 0xD000000000000036;
    *(v16 + 56) = 0x800000010000A130;
    v18 = @"com.apple.dt.AutomationMode.writer.error";
    sub_10000797C(v16);
    swift_setDeallocating();
    sub_10000905C(v16 + 32, &qword_100010BC8, &qword_100009E78);
    v19 = objc_allocWithZone(NSError);
    v20 = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v19 initWithDomain:@"com.apple.dt.AutomationMode.writer.error" code:2 userInfo:v20];

    v22 = v21;
    _Block_copy(a4);
    v15 = v22;
    v23 = _convertErrorToNSError(_:)();
    (*(a4 + 2))(a4, v23);

    v13.super.isa = v15;
  }

  _Block_release(a4);
}

uint64_t sub_100007E98(void *a1)
{
  v2 = v1;
  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002DE0(v4, qword_100010A00);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received connection request", v7, 2u);
  }

  v8 = sub_1000045AC();
  if (v8)
  {
    [a1 setExportedObject:v2];
    v9 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AutomationModeWriterProtocol];
    [a1 setExportedInterface:v9];

    [a1 resume];
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_100006E44(0xD000000000000031, 0x800000010000A260, &v15);
      _os_log_impl(&_mh_execute_header, v10, v11, "Rejecting connection from client lacking entitlement %{public}s", v12, 0xCu);
      sub_100003050(v13);
    }
  }

  return v8 & 1;
}

id sub_1000080D8()
{
  v0 = [objc_opt_self() currentConnection];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 valueForEntitlement:v2];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_100008FF4(&v9, &v7, &qword_100010BA8, &qword_100009E68);
  if (!*(&v8 + 1))
  {
    sub_10000905C(&v7, &qword_100010BA8, &qword_100009E68);
    goto LABEL_11;
  }

  sub_100008D90(0, &qword_100010BB0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v4 = [v6 BOOLValue];

LABEL_12:
  sub_10000905C(&v9, &qword_100010BA8, &qword_100009E68);
  return v4;
}

void sub_100008264(uint64_t a1, uint64_t a2, void *a3, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002DE0(v8, qword_100010A00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Handling request to enable automation mode with serialized authorization.", v11, 2u);
  }

  _Block_copy(aBlock);
  v12 = a3;
  sub_100007AAC(a1, a2, v12, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void sub_1000083A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000080D8())
  {
    v37 = v5;
    v15 = *(a1 + OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath);
    v14 = *(a1 + OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath + 8);
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v17 = sub_100002DE0(v16, qword_100010A00);

    v36 = v17;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = v4;
      v21 = v15;
      v22 = v20;
      v23 = swift_slowAlloc();
      v35 = a2;
      v24 = v23;
      v38[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_100006E44(v21, v14, v38);
      _os_log_impl(&_mh_execute_header, v18, v19, "no-auth-required cookie file path %{public}s", v22, 0xCu);
      sub_100003050(v24);
      a2 = v35;

      v15 = v21;
      v4 = v34;
    }

    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    URL.init(fileURLWithPath:)();
    static String.Encoding.utf8.getter();
    sub_100008DD8();
    StringProtocol.write(to:atomically:encoding:)();
    (*(v37 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v15;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v30 = 136446210;
      v32 = sub_100006E44(v29, v14, v38);

      *(v30 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Created no-auth-required cookie file for automation mode at %{public}s", v30, 0xCu);
      sub_100003050(v31);
    }

    else
    {
    }

    (*(a2 + 16))(a2, 0);
  }

  else
  {
    v25 = [objc_allocWithZone(NSError) initWithDomain:@"com.apple.dt.AutomationMode.writer.error" code:3 userInfo:0];
    v37 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v37);

    v26 = v37;
  }
}

void sub_10000888C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000080D8())
  {
    v10 = *(a1 + OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath);
    v9 = *(a1 + OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath + 8);
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    v12 = sub_100002DE0(v11, qword_100010A00);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v37 = v12;
      v16 = v10;
      v17 = v15;
      v18 = swift_slowAlloc();
      v38 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_100006E44(v16, v9, &v38);
      _os_log_impl(&_mh_execute_header, v13, v14, "no-auth-required cookie file path %{public}s", v17, 0xCu);
      sub_100003050(v18);

      v10 = v16;
    }

    v19 = [objc_opt_self() defaultManager];
    URL.init(fileURLWithPath:)();
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    (*(v5 + 8))(v8, v4);
    v38 = 0;
    v23 = [v19 removeItemAtURL:v22 error:&v38];

    v24 = v38;
    if (v23)
    {
      swift_bridgeObjectRetain_n();
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38 = v29;
        *v28 = 136446210;
        v30 = sub_100006E44(v10, v9, &v38);

        *(v28 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "Removed no-auth-required cookie file for automation mode at %{public}s", v28, 0xCu);
        sub_100003050(v29);
      }

      else
      {
      }

      (*(a2 + 16))(a2, 0);
    }

    else
    {
      v35 = v38;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v36 = _convertErrorToNSError(_:)();
      (*(a2 + 16))(a2, v36);
    }
  }

  else
  {
    v31 = [objc_allocWithZone(NSError) initWithDomain:@"com.apple.dt.AutomationMode.writer.error" code:3 userInfo:0];
    v32 = _convertErrorToNSError(_:)();
    v33 = *(a2 + 16);
    v37 = v32;
    v33(a2);

    v34 = v37;
  }
}

uint64_t sub_100008D30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008D90(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100008DD8()
{
  result = qword_100010BB8;
  if (!qword_100010BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010BB8);
  }

  return result;
}

uint64_t sub_100008E2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008E80()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008ED0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_100008F34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100008FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002E7C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000905C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002E7C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000090BC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_100009104@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}