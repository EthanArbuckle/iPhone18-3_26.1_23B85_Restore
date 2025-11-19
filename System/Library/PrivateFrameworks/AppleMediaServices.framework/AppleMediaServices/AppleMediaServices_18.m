unint64_t sub_1001A5AD0()
{
  result = qword_1002DFB68;
  if (!qword_1002DFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFB68);
  }

  return result;
}

uint64_t static DictionaryCoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v2 = [objc_opt_self() dataWithJSONObject:a2 options:0 error:&v12];
  v3 = v12;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = type metadata accessor for JSONDecoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10000D170(v4, v6);
  }

  else
  {
    v11 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t static DictionaryCoder.encode<A>(_:)()
{
  v1 = type metadata accessor for JSONEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  if (!v0)
  {
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v14[0] = 0;
    v10 = [v8 JSONObjectWithData:isa options:0 error:v14];

    v11 = *&v14[0];
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10000D170(v4, v6);
      swift_unknownObjectRelease();
      sub_1001514B8(&v15, v14);
      sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
      if (swift_dynamicCast())
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10000D170(v4, v6);
    }
  }

  return result;
}

uint64_t sub_1001A5E34(uint64_t a1, uint64_t a2)
{
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1001A5EC0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return _swift_continuation_throwingResume();
}

uint64_t *sub_1001A5F04(uint64_t a1, void *a2, char a3, void *a4)
{
  result = sub_10000C4FC((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    return sub_1001A5E34(v8, a4);
  }

  if (a2)
  {
    v9 = a2;

    return sub_1001A5EC0(v8, v9, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSString sub_1001A5F90()
{
  result = String._bridgeToObjectiveC()();
  qword_1002DFB70 = result;
  return result;
}

uint64_t sub_1001A5FC8@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_100003724(v1);
  v62 = v3;
  v63 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v61 = v7 - v6;
  v59 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v8 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  sub_10000306C();
  v60 = v10 - v9;
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10000306C();
  v13 = type metadata accessor for URL();
  v14 = sub_100003724(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000306C();
  v21 = v20 - v19;
  v22 = type metadata accessor for Logger();
  v23 = sub_100003724(v22);
  v67 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  v64 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v65 = v53 - v29;
  __chkstk_darwin(v30);
  v32 = v53 - v31;
  static Log.amsSubsystem.getter();
  Logger.init(subsystem:category:)();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Starting up Private Identifiers XPC server", v35, 2u);
  }

  v36 = v66;
  sub_1001A6730();
  if (v36)
  {
    sub_1001A668C();
    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to initialize Private Identifiers XPC Server: %@", v42, 0xCu);
      sub_1001A7228(v43);
    }

    swift_willThrow();
    return (*(v67 + 8))(v32, v22);
  }

  else
  {
    sub_1001A68F0(v21);
    v56 = v16;
    v57 = v13;
    v66 = v22;
    v54 = "com.apple.amsprivateidentifiers";
    v55 = "private-identifiers-server";
    v53[1] = sub_100003AE0(0, &qword_1002DFBA8, OS_dispatch_queue_serial_ptr);
    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    sub_1001A7290();
    sub_100099DF4(&qword_1002DFBB8, &qword_10023FEA8);
    sub_1001A72E8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v62 + 104))(v61, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v63);
    v37 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
    static Log.amsSubsystem.getter();
    v38 = v65;
    Logger.init(subsystem:category:)();
    static Log.amsSubsystem.getter();
    v39 = v64;
    Logger.init(subsystem:category:)();
    v45 = static XPCServer.createListener(machServiceName:requiredEntitlement:persistenceAccessQueue:xpcServerLogger:persistenceDirectoryURL:persistenceLogger:cloudKitContainerEnvironment:apsMachServiceName:syncEngineLogger:shouldCreateSyncEngine:)(0xD00000000000001FLL, v55 | 0x8000000000000000, 0xD000000000000024, v54 | 0x8000000000000000, v37, v32, v21, v38, 1, 0xD000000000000023, 0x8000000100275E80, v39, &unk_10023FEB0, 0);

    v46 = *(v67 + 8);
    v47 = v39;
    v48 = v66;
    v46(v47, v66);
    v46(v38, v48);
    v49 = type metadata accessor for XPCListener();
    v50 = v57;
    v51 = v58;
    v58[3] = v49;
    *v51 = v45;
    (*(v56 + 8))(v21, v50);
    sub_1001A668C();
    return (v46)(v32, v48);
  }
}

void sub_1001A668C()
{
  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "Started Private Identifiers XPC server", v1, 2u);
  }
}

uint64_t sub_1001A6730()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = [objc_opt_self() ams_cachesDirectory];
  if (v8)
  {
    v9 = v8;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v7, v4, v0);
    URL.appendingPathComponent(_:)();
    return (*(v1 + 8))(v7, v0);
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();
    AMSError();

    return swift_willThrow();
  }
}

uint64_t sub_1001A68F0(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLResourceValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    __break(1u);
  }

  v21[0] = v8;
  v21[1] = v1;
  v13 = [objc_allocWithZone(NSFileManager) init];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v22 = 0;
  v17 = [v13 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v22];

  if (v17)
  {
    v18 = v22;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    (*(v4 + 16))(v7, a1, v3);
    URL.setResourceValues(_:)();
    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v21[0]);
  }

  else
  {
    v20 = v22;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_1001A6B70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001A6BFC;

  return sub_1001A6D04();
}

uint64_t sub_1001A6BFC(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1001A6D20()
{
  v1 = [objc_opt_self() defaultBag];
  if (qword_1002DA5B0 != -1)
  {
    swift_once();
  }

  v2 = [v1 BOOLForKey:qword_1002DFB70];
  v0[20] = v2;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001A6EBC;
  v3 = swift_continuation_init();
  v0[17] = sub_100099DF4(&qword_1002DFBC8, &unk_10023FEC0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001A5F04;
  v0[13] = &unk_1002BBB68;
  v0[14] = v3;
  [v2 valueWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001A6EBC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1001A7058;
  }

  else
  {
    v3 = sub_1001A6FCC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A6FCC()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = [v2 BOOLValue];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1001A7058()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3(0);
}

AMSDPrivateIdentifiersXPCServerCreator __swiftcall AMSDPrivateIdentifiersXPCServerCreator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1001A7228(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001A7290()
{
  result = qword_1002DFBB0;
  if (!qword_1002DFBB0)
  {
    type metadata accessor for OS_dispatch_queue_serial.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFBB0);
  }

  return result;
}

unint64_t sub_1001A72E8()
{
  result = qword_1002DFBC0;
  if (!qword_1002DFBC0)
  {
    sub_10009A468(&qword_1002DFBB8, &qword_10023FEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFBC0);
  }

  return result;
}

uint64_t sub_1001A7354(void *a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v4 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v72 = &v63 - v6;
  v7 = sub_100099DF4(&unk_1002DFC00, &qword_10023FEF0);
  v8 = sub_100003724(v7);
  v73 = v9;
  v74 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v69 = v12;
  v70 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v71 = &v63 - v14;
  v80 = type metadata accessor for Log();
  v15 = sub_100003724(v80);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  v75 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v63 - v23;
  v81 = a1;
  v25 = [a1 logKey];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = AMSSetLogKey();

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  static Log.accountsDaemon.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v30 = type metadata accessor for LogInterpolation();
  sub_100003B78(v30);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v76 = 2 * *(v31 + 72);
  sub_100006890();
  v66 = v34;
  v35 = swift_allocObject();
  v65 = xmmword_1002329F0;
  *(v35 + 16) = xmmword_1002329F0;

  v79 = v27;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v37 = *(v17 + 8);
  v36 = v17 + 8;
  v38 = v80;
  v77 = v37;
  v37(v24, v80);
  v78 = [v81 account];
  if (v78)
  {
    v75 = v29;
    v67 = v36;
    v39 = v81;
    v64 = sub_1001A813C(v81);
    if (v40)
    {
      v41 = v40;
      static Log.accountsDaemon.getter();
      sub_100006890();
      *(swift_allocObject() + 16) = xmmword_10023EF50;
      static LogInterpolation.prefix<A>(_:_:)();

      sub_100007010();
      v86 = sub_100003AE0(0, &qword_1002DFC20, ACAccount_ptr);
      v83 = v78;
      v66 = v78;
      static LogInterpolation.traceableSensitive(_:)();
      sub_100009DF4(&v83);
      LogInterpolation.init(stringLiteral:)();
      v86 = &type metadata for String;
      v83 = v64;
      v84 = v41;

      static LogInterpolation.traceableSensitive(_:)();
      sub_100009DF4(&v83);
      LogInterpolation.init(stringLiteral:)();
      v86 = sub_100003AE0(0, &qword_1002DFC28, AMSPushPayload_ptr);
      v83 = v39;
      v42 = v39;
      static LogInterpolation.traceableSensitive(_:)();
      sub_100009DF4(&v83);
      Log.default(_:)();

      v43 = sub_100007E78();
      v44(v43);
      type metadata accessor for SendableBag();
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
      }

      sub_100003AE0(0, &qword_1002DFC30, ACAccountStore_ptr);
      sub_1001A81A0(&qword_1002DFC38);
      sub_1001A81A0(&unk_1002DFC40);
      v45 = v66;
      v46 = v71;
      DeveloperSilentAuthTokenManager.init(bundleId:account:mediaType:bag:)();
      v47 = type metadata accessor for TaskPriority();
      v48 = v72;
      sub_100002728(v72, 1, 1, v47);
      v50 = v73;
      v49 = v74;
      v51 = v70;
      (*(v73 + 16))(v70, v46, v74);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v53 = (v69 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      (*(v50 + 32))(v54 + v52, v51, v49);
      *(v54 + v53) = v82;
      v55 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
      v56 = v75;
      *v55 = v79;
      v55[1] = v56;
      sub_10013ABD4(0, 0, v48, &unk_10023FF00, v54);

      return (*(v50 + 8))(v46, v49);
    }

    else
    {

      static Log.accountsDaemon.getter();
      sub_100006890();
      *(swift_allocObject() + 16) = v65;
      static LogInterpolation.prefix<A>(_:_:)();

      sub_100007010();
      Log.error(_:)();

      v61 = sub_100007E78();
      return v62(v61);
    }
  }

  else
  {

    v58 = v75;
    static Log.accountsDaemon.getter();
    sub_100006890();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v59 = [v81 accountIdentifier];
    v60 = v59;
    if (v59)
    {
      v59 = sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
    }

    else
    {
      v84 = 0;
      v85 = 0;
    }

    v83 = v60;
    v86 = v59;
    static LogInterpolation.traceableSensitive(_:)();
    sub_100009DF4(&v83);
    Log.error(_:)();

    return v77(v58, v38);
  }
}

uint64_t sub_1001A7BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[15] = a5;
  v8 = type metadata accessor for Log();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v11 = async function pointer to DeveloperSilentAuthTokenManager.fetchToken(cachePolicy:)[1];
  v12 = swift_task_alloc();
  v7[21] = v12;
  v13 = sub_100099DF4(&unk_1002DFC00, &qword_10023FEF0);
  *v12 = v7;
  v12[1] = sub_1001A7D04;

  return DeveloperSilentAuthTokenManager.fetchToken(cachePolicy:)(v7 + 2, 1, v13);
}

uint64_t sub_1001A7D04()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1001A7E80;
  }

  else
  {
    sub_100004118((v2 + 16));
    v4 = sub_1001A7E20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001A7E20()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A7E80()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v18 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  static Log.accountsDaemon.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v7 = type metadata accessor for LogInterpolation();
  sub_100003B78(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  type metadata accessor for PushParsableDSATCache();
  static LogInterpolation.prefix<A>(_:_:)();
  sub_100007010();
  swift_getErrorValue();
  v12 = v0[11];
  v13 = v0[12];
  v0[10] = v13;
  v14 = sub_100007914(v0 + 7);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  static LogInterpolation.traceableSensitive(_:)();
  sub_100009DF4((v0 + 7));
  Log.error(_:)();

  (*(v3 + 8))(v2, v18);
  v15 = v0[20];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001A813C(void *a1)
{
  v1 = [a1 clientIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001A81A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100003AE0(255, &qword_1002DFC30, ACAccountStore_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A81F4(uint64_t a1)
{
  v3 = v2;
  v5 = sub_100099DF4(&unk_1002DFC00, &qword_10023FEF0);
  sub_100003B78(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v9);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = *(v1 + v10 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1000CB6D0;

  return sub_1001A7BE8(a1, v12, v13, v1 + v7, v11, v14, v15);
}

uint64_t sub_1001A833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_1001A8364, 0, 0);
}

uint64_t sub_1001A8364@<X0>(NSURL *a1@<X8>)
{
  v3 = *(v1 + 160);
  v2 = *(v1 + 168);
  URL._bridgeToObjectiveC()(a1);
  v5 = v4;
  if (v2)
  {
    v6 = *(v1 + 168);
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [*(v1 + 184) requestWithMethod:*(v1 + 152) URL:v5 headers:v7.super.isa parameters:*(v1 + 176)];
  *(v1 + 192) = v8;

  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_1001A84EC;
  v9 = swift_continuation_init();
  *(v1 + 136) = sub_100099DF4(&unk_1002DFD10, &qword_10023FF60);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_1000C5D24;
  *(v1 + 104) = &unk_1002BBBD0;
  *(v1 + 112) = v9;
  [v8 resultWithCompletion:v1 + 80];

  return _swift_continuation_await(v1 + 16);
}

uint64_t sub_1001A84EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1001A8668;
  }

  else
  {
    v3 = sub_1001A85FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A85FC()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001A8668()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[25];

  return v3();
}

void *String.amsd_dataFromBase64EncodedGzippedString()(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  Data.init(base64Encoded:options:)();
  if (v4 >> 60 == 15)
  {
    sub_1000B2EE8();
    swift_allocError();
    *v5 = 1;
    *(v5 + 8) = 0;
    swift_willThrow();
  }

  else
  {
    v2 = objc_opt_self();
    sub_1000049C0();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [v2 decompressedDataWithGzippedData:isa];

    if (v7)
    {
      v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = sub_1000049C0();
      sub_10009A7A0(v8, v9);
    }

    else
    {
      sub_1000B2EE8();
      swift_allocError();
      *v10 = 2;
      *(v10 + 8) = 1;
      swift_willThrow();
      v11 = sub_1000049C0();
      sub_10009A7A0(v11, v12);
    }
  }

  return v2;
}

uint64_t sub_1001A882C(uint64_t a1)
{
  v2 = sub_1001A8C1C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001A8868(uint64_t a1)
{
  v2 = sub_1001A8C1C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001A88C0(uint64_t a1)
{
  v2 = sub_1001A8E7C();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_1001A88FC(uint64_t a1)
{
  v2 = sub_1001A8E7C();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001A8944(uint64_t a1)
{
  v2 = sub_1001A8D24();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001A8980(uint64_t a1)
{
  v2 = sub_1001A8D24();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001A89D8(uint64_t a1)
{
  v2 = sub_1001A8E28();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_1001A8A14(uint64_t a1)
{
  v2 = sub_1001A8E28();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.amsd_base64EncodedGzippedString()()
{
  v0 = objc_opt_self();
  sub_1000049C0();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = [v0 compressedGzippedDataWithData:isa];

  if (v2)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = Data.base64EncodedString(options:)(0);
    sub_10000D170(v3, v5);
    countAndFlagsBits = v6._countAndFlagsBits;
    object = v6._object;
  }

  else
  {
    sub_1001A8B50();
    swift_allocError();
    *v9 = 1;
    countAndFlagsBits = swift_willThrow();
  }

  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

unint64_t sub_1001A8B50()
{
  result = qword_1002DFD20;
  if (!qword_1002DFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD20);
  }

  return result;
}

uint64_t _s11amsd_ErrorsOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11amsd_ErrorsOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1001A8C1C()
{
  result = qword_1002DFD28;
  if (!qword_1002DFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD28);
  }

  return result;
}

unint64_t sub_1001A8C74()
{
  result = qword_1002DFD30;
  if (!qword_1002DFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD30);
  }

  return result;
}

unint64_t sub_1001A8CCC()
{
  result = qword_1002DFD38;
  if (!qword_1002DFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD38);
  }

  return result;
}

unint64_t sub_1001A8D24()
{
  result = qword_1002DFD40;
  if (!qword_1002DFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD40);
  }

  return result;
}

unint64_t sub_1001A8D7C()
{
  result = qword_1002DFD48;
  if (!qword_1002DFD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD48);
  }

  return result;
}

unint64_t sub_1001A8DD4()
{
  result = qword_1002DFD50;
  if (!qword_1002DFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD50);
  }

  return result;
}

unint64_t sub_1001A8E28()
{
  result = qword_1002DFD58;
  if (!qword_1002DFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD58);
  }

  return result;
}

unint64_t sub_1001A8E7C()
{
  result = qword_1002DFD60;
  if (!qword_1002DFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD60);
  }

  return result;
}

uint64_t sub_1001A8ED8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1000197D8(a1, v13);
    sub_100008494(v13, v14);
    sub_1000038DC();
    v2 = *(v1 + 64);
    __chkstk_darwin(v3);
    sub_10000306C();
    (*(v6 + 16))(v5 - v4);
    sub_10000B15C();
    sub_1001ABA14(v7, v8, v9, v10, v11);
    sub_100004118(v13);
  }

  else
  {
    sub_100005460(a1);
    sub_1001AE380();

    return sub_100005460(v13);
  }
}

uint64_t sub_1001A9008(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100122C8C(a1, v15);
    v1 = v17;
    v2 = v18;
    sub_100008494(v15, v16);
    sub_1000038DC();
    v4 = *(v3 + 64);
    __chkstk_darwin(v5);
    sub_10000306C();
    (*(v8 + 16))(v7 - v6);
    sub_10000B15C();
    sub_1001AB5C0(v9, v10, v11, v12, v13, v1, v2);
    sub_100004118(v15);
  }

  else
  {
    sub_100005460(a1);
    sub_1001AE438();

    return sub_100005460(v15);
  }
}

uint64_t sub_1001A914C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000197D8(a1, v18);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100150088(v18, a2, isUniquelyReferenced_nonNull_native, v6, v7, v8, v9, v10, v16, *v2, v18[0], v18[1]);
    *v2 = v17;
    v11 = type metadata accessor for CodingUserInfoKey();
    sub_10000307C(v11);
    return (*(v12 + 8))(a2);
  }

  else
  {
    sub_100005460(a1);
    sub_1001AE4F8(v18);
    v14 = type metadata accessor for CodingUserInfoKey();
    sub_10000307C(v14);
    (*(v15 + 8))(a2);
    return sub_100005460(v18);
  }
}

