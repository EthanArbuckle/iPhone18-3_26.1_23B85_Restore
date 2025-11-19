void sub_100002230(id a1)
{
  qword_100098220 = +[NSMapTable weakToWeakObjectsMapTable];

  _objc_release_x1();
}

void sub_1000022B4(id a1)
{
  qword_100098230 = dispatch_queue_create("com.apple.shazamd.globalworkers.dispatch", 0);

  _objc_release_x1();
}

void sub_1000025B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000025E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained shutdownWorker];
}

void sub_100002624(uint64_t a1)
{
  v4 = +[SHServiceStateHandler globallyScopedWorkers];
  v2 = *(a1 + 32);
  v3 = [v2 workerID];
  [v4 setObject:v2 forKey:v3];
}

void sub_1000027DC(uint64_t a1)
{
  v3 = +[SHServiceStateHandler globallyScopedWorkers];
  v2 = [*(a1 + 32) workerID];
  [v3 removeObjectForKey:v2];
}

void sub_100002BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002BE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002BFC(uint64_t a1)
{
  v5 = +[SHServiceStateHandler globallyScopedWorkers];
  v2 = [v5 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000301C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003040(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to setup the remote proxy %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;
  }
}

uint64_t sub_1000032A8(uint64_t a1)
{
  v2 = sh_log_object();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Watchdog timer fired", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000041E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100004208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v4 = [(os_unfair_lock_s *)v3 connectionHandles];
    [v4 removeObject:*(a1 + 32)];

    v5 = sh_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(os_unfair_lock_s *)v3 connectionHandles];
      v10 = 134217984;
      v11 = [v6 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connection listener removed a handle, now we have %lu left", &v10, 0xCu);
    }

    v7 = [*(a1 + 32) exportedObject];
    v8 = sh_log_object();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling shutdown on the service %@ of the handle %@", &v10, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 shutdownService];
    }

    os_unfair_lock_unlock(v3 + 2);
  }
}

uint64_t sub_10000439C(uint64_t a1)
{
  v2 = sh_log_object();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Interruption handler called for service %@ from %@:%i", &v7, 0x1Cu);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_100004470(uint64_t a1)
{
  v2 = sh_log_object();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidation handler called for service %@ from %@:%i", &v7, 0x1Cu);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t start()
{
  signal(15, 1);
  v0 = dispatch_get_global_queue(0, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v0);
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v2 = sh_log_object();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to set tmp dir suffix", v7, 2u);
    }
  }

  v3 = objc_alloc_init(SHServer);
  v4 = qword_100098240;
  qword_100098240 = v3;

  [qword_100098240 start];
  if (v1)
  {
    dispatch_source_set_event_handler(v1, &stru_10007CE38);
    dispatch_resume(v1);
  }

  v5 = +[NSRunLoop currentRunLoop];
  [v5 run];

  return 0;
}

void sub_1000046E0(id a1)
{
  v1 = sh_log_object();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Software termination signal from kill. Exiting...", v2, 2u);
  }

  [qword_100098240 stop];
}

uint64_t static SHServiceProvider.availableServices()()
{
  sub_10000485C(&qword_100096DC0, &qword_10005CFD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10005CFC0;
  v1 = sub_1000048A4(0, &qword_100096DC8, off_10007C4A0);
  *(v0 + 56) = sub_10000485C(&qword_100096DD0, &qword_10005CFD8);
  *(v0 + 32) = v1;
  v2 = sub_1000048A4(0, &qword_100096DD8, &off_10007C4A8);
  *(v0 + 88) = sub_10000485C(&qword_100096DE0, &qword_10005CFE0);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ShazamEventsService();
  *(v0 + 120) = sub_10000485C(&qword_100096DE8, &qword_10005CFE8);
  *(v0 + 96) = v3;
  sub_1000048A4(0, &qword_100096DF0, NSSet_ptr);
  return NSSet.init(arrayLiteral:)();
}

uint64_t sub_10000485C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000048A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id SHServiceProvider.__allocating_init(service:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = [swift_getObjCClassFromMetadata() machServiceName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = &v1[OBJC_IVAR____TtC7shazamd17SHServiceProvider_machServiceName];
  *v6 = v3;
  v6[1] = v5;
  v8.receiver = v1;
  v8.super_class = v0;
  return objc_msgSendSuper2(&v8, "init");
}

id SHServiceProvider.init(service:)()
{
  ObjectType = swift_getObjectType();
  v2 = [swift_getObjCClassFromMetadata() machServiceName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = &v0[OBJC_IVAR____TtC7shazamd17SHServiceProvider_machServiceName];
  *v6 = v3;
  v6[1] = v5;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

NSXPCListener __swiftcall SHServiceProvider.buildListener()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7shazamd17SHServiceProvider_machServiceName);
  v2 = *(v0 + OBJC_IVAR____TtC7shazamd17SHServiceProvider_machServiceName + 8);
  v3 = objc_allocWithZone(NSXPCListener);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithMachServiceName:v4];

  return v5;
}

SHConnectionHandle __swiftcall SHServiceProvider.handle(for:with:)(NSXPCConnection a1, SHClientCredentials with)
{
  isa = with.super.isa;
  v5 = *(v2 + OBJC_IVAR____TtC7shazamd17SHServiceProvider_machServiceName);
  v6 = *(v2 + OBJC_IVAR____TtC7shazamd17SHServiceProvider_machServiceName + 8);
  v7 = [objc_opt_self() machServiceName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v5 == v8 && v6 == v10)
  {

    goto LABEL_15;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_15:
    v21 = SHShazamKitServiceInterface();
    v22 = SHShazamKitClientInterface();
    v23 = [objc_allocWithZone(SHConnectionHandle) initWithConnection:a1.super.isa exportedInterface:v21 remoteInterface:v22];

    v5 = &selRef_fetchLibraryTracksWithParameters_;
    v24 = [objc_allocWithZone(SHServiceStateHandler) initWithClientCredentials:isa];
    [v23 setServiceStateHandler:v24];

    v25 = [objc_allocWithZone(SHShazamKitService) initWithClientCredentials:isa];
    if ([v23 remoteObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45[0] = v43;
    v45[1] = v44;
    if (!*(&v44 + 1))
    {
      sub_100005464(v45);
      goto LABEL_30;
    }

    sub_10000485C(&unk_100096EF0, &unk_10005D028);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_30;
    }

    [v25 setDelegate:v42];
    [v25 setServiceDelegate:{objc_msgSend(v23, "serviceStateHandler")}];
    swift_unknownObjectRelease();
    [v23 setExportedObject:v25];
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v13 = type metadata accessor for ShazamEventsService();
  if (v5 == static ShazamEventsService.machServiceName()() && v6 == v14)
  {

    goto LABEL_24;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_24:
    v30 = SHShazamEventsServiceInterface();
    v31 = SHShazamEventsClientInterface();
    v23 = [objc_allocWithZone(SHConnectionHandle) initWithConnection:a1.super.isa exportedInterface:v30 remoteInterface:v31];

    v32 = [objc_allocWithZone(SHServiceStateHandler) initWithClientCredentials:isa];
    [v23 setServiceStateHandler:v32];

    v25 = [objc_allocWithZone(v13) init];
    v33 = [v23 serviceStateHandler];
    ShazamEventsService.serviceDelegate.setter();
    [v23 setExportedObject:v25];
LABEL_21:

    goto LABEL_22;
  }

  v17 = [objc_opt_self() machServiceName];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v5 == v18 && v6 == v20)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      while (1)
      {
        *&v45[0] = 0;
        *(&v45[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(41);

        *&v45[0] = 0xD000000000000027;
        *(&v45[0] + 1) = 0x800000010006D3A0;
        v41._countAndFlagsBits = v5;
        v41._object = v6;
        String.append(_:)(v41);
LABEL_30:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }

  v35 = SHShazamKitUIServiceInterface();
  v36 = SHShazamKitUIClientInterface();
  v23 = [objc_allocWithZone(SHConnectionHandle) initWithConnection:a1.super.isa exportedInterface:v35 remoteInterface:v36];

  v37 = [objc_allocWithZone(SHServiceStateHandler) initWithClientCredentials:isa];
  [v23 setServiceStateHandler:v37];

  v38 = [(objc_class *)isa attribution];
  v39 = [v38 bundleIdentifier];

  if (!v39)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String._bridgeToObjectiveC()();
  }

  v40 = [objc_allocWithZone(SHUIService) initBundleIdentifier:v39];

  [v40 setServiceDelegate:{objc_msgSend(v23, "serviceStateHandler")}];
  swift_unknownObjectRelease();
  [v23 setExportedObject:v40];

LABEL_22:
  v29 = v23;
  result._connection = v28;
  result._serviceStateHandler = v27;
  result._remoteObject = v26;
  result.super.isa = v29;
  return result;
}

id SHServiceProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SHServiceProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005464(uint64_t a1)
{
  v2 = sub_10000485C(&qword_100096E88, &unk_10005D018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100006D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006D98(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7 || (v10 = *(a1 + 32), v16 = v9, v11 = [v10 appendBuffer:v7 atTime:v8 error:&v16], v12 = v16, v9, v9 = v12, (v11 & 1) == 0))
  {
    v13 = sh_log_object();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Signature generator failed to flow audio - error %@, tearing down and creating a new instance", buf, 0xCu);
    }

    v14 = [[SHSignatureGenerator alloc] initSignatureRingBufferWithDuration:3.0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setSignatureGenerator:v14];
  }
}

void sub_100007024(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_100007048(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 recordingIntermission];
    v4 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setDefaultRecordingIntermissionInSeconds:v4];
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

void sub_1000071C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1000071E4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 tokenForClientIdentifier:*(a1 + 32)];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setCampaignToken:v3];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_100007544(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100007568(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 56));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) locationProvider];
  v7 = [v6 location];
  v8 = [SHServerMatchResponseParser matcherResponseFromServerData:v4 signature:v5 location:v7 context:v3];

  v9 = objc_loadWeakRetained(&to);
  v10 = [v9 delegate];
  v11 = objc_loadWeakRetained(&to);
  [v10 matcher:v11 didProduceResponse:v8];

  objc_destroyWeak(&to);
}

void sub_1000077F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007814(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 40));
  if (v5)
  {
    v7 = objc_loadWeakRetained(&to);
    [v7 matchSignature:*(a1 + 32) tokenizedURL:v5];
  }

  else
  {
    v7 = [SHError errorWithCode:202 underlyingError:v6];
    v8 = [SHMatcherResponse errorResponseForSignature:*(a1 + 32) error:v7];
    v9 = objc_loadWeakRetained(&to);
    v10 = [v9 delegate];
    v11 = objc_loadWeakRetained(&to);
    [v10 matcher:v11 didProduceResponse:v8];
  }

  objc_destroyWeak(&to);
}

