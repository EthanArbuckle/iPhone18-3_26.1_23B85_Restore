void sub_1000026D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136446466;
      v3 = "[RPBackgroundActivity activateWithUserInteractionHandler:]_block_invoke";
      v4 = 1024;
      v5 = 67;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity already active, skipping activation", &v2, 0x12u);
    }
  }

  else
  {
    *(v1 + 8) = 1;
  }
}

void sub_10000290C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002924(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    *(v1 + 8) = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPBackgroundActivity deactivate]_block_invoke";
    v4 = 1024;
    v5 = 82;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity not active, skipping deactivation", &v2, 0x12u);
  }
}

void sub_100002CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100002D14(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setCurrentTimerString:v2];
}

void sub_100002D7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained currentAttribution];

    if (v9)
    {
      v10 = [STBackgroundActivitiesStatusDomainBackgroundActivityAttribution alloc];
      v11 = [v8 currentAttribution];
      v12 = [v11 backgroundActivityIdentifier];
      v13 = [v8 currentAttribution];
      v14 = [v13 activityAttribution];
      v15 = [v10 initWithBackgroundActivityIdentifier:v12 activityAttribution:v14];

      v16 = [v8 currentAttribution];
      [v5 removeAttribution:v16];

      [v5 addAttribution:v15];
      [v8 setCurrentAttribution:v15];
    }

    else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446466;
      v18 = "[RPBackgroundActivity updateTimerString:]_block_invoke";
      v19 = 1024;
      v20 = 136;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No current attribution to update with timer string", &v17, 0x12u);
    }

    [v6 setUserInitiated:0];
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446466;
    v18 = "[RPBackgroundActivity updateTimerString:]_block_invoke";
    v19 = 1024;
    v20 = 122;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Self was deallocated during timer update", &v17, 0x12u);
  }
}

void sub_1000033E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v30 - 128));
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100003438(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (__RPLogLevel <= 1u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v11 = 136446722;
        v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
        v13 = 1024;
        v14 = 180;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Removing background activity attribution=%@", &v11, 0x1Cu);
      }

      v7 = *(a1 + 32);
    }

    [v5 removeAttribution:v7];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    if (__RPLogLevel <= 1u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = 136446722;
        v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
        v13 = 1024;
        v14 = 184;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Adding background activity attribution=%@", &v11, 0x1Cu);
      }

      v9 = *(a1 + 40);
    }

    [v5 addAttribution:v9];
  }

  [v6 setUserInitiated:1];
}

void sub_1000035EC(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 6);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000038E8;
    block[3] = &unk_10005D188;
    block[4] = WeakRetained;
    v9 = a1[4];
    dispatch_sync(v4, block);
    v5 = v3[5];
    if (v5)
    {
      if (a1[5])
      {
        if (__RPLogLevel > 1u)
        {
          goto LABEL_8;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
          v12 = 1024;
          v13 = 205;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Setting user interaction handler", buf, 0x12u);
        }

        v5 = v3[5];
        if (v5)
        {
LABEL_8:
          v6[0] = _NSConcreteStackBlock;
          v6[1] = 3221225472;
          v6[2] = sub_1000038F0;
          v6[3] = &unk_10005D1B0;
          v7 = a1[5];
          [v5 handleUserInteractionsWithBlock:v6];
        }
      }

      else
      {
        if (__RPLogLevel > 1u)
        {
          goto LABEL_19;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
          v12 = 1024;
          v13 = 213;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Clearing user interaction handler", buf, 0x12u);
        }

        v5 = v3[5];
        if (v5)
        {
LABEL_19:
          [v5 handleUserInteractionsWithBlock:0];
        }
      }
    }

    else if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100043474();
    }
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
    v12 = 1024;
    v13 = 191;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Self was deallocated during publish operation", buf, 0x12u);
  }
}

void sub_1000038F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
    v6 = 1024;
    v7 = 208;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d User interaction detected", &v4, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100003AB0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t start(int a1, char **a2)
{
  v4 = +[RPAngelConnectionManager sharedInstance];
  [v4 activateMachService];

  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_autoreleasePoolPop(v5);
  v8 = UIApplicationMain(a1, a2, 0, v7);

  return v8;
}

void sub_100005CEC(id a1)
{
  qword_100069860 = objc_alloc_init(RPAngelConnectionManager);

  _objc_release_x1();
}

void sub_100005E14(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.ReplayKitAngel"];
  [v3 setService:@"com.apple.ReplayKitAngel.session"];
  [v3 setDelegate:*(a1 + 32)];
}

void sub_100006024(id a1)
{
  qword_100069870 = dispatch_queue_create("com.replaykitangel.connectionManagerQueue", 0);

  _objc_release_x1();
}

void sub_1000061DC(id a1)
{
  v5 = [BSMutableServiceInterface interfaceWithIdentifier:@"com.apple.ReplayKitAngel.session"];
  v1 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___RPAngelServerProtocol];
  [v5 setServer:v1];

  v2 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___RPAngelClientProtocol];
  [v5 setClient:v2];

  [v5 setClientMessagingExpectation:0];
  v3 = [v5 copy];
  v4 = qword_100069880;
  qword_100069880 = v3;
}

void sub_1000062A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 connectionManagerQueue];
  [v6 setTargetQueue:v4];

  v5 = +[BSServiceQuality userInitiated];
  [v6 setServiceQuality:v5];

  [v6 setInterface:qword_100069880];
  [v6 setInterfaceTarget:*(a1 + 32)];
  [v6 setActivationHandler:&stru_10005D2C8];
  [v6 setInvalidationHandler:&stru_10005D2E8];
  [v6 setInterruptionHandler:&stru_10005D308];
}

void sub_100006380(id a1, BSServiceConnectionContext *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelConnectionManager listener:didReceiveConnection:withContext:]_block_invoke_3";
    v5 = 1024;
    v6 = 109;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngel Server: Activation Handler", &v3, 0x12u);
  }
}

void sub_100006454(id a1, BSServiceConnectionContext *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPAngelConnectionManager listener:didReceiveConnection:withContext:]_block_invoke";
    v6 = 1024;
    v7 = 113;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngel Server: Invalidation handler", &v4, 0x12u);
  }

  v3 = +[RPRemoteAlertManager sharedInstance];
  [v3 clearRemoteHandle];
}

void sub_100006544(id a1, BSServiceConnectionContext *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPAngelConnectionManager listener:didReceiveConnection:withContext:]_block_invoke";
    v6 = 1024;
    v7 = 118;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngel Server: Interruption handler", &v4, 0x12u);
  }

  v3 = +[RPRemoteAlertManager sharedInstance];
  [v3 clearRemoteHandle];
}

id sub_100006634(uint64_t a1)
{
  if ([*(a1 + 32) addConnection:*(a1 + 40)])
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 40);
      v5 = 136446722;
      v6 = "[RPAngelConnectionManager listener:didReceiveConnection:withContext:]_block_invoke";
      v7 = 1024;
      v8 = 126;
      v9 = 2048;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Activating Connection=%p", &v5, 0x1Cu);
    }

    return [*(a1 + 40) activate];
  }

  else
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 136446722;
      v6 = "[RPAngelConnectionManager listener:didReceiveConnection:withContext:]_block_invoke";
      v7 = 1024;
      v8 = 129;
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Did not add connection, invalidating Connection=%p", &v5, 0x1Cu);
    }

    return [*(a1 + 40) invalidate];
  }
}

id sub_100007648(uint64_t a1)
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 40);
    v5 = 136446978;
    v6 = "[RPAngelConnectionManager setCountdownState:]_block_invoke";
    v7 = 1024;
    v8 = 223;
    v9 = 2048;
    v10 = v3;
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d delegate:%p setting countdown state:%@", &v5, 0x26u);
  }

  return [*(*(a1 + 32) + 40) setCountdownState:*(a1 + 40)];
}

void sub_100007864(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "[RPAngelConnectionManager enableCameraPip]_block_invoke";
      v8 = 1024;
      v9 = 233;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d pip is already active", &v6, 0x12u);
    }
  }

  else
  {
    v2 = objc_alloc_init(RPAngelCameraPipViewController);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    v5 = *(*(a1 + 32) + 32);

    [v5 startPipSession];
  }
}

void sub_100007ABC(uint64_t a1)
{
  [*(*(a1 + 32) + 32) stopPipSession];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

void sub_1000090A4(uint64_t a1)
{
  [*(*(a1 + 32) + 24) startPictureInPicture];
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPAngelCameraPipViewController startPipSession]_block_invoke";
    v3 = 1024;
    v4 = 96;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d pip started", &v1, 0x12u);
  }
}

void sub_100009C94(uint64_t a1)
{
  [*(*(a1 + 32) + 24) startPictureInPicture];
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPAngelCameraPipViewController observeValueForKeyPath:ofObject:change:context:]_block_invoke";
    v3 = 1024;
    v4 = 197;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d pegasus started", &v1, 0x12u);
  }
}

void sub_10000A504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A51C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A534(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = v3[5];
    v5 = [v3 rpLocalizedStatusStringForPaused:0];
    [v4 setStatusString:v5];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPStatusBarAssertion: failed to acquire assertion", v6, 2u);
    }

    [*(*(*(a1 + 40) + 8) + 40) invalidateStatusBar];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000A6F0(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = [(NSError *)a2 code];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPStatusBarAssertion: registered. If there was an error it was: %li", &v3, 0xCu);
  }
}

uint64_t sub_10000A810(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  [*(*(a1 + 32) + 56) invalidate];
  v5 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"updateDelegateRecordingTimer:" selector:0 userInfo:1 repeats:0.5];
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = v5;

  return _objc_release_x1();
}

void sub_10000A95C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && __RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100043868(v2);
  }
}

void sub_10000AF88(id a1)
{
  qword_100069890 = objc_alloc_init(RPRemoteAlertManager);

  _objc_release_x1();
}

