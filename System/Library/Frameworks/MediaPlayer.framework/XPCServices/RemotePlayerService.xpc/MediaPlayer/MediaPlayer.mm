id sub_1000012BC()
{
  if (qword_10000CAD8 != -1)
  {
    dispatch_once(&qword_10000CAD8, &stru_1000083E8);
  }

  v1 = qword_10000CAD0;

  return v1;
}

void sub_100001310(id a1)
{
  qword_10000CAD0 = os_log_create("com.apple.amp.MediaPlayer", "MPRemotePlayerService");

  _objc_release_x1();
}

void sub_100001718(uint64_t a1, int a2)
{
  v4 = sub_1000012BC();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      v8 = *(v6 + 12);
      v13 = 134218496;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MPRemotePlayerService: %p: took process assertion %p for pid %d", &v13, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 56);
      v12 = *(v10 + 12);
      v13 = 134218496;
      v14 = v10;
      v15 = 2048;
      v16 = v11;
      v17 = 1024;
      v18 = v12;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MPRemotePlayerService: %p: clearing process assertion %p for pid %d [failed to acquire assertion]", &v13, 0x1Cu);
    }

    v9 = *(a1 + 32);
    v5 = *(v9 + 56);
    *(v9 + 56) = 0;
  }
}

id sub_10000186C(uint64_t a1)
{
  if (([*(a1 + 32) _shouldPreventSuspensionForBackgroundPlayback] & 1) == 0)
  {
    v2 = sub_1000012BC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 56);
      v5 = *(v3 + 12);
      v9 = 134218496;
      v10 = v3;
      v11 = 2048;
      v12 = v4;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MPRemotePlayerService: %p: invalidated process assertion %p for %d [!shouldPreventSuspensionForBackgroundPlayback]", &v9, 0x1Cu);
    }

    [*(*(a1 + 32) + 56) invalidate];
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = 0;
  }

  return [*(a1 + 32) _cancelAssertionInvalidationTimerWithReason:@"event handler"];
}

void sub_100001A28()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = off_10000CAC0;
  v9 = off_10000CAC0;
  if (!off_10000CAC0)
  {
    v1 = sub_100001CC4();
    v7[3] = dlsym(v1, "MPSharedBackgroundTaskProvider");
    off_10000CAC0 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = v0();

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"id<MSVBackgroundTaskProviding> _sharedBackgroundTaskProvider(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPRemotePlayerService.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100001B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001B90(uint64_t a1)
{
  *(*(a1 + 32) + 10) = *(a1 + 48);
  [*(a1 + 32) _updateProcessAssertion];
  v2 = sub_1000012BC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v6 = 134218240;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MPRemotePlayerService: %p: setWantsReverseProcessAssertion: %{BOOL}u", &v6, 0x12u);
  }

  v5 = sub_100001A28();
  [v5 endTask:*(a1 + 40)];
}

void *sub_100001C74(uint64_t a1)
{
  v2 = sub_100001CC4();
  result = dlsym(v2, "MPSharedBackgroundTaskProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000CAC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100001CC4()
{
  v4[0] = 0;
  if (!qword_10000CAC8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001E18;
    v4[4] = &unk_1000083A8;
    v4[5] = v4;
    v5 = off_100008390;
    v6 = 0;
    qword_10000CAC8 = _sl_dlopen();
  }

  v0 = qword_10000CAC8;
  if (!qword_10000CAC8)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MPRemotePlayerService.m" lineNumber:34 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100001E18(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000CAC8 = result;
  return result;
}

void sub_100001F58(void *a1)
{
  v2 = [*(a1[4] + 24) serverEndpoint];
  (*(a1[5] + 16))();
  v3 = sub_1000012BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v6 = 134218242;
    v7 = v4;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MPRemotePlayerService: %p: Got server endpoint: %@", &v6, 0x16u);
  }

  v5 = sub_100001A28();
  [v5 endTask:a1[6]];
}

void sub_100002360(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000024D4;
  v2[3] = &unk_100008258;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_100002404(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:BKSApplicationStateKey];
  v4 = [v3 integerValue];

  if (v4 == 2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000024CC;
    block[3] = &unk_100008280;
    v6 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_1000024D4(uint64_t a1)
{
  *(*(a1 + 32) + 9) = 1;
  [*(a1 + 40) reportUserBackgroundedApplication];
  v2 = *(a1 + 32);

  return [v2 _updateProcessAssertion];
}

void sub_100002710(uint64_t a1)
{
  v2 = sub_100002A84();
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  [v2 setGlobalPrivacyClientWithAuditToken:buf];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v4 = qword_10000CAE8;
  v25 = qword_10000CAE8;
  if (!qword_10000CAE8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002B64;
    *&buf[24] = &unk_100008370;
    v27 = &v22;
    sub_100002B64(buf);
    v4 = v23[3];
  }

  v5 = v4;
  _Block_object_dispose(&v22, 8);
  [v4 setXPCHostApplicationIdentifier:{*(a1 + 40), v22}];
  if (!*(*(a1 + 48) + 8))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v6 = qword_10000CAF0;
    v25 = qword_10000CAF0;
    if (!qword_10000CAF0)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100002C2C;
      *&buf[24] = &unk_100008370;
      v27 = &v22;
      sub_100002C2C(buf);
      v6 = v23[3];
    }

    v7 = v6;
    _Block_object_dispose(&v22, 8);
    v8 = [v6 alloc];
    v9 = [v8 initWithPlayerID:{*(a1 + 40), v22}];
    v10 = *(a1 + 48);
    v11 = *(v10 + 8);
    *(v10 + 8) = v9;

    [*(*(a1 + 48) + 8) setDisableAutoPlay:1];
    [*(*(a1 + 48) + 8) start];
    [*(*(a1 + 48) + 8) becomeActive];
    MRMediaRemoteGetLocalOrigin();
    v12 = *(a1 + 40);
    MRMediaRemoteSetParentApplication();
    v13 = *(*(a1 + 48) + 8);
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = *(*(a1 + 48) + 8);
    v15 = *(a1 + 32);
    if (v15)
    {
      [v15 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    [v14 setRemoteHostProcessAuditToken:buf];
  }

  v16 = [[MPRemotePlayerServiceConnection alloc] initWithConnection:*(a1 + 32) bundleID:*(a1 + 40) pid:*(a1 + 64) playbackEngine:*(*(a1 + 48) + 8)];
  v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MPRemotePlayerServiceProtocol];
  [*(a1 + 32) setExportedInterface:v17];

  [*(a1 + 32) setExportedObject:v16];
  [*(a1 + 32) resume];
  v18 = sub_1000012BC();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 48);
    v20 = *(a1 + 32);
    *buf = 134218242;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MPRemotePlayerService: %p: Resumed XPC connection: %@", buf, 0x16u);
  }

  v21 = sub_100001A28();
  [v21 endTask:*(a1 + 56)];
}