void sub_100007B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100007B6C(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, a1 + 6);
  v4 = [v3 data];
  if (!v4 || ([v3 data], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length") == 0, v5, v4, v6))
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 error];
      *buf = 138412290;
      v36 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Received network response, no data %@", buf, 0xCu);
    }

    v11 = [v3 error];
    v12 = [v11 domain];
    if ([v12 isEqualToString:NSURLErrorDomain])
    {
      v13 = [v3 error];
      if ([v13 code] == -1009)
      {
      }

      else
      {
        v14 = [v3 error];
        v15 = [v14 code] == -1005;

        if (!v15)
        {
          goto LABEL_15;
        }
      }

      [a1[4] duration];
      v17 = v16;
      v18 = [a1[4] metrics];
      [v18 signatureRecordingOffset];
      v20 = v19;
      v21 = [a1[5] catalog];
      [v21 maximumQuerySignatureDuration];
      v23 = v17 + v20 < v22;

      if (v23)
      {
        v24 = sh_log_object();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Signature length not max so continuing recording until max", buf, 2u);
        }

        v25 = [a1[4] metrics];
        [v25 signatureRecordingOffset];
        v27 = v26;
        v28 = [a1[5] catalog];
        [v28 maximumQuerySignatureDuration];
        v7 = [SHMatcherResponse noMatchWithRecordingIntermission:a1[4] recordingSignatureOffset:0.0 retrySeconds:v27 signature:v29];

        v8 = objc_loadWeakRetained(&to);
        v30 = [v8 delegate];
        v31 = objc_loadWeakRetained(&to);
        [v30 matcher:v31 didProduceResponse:v7];
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_15:
    v32 = a1[4];
    v33 = [v3 error];
    v7 = [SHMatcherResponse errorResponseForSignature:v32 error:v33];

    v8 = objc_loadWeakRetained(&to);
    v30 = [v8 delegate];
    v31 = objc_loadWeakRetained(&to);
    [v30 matcher:v31 didProduceResponse:v7];
LABEL_16:

    goto LABEL_17;
  }

  v7 = objc_loadWeakRetained(&to);
  v8 = [v3 data];
  [v7 responseForServerData:v8 signature:a1[4]];
LABEL_17:

  objc_destroyWeak(&to);
}

void sub_100008AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008B0C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  v5 = [WeakRetained isHapticTrackAvailableFrom:v3 songDuration:&v12 error:0.0];
  v6 = v12;

  v7 = sh_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Song attributes fetched. Media Item Has Haptic Track?: %d", buf, 8u);
  }

  v8 = *(a1 + 32);
  v9 = [v3 error];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  (*(v8 + 16))(v8, v5, v11);
}

void sub_100008D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008D78(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [a1[4] duration];
  v38 = 0;
  v5 = [WeakRetained hapticSongItemFromResponse:v3 songDuration:&v38 error:?];
  v30 = v38;

  v31 = [v5 hapticsURL];
  if (v31)
  {
    v6 = [v5 spatialAttributes];
    v7 = [SHHapticsSpatialTrackParser spatialTrackInformationFromAttributes:v6];

    v8 = objc_loadWeakRetained(a1 + 6);
    v9 = [v8 hapticsDownloadRequestFromDownloadURL:v31];

    v10 = [v5 appleMusicID];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v24 = +[NSProcessInfo processInfo];
      v12 = [v24 globallyUniqueString];
    }

    v25 = sh_log_object();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v5 appleMusicID];
      v27 = @"YES";
      *buf = 138412802;
      v40 = v26;
      v41 = 2112;
      if (!v7)
      {
        v27 = @"NO";
      }

      v42 = v12;
      v43 = 2112;
      v44 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Attempting to download archive for appleMusicID:%@ with filename %@. Has spatial track info: %@", buf, 0x20u);
    }

    v28 = objc_loadWeakRetained(a1 + 6);
    v29 = [v28 endpointRequester];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000914C;
    v32[3] = &unk_10007D018;
    objc_copyWeak(&v37, a1 + 6);
    v33 = a1[4];
    v34 = v5;
    v20 = v7;
    v35 = v20;
    v36 = a1[5];
    [v29 performDownloadRequest:v9 filename:v12 fileType:UTTypeAppleArchive reply:v32];

    objc_destroyWeak(&v37);
  }

  else
  {
    v13 = [SHHapticsEndpointResponse alloc];
    v14 = a1[4];
    v15 = [SHNetworkDownloadResponse alloc];
    v16 = [v3 error];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v30;
    }

    v19 = [(SHNetworkDownloadResponse *)v15 initWithDownloadedFileLocation:0 urlResponse:0 error:v18, v30];
    v20 = [(SHHapticsEndpointResponse *)v13 initWithRequestMediaItem:v14 networkDownloadResponse:v19];

    v21 = a1[5];
    v22 = [v3 error];
    v9 = v22;
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v30;
    }

    v21[2](v21, v20, v23);
  }
}

void sub_10000914C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SHHapticsEndpointResponse alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = [WeakRetained updateMediaItem:*(a1 + 32) withSongItem:*(a1 + 40)];
  v7 = [(SHHapticsEndpointResponse *)v4 initWithRequestMediaItem:v6 spatialTrackInformation:*(a1 + 48) networkDownloadResponse:v3];

  (*(*(a1 + 56) + 16))();
}

void sub_10000973C(id a1)
{
  v1 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.ShazamNotifications"];
  v2 = qword_100098250;
  qword_100098250 = v1;

  v3 = qword_100098250;
  v4 = +[SHMatchResultUserNotificationContentProvider notificationCategories];
  [v3 setNotificationCategories:v4];

  v5 = objc_alloc_init(SHMatchResultUserNotificationCenterDelegate);
  v6 = qword_100098248;
  qword_100098248 = v5;

  [qword_100098250 setDelegate:qword_100098248];
  v7 = qword_100098250;

  [v7 setWantsNotificationResponsesDelivered];
}

void sub_10000A5BC(id a1)
{
  v6 = objc_alloc_init(SHAudioSessionManager);
  v1 = [SHAudioRecordingManager alloc];
  v2 = +[SHAudioRecorderProvider availableRecorders];
  v3 = [(SHAudioRecordingManager *)v1 initWithRecorders:v2];

  v4 = [[SHAudioManager alloc] initWithAudioSessionManager:v6 audioRecordingManager:v3];
  v5 = qword_100098260;
  qword_100098260 = v4;
}

void sub_10000D5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D60C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained session];
    v9 = [v8 dataTaskPromiseWithRequest:v5];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000D814;
    v14[3] = &unk_10007D0A8;
    objc_copyWeak(&v16, (a1 + 40));
    v15 = *(a1 + 32);
    [v9 addFinishBlock:v14];

    objc_destroyWeak(&v16);
  }

  else
  {
    v10 = sh_log_object();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to encode network request %@", buf, 0xCu);
    }

    v11 = [SHNetworkResponse alloc];
    v12 = [SHError errorWithCode:202 underlyingError:v6];
    v13 = [(SHNetworkResponse *)v11 initWithData:0 urlResponse:0 error:v12];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000D814(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 data];
  v8 = [v6 response];

  [WeakRetained handleResultData:v7 forResponse:v8 callback:*(a1 + 32) error:v5];
}

void sub_10000DA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000DA48(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v8 = [WeakRetained session];

    v9 = [(SHNetworkDownloadResponse *)v8 session];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000DC54;
    v14[3] = &unk_10007D0F8;
    v17 = a1[6];
    v15 = a1[4];
    v16 = a1[5];
    v10 = [v9 downloadTaskWithRequest:v5 completionHandler:v14];

    [v10 resume];
  }

  else
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to encode network request %@", buf, 0xCu);
    }

    v12 = [SHNetworkDownloadResponse alloc];
    v13 = [SHError errorWithCode:202 underlyingError:v6];
    v8 = [(SHNetworkDownloadResponse *)v12 initWithDownloadedFileLocation:0 urlResponse:0 error:v13];

    (*(a1[6] + 2))();
  }
}

void sub_10000DC54(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v8 = a1[4];
    v9 = a1[5];
    v17 = 0;
    v10 = a3;
    v11 = [SHNetworkDownloadUtilities renameDownloadedFile:a2 withFilename:v8 usingType:v9 error:&v17];
    v12 = v17;
    v13 = a1[6];
    v14 = [[SHNetworkDownloadResponse alloc] initWithDownloadedFileLocation:v11 urlResponse:v10 error:v12];

    (*(v13 + 16))(v13, v14);
  }

  else
  {
    v15 = a1[6];
    v16 = a3;
    v11 = [[SHNetworkDownloadResponse alloc] initWithDownloadedFileLocation:0 urlResponse:v16 error:v7];

    (*(v15 + 16))(v15, v11);
  }
}

void sub_10000E948(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sh_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error adding notification request %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000EAEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 shazamID];
  v6 = [UNNotificationRequest requestWithIdentifier:v5 content:v4 trigger:0];

  v7 = +[SHMatchResultNotificationScheduler userNotificationCenter];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000EBE8;
  v8[3] = &unk_10007D148;
  v9 = *(a1 + 40);
  [v7 addNotificationRequest:v6 withCompletionHandler:v8];
}

void sub_10000EBE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sh_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to schedule notification: %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000EF34(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000EFBC;
  v2[3] = &unk_10007D198;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 sh_setDefaultValuesWithCompletion:v2];
}

void sub_10000EFBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sh_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to add default values to response context %@", &v5, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000F080(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000F110;
  v3[3] = &unk_10007D198;
  v4 = *(a1 + 48);
  [v1 sh_setCampaignTokenForClientIdentifier:v2 completion:v3];
}

void sub_10000F110(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sh_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to add campaign token to response context %@", &v5, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000F22C(id a1)
{
  v1 = +[SHLCloudContext sharedContext];
  v2 = [v1 manateeContainer];
  v3 = qword_100098278;
  qword_100098278 = v2;

  v4 = [qword_100098278 options];
  [v4 setApplicationBundleIdentifierOverrideForTCC:@"com.apple.musicrecognition"];
}

void sub_10000F794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F7C0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 updateToken:4 withValue:&stru_10007EB10];
    v7 = [a1[4] URLBuilder];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000F910;
    v8[3] = &unk_10007D2A8;
    v11 = a1[6];
    objc_copyWeak(&v12, a1 + 7);
    v9 = v5;
    v10 = a1[5];
    [v7 defaultValuesWithCompletion:v8];

    objc_destroyWeak(&v12);
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void sub_10000F910(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v5 = [a1[4] URLRepresentation];
    v6 = +[SHMediaItemFetcher urlRequestsForBaseURL:shazamIDs:batchSize:](SHMediaItemFetcher, "urlRequestsForBaseURL:shazamIDs:batchSize:", v5, a1[5], [v3 lookupBatchSize]);

    v7 = [WeakRetained networkRequester];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000FA68;
    v8[3] = &unk_10007D280;
    v10 = a1[6];
    v8[4] = WeakRetained;
    v9 = a1[5];
    [v7 performRequests:v6 completionHandler:v8];
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void sub_10000FA68(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [a1[4] contextBuilder];
    v8 = [a1[4] bundleIdentifier];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000FC10;
    v10[3] = &unk_10007D258;
    v11 = a1[5];
    v12 = v5;
    v13 = a1[6];
    [v7 loadContextForClientIdentifier:v8 completion:v10];
  }

  else
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error fetching media items %@", buf, 0xCu);
    }

    (*(a1[6] + 2))();
  }
}

void sub_10000FC10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = a1;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 data];

        if (v11)
        {
          v12 = [v10 data];
          v17 = 0;
          v13 = [SHServerGetResponseParser mediaItemsFromServerData:v12 context:v3 error:&v17];

          if (v13)
          {
            [v4 addObjectsFromArray:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = *(v16 + 48);
  v15 = [v4 copy];
  (*(v14 + 16))(v14, v15, 0);
}

void sub_10001033C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    [*(a1 + 32) setAttachments:v5];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) copy];
  (*(v6 + 16))(v6, v7);
}