uint64_t sub_10000B598()
{
  v0 = type metadata accessor for Logger();
  sub_100011C68(v0, qword_1000698A8);
  sub_10000E464(v0, qword_1000698A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000B62C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000B688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_10000B6D4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_10000B740(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

uint64_t sub_10000B808(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689A0, &qword_100047AC8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_100068998, &qword_100047AC0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000B940(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689A0, &qword_100047AC8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__videoView;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_100068998, &qword_100047AC0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10000BAB0;
}

uint64_t sub_10000BB24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000BB90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_10000BBDC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10000BC48()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*sub_10000BCB4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

uint64_t sub_10000BD74(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689B8, &qword_100047B28);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689B0, &qword_100047B20);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000BEAC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689B8, &qword_100047B28);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__frameReceiver;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689B0, &qword_100047B20);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

id sub_10000C01C()
{
  v0 = objc_allocWithZone(type metadata accessor for CaptureFrameReceiverObserver());

  return [v0 init];
}

id sub_10000C050()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t (*sub_10000C17C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

uint64_t sub_10000C248(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000C380(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__width;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

uint64_t (*sub_10000C5BC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

uint64_t sub_10000C68C(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000C7C4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__height;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

double sub_10000C978()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000CA9C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*sub_10000CB0C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10000CBB0;
}

uint64_t sub_10000CBDC(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000CD14(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__aspectRatio;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

uint64_t sub_10000CE84(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  type metadata accessor for CGAffineTransform(0);
  return Published.init(initialValue:)();
}

double sub_10000CEFC@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_10000CF80@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 392))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_10000CFEC(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return (*(**a2 + 400))(v4);
}

uint64_t sub_10000D054(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  return static Published.subscript.setter();
}

uint64_t (*sub_10000D0D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

void sub_10000D174(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

uint64_t sub_10000D1A4(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689D8, &qword_100047C68);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689D0, &qword_100047C60);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000D2DC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689D8, &qword_100047C68);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__currentAffineTransform;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689D0, &qword_100047C60);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

uint64_t sub_10000D47C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000D4F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10000D598()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*sub_10000D608(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

void sub_10000D6AC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_10000D738(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_10000B62C(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_10000D7B0(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689E8, &qword_100047CC0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689E0, &qword_100047CB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000D8E8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689E8, &qword_100047CC0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__isLandscape;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689E0, &qword_100047CB8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

void sub_10000DA58(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

id sub_10000DBC0()
{
  v0 = objc_opt_self();

  return [v0 defaultSize];
}

double sub_10000DBF8()
{
  v1 = v0 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_maxDimensions;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_10000DC40(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_maxDimensions);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_10000DCFC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_10000DD34();
  return v3;
}

uint64_t sub_10000DD34()
{
  v1 = v0;
  v2 = sub_10000B62C(&qword_1000689E0, &qword_100047CB8);
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v51 = &v46 - v4;
  v5 = sub_10000B62C(&qword_1000689D0, &qword_100047C60);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v48 = &v46 - v7;
  v47 = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  v8 = *(v47 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v46 - v10;
  v12 = sub_10000B62C(&qword_1000689B0, &qword_100047B20);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v46 - v15;
  v17 = sub_10000B62C(&qword_100068998, &qword_100047AC0);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v21 = &v46 - v20;
  v22 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__videoView;
  v54[0] = 0;
  sub_10000B62C(&qword_100068990, &qword_100047A70);
  Published.init(initialValue:)();
  (*(v18 + 32))(v1 + v22, v21, v17);
  v23 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__frameReceiver;
  v54[0] = 0;
  sub_10000B62C(&qword_1000689A8, &qword_100047AD0);
  Published.init(initialValue:)();
  (*(v13 + 32))(v1 + v23, v16, v12);
  v24 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_captureFrameReceiverObserver;
  *(v1 + v24) = [objc_allocWithZone(type metadata accessor for CaptureFrameReceiverObserver()) init];
  v25 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__width;
  v54[0] = 0x409E000000000000;
  Published.init(initialValue:)();
  v26 = *(v8 + 32);
  v27 = v47;
  v26(v1 + v25, v11, v47);
  v28 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__height;
  v54[0] = 0x4090E00000000000;
  Published.init(initialValue:)();
  v26(v1 + v28, v11, v27);
  v29 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__aspectRatio;
  v54[0] = 0x3FFC71C71C71C71CLL;
  Published.init(initialValue:)();
  v26(v1 + v29, v11, v27);
  v30 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__currentAffineTransform;
  v54[0] = 0x3FF0000000000000;
  v54[1] = 0;
  v54[2] = 0;
  v54[3] = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  v54[4] = 0;
  v54[5] = 0;
  v31 = v48;
  Published.init(initialValue:)();
  (*(v49 + 32))(v1 + v30, v31, v50);
  v32 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__isLandscape;
  LOBYTE(v54[0]) = 1;
  v33 = v51;
  Published.init(initialValue:)();
  (*(v52 + 32))(v1 + v32, v33, v53);
  v34 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_maxDimensions);
  [objc_opt_self() defaultSize];
  *v34 = v35;
  v34[1] = v36;
  if (qword_1000698A0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000E464(v37, qword_1000698A8);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v40 = 136315394;
    *(v40 + 4) = sub_100010E34(0xD000000000000074, 0x800000010004C540, v54);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_100010E34(0x292874696E69, 0xE600000000000000, v54);
    _os_log_impl(&_mh_execute_header, v38, v39, "%s%s", v40, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = 0;

  static Published.subscript.setter();
  v41 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_captureFrameReceiverObserver);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = (v41 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v44 = v43[1];
  *v43 = sub_10000E4D4;
  v43[1] = v42;

  return v1;
}

uint64_t sub_10000E464(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000E49C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000E4D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*(*Strong + 152))();
    if (v2)
    {

      (*(*v1 + 520))();
    }

    else
    {
      if (qword_1000698A0 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000E464(v8, qword_1000698A8);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_100010E34(0x292874696E69, 0xE600000000000000, &v13);
        _os_log_impl(&_mh_execute_header, v9, v10, "%s captureFrameReceiverDidChange no videoView, skipping start", v11, 0xCu);
        sub_1000114A8(v12);
      }
    }
  }

  else
  {
    if (qword_1000698A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000E464(v3, qword_1000698A8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100010E34(0x292874696E69, 0xE600000000000000, &v13);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s captureFrameReceiverDidChange nil", v6, 0xCu);
      sub_1000114A8(v7);
    }
  }
}

void sub_10000E7AC()
{
  v1 = v0;
  if (qword_1000698A0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000E464(v2, qword_1000698A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100010E34(0xD000000000000014, 0x800000010004C5F0, aBlock);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000114A8(v6);
  }

  v7 = [objc_opt_self() availableFrameSenderEndpointsByPID];
  sub_1000119A0(0, &qword_1000689F8, NSNumber_ptr);
  sub_10000B62C(&qword_100068A00, &qword_100047CC8);
  sub_1000113DC();
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v41 = 0;
  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      break;
    }

LABEL_11:
    if (!*(v8 + 16))
    {

      goto LABEL_40;
    }

    v15 = *(*(v8 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
    v16 = sub_100011444(v15);
    if ((v17 & 1) == 0)
    {

LABEL_40:
      v31 = v41;
LABEL_41:

      return;
    }

    v18 = *(*(v8 + 56) + 8 * v16);
    if (v18 >> 62)
    {
      if (v18 < 0)
      {
        v21 = *(*(v8 + 56) + 8 * v16);
      }

      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 &= v11 - 1;
    if (v19)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {

        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v20 = *(v18 + 32);
      }

      v41 = v20;
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v13);
    ++v14;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  if (v41)
  {
    v40 = v41;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v40;
      *v25 = v41;
      v26 = v40;
      _os_log_impl(&_mh_execute_header, v22, v23, "Creating frame receiver for endpoint=%@", v24, 0xCu);
      sub_100011940(v25, &qword_1000697C0, qword_100047CD0);
    }

    v27 = (*(*v1 + 200))();
    if (!v27)
    {
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = objc_allocWithZone(CMCaptureFrameReceiver);
      aBlock[4] = sub_100011488;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100010DBC;
      aBlock[3] = &unk_10005D470;
      v38 = _Block_copy(aBlock);

      v39 = [v37 initWithFrameSenderServerEndpoint:v40 frameReceiverHandler:v38];
      _Block_release(v38);

      (*(*v1 + 208))(v39);

      return;
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Frame receiver already exists - returning", v30, 2u);
    }

    v31 = v40;
    goto LABEL_41;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "first endpoint not found", v34, 2u);
  }

  v35 = *(*v1 + 208);

  v35(0);
}

uint64_t sub_10000EE78(void *a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 && (a2 & 1) != 0)
    {
      v15 = result;
      sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
      v16 = a1;
      v24 = v5;
      v17 = v16;
      v23 = static OS_dispatch_queue.main.getter();
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v17;
      aBlock[4] = sub_100011A28;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F174;
      aBlock[3] = &unk_10005D688;
      v19 = _Block_copy(aBlock);
      v20 = v17;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100011A78();
      sub_10000B62C(&qword_100068D00, &unk_100047DD0);
      sub_100011AD0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v21 = v23;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v19);

      (*(v24 + 8))(v8, v4);
      return (*(v10 + 8))(v13, v9);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10000F174(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000F1B8()
{
  v1 = v0;
  if (qword_1000698A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000E464(v2, qword_1000698A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100010E34(0xD000000000000013, 0x800000010004C610, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000114A8(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_captureFrameReceiverObserver);
  v8 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if (*(v7 + v8) == 1)
  {
    sub_1000119A0(0, &qword_100068A18, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = *(v7 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath);
    v11 = *(v7 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath + 8);
    v12 = String._bridgeToObjectiveC()();
    [ObjCClassFromMetadata removeObserver:v7 forKeyPath:v12];

    *(v7 + v8) = 0;
  }

  return (*(*v1 + 208))(0);
}

void sub_10000F3B4()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    sub_1000119A0(0, &qword_100068A18, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath);
    v4 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath + 8);
    v5 = String._bridgeToObjectiveC()();
    [ObjCClassFromMetadata removeObserver:v0 forKeyPath:v5];

    *(v0 + v1) = 0;
  }
}

void sub_10000F460()
{
  v1 = v0;
  if (qword_1000698A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000E464(v2, qword_1000698A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100010E34(0xD000000000000015, 0x800000010004C630, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000114A8(v6);
  }

  v7 = (*(*v1 + 152))();
  if (v7)
  {
  }

  else
  {
    (*(*v1 + 160))([objc_allocWithZone(RPCCUIVideoView) init]);
  }

  v8 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_captureFrameReceiverObserver);
  v9 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if ((*(v8 + v9) & 1) == 0)
  {
    sub_1000119A0(0, &qword_100068A18, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = *(v8 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath);
    v12 = *(v8 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath + 8);
    v13 = String._bridgeToObjectiveC()();
    [ObjCClassFromMetadata addObserver:v8 forKeyPath:v13 options:0 context:0];

    *(v8 + v9) = 1;
  }
}

void sub_10000F6AC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    sub_1000119A0(0, &qword_100068A18, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath);
    v4 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath + 8);
    v5 = String._bridgeToObjectiveC()();
    [ObjCClassFromMetadata addObserver:v0 forKeyPath:v5 options:0 context:0];

    *(v0 + v1) = 1;
  }
}

uint64_t sub_10000F768()
{
  v1 = v0;
  if (qword_1000698A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000E464(v2, qword_1000698A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004C650, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000114A8(v6);
  }

  v7 = (*(*v1 + 152))();
  [v7 flushVideoView];

  v8 = *(*v1 + 160);

  return v8(0);
}

void sub_10000F91C(opaqueCMSampleBuffer *a1)
{
  v2 = v1;
  v4 = (*(*v1 + 152))();
  if (!v4)
  {
    return;
  }

  v67 = v4;
  v5 = [v67 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 sampleBufferRenderer];
    v9 = [v8 status];

    if (v9 == 2)
    {
      v10 = [v7 sampleBufferRenderer];
      [v10 flush];
    }
  }

  v11 = CMSampleBufferGetFormatDescription(a1);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v11);
  v14 = Dimensions;
  v15 = (Dimensions >> 32);
  if (([v67 enqueueSampleBuffer:a1] & 1) == 0 && (*(*v2 + 248))() == v14 && (*(*v2 + 296))() == v15)
  {

LABEL_10:

    return;
  }

  if (qword_1000698A0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000E464(v16, qword_1000698A8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "updating the transform, width and height", v19, 2u);
  }

  v20 = (*(*v2 + 448))([v67 isLandscape]);
  v21 = (*(*v2 + 256))(v20, v14);
  (*(*v2 + 304))(v21, v15);
  v22 = [v67 layer];

  [v22 affineTransform];
  v65 = *&transform.c;
  v66 = *&transform.a;
  v70 = transform;
  v64 = *&transform.tx;

  *&transform.a = v66;
  *&transform.c = v65;
  *&transform.tx = v64;
  CGAffineTransformDecompose(&v68, &transform);
  rotation = v68.rotation;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = rotation;
    _os_log_impl(&_mh_execute_header, v24, v25, "transform rotation component %f", v26, 0xCu);
  }

  v27 = fabs(rotation);
  if (v27 >= 0.0001 && vabdd_f64(3.14159265, v27) >= 0.0001)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "NOT isZeroOr180", v39, 2u);
    }

    v40 = *(*v2 + 248);
    v41 = v40();
    v35.n128_u64[0] = 1.0;
    if (v41 <= 0.0)
    {
      goto LABEL_30;
    }

    v36 = (*(*v2 + 296))(1.0);
    v35.n128_f64[0] = v40();
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "YES isZeroOr180", v30, 2u);
    }

    v31 = (*v2 + 296);
    v32 = *v31;
    v34 = (*v31)();
    v35.n128_u64[0] = 1.0;
    if (v34 <= 0.0)
    {
      goto LABEL_30;
    }

    v36 = (*(*v2 + 248))(1.0);
    v33 = v32();
  }

  v35.n128_f64[0] = v36 / v35.n128_f64[0];
LABEL_30:
  v42 = (*(*v2 + 352))(v33, v35);
  v43 = *(*v2 + 440);
  v44 = (v43)(v42);
  v45 = *(*v2 + 488);
  v46 = v45();
  if (v44)
  {
    v49 = v47;
    v50 = (v45)(v46);
    v51 = v50 / (*(*v2 + 344))();
  }

  else
  {
    v49 = v48 * (*(*v2 + 344))(v46);
    v45();
  }

  [v67 updateIntrinsicContentSize:{v49, v51, v64, v65, v66}];
  (*(*v2 + 400))(&v70);
  v52 = v67;

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *&v68.scale.width = swift_slowAlloc();
    *v55 = 134219266;
    *(v55 + 4) = (*(*v2 + 344))();
    *(v55 + 12) = 2048;
    *(v55 + 14) = (*(*v2 + 248))();
    *(v55 + 22) = 2048;
    *(v55 + 24) = (*(*v2 + 296))();
    *(v55 + 32) = 1024;
    *(v55 + 34) = v43() & 1;

    *(v55 + 38) = 2080;
    transform = v70;
    type metadata accessor for CGAffineTransform(0);
    v56 = String.init<A>(describing:)();
    v58 = sub_100010E34(v56, v57, &v68);

    *(v55 + 40) = v58;
    *(v55 + 48) = 2080;
    [v52 intrinsicContentSize];
    transform.a = v59;
    transform.b = v60;
    type metadata accessor for CGSize(0);
    v61 = String.init<A>(describing:)();
    v63 = sub_100010E34(v61, v62, &v68);

    *(v55 + 50) = v63;
    _os_log_impl(&_mh_execute_header, v53, v54, "set aspect ratio %f (w:%f, h:%f), isLandscape:%{BOOL}d, transform %s, videoView intrinsicContentSize %s", v55, 0x3Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1000103A8()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__videoView;
  v2 = sub_10000B62C(&qword_100068998, &qword_100047AC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__frameReceiver;
  v4 = sub_10000B62C(&qword_1000689B0, &qword_100047B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__width;
  v6 = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__height, v6);
  v7(v0 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__aspectRatio, v6);
  v8 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__currentAffineTransform;
  v9 = sub_10000B62C(&qword_1000689D0, &qword_100047C60);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__isLandscape;
  v11 = sub_10000B62C(&qword_1000689E0, &qword_100047CB8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_1000105A0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__videoView;
  v2 = sub_10000B62C(&qword_100068998, &qword_100047AC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__frameReceiver;
  v4 = sub_10000B62C(&qword_1000689B0, &qword_100047B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__width;
  v6 = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__height, v6);
  v7(v0 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__aspectRatio, v6);
  v8 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__currentAffineTransform;
  v9 = sub_10000B62C(&qword_1000689D0, &qword_100047C60);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__isLandscape;
  v11 = sub_10000B62C(&qword_1000689E0, &qword_100047CB8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v12, v13);
}

uint64_t sub_1000107D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VideoEffectsPreview();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100010834()
{
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_10001088C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100010968()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath);
  v2 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath + 8);

  return v1;
}

uint64_t sub_1000109AC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000109F0(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *sub_100010AA0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange];
  *v2 = nullsub_1;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath];
  *v3 = 0xD000000000000022;
  v3[1] = 0x800000010004C670;
  v0[OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v12, "init");
  sub_1000119A0(0, &qword_100068A18, CMCaptureFrameReceiver_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath];
  v7 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath + 8];
  v8 = v4;

  v9 = String._bridgeToObjectiveC()();

  [ObjCClassFromMetadata addObserver:v8 forKeyPath:v9 options:0 context:0];

  v10 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  v8[v10] = 1;

  return v8;
}

uint64_t sub_100010C0C()
{
  v1 = v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange;
  swift_beginAccess();
  v3 = *v1;
  v2 = *(v1 + 8);

  v3(v4);
}

id sub_100010D30()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100010DBC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_100010E34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100010F00(v11, 0, 0, 1, a1, a2);
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
    sub_100011C08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000114A8(v11);
  return v7;
}

unint64_t sub_100010F00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001100C(a5, a6);
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

char *sub_10001100C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100011058(a1, a2);
  sub_100011188(&off_10005D420);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100011058(uint64_t a1, unint64_t a2)
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

  v6 = sub_100011274(v5, 0);
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
        v7 = sub_100011274(v10, 0);
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

uint64_t sub_100011188(uint64_t result)
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

  result = sub_1000112E8(result, v12, 1, v3);
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

void *sub_100011274(uint64_t a1, uint64_t a2)
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

  sub_10000B62C(&unk_100069150, &unk_100048520);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000112E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000B62C(&unk_100069150, &unk_100048520);
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

unint64_t sub_1000113DC()
{
  result = qword_100068A08;
  if (!qword_100068A08)
  {
    sub_1000119A0(255, &qword_1000689F8, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A08);
  }

  return result;
}

unint64_t sub_100011444(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100011B34(a1, v4);
}

uint64_t sub_100011490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000114A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t type metadata accessor for VideoEffectsPreview()
{
  result = qword_1000699F0;
  if (!qword_1000699F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001157C()
{
  sub_1000117D0(319, &qword_100068A50, &qword_100068990, &qword_100047A70);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1000117D0(319, &qword_100068A58, &qword_1000689A8, &qword_100047AD0);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_100011CF4(319, &qword_100068A60, &type metadata for CGFloat, &type metadata accessor for Published);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_100011824();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_100011CF4(319, &unk_100068A70, &type metadata for Bool, &type metadata accessor for Published);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100011788(uint64_t *a1, uint64_t *a2)
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

void sub_1000117D0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100011788(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100011824()
{
  if (!qword_100068A68)
  {
    type metadata accessor for CGAffineTransform(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100068A68);
    }
  }
}

__n128 sub_10001187C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001188C(uint64_t a1, int a2)
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

uint64_t sub_1000118AC(uint64_t result, int a2, int a3)
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

__n128 sub_1000118D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000118E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011908(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100011940(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000B62C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000119A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000119E8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100011A78()
{
  result = qword_100068E90;
  if (!qword_100068E90)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E90);
  }

  return result;
}

unint64_t sub_100011AD0()
{
  result = qword_100068EA0;
  if (!qword_100068EA0)
  {
    sub_100011788(&qword_100068D00, &unk_100047DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068EA0);
  }

  return result;
}

unint64_t sub_100011B34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000119A0(0, &qword_1000689F8, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100011C08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100011C68(uint64_t a1, uint64_t *a2)
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

void sub_100011CF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_100011D6C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_package;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100011DB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_package;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100011E70()
{
  v0 = sub_10003720C();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

uint64_t sub_100011EA4()
{
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_100011EFC(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (v6 == a1 && v7 == a2)
  {
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v11 = [v2 systemApertureElementContext];
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    aBlock[4] = sub_1000138FC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F174;
    aBlock[3] = &unk_10005D878;
    v13 = _Block_copy(aBlock);
    v14 = v2;

    [v11 setElementNeedsUpdateWithCoordinatedAnimations:v13];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_100012068(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_100012108;
}

void sub_100012108(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v6 = *(*a1 + 32);

    sub_100011EFC(v3, v5);
    v7 = v2[4];
  }

  else
  {
    sub_100011EFC(*(*a1 + 24), v5);
  }

  free(v2);
}

uint64_t sub_100012184(char a1)
{
  if (!a1)
  {
    return 0x676E696461656CLL;
  }

  if (a1 == 1)
  {
    return 0x676E696C69617274;
  }

  return 0x6C616D696E696DLL;
}

uint64_t sub_1000121DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696C69617274;
  if (v2 != 1)
  {
    v4 = 0x6C616D696E696DLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696C69617274;
  if (*a2 != 1)
  {
    v8 = 0x6C616D696E696DLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
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

uint64_t sub_1000122E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E69766173;
  if (a1 != 6)
  {
    v5 = 0x506F546465766173;
    v4 = 0xED0000736F746F68;
  }

  v6 = 0x6E6964726F636572;
  v7 = 0xE900000000000067;
  if (a1 != 4)
  {
    v6 = 0x646573756170;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x776F64746E756F63;
  v9 = 0xEA0000000000326ELL;
  v10 = 0x776F64746E756F63;
  if (a1 != 2)
  {
    v8 = 0x776F64746E756F63;
    v9 = 0xEA0000000000316ELL;
  }

  if (a1)
  {
    v3 = 0xEA0000000000336ELL;
  }

  else
  {
    v10 = 1701602409;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x676E69766173)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xED0000736F746F68;
        if (v11 != 0x506F546465766173)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000067;
      if (v11 != 0x6E6964726F636572)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x646573756170)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA0000000000326ELL;
      if (v11 != 0x776F64746E756F63)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEA0000000000316ELL;
      if (v11 != 0x776F64746E756F63)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA0000000000336ELL;
    if (v11 != 0x776F64746E756F63)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v11 != 1701602409)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

Swift::Int sub_100012560()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100012604()
{
  *v0;
  *v0;
  String.hash(into:)();
}

uint64_t sub_100012694()
{
  String.hash(into:)();
}

Swift::Int sub_1000127C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100012860()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000129A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029800(*a1);
  *a2 = result;
  return result;
}

void sub_1000129D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E696C69617274;
  if (v2 != 1)
  {
    v5 = 0x6C616D696E696DLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

_BYTE *sub_100012A64(int a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &off_100068000;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_package] = 0;
  v9 = &v1[OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState];
  v10 = sub_10003720C();
  v11 = *(v10 + 1);
  *v9 = *v10;
  v9[1] = v11;
  v1[OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role] = a1;
  v12 = type metadata accessor for RPSessionAccessoryView();
  v33.receiver = v1;
  v33.super_class = v12;

  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = sub_1000301D0();
  (*(v4 + 16))(v7, v14, v3);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v31[1] = a1;
    v17 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100010E34(0x6C6F722874696E69, 0xEB00000000293A65, v32);
    *(v17 + 12) = 2080;
    v18 = 0xE800000000000000;
    v19 = 0x676E696C69617274;
    if (*(v13 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role) != 1)
    {
      v19 = 0x6C616D696E696DLL;
      v18 = 0xE700000000000000;
    }

    if (*(v13 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role))
    {
      v20 = v19;
    }

    else
    {
      v20 = 0x676E696461656CLL;
    }

    if (*(v13 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role))
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE700000000000000;
    }

    v22 = sub_100010E34(v20, v21, v32);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s role=%s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v4 + 8))(v7, v3);
    v8 = &off_100068000;
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v25 = objc_allocWithZone(BSUICAPackageView);
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 initWithPackageName:v26 inBundle:v24];

  v28 = v8[419];
  swift_beginAccess();
  v29 = *&v28[v13];
  *&v28[v13] = v27;

  return v13;
}

id sub_100012E4C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void sub_100012E90()
{
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_package) = 0;
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState);
  v2 = sub_10003720C();
  v3 = *(v2 + 1);
  *v1 = *v2;
  v1[1] = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100012F78()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004C950, &v35);
    *(v10 + 12) = 2080;
    v11 = 0xE800000000000000;
    v12 = 0x676E696C69617274;
    if (*(v7 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role) != 1)
    {
      v12 = 0x6C616D696E696DLL;
      v11 = 0xE700000000000000;
    }

    if (*(v7 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x676E696461656CLL;
    }

    if (*(v7 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role))
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    v15 = sub_100010E34(v13, v14, &v35);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v17 = (*((swift_isaMask & *v7) + 0x80))(v16);
    v19 = sub_100010E34(v17, v18, &v35);

    *(v10 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s role=%s viewState=%s", v10, 0x20u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v5, v1);
  v20 = type metadata accessor for RPSessionAccessoryView();
  v36.receiver = v7;
  v36.super_class = v20;
  v21 = objc_msgSendSuper2(&v36, "layoutSubviews");
  v22 = *((swift_isaMask & *v7) + 0x68);
  v23 = (v22)(v21);
  if (v23)
  {
    v24 = v23;
    (*((swift_isaMask & *v7) + 0x80))();
    v25 = String._bridgeToObjectiveC()();

    [v24 setState:v25];
  }

  v26 = v22();
  if (v26)
  {
    v27 = v26;
    [v26 sizeToFit];
  }

  v28 = v22();
  if (v28)
  {
    v29 = v28;
    [v7 bounds];
    MidX = CGRectGetMidX(v37);
    [v7 bounds];
    [v29 setCenter:{MidX, CGRectGetMidY(v38)}];
  }

  v31 = v22();
  if (v31)
  {
    v32 = v31;
    [v31 setAlpha:*sub_10003674C()];
  }

  v33 = v22();
  [v7 insertSubview:v33 above:v7];
}

double sub_100013470()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role);
  if (*(v0 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role) && v1 != 1)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      v4 = *((swift_isaMask & *v0) + 0x80);
      v5 = v4(v3);
      v7 = v6;
      v8 = sub_10003729C();
      if (v5 == *v8 && v7 == *(v8 + 1))
      {
        goto LABEL_17;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_18;
      }

      v12 = v4(v11);
      v14 = v13;
      v15 = sub_1000372C0();
      if (v12 == *v15 && v14 == *(v15 + 1))
      {
LABEL_17:
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
LABEL_20:
          if (v1)
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v21 & 1) == 0)
            {
LABEL_22:
              v23 = v4(v22);
              v25 = v24;
              v26 = sub_10003727C();
              if (v23 == *v26 && v25 == *(v26 + 1))
              {
              }

              else
              {
                v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v28 & 1) == 0)
                {
                  goto LABEL_46;
                }
              }

              if (v1 == 1)
              {
              }

              else
              {
                v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v43 & 1) == 0)
                {
LABEL_46:
                  v18 = *sub_100036614();
                  goto LABEL_47;
                }
              }

              v29 = *sub_100036614();
              v30 = sub_100036648();
              goto LABEL_30;
            }
          }

          else
          {
          }

          v31 = v4(v22);
          v33 = v32;
          v34 = sub_100037264();
          if (v31 != *v34 || v33 != v34[1])
          {
            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v36)
            {
              goto LABEL_40;
            }

            v38 = v4(v37);
            v40 = v39;
            v41 = sub_10003724C();
            if (v38 != *v41 || v40 != v41[1])
            {
              v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v46)
              {
                goto LABEL_40;
              }

              v48 = v4(v47);
              v50 = v49;
              v51 = sub_100037234();
              if (v48 != *v51 || v50 != v51[1])
              {
                v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v52)
                {
                  goto LABEL_40;
                }

                v54 = v4(v53);
                v56 = v55;
                v57 = sub_10003727C();
                if (v54 != *v57 || v56 != *(v57 + 1))
                {
                  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v58 & 1) == 0)
                  {
                    goto LABEL_22;
                  }