uint64_t sub_1001A9254(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000197D8(a1, v16);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100150578(v16, a2, isUniquelyReferenced_nonNull_native, v6, v7, v8, v9, v10, v14, *v2, v16[0], v16[1]);
    *v2 = v15;
    v11 = type metadata accessor for CodingUserInfoKey();
    return (*(*(v11 - 8) + 8))(a2, v11);
  }

  else
  {
    sub_100004E24(a1, &qword_1002DFF40, &qword_10024AB00);
    sub_1001AE5EC();
    v13 = type metadata accessor for CodingUserInfoKey();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_100004E24(v16, &qword_1002DFF40, &qword_10024AB00);
  }
}

void *static Avro.decodeSchema(schema:)(uint64_t a1, uint64_t a2)
{
  sub_10000309C();
  v3 = type metadata accessor for JSONDecoder();
  sub_1000074F8(v3);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100157420();
  sub_100008F20();
  if (a2)
  {
    swift_getErrorValue();
    Error.localizedDescription.getter();
    sub_10000ACE8();
    sub_100004DE8();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return sub_1000046EC(v4, v6);
  }

  return result;
}

void static Avro.decodeFromContinue(from:startIndex:schema:)()
{
  sub_100004868();
  v5 = v0;
  v7 = v6;
  v8 = v4;
  v9 = v2;
  v10 = v1;
  switch(v3 >> 62)
  {
    case 1uLL:
      v129 = v1;
      v42 = v2 >> 32;
      if (v2 >> 32 < v2)
      {
        goto LABEL_41;
      }

      sub_100008478();
      sub_100008478();
      v43 = sub_100007B1C();
      sub_10000FF98(v43, v44);
      sub_100008478();
      v45 = sub_100007B1C();
      sub_10000FF98(v45, v46);
      v47 = __DataStorage._bytes.getter();
      if (!v47)
      {
        v41 = 0;
LABEL_25:
        __DataStorage._length.getter();
        if (v41)
        {
          v40 = v42 - v8;
          if (!__OFSUB__(v42, v8))
          {
            type metadata accessor for AvroBinaryDecoder();
            swift_initStackObject();
            sub_10000C144();
            v10 = v129;
            if (v0)
            {
              goto LABEL_28;
            }

            v94 = sub_100007820();
            sub_100003DF8(v94, v95, v96, v97, v98, v99, v100, v101, v129, v133, *(&v133 + 1), v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
            goto LABEL_36;
          }

          goto LABEL_45;
        }

LABEL_29:
        sub_1001A5AD0();
        sub_100007F60();
        *v93 = 0xD00000000000001ALL;
        v93[1] = 0x8000000100275D20;
        swift_willThrow();
        v110 = sub_100007B1C();
        sub_10000D170(v110, v111);
        sub_1001441C8(v7);
        goto LABEL_31;
      }

      v48 = v47;
      v49 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v49))
      {
        v41 = (v9 - v49 + v48);
        goto LABEL_25;
      }

      goto LABEL_44;
    case 2uLL:
      goto LABEL_7;
    case 3uLL:
      *(&v133 + 6) = 0;
      *&v133 = 0;
      v40 = -v4;
      if (__OFSUB__(0, v4))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v41 = &v133;
      type metadata accessor for AvroBinaryDecoder();
      swift_allocObject();
      sub_100007820();
      sub_10000C144();
      if (!v0)
      {
        sub_100007820();
        v75 = sub_100008478();
        sub_100003DF8(v75, v76, v77, v78, v79, v80, v81, v82, v127, v133, *(&v133 + 1), v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        v116 = sub_10000689C(v83, v84, v85, v86, v87, v88, v89, v90, v131, v133, *(&v133 + 1), v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        v102 = sub_100006BF8(v116, v117);
        if (!__OFSUB__(v40, &v133))
        {
          goto LABEL_37;
        }

        __break(1u);
LABEL_36:
        v118 = sub_10000689C(v102, v103, v104, v105, v106, v107, v108, v109, v132, v133, *(&v133 + 1), v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        sub_100006BF8(v118, v119);
        v120 = sub_100007B1C();
        sub_10000D170(v120, v121);
        sub_1001441C8(v7);
        if (!__OFSUB__(v40, v41))
        {
LABEL_37:
          v122 = sub_100007B1C();
          sub_10000D170(v122, v123);
          sub_1001441C8(v7);
          goto LABEL_38;
        }

LABEL_47:
        __break(1u);
      }

LABEL_12:
      sub_100008478();
      sub_100008478();
LABEL_31:
      v112 = sub_100007B1C();
      sub_10000D170(v112, v113);
      sub_1001441C8(v7);
      v114 = sub_100007B1C();
      sub_10000D170(v114, v115);
      sub_1001441C8(v7);
      swift_willThrow();
LABEL_32:
      sub_100005074();
      return;
    default:
      *&v133 = v2;
      WORD4(v133) = v3;
      BYTE10(v133) = BYTE2(v3);
      BYTE11(v133) = BYTE3(v3);
      BYTE12(v133) = BYTE4(v3);
      BYTE13(v133) = BYTE5(v3);
      v11 = BYTE6(v3) - v4;
      if (__OFSUB__(BYTE6(v3), v4))
      {
        goto LABEL_40;
      }

      type metadata accessor for AvroBinaryDecoder();
      swift_initStackObject();
      sub_100007820();
      sub_10000C144();
      if (v0)
      {
        goto LABEL_12;
      }

      sub_100007820();
      v12 = sub_100008478();
      sub_100003DF8(v12, v13, v14, v15, v16, v17, v18, v19, v127, v133, *(&v133 + 1), v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
      v5 = 0;
      v28 = sub_10000689C(v20, v21, v22, v23, v24, v25, v26, v27, v128, v133, *(&v133 + 1), v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
      sub_100006BF8(v28, v29);
      if (!__OFSUB__(v11, &v133))
      {
        goto LABEL_37;
      }

      __break(1u);
LABEL_7:
      v30 = v10;
      v31 = *(v9 + 16);

      sub_100008478();
      sub_100008478();
      v32 = sub_100007B1C();
      sub_10000FF98(v32, v33);
      sub_100008478();
      v34 = sub_100007B1C();
      sub_10000FF98(v34, v35);
      v36 = __DataStorage._bytes.getter();
      if (v36)
      {
        v37 = v36;
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v31, v38))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v39 = v31 - v38 + v37;
      }

      else
      {
        v39 = 0;
      }

      __DataStorage._length.getter();
      if (!v39)
      {
        goto LABEL_29;
      }

      v50 = *(v9 + 24);
      v51 = v50 - v8;
      if (!__OFSUB__(v50, v8))
      {
        type metadata accessor for AvroBinaryDecoder();
        inited = swift_initStackObject();
        sub_100148604(v7, v8 + v39, v51);
        if (v5)
        {
LABEL_28:
          v91 = sub_100007B1C();
          sub_10000D170(v91, v92);
          goto LABEL_31;
        }

        v53 = sub_100007820();
        sub_100003DF8(v53, v54, v55, v56, v57, v58, v59, v60, v127, v133, *(&v133 + 1), v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        v179[0] = sub_10000689C(v61, v62, v63, v64, v65, v66, v67, v68, v130, v133, *(&v133 + 1), v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
        v179[1] = v69;
        v70 = *(*sub_10000C4FC((inited + 32), *(inited + 56)) + 24);

        v71 = sub_100007B1C();
        sub_10000D170(v71, v72);
        sub_1001441C8(v7);
        if (!__OFSUB__(v51, v70))
        {
          v73 = sub_100007B1C();
          sub_10000D170(v73, v74);
          sub_1001441C8(v7);
          v10 = v30;
          v8 = v179;
LABEL_38:
          v124 = sub_100007B1C();
          sub_10000D170(v124, v125);
          sub_1001441C8(v7);
          v126 = v8[1];
          *v10 = *v8;
          v10[1] = v126;
          goto LABEL_32;
        }

        goto LABEL_46;
      }

      goto LABEL_43;
  }
}

uint64_t Avro.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Avro.init()();
  return v3;
}

uint64_t Avro.init()()
{
  v1 = sub_100099DF4(&qword_1002DA5E0, &qword_10022E420);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xFFFFFFFF00;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  CodingUserInfoKey.init(rawValue:)();
  v5 = type metadata accessor for CodingUserInfoKey();
  result = sub_100004DFC(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v5 - 8) + 32))(v0 + OBJC_IVAR____TtC12amsaccountsd4Avro_infoKey, v4, v5);
    *(v0 + OBJC_IVAR____TtC12amsaccountsd4Avro_stream) = xmmword_10022E410;
    return v0;
  }

  return result;
}

uint64_t Avro.setSchema(schema:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_10000A698(a1, a2, a3, a4, a5, a6, a7, a8, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v15[0]);
  memcpy(v10, v11, v12);
  memcpy((v8 + 16), a1, 0x62uLL);
  sub_10014416C(a1, v14);
  return sub_100004E24(v15, &qword_1002DE960, &qword_10023B918);
}

void *Avro.getSchema()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_10000A698(a1, a2, a3, a4, a5, a6, a7, a8, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v13[11], v13[12], v14[0]);
  memcpy(v8, v9, v10);
  v11 = sub_100012C94(v14, v13, &qword_1002DE960, &qword_10023B918);
  return sub_1000046EC(v11, v14);
}

void *Avro.decodeSchema(schema:)@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for String.Encoding();
  sub_1000038DC();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for JSONDecoder();
  sub_1000074F8(v12);
  swift_allocObject();
  JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  (*(v5 + 8))(v11, v3);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_100157420();
    sub_100008F20();
    if (!v3)
    {

      sub_10009A7A0(v13, v15);
      memcpy(v18, (v1 + 16), 0x62uLL);
      memcpy((v1 + 16), __src, 0x62uLL);
      sub_100004E24(v18, &qword_1002DE960, &qword_10023B918);
      memcpy(v19, (v1 + 16), 0x62uLL);
      sub_100012C94(v19, &v17, &qword_1002DE960, &qword_10023B918);
      return memcpy(a1, v19, 0x62uLL);
    }
  }

  sub_10009A7A0(v13, v15);
  swift_getErrorValue();
  Error.localizedDescription.getter();
  sub_10000338C();
  sub_100004DE8();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *Avro.decodeSchema(schema:)(uint64_t a1, uint64_t a2)
{
  sub_10000309C();
  v4 = type metadata accessor for JSONDecoder();
  sub_1000074F8(v4);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100157420();
  sub_100008F20();
  if (a2)
  {
    swift_getErrorValue();
    Error.localizedDescription.getter();
    sub_10000ACE8();
    sub_100004DE8();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    memcpy(__dst, (v2 + 16), 0x62uLL);
    memcpy((v2 + 16), __src, 0x62uLL);
    sub_100004E24(__dst, &qword_1002DE960, &qword_10023B918);
    memcpy(v9, (v2 + 16), 0x62uLL);
    v5 = sub_100012C94(v9, v7, &qword_1002DE960, &qword_10023B918);
    return sub_1000046EC(v5, v9);
  }

  return result;
}

uint64_t Avro.encodeSchema()()
{
  v2 = memcpy(__dst, (v0 + 16), 0x62uLL);
  if (__dst[7] >> 8 == 0xFFFFFFFFLL && __dst[10] <= 1uLL && (__dst[12] & 0xFCFE) == 0)
  {
    return 0;
  }

  v12 = *(v0 + 32);
  v20 = *(v0 + 16);
  v21 = v12;
  v22 = *(v0 + 48);
  v23 = *(v0 + 64);
  v24 = __dst[7];
  v25 = *(v0 + 80);
  v26 = __dst[10];
  v27 = __dst[11];
  v28 = __dst[12];
  v13 = sub_10000A698(v2, v3, v4, v5, v6, v7, v8, v9, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v19[0]);
  memcpy(v13, v14, v15);
  sub_10014416C(v19, v18);
  Avro.encodeSchema(schema:)();
  if (!v1)
  {
    v0 = v16;
  }

  sub_100004E24(__dst, &qword_1002DE960, &qword_10023B918);
  return v0;
}