void sub_100012BC8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = +[NSProcessInfo processInfo];
    v10 = [v9 globallyUniqueString];

    v11 = [v8 temporaryDirectory];
    v12 = [v11 URLByAppendingPathComponent:v10];
    v13 = [v12 URLByAppendingPathExtension:@"png"];

    if (v13)
    {
      v15 = 0;
      [v8 moveItemAtURL:v6 toURL:v13 error:&v15];
      v14 = v15;
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100013AB0(id a1)
{
  v1 = +[SHNotificationCenterProvider matchResultNotificationCenter];
  [SHMatchResultNotificationScheduler setUserNotificationCenter:v1];

  v2 = +[SHRemoteConfiguration sharedInstance];
  [v2 populateRemoteConfiguration];
}

void sub_100013E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = [v3 userInfo];

  v6 = [v5 objectForKeyedSubscript:SHNotificationSpectralOutputPayloadKey];
  [v4 didCalculateSpectralData:v6];
}

void sub_100014DBC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SHError normalizedError:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_100014FA4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [SHError normalizedError:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_1000150F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [SHError normalizedError:?];
  (*(v3 + 16))(v3, a2, v4);
}

void sub_1000181A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sh_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error presenting media item %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100018420(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sh_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error handling apple music action with error: %@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000189C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000189E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100018E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

id sub_100018EE8(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * v7);
          v9 = [*(a1 + 40) providerIdentifier];
          if (!v9)
          {
            goto LABEL_9;
          }

          v10 = v9;
          v11 = [v8 providerID];
          v12 = [*(a1 + 40) providerIdentifier];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
LABEL_9:
            v14 = [*(a1 + 48) createWithManagedTrack:v8 excludeCloudMetadata:{objc_msgSend(*(a1 + 40), "excludeCloudMetadata")}];
            [*(*(*(a1 + 72) + 8) + 40) addObject:v14];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    *(*(*(a1 + 80) + 8) + 24) += [*(a1 + 32) count];
    return [*(a1 + 56) reset];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  return result;
}

void sub_1000194F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100019514(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) createWithManagedTrack:*(*(&v8 + 1) + 8 * v6) excludeCloudMetadata:{0, v8}];
        [*(*(*(a1 + 48) + 8) + 40) addObject:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_100019888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000198A8(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [SHMediaLibraryGroup alloc];
        v9 = [v7 metadata];
        v10 = [v9 data];
        v11 = [v7 syncID];
        v12 = [v8 initWithGroupMetadata:v10 groupSyncID:v11];

        [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_100019C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100019CC4(uint64_t a1)
{
  if ([*(a1 + 32) resultsLimit] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = *(a1 + 40);
    v3 = [v2 count];
    v4 = [*(a1 + 32) resultsLimit];
    if (v3 >= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    v6 = [v2 subarrayWithRange:{0, v5}];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [SHMediaLibraryGroup alloc];
        v14 = [v12 metadata];
        v15 = [v14 data];
        v16 = [v12 syncID];
        v17 = [v13 initWithGroupMetadata:v15 groupSyncID:v16];

        [*(*(*(a1 + 56) + 8) + 40) addObject:v17];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return [*(a1 + 48) reset];
}

void sub_100019F6C(uint64_t a1)
{
  [*(a1 + 32) updateReportForLibraryTrack:*(a1 + 40)];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v51 = v61 = 0u;
  obj = [v51 locallyFoundTracks];
  v2 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v59;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v59 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v58 + 1) + 8 * i);
        v7 = [v6 updatedTrack];
        v8 = [v7 metadata];

        if (v8)
        {
          v9 = [v6 localTrack];
          v10 = [v9 metadata];

          if (v10)
          {
            v11 = [v6 updatedTrack];
            v12 = [v11 metadata];
            v13 = [v12 encodedSystemData];
            v14 = [v6 localTrack];
            v15 = [v14 metadata];
            [v15 setData:v13];
          }

          else
          {
            v16 = *(a1 + 32);
            v11 = [v6 updatedTrack];
            v12 = [v11 metadata];
            v13 = [v12 encodedSystemData];
            v14 = [v6 localTrack];
            v17 = [v16 createMetadataWithData:v13 track:v14 group:0 context:*(a1 + 48)];
          }
        }

        v18 = *(a1 + 32);
        v19 = [v6 localTrack];
        v20 = [v6 updatedTrack];
        [v18 updateManagedTrack:v19 withUpdatedTrack:v20];
      }

      v3 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v3);
  }

  v21 = [v51 locallyFoundTracks];
  v22 = [v21 count];

  if (v22)
  {
    v23 = sh_log_object();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [v51 locallyFoundTracks];
      v25 = [v24 count];
      *buf = 134217984;
      v64 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Updating existing entries for %lu library track(s)", buf, 0xCu);
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obja = [v51 missingFromLocalStoreTracks];
  v26 = [obja countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v55;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v55 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v54 + 1) + 8 * j);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = [NSEntityDescription insertNewObjectForEntityForName:v32 inManagedObjectContext:*(a1 + 48)];

        [*(a1 + 32) updateManagedTrack:v33 withUpdatedTrack:v30];
        v34 = [v30 associatedGroupIdentifier];

        if (v34)
        {
          v35 = *(a1 + 32);
          v36 = [v30 associatedGroupIdentifier];
          [v35 associateTrack:v33 toGroupWithIdentifier:v36 context:*(a1 + 48)];
        }

        v37 = [v30 metadata];

        if (v37)
        {
          v38 = *(a1 + 32);
          v39 = [v30 metadata];
          v40 = [v39 encodedSystemData];
          v41 = [v38 createMetadataWithData:v40 track:v33 group:0 context:*(a1 + 48)];
        }
      }

      v27 = [obja countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v27);
  }

  v42 = [v51 missingFromLocalStoreTracks];
  v43 = [v42 count];

  if (v43)
  {
    v44 = sh_log_object();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v45 = [v51 missingFromLocalStoreTracks];
      v46 = [v45 count];
      *buf = 134217984;
      v64 = v46;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Creating entries for %lu library track(s)", buf, 0xCu);
    }
  }

  v47 = *(a1 + 56);
  v48 = [v51 missingFromLocalStoreTracks];
  v49 = [v48 count];
  v50 = [v51 locallyFoundTracks];
  (*(v47 + 16))(v47, v49, [v50 count]);
}

void sub_10001A688(id *a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001A88C;
        v14[3] = &unk_10007D518;
        v14[4] = v6;
        v7 = [NSPredicate predicateWithBlock:v14];
        v8 = objc_autoreleasePoolPush();
        v9 = [a1[5] filteredArrayUsingPredicate:v7];
        v10 = [v9 firstObject];

        objc_autoreleasePoolPop(v8);
        if (v10)
        {
          v11 = [[SHUpdatedTrackLocalTrackPair alloc] initWithUpdatedTrack:v6 localTrack:v10];
          v12 = [a1[6] locallyFoundTracks];
          [v12 addObject:v11];
        }

        else
        {
          v11 = [a1[6] missingFromLocalStoreTracks];
          [(SHUpdatedTrackLocalTrackPair *)v11 addObject:v6];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

id sub_10001A88C(uint64_t a1, void *a2)
{
  v3 = [a2 syncID];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_10001A9D8(uint64_t a1)
{
  [*(a1 + 32) updateReportForLibraryGroups:*(a1 + 40)];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v52 = v62 = 0u;
  obj = [v52 locallyFoundGroups];
  v2 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v60;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v60 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v59 + 1) + 8 * i);
        v7 = [v6 updatedGroup];
        v8 = [v7 metadata];

        if (v8)
        {
          v9 = [v6 localGroup];
          v10 = [v9 metadata];

          if (v10)
          {
            v11 = [v6 updatedGroup];
            v12 = [v11 metadata];
            v13 = [v12 encodedSystemData];
            v14 = [v6 localGroup];
            v15 = [v14 metadata];
            [v15 setData:v13];
          }

          else
          {
            v16 = *(a1 + 32);
            v11 = [v6 updatedGroup];
            v12 = [v11 metadata];
            v13 = [v12 encodedSystemData];
            v14 = [v6 localGroup];
            v17 = [v16 createMetadataWithData:v13 track:0 group:v14 context:*(a1 + 48)];
          }

          v18 = [v6 updatedGroup];
          v19 = [v18 identifier];
          v20 = [v6 localGroup];
          [v20 setSyncID:v19];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v3);
  }

  v21 = [v52 locallyFoundGroups];
  v22 = [v21 count];

  if (v22)
  {
    v23 = NSStringFromSelector("updatedGroup");
    v24 = NSStringFromSelector("identifier");
    v25 = [NSString stringWithFormat:@"@unionOfObjects.%@.%@", v23, v24];

    v26 = sh_log_object();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = [v52 locallyFoundGroups];
      v28 = [v27 valueForKeyPath:v25];
      *buf = 134218242;
      v65 = v22;
      v66 = 2112;
      v67 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Updating existing entries for %lu Library Group IDs: %@", buf, 0x16u);
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obja = [v52 missingFromLocalStoreGroups];
  v29 = [obja countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v56;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v56 != v31)
        {
          objc_enumerationMutation(obja);
        }

        v33 = *(*(&v55 + 1) + 8 * j);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = [NSEntityDescription insertNewObjectForEntityForName:v35 inManagedObjectContext:*(a1 + 48)];

        v37 = [v33 identifier];
        [v36 setSyncID:v37];

        v38 = [v33 metadata];

        if (v38)
        {
          v39 = *(a1 + 32);
          v40 = [v33 metadata];
          v41 = [v40 encodedSystemData];
          v42 = [v39 createMetadataWithData:v41 track:0 group:v36 context:*(a1 + 48)];
        }
      }

      v30 = [obja countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v30);
  }

  v43 = [v52 missingFromLocalStoreGroups];
  v44 = [v43 count];

  if (v44)
  {
    v45 = sh_log_object();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = [v52 missingFromLocalStoreGroups];
      v47 = [v46 count];
      *buf = 134217984;
      v65 = v47;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Creating entries for %lu library group(s)", buf, 0xCu);
    }
  }

  v48 = *(a1 + 56);
  v49 = [v52 missingFromLocalStoreGroups];
  v50 = [v49 count];
  v51 = [v52 locallyFoundGroups];
  (*(v48 + 16))(v48, v50, [v51 count]);
}

void sub_10001B14C(id *a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10001B350;
        v14[3] = &unk_10007D540;
        v14[4] = v6;
        v7 = [NSPredicate predicateWithBlock:v14];
        v8 = objc_autoreleasePoolPush();
        v9 = [a1[5] filteredArrayUsingPredicate:v7];
        v10 = [v9 firstObject];

        objc_autoreleasePoolPop(v8);
        if (v10)
        {
          v11 = [[SHUpdatedGroupLocalGroupPair alloc] initWithUpdatedGroup:v6 localGroup:v10];
          v12 = [a1[6] locallyFoundGroups];
          [v12 addObject:v11];
        }

        else
        {
          v11 = [a1[6] missingFromLocalStoreGroups];
          [(SHUpdatedGroupLocalGroupPair *)v11 addObject:v6];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

id sub_10001B350(uint64_t a1, void *a2)
{
  v3 = [a2 syncID];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t sub_10001B564(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) deleteObject:*(*(&v17 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 40) deleteObject:{*(*(&v13 + 1) + 8 * v11), v13}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 32) count] + objc_msgSend(*(a1 + 48), "count"));
}