LABEL_40:
                  v42 = *sub_100036614();
                  v18 = v42 + *sub_100036634();
                  goto LABEL_47;
                }
              }
            }
          }

          goto LABEL_40;
        }
      }

LABEL_18:
      if (v1)
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v29 = *sub_100036614();
      v30 = sub_100036634();
LABEL_30:
      v18 = v29 - *v30;
LABEL_47:
      v19 = sub_100036628();
      goto LABEL_48;
    }
  }

  v18 = *sub_100036670();
  v19 = sub_10003667C();
LABEL_48:
  v44 = *v19;
  return v18;
}

uint64_t sub_1000138C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001390C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100013924(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

uint64_t sub_100013A54(unsigned __int8 a1)
{
  v1 = 1701602409;
  v2 = 0x676E69766173;
  if (a1 != 6)
  {
    v2 = 0x506F546465766173;
  }

  v3 = 0x6E6964726F636572;
  if (a1 != 4)
  {
    v3 = 0x646573756170;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x776F64746E756F63;
  }

  if (a1 > 1u)
  {
    v1 = 0x776F64746E756F63;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100013B74@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029870(*a1);
  *a2 = result;
  return result;
}

void sub_100013BA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0xE600000000000000;
  v6 = 0x676E69766173;
  if (v2 != 6)
  {
    v6 = 0x506F546465766173;
    v5 = 0xED0000736F746F68;
  }

  v7 = 0xE900000000000067;
  v8 = 0x6E6964726F636572;
  if (v2 != 4)
  {
    v8 = 0x646573756170;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000326ELL;
  if (v2 != 2)
  {
    v9 = 0xEA0000000000316ELL;
  }

  if (*v1)
  {
    v4 = 0x776F64746E756F63;
    v3 = 0xEA0000000000336ELL;
  }

  if (*v1 > 1u)
  {
    v4 = 0x776F64746E756F63;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_100013D04()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100013D9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100013E9C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100013F34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100014034()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000140CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000141CC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100014264(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100014364()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000143FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_100014510()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000145A8(double a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10001472C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000147C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100014874()
{
  v0 = SBUISystemApertureElementIdentifierScreenRecording;
  v1 = SBUISystemApertureElementIdentifierScreenRecording;
  return v0;
}

void *sub_1000148F0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_elementIdentifier;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100014948(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_elementIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100014A10()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView);
  v2 = v1;
  return v1;
}

void *sub_100014A48()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView);
  v2 = v1;
  return v1;
}

void *sub_100014A88()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView);
  v2 = v1;
  return v1;
}

void *sub_100014AC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView);
  v2 = v1;
  return v1;
}

void *sub_100014B3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView);
  v2 = v1;
  return v1;
}

id sub_100014BA8()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id sub_100014BE0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_timerLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100014C34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_timerLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100014CFC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingPackageView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100014D48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingPackageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100014E00()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingPackageView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100014E4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingPackageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100014F04()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_recordingState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100014F48(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_recordingState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100014FF8()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10001503C(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100015100(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___buttonStackView);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___buttonStackView) = a1;
  return _objc_release_x1();
}

void (*sub_100015114(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000150EC();
  return sub_10001515C;
}

void sub_10001515C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___buttonStackView);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___buttonStackView) = v2;
}

uint64_t sub_100015188(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___viewButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___viewButton) = a1;
  return _objc_release_x1();
}

void (*sub_10001519C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100015174();
  return sub_1000151E4;
}

void sub_1000151E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___viewButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___viewButton) = v2;
}

uint64_t sub_100015210(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___deleteButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___deleteButton) = a1;
  return _objc_release_x1();
}

void (*sub_100015224(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000151FC();
  return sub_10001526C;
}

void sub_10001526C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___deleteButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___deleteButton) = v2;
}

uint64_t sub_100015298(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___showInFilesButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___showInFilesButton) = a1;
  return _objc_release_x1();
}

void (*sub_1000152AC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100015284();
  return sub_1000152F4;
}

void sub_1000152F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___showInFilesButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___showInFilesButton) = v2;
}

id sub_100015410(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_10001547C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___stopButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___stopButton) = a1;
  return _objc_release_x1();
}

void (*sub_100015490(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000153FC();
  return sub_1000154D8;
}

void sub_1000154D8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___stopButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___stopButton) = v2;
}

id sub_1000154F0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  }

  else
  {
    v4 = (*((swift_isaMask & *v0) + 0x3B8))();
    v5 = [v4 heightAnchor];

    v6 = [v5 constraintEqualToConstant:*sub_1000366CC()];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1000155D0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint) = a1;
  return _objc_release_x1();
}

void (*sub_1000155E4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000154F0();
  return sub_10001562C;
}

void sub_10001562C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint) = v2;
}

id sub_100015644()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id sub_10001567C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1000156D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1000159F8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_100015A48(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_100015AFC()
{
  v0 = [objc_opt_self() grayColor];

  return v0;
}

void *sub_100015B88()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_keyColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100015BE0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_100015C3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_keyColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100015D8C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_100015E68(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_100015F28@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1000160F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_10002ADB4(v2 + v4, a2, &qword_100068DF0, qword_100047E90);
}

uint64_t sub_1000162A4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1000298BC(a1, v2 + v4);
  return swift_endAccess();
}

void sub_100016360(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 != v2)
  {
    v13 = sub_1000301D0();
    v14 = *(v4 + 16);
    if (v12)
    {
      v14(v10, v13, v3);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v28 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100010E34(0x776F64746E756F63, 0xEF6465737561506ELL, &v28);
        _os_log_impl(&_mh_execute_header, v15, v16, "%s RPControlCenter pause", v17, 0xCu);
        sub_1000114A8(v18);
      }

      (*(v4 + 8))(v10, v3);
      v19 = [objc_opt_self() sharedInstance];
      v20 = sub_1000367F8();
    }

    else
    {
      v14(v8, v13, v3);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v28 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_100010E34(0x776F64746E756F63, 0xEF6465737561506ELL, &v28);
        _os_log_impl(&_mh_execute_header, v21, v22, "%s RPControlCenter resume", v23, 0xCu);
        sub_1000114A8(v24);
      }

      (*(v4 + 8))(v8, v3);
      v19 = [objc_opt_self() sharedInstance];
      v20 = sub_100036820();
    }

    v25 = *v20;
    v26 = v20[1];

    v27 = String._bridgeToObjectiveC()();

    [v19 countdownInterruptWithStatus:v27];
  }
}

uint64_t sub_100016700()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100016744(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_100016360(v4);
}

void (*sub_10001679C(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100016830;
}

void sub_100016830(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_100016360(v5);

  free(v1);
}

void *sub_100016878()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_completionTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000168C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_completionTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10001697C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_inExpandedButtonView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000169C0(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_inExpandedButtonView;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100016AA4(char a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode] = 4;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress] = 0x100000;
  v4 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  *&v2[v4] = *sub_1000366FC();
  v5 = &v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionID];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors] = 666;
  v6 = SBUISystemApertureElementIdentifierScreenRecording;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_elementIdentifier] = SBUISystemApertureElementIdentifierScreenRecording;
  v7 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView;
  v8 = type metadata accessor for RPSessionAccessoryView();
  v9 = objc_allocWithZone(v8);
  v10 = v6;
  *&v2[v7] = sub_100012A64(0);
  v11 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView;
  v12 = objc_allocWithZone(v8);
  *&v2[v11] = sub_100012A64(0);
  v13 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView;
  v14 = objc_allocWithZone(v8);
  *&v2[v13] = sub_100012A64(1);
  v15 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView;
  v16 = objc_allocWithZone(v8);
  *&v2[v15] = sub_100012A64(1);
  v17 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView;
  v18 = objc_allocWithZone(v8);
  *&v2[v17] = sub_100012A64(2);
  v19 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview;
  type metadata accessor for VideoEffectsPreview();
  *&v2[v19] = sub_10000DCFC();
  v20 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_timerLabel;
  *&v2[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel;
  *&v2[v21] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingPackageView] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingPackageView] = 0;
  v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_recordingState] = 1;
  v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionType] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___buttonStackView] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___viewButton] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___deleteButton] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___showInFilesButton] = 0;
  v22 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_photosURL;
  v23 = type metadata accessor for URL();
  v24 = *(*(v23 - 8) + 56);
  v24(&v2[v22], 1, 1, v23);
  v25 = &v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_photosIdentifier];
  *v25 = 0;
  v25[1] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___stopButton] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint] = 0;
  v26 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customView;
  *&v2[v26] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreviewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_accessoryViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewElementLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewCameraPreviewLayoutConstraints] = &_swiftEmptyArrayStorage;
  v27 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_keyColor;
  *&v2[v27] = [objc_opt_self() grayColor];
  v28 = &v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_associatedAppBundleIdentifier];
  *v28 = 0;
  v28[1] = 0;
  v24(&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_launchURL], 1, 1, v23);
  v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_completionTimer] = 0;
  v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_inExpandedButtonView] = 0;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for RPSystemApertureElementViewController();
  v29 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", 0, 0);
  sub_10001E534(a1);

  return v29;
}

uint64_t sub_100016EBC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = CFPreferencesCopyAppValue(v9, v10);

    if (v11)
    {
      swift_beginAccess();
      *(a2 + 16) = 1;
    }

    v12 = sub_1000301D0();
    (*(v4 + 16))(v7, v12, v3);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_100010E34(0xD000000000000034, 0x800000010004D5A0, &v18);
      *(v15 + 12) = 1024;
      swift_beginAccess();
      *(v15 + 14) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v13, v14, "%s hideStatusBar=%{BOOL}d", v15, 0x12u);
      sub_1000114A8(v16);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_100017164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v5;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
  }

  v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_100016EBC(v3, a3);
}