id sub_100002A84()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10000CAE0;
  v7 = qword_10000CAE0;
  if (!qword_10000CAE0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100002E8C;
    v3[3] = &unk_100008370;
    v3[4] = &v4;
    sub_100002E8C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100002B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002B64(uint64_t a1)
{
  sub_100001CC4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPServerObjectDatabase");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000CAE8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPServerObjectDatabaseClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPRemotePlayerService.m" lineNumber:40 description:{@"Unable to find class %s", "MPServerObjectDatabase"}];

    __break(1u);
  }
}

Class sub_100002C2C(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_10000CAF8)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100002E18;
    v6[4] = &unk_1000083A8;
    v6[5] = v6;
    v7 = off_100008408;
    v8 = 0;
    qword_10000CAF8 = _sl_dlopen();
  }

  if (!qword_10000CAF8)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MediaPlaybackCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPRemotePlayerService.m" lineNumber:35 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPCPlaybackEngine");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getMPCPlaybackEngineClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPRemotePlayerService.m" lineNumber:42 description:{@"Unable to find class %s", "MPCPlaybackEngine"}];

LABEL_10:
    __break(1u);
  }

  qword_10000CAF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002E18(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000CAF8 = result;
  return result;
}

void sub_100002E8C(uint64_t a1)
{
  sub_100001CC4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000CAE0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPRemotePlayerService.m" lineNumber:38 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

uint64_t start()
{
  v0 = dispatch_get_global_queue(25, 0);
  dispatch_async(v0, &stru_100008420);

  v1 = +[NSXPCListener serviceListener];
  v2 = objc_opt_new();
  [v1 setDelegate:v2];
  [v1 resume];

  return 0;
}

void sub_100002FD8(id a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v1 = qword_10000CB00;
  v18 = qword_10000CB00;
  if (!qword_10000CB00)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100003218;
    v13 = &unk_100008370;
    v14 = &v15;
    sub_100003218(&v10);
    v1 = v16[3];
  }

  v2 = v1;
  _Block_object_dispose(&v15, 8);
  v3 = [v1 sharedCloudController];
  [v3 becomeActive];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v4 = qword_10000CB08;
  v18 = qword_10000CB08;
  if (!qword_10000CB08)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000032E0;
    v13 = &unk_100008370;
    v14 = &v15;
    sub_1000032E0(&v10);
    v4 = v16[3];
  }

  v5 = v4;
  _Block_object_dispose(&v15, 8);
  v6 = [v4 sharedController];
  [v6 beginObservingCloudLibraryEnabled];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v7 = qword_10000CB10;
  v18 = qword_10000CB10;
  if (!qword_10000CB10)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000033A8;
    v13 = &unk_100008370;
    v14 = &v15;
    sub_1000033A8(&v10);
    v7 = v16[3];
  }

  v8 = v7;
  _Block_object_dispose(&v15, 8);
  [v7 setFilteringDisabled:1];
  v9 = [sub_100002A84() defaultMediaLibrary];
  [v9 beginGeneratingLibraryChangeNotifications];
}

void sub_1000031F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003218(uint64_t a1)
{
  sub_100001CC4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCloudController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000CB00 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPCloudControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPRemotePlayerService.m" lineNumber:36 description:{@"Unable to find class %s", "MPCloudController"}];

    __break(1u);
  }
}

void sub_1000032E0(uint64_t a1)
{
  sub_100001CC4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCloudServiceStatusController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000CB08 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPCloudServiceStatusControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPRemotePlayerService.m" lineNumber:37 description:{@"Unable to find class %s", "MPCloudServiceStatusController"}];

    __break(1u);
  }
}

Class sub_1000033A8(uint64_t a1)
{
  sub_100001CC4();
  result = objc_getClass("MPMediaQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000CB10 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v4 file:@"MPRemotePlayerService.m" lineNumber:39 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
    return MRMediaRemoteGetLocalOrigin();
  }

  return result;
}