void Avro.encodeSchema(schema:)()
{
  sub_100004868();
  v2 = type metadata accessor for CodingUserInfoKey();
  sub_1000038DC();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = type metadata accessor for JSONEncoder.OutputFormatting();
  v12 = sub_10000307C(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10000306C();
  v15 = type metadata accessor for JSONEncoder();
  sub_1000074F8(v15);
  swift_allocObject();
  JSONEncoder.init()();
  if (*(v0 + 114))
  {
    if (*(v0 + 114) == 1)
    {
      v26[0] = 0;
      sub_10000BC04();
      v18 = sub_1001ABE4C(v16, v17);
      sub_1001ABED0(v18);
    }

    else
    {
      static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    }

    dispatch thunk of JSONEncoder.outputFormatting.setter();
    (*(v4 + 16))(v10, v0 + OBJC_IVAR____TtC12amsaccountsd4Avro_infoKey, v2);
    v22 = *(v0 + 114);
    v26[3] = &type metadata for AvroSchemaEncodingOption;
    LOBYTE(v26[0]) = v22;
    v23 = dispatch thunk of JSONEncoder.userInfo.modify();
    sub_1001A9254(v26, v10);
    v23(&v25, 0);
  }

  else
  {
    v26[0] = 0;
    sub_10000BC04();
    v21 = sub_1001ABE4C(v19, v20);
    sub_1001ABED0(v21);
    dispatch thunk of JSONEncoder.outputFormatting.setter();
  }

  AvroSchema.encode(jsonEncoder:)();
  if (!v1)
  {
    if (v24 >> 60 != 15)
    {

      sub_100005074();
      return;
    }

    sub_10015BEC8();
    sub_100007F60();
    swift_willThrow();
  }

  swift_getErrorValue();
  Error.localizedDescription.getter();
  sub_10000338C();
  sub_100004DE8();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t Avro.decode<A>(from:)()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  if (v2 >> 8 == 0xFFFFFFFF && v3 <= 1 && (v4 & 0xFCFE) == 0)
  {
    sub_100151350();
    sub_100007F60();
    *v14 = 0;
    return swift_willThrow();
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 32);
  v23 = *(v0 + 16);
  v24 = v8;
  v25 = *(v0 + 48);
  v9 = *(v0 + 64);
  v28 = *(v0 + 80);
  v26 = v9;
  v27 = v2;
  v29 = v3;
  v30 = v7;
  v31 = v4;
  v32 = v1;
  v10 = type metadata accessor for AvroDecoder();
  sub_1000074F8(v10);
  swift_allocObject();
  v11 = *(v0 + 32);
  v16[0] = *(v0 + 16);
  v16[1] = v11;
  v16[2] = *(v0 + 48);
  v17 = *(v0 + 64);
  v18 = v2;
  v19 = *(v0 + 80);
  v20 = v3;
  v21 = v7;
  v22 = v4;
  sub_10014416C(v16, v15);
  sub_100146AE8();
  v12 = v32;
  sub_100146CD0();

  if (v12)
  {
    return swift_willThrow();
  }

  return result;
}

void Avro.decode(from:)()
{
  sub_100004868();
  v2 = *(v0 + 72);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  if (v2 >> 8 == 0xFFFFFFFF && v3 <= 1 && (v4 & 0xFCFE) == 0)
  {
    sub_100151350();
    sub_100007F60();
    *v13 = 0;
  }

  else
  {
    v7 = *(v0 + 104);
    v8 = *(v0 + 32);
    v22 = *(v0 + 16);
    v23 = v8;
    v24 = *(v0 + 48);
    v9 = *(v0 + 64);
    v27 = *(v0 + 80);
    v25 = v9;
    v26 = v2;
    v28 = v3;
    v29 = v7;
    v30 = v4;
    v10 = type metadata accessor for AvroDecoder();
    sub_1000074F8(v10);
    swift_allocObject();
    v11 = *(v0 + 32);
    v15[0] = *(v0 + 16);
    v15[1] = v11;
    v15[2] = *(v0 + 48);
    v16 = *(v0 + 64);
    v17 = v2;
    v18 = *(v0 + 80);
    v19 = v3;
    v20 = v7;
    v21 = v4;
    sub_10014416C(v15, &v14);
    sub_100146AE8();
    __chkstk_darwin(v12);
    sub_100099DF4(&unk_1002DFC10, &qword_10022E6D0);
    Data.withUnsafeBytes<A, B>(_:)();

    if (!v1)
    {
      goto LABEL_12;
    }
  }

  swift_willThrow();
LABEL_12:
  sub_100005074();
}

double sub_1001AA53C(_OWORD *a1)
{
  sub_100099DF4(&unk_1002DFF50, &qword_1002403F8);
  Data.withUnsafeBytes<A, B>(_:)();
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    result = *&v4;
    *a1 = v4;
    a1[1] = v5;
  }

  return result;
}

void sub_1001AA5EC()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v22 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_10000307C(TupleTypeMetadata2);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v21 - v18;
  v21[2] = v2;
  v21[3] = v8;
  v21[4] = v12;
  v21[5] = v10;
  v21[6] = v6;
  v21[7] = v4;
  Data.withUnsafeBytes<A, B>(_:)();
  if (v0)
  {
    swift_willThrow();
  }

  else
  {
    v20 = *&v19[*(TupleTypeMetadata2 + 48)];
    (*(*(v2 - 8) + 32))(v22, v19, v2);
  }

  sub_100005074();
}

uint64_t sub_1001AA734@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void *__return_ptr, void *)@<X4>, uint64_t a4@<X8>)
{
  v9 = Data.count.getter();
  type metadata accessor for AvroBinaryDecoder();
  swift_allocObject();
  v10 = sub_100148604(a2, a1, v9);
  if (v4)
  {
    return sub_10014416C(a2, v16);
  }

  v12 = v10;
  sub_10014416C(a2, v16);
  a3(v15, v12);
  sub_100012C94(v15, a4, &unk_1002DFC10, &qword_10022E6D0);
  v13 = Data.count.getter();
  sub_100004E24(v15, &unk_1002DFC10, &qword_10022E6D0);
  v14 = *(*sub_10000C4FC(v12 + 4, v12[7]) + 24);

  if (__OFSUB__(v13, v14))
  {
    __break(1u);
  }

  else
  {
    *(a4 + 32) = v13 - v14;
  }

  return result;
}

uint64_t sub_1001AA8A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v24 = a7;
  v25 = a5;
  v27 = a4;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Data.count.getter();
  type metadata accessor for AvroBinaryDecoder();
  swift_allocObject();
  v17 = sub_100148604(a2, a1, v16);
  if (v7)
  {
    return sub_10014416C(a2, v26);
  }

  v19 = v17;
  v23 = a3;
  v20 = v24;
  sub_10014416C(a2, v26);
  v27(v19);
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v12 + 16))(v20, v15, a6);
  v21 = Data.count.getter();
  (*(v12 + 8))(v15, a6);
  v22 = *(*sub_10000C4FC(v19 + 4, v19[7]) + 24);

  if (__OFSUB__(v21, v22))
  {
    __break(1u);
  }

  else
  {
    *(v27 + v20) = v21 - v22;
  }

  return result;
}

void *sub_1001AAAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_100146F98(a1, v2[2], a2);
}

uint64_t sub_1001AAB78(uint64_t *a1)
{
  v2 = *a1;
  sub_1001ABE4C(&qword_1002DEA68, type metadata accessor for AvroBinaryDecoder);

  return dispatch thunk of Decodable.init(from:)();
}

uint64_t sub_1001AAC44(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1001AAB78(a1);
}

void *Avro.newSchema(schema:)()
{
  sub_10000309C();
  v0 = type metadata accessor for String.Encoding();
  sub_1000038DC();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = type metadata accessor for JSONDecoder();
  sub_1000074F8(v9);
  swift_allocObject();
  JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  v11 = v10;
  (*(v2 + 8))(v8, v0);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_100157420();
    sub_100008F20();
    if (!v0)
    {

      v12 = sub_100007B1C();
      v14 = sub_10009A7A0(v12, v13);
      return sub_1000046EC(v14, v18);
    }
  }

  v16 = sub_100007B1C();
  sub_10009A7A0(v16, v17);
  swift_getErrorValue();
  Error.localizedDescription.getter();
  sub_10000338C();
  sub_100004DE8();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *Avro.newSchema(schema:)(uint64_t a1, unint64_t a2)
{
  sub_10000309C();
  v4 = type metadata accessor for JSONDecoder();
  sub_1000074F8(v4);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10000FF98(a1, a2);

  sub_100154604(a1, a2, v7);

  return sub_1000046EC(v5, v7);
}