void sub_100017204()
{
  v1 = type metadata accessor for UIButton.Configuration();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v406 = (&v379 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v379 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView);
  if (v11)
  {
    v12 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView);
    if (v12)
    {
      v13 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView);
      if (v13)
      {
        v14 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView);
        if (v14)
        {
          v15 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView);
          if (v15)
          {
            v397 = (&v379 - v10);
            v405 = "PSessionAccessoryView";
            swift_getObjectType();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v16 = objc_opt_self();
            v398 = v15;
            v403 = v14;
            v399 = v13;
            v402 = v12;
            v400 = v11;
            v17 = ObjCClassFromMetadata;
            v18 = [v16 bundleForClass:?];
            v19 = objc_allocWithZone(BSUICAPackageView);
            v20 = String._bridgeToObjectiveC()();
            v21 = [v19 initWithPackageName:v20 inBundle:v18];

            if (v21)
            {
              v405 = v21;
              v22 = [v16 bundleForClass:v17];
              v23 = objc_allocWithZone(BSUICAPackageView);
              v24 = String._bridgeToObjectiveC()();
              v25 = [v23 initWithPackageName:v24 inBundle:v22];

              if (v25)
              {
                v395 = v16;
                v393 = v25;
                v26 = sub_10002B924();
                v27 = *((swift_isaMask & **v26) + 0xA0);
                v28 = *v26;
                v29 = v0;
                v30 = v27();
                v32 = v31;

                (*((swift_isaMask & *v29) + 0x240))(v30, v32);
                v33 = sub_1000301D0();
                v34 = v397;
                (*(v5 + 16))(v397, v33, v4);
                v404 = v29;
                v35 = v29;
                v36 = Logger.logObject.getter();
                v37 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v36, v37))
                {
                  v38 = swift_slowAlloc();
                  v39 = swift_slowAlloc();
                  v396 = v39;
                  ObjCClassFromMetadata = swift_slowAlloc();
                  v408[0] = ObjCClassFromMetadata;
                  *v38 = 136315650;
                  v40 = sub_100010E34(0x4C64694477656976, 0xED0000292864616FLL, v408);
                  v41 = v404;
                  *(v38 + 4) = v40;
                  *(v38 + 12) = 2112;
                  *(v38 + 14) = v35;
                  *v39 = v41;
                  *(v38 + 22) = 2080;
                  v42 = *((swift_isaMask & *v35) + 0x238);
                  v43 = v35;
                  v44 = v42();
                  if (v45)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    v44 = 1819047246;
                    v46 = 0xE400000000000000;
                  }

                  v47 = sub_100010E34(v44, v46, v408);

                  *(v38 + 24) = v47;
                  _os_log_impl(&_mh_execute_header, v36, v37, "%s self=%@ sessionID=%s", v38, 0x20u);
                  sub_100011940(v396, &qword_1000697C0, qword_100047CD0);

                  swift_arrayDestroy();
                }

                (*(v5 + 8))(v34, v4);
                v48 = type metadata accessor for RPSystemApertureElementViewController();
                v407.receiver = v35;
                v407.super_class = v48;
                v394 = v48;
                objc_msgSendSuper2(&v407, "viewDidLoad");
                SBUISystemApertureControlEdgeSpacing();
                v50 = v49;
                v51 = [v35 view];
                v52 = v403;
                v53 = v398;
                v54 = v399;
                if (v51)
                {
                  v55 = v51;
                  [v51 setTranslatesAutoresizingMaskIntoConstraints:0];

                  v56 = (swift_isaMask & *v35) + 952;
                  v57 = *((swift_isaMask & *v35) + 0x3B8);
                  v58 = v57();
                  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];

                  [v400 setTranslatesAutoresizingMaskIntoConstraints:0];
                  [v402 setTranslatesAutoresizingMaskIntoConstraints:0];
                  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
                  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
                  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
                  v59 = [v35 view];
                  if (v59)
                  {
                    v60 = v59;
                    v61 = v56;
                    v397 = v57;
                    v62 = v57();
                    [v60 addSubview:v62];

                    v63 = [v35 view];
                    if (v63)
                    {
                      v64 = v63;
                      [v63 addSubview:v400];

                      v65 = [v35 view];
                      v66 = v395;
                      if (v65)
                      {
                        v67 = v65;
                        [v65 addSubview:v402];

                        v68 = [v35 view];
                        v69 = v403;
                        if (v68)
                        {
                          v70 = v68;
                          [v68 addSubview:v399];

                          v71 = [v35 view];
                          v72 = v398;
                          if (v71)
                          {
                            v73 = v71;
                            v74 = v61;
                            v75 = v66;
                            [v71 addSubview:v69];

                            v76 = [v35 view];
                            v77 = v397;
                            if (v76)
                            {
                              v78 = v76;
                              [v76 addSubview:v72];

                              v79 = v77();
                              v80 = [v79 centerXAnchor];

                              v81 = [v35 view];
                              if (v81)
                              {
                                v82 = v81;
                                v83 = [v81 centerXAnchor];

                                v84 = [v80 constraintEqualToAnchor:v83];
                                [v84 setActive:1];

                                ObjCClassFromMetadata = v74;
                                v85 = v77();
                                v86 = [v85 topAnchor];

                                v87 = [v35 view];
                                if (v87)
                                {
                                  v88 = v87;
                                  v89 = [v87 topAnchor];

                                  v90 = [v86 constraintEqualToAnchor:v89];
                                  [v90 setActive:1];

                                  v91 = ((swift_isaMask & *v35) + 904);
                                  v92 = *((swift_isaMask & *v35) + 0x388);
                                  v93 = v92();
                                  [v93 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v94 = v92();
                                  v95 = [v75 bundleForClass:swift_getObjCClassFromMetadata()];
                                  v96 = String._bridgeToObjectiveC()();
                                  v97 = String._bridgeToObjectiveC()();
                                  v98 = [v95 localizedStringForKey:v96 value:0 table:v97];

                                  if (!v98)
                                  {
                                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                                    v98 = String._bridgeToObjectiveC()();
                                  }

                                  [v94 setAccessibilityLabel:v98];

                                  v99 = v92();
                                  [v99 addTarget:v35 action:"stopButtonTapped" forControlEvents:64];

                                  v100 = v92();
                                  v101 = [v100 layer];

                                  [v101 setHitTestsAsOpaque:1];
                                  v102 = v397;
                                  v103 = v397();
                                  v104 = v92();
                                  [v103 addSubview:v104];

                                  v105 = v405;
                                  v106 = v405;
                                  [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
                                  [v106 setUserInteractionEnabled:0];

                                  v396 = v92;
                                  v107 = *((swift_isaMask & *v35) + 0x2A0);
                                  v108 = v106;
                                  v109 = v107(v105);
                                  v110 = (v92)(v109);
                                  v382 = v108;
                                  [v110 addSubview:v108];

                                  v111 = v393;
                                  v112 = v393;
                                  [v112 setTranslatesAutoresizingMaskIntoConstraints:0];
                                  [v112 setAlpha:*sub_10003674C()];
                                  [v112 setUserInteractionEnabled:0];
                                  v113 = *((swift_isaMask & *v35) + 0x2B8);
                                  v114 = v112;
                                  v394 = v114;
                                  v115 = v113(v111);
                                  v116 = (v102)(v115);
                                  [v116 addSubview:v114];

                                  v117 = (swift_isaMask & *v35) + 640;
                                  v118 = *((swift_isaMask & *v35) + 0x280);
                                  v119 = v118();
                                  [v119 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v120 = v118();
                                  v121 = sub_100036D38();
                                  v122 = *v121;
                                  v123 = *(v121 + 1);

                                  v124 = String._bridgeToObjectiveC()();

                                  [v120 setText:v124];

                                  v125 = v118();
                                  v126 = objc_opt_self();
                                  v127 = [v126 systemFontOfSize:*sub_100036E5C() weight:UIFontWeightMedium];
                                  [v125 setFont:v127];

                                  v128 = v118();
                                  [v128 setTextColor:*sub_100036DB0()];

                                  v129 = v118();
                                  [v129 setHidden:1];

                                  v130 = v118();
                                  v405 = v91;
                                  [v130 sizeToFit];

                                  v131 = v118();
                                  v388 = v118;
                                  v389 = v117;
                                  v132 = v131;
                                  v133 = [v131 layer];

                                  [v133 setAllowsHitTesting:0];
                                  v134 = v397;
                                  v135 = v397();
                                  v136 = v118();
                                  [v135 addSubview:v136];

                                  v137 = *(v35 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
                                  [v137 setTranslatesAutoresizingMaskIntoConstraints:0];
                                  v387 = objc_opt_self();
                                  v138 = [v387 whiteColor];
                                  [v137 setTextColor:v138];

                                  v139 = sub_100036A08();
                                  v140 = *v139;
                                  v141 = v139[1];

                                  v142 = String._bridgeToObjectiveC()();

                                  [v137 setText:v142];

                                  v143 = [v126 systemFontOfSize:*sub_100036A98() weight:UIFontWeightMedium];
                                  [v137 setFont:v143];

                                  [v137 sizeToFit];
                                  [v137 setHidden:1];
                                  v391 = v137;
                                  v144 = [v137 layer];
                                  [v144 setAllowsHitTesting:0];

                                  v145 = v134();
                                  [v145 addSubview:v137];

                                  v146 = (swift_isaMask & *v35) + 760;
                                  v147 = *((swift_isaMask & *v35) + 0x2F8);
                                  v148 = v147();
                                  v149 = v147;
                                  v150 = v146;
                                  v151 = v148;
                                  [v148 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v152 = v149();
                                  [v152 setAxis:0];

                                  v153 = v149();
                                  SBUISystemApertureInterItemSpacing();
                                  [v153 setSpacing:?];

                                  v154 = v149();
                                  [v154 setAlignment:3];

                                  v155 = v149();
                                  [v155 setHidden:1];

                                  v156 = v134();
                                  v157 = v149();
                                  v158 = v149;
                                  v392 = v149;
                                  v395 = v150;
                                  v159 = v157;
                                  [v156 addSubview:v157];

                                  v160 = objc_opt_self();
                                  v161 = [v160 sbui_systemApertureTextButtonConfiguration];
                                  v162 = sub_1000373DC();
                                  v163 = *v162;
                                  v164 = v162[1];

                                  v165 = String._bridgeToObjectiveC()();

                                  [v161 setTitle:v165];

                                  v384 = sub_1000119A0(0, &qword_100068DF8, SBUISystemApertureButton_ptr);
                                  v381 = v161;
                                  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
                                  v383 = sub_1000119A0(0, &unk_100068E00, UIAction_ptr);
                                  *(swift_allocObject() + 16) = v35;
                                  v166 = v35;
                                  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                                  v167 = UIButton.init(configuration:primaryAction:)();
                                  v168 = (*((swift_isaMask & *v166) + 0x318))(v167);
                                  v169 = (swift_isaMask & *v166) + 784;
                                  v170 = *((swift_isaMask & *v166) + 0x310);
                                  v171 = (v170)(v168);
                                  [v171 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v172 = v170();
                                  LODWORD(v173) = 1148846080;
                                  [v172 setContentHuggingPriority:0 forAxis:v173];

                                  v174 = v170();
                                  LODWORD(v175) = 1148846080;
                                  [v174 setContentCompressionResistancePriority:0 forAxis:v175];

                                  v176 = v170();
                                  v393 = v170;
                                  v390 = v169;
                                  v177 = v176;
                                  [v176 setEnabled:0];

                                  v178 = v158();
                                  v179 = v170();
                                  [v178 addArrangedSubview:v179];

                                  v180 = [v160 sbui_systemApertureTextButtonConfiguration];
                                  v181 = sub_1000374EC();
                                  v182 = *v181;
                                  v183 = v181[1];

                                  v184 = String._bridgeToObjectiveC()();

                                  [v180 setTitle:v184];

                                  v185 = v387;
                                  v186 = [v387 redColor];
                                  [v180 setBaseBackgroundColor:v186];

                                  v187 = [v185 redColor];
                                  [v180 setBaseForegroundColor:v187];

                                  v380 = v180;
                                  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
                                  *(swift_allocObject() + 16) = v166;
                                  v188 = v166;
                                  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                                  v189 = UIButton.init(configuration:primaryAction:)();
                                  v190 = (*((swift_isaMask & *v188) + 0x330))(v189);
                                  v191 = (swift_isaMask & *v188) + 808;
                                  v192 = *((swift_isaMask & *v188) + 0x328);
                                  v193 = (v192)(v190);
                                  [v193 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v194 = v192();
                                  LODWORD(v195) = 1148846080;
                                  [v194 setContentHuggingPriority:0 forAxis:v195];

                                  v196 = v192();
                                  LODWORD(v197) = 1148846080;
                                  [v196 setContentCompressionResistancePriority:0 forAxis:v197];

                                  v198 = v192();
                                  [v198 setEnabled:0];

                                  v199 = v192();
                                  v385 = v192;
                                  v386 = v191;
                                  v200 = v199;
                                  [v199 setRole:3];

                                  v201 = v392();
                                  v202 = v192();
                                  [v201 addArrangedSubview:v202];

                                  v203 = [v160 sbui_systemApertureTextButtonConfiguration];
                                  v204 = sub_1000375FC();
                                  v205 = *v204;
                                  v206 = v204[1];

                                  v207 = String._bridgeToObjectiveC()();

                                  [v203 setTitle:v207];

                                  v379 = v203;
                                  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
                                  *(swift_allocObject() + 16) = v188;
                                  v208 = v188;
                                  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                                  v209 = UIButton.init(configuration:primaryAction:)();
                                  v210 = (*((swift_isaMask & *v208) + 0x348))(v209);
                                  v211 = *((swift_isaMask & *v208) + 0x340);
                                  v212 = ((swift_isaMask & *v208) + 832);
                                  v213 = (v211)(v210);
                                  [v213 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v214 = v211();
                                  [v214 setEnabled:0];

                                  v387 = v212;
                                  v215 = v211();
                                  v406 = v211;
                                  v216 = v215;
                                  [v215 setHidden:1];

                                  v217 = v397;
                                  v218 = v397();
                                  v219 = v211();
                                  [v218 addSubview:v219];

                                  sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
                                  v220 = swift_allocObject();
                                  *(v220 + 16) = xmmword_100047E20;
                                  v221 = v220;
                                  v222 = v396;
                                  v223 = v396();
                                  v224 = [v223 topAnchor];

                                  v225 = v217();
                                  v226 = [v225 topAnchor];

                                  v227 = [v224 constraintEqualToAnchor:v226 constant:*sub_100036D10()];
                                  v221[4] = v227;
                                  v228 = v222();
                                  v229 = [v228 widthAnchor];

                                  v230 = [v229 constraintEqualToConstant:*sub_100036CEC()];
                                  v221[5] = v230;
                                  v231 = v222();
                                  v232 = [v231 heightAnchor];

                                  v233 = [v232 constraintEqualToConstant:*sub_100036D04()];
                                  v221[6] = v233;
                                  v234 = v222();
                                  v235 = [v234 trailingAnchor];

                                  v236 = v217;
                                  v237 = v217();
                                  v238 = [v237 trailingAnchor];

                                  v239 = [v235 constraintEqualToAnchor:v238 constant:-*sub_100036D24()];
                                  v221[7] = v239;
                                  v240 = v394;
                                  v241 = [(objc_class *)v394 topAnchor];
                                  v242 = v236();
                                  v243 = [v242 topAnchor];

                                  v244 = [v241 constraintEqualToAnchor:v243 constant:*sub_100036864()];
                                  v221[8] = v244;
                                  v245 = [(objc_class *)v240 widthAnchor];
                                  v246 = [v245 constraintEqualToConstant:*sub_100036E68()];

                                  v221[9] = v246;
                                  v247 = [(objc_class *)v240 heightAnchor];
                                  v248 = [v247 constraintEqualToConstant:*sub_100036E74()];

                                  v221[10] = v248;
                                  v249 = [(objc_class *)v240 leadingAnchor];
                                  v250 = v236();
                                  v251 = [v250 leadingAnchor];

                                  v384 = sub_100036848();
                                  v252 = [v249 constraintEqualToAnchor:v251 constant:*v384];

                                  v221[11] = v252;
                                  v253 = v402;
                                  v254 = [v402 bottomAnchor];
                                  v255 = v391;
                                  v256 = [v391 bottomAnchor];
                                  v257 = [v254 constraintEqualToAnchor:v256 constant:-25.0];

                                  v221[12] = v257;
                                  v258 = [v253 leadingAnchor];
                                  v259 = [v255 leadingAnchor];
                                  v260 = [v258 constraintEqualToAnchor:v259];

                                  v221[13] = v260;
                                  v261 = v403;
                                  v262 = [v403 bottomAnchor];
                                  v263 = [v255 bottomAnchor];
                                  v264 = [v262 constraintEqualToAnchor:v263 constant:-25.0];

                                  v221[14] = v264;
                                  v265 = [v261 leadingAnchor];
                                  v266 = [v253 trailingAnchor];
                                  v267 = [v265 constraintEqualToAnchor:v266];

                                  v221[15] = v267;
                                  v268 = v221;
                                  v269 = v388;
                                  v270 = v388();
                                  v271 = [v270 centerYAnchor];

                                  v272 = v394;
                                  v273 = [(objc_class *)v394 centerYAnchor];
                                  v274 = [v271 constraintEqualToAnchor:v273];

                                  v268[16] = v274;
                                  v275 = v269();
                                  v276 = [v275 leadingAnchor];

                                  v277 = [(objc_class *)v272 trailingAnchor];
                                  v278 = [v276 constraintEqualToAnchor:v277 constant:*sub_100036880()];

                                  v268[17] = v278;
                                  v279 = v269();
                                  v280 = [v279 trailingAnchor];

                                  v281 = v396;
                                  v282 = v396();
                                  v283 = [v282 leadingAnchor];

                                  v284 = -v50;
                                  v285 = [v280 constraintEqualToAnchor:v283 constant:v284];

                                  v268[18] = v285;
                                  v286 = v268;
                                  v287 = v391;
                                  v288 = [v391 bottomAnchor];
                                  v289 = v397;
                                  v290 = v397();
                                  v291 = [v290 topAnchor];

                                  v292 = [v288 constraintEqualToAnchor:v291 constant:*sub_100036A80()];
                                  v286[19] = v292;
                                  v293 = [v287 leadingAnchor];
                                  v294 = v289;
                                  v295 = v289();
                                  v296 = [v295 leadingAnchor];

                                  v297 = [v293 constraintEqualToAnchor:v296 constant:*v384];
                                  v286[20] = v297;
                                  v298 = [v287 trailingAnchor];
                                  v299 = v281();
                                  v300 = [v299 leadingAnchor];

                                  v301 = [v298 constraintEqualToAnchor:v300 constant:v284];
                                  v286[21] = v301;
                                  v302 = v392;
                                  v303 = v392();
                                  v304 = [v303 centerXAnchor];

                                  v305 = v294();
                                  v306 = [v305 centerXAnchor];

                                  v307 = [v304 constraintEqualToAnchor:v306];
                                  v286[22] = v307;
                                  v308 = v302();
                                  v309 = [v308 widthAnchor];

                                  v391 = sub_1000376E4();
                                  v310 = [v309 constraintEqualToConstant:*v391];

                                  v286[23] = v310;
                                  v311 = v302();
                                  v312 = [v311 topAnchor];

                                  v313 = v396();
                                  v314 = [v313 bottomAnchor];

                                  v389 = sub_1000376D0();
                                  v315 = [v312 constraintEqualToAnchor:v314 constant:*v389];

                                  v286[24] = v315;
                                  v316 = v393;
                                  v317 = v393();
                                  v318 = [v317 bottomAnchor];

                                  v319 = v302();
                                  v320 = [v319 bottomAnchor];

                                  v321 = [v318 constraintEqualToAnchor:v320];
                                  v286[25] = v321;
                                  v322 = v316();
                                  v323 = [v322 topAnchor];

                                  v324 = v302();
                                  v325 = [v324 topAnchor];

                                  v326 = [v323 constraintEqualToAnchor:v325];
                                  v286[26] = v326;
                                  v327 = v393();
                                  v328 = [v327 leadingAnchor];

                                  v329 = v302();
                                  v330 = [v329 leadingAnchor];

                                  v331 = [v328 constraintEqualToAnchor:v330];
                                  v286[27] = v331;
                                  v332 = v385;
                                  v333 = v385();
                                  v334 = [v333 bottomAnchor];

                                  v335 = v302();
                                  v336 = [v335 bottomAnchor];

                                  v337 = [v334 constraintEqualToAnchor:v336];
                                  v286[28] = v337;
                                  v338 = v332();
                                  v339 = [v338 topAnchor];

                                  v340 = v302();
                                  v341 = [v340 topAnchor];

                                  v342 = [v339 constraintEqualToAnchor:v341];
                                  v286[29] = v342;
                                  v343 = v332();
                                  v344 = [v343 trailingAnchor];

                                  v345 = v302();
                                  v346 = v396;
                                  v347 = v345;
                                  v348 = [v345 trailingAnchor];

                                  v349 = [v344 constraintEqualToAnchor:v348];
                                  v286[30] = v349;
                                  v350 = v406;
                                  v351 = v406();
                                  v352 = [v351 centerXAnchor];

                                  v353 = v397();
                                  v354 = [v353 centerXAnchor];

                                  v355 = [v352 constraintEqualToAnchor:v354];
                                  v286[31] = v355;
                                  v356 = v350();
                                  v357 = [v356 topAnchor];

                                  v358 = v346();
                                  v359 = [v358 bottomAnchor];

                                  v360 = [v357 constraintEqualToAnchor:v359 constant:*v389];
                                  v286[32] = v360;
                                  v361 = v350();
                                  v362 = [v361 widthAnchor];

                                  v363 = [v362 constraintEqualToConstant:*v391];
                                  v286[33] = v363;
                                  (*((swift_isaMask & *v208) + 0x438))(v286);
                                  v364 = objc_opt_self();
                                  (*((swift_isaMask & *v208) + 0x430))();
                                  sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
                                  isa = Array._bridgeToObjectiveC()().super.isa;

                                  [v364 activateConstraints:isa];

                                  v366 = [v208 view];
                                  if (v366)
                                  {
                                    v367 = v366;
                                    v368 = v346();
                                    [v367 bringSubviewToFront:v368];

                                    return;
                                  }

                                  goto LABEL_41;
                                }

LABEL_40:
                                __break(1u);
LABEL_41:
                                __break(1u);
                                return;
                              }

LABEL_39:
                              __break(1u);
                              goto LABEL_40;
                            }

LABEL_38:
                            __break(1u);
                            goto LABEL_39;
                          }

LABEL_37:
                          __break(1u);
                          goto LABEL_38;
                        }

LABEL_36:
                        __break(1u);
                        goto LABEL_37;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_34;
              }

              v373 = v402;
              v369 = v403;
              v372 = v398;
              v371 = v399;
              v370 = v405;
            }

            else
            {
              v370 = v398;
              v369 = v399;
              v371 = v402;
              v372 = v403;
              v373 = v400;
            }
          }
        }
      }
    }
  }

  v374 = sub_1000301D0();
  (*(v5 + 16))(v9, v374, v4);
  v375 = Logger.logObject.getter();
  v376 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v375, v376))
  {
    v377 = swift_slowAlloc();
    v378 = swift_slowAlloc();
    v408[0] = v378;
    *v377 = 136315138;
    *(v377 + 4) = sub_100010E34(0x4C64694477656976, 0xED0000292864616FLL, v408);
    _os_log_impl(&_mh_execute_header, v375, v376, "%s error loading sub views", v377, 0xCu);
    sub_1000114A8(v378);
  }

  (*(v5 + 8))(v9, v4);
}

uint64_t sub_100019E00()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000301D0();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100010E34(0xD000000000000020, 0x800000010004C9E0, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_1000114A8(v11);
  }

  v12 = (*(v3 + 8))(v6, v2);
  if ((*((swift_isaMask & *v1) + 0x2C8))(v12) > 6u)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_10001F57C();
  if (result)
  {
    return sub_100025FD8();
  }

  return result;
}

void sub_10001A17C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(**(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 152))(v5);
  if (v8)
  {
    v9 = v8;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setHidden:1];
    [v9 sizeToFit];
    v10 = [v9 layer];
    [v10 setCornerRadius:*sub_10003695C()];

    sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100047E30;
    v12 = [v9 topAnchor];
    v13 = [*(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel) bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:*sub_100036944()];

    *(v11 + 32) = v14;
    v15 = [v9 centerXAnchor];
    v16 = *((swift_isaMask & *v1) + 0x3B8);
    v17 = v16();
    v18 = [v17 centerXAnchor];

    v19 = [v15 constraintEqualToAnchor:v18];
    *(v11 + 40) = v19;
    v20 = [v9 heightAnchor];
    v21 = [v20 constraintEqualToConstant:*sub_100036910()];

    *(v11 + 48) = v21;
    v22 = [v9 widthAnchor];

    v23 = [v22 constraintEqualToConstant:*sub_100036928()];
    *(v11 + 56) = v23;
    (*((swift_isaMask & *v1) + 0x3F0))(v11);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100047E40;
    v25 = v16();
    v26 = [v25 heightAnchor];

    v27 = [v26 constraintEqualToConstant:*sub_1000368F4()];
    *(v24 + 32) = v27;
    (*((swift_isaMask & *v1) + 0x450))(v24);
    v28 = objc_opt_self();
    (*((swift_isaMask & *v1) + 0x448))();
    sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 activateConstraints:isa];

    (*((swift_isaMask & *v1) + 0x3E8))();
    v36 = Array._bridgeToObjectiveC()().super.isa;

    [v28 activateConstraints:v36];

    v30 = v36;
  }

  else
  {
    v31 = sub_1000301D0();
    (*(v3 + 16))(v7, v31, v2);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D520, &v37);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s nil cameraView", v34, 0xCu);
      sub_1000114A8(v35);
    }

    (*(v3 + 8))(v7, v2);
  }
}