void sub_10001B9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001B9D4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) deleteObject:{*(*(&v8 + 1) + 8 * v6), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10001BADC(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v1 withContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

void sub_10001BBC0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sh_log_object();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to purge local group objects: %@", &v4, 0xCu);
    }
  }
}

void sub_10001BC70(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sh_log_object();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to purge local track objects: %@", &v4, 0xCu);
    }
  }
}

void sub_10001BD80(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sh_log_object();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to delete sync metadata: %@", &v4, 0xCu);
    }
  }
}

void sub_10001C050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10001C084(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 48) + 8);
    obj = *(v3 + 40);
    v4 = [v2 save:&obj];
    objc_storeStrong((v3 + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10001C3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10001C400(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10001CF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CF5C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:NSInsertedObjectsKey];

  if (v2)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:NSInsertedObjectsKey];
    v4 = [*(a1 + 40) libraryChangesFromManagedObjects:v3 usingContext:*(a1 + 48) changeType:1];
    v5 = sh_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Local] Media library inserted %lu objects", &v16, 0xCu);
    }

    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v4];
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:NSUpdatedObjectsKey];

  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:NSUpdatedObjectsKey];
    v8 = [*(a1 + 40) libraryChangesFromManagedObjects:v7 usingContext:*(a1 + 48) changeType:1];
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      v16 = 134217984;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Local] Media library updated %lu existing objects", &v16, 0xCu);
    }

    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v8];
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:NSDeletedObjectsKey];

  if (v11)
  {
    v12 = [*(a1 + 32) objectForKeyedSubscript:NSDeletedObjectsKey];
    v13 = [*(a1 + 40) libraryChangesFromManagedObjects:v12 usingContext:*(a1 + 48) changeType:3];
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 count];
      v16 = 134217984;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Local] Media library deleted %lu objects", &v16, 0xCu);
    }

    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v13];
  }
}

void sub_10001DF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001DF60(id *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 snapshot];
  [v5 mergeSnapshot:v4];

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = [a1[4] snapshot];
  [WeakRetained removeInvalidChangesFromSnapshot:v7];

  v8 = [a1[4] snapshot];
  v20 = 0;
  v9 = [WeakRetained _synchronizeLocalSnapshot:v8 error:&v20];
  v10 = v20;

  if (!v9)
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to sync local changes with error %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v11 = [a1[4] snapshot];
  if (![v11 hasChanges])
  {
LABEL_7:

    goto LABEL_8;
  }

  v12 = [a1[5] currentContext];
  v13 = [v12 delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v11 = [a1[5] currentContext];
    v15 = [v11 delegate];
    v16 = a1[5];
    v17 = [a1[4] snapshot];
    [v15 _library:v16 didChangeWithSnapshot:v17];

    goto LABEL_7;
  }

LABEL_8:
  v18 = [a1[4] snapshot];
  v19 = [a1[4] startCondition];
  [WeakRetained synchronizeRemoteSnapshot:v18 startCondition:v19 didLocalSyncComplete:v9];
}

void sub_10001E2F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001E314(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained dataStore];
  v9 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001E438;
  v10[3] = &unk_10007D700;
  v11 = v9;
  v12 = *(a1 + 40);
  objc_copyWeak(&v13, (a1 + 48));
  [v8 fetchLibraryItemsWithParameters:v11 completionHandler:v10];

  objc_destroyWeak(&v13);
}

void sub_10001E438(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v23 = a3;
  v8 = a4;
  if ([a1[4] shouldUpdate])
  {
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = *v31;
      do
      {
        v13 = 0;
        do
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [[SHMediaLibraryChange alloc] initWithLibraryItem:*(*(&v30 + 1) + 8 * v13) changeType:1];
          [v9 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v11);
    }

    v15 = [SHMediaLibrarySnapshot alloc];
    v16 = [v9 copy];
    v17 = [NSOrderedSet orderedSetWithArray:v16];
    v18 = [v15 initWithChanges:v17];

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v20 = [WeakRetained snapshotUpdater];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001E77C;
    v24[3] = &unk_10007D6D8;
    objc_copyWeak(&v29, a1 + 6);
    v21 = v18;
    v25 = v21;
    v26 = v8;
    v28 = a1[5];
    v27 = v23;
    [v20 updateSnapshot:v21 completionHandler:v24];

    objc_destroyWeak(&v29);
  }

  else
  {
    v22 = sh_log_object();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v36 = [v7 count];
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[Local] Media Library returned %lu tracks", buf, 0xCu);
    }

    (*(a1[5] + 2))();
  }
}

void sub_10001E77C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 tracksForChangeType:1];
  if ([v4 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = [WeakRetained dataStore];
    v7 = [v4 copy];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001EA0C;
    v23[3] = &unk_10007D6B0;
    v8 = v4;
    v24 = v8;
    [v6 persistUpdatedTracks:v7 completionHandler:v23];

    v9 = [WeakRetained dataStore];
    v22 = 0;
    v10 = [v9 commitChangesWithError:&v22];
    v11 = v22;

    if ((v10 & 1) == 0)
    {
      v12 = sh_log_object();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v8 count];
        *buf = 134218242;
        v26 = v13;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to save %ld updated changes with error %@", buf, 0x16u);
      }
    }
  }

  [*(a1 + 32) mergeSnapshot:v3];
  v14 = [*(a1 + 32) tracksForChangeType:1];
  v15 = sh_log_object();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 count];
    v17 = [*(a1 + 40) localizedDescription];
    v18 = v17;
    v19 = @"None";
    if (v17)
    {
      v19 = v17;
    }

    *buf = 134218242;
    v26 = v16;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Local] Media Library returned %lu tracks after updating. Local Library Fetch Error: %@", buf, 0x16u);
  }

  v20 = *(a1 + 48);
  v21 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
}

void sub_10001EA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) count];
    v8 = 134218496;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processed %lu returned track changes after update. Inserted %ld & Updated %ld local entries", &v8, 0x20u);
  }
}

void sub_10001F238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) count];
    v8 = 134218496;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processed %lu changes before sync. Inserted %ld & Updated %ld local group entries", &v8, 0x20u);
  }
}

void sub_10001F308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) count];
    v8 = 134218496;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processed %lu changes before sync. Inserted %ld & Updated %ld local track entries", &v8, 0x20u);
  }
}

void sub_10001F3D8(uint64_t a1, uint64_t a2)
{
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v6 = 134218240;
    v7 = v5;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Processed %lu deletions before sync. Deleted %ld local entries", &v6, 0x16u);
  }
}

void sub_10001F5AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10001F5D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 48));
  if ([v5 status] || !objc_msgSend(v5, "isEncrypted"))
  {
    v8 = sh_log_object();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "iCloud account is not available or device to device encryption is not supported, skipping remote sync", v17, 2u);
    }

    if ([v5 status] || (objc_msgSend(v5, "isEncrypted") & 1) != 0)
    {
      v9 = 0;
      v7 = 0;
    }

    else
    {
      v19 = SHErrorDeviceToDeviceEncryptionKey;
      v20 = &__kCFBooleanFalse;
      v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v9 = 2;
    }

    v10 = objc_loadWeakRetained(&to);
    v11 = [SHLError errorWithCode:v9];
    v12 = [v10 mapInternalLibraryErrorToMediaLibrary:v11 keyOverrides:v7];

    if (*(a1 + 56))
    {
      v13 = &__NSArray0__struct;
    }

    else
    {
      v13 = [*(a1 + 32) allItemIdentifiers];
    }

    v14 = objc_loadWeakRetained(&to);
    [v14 beginLibrarySyncWithStartCondition:*(a1 + 40)];

    v15 = objc_loadWeakRetained(&to);
    [v15 handleLibraryError:v12 failedItemIdentifiers:v13];

    v16 = objc_loadWeakRetained(&to);
    [v16 persistChangesAndCompleteSyncWithPendingBatchChanges:0 completionHandler:0];
  }

  else
  {
    v7 = objc_loadWeakRetained(&to);
    [v7 _synchronizeRemoteSnapshot:*(a1 + 32) startCondition:*(a1 + 40)];
  }

  objc_destroyWeak(&to);
}

void sub_10002052C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) count];
    v8 = 134218496;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processed %lu returned track changes. Inserted %ld & Updated %ld local entries", &v8, 0x20u);
  }
}

void sub_1000207F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) count];
    v8 = 134218496;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processed %lu returned group changes. Inserted %ld & Updated %ld local entries", &v8, 0x20u);
  }
}

void sub_100020978(uint64_t a1, uint64_t a2)
{
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v6 = 134218240;
    v7 = v5;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Processed %lu returned deletions. Deleted %ld local entries", &v6, 0x16u);
  }
}

void sub_100020B88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100020BAC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) mergeSnapshot:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) tracksForChangeType:1];
  if ([v4 count])
  {
    v5 = [WeakRetained dataStore];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100020CA0;
    v6[3] = &unk_10007D6B0;
    v7 = v4;
    [v5 persistUpdatedTracks:v7 completionHandler:v6];
  }

  [WeakRetained persistChangesAndCompleteSyncWithPendingBatchChanges:*(a1 + 56) completionHandler:*(a1 + 40)];
}

void sub_100020CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) count];
    v8 = 134218496;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processed %lu returned track changes after update. Inserted %ld & Updated %ld local entries", &v8, 0x20u);
  }
}

void sub_100021B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100021BB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 libraryItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained snapshotUpdater];
    v8 = [v7 condition];
    v9 = (v8)[2](v8, v3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_100022840(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [SHLError errorWithCode:2];
  v8 = [SHLTaskPreconditionResult resultWithError:v7];
  if (v5)
  {
    if ([v5 supportsDeviceToDeviceEncryption])
    {
      v9 = sub_1000317DC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Account supports device to device encryption", &v13, 2u);
      }

      v10 = +[SHLTaskPreconditionResult fulfilledResult];
      goto LABEL_10;
    }
  }

  else
  {
    v11 = sub_1000317DC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch account info %@", &v13, 0xCu);
    }

    if (v6)
    {
      v12 = [SHLError errorWithCode:2 underlyingError:v6];

      v10 = [SHLTaskPreconditionResult resultWithError:v12];
      v7 = v12;
LABEL_10:

      v8 = v10;
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100023074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023090(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (v8)
  {
    v11 = [WeakRetained delegate];
    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 request];
    v15 = [v12 responseSignatureForRequest:v14];
    v16 = [SHMatcherResponse errorResponseForSignature:v15 error:v8];
    [v11 matcher:v12 didProduceResponse:v16];

    [v10 _stop];
  }

  else
  {
    v17 = [WeakRetained sessionDriver];
    [v17 flow:v18 time:v7];
  }
}

void sub_100023ED4(id a1)
{
  qword_100098290 = [[SHLOperationQueue alloc] initOperationQueue];

  _objc_release_x1();
}

void sub_10002480C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100024824(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 userInfo];
  v8 = [v4 objectForKeyedSubscript:CKErrorRetryAfterKey];

  v5 = v8;
  if (v8)
  {
    if (*(*(*(a1 + 32) + 8) + 24) == 0.0 || ([v8 doubleValue], v5 = v8, v6 < *(*(*(a1 + 32) + 8) + 24)))
    {
      [v8 doubleValue];
      v5 = v8;
      *(*(*(a1 + 32) + 8) + 24) = v7;
    }
  }
}

void sub_100024A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100024AA0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 40) canRetryForError:?];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