uint64_t Avro.decodeFrom<A>(from:schema:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AvroDecoder();
  sub_1000074F8(v5);
  swift_allocObject();
  sub_10014416C(a3, v7);
  sub_100146AE8();
  sub_100146CD0();

  if (v3)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t Avro.decodeFrom(from:schema:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AvroDecoder();
  sub_1000074F8(v5);
  swift_allocObject();
  sub_10014416C(a3, v7);
  sub_100146AE8();
  sub_100099DF4(&unk_1002DFC10, &qword_10022E6D0);
  Data.withUnsafeBytes<A, B>(_:)();

  if (v3)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t Avro.deinit()
{
  sub_1001AB128(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v1 = OBJC_IVAR____TtC12amsaccountsd4Avro_infoKey;
  v2 = type metadata accessor for CodingUserInfoKey();
  sub_10000307C(v2);
  (*(v3 + 8))(v0 + v1);
  sub_10000D170(*(v0 + OBJC_IVAR____TtC12amsaccountsd4Avro_stream), *(v0 + OBJC_IVAR____TtC12amsaccountsd4Avro_stream + 8));
  return v0;
}

uint64_t sub_1001AB128(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unsigned __int16 a13)
{
  if (a8 >> 8 != 0xFFFFFFFF || a11 > 1 || (a13 & 0xFCFE) != 0)
  {
    return sub_10014E7B4(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  }

  return result;
}

uint64_t Avro.__deallocating_deinit()
{
  Avro.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

amsaccountsd::AvroEncodingOption_optional __swiftcall AvroEncodingOption.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = amsaccountsd_AvroEncodingOption_AvroJson;
  }

  else
  {
    v1.value = amsaccountsd_AvroEncodingOption_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001AB1E8()
{
  result = qword_1002DFD78;
  if (!qword_1002DFD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD78);
  }

  return result;
}

unint64_t sub_1001AB240()
{
  result = qword_1002DFD80;
  if (!qword_1002DFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DFD80);
  }

  return result;
}

amsaccountsd::AvroEncodingOption_optional sub_1001AB2A4@<W0>(Swift::Int *a1@<X0>, amsaccountsd::AvroEncodingOption_optional *a2@<X8>)
{
  result.value = AvroEncodingOption.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001AB2D0@<X0>(uint64_t *a1@<X8>)
{
  result = AvroEncodingOption.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for Avro()
{
  result = qword_1002DFDB0;
  if (!qword_1002DFDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AB350()
{
  result = type metadata accessor for CodingUserInfoKey();
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

_BYTE *storeEnumTagSinglePayload for AvroSchemaEncodingOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroEncodingOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001AB5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(a1);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *a4;
  (*(v14 + 16))(v17, a1, a5);
  sub_1001AB704(v17, a2, a3, isUniquelyReferenced_nonNull_native, &v23, a5, a6, a7);
  result = (*(v14 + 8))(a1, a5);
  *a4 = v23;
  return result;
}

_OWORD *sub_1001AB704(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a6;
  v40 = a7;
  v41 = a8;
  v16 = sub_100007914(&v38);
  (*(*(a6 - 8) + 32))(v16, a1, a6);
  v17 = *a5;
  v18 = sub_10014EB30(a2, a3);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_10;
  }

  v23 = v18;
  v24 = v19;
  sub_100099DF4(&unk_1002E0030, &qword_1002403F0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v22))
  {
    goto LABEL_5;
  }

  v25 = *a5;
  v26 = sub_10014EB30(a2, a3);
  if ((v24 & 1) != (v27 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v23 = v26;
LABEL_5:
  v28 = *a5;
  if (v24)
  {
    v29 = (v28[7] + 48 * v23);
    sub_100004118(v29);
    return sub_100122C8C(&v38, v29);
  }

  else
  {
    v31 = v39;
    v32 = sub_100008494(&v38, v39);
    v33 = *(*(v31 - 8) + 64);
    v34 = __chkstk_darwin(v32);
    v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v36, v34);
    sub_1001AB938(v23, a2, a3, v36, v28, a6, a7, a8);
    sub_100004118(&v38);
  }
}

_OWORD *sub_1001AB938(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v14 = sub_100007914(&v20);
  (*(*(a6 - 8) + 32))(v14, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = sub_100122C8C(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t sub_1001ABA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a4;
  (*(v10 + 16))(v13, a1, a5);
  sub_1001ABB40(v13, a2, a3, isUniquelyReferenced_nonNull_native, &v19, a5);
  result = (*(v10 + 8))(a1, a5);
  *a4 = v19;
  return result;
}

_OWORD *sub_1001ABB40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v35 = a6;
  v12 = sub_100007914(&v34);
  (*(*(a6 - 8) + 32))(v12, a1, a6);
  v13 = *a5;
  v14 = sub_10014EB30(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v14;
  v20 = v15;
  sub_100099DF4(&unk_1002E0020, &qword_1002403E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = *a5;
  v22 = sub_10014EB30(a2, a3);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *a5;
  if (v20)
  {
    v25 = (v24[7] + 32 * v19);
    sub_100004118(v25);
    return sub_1000197D8(&v34, v25);
  }

  else
  {
    v27 = v35;
    v28 = sub_100008494(&v34, v35);
    v29 = *(*(v27 - 8) + 64);
    v30 = __chkstk_darwin(v28);
    v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v32, v30);
    sub_1001ABD54(v19, a2, a3, v32, v24, a6);
    sub_100004118(&v34);
  }
}

_OWORD *sub_1001ABD54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  v12 = sub_100007914(&v18);
  (*(*(a6 - 8) + 32))(v12, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_1000197D8(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1001ABE4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001ABE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  return sub_1001AA734(a1, *(v2 + 16), *(v2 + 40), a2);
}

uint64_t sub_1001ABED0(uint64_t a1)
{

  return dispatch thunk of OptionSet.init(rawValue:)(v2 - 136, v1, a1);
}

double sub_1001ABEF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10014EB30(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100009F20(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1001ABF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  if (*(a3 + 16) && (v10 = sub_10014EB30(a1, a2), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(a3 + 56);
    v14 = a4(0);
    sub_10000307C(v14);
    sub_1001AE8FC(v13 + *(v15 + 72) * v12, a6, a5);
    v16 = a6;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v18 = a4(0);
    v16 = a6;
    v17 = 1;
  }

  return sub_100002728(v16, v17, 1, v18);
}

uint64_t sub_1001AC070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10014EB30(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001AC0C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10014EC40();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

double sub_1001AC118@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10014ECA8(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_100009F20(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001AC17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10014EB30(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_1001AC1D4(char a1)
{
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v2 = sub_1001AC240(a1);
  sub_100008F38(v2, v3);
}

uint64_t sub_1001AC240(char a1)
{
  result = 0x44746E756F636361;
  switch(a1)
  {
    case 1:
      sub_100007504();
      result = v10 - 6;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      sub_100007504();
      result = v8 + 5;
      break;
    case 4:
      sub_100007504();
      result = v6 + 6;
      break;
    case 5:
      return result;
    case 6:
      result = 0x7669746341736164;
      break;
    case 7:
    case 12:
      sub_100007504();
      result = v9 + 4;
      break;
    case 8:
      sub_100007504();
      result = v13 - 1;
      break;
    case 9:
      sub_100007504();
      result = v7 - 3;
      break;
    case 10:
    case 15:
      sub_100007504();
      result = v12 | 1;
      break;
    case 11:
      sub_100007504();
      result = v5 - 2;
      break;
    case 13:
    case 18:
      sub_100007504();
      result = v11 + 2;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 16:
      sub_100007504();
      result = v4 + 7;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    default:
      sub_100007504();
      result = v3 - 5;
      break;
  }

  return result;
}

id sub_1001AC49C()
{
  result = [objc_allocWithZone(type metadata accessor for LiveTransactionStore()) init];
  qword_1003106E8 = result;
  return result;
}

uint64_t sub_1001AC4D0(char a1)
{
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v2 = sub_1001AC240(a1);
  sub_1001AC540(v2, v3, 2);
}

uint64_t sub_1001AC540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  v52 = a1;
  v53 = a2;
  ObjectType = swift_getObjectType();
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100003724(v55);
  v57 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v11 = v10 - v9;
  v56 = type metadata accessor for DispatchQoS();
  v12 = sub_100003724(v56);
  v54 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10000306C();
  v18 = v17 - v16;
  v19 = type metadata accessor for DispatchTimeInterval();
  v20 = sub_100003724(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10000306C();
  v27 = (v26 - v25);
  v28 = type metadata accessor for DispatchTime();
  v49 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v47 - v34;
  v50 = *&v4[OBJC_IVAR___AMSLiveTransactionStore_queue];
  static DispatchTime.now()();
  *v27 = v48;
  (*(v22 + 104))(v27, enum case for DispatchTimeInterval.seconds(_:), v19);
  + infix(_:_:)();
  (*(v22 + 8))(v27, v19);
  v36 = *(v29 + 8);
  v36(v33, v28);
  v37 = swift_allocObject();
  v38 = v52;
  v39 = v53;
  v37[2] = v4;
  v37[3] = v38;
  v40 = ObjectType;
  v37[4] = v39;
  v37[5] = v40;
  aBlock[4] = sub_1001ADE98;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001AD40C;
  aBlock[3] = &unk_1002BBE78;
  v41 = _Block_copy(aBlock);
  v42 = v4;

  static DispatchQoS.unspecified.getter();
  v58 = &_swiftEmptyArrayStorage;
  sub_100003AC8();
  sub_100010FEC(v43, v44);
  sub_100099DF4(&qword_1002DFFD0, &qword_100240478);
  sub_100011034(&qword_1002DFFD8, &qword_1002DFFD0, &qword_100240478);
  v45 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v41);
  (*(v57 + 8))(v11, v45);
  (*(v54 + 8))(v18, v56);
  v36(v35, v49);
}

uint64_t sub_1001AC988(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v96 = a4;
  v7 = type metadata accessor for OSSignpostError();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = *(v88 + 64);
  __chkstk_darwin(v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  v13 = __chkstk_darwin(v11);
  v90 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v80 - v15;
  v17 = type metadata accessor for LogInterpolation.StringInterpolation();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v94 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Log();
  v97 = *(v20 - 8);
  v21 = *(v97 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v80 - v26;
  __chkstk_darwin(v25);
  v29 = &v80 - v28;
  v93 = a1;
  v30 = *&a1[OBJC_IVAR___AMSLiveTransactionStore_transactionSet];
  v31 = String._bridgeToObjectiveC()();
  [v30 removeObject:v31];

  v98 = a2;
  v32 = String._bridgeToObjectiveC()();
  v33 = [v30 countForObject:v32];

  v95 = v20;
  if (v33)
  {
    v89 = a3;
    static Log.accountsDaemon.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v34 = *(type metadata accessor for LogInterpolation() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v101 = v96;
    v99 = v93;
    v93;
    v37 = AMSLogKey();
    if (v37)
    {
      v38 = v37;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v99);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v47._object = 0x8000000100276250;
    v47._countAndFlagsBits = 0xD000000000000012;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v47);
    v101 = &type metadata for String;
    v99 = v98;
    v100 = v89;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009DF4(&v99);
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
    LogInterpolation.init(stringInterpolation:)();
    Log.info(_:)();

    (*(v97 + 8))(v24, v95);
    String._bridgeToObjectiveC()();
    OSSignposter.logHandle.getter();
    v49 = v90;
    OSSignpostID.init(log:object:)();
    v50 = OSSignposter.logHandle.getter();
    v51 = static os_signpost_type_t.event.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v51, v53, "Transaction", "Transaction left", v52, 2u);
    }

    return (*(v91 + 8))(v49, v92);
  }

  else
  {
    v87 = v27;
    v81 = v10;
    v86 = v16;
    v90 = v29;
    static Log.accountsDaemon.getter();
    v39 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v40 = *(type metadata accessor for LogInterpolation() - 8);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v85 = v39;
    v83 = v42 + 2 * v41;
    v43 = swift_allocObject();
    v82 = xmmword_1002329F0;
    *(v43 + 16) = xmmword_1002329F0;
    v84 = v42;
    v101 = v96;
    v99 = v93;
    v44 = v93;
    v45 = AMSLogKey();
    if (v45)
    {
      v46 = v45;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v99);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._countAndFlagsBits = 0xD000000000000013;
    v55._object = 0x8000000100276270;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    v101 = &type metadata for String;
    v56 = v98;
    v99 = v98;
    v100 = a3;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009DF4(&v99);
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v57);
    LogInterpolation.init(stringInterpolation:)();
    v58 = v90;
    Log.info(_:)();

    v59 = v97 + 8;
    v60 = *(v97 + 8);
    v61 = v95;
    v60(v58, v95);
    v62 = OBJC_IVAR___AMSLiveTransactionStore_transactionSignpostStateStore;
    swift_beginAccess();
    if (sub_10000A07C(v56, a3, *&v44[v62]))
    {
      v63 = a3;
      swift_endAccess();
      v64 = OSSignposter.logHandle.getter();
      v65 = v86;
      OSSignpostIntervalState.signpostID.getter();
      v66 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        v67 = v81;
        checkForErrorAndConsumeState(state:)();

        v69 = v88;
        v68 = v89;
        if ((*(v88 + 88))(v67, v89) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v70 = "[Error] Interval already ended";
        }

        else
        {
          (*(v69 + 8))(v67, v68);
          v70 = "";
        }

        v74 = swift_slowAlloc();
        *v74 = 0;
        v75 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, v66, v75, "Transaction", v70, v74, 2u);
      }

      (*(v91 + 8))(v65, v92);
      swift_beginAccess();
      v76 = v98;
      sub_1001AE7B8(v98, v63);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1001AE6DC(v76, v63);
      swift_endAccess();
    }

    else
    {
      v93 = v41;
      v97 = v59;
      swift_endAccess();
      static Log.accountsDaemon.getter();
      *(swift_allocObject() + 16) = v82;
      v101 = v96;
      v99 = v44;
      v71 = v44;
      v72 = AMSLogKey();
      if (v72)
      {
        v73 = v72;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004118(&v99);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v77._countAndFlagsBits = 0xD000000000000038;
      v77._object = 0x8000000100276290;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v77);
      v101 = &type metadata for String;
      v99 = v98;
      v100 = a3;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009DF4(&v99);
      v78._countAndFlagsBits = 0x6361736E61727420;
      v78._object = 0xEC0000006E6F6974;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v78);
      LogInterpolation.init(stringInterpolation:)();
      v79 = v87;
      Log.fault(_:)();

      return (v60)(v79, v61);
    }
  }
}

uint64_t sub_1001AD40C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1001AD450()
{
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  return sub_1001AD498();
}

uint64_t sub_1001AD498()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100003724(v2);
  v42 = v4;
  v43 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v41 = v8 - v7;
  v9 = type metadata accessor for DispatchQoS();
  v10 = sub_100003724(v9);
  v39 = v11;
  v40 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v38 = v15 - v14;
  v16 = type metadata accessor for Log();
  v17 = sub_100003724(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_10000306C();
  v24 = v23 - v22;
  static Log.accountsDaemon.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v25 = *(type metadata accessor for LogInterpolation() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v45 = ObjectType;
  aBlock[0] = v0;
  v28 = v0;
  v29 = AMSLogKey();
  if (v29)
  {
    v30 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(aBlock);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v19 + 8))(v24, v16);
  v31 = *&v28[OBJC_IVAR___AMSLiveTransactionStore_queue];
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  v46 = sub_1001AE8E4;
  v47 = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001AD40C;
  v45 = &unk_1002BBF40;
  v33 = _Block_copy(aBlock);
  v34 = v28;
  static DispatchQoS.unspecified.getter();
  sub_100003AC8();
  sub_100010FEC(v35, v36);
  sub_100099DF4(&qword_1002DFFD0, &qword_100240478);
  sub_100011034(&qword_1002DFFD8, &qword_1002DFFD0, &qword_100240478);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v42 + 8))(v41, v43);
  (*(v39 + 8))(v38, v40);
}

id sub_1001AD8F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Log();
  v3 = sub_100003724(v2);
  v30 = v4;
  v31 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = sub_10000307C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_10000306C();
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = sub_100003724(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_10000306C();
  v24 = v23 - v22;
  v29 = OBJC_IVAR___AMSLiveTransactionStore_queue;
  sub_1001AE8A0();
  (*(v19 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100010FEC(&qword_1002E0008, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100099DF4(&qword_1002E0010, &unk_1002404A0);
  sub_100011034(&qword_1002E0018, &qword_1002E0010, &unk_1002404A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v29] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static Log.accountsDaemon.getter();
  Log.osLog.getter();
  (*(v30 + 8))(v9, v31);
  OSSignposter.init(logHandle:)();
  v25 = OBJC_IVAR___AMSLiveTransactionStore_transactionSet;
  *&v1[v25] = [objc_allocWithZone(NSCountedSet) init];
  v26 = OBJC_IVAR___AMSLiveTransactionStore_transactionSignpostStateStore;
  type metadata accessor for OSSignpostIntervalState();
  *&v1[v26] = Dictionary.init(dictionaryLiteral:)();
  v1[OBJC_IVAR___AMSLiveTransactionStore_isShuttingDown] = 0;
  v27 = OBJC_IVAR___AMSLiveTransactionStore_transactionStore;
  sub_100099DF4(&unk_1002DFFF0, &unk_100240490);
  *&v1[v27] = Dictionary.init(dictionaryLiteral:)();
  v33.receiver = v1;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, "init");
}

uint64_t type metadata accessor for LiveTransactionStore()
{
  result = qword_1002DFFB8;
  if (!qword_1002DFFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001ADDAC()
{
  result = type metadata accessor for OSSignposter();
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

char *sub_1001ADEA4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001ADEF0(a1, a2);
  sub_1001AE008(&off_1002B4428);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1001ADEF0(uint64_t a1, unint64_t a2)
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
    result = sub_1001AE0EC(v5, 0);
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

uint64_t sub_1001AE008(uint64_t result)
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

    result = sub_1001AE15C(result, v8, 1, v3);
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

void *sub_1001AE0EC(uint64_t a1, uint64_t a2)
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

  sub_100099DF4(&qword_1002E2760, &qword_10023CBF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1001AE15C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100099DF4(&qword_1002E2760, &qword_10023CBF8);
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

uint64_t sub_1001AE250()
{
  v2 = v0;
  v3 = *v0;
  sub_10000DA08();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = sub_10000783C();
  v12 = *v2;
  v6 = *(*v2 + 24);
  sub_100099DF4(&unk_1002E0040, &qword_10023B9A8);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(v5, v6);
  v7 = *(v12 + 48);
  v8 = type metadata accessor for AccountIdentity();
  sub_10000307C(v8);
  (*(v9 + 8))(v7 + *(v9 + 72) * v1, v8);
  v10 = *(*(v12 + 56) + 8 * v1);
  type metadata accessor for AccountDataAccessActor();
  sub_100010FEC(&qword_1002DE9E0, &type metadata accessor for AccountIdentity);
  _NativeDictionary._delete(at:)();
  *v2 = v12;
  return v10;
}

double sub_1001AE380()
{
  sub_10000BC1C();
  sub_10014EB30(v4, v5);
  if (v6)
  {
    sub_10000783C();
    sub_100007E8C();
    v7 = sub_100099DF4(&unk_1002E0020, &qword_1002403E0);
    v15 = sub_100006B48(v7, v8, v9, v10, v11, v12, v13, v14, v24, v26);
    sub_1000033A0(v15, v16, v17, v18, v19, v20, v21, v22, v25, v27);
    sub_1000197D8((*(v1 + 56) + 32 * v2), v3);
    sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
    _NativeDictionary._delete(at:)();
    *v0 = v1;
  }

  else
  {
    result = 0.0;
    *v3 = 0u;
    v3[1] = 0u;
  }

  return result;
}

double sub_1001AE438()
{
  sub_10000BC1C();
  sub_10014EB30(v4, v5);
  if (v6)
  {
    sub_10000783C();
    sub_100007E8C();
    v7 = sub_100099DF4(&unk_1002E0030, &qword_1002403F0);
    v15 = sub_100006B48(v7, v8, v9, v10, v11, v12, v13, v14, v24, v26);
    sub_1000033A0(v15, v16, v17, v18, v19, v20, v21, v22, v25, v27);
    sub_100122C8C((*(v1 + 56) + 48 * v2), v3);
    sub_100099DF4(&qword_1002DD518, &unk_1002404B0);
    _NativeDictionary._delete(at:)();
    *v0 = v1;
  }

  else
  {
    result = 0.0;
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
  }

  return result;
}

double sub_1001AE4F8@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_10014ECA8();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100007E8C();
    v9 = sub_100099DF4(&qword_1002E0050, &qword_1002404C0);
    sub_100006B48(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22);
    v17 = *(v23 + 48);
    v18 = type metadata accessor for CodingUserInfoKey();
    sub_10000307C(v18);
    (*(v19 + 8))(v17 + *(v19 + 72) * v7, v18);
    sub_1000197D8((*(v23 + 56) + 32 * v7), a1);
    _NativeDictionary._delete(at:)();
    *v2 = v23;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double sub_1001AE5EC()
{
  sub_10000BC1C();
  sub_10014ECA8();
  if (v3)
  {
    sub_10000783C();
    sub_100007E8C();
    v4 = sub_100099DF4(&unk_1002DEA70, &unk_10023B9B0);
    sub_100006B48(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17);
    v12 = *(v18 + 48);
    v13 = type metadata accessor for CodingUserInfoKey();
    sub_10000307C(v13);
    (*(v14 + 8))(v12 + *(v14 + 72) * v1, v13);
    sub_1000197D8((*(v18 + 56) + 32 * v1), v2);
    sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
    _NativeDictionary._delete(at:)();
    *v0 = v18;
  }

  else
  {
    result = 0.0;
    *v2 = 0u;
    v2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001AE6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10014EB30(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v10 = *(*v3 + 24);
  sub_100099DF4(&unk_1002DFFE0, &unk_100240480);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(*(v14 + 48) + 16 * v7 + 8);

  v12 = *(*(v14 + 56) + 8 * v7);
  type metadata accessor for OSSignpostIntervalState();
  _NativeDictionary._delete(at:)();
  *v3 = v14;
  return v12;
}

uint64_t sub_1001AE7B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10014EB30(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v10 = *(*v3 + 24);
  sub_100099DF4(&unk_1002DE9D0, &unk_10023B930);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(*(v14 + 48) + 16 * v7 + 8);

  v12 = *(*(v14 + 56) + 8 * v7);
  sub_100099DF4(&unk_1002DFFF0, &unk_100240490);
  _NativeDictionary._delete(at:)();
  *v3 = v14;
  return v12;
}

unint64_t sub_1001AE8A0()
{
  result = qword_1002E0000;
  if (!qword_1002E0000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002E0000);
  }

  return result;
}

uint64_t sub_1001AE8FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_1001AE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = *(a3 + 16);
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a3 + 32);
  *(v8 + 80) = *(a3 + 48);
  v12[4] = sub_1001AEFE4;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1001AF954;
  v12[3] = &unk_1002BBF90;
  v10 = _Block_copy(v12);

  v11 = String.utf8CString.getter();
  xpc_activity_register((v11 + 32), XPC_ACTIVITY_CHECK_IN, v10);

  _Block_release(v10);
}

xpc_activity_state_t sub_1001AEA90(_xpc_activity_s *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for Log();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_activity_get_state(a1);
  if (result)
  {
    if (result == 2)
    {
      v34 = a2;
      v35 = a3;
      static Log.dasActivity.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      v20 = *(type metadata accessor for LogInterpolation() - 8);
      v33 = *(v20 + 72);
      v21 = *(v20 + 80);
      v36 = v14;
      *(swift_allocObject() + 16) = xmmword_1002329F0;
      v22 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v23._object = 0x80000001002764D0;
      v23._countAndFlagsBits = 0xD000000000000014;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
      ObjectType = swift_getObjectType();
      v37[0] = a1;
      swift_unknownObjectRetain();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      sub_100009DF4(v37);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
      LogInterpolation.init(stringInterpolation:)();
      Log.default(_:)();

      (*(v15 + 8))(v18, v36);
      if (qword_1002DA5B8 != -1)
      {
        swift_once();
      }

      sub_100008F38(0x7669746341736164, 0xEB00000000797469);
      v25 = type metadata accessor for TaskPriority();
      sub_100002728(v11, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v34;
      v26[5] = v35;

      sub_10013ABD4(0, 0, v11, &unk_1002404F8, v26);
    }
  }

  else
  {
    static Log.dasActivity.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v36 = v14;
    v27 = *(type metadata accessor for LogInterpolation() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v30 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = a4;

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v31._countAndFlagsBits = 0xD000000000000015;
    v31._object = 0x80000001002764B0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    ObjectType = swift_getObjectType();
    v37[0] = a1;
    swift_unknownObjectRetain();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(v37);
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    (*(v15 + 8))(v18, v36);
    return sub_1001AF288(v35, a1);
  }

  return result;
}

uint64_t sub_1001AEFF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1001AF0D8;

  return v8();
}

uint64_t sub_1001AF0D8()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return _swift_task_switch(sub_1001AF1D4, 0, 0);
}

uint64_t sub_1001AF1D4()
{
  if (qword_1002DA5B8 != -1)
  {
    swift_once();
  }

  sub_1001AC540(0x7669746341736164, 0xEB00000000797469, 2);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001AF288(uint64_t a1, _xpc_activity_s *a2)
{
  sub_100003F9C();
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for Log();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = xpc_activity_copy_criteria(a2);
  v12 = *v2;
  if (v11)
  {
    if (v12 != 2)
    {
      static Log.dasActivity.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      sub_100003F9C();
      v13 = type metadata accessor for LogInterpolation();
      sub_100003B78(v13);
      v48 = v6;
      v15 = *(v14 + 72);
      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      *(swift_allocObject() + 16) = xmmword_1002329F0;
      v18 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v19._countAndFlagsBits = 0xD000000000000017;
      v19._object = 0x8000000100276560;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
      *&v51[24] = swift_getObjectType();
      *v51 = v11;
      swift_unknownObjectRetain();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      sub_100009DF4(v51);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
      LogInterpolation.init(stringInterpolation:)();
      Log.default(_:)();
      swift_unknownObjectRelease();

      return (*(v7 + 8))(v10, v48);
    }
  }

  else if (v12 != 2)
  {
    *v51 = *v2;
    *&v51[8] = *(v2 + 8);
    *&v51[24] = *(v2 + 24);
    *&v51[36] = *(v2 + 36);
    static Log.dasActivity.getter();
    v46 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v28 = type metadata accessor for LogInterpolation();
    sub_100003B78(v28);
    v47 = *(v29 + 72);
    v31 = *(v30 + 80);
    v45 = ((v31 + 32) & ~v31) + 2 * v47;
    v43[1] = (v31 + 32) & ~v31;
    v32 = swift_allocObject();
    v44 = xmmword_1002329F0;
    *(v32 + 16) = xmmword_1002329F0;
    v48 = v6;
    v33 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v34._countAndFlagsBits = 0xD00000000000001ELL;
    v34._object = 0x8000000100276520;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
    ObjectType = &unk_1002BC0A8;
    v35 = swift_allocObject();
    v49[0] = v35;
    v36 = *&v51[16];
    *(v35 + 16) = *v51;
    *(v35 + 32) = v36;
    *(v35 + 48) = *&v51[32];
    *(v35 + 64) = *&v51[48];
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(v49);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v43[0] = *(v7 + 8);
    (v43[0])(v10, v48);
    sub_1001AFA74();
    v39 = v38;
    static Log.dasActivity.getter();
    *(swift_allocObject() + 16) = v44;
    v40 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v41._object = 0x8000000100276540;
    v41._countAndFlagsBits = 0xD000000000000016;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v41);
    ObjectType = swift_getObjectType();
    v49[0] = v39;
    swift_unknownObjectRetain();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(v49);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v42);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    (v43[0])(v10, v48);
    xpc_activity_set_criteria(a2, v39);
    return swift_unknownObjectRelease();
  }

  static Log.dasActivity.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v22 = type metadata accessor for LogInterpolation();
  sub_100003B78(v22);
  v24 = *(v23 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v27 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();
  swift_unknownObjectRelease();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1001AF954(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1001AF9B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000CB6D0;

  return sub_1001AEFF0(a1, v4, v5, v7);
}

void sub_1001AFA74()
{
  v1 = sub_100003F9C();
  v2 = xpc_dictionary_create(v1, 0, 0);
  v3 = v2;
  if (*(v0 + 50))
  {
    v4 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  }

  else
  {
    v4 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  }

  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, *v4);
  if (!*(v0 + 49))
  {
    if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v7 = 1;
    sub_1000068B0(v5, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
    v6 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
    if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
    {
      goto LABEL_52;
    }

    goto LABEL_11;
  }

  if (*(v0 + 49) != 1)
  {
LABEL_12:
    switch(*(v0 + 1))
    {
      case 1:
        v8 = XPC_ACTIVITY_REQUIRES_CLASS_A;
        if (XPC_ACTIVITY_REQUIRES_CLASS_A)
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_15;
      case 2:
LABEL_15:
        v8 = XPC_ACTIVITY_REQUIRES_CLASS_B;
        if (XPC_ACTIVITY_REQUIRES_CLASS_B)
        {
          goto LABEL_18;
        }

        __break(1u);
LABEL_17:
        v8 = XPC_ACTIVITY_REQUIRES_CLASS_C;
        if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
        {
          goto LABEL_53;
        }

LABEL_18:
        sub_1000068B0(v5, v8);
LABEL_19:
        sub_1000068B0(v5, XPC_ACTIVITY_PREVENT_DEVICE_SLEEP);
        xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, *(v0 + 51));
        if (!XPC_ACTIVITY_EXPECTED_DURATION)
        {
          goto LABEL_48;
        }

        xpc_dictionary_set_int64(v3, XPC_ACTIVITY_EXPECTED_DURATION, qword_100240520[*(v0 + 17)]);
        xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, *v0);
        if (*(v0 + 16))
        {
          goto LABEL_26;
        }

        v9 = *(v0 + 8);
        if ((~*&v9 & 0x7FF0000000000000) != 0)
        {
          v10 = *(v0 + 8);
          if (v9 > -9.22337204e18)
          {
            sub_100008234();
            if (!v12)
            {
              goto LABEL_42;
            }

            xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, v11);
LABEL_26:
            if (*(v0 + 48))
            {
              goto LABEL_32;
            }

            v13 = *(v0 + 40);
            if ((~*&v13 & 0x7FF0000000000000) != 0)
            {
              v14 = *(v0 + 40);
              if (v13 <= -9.22337204e18)
              {
LABEL_43:
                __break(1u);
LABEL_44:
                __break(1u);
LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

              sub_100008234();
              if (!v12)
              {
                goto LABEL_45;
              }

              xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, v15);
LABEL_32:
              if (*(v0 + 32))
              {
                return;
              }

              v16 = *(v0 + 24);
              if ((~*&v16 & 0x7FF0000000000000) == 0)
              {
                goto LABEL_44;
              }

              v17 = *(v0 + 24);
              if (v16 <= -9.22337204e18)
              {
LABEL_46:
                __break(1u);
                goto LABEL_47;
              }

              sub_100008234();
              if (v12)
              {
                xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, v18);
                return;
              }

LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_41;
      case 3:
        goto LABEL_17;
      default:
        goto LABEL_19;
    }
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_1000068B0(v5, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
  v6 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  if (XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
    v7 = 0;
LABEL_11:
    xpc_dictionary_set_BOOL(v3, v6, v7);
    goto LABEL_12;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1001AFD44(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[52])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AFD90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001AFE30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1001AFEB8(void *a1)
{
  v2 = sub_100099DF4(&qword_1002E0078, &qword_100240748);
  v3 = sub_100003724(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001B07E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v9, v2);
}

Swift::Int sub_1001AFFEC()
{
  sub_100005BE8();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001B0034(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002E0068, &qword_100240740);
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v14 - v9;
  v11 = a1[4];
  v12 = sub_10000C4FC(a1, a1[3]);
  sub_1001B07E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v10, v3);
  }

  sub_100004118(a1);
  return v12;
}

uint64_t sub_1001B0188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AFE30(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001B01B4(uint64_t a1)
{
  v2 = sub_1001B07E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B01F0(uint64_t a1)
{
  v2 = sub_1001B07E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001B022C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1001AFFEC();
}

uint64_t sub_1001B023C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001B0034(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1001B0268(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1001AFEB8(a1);
}

unint64_t sub_1001B0288()
{
  result = qword_1002E0058;
  if (!qword_1002E0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0058);
  }

  return result;
}

uint64_t sub_1001B02F4(double a1)
{
  if (a1 == 60.0)
  {
    return 0;
  }

  if (a1 == 300.0)
  {
    return 1;
  }

  if (a1 == 900.0)
  {
    return 2;
  }

  if (a1 == 1800.0)
  {
    return 3;
  }

  if (a1 == 3600.0)
  {
    return 4;
  }

  if (a1 == 14400.0)
  {
    return 5;
  }

  if (a1 == 28800.0)
  {
    return 6;
  }

  if (a1 == 86400.0)
  {
    return 7;
  }

  if (a1 == 604800.0)
  {
    return 8;
  }

  return 9;
}

uint64_t sub_1001B03D0(double *a1, double *a2)
{
  if (((*a1 ^ *a2) & 1) != 0 || *(a1 + 1) != *(a2 + 1))
  {
    goto LABEL_9;
  }

  v2 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if (a1[1] != a2[1])
    {
      v2 = 1;
    }

    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (*(a2 + 16))
  {
LABEL_11:
    v4 = *(a1 + 17);
    switch(*(a2 + 17))
    {
      case 1:
        if (v4 != 1)
        {
          goto LABEL_9;
        }

        break;
      case 2:
        if (v4 != 2)
        {
          goto LABEL_9;
        }

        break;
      case 3:
        if (v4 != 3)
        {
          goto LABEL_9;
        }

        break;
      case 4:
        if (v4 != 4)
        {
          goto LABEL_9;
        }

        break;
      case 5:
        if (v4 != 5)
        {
          goto LABEL_9;
        }

        break;
      case 6:
        if (v4 != 6)
        {
          goto LABEL_9;
        }

        break;
      case 7:
        if (v4 != 7)
        {
          goto LABEL_9;
        }

        break;
      case 8:
        if (v4 != 8)
        {
          goto LABEL_9;
        }

        break;
      default:
        if (*(a1 + 17))
        {
          goto LABEL_9;
        }

        break;
    }

    v2 = *(a2 + 32);
    if (a1[4])
    {
      if (!*(a2 + 32))
      {
        return v2 & 1;
      }
    }

    else
    {
      if (a1[3] != a2[3])
      {
        v2 = 1;
      }

      if (v2)
      {
        goto LABEL_9;
      }
    }

    v2 = *(a2 + 48);
    if (a1[6])
    {
      if (!*(a2 + 48))
      {
        return v2 & 1;
      }

      goto LABEL_41;
    }

    if (a1[5] != a2[5])
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
LABEL_41:
      if (*(a1 + 49) == *(a2 + 49) && *(a1 + 50) == *(a2 + 50))
      {
        v2 = *(a1 + 51) ^ *(a2 + 51) ^ 1;
        return v2 & 1;
      }
    }

LABEL_9:
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1001B0534(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2 & 1);
  Hasher._combine(_:)(*(v2 + 1));
  if (*(v2 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v2 + 8);
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  sub_10015E0A0(a1, *(v2 + 17));
  if (*(v2 + 32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *(v2 + 24);
    Hasher._combine(_:)(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
  }

  if (*(v2 + 48) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v8 = *(v2 + 40);
    Hasher._combine(_:)(1u);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    Hasher._combine(_:)(v9);
  }

  Hasher._combine(_:)(*(v2 + 49));
  Hasher._combine(_:)(*(v2 + 50));
  Hasher._combine(_:)(*(v2 + 51) & 1);
}

Swift::Int sub_1001B062C()
{
  sub_100005BE8();
  sub_1001B0534(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B067C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_1001B06EC@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B02F4(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1001B074C()
{
  Hasher.init(_seed:)();
  sub_1001B0534(v1);
  return Hasher._finalize()();
}

unint64_t sub_1001B0790()
{
  result = qword_1002E0060;
  if (!qword_1002E0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0060);
  }

  return result;
}

unint64_t sub_1001B07E4()
{
  result = qword_1002E0070;
  if (!qword_1002E0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0070);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCActivityTaskID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1001B08E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001B09BC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001B0A94(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        break;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001B0B6C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B0C48()
{
  result = qword_1002E0080;
  if (!qword_1002E0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0080);
  }

  return result;
}

unint64_t sub_1001B0CA0()
{
  result = qword_1002E0088;
  if (!qword_1002E0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0088);
  }

  return result;
}

unint64_t sub_1001B0CF8()
{
  result = qword_1002E0090;
  if (!qword_1002E0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0090);
  }

  return result;
}

unint64_t sub_1001B0D50()
{
  result = qword_1002E0098;
  if (!qword_1002E0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0098);
  }

  return result;
}

unint64_t sub_1001B0DA8()
{
  result = qword_1002E00A0;
  if (!qword_1002E00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E00A0);
  }

  return result;
}

unint64_t sub_1001B0E00()
{
  result = qword_1002E00A8;
  if (!qword_1002E00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E00A8);
  }

  return result;
}

unint64_t sub_1001B0E58()
{
  result = qword_1002E00B0;
  if (!qword_1002E00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E00B0);
  }

  return result;
}

void sub_1001B1774(id a1)
{
  qword_1003040C0 = [[ktSeAkOyXkmyQNgH alloc] initWithServiceName:@"com.apple.asd.scoring"];

  _objc_release_x1();
}

void sub_1001B1924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B1944(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained uTtwJoGUgL3N0GVz];
}

void sub_1001B1B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B1B80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B1E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B1E74(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B20B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B20EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B2314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B234C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B2690(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1001B26D4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v14 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B291C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001B2954(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B2C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B2C98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B2CD8(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B2ED0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001B2F0C(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B34C0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = objc_retainBlock(*(a1 + 48));
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

id sub_1001B35EC(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;

  v3 = a1[5];
  v4 = *(a1[4] + 16);

  return [v4 removeObjectForKey:v3];
}

void sub_1001B36C0(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
  v3 = [NSError errorWithDomain:v2 code:-31 userInfo:0];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(*(a1 + 32) + 16) allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
}

uint64_t sub_1001B3AB8(uint64_t a1)
{
  v2 = os_log_create("com.apple.CoreAS", "libCoreAS");
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return _objc_release_x1();
}

void sub_1001B4060(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B4118;
  v6[3] = &unk_1002BC758;
  v6[4] = a1[6];
  v7 = v2;
  v5 = v2;
  [v3 JI0A3nkqsab9cUj8:v4 completion:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_1001B4118(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1 + 32) + 64), a2);
  objc_storeStrong((*(a1 + 32) + 72), a4);
  if (v10)
  {
    [*(*(a1 + 32) + 16) setObject:v8 forKey:v10];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void *sub_1001B42B8(void *result)
{
  v1 = result[4];
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    v2 = *(result[4] + 40);
    if (v2)
    {
      return (*(v2 + 16))(*(result[4] + 40), result[5], result[6], result[7]);
    }
  }

  return result;
}

void sub_1001B44D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72))
  {

    [v2 _safeCallbackWithMessage:0 uuid:0 error:?];
    return;
  }

  v3 = [*(v2 + 32) serverEndpointIdentifier];
  if ([v3 isEqualToString:@"enable"])
  {
    v4 = [*(a1 + 40) nonce];

    if (!v4)
    {
      v5 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
      v6 = v5;
      v7 = -701;
LABEL_24:
      v20 = [NSError errorWithDomain:v6 code:v7 userInfo:0];

      [*(a1 + 32) _safeCallbackWithMessage:0 uuid:0 error:v20];

      return;
    }
  }

  else
  {
  }

  v8 = *(a1 + 32);
  if (!*(v8 + 64))
  {
    v5 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
    v6 = v5;
    v7 = -710;
    goto LABEL_24;
  }

  v9 = [*(v8 + 16) objectForKey:?];
  v19 = *(a1 + 48);
  v10 = *(*(a1 + 32) + 64);
  v11 = [*(a1 + 40) hostChallenge];
  v12 = v11;
  if (!v11)
  {
    v12 = [*(*(a1 + 32) + 32) hostChallenge];
  }

  v13 = [*(a1 + 40) challengeResponse];
  v14 = v13;
  if (!v13)
  {
    v14 = [*(*(a1 + 32) + 32) challengeResponse];
  }

  v15 = [*(a1 + 40) seid];
  v16 = v15;
  if (!v15)
  {
    v16 = [*(*(a1 + 32) + 32) seid];
  }

  v17 = [*(a1 + 40) nonce];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001B47D0;
  v21[3] = &unk_1002BC7D0;
  v21[4] = *(a1 + 32);
  v22 = v9;
  v18 = v9;
  [v19 QeMnG23X94qgz7jT:v10 hostChallenge:v12 challengeResponse:v14 seid:v16 nonce:v17 completion:v21];

  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v11)
  {
  }
}

void sub_1001B47D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!a2 || a3)
  {
    v7 = *(a1 + 40);

    [v4 _safeCallbackWithMessage:a2 uuid:v7 error:a3];
  }

  else
  {
    v8 = 0;
    v5 = [v4 VkBISyFszEu5z9lr:a2 error:&v8];
    v6 = v8;
    [*(a1 + 32) _safeCallbackWithMessage:v5 uuid:*(a1 + 40) error:v6];
  }
}

uint64_t sub_1001B4FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for P384.Signing.PrivateKey();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v11 = v10 - v9;
  result = P384.Signing.PrivateKey.init<A>(rawRepresentation:)();
  if (!v1)
  {
    return (*(v6 + 32))(a1, v11, v3);
  }

  return result;
}

BOOL sub_1001B50D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BCBE8, v2);

  return v3 != 0;
}

BOOL sub_1001B512C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B50D8(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1001B51AC@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B50D8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001B51D8(uint64_t a1)
{
  v2 = sub_1001B5778();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B5214(uint64_t a1)
{
  v2 = sub_1001B5778();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIAccountKeypair.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = type metadata accessor for P384.Signing.PrivateKey();
  v4 = sub_100003724(v28);
  v31 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = type metadata accessor for PIAccountKeypair();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10000306C();
  v15 = v14 - v13;
  v16 = sub_100099DF4(&qword_1002E01E8, &qword_100243990);
  v17 = sub_100003724(v16);
  v30 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  v22 = &v27 - v21;
  v23 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001B5778();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v24 = v30;
    v25 = v31;
    sub_1001B57CC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    P384.Signing.PrivateKey.init<A>(rawRepresentation:)();
    (*(v25 + 32))(v15, v10, v28);
    (*(v24 + 8))(v22, v16);
    sub_1001B5820(v15, v29);
  }

  return sub_100004118(a1);
}

uint64_t PIAccountKeypair.encode(to:)(void *a1)
{
  v2 = sub_100099DF4(&qword_1002E0200, &qword_100243998);
  v3 = sub_100003724(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001B5778();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = P384.Signing.PrivateKey.rawRepresentation.getter();
  v14 = v11;
  sub_1001B5884();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10000D170(v13, v14);
  return (*(v5 + 8))(v9, v2);
}

unint64_t PIAccountKeypair.description.getter()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for P384.Signing.PrivateKey();
  sub_100099DF4(&qword_1002E0210, &qword_1002439A0);
  v0._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD00000000000001DLL;
}

uint64_t type metadata accessor for PIAccountKeypair()
{
  result = qword_1002E0270;
  if (!qword_1002E0270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001B5778()
{
  result = qword_1002E01F0;
  if (!qword_1002E01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E01F0);
  }

  return result;
}

unint64_t sub_1001B57CC()
{
  result = qword_1002E01F8;
  if (!qword_1002E01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E01F8);
  }

  return result;
}

uint64_t sub_1001B5820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIAccountKeypair();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B5884()
{
  result = qword_1002E0208;
  if (!qword_1002E0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0208);
  }

  return result;
}

uint64_t sub_1001B5900()
{
  result = type metadata accessor for P384.Signing.PrivateKey();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIAccountKeypair.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1001B5A30()
{
  result = qword_1002E02B0;
  if (!qword_1002E02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E02B0);
  }

  return result;
}

unint64_t sub_1001B5A88()
{
  result = qword_1002E02B8;
  if (!qword_1002E02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E02B8);
  }

  return result;
}

unint64_t sub_1001B5AE0()
{
  result = qword_1002E02C0;
  if (!qword_1002E02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E02C0);
  }

  return result;
}

uint64_t sub_1001B5B44(uint64_t a1)
{
  v2 = sub_10002E9DC(&qword_1002E02F0, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001B5BB0(uint64_t a1)
{
  v2 = sub_10002E9DC(&qword_1002E02F0, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001B5C1C(uint64_t a1)
{
  v2 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001B5C9C(uint64_t a1)
{
  v2 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001B5D08(uint64_t a1)
{
  v2 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001B5D74(void *a1, uint64_t a2)
{
  v4 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001B5E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1001B5E88()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001B5EE8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1001B5F1C();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1001B5F24@<X0>(uint64_t *a1@<X8>)
{
  result = PIScheduledRotationConfiguration.rotationInterval.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1001B5F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1001B61D8()
{
  result = qword_1002E0318;
  if (!qword_1002E0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0318);
  }

  return result;
}

uint64_t sub_1001B62E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701080931 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001002768E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x8000000100276900 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x706972637365645FLL && a2 == 0xEC0000006E6F6974;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x8000000100276920 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x8000000100276940 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001B651C(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 1701080931;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x706972637365645FLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001B6608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B62E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B6630(uint64_t a1)
{
  v2 = sub_1001B6BBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B666C(uint64_t a1)
{
  v2 = sub_1001B6BBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static PICodableError.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = a1[5] == a2[5] && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = a1[7] == a2[7] && a1[8] == a2[8];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[9] == a2[9] && a1[10] == a2[10];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = a1[11];
  v12 = a2[11];

  return sub_1001B67C0(v11, v12);
}

uint64_t sub_1001B67C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 96)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v15, i, sizeof(v15));
      v5 = __dst[0] == v15[0] && __dst[1] == v15[1];
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (__dst[2] != v15[2])
      {
        break;
      }

      v6 = __dst[3] == v15[3] && __dst[4] == v15[4];
      if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (__dst[6])
      {
        if (!v15[6])
        {
          return 0;
        }

        v7 = __dst[5] == v15[5] && __dst[6] == v15[6];
        if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v15[6])
      {
        return 0;
      }

      v8 = __dst[7] == v15[7] && __dst[8] == v15[8];
      if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v9 = __dst[9] == v15[9] && __dst[10] == v15[10];
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v10 = __dst[11];
      v11 = v15[11];
      sub_1001B7C00(__dst, v13);
      sub_1001B7C00(v15, v13);
      LOBYTE(v10) = sub_1001B67C0(v10, v11);
      sub_1001B7C38(v15);
      sub_1001B7C38(__dst);
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      v3 += 96;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t PICodableError.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0338, &qword_100243EE0);
  v6 = sub_100003724(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v26[-v11];
  v13 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001B6BBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v33 = 0;
  sub_1000083D8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v32 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[3];
    v18 = v3[4];
    v31 = 2;
    sub_1000083D8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[5];
    v20 = v3[6];
    v30 = 3;
    sub_1000083D8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[7];
    v22 = v3[8];
    v29 = 4;
    sub_1000083D8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v3[9];
    v24 = v3[10];
    v28 = 5;
    sub_1000083D8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = v3[11];
    v26[15] = 6;
    sub_100099DF4(&qword_1002E0348, &qword_100243EE8);
    sub_10002EA88(&qword_1002E0350, sub_1001B6C10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1001B6BBC()
{
  result = qword_1002E0340;
  if (!qword_1002E0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0340);
  }

  return result;
}

unint64_t sub_1001B6C10()
{
  result = qword_1002E0358;
  if (!qword_1002E0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0358);
  }

  return result;
}

void PICodableError.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  Hasher._combine(_:)(v2[2]);
  v6 = v2[3];
  v7 = v2[4];
  String.hash(into:)();
  if (v2[6])
  {
    v8 = v2[5];
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = v2[7];
  v10 = v2[8];
  String.hash(into:)();
  v11 = v2[9];
  v12 = v2[10];
  String.hash(into:)();
  v13 = v2[11];

  sub_1001B7A40(a1, v13);
}

Swift::Int PICodableError.hashValue.getter()
{
  Hasher.init(_seed:)();
  PICodableError.hash(into:)(v1);
  return Hasher._finalize()();
}

void *PICodableError.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100099DF4(&qword_1002E0360, &unk_100243EF0);
  v6 = sub_100003724(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001B6BBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004118(a1);
  }

  LOBYTE(v32[0]) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  sub_10002EB84(1);
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10002EB84(2);
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v13;
  sub_10002EB84(3);
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v15;
  v24 = v14;
  sub_10002EB84(4);
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v16;
  sub_10002EB84(5);
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v17;
  sub_100099DF4(&qword_1002E0348, &qword_100243EE8);
  v33 = 6;
  sub_10002EA88(&qword_1002E0368, sub_1001B7BAC);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = sub_10002EB9C();
  v19(v18);
  v21 = v34;
  __src[0] = v10;
  __src[1] = v12;
  __src[2] = v27;
  __src[3] = v25;
  __src[4] = v30;
  __src[5] = v24;
  __src[6] = v26;
  __src[7] = v23;
  __src[8] = v29;
  __src[9] = v22;
  __src[10] = v28;
  __src[11] = v34;
  sub_1001B7C00(__src, v32);
  sub_100004118(a1);
  v32[0] = v10;
  v32[1] = v12;
  v32[2] = v27;
  v32[3] = v25;
  v32[4] = v30;
  v32[5] = v24;
  v32[6] = v26;
  v32[7] = v23;
  v32[8] = v29;
  v32[9] = v22;
  v32[10] = v28;
  v32[11] = v21;
  sub_1001B7C38(v32);
  return memcpy(a2, __src, 0x60uLL);
}

uint64_t sub_1001B71D0(uint64_t a1)
{
  v2 = sub_1001B7FA4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001B720C(uint64_t a1)
{
  v2 = sub_1001B7FA4();

  return Error<>._code.getter(a1, v2);
}

Swift::Int sub_1001B7250()
{
  Hasher.init(_seed:)();
  PICodableError.hash(into:)(v1);
  return Hasher._finalize()();
}

void *sub_1001B728C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = PICodableError.init(from:)(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

id sub_1001B72F4()
{
  v1 = v0;
  sub_100099DF4(&qword_1002DCC30, &qword_100236608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v5 = v1[3];
  v4 = v1[4];
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  sub_10000DBC0();
  v6 = Dictionary.init(dictionaryLiteral:)();
  v7 = v1[11];
  v49 = v7;
  if (v7[2])
  {
    v42 = v7;
    memcpy(__dst, v7 + 4, sizeof(__dst));
    sub_100012C2C(&v49, &v46, &qword_1002E0348, &qword_100243EE8);
    sub_1001B7C00(__dst, &v46);
    sub_1001B7FF8(0, 1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v47 + 1) = &type metadata for PICodableError;
    *&v46 = swift_allocObject();
    memcpy((v46 + 16), __dst, 0x60uLL);
    sub_1001514B8(&v46, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10002EBAC(isUniquelyReferenced_nonNull_native, v9, v10, v11, v12, v13, v14, v15, v40, v42, v43, v44, v45[0]);

    v6 = v44;
    if (v42[2])
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v47 + 1) = sub_100099DF4(&qword_1002E0348, &qword_100243EE8);
      *&v46 = v42;
      sub_1001514B8(&v46, v45);
      v16 = swift_isUniquelyReferenced_nonNull_native();
      sub_10002EBAC(v16, v17, v18, v19, v20, v21, v22, v23, v41, v42, v43, v44, v45[0]);

      v6 = v44;
    }

    else
    {
    }
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  v45[0] = *(v1 + 5);
  if (*(&v45[0] + 1))
  {
    *(&__dst[1] + 1) = &type metadata for String;
    __dst[0] = v45[0];
    sub_1001514B8(__dst, &v46);
    sub_100012C2C(v45, &v42, &qword_1002DCC48, &qword_100238200);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v6;
    sub_1001B788C(&v46, v24, v26, v27);

    v6 = v42;
  }

  else
  {
    memset(__dst, 0, 32);
    sub_100012C2C(v45, &v46, &qword_1002DCC48, &qword_100238200);
    sub_100009DF4(__dst);
    v28 = sub_10014EB30(v24, v26);
    if (v29)
    {
      v30 = v28;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v6;
      v32 = v6[3];
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v31, v32);
      v6 = v42;
      v33 = *(v42[6] + 16 * v30 + 8);

      sub_1001514B8((v42[7] + 32 * v30), &v46);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    sub_100009DF4(&v46);
  }

  v34 = *v1;
  v35 = v1[1];
  v36 = v1[2];
  objc_allocWithZone(NSError);

  v37 = sub_10000DBC0();
  return sub_100106FE0(v37, v38, v36, v6);
}

uint64_t PICodableError.errorUserInfo.getter()
{
  sub_100099DF4(&qword_1002DCC30, &qword_100236608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  sub_1001B72F4();
  swift_getErrorValue();
  *(inited + 72) = v4;
  v2 = sub_100007914((inited + 48));
  (*(*(v4 - 8) + 16))(v2);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t PICodableError.description.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t PICodableError.debugDescription.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t PICodableError.customMirror.getter()
{
  sub_1001B72F4();
  swift_getErrorValue();
  v0 = v4[4];
  v1 = v5;
  v4[3] = v5;
  v2 = sub_100007914(v4);
  (*(*(v1 - 8) + 16))(v2, v0, v1);

  return Mirror.init(reflecting:)();
}

_OWORD *sub_1001B788C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10014EB30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_10014EB30(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v16);
    sub_100004118(v22);

    return sub_1001514B8(a1, v22);
  }

  else
  {
    sub_1001B79D4(v16, a2, a3, a1, v21);
  }
}

_OWORD *sub_1001B79D4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1001514B8(a4, (a5[7] + 32 * a1));
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

void sub_1001B7A40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 120);
    do
    {
      v6 = *(v5 - 11);
      v7 = *(v5 - 10);
      v14 = *(v5 - 9);
      v15 = *(v5 - 8);
      v8 = *(v5 - 7);
      v13 = *(v5 - 6);
      v9 = *(v5 - 5);
      v10 = *(v5 - 3);
      v16 = *(v5 - 4);
      v17 = *(v5 - 2);
      v11 = *(v5 - 1);
      v12 = *v5;

      String.hash(into:)();
      Hasher._combine(_:)(v14);
      String.hash(into:)();
      if (v9)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v5 += 12;
      String.hash(into:)();
      String.hash(into:)();
      sub_1001B7A40(a1, v12);

      --v4;
    }

    while (v4);
  }
}

unint64_t sub_1001B7BAC()
{
  result = qword_1002E0370;
  if (!qword_1002E0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0370);
  }

  return result;
}

unint64_t sub_1001B7C6C()
{
  result = qword_1002E0378;
  if (!qword_1002E0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0378);
  }

  return result;
}

unint64_t sub_1001B7CC4()
{
  result = qword_1002E0380;
  if (!qword_1002E0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0380);
  }

  return result;
}

uint64_t sub_1001B7D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1001B7D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PICodableError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B7EA0()
{
  result = qword_1002E0388;
  if (!qword_1002E0388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0388);
  }

  return result;
}

unint64_t sub_1001B7EF8()
{
  result = qword_1002E0390;
  if (!qword_1002E0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0390);
  }

  return result;
}

unint64_t sub_1001B7F50()
{
  result = qword_1002E0398;
  if (!qword_1002E0398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0398);
  }

  return result;
}

unint64_t sub_1001B7FA4()
{
  result = qword_1002E03A0[0];
  if (!qword_1002E03A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002E03A0);
  }

  return result;
}

uint64_t sub_1001B7FF8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1001DF1E0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 96 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1001DF080((v9 + 96 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1001B80DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001B81AC(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

BOOL sub_1001B81E8(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return static AvroMessageError.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_1001B8200(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return _s12amsaccountsd16AvroMessageErrorO9hashValueSivg_0(*v1);
}

void sub_1001B8214(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  AvroMessageError.hash(into:)(a1, *v2);
}

Swift::Int sub_1001B8228(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  AvroMessageError.hash(into:)(v8, *v2);
  return Hasher._finalize()();
}

uint64_t sub_1001B8274(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1001B81AC(*v1);
}

uint64_t sub_1001B8288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1001B80DC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1001B82BC(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return _s12amsaccountsd10AvroSchemaO05FixedC0V9precisionSiSgvpfi_0();
}

uint64_t sub_1001B82E8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_10009CF64();
  *a2 = result;
  return result;
}

uint64_t sub_1001B831C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001B8370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001B83C4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return static AvroSchemaEncodingError.__derived_enum_equals(_:_:)();
}

uint64_t sub_1001B83E8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1001B81DC();
}

uint64_t sub_1001B8410@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = static AvroSchemaEncodingError.__derived_enum_equals(_:_:)();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1001B8448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001B849C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001B84F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001B8544(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PICodableResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for PICodableResult.FailureCodingKeys();
  sub_10002EE90();
  swift_getWitnessTable();
  sub_10002EEE4();
  v62 = v7;
  v61 = v8;
  v66 = type metadata accessor for KeyedEncodingContainer();
  sub_100003724(v66);
  v64 = v9;
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100003018();
  sub_10002EEA8(v13);
  v14 = type metadata accessor for PICodableResult.SuccessCodingKeys();
  sub_10002EE60();
  swift_getWitnessTable();
  sub_10002EEE4();
  v57 = v14;
  v55 = v15;
  v60 = type metadata accessor for KeyedEncodingContainer();
  sub_100003724(v60);
  v59 = v16;
  v18 = *(v17 + 64);
  sub_100003774();
  __chkstk_darwin(v19);
  sub_100003018();
  v56 = v20;
  sub_1000038DC();
  v58 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  sub_10000306C();
  v68 = v26 - v25;
  sub_1000038DC();
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  sub_10000306C();
  v34 = (v33 - v32);
  v67 = v4;
  v65 = v6;
  type metadata accessor for PICodableResult.CodingKeys();
  sub_10002EE78();
  swift_getWitnessTable();
  v71 = type metadata accessor for KeyedEncodingContainer();
  sub_100003724(v71);
  v70 = v35;
  v37 = *(v36 + 64);
  sub_100003774();
  __chkstk_darwin(v38);
  v40 = &v55 - v39;
  v41 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v28 + 16))(v34, v69, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v34, sizeof(__dst));
    v72[0] = 1;
    v42 = v63;
    v43 = v71;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    memcpy(v72, __dst, sizeof(v72));
    sub_1001B6C10();
    v44 = v66;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10000EDE8(v74);
    v45(v42, v44);
    sub_10000EDE8(&v75);
    v46(v40, v43);
    return sub_1001B7C38(__dst);
  }

  else
  {
    v48 = v58;
    v49 = v67;
    (*(v58 + 32))(v68, v34, v67);
    __dst[0] = 0;
    v50 = v56;
    v51 = v71;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v52 = v60;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10000EDE8(&__dst[56]);
    v53(v50, v52);
    (*(v48 + 8))(v68, v49);
    sub_10000EDE8(&v75);
    return v54(v40, v51);
  }
}

uint64_t PICodableResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a4;
  v7 = type metadata accessor for PICodableResult.FailureCodingKeys();
  sub_10002EE90();
  swift_getWitnessTable();
  sub_10002EEE4();
  v80 = v7;
  v79 = v8;
  v74 = type metadata accessor for KeyedDecodingContainer();
  sub_100003724(v74);
  v73 = v9;
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100003018();
  sub_10002EEA8(v13);
  v14 = type metadata accessor for PICodableResult.SuccessCodingKeys();
  sub_10002EE60();
  swift_getWitnessTable();
  sub_10002EEE4();
  v77 = v14;
  v76 = v15;
  v72 = type metadata accessor for KeyedDecodingContainer();
  sub_100003724(v72);
  v71 = v16;
  v18 = *(v17 + 64);
  sub_100003774();
  __chkstk_darwin(v19);
  sub_100003018();
  sub_10002EEA8(v20);
  type metadata accessor for PICodableResult.CodingKeys();
  sub_10002EE78();
  WitnessTable = swift_getWitnessTable();
  sub_10002EEFC();
  v83 = type metadata accessor for KeyedDecodingContainer();
  sub_100003724(v83);
  v86 = v21;
  v23 = *(v22 + 64);
  sub_100003774();
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  v75 = a2;
  v85 = a3;
  v27 = type metadata accessor for PICodableResult();
  v28 = sub_100003724(v27);
  v70 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v68 - v35;
  __chkstk_darwin(v37);
  v39 = &v68 - v38;
  v40 = a1;
  v41 = a1[3];
  v42 = a1[4];
  v92 = v40;
  sub_10000C4FC(v40, v41);
  v84 = v26;
  v43 = v88;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v43)
  {
    v88 = v36;
    v69 = v33;
    WitnessTable = v39;
    v44 = v83;
    v45 = v84;
    *&__src[0] = KeyedDecodingContainer.allKeys.getter();
    sub_10002EEFC();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v90 = ArraySlice.init<A>(_:)();
    *(&v90 + 1) = v46;
    *&v91 = v47;
    *(&v91 + 1) = v48;
    sub_10002EEFC();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v49 = __src[0];
    if (LOBYTE(__src[0]) == 2 || (v68 = v90, __src[0] = v90, __src[1] = v91, (Collection.isEmpty.getter() & 1) == 0))
    {
      v52 = type metadata accessor for DecodingError();
      swift_allocError();
      v54 = v53;
      v55 = v45;
      v56 = *(sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0) + 48);
      *v54 = v27;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v52 - 8) + 104))(v54, enum case for DecodingError.typeMismatch(_:), v52);
      swift_willThrow();
      (*(v86 + 8))(v55, v44);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v49)
      {
        LOBYTE(__src[0]) = 1;
        v50 = v81;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v51 = v82;
        sub_1001B7BAC();
        v59 = v74;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v60 = (v86 + 8);
        (*(v73 + 8))(v50, v59);
        (*v60)(v45, v44);
        sub_10002EEBC();
        swift_unknownObjectRelease();
        v64 = v69;
        memcpy(v69, __src, 0x60uLL);
        swift_storeEnumTagMultiPayload();
        sub_10002EECC();
        v65 = WitnessTable;
        (v60)(WitnessTable, v64, v27);
      }

      else
      {
        LOBYTE(__src[0]) = 0;
        v57 = v78;
        v60 = v44;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v61 = v88;
        v62 = v72;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v63 = v86;
        sub_10000EDE8(&v91);
        v66(v57, v62);
        (*(v63 + 8))(v45, v60);
        sub_10002EEBC();
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        sub_10002EECC();
        v67 = v61;
        v65 = WitnessTable;
        (v60)(WitnessTable, v67, v27);
        v51 = v82;
      }

      (v60)(v51, v65, v27);
    }
  }

  return sub_100004118(v92);
}