void sub_10001A820()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000301D0();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "refreshCurrentApplication", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  v12 = (*(**(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 152))(v11);
  if (v12)
  {
    v13 = v12;
    v14 = (*((swift_isaMask & *v1) + 0x3B8))();
    [v14 addSubview:v13];

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 invalidateIntrinsicContentSize];

      v17 = [v1 view];
      if (v17)
      {
        v18 = v17;
        [v17 setNeedsLayout];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10001AA74(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v61 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView);
  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView);
    if (v13)
    {
      v14 = *(v2 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView);
      if (v14)
      {
        v15 = *(v2 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView);
        if (v15)
        {
          v16 = *(v2 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView);
          if (v16)
          {
            v66 = a1;
            v67 = *((swift_isaMask & *v2) + 0x2B0);
            v70 = v16;
            v69 = v15;
            v17 = v14;
            v18 = v13;
            v68 = v12;
            v19 = v67();
            if (v19)
            {
              v20 = v19;
              v21 = (*((swift_isaMask & *v2) + 0x298))();
              if (v21)
              {
                v67 = v21;
                v22 = sub_1000301D0();
                (*(v5 + 16))(v11, v22, v4);
                v23 = v2;
                v24 = Logger.logObject.getter();
                v25 = static os_log_type_t.default.getter();

                LODWORD(v65) = v25;
                if (os_log_type_enabled(v24, v25))
                {
                  v26 = swift_slowAlloc();
                  v63 = v18;
                  v27 = v26;
                  v62 = swift_slowAlloc();
                  aBlock = v62;
                  *v27 = 136315650;
                  *(v27 + 4) = sub_100010E34(0xD00000000000001DLL, 0x800000010004CA10, &aBlock);
                  *(v27 + 12) = 2080;
                  v28 = *((swift_isaMask & *v23) + 0x1A8);
                  v61 = v24;
                  v71 = v28();
                  type metadata accessor for SBUISystemApertureLayoutMode(0);
                  v29 = String.init<A>(describing:)();
                  v31 = v20;
                  v32 = v17;
                  v33 = sub_100010E34(v29, v30, &aBlock);

                  *(v27 + 14) = v33;
                  v17 = v32;
                  v20 = v31;
                  *(v27 + 22) = 2080;
                  LOBYTE(v71) = (*((swift_isaMask & *v23) + 0x2C8))(v34);
                  v35 = String.init<A>(describing:)();
                  v37 = sub_100010E34(v35, v36, &aBlock);

                  *(v27 + 24) = v37;
                  v38 = v61;
                  _os_log_impl(&_mh_execute_header, v61, v65, "%s self.activeLayoutMode = %s, self.recordingState = %s", v27, 0x20u);
                  swift_arrayDestroy();

                  v18 = v63;
                }

                else
                {
                }

                (*(v5 + 8))(v11, v4);
                v64 = v20;
                v46 = swift_allocObject();
                v46[2] = v23;
                v47 = v23;
                v48 = v67;
                v46[3] = v67;
                v46[4] = v20;
                v50 = v69;
                v49 = v70;
                v51 = v68;
                v46[5] = v70;
                v46[6] = v51;
                v46[7] = v17;
                v46[8] = v50;
                v46[9] = v18;
                v76 = sub_100029E44;
                v77 = v46;
                aBlock = _NSConcreteStackBlock;
                v73 = 1107296256;
                v74 = sub_10001D7A4;
                v75 = &unk_10005D940;
                v52 = _Block_copy(&aBlock);
                v70 = v49;
                v69 = v50;
                v65 = v17;
                v53 = v18;
                v54 = v51;
                v55 = v47;
                v56 = v48;
                v57 = v64;

                v58 = swift_allocObject();
                *(v58 + 16) = v55;
                v76 = sub_100029E58;
                v77 = v58;
                aBlock = _NSConcreteStackBlock;
                v73 = 1107296256;
                v74 = sub_10001D7A4;
                v75 = &unk_10005D990;
                v59 = _Block_copy(&aBlock);
                v60 = v55;

                [v66 animateAlongsideTransition:v52 completion:v59];
                _Block_release(v59);
                _Block_release(v52);

                return;
              }

              v40 = v18;
              v18 = v17;
              v17 = v69;
              v39 = v70;
            }

            else
            {
              v39 = v69;
              v20 = v70;
              v40 = v68;
            }
          }
        }
      }
    }
  }

  v41 = sub_1000301D0();
  (*(v5 + 16))(v9, v41, v4);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_100010E34(0xD00000000000001DLL, 0x800000010004CA10, &aBlock);
    _os_log_impl(&_mh_execute_header, v42, v43, "%s error loading sub views", v44, 0xCu);
    sub_1000114A8(v45);
  }

  (*(v5 + 8))(v9, v4);
}

void sub_10001B1D4(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v205 = a8;
  v206 = a6;
  v207 = a7;
  v208 = a5;
  v210 = a2;
  v211 = a4;
  v209 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v205 - v16;
  v18 = &swift_isaMask;
  v19 = *((swift_isaMask & *a1) + 0x1A8);
  v20 = v19(v15);
  if (v20 == 4)
  {
    if ((*((swift_isaMask & *a1) + 0x2C8))() == 4)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = sub_10001F57C();
    if (v20)
    {
      v22 = sub_1000301D0();
      (*(v10 + 16))(v17, v22, v9);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "pause system session", v25, 2u);
      }

      (*(v10 + 8))(v17, v9);
      v26 = [objc_opt_self() sharedInstance];
      [v26 pauseCurrentSystemSession];

      (*((swift_isaMask & *a1) + 0x2D0))(5);
      v27 = sub_1000372C0();
      v28 = *v27;
      v29 = *(v27 + 1);

      v30 = String._bridgeToObjectiveC()();

      [v210 setState:v30];

      v31 = sub_10003727C();
      v32 = *v31;
      v33 = *(v31 + 1);

      v34 = String._bridgeToObjectiveC()();

      v18 = &swift_isaMask;
      [v209 setState:v34];
    }
  }

LABEL_9:
  v35 = v19(v20);
  if (v35 > 2)
  {
    if (v35 != 3)
    {
      v37 = v211;
      if (v35 != 4)
      {
        return;
      }

      if (sub_10001F1E0() & 1) != 0 && (sub_10001F57C())
      {
        v38 = 1;
        (*((swift_isaMask & *a1) + 0x4B0))(1);
        v39 = v206;
      }

      else
      {
        v43 = sub_10001F1E0();
        v39 = v206;
        if (v43 & 1) != 0 && (sub_10001F664())
        {
          v44 = (*((swift_isaMask & *a1) + 0x280))();
          [v44 setHidden:1];

          [v209 setHidden:1];
          v38 = 0;
        }

        else
        {
          v45 = sub_10001F664();
          v46 = (*((swift_isaMask & *a1) + 0x280))(v45);
          [v46 setHidden:0];

          [v209 setHidden:0];
          v38 = 1;
        }
      }

      [v205 setHidden:{v38, v205}];
      [v207 setHidden:v38];
      [v37 setHidden:1];
      [v208 setHidden:1];
      [v39 setHidden:1];
      [v210 setHidden:0];
      v216 = (*((swift_isaMask & *a1) + 0x2E0))([*(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel) setHidden:0]);
      v215 = 2;
      sub_100029E74();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v214[0] == v212 && v214[1] == v213)
      {
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v48 & 1) == 0)
        {
          goto LABEL_108;
        }
      }

      v49 = *((swift_isaMask & *a1) + 0x2C8);
      v50 = v49(v47);
      if (v50 > 3 && v50 > 5 && v50 != 6)
      {
        goto LABEL_82;
      }

      v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v99)
      {
        goto LABEL_108;
      }

      if (v49(v100) != 6)
      {
        v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v143 & 1) == 0)
        {
          (*(**(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 520))(v144);
          sub_10001DC64();
        }
      }

      else
      {
LABEL_82:
      }

LABEL_108:
      v58 = objc_opt_self();
      (*((swift_isaMask & *a1) + 0x400))();
      v145 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v58 deactivateConstraints:isa];

      (*((swift_isaMask & *a1) + 0x418))();
      v147 = Array._bridgeToObjectiveC()().super.isa;

      [v58 deactivateConstraints:v147];

      v148 = ((swift_isaMask & *a1) + 976);
      v36 = *((swift_isaMask & *a1) + 0x3D0);
      v149 = v36();
      if (v149 >> 62)
      {
        v150 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v150 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v150)
      {
        goto LABEL_149;
      }

      v210 = v36;
      v211 = v148;
      v208 = v145;
      v209 = v58;
      sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
      v152 = swift_allocObject();
      *(v152 + 16) = xmmword_100047E30;
      v153 = [a1 view];
      if (v153)
      {
        v154 = v153;
        v36 = &selRef_setElementNeedsUpdate;
        v155 = [v153 widthAnchor];

        v156 = *((swift_isaMask & *a1) + 0x3B8);
        v157 = v156();
        v158 = [v157 widthAnchor];

        v159 = [v155 constraintEqualToAnchor:v158];
        *(v152 + 32) = v159;
        v160 = [a1 view];
        if (v160)
        {
          v161 = v160;
          v162 = [v160 heightAnchor];

          v163 = v156();
          v58 = [v163 heightAnchor];

          v164 = [v162 constraintEqualToAnchor:v58];
          *(v152 + 40) = v164;
          v165 = v156();
          v166 = [v165 widthAnchor];

          v167 = [v166 constraintEqualToConstant:*sub_1000366B0()];
          *(v152 + 48) = v167;
          *(v152 + 56) = (*((swift_isaMask & *a1) + 0x3A0))();
          v168 = (*((swift_isaMask & *a1) + 0x3D8))(v152);
          v169 = (v210)(v168);
          v170 = v169;
          if (!(v169 >> 62))
          {
            v171 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v171)
            {
              goto LABEL_115;
            }

            goto LABEL_148;
          }

          goto LABEL_147;
        }

LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    v41 = [objc_msgSend(a1 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    if (v41)
    {
      v42 = [v41 isUserInitiated];
    }

    else
    {
      v42 = 0;
    }

    v51 = *((swift_isaMask & *a1) + 0x2C8);
    v52 = v51();
    if (v52 <= 5 || v52 == 6)
    {
      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v93 & v42)
      {
LABEL_74:
        v94 = sub_10002B924();
        v95 = *((swift_isaMask & *a1) + 0x238);
        v96 = *v94;
        v97 = v95();
        (*((swift_isaMask & *v96) + 0xF8))(v97);

LABEL_173:

        return;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_74;
      }
    }

    [v211 setHidden:{1, v205}];
    if (sub_10001EB00())
    {
      [v208 setHidden:0];
      [v206 setHidden:0];
    }

    [v207 setHidden:1];
    [v210 setHidden:1];
    [v209 setHidden:1];
    v98 = (*((swift_isaMask & *a1) + 0x280))([*(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel) setHidden:1]);
    [v98 setHidden:1];

    if (v51() == 1)
    {
    }

    else
    {
      v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v101 & 1) == 0)
      {
        v103 = sub_10001F1E0();
        v102 = v208;
        if ((v103 & 1) == 0)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      }
    }

    sub_10002067C();
    v102 = v208;
LABEL_87:
    (*((swift_isaMask & *a1) + 0x4B0))(0);