SHAudioTapMatcher *sub_100025BEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 signatureGenerator];
  [*(a1 + 32) maximumQuerySignatureDuration];
  v26 = 0;
  v5 = [v4 updateRingBufferDuration:&v26 error:?];
  v6 = v26;

  if ((v5 & 1) == 0)
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to update ring for recording buffer duration %@", buf, 0xCu);
    }
  }

  v8 = [SHSignatureBuffer alloc];
  [*(a1 + 32) minimumQuerySignatureDuration];
  v10 = v9;
  [*(a1 + 32) maximumQuerySignatureDuration];
  v12 = v11;
  v13 = [*(a1 + 32) _configuration];
  [v13 streamingBufferDuration];
  v15 = v14;
  v16 = [*(a1 + 32) _configuration];
  v17 = [v16 musicalFeaturesConfiguration];
  v18 = [v8 initWithMinimumSignatureDuration:v17 maximumSignatureDuration:v10 bufferDuration:v12 musicalFeaturesConfiguration:v15];

  v19 = [SHAudioTapMatcher alloc];
  v20 = [v3 tap];

  v21 = [[SHStreamingSessionDriver alloc] initWithSignatureBuffer:v18];
  v22 = [*(a1 + 40) audioTapProvider];
  v23 = [v22 audioRecordingManager];
  v24 = [(SHAudioTapMatcher *)v19 initWithAudioTap:v20 sessionDriver:v21 audioRecordingManager:v23 catalog:*(a1 + 32)];

  return v24;
}

SHSignatureGeneratorMatcher *sub_100025E20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 signatureGenerator];
  [*(a1 + 32) maximumQuerySignatureDuration];
  v26 = 0;
  v5 = [v4 updateRingBufferDuration:&v26 error:?];
  v6 = v26;

  if ((v5 & 1) == 0)
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to update ring buffer for signature generation duration %@", buf, 0xCu);
    }
  }

  v8 = [SHSignatureBuffer alloc];
  [*(a1 + 32) minimumQuerySignatureDuration];
  v10 = v9;
  [*(a1 + 32) maximumQuerySignatureDuration];
  v12 = v11;
  v13 = [*(a1 + 32) _configuration];
  [v13 streamingBufferDuration];
  v15 = v14;
  v16 = [*(a1 + 32) _configuration];
  v17 = [v16 musicalFeaturesConfiguration];
  v18 = [v8 initWithMinimumSignatureDuration:v17 maximumSignatureDuration:v10 bufferDuration:v12 musicalFeaturesConfiguration:v15];

  v19 = [SHSignatureGeneratorMatcher alloc];
  v20 = [v3 tap];

  v21 = [[SHStreamingSessionDriver alloc] initWithSignatureBuffer:v18];
  v22 = [*(a1 + 40) audioTapProvider];
  v23 = [v22 audioRecordingManager];
  v24 = [(SHSignatureGeneratorMatcher *)v19 initWithAudioTap:v20 sessionDriver:v21 audioRecordingManager:v23];

  return v24;
}

void sub_100026918(void *a1, uint64_t a2, AudioQueueBuffer *a3, uint64_t a4)
{
  v6 = a1;
  v12 = [[AVAudioFormat alloc] initWithStreamDescription:v6 + 9];
  v7 = [SHAudioUtilities audioBufferFromData:a3->mAudioData byteSize:a3->mAudioDataByteSize inFormat:v12];
  v8 = [AVAudioTime alloc];
  [v12 sampleRate];
  v9 = [v8 initWithAudioTimeStamp:a4 sampleRate:?];
  v10 = [v6 delegate];
  [v10 recorder:v6 producedAudioBuffer:v7 atTime:v9];

  v11 = v6[7];
  AudioQueueEnqueueBuffer(v11, a3, 0, 0);
}

void sub_100026A1C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412546;
    v6 = v3;
    v7 = 1024;
    v8 = [SHAudioRecorder isAudioQueueRunning:a2];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Audio queue for audio recorder %@ has changed running state %i", &v5, 0x12u);
  }
}

void sub_100026EE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = AudioQueueStart(WeakRetained[7], 0);
  v9 = 0;
  v4 = [objc_opt_class() hasAudioQueueFailedWithStatus:v3 annotateError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to start audio queue after a retry", v8, 2u);
    }

    [(AudioQueueRef *)WeakRetained stopRecordingWithError:0];
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_100028E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100028E8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v12 = [WeakRetained session];
      [v12 matchStreamingBuffer:v7 atTime:v8];
    }

    else
    {
      v13 = sh_log_object();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No buffer received in tap completion - error %@", &v16, 0xCu);
      }

      v14 = [v11 errorResponseSignature];
      v12 = [SHMatcherResponse errorResponseForSignature:v14 error:v9];

      v15 = [v11 delegate];
      [v15 matcher:v11 didProduceResponse:v12];

      [v11 _stop];
    }
  }
}

void sub_10002A2A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v65 = a1;
  if ([v3 count])
  {
    v4 = [*(a1 + 32) fetchTaskTransformer];
    v5 = [v4 cloudBackedZoneChangesOperationFromFetchTask:*(a1 + 40) forChangedZones:v3 container:*(a1 + 48)];

    v6 = +[SHLOperationQueue defaultQueue];
    v63 = v5;
    v7 = [v5 operation];
    [v6 addOperation:v7];

    a1 = v65;
    v66 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v64 = v3;
    obj = v3;
    v8 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v72;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v72 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v71 + 1) + 8 * i);
          v13 = [*(a1 + 32) cache];
          v14 = [v12 zone];
          v15 = [v14 zoneID];
          v16 = [v15 zoneName];
          v17 = [v13 subscriptionExistsForZoneIdentifier:v16];

          if ((v17 & 1) == 0)
          {
            v18 = sub_1000317DC();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v19 = *(a1 + 40);
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              v22 = [*(a1 + 40) identifier];
              v23 = [v12 zone];
              v24 = [v23 zoneID];
              v25 = [v24 zoneName];
              *buf = 138543874;
              v78 = v21;
              v79 = 2112;
              v80 = v22;
              v81 = 2114;
              v82 = v25;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "<task: %{public}@ %@> Local subscription for <zone: %{public}@> does not exist, creating one now", buf, 0x20u);

              a1 = v65;
            }

            [v66 addObject:v12];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
      }

      while (v9);
    }

    if ([v66 count])
    {
      v26 = [*(a1 + 32) subscriptionTaskTransformer];
      v27 = [v26 cloudBackedOperationForZones:v66 container:*(a1 + 48)];

      v28 = +[SHLOperationQueue defaultQueue];
      v29 = [v27 operation];
      [v28 addOperation:v29];

      a1 = v65;
    }

    v3 = v64;
  }

  v30 = +[SHLCloudContext sharedContext];
  v31 = [v30 shazamLibraryZone];

  if (([*(a1 + 32) cloudBackedZones:v3 containsZone:v31] & 1) == 0)
  {
    v32 = [*(a1 + 32) cache];
    v33 = [v31 zoneID];
    v34 = [v33 zoneName];
    v35 = [v32 zoneExistsForIdentifier:v34];

    if ((v35 & 1) == 0)
    {
      v36 = [[SHLCloudBackedZone alloc] initWithZone:v31];
      v37 = [*(v65 + 32) cache];
      v38 = [(SHLCloudBackedZone *)v36 zone];
      v39 = [v38 zoneID];
      v40 = [v39 zoneName];
      v70 = 0;
      v41 = [v37 storeZoneIdentifier:v40 error:&v70];
      v42 = v70;

      if ((v41 & 1) == 0)
      {
        v43 = sub_1000317DC();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v78 = v42;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to cache zone identifier for shazamLibraryZone in fetch task with error %{public}@", buf, 0xCu);
        }
      }

      obja = v42;
      v44 = [*(v65 + 32) zoneTransformer];
      v76 = v36;
      v45 = [NSArray arrayWithObjects:&v76 count:1];
      v46 = [v44 cloudBackedOperationForZonesToSave:v45 container:*(v65 + 48)];

      v47 = +[SHLOperationQueue defaultQueue];
      v48 = [v46 operation];
      [v47 addOperation:v48];

      v49 = sub_1000317DC();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v50 = *(v65 + 40);
        v51 = objc_opt_class();
        NSStringFromClass(v51);
        v52 = v67 = v46;
        v53 = [*(v65 + 40) identifier];
        v54 = [(SHLCloudBackedZone *)v36 zone];
        [v54 zoneID];
        v56 = v55 = v3;
        v57 = [v56 zoneName];
        *buf = 138543874;
        v78 = v52;
        v79 = 2112;
        v80 = v53;
        v81 = 2114;
        v82 = v57;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "<task: %{public}@ %@> <zone: %{public}@> does not exist, so we are attempting to create one with a subscription", buf, 0x20u);

        v3 = v55;
        v46 = v67;
      }

      v58 = [*(v65 + 32) subscriptionTaskTransformer];
      v75 = v36;
      v59 = [NSArray arrayWithObjects:&v75 count:1];
      v60 = [v58 cloudBackedOperationForZones:v59 container:*(v65 + 48)];

      v61 = +[SHLOperationQueue defaultQueue];
      v62 = [v60 operation];
      [v61 addOperation:v62];
    }
  }
}

void sub_10002B6AC(id a1)
{
  qword_1000982A0 = dispatch_queue_create("com.apple.shazamd.location.dispatch", 0);

  _objc_release_x1();
}

void sub_10002B730(id a1)
{
  qword_1000982B0 = +[NSMapTable weakToWeakObjectsMapTable];

  _objc_release_x1();
}

void sub_10002B8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002B918(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002B930(uint64_t a1)
{
  v5 = +[SHLocationProvider activeLocationProviders];
  v2 = [v5 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10002BA9C(uint64_t a1)
{
  v2 = [CLLocationManager alloc];
  v3 = *(a1 + 32);
  v4 = +[SHLocationProvider locationQueue];
  v5 = [v2 initWithEffectiveBundleIdentifier:@"com.apple.musicrecognition" delegate:v3 onQueue:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1 + 32) + 40) setDesiredAccuracy:-1.0];
  v8 = +[SHLocationProvider activeLocationProviders];
  [v8 setObject:*(a1 + 32) forKey:*(a1 + 40)];
}

void sub_10002C404(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_10002C428(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (![v5 status] && objc_msgSend(v5, "isEncrypted"))
    {
      [WeakRetained startListeningForPushNotifications];
    }

    v4 = WeakRetained[2];
    WeakRetained[2] = 0;
  }
}

void sub_10002C54C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10002C568(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained connectionQueue];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10002C634;
      v7[3] = &unk_10007D1C0;
      v7[4] = v5;
      v8 = v3;
      dispatch_async(v6, v7);
    }
  }
}

void sub_10002C634(uint64_t a1)
{
  v2 = [APSConnection alloc];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) connectionQueue];
  v5 = [v2 initWithEnvironmentName:v3 namedDelegatePort:@"com.apple.aps.shazamd" queue:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  [*(*(a1 + 32) + 32) setDelegate:?];
  v8 = [@"com.apple.icloud-container." stringByAppendingString:SHShazamKitServiceName];
  v13 = v8;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  [*(*(a1 + 32) + 32) _setEnabledTopics:v9];

  v10 = sh_log_object();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "APS Push listening for topic: '%@'", &v11, 0xCu);
  }
}