uint64_t static PICodableResult<>.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v51 = a2;
  v50 = a1;
  sub_1000038DC();
  v49 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v46 = v12 - v11;
  v13 = type metadata accessor for PICodableResult();
  v14 = sub_100003724(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v45 - v22;
  sub_10002EEFC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_100003724(TupleTypeMetadata2);
  v48 = v25;
  v27 = *(v26 + 64);
  sub_100003774();
  v29 = __chkstk_darwin(v28);
  v31 = &v45 - v30;
  v33 = *(v32 + 48);
  v34 = *(v16 + 16);
  v34(&v45 - v30, v50, v13, v29);
  (v34)(&v31[v33], v51, v13);
  sub_10002EEF0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v34)(v23, v31, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = v49;
      v38 = &v31[v33];
      v39 = v46;
      (*(v49 + 32))(v46, v38, a3);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v37 + 8);
      v40(v39, a3);
      v40(v23, a3);
      goto LABEL_9;
    }

    sub_10000EDE8(&v54);
    v36(v23, a3);
    goto LABEL_7;
  }

  (v34)(v20, v31, v13);
  memcpy(__dst, v20, sizeof(__dst));
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001B7C38(__dst);
LABEL_7:
    v35 = 0;
    v16 = v48;
    goto LABEL_9;
  }

  memcpy(v53, &v31[v33], 0x60uLL);
  v35 = static PICodableError.__derived_struct_equals(_:_:)(__dst, v53);
  sub_1001B7C38(v53);
  sub_1001B7C38(__dst);