LABEL_88:
    if (sub_10001F664())
    {
      (*(**(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 528))();
    }

    v58 = objc_opt_self();
    (*((swift_isaMask & *a1) + 0x3D0))();
    v104 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
    v105 = Array._bridgeToObjectiveC()().super.isa;

    [v58 deactivateConstraints:v105];

    (*((swift_isaMask & *a1) + 0x418))();
    v106 = Array._bridgeToObjectiveC()().super.isa;

    [v58 deactivateConstraints:v106];

    v107 = ((swift_isaMask & *a1) + 1024);
    v108 = *((swift_isaMask & *a1) + 0x400);
    v109 = v108();
    if (v109 >> 62)
    {
      v175 = _CocoaArrayWrapper.endIndex.getter();

      if (v175)
      {
        goto LABEL_163;
      }
    }

    else
    {
      v110 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v110)
      {
        goto LABEL_163;
      }
    }

    v210 = v108;
    v211 = v107;
    v208 = v104;
    v209 = v58;
    sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_100047E30;
    v113 = [v102 centerXAnchor];
    v36 = &selRef_setElementNeedsUpdate;
    v114 = [a1 view];
    if (!v114)
    {
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v115 = v114;
    v116 = [v114 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    v117 = [v116 centerXAnchor];
    v118 = [v113 constraintEqualToAnchor:v117];

    *(v112 + 32) = v118;
    v119 = [v102 centerYAnchor];
    v120 = [a1 view];
    if (!v120)
    {
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    v121 = v120;
    v122 = [v120 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    v123 = [v122 centerYAnchor];
    v124 = [v119 constraintEqualToAnchor:v123];

    *(v112 + 40) = v124;
    v125 = v206;
    v126 = [v206 centerXAnchor];
    v127 = [a1 view];
    if (!v127)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v128 = v127;
    v129 = [v127 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    v130 = [v129 centerXAnchor];
    v131 = [v126 constraintEqualToAnchor:v130];

    *(v112 + 48) = v131;
    v132 = [v125 centerYAnchor];
    v133 = [a1 view];
    if (!v133)
    {
LABEL_185:
      __break(1u);
      return;
    }

    v134 = v133;
    v135 = [v133 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    v136 = [v135 centerYAnchor];
    v58 = [v132 constraintEqualToAnchor:v136];

    *(v112 + 56) = v58;
    v137 = (*((swift_isaMask & *a1) + 0x408))(v112);
    v138 = (v210)(v137);
    v139 = v138;
    if (v138 >> 62)
    {
      goto LABEL_161;
    }

    v140 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v140)
    {
      goto LABEL_98;
    }

LABEL_162:

    v58 = v209;
    v108 = v210;
LABEL_163:
    v199 = (v108)(v111);
    if (v199 >> 62)
    {
      v203 = v199;
      v204 = _CocoaArrayWrapper.endIndex.getter();
      v199 = v203;
      if (!v204)
      {
        goto LABEL_173;
      }
    }

    else if (!*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_173;
    }

    if ((v199 & 0xC000000000000001) != 0)
    {
      v200 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      v200 = *(v199 + 32);
    }

    v201 = v200;

    v202 = [v201 isActive];

    if ((v202 & 1) == 0)
    {
      v108();
LABEL_170:
      v180.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v58 activateConstraints:{v180.super.isa, v205}];
LABEL_171:
    }

    return;
  }

  if (v35 == 1)
  {
    v40 = (*((swift_isaMask & *a1) + 0x2C8))();
    if (v40 <= 3 || v40 <= 5 || v40 == 6)
    {
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v80 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v81 = sub_1000301D0();
    (*(v10 + 16))(v14, v81, v9);
    v82 = a1;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v214[0] = v87;
      *v85 = 136315394;
      *(v85 + 4) = sub_100010E34(0xD00000000000001DLL, 0x800000010004CA10, v214);
      *(v85 + 12) = 2112;
      *(v85 + 14) = v82;
      *v86 = a1;
      v88 = v82;
      _os_log_impl(&_mh_execute_header, v83, v84, "%s self=%@ inactive and recording completed, ending session", v85, 0x16u);
      sub_100011940(v86, &qword_1000697C0, qword_100047CD0);

      sub_1000114A8(v87);
    }

    (*(v10 + 8))(v14, v9);
    v89 = sub_10002B924();
    v90 = *((swift_isaMask & *v82) + 0x238);
    v91 = *v89;
    v92 = v90();
    (*((swift_isaMask & *v91) + 0xF8))(v92);

    goto LABEL_173;
  }

  v36 = v211;
  if (v35 == 2)
  {
    if ((*((swift_isaMask & *a1) + 0x2C8))([v211 setHidden:0]) == 1)
    {
    }

    else
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v53 & 1) == 0)
      {
        if (sub_10001F1E0())
        {
          (*((swift_isaMask & *a1) + 0x4B0))(0);
        }

LABEL_51:
        if (sub_10001F664())
        {
          (*(**(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 528))();
        }

        v54 = objc_opt_self();
        (*((swift_isaMask & *a1) + 0x3D0))();
        v55 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
        v56 = Array._bridgeToObjectiveC()().super.isa;

        [v54 deactivateConstraints:v56];

        (*((swift_isaMask & *a1) + 0x400))();
        v57 = Array._bridgeToObjectiveC()().super.isa;

        [v54 deactivateConstraints:v57];

        v58 = ((swift_isaMask & *a1) + 1048);
        v59 = *((swift_isaMask & *a1) + 0x418);
        v60 = v59();
        if (v60 >> 62)
        {
          goto LABEL_129;
        }

        v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v61)
        {
          goto LABEL_55;
        }

        while (1)
        {
LABEL_136:
          v170 = a1;
          v176 = (v59)(v62);
          if (v176 >> 62)
          {
            v170 = v176;
            v181 = _CocoaArrayWrapper.endIndex.getter();
            v176 = v170;
            if (!v181)
            {
              goto LABEL_173;
            }
          }

          else if (!*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_173;
          }

          if ((v176 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v177 = *(v176 + 32);
LABEL_141:
            v178 = v177;

            v179 = [v178 isActive];

            if (v179)
            {
              return;
            }

            v59();
            v180.super.isa = Array._bridgeToObjectiveC()().super.isa;

            [v54 activateConstraints:{v180.super.isa, v205}];
            goto LABEL_171;
          }

          __break(1u);
LABEL_147:
          v171 = _CocoaArrayWrapper.endIndex.getter();
          if (!v171)
          {
LABEL_148:

            v58 = v209;
            v36 = v210;
LABEL_149:
            v182 = (*((swift_isaMask & *a1) + 0x3A0))(v151);
            v183 = [a1 view];
            if (!v183)
            {
              goto LABEL_177;
            }

            v184 = v183;
            v185 = [v183 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

            [v185 layoutFrame];
            v187 = v186;
            v189 = v188;
            v191 = v190;
            v193 = v192;

            v217.origin.x = v187;
            v217.origin.y = v189;
            v217.size.width = v191;
            v217.size.height = v193;
            [v182 setConstant:CGRectGetHeight(v217)];

            v139 = a1;
            v194 = v36();
            if (v194 >> 62)
            {
              v139 = v194;
              v198 = _CocoaArrayWrapper.endIndex.getter();
              v194 = v139;
              if (!v198)
              {
                goto LABEL_173;
              }
            }

            else if (!*((v194 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_173;
            }

            if ((v194 & 0xC000000000000001) != 0)
            {
              v195 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v194 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_161:
                v140 = _CocoaArrayWrapper.endIndex.getter();
                if (v140)
                {
LABEL_98:
                  v55 = 0;
                  v59 = (v139 & 0xC000000000000001);
                  v18 = &selRef_setElementNeedsUpdate;
                  v54 = 1144750080;
                  while (1)
                  {
                    if (v59)
                    {
                      v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v55 >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_128;
                      }

                      v141 = *(v139 + 8 * v55 + 32);
                    }

                    v58 = v141;
                    v36 = (v55 + 1);
                    if (__OFADD__(v55, 1))
                    {
                      goto LABEL_127;
                    }

                    LODWORD(v142) = 1144750080;
                    [v141 setPriority:v142];

                    ++v55;
                    if (v36 == v140)
                    {
                      goto LABEL_162;
                    }
                  }
                }

                goto LABEL_162;
              }

              v195 = *(v194 + 32);
            }

            v196 = v195;

            v197 = [v196 isActive];

            if (v197)
            {
              return;
            }

            v36();
            goto LABEL_170;
          }

LABEL_115:
          v18 = 0;
          v55 = v170 & 0xFFFFFFFFFFFFFF8;
          v59 = &selRef_setElementNeedsUpdate;
          v54 = 1144750080;
          while (1)
          {
            if ((v170 & 0xC000000000000001) != 0)
            {
              v172 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v18 >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_126;
              }

              v172 = *(v170 + 8 * v18 + 32);
            }

            v58 = v172;
            v36 = (v18 + 1);
            if (__OFADD__(v18, 1))
            {
              break;
            }

            LODWORD(v173) = 1144750080;
            [v172 setPriority:v173];

            ++v18;
            if (v36 == v171)
            {
              goto LABEL_148;
            }
          }

          while (1)
          {
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
            v174 = _CocoaArrayWrapper.endIndex.getter();

            if (v174)
            {
              break;
            }

LABEL_55:
            v209 = v59;
            v210 = v58;
            v208 = v55;
            v63 = v18;
            sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
            v64 = swift_allocObject();
            *(v64 + 16) = xmmword_100047E50;
            v65 = [v36 centerXAnchor];
            v66 = [a1 view];
            if (!v66)
            {
              goto LABEL_178;
            }

            v67 = v66;
            v68 = [v66 centerXAnchor];

            v69 = [v65 constraintEqualToAnchor:v68];
            *(v64 + 32) = v69;
            v70 = [v36 centerYAnchor];
            v71 = [a1 view];
            if (!v71)
            {
              goto LABEL_180;
            }

            v72 = v71;
            v211 = v54;
            v58 = [v71 centerYAnchor];

            v73 = [v70 constraintEqualToAnchor:v58];
            *(v64 + 40) = v73;
            v74 = (*((*v63 & *a1) + 0x420))(v64);
            v75 = (v209)(v74);
            v76 = v75;
            if (v75 >> 62)
            {
              v77 = _CocoaArrayWrapper.endIndex.getter();
              if (!v77)
              {
LABEL_135:

                v58 = v210;
                v54 = v211;
                v59 = v209;
                goto LABEL_136;
              }
            }

            else
            {
              v77 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v77)
              {
                goto LABEL_135;
              }
            }

            v18 = 0;
            v59 = (v76 & 0xC000000000000001);
            v55 = &selRef_setElementNeedsUpdate;
            v54 = 1144750080;
            while (1)
            {
              if (v59)
              {
                v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v18 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_125;
                }

                v78 = *(v76 + 8 * v18 + 32);
              }

              v58 = v78;
              v36 = (v18 + 1);
              if (__OFADD__(v18, 1))
              {
                break;
              }

              LODWORD(v79) = 1144750080;
              [v78 setPriority:v79];

              ++v18;
              if (v36 == v77)
              {
                goto LABEL_135;
              }
            }

            __break(1u);
          }
        }

        v177 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_141;
      }
    }

    sub_10002067C();
    goto LABEL_51;
  }
}

uint64_t sub_10001D7A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10001D804(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    v10 = *((swift_isaMask & *a2) + 0x1A8);
    if (v10() == 3 || (result = v10(), result == 2))
    {
      v11 = (*((swift_isaMask & *a2) + 0x2C8))();
      if (v11 <= 3 || v11 > 5 || v11 == 4)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
      }

      v20 = v10;
      v13 = sub_1000301D0();
      (*(v5 + 16))(v8, v13, v4);
      v14 = a2;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = v20();

        _os_log_impl(&_mh_execute_header, v15, v16, "resume system session in layout mode=%ld", v17, 0xCu);
      }

      else
      {

        v15 = v14;
      }

      (*(v5 + 8))(v8, v4);
      v18 = [objc_opt_self() sharedInstance];
      [v18 resumeCurrentSystemSession];

      return (*((swift_isaMask & v14->isa) + 0x2D0))(4);
    }
  }

  return result;
}

void sub_10001DC64()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v48 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview);
  v12 = (*(*v11 + 152))(v8);
  if (v12)
  {
    v13 = v12;
    v14 = (*(*v11 + 200))();
    v50 = v13;
    if (v14)
    {

      v15 = sub_1000301D0();
      (*(v3 + 16))(v7, v15, v2);
      v16 = v13;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v49 = v16;
        v20 = v19;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v51 = v22;
        *v20 = 136315394;
        *(v20 + 4) = sub_100010E34(0xD00000000000001BLL, 0x800000010004D500, &v51);
        *(v20 + 12) = 2112;
        *(v20 + 14) = v49;
        *v21 = v13;
        v23 = v49;
        _os_log_impl(&_mh_execute_header, v17, v18, "%s adding cameraView=%@ to customView", v20, 0x16u);
        sub_100011940(v21, &qword_1000697C0, qword_100047CD0);

        sub_1000114A8(v22);

        v16 = v49;
      }

      (*(v3 + 8))(v7, v2);
      v24 = objc_opt_self();
      (*((swift_isaMask & *v1) + 0x448))();
      sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v24 activateConstraints:isa];

      (*((swift_isaMask & *v1) + 0x3E8))();
      v26 = Array._bridgeToObjectiveC()().super.isa;

      [v24 activateConstraints:v26];

      [v16 setHidden:0];
      v27 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
      v28 = sub_100036B4C();
      v29 = *v28;
      v30 = v28[1];

      v31 = String._bridgeToObjectiveC()();

      [v27 setText:v31];
    }

    else
    {
      v32 = sub_1000301D0();
      (*(v3 + 16))(v10, v32, v2);
      v33 = v13;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v49 = v33;
        v37 = v36;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v51 = v39;
        *v37 = 136315394;
        *(v37 + 4) = sub_100010E34(0xD00000000000001BLL, 0x800000010004D500, &v51);
        *(v37 + 12) = 2112;
        *(v37 + 14) = v49;
        *v38 = v13;
        v40 = v49;
        _os_log_impl(&_mh_execute_header, v34, v35, "%s removing cameraView=%@ from customView", v37, 0x16u);
        sub_100011940(v38, &qword_1000697C0, qword_100047CD0);

        sub_1000114A8(v39);

        v33 = v49;
      }

      (*(v3 + 8))(v10, v2);
      [v33 setHidden:1];
      v41 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
      v42 = sub_100036B4C();
      v43 = *v42;
      v44 = v42[1];

      v45 = String._bridgeToObjectiveC()();

      [v41 setText:v45];

      v46 = objc_opt_self();
      (*((swift_isaMask & *v1) + 0x448))();
      sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
      v47 = Array._bridgeToObjectiveC()().super.isa;

      [v46 deactivateConstraints:v47];

      (*((swift_isaMask & *v1) + 0x3E8))();
      v31 = Array._bridgeToObjectiveC()().super.isa;

      [v46 deactivateConstraints:v31];
    }
  }
}

void sub_10001E370()
{
  v1 = v0;
  if (sub_10001F57C())
  {
    v2 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
    v3 = sub_100036A08();
    v4 = *v3;
    v5 = v3[1];

    v6 = String._bridgeToObjectiveC()();

    [v2 setText:v6];
  }

  if (sub_10001F664())
  {
    (*((swift_isaMask & *v1) + 0x2E0))();
    sub_100029E74();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v15 == v13 && v16 == v14)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
LABEL_9:
        sub_100020AD4();
        v8 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
        v9 = sub_100036B4C();
        v10 = *v9;
        v11 = v9[1];

        v12 = String._bridgeToObjectiveC()();

        [v8 setText:v12];

        return;
      }
    }

    sub_10001EC98();
    goto LABEL_9;
  }
}

uint64_t sub_10001E534(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_10002B17C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005E0C0;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10001E800(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (*((swift_isaMask & *a1) + 0x2E0))(v7);
  v22 = a2;
  sub_10002B188();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v11 = sub_1000301D0();
    (*(v5 + 16))(v9, v11, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v14 = 136315394;
      *(v14 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D650, &v21);
      *(v14 + 12) = 2080;
      v15 = SessionType.rawValue.getter(a2);
      v17 = sub_100010E34(v15, v16, &v21);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s with session type %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v9, v4);
    v18 = (*((swift_isaMask & *a1) + 0x2E8))(a2);
    return (*((swift_isaMask & *a1) + 0x538))(v18);
  }

  return result;
}

uint64_t sub_10001EB00()
{
  if (sub_10001F664())
  {
    if ((*((swift_isaMask & *v0) + 0x2C8))() == 4)
    {
      v1 = 1;
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v1 = 0;
  }

  return (sub_10001F57C() | v1) & 1;
}

void sub_10001EC98()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A820();
  v7 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview);
  v8.n128_f64[0] = sub_10002B0CC();
  v9 = (*(*v7 + 536))(v8);
  v10 = (*(*v7 + 152))(v9);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1000301D0();
    (*(v3 + 16))(v6, v12, v2);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v25 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v27 = v20;
      *v17 = 136315394;
      *(v17 + 4) = sub_100010E34(0xD000000000000014, 0x800000010004D630, &v27);
      *(v17 + 12) = 2112;
      *(v17 + 14) = v13;
      *v19 = v11;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s adding cameraView=%@ to customView", v17, 0x16u);
      sub_100011940(v19, &qword_1000697C0, qword_100047CD0);

      sub_1000114A8(v20);

      v22 = (*(v26 + 8))(v6, v25);
    }

    else
    {

      v22 = (*(v3 + 8))(v6, v2);
    }

    v23 = (*((swift_isaMask & *v1) + 0x3B8))(v22);
    [v23 addSubview:v13];

    sub_10001A17C();
    (*(*v7 + 520))();
  }
}

uint64_t sub_10001EFF8()
{
  v1 = objc_opt_self();
  (*((swift_isaMask & *v0) + 0x448))();
  sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 deactivateConstraints:isa];

  (*((swift_isaMask & *v0) + 0x3E8))();
  v3 = Array._bridgeToObjectiveC()().super.isa;

  [v1 deactivateConstraints:v3];

  v4 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview);
  v5 = (*(*v4 + 528))();
  v6 = (*(*v4 + 152))(v5);
  if (v6)
  {
    v7 = v6;
    [v6 removeFromSuperview];
  }

  return (*(*v4 + 544))();
}