void sub_10002C948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error getting server preferred push environment %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002D070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002D094(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained libraryInfoFetcher];
  [v1 fetchLibraryInfoWithCompletionHandler:&stru_10007DAC0];
}

void sub_10002DA64(uint64_t a1)
{
  v3 = [*(a1 + 32) progress];
  v2 = [*(a1 + 32) progress];
  [v3 setCompletedUnitCount:{objc_msgSend(v2, "completedUnitCount") + 1}];
}

void sub_10002DAD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v81 = a1;
  v11 = [*(a1 + 40) identifier];
  [v10 removeTaskOfType:0 forIdentifier:v11 error:0];

  if (v9 && ![SHLError canRetryForError:v9])
  {
    v61 = sub_1000317DC();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v99 = v9;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Failed to complete modify operation. Error %@", buf, 0xCu);
    }

    v62 = *(a1 + 32);
    v63 = [*(a1 + 40) identifier];
    v64 = [v62 taskOfType:1 identifier:v63];

    if (v64)
    {
      v65 = *(a1 + 32);
      v66 = [*(a1 + 40) identifier];
      [v65 removeTaskOfType:1 forIdentifier:v66 error:0];
    }

    obj = [SHLError errorWithUnderlyingError:v9];
    v28 = [[SHLTaskOutcome alloc] initWithError:obj];
    v67 = [*(a1 + 40) delegate];
    v68 = [*(a1 + 40) session];
    v79 = v67;
    [v67 session:v68 task:*(a1 + 40) didProduceOutcome:v28];
  }

  else
  {
    v76 = v7;
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    v13 = v12;
    v75 = v8;
    if (v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = &__NSArray0__struct;
    }

    v77 = v14;
    v79 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    v78 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = v13;
    v15 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v92;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v92 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v91 + 1) + 8 * i);
          v20 = [[SHLCloudBackedItem alloc] initWithRecord:v19];
          v21 = [v19 recordType];
          v22 = [v21 isEqualToString:@"Group"];

          if (v22)
          {
            v23 = [SHLCloudGroupTransformer libraryGroupFromCloudBackedItem:v20];
            if (v23)
            {
              v24 = v79;
LABEL_20:
              [v24 addObject:v23];
            }
          }

          else
          {
            v25 = [v19 recordType];
            v26 = [v25 isEqualToString:@"Track"];

            if (!v26)
            {
              goto LABEL_22;
            }

            v23 = +[SHLCloudTrackTransformer libraryTrackFromCloudBackedItem:usingEncryption:](SHLCloudTrackTransformer, "libraryTrackFromCloudBackedItem:usingEncryption:", v20, [*(v81 + 48) isEncrypted]);
            if (v23)
            {
              v24 = v78;
              goto LABEL_20;
            }
          }

LABEL_22:
        }

        v16 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
      }

      while (v16);
    }

    v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v77 count]);
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v28 = v77;
    v29 = [(SHLTaskOutcome *)v28 countByEnumeratingWithState:&v87 objects:v96 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v88;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v88 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v87 + 1) + 8 * j) recordName];
          [v27 addObject:v33];
        }

        v30 = [(SHLTaskOutcome *)v28 countByEnumeratingWithState:&v87 objects:v96 count:16];
      }

      while (v30);
    }

    if ([v79 count])
    {
      v34 = [*(v81 + 40) delegate];
      v35 = [*(v81 + 40) session];
      v36 = *(v81 + 40);
      v37 = [v79 copy];
      [v34 session:v35 task:v36 didModifyGroups:v37];
    }

    if ([v78 count])
    {
      v38 = [*(v81 + 40) delegate];
      v39 = [*(v81 + 40) session];
      v40 = *(v81 + 40);
      v41 = [v78 copy];
      [v38 session:v39 task:v40 didModifyTracks:v41];
    }

    if ([v27 count])
    {
      v42 = [*(v81 + 40) delegate];
      v43 = [*(v81 + 40) session];
      v44 = *(v81 + 40);
      v45 = [v27 copy];
      [v42 session:v43 task:v44 didDeleteItemsWithIdentifiers:v45];
    }

    if (v9)
    {
      v74 = [[SHLModifyTaskRecovery alloc] initWithOriginalTask:*(v81 + 40) savedGroups:v79 savedTracks:v78 deletedIDs:v27 error:v9];
      v46 = [(SHLModifyTaskRecovery *)v74 recoverableTasks];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v47 = [v46 countByEnumeratingWithState:&v83 objects:v95 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v84;
        do
        {
          for (k = 0; k != v48; k = k + 1)
          {
            if (*v84 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v83 + 1) + 8 * k);
            v52 = *(v81 + 32);
            v82 = 0;
            v53 = [v52 storeTask:v51 ofType:1 error:&v82];
            v54 = v82;
            if ((v53 & 1) == 0)
            {
              v55 = sub_1000317DC();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v99 = v54;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to store the retry modification task with error %{public}@", buf, 0xCu);
              }
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v83 objects:v95 count:16];
        }

        while (v48);
      }

      v56 = [SHLError errorWithUnderlyingError:v9];
      v57 = [[SHLTaskOutcome alloc] initWithTasksToRetry:v46 error:v56];
      v58 = [*(v81 + 40) delegate];
      v59 = [*(v81 + 40) session];
      [v58 session:v59 task:*(v81 + 40) didProduceOutcome:v57];

      v8 = v75;
      v7 = v76;
      v60 = v74;
    }

    else
    {
      v69 = *(v81 + 32);
      v70 = [*(v81 + 40) identifier];
      v71 = [v69 taskOfType:1 identifier:v70];

      if (v71)
      {
        v72 = *(v81 + 32);
        v73 = [*(v81 + 40) identifier];
        [v72 removeTaskOfType:1 forIdentifier:v73 error:0];
      }

      v60 = objc_alloc_init(SHLTaskOutcome);
      v46 = [*(v81 + 40) delegate];
      v56 = [*(v81 + 40) session];
      [v46 session:v56 task:*(v81 + 40) didProduceOutcome:v60];
      v7 = v76;
    }

    v68 = v78;
  }
}

void sub_10002F06C(id a1)
{
  qword_1000982C0 = objc_alloc_init(SHLCloudContext);

  _objc_release_x1();
}

void sub_1000306D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = [SHError errorWithCode:400 underlyingError:a3];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000309B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v7 = a3;
  if (a4)
  {
    a4 = [SHError errorWithCode:400 underlyingError:a4];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000311C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v5 = [a4 userInfo];
    v6 = [v5 objectForKey:CKPartialErrorsByItemIDKey];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000312A0;
    v7[3] = &unk_10007DBB0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

uint64_t sub_1000312A0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  if ([a3 code] != 15)
  {
    v5 = [*(a1 + 32) objectForKey:v10];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 40);
      v8 = [v5 zoneName];
      [v7 removeSubscriptionForZoneIdentifier:v8 error:0];
    }
  }

  return _objc_release_x2();
}

id sub_1000317DC()
{
  if ((atomic_load_explicit(&qword_1000982D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000982D8))
  {
    qword_1000982D0 = os_log_create("com.apple.shazam.ShazamLibrary", [@"Library" cStringUsingEncoding:4]);
    __cxa_guard_release(&qword_1000982D8);
  }

  v0 = qword_1000982D0;

  return v0;
}

void sub_100031984(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isSatisfied])
  {
    v3 = [*(a1 + 32) mutableCopy];
    [v3 removeObjectAtIndex:0];
    [*(a1 + 48) evaluatePreconditions:v3 withCompletion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100031AE8(id a1)
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v3 URLForResource:@"ShazamLibrary" withExtension:@"momd"];
  v2 = qword_1000982E0;
  qword_1000982E0 = v1;
}

void sub_100032110(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[SHLTaskPreconditionResult failedResult];
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v10 = sub_1000317DC();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "iCloud account is restricted", &v16, 2u);
        }

        v11 = 1;
        break;
      case 3:
        v12 = sub_1000317DC();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "No iCloud account available", &v16, 2u);
        }

        v11 = 0;
        break;
      case 4:
        v7 = sub_1000317DC();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16) = 0;
          v8 = "iCloud account is temporarily unavailable";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, &v16, 2u);
          goto LABEL_12;
        }

        goto LABEL_12;
      default:
        goto LABEL_26;
    }

    v13 = [SHLError errorWithCode:v11];
    v14 = [SHLTaskPreconditionResult resultWithError:v13];

    v6 = v13;
LABEL_25:

    v6 = v14;
    goto LABEL_26;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v7 = sub_1000317DC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        v8 = "iCloud account is available";
        goto LABEL_11;
      }

LABEL_12:

      v9 = +[SHLTaskPreconditionResult fulfilledResult];
LABEL_24:
      v14 = v9;
      goto LABEL_25;
    }
  }

  else
  {
    v15 = sub_1000317DC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to retrieve iCloud account information with error %@", &v16, 0xCu);
    }

    if (v5)
    {
      v9 = [SHLTaskPreconditionResult resultWithError:v5];
      goto LABEL_24;
    }
  }

LABEL_26:
  (*(*(a1 + 32) + 16))();
}

BOOL sub_1000324E0(id a1, SHMediaLibraryChange *a2)
{
  v2 = a2;
  if ([(SHMediaLibraryChange *)v2 changeType]== 1)
  {
    v3 = [(SHMediaLibraryChange *)v2 libraryItem];
    v4 = [v3 lastUpdatedDate];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10003266C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [SHMediaLibrarySnapshot alloc];
  v8 = [NSOrderedSet orderedSetWithArray:v6];

  v9 = [v7 initWithChanges:v8];
  (*(*(a1 + 32) + 16))();
}

void sub_100032A20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v34 = a3;
  v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [v12 shazamID];

        if (v13)
        {
          v14 = [v12 shazamID];
          [v6 setObject:v12 forKey:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v9);
  }

  v32 = v7;

  v35 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33 = a1;
  v15 = *(a1 + 32);
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v36 + 1) + 8 * j) copy];
        v21 = [v20 libraryItem];
        v22 = [v21 shazamKey];

        if (v22)
        {
          v23 = [v20 libraryItem];
          v24 = [v23 shazamKey];
          v25 = [v24 validatedKey];
          v26 = [v6 objectForKey:v25];

          if (v26)
          {
            v27 = [v20 libraryItem];
            [v27 updateWithMediaItem:v26];

            v28 = +[NSDate date];
            v29 = [v20 libraryItem];
            [v29 setLastUpdatedDate:v28];

            [v35 addObject:v20];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v17);
  }

  v30 = *(v33 + 40);
  v31 = [v35 copy];
  (*(v30 + 16))(v30, v31, v34);
}

void sub_10003608C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ((a2 & 1) == 0)
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to start recorder %@ with error: %@", &v10, 0x16u);
    }

    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  v9 = [WeakRetained startRecognitionGroup];
  dispatch_group_leave(v9);
}

void sub_100039758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100039794(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) tasksToRetry];
  [WeakRetained retryFailedTasks:v2];
}