LABEL_9:
  v41 = *(v16 + 8);
  v42 = sub_10002EEF0();
  v43(v42);
  return v35 & 1;
}

uint64_t PICodableResult<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &__dst[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v11);
  v14 = &__dst[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v14, v16, a2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v14, sizeof(__dst));
    Hasher._combine(_:)(1uLL);
    PICodableError.hash(into:)(a1);
    return sub_1001B7C38(__dst);
  }

  else
  {
    (*(v5 + 32))(v8, v14, v4);
    Hasher._combine(_:)(0);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v5 + 8))(v8, v4);
  }
}

Swift::Int PICodableResult<>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  PICodableResult<>.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B9934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  PICodableResult<>.hash(into:)(v6, a2);
  return Hasher._finalize()();
}

uint64_t PICodableResult.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1000038DC();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  v11 = sub_100003724(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v16 + 8);
    v19 = *(v16 + 32);
    v20 = *(v16 + 48);
    v21 = *(v16 + 80);
    v22 = *(v16 + 88);
    String.append(_:)(*(v16 + 56));

    v23._countAndFlagsBits = 41;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    return 0x286572756C696166;
  }

  else
  {
    (*(v3 + 32))(v9, v16, v1);
    v25._countAndFlagsBits = 0x2873736563637573;
    v25._object = 0xE800000000000000;
    String.append(_:)(v25);
    sub_10002EEF0();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v26._countAndFlagsBits = 41;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v24 = 0;
    v27 = *(v3 + 8);
    v28 = sub_10002EEF0();
    v29(v28);
  }

  return v24;
}