uint64_t sub_10001F1E0()
{
  v1 = *((swift_isaMask & *v0) + 0x2C8);
  if (v1() == 1)
  {
    v2 = 1;
LABEL_11:

    return v2 & 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    if ((v1)(v4) == 2)
    {
      v2 = 1;
      goto LABEL_11;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      if ((v1)(v6) == 3)
      {
        v2 = 1;
      }

      else
      {
        v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      goto LABEL_11;
    }
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_10001F57C()
{
  (*((swift_isaMask & *v0) + 0x2E0))();
  v1 = 1;
  sub_100029E74();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6 != v4 || v7 != v5)
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t sub_10001F664()
{
  v1 = *((swift_isaMask & *v0) + 0x2E0);
  v1();
  sub_100029E74();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v9 == v7 && v10 == v8)
  {

    v5 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      v5 = 1;
    }

    else
    {
      (v1)(v4);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v9 == v7 && v10 == v8)
      {
        v5 = 1;
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  return v5 & 1;
}

void sub_10001F814()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v37 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - v11;
  v13 = (*((swift_isaMask & *v0) + 0x298))(v10);
  if (v13)
  {
    v14 = v13;
    v15 = sub_10001F1E0();
    v16 = sub_1000301D0();
    v17 = *(v2 + 16);
    if (v15)
    {
      v17(v12, v16, v1);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v38 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D4E0, &v38);
        _os_log_impl(&_mh_execute_header, v18, v19, "%s cancel countdown", v20, 0xCu);
        sub_1000114A8(v21);
      }

      (*(v2 + 8))(v12, v1);
      v22 = [objc_opt_self() sharedInstance];
    }

    else
    {
      v17(v9, v16, v1);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v38 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D4E0, &v38);
        _os_log_impl(&_mh_execute_header, v28, v29, "%s stop recording", v30, 0xCu);
        sub_1000114A8(v31);
      }

      (*(v2 + 8))(v9, v1);
      v32 = sub_100037760();
      v33 = *v32;
      v34 = *(v32 + 1);

      v35 = String._bridgeToObjectiveC()();

      [v14 setState:v35 animated:1];

      sub_10001FD60();
      v22 = [objc_opt_self() sharedInstance];
    }

    v36 = v22;
    [v36 stopCurrentSession];
  }

  else
  {
    v23 = sub_1000301D0();
    (*(v2 + 16))(v6, v23, v1);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D4E0, &v38);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s error loading views", v26, 0xCu);
      sub_1000114A8(v27);
    }

    (*(v2 + 8))(v6, v1);
  }
}

uint64_t sub_10001FD60()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((swift_isaMask & *v0) + 0x298))(v12);
  if (v15)
  {
    v16 = v15;
    v17 = (*((swift_isaMask & *v0) + 0x2B0))();
    if (v17)
    {
      v18 = v17;
      sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
      v19 = static OS_dispatch_queue.main.getter();
      v20 = swift_allocObject();
      v20[2] = v0;
      v20[3] = v18;
      v20[4] = v16;
      aBlock[4] = sub_10002AEA4;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F174;
      aBlock[3] = &unk_10005DF80;
      v21 = _Block_copy(aBlock);
      v22 = v0;
      v23 = v18;
      v24 = v16;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000B62C(&qword_100068D00, &unk_100047DD0);
      sub_100011AD0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v21);

      (*(v35 + 8))(v9, v6);
      return (*(v33 + 8))(v14, v34);
    }
  }

  v26 = sub_1000301D0();
  v27 = v1;
  (*(v2 + 16))(v5, v26, v1);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_100010E34(0xD000000000000019, 0x800000010004D560, aBlock);
    _os_log_impl(&_mh_execute_header, v28, v29, "%s error loading views", v30, 0xCu);
    sub_1000114A8(v31);
  }

  return (*(v2 + 8))(v5, v27);
}

void sub_100020258(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10001F664())
  {
    v11 = sub_1000301D0();
    (*(v7 + 16))(v10, v11, v6);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "stopping camera for transition to save state", v14, 2u);
    }

    (*(v7 + 8))(v10, v6);
    sub_10001EFF8();
  }

  v15 = [a2 layer];
  [v15 removeAllAnimations];

  v16 = (*((swift_isaMask & *a1) + 0x280))();
  v17 = [v16 layer];

  [v17 removeAllAnimations];
  v18 = (*((swift_isaMask & *a1) + 0x2D0))(6);
  v19 = *((swift_isaMask & *a1) + 0x388);
  v20 = (v19)(v18);
  [v20 setEnabled:0];

  v21 = v19();
  [v21 setUserInteractionEnabled:0];

  v22 = v19();
  v23 = [v22 layer];

  [v23 setAllowsHitTesting:0];
  v24 = sub_100037788();
  v25 = *v24;
  v26 = *(v24 + 1);

  v27 = String._bridgeToObjectiveC()();

  [a3 setState:v27 animated:1];

  [a3 setUserInteractionEnabled:0];
  v28 = *(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
  if (sub_10001F57C())
  {
    v29 = sub_100036F18();
  }

  else
  {
    v29 = sub_100036C5C();
  }

  v30 = *v29;
  v31 = v29[1];

  v32 = String._bridgeToObjectiveC()();

  [v28 setText:v32];

  sub_100020D10();
  v33 = [a1 view];
  if (v33)
  {
    v34 = v33;
    [v33 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002067C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000301D0();
  (*(v12 + 16))(v15, v16, v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v6;
    v22 = v2;
    v23 = v1;
    v24 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100010E34(0xD00000000000001ALL, 0x800000010004D4C0, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s", v20, 0xCu);
    sub_1000114A8(v24);
    v1 = v23;
    v2 = v22;
    v6 = v30;

    v3 = v31;
  }

  (*(v12 + 8))(v15, v11);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  aBlock[4] = sub_10002AE2C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005DF30;
  v27 = _Block_copy(aBlock);
  v28 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v3 + 8))(v6, v2);
  return (*(v32 + 8))(v10, v33);
}

void sub_100020AD4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000301D0();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Expanding custom view to include camera preview", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  v12 = (*(**(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 152))(v11);
  if (v12)
  {
    v13 = v12;
    if ([v12 isHidden])
    {
      [v13 setHidden:0];
      (*((swift_isaMask & *v1) + 0x1E0))(4);
      [objc_msgSend(v1 "systemApertureElementContext")];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100020D10()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v77 - v8;
  v10 = sub_1000301D0();
  v82 = v3[2];
  v83 = v10;
  v82(v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v84 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004D610, &v84);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v14, 0xCu);
    sub_1000114A8(v15);

    v1 = v13;
  }

  v16 = v3[1];
  v16(v9, v2);
  v81 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView);
  if (v17)
  {
    type metadata accessor for RPSessionAccessoryView();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = *(v81 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView);
      if (v19)
      {
        v20 = v18;
        v21 = *(v81 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView);
        v80 = swift_dynamicCastClass();
        if (v80)
        {
          v22 = *(v81 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView);
          if (v22)
          {
            v23 = *(v81 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView);
            v78 = swift_dynamicCastClass();
            if (v78)
            {
              v79 = *(v81 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView);
              if (v79)
              {
                v77 = swift_dynamicCastClass();
                if (v77)
                {
                  if (*(v81 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView))
                  {
                    v24 = *(v81 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView);
                    v25 = swift_dynamicCastClass();
                    if (v25)
                    {
                      v26 = v24;
                      v27 = v25;
                      v28 = v81;
                      v29 = *((swift_isaMask & *v81) + 0x2C8);
                      v83 = v26;
                      v82 = v79;
                      v79 = v22;
                      v30 = v28;
                      v31 = v19;
                      v32 = v17;
                      v33 = v29();
                      if (v33 <= 3)
                      {
                        if (v33 > 1)
                        {
                          v34 = v20;
                          if (v33 == 2)
                          {
                            v35 = sub_10003724C();
                          }

                          else
                          {
                            v35 = sub_100037264();
                          }
                        }

                        else
                        {
                          v34 = v20;
                          if (v33)
                          {
                            v35 = sub_100037234();
                          }

                          else
                          {
                            v35 = sub_10003720C();
                          }
                        }

                        v67 = v35;
                        v68 = *v35;
                        v69 = v35[1];

                        v70 = v68;
                        v30 = v81;
                        sub_1000214C8(v34, v70, v69);

                        v71 = *v67;
                        v72 = v67[1];

                        sub_1000214C8(v77, v71, v72);

                        v73 = *v67;
                        v74 = v67[1];

                        v49 = v80;
                        sub_1000214C8(v80, v73, v74);

                        v75 = *v67;
                        v76 = v67[1];

                        sub_1000214C8(v27, v75, v76);

                        v65 = *v67;
                        v66 = v67[1];

                        v54 = v78;
                        goto LABEL_29;
                      }

                      if ((v33 - 4) >= 2)
                      {
                        v34 = v20;
                        v49 = v80;
                        v54 = v78;
                        if (v33 == 6)
                        {
                          v59 = sub_1000372C0();
                          v60 = *v59;
                          v61 = v59[1];

                          sub_1000214C8(v34, v60, v61);

                          v62 = sub_100037304();
                          v63 = *v62;
                          v64 = v62[1];

                          sub_1000214C8(v49, v63, v64);

                          v65 = *v62;
                          v66 = v62[1];

LABEL_29:
                          sub_1000214C8(v54, v65, v66);
                        }
                      }

                      else
                      {
                        v41 = sub_10003729C();
                        v42 = *v41;
                        v43 = v41[1];

                        v34 = v20;
                        sub_1000214C8(v20, v42, v43);

                        v44 = *v41;
                        v45 = v41[1];

                        sub_1000214C8(v77, v44, v45);

                        v46 = sub_10003727C();
                        v47 = *v46;
                        v48 = v46[1];

                        v49 = v80;
                        sub_1000214C8(v80, v47, v48);

                        v50 = *v41;
                        v51 = v41[1];

                        sub_1000214C8(v27, v50, v51);

                        v53 = *v41;
                        v52 = v41[1];
                        v30 = v81;

                        v54 = v78;
                        sub_1000214C8(v78, v53, v52);

                        v55 = *sub_100037700();
                        v56 = *sub_100037718();
                        v57 = *sub_100037730();
                        v58 = [objc_allocWithZone(UIColor) initWithRed:v55 green:v56 blue:v57 alpha:*sub_100037748()];
                        (*((swift_isaMask & *v30) + 0x468))(v58);
                      }

                      [v34 layoutSubviews];
                      [v49 layoutSubviews];
                      [v54 layoutSubviews];
                      [objc_msgSend(v30 "systemApertureElementContext")];

                      return swift_unknownObjectRelease();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  (v82)(v7, v83, v2);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v84 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004D610, &v84);
    _os_log_impl(&_mh_execute_header, v36, v37, "%s cannot get leading, trailing, and minimal views", v38, 0xCu);
    sub_1000114A8(v39);
  }

  return (v16)(v7, v2);
}

void sub_1000214C8(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000301D0();
  (*(v8 + 16))(v11, v12, v7);
  v13 = a1;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v30 = v4;
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v16 = 136315650;
    *(v16 + 4) = sub_100010E34(0xD00000000000001ELL, 0x800000010004D4A0, &v32);
    *(v16 + 12) = 2080;
    v17 = *(v13 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role);
    v29 = v7;
    if (v17)
    {
      if (v17 == 1)
      {
        v18 = 0x676E696C69617274;
      }

      else
      {
        v18 = 0x6C616D696E696DLL;
      }

      if (v17 == 1)
      {
        v19 = 0xE800000000000000;
      }

      else
      {
        v19 = 0xE700000000000000;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      v18 = 0x676E696461656CLL;
    }

    v21 = sub_100010E34(v18, v19, &v32);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    v20 = v31;
    *(v16 + 24) = sub_100010E34(v31, a3, &v32);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s role=%s viewState=%s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v8 + 8))(v11, v29);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v20 = v31;
  }

  v22 = *((swift_isaMask & *v13) + 0x88);

  v23 = v22(v20, a3);
  v24 = (*((swift_isaMask & *v13) + 0x68))(v23);
  if (v24)
  {
    v25 = v24;
    v26 = String._bridgeToObjectiveC()();
    [v25 setState:v26];
  }

  sub_1000287E0(v13, v20, a3);
}

uint64_t sub_10002184C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((swift_isaMask & *v2) + 0x2C8);
  if (v13(v10) == 4)
  {
LABEL_8:

    goto LABEL_10;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    v16 = v13(v15);
    if (v16 <= 3 || v16 > 5 || v16 == 4)
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  v21 = v26;
  v22 = v27;
  v20[2] = v3;
  v20[3] = v21;
  v20[4] = v22;
  aBlock[4] = sub_100029EC8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005D9E0;
  v23 = _Block_copy(aBlock);
  v24 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v30 + 8))(v7, v4);
  return (*(v28 + 8))(v12, v29);
}

uint64_t sub_100021DBC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_1000301D0();
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v10;
    v17 = v11;
    v18 = v7;
    v19 = v3;
    v20 = v16;
    v30 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100010E34(0xD000000000000013, 0x800000010004CA70, &v30);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v15, 0xCu);
    sub_1000114A8(v20);
    v3 = v19;
    v7 = v18;
    v11 = v17;
    v10 = v28;

    v1 = v29;
  }

  v21 = v3[1];
  v21(v9, v2);
  result = sub_10001F664();
  if (result)
  {
    v11(v7, v10, v2);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Stopping camera preview due to app entering background", v25, 2u);
    }

    v26 = (v21)(v7, v2);
    return (*(**(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 528))(v26);
  }

  return result;
}

void sub_100022104(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*((swift_isaMask & *v2) + 0x298))(v8);
  if (v11)
  {
    v32 = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    v13 = objc_opt_self();
    sub_10000B62C(&qword_100068EA8, &qword_100047EA8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100047E60;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = [v13 fetchAssetsWithLocalIdentifiers:isa options:0];

    v17 = [v16 firstObject];
    if (v17)
    {
      v18 = [objc_allocWithZone(PHImageRequestOptions) init];
      [v18 setVersion:2];
      [v18 setSynchronous:0];
      v19 = [objc_opt_self() defaultManager];
      v20 = swift_allocObject();
      v20[2] = v12;
      v20[3] = v2;
      v20[4] = v32;
      aBlock[4] = sub_10002A034;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100022580;
      aBlock[3] = &unk_10005DA58;
      v21 = _Block_copy(aBlock);
      v22 = v18;

      v23 = v2;
      v24 = v32;

      [v19 requestImageForAsset:v17 targetSize:0 contentMode:v22 options:v21 resultHandler:{0.0, 0.0}];

      _Block_release(v21);
    }

    else
    {

      v30 = v32;
    }
  }

  else
  {
    v25 = sub_1000301D0();
    (*(v6 + 16))(v10, v25, v5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100010E34(0xD000000000000024, 0x800000010004CA90, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "%s error loading views", v28, 0xCu);
      sub_1000114A8(v29);
    }

    (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_100022580(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a2;
  v5(a2, v6);
}

uint64_t sub_10002262C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((swift_isaMask & *v0) + 0x298))(v4);
  if (v7)
  {
    v8 = v7;
    v9 = objc_opt_self();
    v10 = sub_1000371E4();
    v11 = *v10;
    v12 = v10[1];

    v13 = String._bridgeToObjectiveC()();

    v14 = [v9 _applicationIconImageForBundleIdentifier:v13 format:0];

    v15 = sub_100037138();
    v16 = *v15;
    v17 = v15[1];
    v18 = *((swift_isaMask & *v0) + 0x5C8);

    v18(v14, v8, v16, v17);
  }

  else
  {
    v20 = sub_1000301D0();
    (*(v2 + 16))(v6, v20, v1);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100010E34(0xD000000000000017, 0x800000010004CAF0, &v26);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s error loading views", v23, 0xCu);
      sub_1000114A8(v24);
    }

    return (*(v2 + 8))(v6, v1);
  }
}

void sub_10002292C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = String._bridgeToObjectiveC()();
  v10 = [a2 publishedObjectWithName:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v30 = v35;
  v31 = v36;
  if (*(&v36 + 1))
  {
    sub_1000119A0(0, &qword_100068EB8, CALayer_ptr);
    if (swift_dynamicCast())
    {
      v11 = v34;
      if (a1)
      {
        v12 = [a1 CGImage];
        if (v12)
        {
          *&v30 = v12;
          type metadata accessor for CGImage(0);
          a1 = _bridgeAnythingToObjectiveC<A>(_:)();
        }

        else
        {
          a1 = 0;
        }
      }

      [v34 setContents:{a1, v30}];
      swift_unknownObjectRelease();
      [v34 setContentsGravity:kCAGravityResizeAspectFill];
      v13 = [objc_opt_self() clearColor];
      v14 = [v13 CGColor];

      [v34 setBackgroundColor:v14];
      sub_100020D10();
      v15 = sub_100037794();
      v16 = *v15;
      v17 = *(v15 + 1);

      v18 = String._bridgeToObjectiveC()();

      [a2 setState:v18];

      v19 = objc_opt_self();
      v20 = *sub_100036734();
      v21 = swift_allocObject();
      v21[2] = v4;
      v21[3] = a3;
      v21[4] = a4;
      v32 = sub_10002A128;
      v33 = v21;
      *&v30 = _NSConcreteStackBlock;
      *(&v30 + 1) = 1107296256;
      *&v31 = sub_10000F174;
      *(&v31 + 1) = &unk_10005DAA8;
      v22 = _Block_copy(&v30);
      v23 = v4;

      [v19 animateWithDuration:v22 animations:v20];
      _Block_release(v22);
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v24 = UIAccessibilityAnnouncementNotification;
        type metadata accessor for RPSystemApertureElementViewController();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v27 = String._bridgeToObjectiveC()();
        v28 = String._bridgeToObjectiveC()();
        v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

        if (!v29)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = String._bridgeToObjectiveC()();
        }

        UIAccessibilityPostNotification(v24, v29);
      }
    }
  }

  else
  {
    sub_100011940(&v30, &qword_100068EB0, &qword_100047EB0);
  }
}