void sub_100039994(uint64_t a1, int a2)
{
  v4 = sub_1000317DC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [*(a1 + 32) identifier];
    *buf = 67109634;
    *v29 = a2;
    *&v29[4] = 2114;
    *&v29[6] = v7;
    *&v29[14] = 2112;
    *&v29[16] = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Client called Library completion with success = %d for <task: %{public}@ %@>", buf, 0x1Cu);
  }

  if (a2)
  {
    if (*(a1 + 48) == 1)
    {
      v9 = [*(a1 + 40) store];
      v10 = [v9 currentCache];
      [v10 initialFetchCompleted];
    }

    v11 = [*(a1 + 40) syncSession];
    v27 = 0;
    v12 = &v27;
    [v11 commitTransactionWithError:&v27];
  }

  else
  {
    v11 = [*(a1 + 40) syncSession];
    v26 = 0;
    v12 = &v26;
    [v11 undoTransactionWithError:&v26];
  }

  v13 = *v12;

  v14 = sub_1000317DC();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [*(a1 + 32) identifier];
      *buf = 138543874;
      *v29 = v18;
      *&v29[8] = 2112;
      *&v29[10] = v19;
      *&v29[18] = 2112;
      *&v29[20] = v13;
      v20 = "Error finishing transaction for <task: %{public}@ %@> %@";
      v21 = v15;
      v22 = OS_LOG_TYPE_ERROR;
      v23 = 32;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, v23);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 32);
    v25 = objc_opt_class();
    v18 = NSStringFromClass(v25);
    v19 = [*(a1 + 32) identifier];
    *buf = 138543618;
    *v29 = v18;
    *&v29[8] = 2112;
    *&v29[10] = v19;
    v20 = "Finished handling transaction for <task: %{public}@ %@>";
    v21 = v15;
    v22 = OS_LOG_TYPE_DEBUG;
    v23 = 22;
    goto LABEL_13;
  }
}

void sub_10003AD24(id a1)
{
  v1 = [SHLShazamLibrary alloc];
  v5 = +[NSBundle mainBundle];
  v2 = [v5 bundleIdentifier];
  v3 = [(SHLShazamLibrary *)v1 initWithScope:0 callingProcessIdentifier:v2];
  v4 = qword_1000982F0;
  qword_1000982F0 = v3;
}

void sub_10003C438(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10003C45C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003C578;
  v10[3] = &unk_10007DE10;
  objc_copyWeak(&v14, (a1 + 40));
  v8 = v5;
  v11 = v8;
  v13 = *(a1 + 32);
  v9 = v6;
  v12 = v9;
  [WeakRetained fetchAccountTokensWithAccountInfo:v8 completion:v10];

  objc_destroyWeak(&v14);
}

void sub_10003C578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [[SHMediaLibraryInfo alloc] initWithStatus:+[SHMediaLibraryInfoFetcher libraryStatusForAccountStatus:](SHMediaLibraryInfoFetcher encrypted:{"libraryStatusForAccountStatus:", objc_msgSend(*(a1 + 32), "accountStatus")), objc_msgSend(*(a1 + 32), "supportsDeviceToDeviceEncryption")}];
  v3 = [WeakRetained currentUserID];
  [v2 setIdentityToken:v3];

  v4 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void sub_10003C798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003C7BC(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:CKErrorDomain])
    {
      v8 = [v6 code];

      if (v8 == 9)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained setCurrentUserID:0];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  WeakRetained = [v11 recordName];
  v10 = objc_loadWeakRetained((a1 + 40));
  [v10 setCurrentUserID:WeakRetained];

LABEL_7:
  (*(*(a1 + 32) + 16))();
}

void sub_10003D77C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10003D7A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEncrypted];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isShazamAppInstalled] && v4)
  {
    [WeakRetained openShazamAppLibrary:*(a1 + 32)];
  }

  else
  {
    v6 = +[SHRemoteConfiguration sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003D8A4;
    v7[3] = &unk_10007DE98;
    v7[4] = WeakRetained;
    v8 = *(a1 + 32);
    [v6 featureFlagsWithCompletion:v7];
  }
}

id sub_10003D8A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 shouldDisplayShazamUpsell];
  v5 = *(a1 + 40);

  return [v3 openNativeHistoryWithShazamUpsell:v4 completionHandler:v5];
}

void sub_10003DAA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error opening Shazam App Library, error %@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_10003DEB4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = objc_alloc_init(SHEventSignalScheduler);
    [(SHEventSignalScheduler *)v6 sendEventSignal:@"com.apple.musicrecognition.history-activated"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to open MusicRecognition from NSUserActivity with error: %@", &v8, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10003E738(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 zoneName];
  LOBYTE(v4) = [v4 zoneExistsForIdentifier:v5];

  if ((v4 & 1) == 0)
  {
    v6 = sub_1000317DC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v3 zoneName];
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "<zone: %@> does not exist locally, saving now", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = [v3 zoneName];
    v16 = 0;
    v10 = [v8 storeZoneIdentifier:v9 error:&v16];
    v11 = v16;

    if ((v10 & 1) == 0)
    {
      v12 = sub_1000317DC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v3 zoneName];
        *buf = 138412546;
        v18 = v13;
        v19 = 2114;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed store store zone identifier for %@, with error %{public}@", buf, 0x16u);
      }
    }
  }

  v14 = [[CKRecordZone alloc] initWithZoneID:v3];
  v15 = [[SHLCloudBackedZone alloc] initWithZone:v14];
  [*(a1 + 40) addObject:v15];
}

void sub_10003E92C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000317DC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 zoneName];
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<zone: %@> was deleted", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = [v3 zoneName];
  v16 = 0;
  v8 = [v6 removeZoneIdentifier:v7 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    v10 = sub_1000317DC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 zoneName];
      *buf = 138412546;
      v18 = v11;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to remove zone identifier for %@, with error %{public}@", buf, 0x16u);
    }
  }

  v12 = [SHLError errorWithCode:7];
  v13 = [[SHLTaskOutcome alloc] initWithError:v12];
  v14 = [*(a1 + 40) delegate];
  v15 = [*(a1 + 40) session];
  [v14 session:v15 task:*(a1 + 40) didProduceOutcome:v13];
}

void sub_10003EB30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000317DC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 zoneName];
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<zone: %@> was purged", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = [v3 zoneName];
  v16 = 0;
  v8 = [v6 removeZoneIdentifier:v7 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    v10 = sub_1000317DC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 zoneName];
      *buf = 138412546;
      v18 = v11;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to remove zone identifier for %@, with error %{public}@", buf, 0x16u);
    }
  }

  v12 = [SHLError errorWithCode:8];
  v13 = [[SHLTaskOutcome alloc] initWithError:v12];
  v14 = [*(a1 + 40) delegate];
  v15 = [*(a1 + 40) session];
  [v14 session:v15 task:*(a1 + 40) didProduceOutcome:v13];
}

void sub_10003ED34(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = sub_1000317DC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Updated database <token: %@>", &v24, 0xCu);
    }

    v9 = [[SHLCloudBackedToken alloc] initWithToken:v6];
    [*(a1 + 32) storeDatabaseToken:v9 error:0];
  }

  if ([*(a1 + 40) count])
  {
    v10 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 48) identifier];
    [v11 removeTaskOfType:0 forIdentifier:v12 error:0];

    v13 = [*(a1 + 48) progress];
    v14 = [*(a1 + 48) progress];
    [v13 setCompletedUnitCount:{objc_msgSend(v14, "completedUnitCount") + 1}];

    v15 = [*(a1 + 32) hasPendingBatchChangesForAnyZone];
    if (v7)
    {
      if ([v7 code] == 21)
      {
        [*(a1 + 32) removeDatabaseTokenWithError:0];
        v15 = 0;
      }

      v16 = [SHLError errorWithUnderlyingError:v7];
      if (v15)
      {
        v17 = [SHLTaskOutcome outcomeWithPendingZoneBatchChangesProducedError:v16];
      }

      else
      {
        v17 = [[SHLTaskOutcome alloc] initWithError:v16];
      }

      v19 = v17;
      v20 = [*(a1 + 48) delegate];
      v21 = [*(a1 + 48) session];
      [v20 session:v21 task:*(a1 + 48) didProduceOutcome:v19];

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      if (v15)
      {
        v18 = +[SHLTaskOutcome outcomeWithPendingZoneBatchChanges];
      }

      else
      {
        v18 = objc_alloc_init(SHLTaskOutcome);
      }

      v16 = v18;
      v22 = [*(a1 + 48) delegate];
      v23 = [*(a1 + 48) session];
      [v22 session:v23 task:*(a1 + 48) didProduceOutcome:v16];

      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_10003F5D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [[SHLCloudBackedItem alloc] initWithRecord:v6];
    v8 = [v6 recordType];
    v9 = [v8 isEqualToString:@"Group"];

    if (v9)
    {
      v10 = [SHLCloudGroupTransformer libraryGroupFromCloudBackedItem:v7];
      if (v10)
      {
        v11 = 32;
LABEL_11:
        [*(a1 + v11) addObject:v10];
      }
    }

    else
    {
      v14 = [v6 recordType];
      v15 = [v14 isEqualToString:@"Track"];

      if (!v15)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = +[SHLCloudTrackTransformer libraryTrackFromCloudBackedItem:usingEncryption:](SHLCloudTrackTransformer, "libraryTrackFromCloudBackedItem:usingEncryption:", v7, [*(a1 + 40) isEncrypted]);
      if (v10)
      {
        v11 = 48;
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v12 = sub_1000317DC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [v5 recordName];
    v16 = 138412290;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to fetch changes for record (%@)", &v16, 0xCu);
  }

LABEL_14:
}

void sub_10003F790(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordName];
  [v2 addObject:v3];
}

void sub_10003F7E8(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = a2;
    v9 = [[SHLCloudBackedToken alloc] initWithToken:v5];

    v7 = *(a1 + 32);
    v8 = [v6 zoneName];

    [v7 storeZoneToken:v9 forZoneIdentifier:v8 hasPendingBatchChanges:0 error:0];
  }
}

void sub_10003F89C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  if (v11)
  {
    v12 = sub_1000317DC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v10 zoneName];
      v20 = 138543874;
      v21 = v13;
      v22 = 2112;
      v23 = v11;
      v24 = 1024;
      v25 = a5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Updated <zone: %{public}@> token: %@ moreChangesComing: %d>", &v20, 0x1Cu);
    }

    *(*(*(a1 + 40) + 8) + 24) = a5;
    v14 = [[SHLCloudBackedToken alloc] initWithToken:v11];
    v15 = *(a1 + 32);
    v16 = [v10 zoneName];
    [v15 storeZoneToken:v14 forZoneIdentifier:v16 hasPendingBatchChanges:a5 error:0];

LABEL_9:
    goto LABEL_10;
  }

  if ([a6 code] == 21)
  {
    v17 = sub_1000317DC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v10 zoneName];
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "<zone: %{public}@> token has expired. Removing saved token", &v20, 0xCu);
    }

    v19 = *(a1 + 32);
    v14 = [v10 zoneName];
    [v19 removeTokenForZoneIdentifier:v14 error:0];
    goto LABEL_9;
  }

LABEL_10:
}