uint64_t sub_1001B9BF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B9C64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 96;
  if (*(v3 + 64) > 0x60uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1001B9D88(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x60)
  {
    v5 = 96;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1001B9F4C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001BA128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = type metadata accessor for P384.Signing.PrivateKey();
  v6 = sub_100003724(v5);
  v43 = v7;
  v44 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  v14 = sub_100003724(v13);
  v42 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_10000306C();
  v20 = v19 - v18;
  v21 = type metadata accessor for PIDeviceKeypair.SEP(0);
  v22 = sub_1000030B8(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_10000306C();
  v27 = v26 - v25;
  v28 = type metadata accessor for PIDeviceKeypair(0);
  v29 = sub_10000307C(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v42 - v35;
  if (static SecureEnclave.isAvailable.getter())
  {
    v37 = v48;
    result = SecureEnclave.P384.Signing.PrivateKey.init(dataRepresentation:authenticationContext:)();
    if (v37)
    {
      return result;
    }

    (*(v42 + 32))(v27, v20, v13);
    sub_10002F194();
    sub_10002EF08(v27, v36, v39);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v46 = a1;
    v47 = a2;
    v40 = v48;
    result = P384.Signing.PrivateKey.init<A>(rawRepresentation:)();
    if (v40)
    {
      return result;
    }

    (*(v43 + 32))(v33, v12, v44);
    swift_storeEnumTagMultiPayload();
    v36 = v33;
  }

  sub_10002F1F8();
  return sub_10002EF08(v36, v45, v41);
}

uint64_t sub_1001BA3B8()
{
  v1 = v0;
  v2 = type metadata accessor for PIDeviceKeypair.NonSEP(0);
  v3 = sub_1000030B8(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = type metadata accessor for PIDeviceKeypair.SEP(0);
  v10 = sub_1000030B8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v15 = v14 - v13;
  v16 = type metadata accessor for PIDeviceKeypair(0);
  v17 = sub_10000307C(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10000306C();
  v22 = v21 - v20;
  sub_1001BAD60(v1, v21 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_10002F1AC();
    sub_10002EF08(v23, v8, v24);
    v25 = P384.Signing.PrivateKey.rawRepresentation.getter();
    sub_10002F1E0();
    v27 = v8;
  }

  else
  {
    sub_10002F194();
    sub_10002EF08(v22, v15, v28);
    v25 = SecureEnclave.P384.Signing.PrivateKey.dataRepresentation.getter();
    sub_10002F1C8();
    v27 = v15;
  }

  sub_10002EF68(v27, v26);
  return v25;
}

BOOL sub_1001BA510(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BCC20, v2);

  return v3 != 0;
}

BOOL sub_1001BA558@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001BA510(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1001BA58C@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001BA510(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001BA5B8(uint64_t a1)
{
  v2 = sub_1001BA82C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BA5F4(uint64_t a1)
{
  v2 = sub_1001BA82C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIDeviceKeypair.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for PIDeviceKeypair(0);
  v5 = sub_1000030B8(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = sub_100099DF4(&qword_1002E05A8, &qword_1002446F0);
  v12 = sub_100003724(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = v23 - v17;
  v19 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001BA82C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = v24;
    sub_1001B57CC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001BA128(v23[0], v23[1], v10);
    (*(v14 + 8))(v18, v11);
    sub_10002F1F8();
    sub_10002EF08(v10, v20, v21);
  }

  return sub_100004118(a1);
}

unint64_t sub_1001BA82C()
{
  result = qword_1002E05B0;
  if (!qword_1002E05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E05B0);
  }

  return result;
}

uint64_t PIDeviceKeypair.encode(to:)(void *a1)
{
  v2 = sub_100099DF4(&qword_1002E05B8, &qword_1002446F8);
  v3 = sub_100003724(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001BA82C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = sub_1001BA3B8();
  v14 = v11;
  sub_1001B5884();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10000D170(v13, v14);
  return (*(v5 + 8))(v9, v2);
}

unint64_t PIDeviceKeypair.SEP.description.getter()
{
  sub_10002F224();

  type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  sub_100099DF4(&qword_1002E05C0, &unk_100244700);
  v0._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000010;
}

unint64_t PIDeviceKeypair.NonSEP.description.getter()
{
  sub_10002F224();

  type metadata accessor for P384.Signing.PrivateKey();
  sub_100099DF4(&qword_1002E0210, &qword_1002439A0);
  v0._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000013;
}

uint64_t PIDeviceKeypair.description.getter()
{
  v1 = type metadata accessor for PIDeviceKeypair.NonSEP(0);
  v2 = sub_1000030B8(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v7 = v6 - v5;
  v8 = type metadata accessor for PIDeviceKeypair.SEP(0);
  v9 = sub_1000030B8(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000306C();
  v14 = v13 - v12;
  v15 = type metadata accessor for PIDeviceKeypair(0);
  v16 = sub_10000307C(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000306C();
  v21 = v20 - v19;
  sub_1001BAD60(v0, v20 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_10002F1AC();
    sub_10002EF08(v22, v7, v23);
    v24._countAndFlagsBits = PIDeviceKeypair.NonSEP.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = 0x287065536E6F6ELL;
    sub_10002F1E0();
    v28 = v7;
  }

  else
  {
    sub_10002F194();
    sub_10002EF08(v21, v14, v29);
    v30._countAndFlagsBits = PIDeviceKeypair.SEP.description.getter();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 41;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v26 = 678454643;
    sub_10002F1C8();
    v28 = v14;
  }

  sub_10002EF68(v28, v27);
  return v26;
}

uint64_t sub_1001BAD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIDeviceKeypair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001BADC8()
{
  sub_10002EFC0(319, &qword_1002E0648, type metadata accessor for PIDeviceKeypair.SEP);
  if (v0 <= 0x3F)
  {
    sub_10002EFC0(319, &unk_1002E0650, type metadata accessor for PIDeviceKeypair.NonSEP);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PIDeviceKeypair.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1001BAFA4()
{
  result = qword_1002E07A0;
  if (!qword_1002E07A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E07A0);
  }

  return result;
}

unint64_t sub_1001BAFFC()
{
  result = qword_1002E07A8;
  if (!qword_1002E07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E07A8);
  }

  return result;
}

unint64_t sub_1001BB054()
{
  result = qword_1002E07B0;
  if (!qword_1002E07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E07B0);
  }

  return result;
}

PrivateIdentifiers::PIExternalKeypairsRotationReason_optional __swiftcall PIExternalKeypairsRotationReason.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 4)
  {
    v1.value = PrivateIdentifiers_PIExternalKeypairsRotationReason_programmaticRotation;
  }

  else
  {
    v1.value = PrivateIdentifiers_PIExternalKeypairsRotationReason_unknownDefault;
  }

  if (rawValue == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

PrivateIdentifiers::PIExternalKeypairsRotationReason_optional sub_1001BB100@<W0>(Swift::Int *a1@<X0>, PrivateIdentifiers::PIExternalKeypairsRotationReason_optional *a2@<X8>)
{
  result.value = PIExternalKeypairsRotationReason.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001BB12C@<X0>(uint64_t *a1@<X8>)
{
  result = PIExternalKeypairsRotationReason.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t PIExternalKeypairsRotationReason.description.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

unint64_t sub_1001BB240()
{
  result = qword_1002E07B8;
  if (!qword_1002E07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E07B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIExternalKeypairsRotationReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001BB378()
{
  result = qword_1002E07C0;
  if (!qword_1002E07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E07C0);
  }

  return result;
}

uint64_t sub_1001BB3D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x80000001002769E0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100276A00 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1001BB4A8(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1001BB4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BB3D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BB510(uint64_t a1)
{
  v2 = sub_1001BB6F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BB54C(uint64_t a1)
{
  v2 = sub_1001BB6F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIGenerationCounter.encode(to:)(void *a1)
{
  v3 = sub_100099DF4(&qword_1002E07C8, &qword_100244AA0);
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001BB6F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1001BB6F8()
{
  result = qword_1002E07D0;
  if (!qword_1002E07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E07D0);
  }

  return result;
}

Swift::Int PIGenerationCounter.hashValue.getter(Swift::UInt64 a1, Swift::UInt64 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t PIGenerationCounter.init(from:)(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002E07D8, &qword_100244AA8);
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v13[-v9];
  v11 = a1[3];
  sub_10000C4FC(a1, v11);
  sub_1001BB6F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v13[15] = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v10, v3);
  }

  sub_100004118(a1);
  return v11;
}

Swift::Int sub_1001BB98C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1001BB9E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PIGenerationCounter.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1001BBA10(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return PIGenerationCounter.encode(to:)(a1);
}

uint64_t PIGenerationCounter.description.getter()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3;
}

unint64_t sub_1001BBAD8()
{
  result = qword_1002E07E0;
  if (!qword_1002E07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E07E0);
  }

  return result;
}

uint64_t sub_1001BBB2C()
{
  v1 = *v0;
  v2 = v0[1];
  return PIGenerationCounter.description.getter();
}

_BYTE *storeEnumTagSinglePayload for PIGenerationCounter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001BBC24()
{
  result = qword_1002E07E8;
  if (!qword_1002E07E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E07E8);
  }

  return result;
}

unint64_t sub_1001BBC7C()
{
  result = qword_1002E07F0;
  if (!qword_1002E07F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E07F0);
  }

  return result;
}

unint64_t sub_1001BBCD4()
{
  result = qword_1002E07F8;
  if (!qword_1002E07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E07F8);
  }

  return result;
}

uint64_t sub_1001BBD28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000100276A40 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x8000000100276A20 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7665446C61636F6CLL && a2 == 0xEF796C6E4F656369)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1001BBE90(char a1)
{
  result = 0x6C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0x7665446C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001BBF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BBD28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BBF58(uint64_t a1)
{
  v2 = sub_1001BC578();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BBF94(uint64_t a1)
{
  v2 = sub_1001BC578();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BBFD0(uint64_t a1)
{
  v2 = sub_1001BC6C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC00C(uint64_t a1)
{
  v2 = sub_1001BC6C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC048(uint64_t a1)
{
  v2 = sub_1001BC5CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC084(uint64_t a1)
{
  v2 = sub_1001BC5CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC0C0(uint64_t a1)
{
  v2 = sub_1001BC620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC0FC(uint64_t a1)
{
  v2 = sub_1001BC620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC138(uint64_t a1)
{
  v2 = sub_1001BC674();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC174(uint64_t a1)
{
  v2 = sub_1001BC674();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIKeypairsModificationKind.encode(to:)(void *a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_100099DF4(&qword_1002E0800, &qword_100244CE0);
  v4 = sub_100003724(v3);
  v53 = v5;
  v54 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003018();
  v52 = v9;
  v10 = sub_100099DF4(&qword_1002E0808, &qword_100244CE8);
  v11 = sub_100003724(v10);
  v50 = v12;
  v51 = v11;
  v14 = *(v13 + 64);
  sub_100003774();
  __chkstk_darwin(v15);
  sub_100003018();
  v49 = v16;
  v17 = sub_100099DF4(&qword_1002E0810, &qword_100244CF0);
  v18 = sub_100003724(v17);
  v47 = v19;
  v48 = v18;
  v21 = *(v20 + 64);
  sub_100003774();
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  v25 = sub_100099DF4(&qword_1002E0818, &qword_100244CF8);
  sub_100003724(v25);
  v46 = v26;
  v28 = *(v27 + 64);
  sub_100003774();
  __chkstk_darwin(v29);
  v31 = &v45 - v30;
  v32 = sub_100099DF4(&qword_1002E0820, &qword_100244D00);
  sub_100003724(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_100003774();
  __chkstk_darwin(v37);
  v39 = &v45 - v38;
  v40 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001BC578();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v55)
  {
    case 1:
      v57 = 1;
      sub_1001BC674();
      sub_10002F404();
      (*(v47 + 8))(v24, v48);
      break;
    case 2:
      v58 = 2;
      sub_1001BC620();
      v41 = v49;
      sub_10002F404();
      v43 = v50;
      v42 = v51;
      goto LABEL_5;
    case 3:
      v59 = 3;
      sub_1001BC5CC();
      v41 = v52;
      sub_10002F404();
      v43 = v53;
      v42 = v54;
LABEL_5:
      (*(v43 + 8))(v41, v42);
      break;
    default:
      v56 = 0;
      sub_1001BC6C8();
      sub_10002F404();
      (*(v46 + 8))(v31, v25);
      break;
  }

  return (*(v34 + 8))(v39, v32);
}

unint64_t sub_1001BC578()
{
  result = qword_1002E0828;
  if (!qword_1002E0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0828);
  }

  return result;
}

unint64_t sub_1001BC5CC()
{
  result = qword_1002E0830;
  if (!qword_1002E0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0830);
  }

  return result;
}

unint64_t sub_1001BC620()
{
  result = qword_1002E0838;
  if (!qword_1002E0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0838);
  }

  return result;
}

unint64_t sub_1001BC674()
{
  result = qword_1002E0840;
  if (!qword_1002E0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0840);
  }

  return result;
}

unint64_t sub_1001BC6C8()
{
  result = qword_1002E0848;
  if (!qword_1002E0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0848);
  }

  return result;
}

void PIKeypairsModificationKind.init(from:)(uint64_t *a1)
{
  v77 = sub_100099DF4(&qword_1002E0850, &qword_100244D08);
  sub_100003724(v77);
  v74 = v2;
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100003018();
  v76 = v6;
  v7 = sub_100099DF4(&qword_1002E0858, &qword_100244D10);
  v8 = sub_100003724(v7);
  v71 = v9;
  v72 = v8;
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100003018();
  v73 = v13;
  v14 = sub_100099DF4(&qword_1002E0860, &qword_100244D18);
  v15 = sub_100003724(v14);
  v69 = v16;
  v70 = v15;
  v18 = *(v17 + 64);
  sub_100003774();
  __chkstk_darwin(v19);
  v21 = &v63 - v20;
  v22 = sub_100099DF4(&qword_1002E0868, &qword_100244D20);
  sub_100003724(v22);
  v68 = v23;
  v25 = *(v24 + 64);
  sub_100003774();
  __chkstk_darwin(v26);
  v28 = &v63 - v27;
  v29 = sub_100099DF4(&qword_1002E0870, &unk_100244D28);
  sub_100003724(v29);
  v75 = v30;
  v32 = *(v31 + 64);
  sub_100003774();
  __chkstk_darwin(v33);
  v35 = &v63 - v34;
  v36 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001BC578();
  v37 = v78;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    goto LABEL_9;
  }

  v65 = v22;
  v66 = v28;
  v67 = v21;
  v38 = v76;
  v39 = v77;
  v78 = a1;
  v40 = v35;
  v41 = KeyedDecodingContainer.allKeys.getter();
  sub_10003CDEC(v41, 0);
  if (v44 == v45 >> 1)
  {
    goto LABEL_8;
  }

  v64 = 0;
  if (v44 >= (v45 >> 1))
  {
    __break(1u);
    return;
  }

  v46 = *(v43 + v44);
  sub_10003CE24(v44 + 1, v45 >> 1, v42, v43, v44, v45);
  v48 = v47;
  v50 = v49;
  swift_unknownObjectRelease();
  if (v48 != v50 >> 1)
  {
LABEL_8:
    v55 = type metadata accessor for DecodingError();
    swift_allocError();
    v57 = v56;
    v58 = *(sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0) + 48);
    *v57 = &type metadata for PIKeypairsModificationKind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v55 - 8) + 104))(v57, enum case for DecodingError.typeMismatch(_:), v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v75 + 8))(v40, v29);
    a1 = v78;
LABEL_9:
    sub_100004118(a1);
    return;
  }

  v51 = v46;
  v53 = v74;
  v52 = v75;
  switch(v51)
  {
    case 1:
      v80 = 1;
      sub_1001BC674();
      v59 = v67;
      sub_10002F3E4();
      swift_unknownObjectRelease();
      v61 = v69;
      v60 = v70;
      goto LABEL_18;
    case 2:
      v81 = 2;
      sub_1001BC620();
      v59 = v73;
      sub_10002F3E4();
      swift_unknownObjectRelease();
      v61 = v71;
      v60 = v72;
LABEL_18:
      (*(v61 + 8))(v59, v60);
      goto LABEL_19;
    case 3:
      v82 = 3;
      sub_1001BC5CC();
      v62 = v64;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        (*(v52 + 8))(v40, v29);
        swift_unknownObjectRelease();
        a1 = v78;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
      (*(v53 + 8))(v38, v39);
LABEL_19:
      (*(v52 + 8))(v40, v29);
      sub_100004118(v78);
      break;
    default:
      v79 = 0;
      sub_1001BC6C8();
      v54 = v66;
      sub_10002F3E4();
      swift_unknownObjectRelease();
      (*(v68 + 8))(v54, v65);
      goto LABEL_19;
  }
}

void sub_1001BCD08(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  PIKeypairsModificationKind.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t PIKeypairsModificationKind.description.getter(char a1)
{
  result = 0x6C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0x7665446C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001BCDF8()
{
  result = qword_1002E0878;
  if (!qword_1002E0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0878);
  }

  return result;
}

unint64_t sub_1001BCEB0()
{
  result = qword_1002E0880;
  if (!qword_1002E0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0880);
  }

  return result;
}

unint64_t sub_1001BCF08()
{
  result = qword_1002E0888;
  if (!qword_1002E0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0888);
  }

  return result;
}

unint64_t sub_1001BCF60()
{
  result = qword_1002E0890;
  if (!qword_1002E0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0890);
  }

  return result;
}

unint64_t sub_1001BCFB8()
{
  result = qword_1002E0898;
  if (!qword_1002E0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E0898);
  }

  return result;
}

unint64_t sub_1001BD010()
{
  result = qword_1002E08A0;
  if (!qword_1002E08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E08A0);
  }

  return result;
}

unint64_t sub_1001BD068()
{
  result = qword_1002E08A8;
  if (!qword_1002E08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E08A8);
  }

  return result;
}

unint64_t sub_1001BD0C0()
{
  result = qword_1002E08B0;
  if (!qword_1002E08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E08B0);
  }

  return result;
}