uint64_t sub_100022D48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v79 = a5;
  v84 = a4;
  v73 = a3;
  v83 = a2;
  v86 = type metadata accessor for DispatchTime();
  v82 = *(v86 - 8);
  v8 = *(v82 + 64);
  v9 = __chkstk_darwin(v86);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v66 - v11;
  v80 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v80 - 8);
  v12 = *(v78 + 64);
  __chkstk_darwin(v80);
  v77 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v76 = *(v85 - 8);
  v14 = *(v76 + 64);
  __chkstk_darwin(v85);
  v75 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for URL();
  v16 = *(v72 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v72);
  v70 = v18;
  v71 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v66 - v21;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000301D0();
  (*(v24 + 16))(v27, v28, v23);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "showBanner(with:identifier:sessionID:)", v31, 2u);
  }

  (*(v24 + 8))(v27, v23);
  v32 = URL.scheme.getter();
  if (v33)
  {
    if (v32 == 0x736F746F6870 && v33 == 0xE600000000000000)
    {
      v69 = 1;
    }

    else
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v69 = 0;
  }

  URL.scheme.getter();
  if (v34)
  {
  }

  (*((swift_isaMask & *v6) + 0x2D0))(7);
  v35 = v16;
  v36 = *(v16 + 16);
  v66 = a1;
  v37 = v72;
  v36(v22, a1, v72);
  (*(v35 + 56))(v22, 0, 1, v37);
  (*((swift_isaMask & *v6) + 0x360))(v22);
  v38 = *((swift_isaMask & *v6) + 0x378);
  v39 = v73;

  v40 = v38(v83, v39);
  v41 = (*((swift_isaMask & *v6) + 0x310))(v40);
  [v41 setHidden:0];

  v42 = (*((swift_isaMask & *v6) + 0x328))();
  [v42 setHidden:0];

  v68 = sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v43 = v39;
  v67 = static OS_dispatch_queue.main.getter();
  v44 = v71;
  v36(v71, v66, v37);
  v45 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v46 = v45 + v70;
  v47 = (v45 + v70) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v84;
  *(v48 + 2) = v6;
  *(v48 + 3) = v49;
  v50 = v79;
  *(v48 + 4) = v79;
  (*(v35 + 32))(&v48[v45], v44, v37);
  v48[v46] = v69 & 1;
  v51 = &v48[v47];
  *(v51 + 1) = v83;
  *(v51 + 2) = v43;
  v91 = sub_10002A288;
  v92 = v48;
  aBlock = _NSConcreteStackBlock;
  v88 = 1107296256;
  v89 = sub_10000F174;
  v90 = &unk_10005DAF8;
  v52 = _Block_copy(&aBlock);

  v53 = v6;
  v54 = v50;

  v55 = v75;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  v73 = sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
  v72 = sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  v83 = sub_100011AD0();
  v56 = v77;
  v57 = v80;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v58 = v67;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v52);

  v78 = *(v78 + 8);
  (v78)(v56, v57);
  v76 = *(v76 + 8);
  (v76)(v55, v85);
  v71 = static OS_dispatch_queue.main.getter();
  v59 = v74;
  static DispatchTime.now()();
  v60 = *sub_100036734();
  v61 = v81;
  + infix(_:_:)();
  v82 = *(v82 + 8);
  (v82)(v59, v86);
  v62 = swift_allocObject();
  *(v62 + 16) = v84;
  *(v62 + 24) = v54;
  v91 = sub_10002A358;
  v92 = v62;
  aBlock = _NSConcreteStackBlock;
  v88 = 1107296256;
  v89 = sub_10000F174;
  v90 = &unk_10005DB48;
  v63 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v64 = v71;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v63);

  (v78)(v56, v57);
  (v76)(v55, v85);
  return (v82)(v61, v86);
}

id sub_1000237B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v44 = a2;
  v47 = a5;
  v45 = a3;
  v46 = a4;
  v9 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10001F664())
  {
    sub_10001EFF8();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = 0;

  sub_100017164(0xD000000000000011, 0x800000010004D580, v18);
  swift_beginAccess();
  v19 = *(v18 + 16);

  if (v19)
  {
    v20 = sub_1000301D0();
    (*(v14 + 16))(v17, v20, v13);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = a7;
      v25 = v24;
      v48 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100010E34(0xD000000000000026, 0x800000010004D5E0, &v48);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s unhide system aperture to show saved to photos banner", v23, 0xCu);
      sub_1000114A8(v25);
      a7 = v42;
    }

    (*(v14 + 8))(v17, v13);
    (*((swift_isaMask & *a1) + 0x1E0))(3);
    v26 = (*((swift_isaMask & *a1) + 0x1F8))(4);
    v27 = (*((swift_isaMask & *a1) + 0x280))(v26);
    v28 = String._bridgeToObjectiveC()();
    [v27 setText:v28];
  }

  v29 = objc_opt_self();
  v30 = *sub_100036740();
  v31 = String._bridgeToObjectiveC()();
  v32 = [v29 scheduledTimerWithTimeInterval:a1 target:"handleCompletionTimeout" selector:v31 userInfo:0 repeats:v30];

  v33 = (*((swift_isaMask & *a1) + 0x4C8))(v32);
  v34 = (*((swift_isaMask & *a1) + 0x2B0))(v33);
  if (v34)
  {
    v35 = v34;
    [v34 setAlpha:*sub_100036714()];
  }

  v36 = (*((swift_isaMask & *a1) + 0x280))();
  [v36 setAlpha:*sub_100036714()];

  (*((swift_isaMask & *a1) + 0x258))(682);
  v37 = type metadata accessor for URL();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v12, v46, v37);
  (*(v38 + 56))(v12, 0, 1, v37);
  (*((swift_isaMask & *a1) + 0x498))(v12);
  [objc_msgSend(a1 "systemApertureElementContext")];
  v39 = swift_unknownObjectRelease();
  if ((v47 & 1) != 0 && a7)
  {
    return (*((swift_isaMask & *a1) + 0x5B8))(v43, a7);
  }

  (*((swift_isaMask & *a1) + 0x5C0))(v39);
  return sub_100026A74();
}

void sub_100023E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v43 = sub_10002B924();
  v12 = *((swift_isaMask & **v43) + 0xA0);
  v13 = *v43;
  v14 = v12();
  v16 = v15;

  if (!v16)
  {
LABEL_7:
    v19 = sub_1000301D0();
    v20 = v4;
    (*(v5 + 16))(v9, v19, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "dropping previous session alert request", v23, 2u);
    }

    (*(v5 + 8))(v9, v20);
    return;
  }

  if (v14 == a1 && v16 == a2)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v24 = sub_1000301D0();
  (*(v5 + 16))(v11, v24, v4);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v42 = v4;
    v28 = v27;
    v29 = swift_slowAlloc();
    v44 = v29;
    *v28 = 136315138;
    v30 = v43;
    v31 = *((swift_isaMask & **v43) + 0xA0);
    v32 = *v43;
    v33 = v31();
    v35 = v34;

    if (v35)
    {
      v36 = v33;
    }

    else
    {
      v36 = 1819047246;
    }

    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0xE400000000000000;
    }

    v38 = sub_100010E34(v36, v37, &v44);

    *(v28 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "alert request for session=%s", v28, 0xCu);
    sub_1000114A8(v29);

    (*(v5 + 8))(v11, v42);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
    v30 = v43;
  }

  v39 = *((swift_isaMask & **v30) + 0xF0);
  v40 = *v30;
  v39();
}

uint64_t sub_1000243D4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v37 - v17;
  v19 = (*((swift_isaMask & *v0) + 0x2B0))(v16);
  if (v19)
  {
    v20 = v19;
    v37 = v2;
    v21 = sub_1000301D0();
    (*(v11 + 16))(v18, v21, v10);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "startRecording()", v24, 2u);
    }

    (*(v11 + 8))(v18, v10);
    sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    *(v26 + 24) = v20;
    aBlock[4] = sub_10002A360;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F174;
    aBlock[3] = &unk_10005DB98;
    v27 = _Block_copy(aBlock);
    v28 = v1;
    v29 = v20;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000B62C(&qword_100068D00, &unk_100047DD0);
    sub_100011AD0();
    v30 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v40 + 8))(v5, v30);
    return (*(v38 + 8))(v9, v39);
  }

  else
  {
    v32 = sub_1000301D0();
    (*(v11 + 16))(v15, v32, v10);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004CB30, aBlock);
      _os_log_impl(&_mh_execute_header, v33, v34, "%s error loading views", v35, 0xCu);
      sub_1000114A8(v36);
    }

    return (*(v11 + 8))(v15, v10);
  }
}

void sub_100024948(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;

  sub_100017164(0xD000000000000011, 0x800000010004D580, v9);
  swift_beginAccess();
  v10 = *(v9 + 16);

  if (v10 == 1)
  {
    v11 = sub_1000301D0();
    (*(v5 + 16))(v8, v11, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004CB30, aBlock);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s hide system aperture screen recording element", v14, 0xCu);
      sub_1000114A8(v15);
    }

    (*(v5 + 8))(v8, v4);
    v16 = 1;
    v17 = 1;
  }

  else
  {
    v17 = 4;
    v16 = 3;
  }

  (*((swift_isaMask & *a1) + 0x1E0))(v16);
  (*((swift_isaMask & *a1) + 0x1F8))(v17);
  [objc_msgSend(a1 "systemApertureElementContext")];
  swift_unknownObjectRelease();
  v18 = objc_opt_self();
  v19 = *sub_100036898();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a1;
  aBlock[4] = sub_10002AEF0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005DFD0;
  v21 = _Block_copy(aBlock);
  v22 = a2;
  v23 = a1;

  [v18 animateWithDuration:24 delay:v21 options:0 animations:v19 completion:0.0];
  _Block_release(v21);
}

uint64_t sub_100024D6C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "didTapStopButton()", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return sub_10001FD60();
}

uint64_t sub_100024F18(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v2;
  aBlock[4] = sub_10002A3A8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005DBE8;
  v16 = _Block_copy(aBlock);

  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_1000251F0(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000301D0();
  (*(v7 + 16))(v10, v11, v6);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100010E34(0xD000000000000015, 0x800000010004D540, &v22);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100010E34(a1, a2, &v22);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v10, v6);
  v15 = sub_100036758();
  if (*v15 == a1 && *(v15 + 1) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = 1;
LABEL_7:
    (*((swift_isaMask & *a3) + 0x2D0))(v16);
    return sub_100020D10();
  }

  v18 = sub_100036780();
  if (*v18 == a1 && *(v18 + 1) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = 2;
    goto LABEL_7;
  }

  v19 = sub_1000367A8();
  if (*v19 == a1 && *(v19 + 1) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = 3;
    goto LABEL_7;
  }

  v20 = sub_1000367D0();
  if (*v20 == a1 && v20[1] == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v16 = 4;
    goto LABEL_7;
  }

  return sub_100020D10();
}

uint64_t sub_100025540(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1000255AC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000301D0();
  (*(v11 + 16))(v14, v15, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v1;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "handleCompletionTimeout()", v18, 2u);
    v1 = v31;
  }

  v19 = (*(v11 + 8))(v14, v10);
  v20 = (*((swift_isaMask & *v1) + 0x4C0))(v19);
  if (!v20)
  {
    aBlock = 0u;
    v35 = 0u;
    return sub_100011940(&aBlock, &qword_100068EB0, &qword_100047EB0);
  }

  v21 = v20;
  v22 = [v20 userInfo];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  aBlock = v38;
  v35 = v39;
  if (!*(&v39 + 1))
  {
    return sub_100011940(&aBlock, &qword_100068EB0, &qword_100047EB0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v24 = v38;
    sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    *(v26 + 24) = v24;
    v36 = sub_10002A3B4;
    v37 = v26;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v35 = sub_10000F174;
    *(&v35 + 1) = &unk_10005DC38;
    v27 = _Block_copy(&aBlock);
    v28 = v1;

    v29 = v32;
    static DispatchQoS.unspecified.getter();
    *&aBlock = &_swiftEmptyArrayStorage;
    sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000B62C(&qword_100068D00, &unk_100047DD0);
    sub_100011AD0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v3 + 8))(v6, v2);
    return (*(v33 + 8))(v29, v7);
  }

  return result;
}

void sub_100025AC0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v50[-v13];
  if ((*((swift_isaMask & *a1) + 0x4D8))(v12))
  {
    goto LABEL_8;
  }

  v55 = sub_10002B924();
  v15 = *v55;
  v16 = *((swift_isaMask & **v55) + 0xA0);
  v56 = a3;
  v17 = v15;
  v18 = v16();
  v19 = v56;
  v20 = v18;
  v22 = v21;

  if (!v22)
  {
LABEL_8:
    v25 = sub_1000301D0();
    (*(v7 + 16))(v11, v25, v6);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "dropping previous session finish request", v28, 2u);
    }

    (*(v7 + 8))(v11, v6);
    return;
  }

  if (v20 == a2 && v22 == v19)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v29 = sub_1000301D0();
  (*(v7 + 16))(v14, v29, v6);
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v53 = v34;
    v54 = swift_slowAlloc();
    v57 = v54;
    *v33 = 138412546;
    *(v33 + 4) = v30;
    *v34 = a1;
    *(v33 + 12) = 2080;
    v35 = v55;
    v52 = v31;
    v36 = *v55;
    v37 = swift_isaMask & **v55;
    v51 = v32;
    v38 = *(v37 + 160);
    v39 = v30;
    v40 = v36;
    v41 = v38();
    v43 = v42;

    if (v43)
    {
      v44 = v41;
    }

    else
    {
      v44 = 1819047246;
    }

    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0xE400000000000000;
    }

    v46 = sub_100010E34(v44, v45, &v57);

    *(v33 + 14) = v46;
    v47 = v52;
    _os_log_impl(&_mh_execute_header, v52, v51, "self=%@ finish request for session=%s", v33, 0x16u);
    sub_100011940(v53, &qword_1000697C0, qword_100047CD0);

    sub_1000114A8(v54);

    (*(v7 + 8))(v14, v6);
  }

  else
  {

    (*(v7 + 8))(v14, v6);
    v35 = v55;
  }

  v48 = *((swift_isaMask & **v35) + 0xF8);
  v49 = *v35;
  v48(a2, v56);
}

id sub_100025FD8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchQoS();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  __chkstk_darwin(v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000301D0();
  (*(v12 + 16))(v15, v16, v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v72 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v71 = v6;
    v22 = v2;
    v23 = v1;
    v24 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100010E34(0x74747542776F6873, 0xED00002928736E6FLL, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s", v20, 0xCu);
    sub_1000114A8(v24);
    v1 = v23;
    v2 = v22;
    v6 = v71;

    v3 = v72;
  }

  (*(v12 + 8))(v15, v11);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  aBlock[4] = sub_10002B0E0;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005E070;
  v27 = _Block_copy(aBlock);
  v28 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v3 + 8))(v6, v2);
  (*(v73 + 8))(v10, v74);
  v29 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  [v29 notificationOccurred:0];

  v30 = (swift_isaMask & *v28) + 928;
  v31 = *((swift_isaMask & *v28) + 0x3A0);
  v32 = v31();
  v33 = sub_1000368C4();
  [v32 setConstant:*v33];

  result = [v28 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v35 = result;
  v71 = v31;
  v72 = v30;
  [result layoutIfNeeded];

  v36 = objc_opt_self();
  v37 = swift_isaMask & *v28;
  v73 = *(v37 + 0x3D0);
  v74 = v37 + 976;
  (v73)();
  v69 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v70 = v36;
  [v36 deactivateConstraints:isa];

  sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100047E70;
  result = [v28 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = result;
  v41 = [result widthAnchor];

  v42 = *((swift_isaMask & *v28) + 0x3B8);
  v43 = v42();
  v44 = [v43 widthAnchor];

  v45 = [v41 constraintEqualToAnchor:v44];
  *(v39 + 32) = v45;
  result = [v28 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v46 = result;
  v47 = [result heightAnchor];

  v48 = [v47 constraintEqualToConstant:*v33];
  *(v39 + 40) = v48;
  v49 = v42();
  v50 = [v49 heightAnchor];

  v51 = [v50 constraintEqualToConstant:*v33];
  *(v39 + 48) = v51;
  v52 = v42();
  v53 = [v52 widthAnchor];

  v54 = [v53 constraintEqualToConstant:*sub_1000366B0()];
  *(v39 + 56) = v54;
  *(v39 + 64) = v71();
  v55 = (*((swift_isaMask & *v28) + 0x3D8))(v39);
  v56 = (v73)(v55);
  v57 = v56;
  if (v56 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v59 = 0;
    while (1)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v59 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v60 = *(v57 + 8 * v59 + 32);
      }

      v62 = v60;
      v63 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      LODWORD(v61) = 1144750080;
      [v60 setPriority:v61];

      ++v59;
      if (v63 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  (v73)(v64);
  v65 = Array._bridgeToObjectiveC()().super.isa;

  [v70 activateConstraints:v65];

  v66 = (*((swift_isaMask & *v28) + 0x2F8))();
  [v66 setHidden:0];

  v67 = (*((swift_isaMask & *v28) + 0x328))();
  [v67 setEnabled:1];

  v68 = (*((swift_isaMask & *v28) + 0x310))();
  [v68 setEnabled:1];

  [objc_msgSend(v28 "systemApertureElementContext")];
  return swift_unknownObjectRelease();
}