void sub_10003FA98(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  [v3 removeTaskOfType:0 forIdentifier:v4 error:0];

  v5 = [*(a1 + 40) progress];
  v6 = [*(a1 + 40) progress];
  [v5 setCompletedUnitCount:{objc_msgSend(v6, "completedUnitCount") + 1}];

  if ([*(a1 + 48) count])
  {
    v7 = [*(a1 + 40) delegate];
    v8 = [*(a1 + 40) session];
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) copy];
    [v7 session:v8 task:v9 didFetchGroups:v10];
  }

  if ([*(a1 + 56) count])
  {
    v11 = [*(a1 + 40) delegate];
    v12 = [*(a1 + 40) session];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 56) copy];
    [v11 session:v12 task:v13 didFetchTracks:v14];
  }

  if ([*(a1 + 64) count])
  {
    v15 = [*(a1 + 40) delegate];
    v16 = [*(a1 + 40) session];
    v17 = *(a1 + 40);
    v18 = [*(a1 + 64) copy];
    [v15 session:v16 task:v17 didFetchDeletedItemsWithIdentifiers:v18];
  }

  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v19 = +[SHLTaskOutcome outcomeWithPendingZoneBatchChanges];
  }

  else
  {
    v19 = objc_alloc_init(SHLTaskOutcome);
  }

  v20 = v19;
  if (v26)
  {
    v21 = [SHLError errorWithUnderlyingError:?];
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v22 = [SHLTaskOutcome outcomeWithPendingZoneBatchChangesProducedError:v21];
    }

    else
    {
      v22 = [[SHLTaskOutcome alloc] initWithError:v21];
    }

    v23 = v22;

    v20 = v23;
  }

  v24 = [*(a1 + 40) delegate];
  v25 = [*(a1 + 40) session];
  [v24 session:v25 task:*(a1 + 40) didProduceOutcome:v20];
}

void sub_1000402A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(SHStorefront);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000403B8;
    v8[3] = &unk_10007E000;
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = v6;
    v12 = *(a1 + 40);
    [v7 storefrontCountryCode:v8];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000403B8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) hapticsEndpointsForStorefront:a2 clientIdentifier:*(a1 + 40)];
  v4 = [v3 fetchHapticByAdamIDURL];
  if (v4)
  {

LABEL_4:
    v6 = *(*(a1 + 56) + 16);
    goto LABEL_5;
  }

  v5 = [v3 fetchHapticByISRCURL];

  if (v5)
  {
    goto LABEL_4;
  }

  v7 = sh_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 48);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Missing or invalid haptics endpoint %@", &v10, 0xCu);
  }

  v9 = *(a1 + 48);
  v6 = *(*(a1 + 56) + 16);
LABEL_5:
  v6();
}

void sub_100041398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000413BC(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (([v3 isSatisfied] & 1) == 0)
  {
    v7 = sub_1000317DC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [a1[4] identifier];
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to schedule <task: %{public}@ %@> pre-conditions were not satisifed", buf, 0x16u);
    }

    v12 = [v3 error];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [SHLError errorWithCode:5];
    }

    v6 = v14;

    v15 = [SHLTaskOutcome alloc];
    v22 = a1[4];
    v16 = [NSArray arrayWithObjects:&v22 count:1];
    v17 = [(SHLTaskOutcome *)v15 initWithTasksToRetry:v16 error:v6];

    v18 = [a1[4] delegate];
    [v18 session:WeakRetained task:a1[4] didProduceOutcome:v17];

    goto LABEL_10;
  }

  if (WeakRetained)
  {
    v5 = [WeakRetained sessionDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100041610;
    block[3] = &unk_10007D1C0;
    v20 = a1[5];
    v21 = a1[4];
    dispatch_async(v5, block);

    v6 = v20;
LABEL_10:
  }
}

void sub_1000417C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000417E8(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (([v3 isSatisfied] & 1) == 0)
  {
    v7 = sub_1000317DC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [a1[4] identifier];
      *buf = 138543618;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to schedule <task: %{public}@ %@> pre-conditions were not satisifed", buf, 0x16u);
    }

    v12 = [v3 error];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [SHLError errorWithCode:5];
    }

    v6 = v14;

    v15 = [[SHLTaskOutcome alloc] initWithError:v6];
    v16 = [a1[4] delegate];
    [v16 session:WeakRetained task:a1[4] didProduceOutcome:v15];

    goto LABEL_10;
  }

  if (WeakRetained)
  {
    v5 = [WeakRetained sessionDispatchQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100041A08;
    v17[3] = &unk_10007D1C0;
    v18 = a1[5];
    v19 = a1[4];
    dispatch_async(v5, v17);

    v6 = v18;
LABEL_10:
  }
}

void sub_100043234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100043260(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained presentationOptionsForFeatureFlags:v3];
  [WeakRetained iteratePresentationOptions:v4 mediaItem:*(a1 + 32) presentationSettings:*(a1 + 40) featureFlags:v3 completionHandler:*(a1 + 48)];
}

void sub_100043A94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = WeakRetained;
  if (v8)
  {
    if ([WeakRetained didUserCancelAuthenticationWithError:?])
    {
      [v6 iteratePresentationOptions:&__NSArray0__struct mediaItem:*(a1 + 32) presentationSettings:0 featureFlags:0 completionHandler:*(a1 + 56)];
    }

    else
    {
      v7 = [v6 removePresentationOption:1 fromArray:*(a1 + 40)];
      [v6 iteratePresentationOptions:v7 mediaItem:*(a1 + 32) presentationSettings:0 featureFlags:*(a1 + 48) completionHandler:*(a1 + 56)];
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100043B78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v5)
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error presenting Native Track Page %@", &v9, 0xCu);
    }

    if ([WeakRetained didUserCancelAuthenticationWithError:v5])
    {
      [WeakRetained iteratePresentationOptions:&__NSArray0__struct mediaItem:*(a1 + 32) presentationSettings:0 featureFlags:0 completionHandler:*(a1 + 56)];
    }

    else
    {
      v8 = [WeakRetained removePresentationOption:2 fromArray:*(a1 + 40)];
      [WeakRetained iteratePresentationOptions:v8 mediaItem:*(a1 + 32) presentationSettings:0 featureFlags:*(a1 + 48) completionHandler:*(a1 + 56)];
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100043E80(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sh_log_object();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Opened url %@ in the Shazam app", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error opening URL %@ with error %@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100044400(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to open MusicRecognition from NSUserActivity with error: %@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void sub_1000446B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sh_log_object();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error presenting fallback URL %@ with error: %@", buf, 0x16u);
    }

    v8 = [NSString stringWithFormat:@"Failed to open url %@", *(a1 + 32)];
    v11 = a1 + 32;
    v9 = *(a1 + 32);
    v10 = *(v11 + 8);
    v15 = NSDebugDescriptionErrorKey;
    v16 = v8;
    v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = [SHError errorWithCode:500 underlyingError:0 keyOverrides:v12];
    (*(v10 + 16))(v10, 0, v9, v13);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Daemon opened fallback URL %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100044C6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    v6 = sub_1000317DC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to complete zone operation. Error %@", buf, 0xCu);
    }

    v7 = [v5 userInfo];
    v8 = [v7 objectForKey:CKPartialErrorsByItemIDKey];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100044DBC;
    v9[3] = &unk_10007E140;
    v10 = *(a1 + 32);
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void sub_100044DBC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoneName];
  [v2 removeZoneIdentifier:v3 error:0];
}

uint64_t sub_1000454D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000454F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    [*(a1 + 40) addObject:a2];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100045574(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) copy];
  (*(v2 + 16))(v2, v3, *(*(*(a1 + 48) + 8) + 40));
}

void sub_1000456D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000456EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = [WeakRetained networkRequester];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000457E0;
    v7[3] = &unk_10007E1E0;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v5 performFetchRequest:v3 mediaItem:v6 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000457E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [SHHapticsProviderUtilities hapticFromResponse:a2];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

void sub_100045960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10004597C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained networkRequester];
    [v4 performAvailabilityRequest:v5 completionHandler:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100045B8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100045BB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = [WeakRetained reqeustOfType:*(a1 + 56) fromEndpoint:v5 withMediaItem:*(a1 + 32)];

    if (v8)
    {
      v9 = *(*(a1 + 40) + 16);
    }

    else
    {
      v10 = sh_log_object();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Not requesting for haptics availability because endpoint is missing required URLs. Error: %@", &v11, 0xCu);
      }

      v9 = *(*(a1 + 40) + 16);
    }

    v9();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000462BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004637C;
  v6[3] = &unk_10007D1C0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_sync(v4, v6);
  dispatch_group_leave(*(a1 + 48));
  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_100046388(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

uint64_t sub_100047444(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004745C(uint64_t a1)
{
  v2 = [*(a1 + 32) retryBlock];
  v2[2]();

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

int64_t sub_100047A08(id a1, SHLLibraryBatch *a2, SHLLibraryBatch *a3)
{
  v4 = a3;
  v5 = [(SHLLibraryBatch *)a2 numberOfItems];
  v6 = [(SHLLibraryBatch *)v4 numberOfItems];

  return v5 < v6;
}

int64_t sub_100047A5C(id a1, SHLLibraryBatch *a2, SHLLibraryBatch *a3)
{
  v4 = a3;
  v5 = [(SHLLibraryBatch *)a2 numberOfItems];
  v6 = [(SHLLibraryBatch *)v4 numberOfItems];

  return v5 > v6;
}

void sub_10004902C(id a1)
{
  v1 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v2 = [v1 firstObject];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = NSTemporaryDirectory();
  }

  v8 = v4;

  v5 = [NSURL fileURLWithPath:v8];
  v6 = [v5 URLByAppendingPathComponent:@"com.apple.shazamd/MusicHaptics"];
  v7 = qword_100098300;
  qword_100098300 = v6;
}

void sub_100049128(id a1)
{
  qword_100098310 = [NSSet setWithObjects:SHHapticPatternAlgorithmDefault, SHHapticPatternAlgorithmVocals, SHHapticPatternAlgorithmPercussive, SHHapticPatternAlgorithmInstrumental, 0];

  _objc_release_x1();
}

void sub_1000495D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000495F4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setAssociatedMatcherController:0];
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 stopRecognition];
}

void sub_10004A02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004A050(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[SHRemoteConfiguration sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004A22C;
    v11[3] = &unk_10007E3C0;
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v15 = v8;
    v16[1] = v9;
    v12 = *(a1 + 32);
    objc_copyWeak(v16, (a1 + 56));
    v13 = v5;
    v14 = *(a1 + 40);
    [v7 endpointsWithCompletion:v11];

    objc_destroyWeak(v16);
  }

  else
  {
    v10 = sh_log_object();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Missing or invalid host %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10004A22C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    if (*(a1 + 72) == 2)
    {
      [v5 matchURLPathForClientIdentifier:v7];
    }

    else
    {
      [v5 lookupURLPathForClientIdentifier:v7];
    }
    v8 = ;
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v10 = [WeakRetained storefront];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10004A438;
      v12[3] = &unk_10007E398;
      v13 = *(a1 + 40);
      v14 = v8;
      v15 = v5;
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      [v10 storefrontCountryCode:v12];
    }

    else
    {
      v11 = sh_log_object();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Missing or invalid match endpoint %@", buf, 0xCu);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10004A438(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Fetching endpoint with storefront %@", &v9, 0xCu);
  }

  v5 = [SHTokenizedURL alloc];
  v6 = [*(a1 + 32) name];
  v7 = [v5 initWithHost:v6 URLPath:*(a1 + 40)];

  v8 = [*(a1 + 48) suggestedLanguage];
  [SHShazamKitServerURLBuilder updateTokensForEndpoint:v7 language:v8 storefront:v3 installationID:*(a1 + 56)];

  (*(*(a1 + 64) + 16))();
}

void sub_10004AF30(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v9 = v5;
  if (!v5 || a3)
  {
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    v7 = [*(a1 + 32) shazamID];
    v8 = [UNNotificationAttachment attachmentWithIdentifier:v7 URL:v9 options:0 error:0];
    (*(v6 + 16))(v6, v8);
  }
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}