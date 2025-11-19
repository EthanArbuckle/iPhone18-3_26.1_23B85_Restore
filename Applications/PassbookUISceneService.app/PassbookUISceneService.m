id *sub_100000E94(id *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (!v4)
    {
      __break(1u);
    }

    v18.receiver = a1;
    v18.super_class = PKUISSBannerHandle;
    a1 = objc_msgSendSuper2(&v18, "init");
    v6 = PKLogFacilityTypeGetObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      if (v7)
      {
        *buf = 134218240;
        v21 = a1;
        v22 = 2048;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): creating for connection %p.", buf, 0x16u);
      }

      *(a1 + 24) = 0;
      objc_storeStrong(a1 + 4, a2);
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000010AC;
      v16 = &unk_10000C2D8;
      v8 = a1;
      v17 = v8;
      [v5 configureConnection:&v13];
      v9 = [RBSDomainAttribute attributeWithDomain:@"com.apple.PassbookUIService" name:@"AngelReply", v13, v14, v15, v16];
      v19 = v9;
      v10 = [NSArray arrayWithObjects:&v19 count:1];
      v11 = v8[5];
      v8[5] = v10;

      [a1[4] activate];
      a1 = v8;
    }

    else
    {
      if (v7)
      {
        *buf = 134217984;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle: failed to allocate service for connection %p.", buf, 0xCu);
      }

      [v5 invalidate];
    }
  }

  return a1;
}

void sub_1000010AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKBannerServiceInterface();
  [v3 setInterface:v4];

  v5 = +[BSServiceQuality userInitiated];
  [v3 setServiceQuality:v5];

  [v3 setTargetQueue:&_dispatch_main_q];
  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000011A4;
  v6[3] = &unk_10000C2B0;
  v7 = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
}

void sub_1000011B0(uint64_t a1, int a2)
{
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    *(a1 + 8) = 1;
    v4 = PKLogFacilityTypeGetObject();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      sub_100005B18(v5, v4, a1);
LABEL_15:
      sub_100005BF0(a1);
      return;
    }

    if (v5)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): locally invalidated.", &buf, 0xCu);
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;

    v7 = *(a1 + 24);
    if (v7 - 2 >= 3)
    {
      if (v7 >= 2)
      {
        goto LABEL_15;
      }
    }

    else if ((*(a1 + 25) & 1) == 0)
    {
      v8 = sub_1000055F8(a1);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 32);
        *(a1 + 32) = 0;

        *&buf = 0;
        *(&buf + 1) = &buf;
        v26 = 0x2020000000;
        v27 = UIBackgroundTaskInvalid;
        v11 = +[UIApplication sharedApplication];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100001504;
        v20[3] = &unk_10000C300;
        v20[4] = &buf;
        v12 = [v11 beginBackgroundTaskWithName:@"banner.detach.transmit" expirationHandler:v20];
        *(*(&buf + 1) + 24) = v12;

        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 134218240;
          v22 = a1;
          v23 = 2048;
          v24 = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle (%p): starting local invalidation of connection %p.", v21, 0x16u);
        }

        objc_initWeak(v21, a1);
        v14 = [NSNumber numberWithInt:*(a1 + 24) == 4];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000015F8;
        v16[3] = &unk_10000C328;
        objc_copyWeak(&v19, v21);
        v15 = v9;
        v17 = v15;
        p_buf = &buf;
        [v8 detachWithFinished:v14 reply:v16];

        objc_destroyWeak(&v19);
        objc_destroyWeak(v21);
        _Block_object_dispose(&buf, 8);

        goto LABEL_15;
      }
    }

    sub_100005BBC(a1);
    goto LABEL_15;
  }
}

void sub_1000014C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100001504(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000157C;
  block[3] = &unk_10000C300;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000157C(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v2 = +[UIApplication sharedApplication];
    [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

void sub_1000015F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = PKLogFacilityTypeGetObject();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (WeakRetained)
    {
      if (v6)
      {
        v13 = 134218242;
        v14 = WeakRetained;
        v15 = 2112;
        v16 = v3;
        v7 = "PKUISSBannerHandle (%p): failed to notify remote of local invalidation - %@.";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
      }
    }

    else if (v6)
    {
      v13 = 138412290;
      v14 = v3;
      v7 = "PKUISSBannerHandle (?): failed to notify remote of local invalidation - %@.";
      v8 = v5;
      v9 = 12;
      goto LABEL_7;
    }
  }

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 134217984;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PKUISSBannerHandle: connection %p locally invalidated.", &v13, 0xCu);
  }

  [*(a1 + 32) invalidate];
  if (*(*(*(a1 + 40) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v12 = +[UIApplication sharedApplication];
    [v12 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];

    *(*(*(a1 + 40) + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

void sub_1000017C4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
LABEL_6:

    return;
  }

  if (*(a1 + 48))
  {
    if (!v4 || (v6 = [v4 type], v6 == objc_msgSend(*(a1 + 48), "type")))
    {
      objc_storeStrong((a1 + 64), a2);
      if ((*(a1 + 25) & 1) == 0)
      {
        v7 = sub_1000055F8(a1);
        if (v7)
        {
          v8 = v7;
          v15 = 0;
          v16 = &v15;
          v17 = 0x2020000000;
          v18 = UIBackgroundTaskInvalid;
          v9 = +[UIApplication sharedApplication];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1000019C4;
          v14[3] = &unk_10000C300;
          v14[4] = &v15;
          v10 = [v9 beginBackgroundTaskWithName:@"banner.state.transmit" expirationHandler:v14];
          v16[3] = v10;

          objc_initWeak(&location, a1);
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_100001AB8;
          v11[3] = &unk_10000C350;
          objc_copyWeak(&v12, &location);
          v11[4] = &v15;
          [v8 updateState:v5 withReply:v11];
          objc_destroyWeak(&v12);
          objc_destroyWeak(&location);
          _Block_object_dispose(&v15, 8);
        }
      }

      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_100001994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_1000019C4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001A3C;
  block[3] = &unk_10000C300;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100001A3C(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v2 = +[UIApplication sharedApplication];
    [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

void sub_100001AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = PKLogFacilityTypeGetObject();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (WeakRetained)
    {
      if (v6)
      {
        v11 = 134218242;
        v12 = WeakRetained;
        v13 = 2112;
        v14 = v3;
        v7 = "PKUISSBannerHandle (%p): failed to notify remote of state update - %@.";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
      }
    }

    else if (v6)
    {
      v11 = 138412290;
      v12 = v3;
      v7 = "PKUISSBannerHandle (?): failed to notify remote of state update - %@.";
      v8 = v5;
      v9 = 12;
      goto LABEL_7;
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v10 = +[UIApplication sharedApplication];
    [v10 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

void sub_1000023A4(uint64_t a1)
{
  v2 = sub_100003FA0();
  sub_100005EA0(v2, *(a1 + 32));
}

void sub_1000023F8(uint64_t a1)
{
  v2 = sub_100003FA0();
  sub_100005EAC(v2, *(a1 + 32));
}

void sub_10000244C(uint64_t a1)
{
  v2 = sub_100003FA0();
  sub_100005FA8(v2, *(a1 + 32));
}

void sub_10000268C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002704;
  block[3] = &unk_10000C300;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100002704(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v2 = +[UIApplication sharedApplication];
    [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

void sub_1000027FC()
{
  v0 = objc_opt_self();
  v1 = sub_10000282C(v0, 1);
}

id sub_10000282C(uint64_t a1, int a2)
{
  result = objc_opt_self();
  if (a2)
  {
    if (qword_100011C30)
    {
      goto LABEL_8;
    }

    v4 = sub_100005A44([PKUISSListener_Banner alloc]);
    v5 = qword_100011C30;
    qword_100011C30 = v4;
  }

  result = qword_100011C30;
  if (!qword_100011C30)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return result;
}

void sub_10000289C()
{
  objc_opt_self();
  v0 = objc_opt_self();
  v1 = sub_10000282C(v0, 0);
  sub_100005A00(v1);
}

void sub_100002908(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"remote-ui"];
  [v3 setService:PKBannerServiceName];
  [v3 setDelegate:*(a1 + 32)];
}

void sub_100002B50(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

void sub_100002FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 - 144));
  _Unwind_Resume(a1);
}

BOOL sub_10000300C(id a1, NSUserActivity *a2)
{
  v2 = [(NSUserActivity *)a2 activityType];
  v3 = [v2 isEqualToString:PKPassbookUISSUserActivityTypePeerPaymentRegistration];

  return v3;
}

void sub_100003054(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error requesting destruction for session: %@, %@", &v6, 0x16u);
  }
}

void sub_100003118(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] setRootViewController:0];
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  if (v4)
  {
    v5 = +[UIApplication sharedApplication];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100003204;
    v6[3] = &unk_10000C408;
    v7 = v4;
    [v5 requestSceneSessionDestruction:v7 options:0 errorHandler:v6];
  }
}

void sub_100003204(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error requesting destruction for session: %@, %@", &v6, 0x16u);
  }
}

uint64_t sub_1000032C8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1000037D4(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to destruct in-app scene session %@, error: %@", &v6, 0x16u);
  }
}

id *sub_1000038C4(void *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!v4 || (sub_1000059E8(v4), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    __break(1u);
LABEL_11:
    v12 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  v14.receiver = a1;
  v14.super_class = PKUISSPresentableContext;
  v8 = objc_msgSendSuper2(&v14, "init");
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v16 = v8;
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PKUISSPresentableContext (%p): creating for handle %p.", buf, 0x16u);
    }

    v8[7] = [v7 type];
    objc_storeStrong(v8 + 1, a2);
    objc_storeStrong(v8 + 2, a2);
    v10 = [[NSMutableArray alloc] initWithObjects:{v5, 0}];
    v11 = v8[3];
    v8[3] = v10;

    sub_100005958(v8[2], v8);
  }

  v12 = v8;

LABEL_9:
  return v12;
}

uint64_t sub_100003A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 34) == 1)
    {
      goto LABEL_10;
    }

    *(a1 + 34) = 1;
    v8 = v3;
    v3 = objc_storeWeak((a1 + 40), v3);
    v4 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    v5 = sub_1000059F4(*(a1 + 8));
    v6 = [v8 associateWithContext:a1 fromInitialState:v5];

    if (v6)
    {
      v3 = [v6 type];
      if (v3 != *(a1 + 56))
      {
LABEL_10:
        __break(1u);
        return _objc_release_x1(v3, v4);
      }
    }

    sub_100006014(a1, v6, v8);
    v4 = v8;
  }

LABEL_4:

  return _objc_release_x1(v3, v4);
}

void sub_100003BA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      goto LABEL_24;
    }

    v5 = sub_1000059E8(v3);
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = v5;
    v7 = [v5 type];
    if (v7 != *(a1 + 56))
    {
      goto LABEL_24;
    }

    if (v7 == 1)
    {
      v8 = v6;
      if ([v8 isForRecording])
      {
        sub_100006074();
      }

      v9 = sub_1000059E8(*(a1 + 8));
      if ([v9 isForRecording])
      {
        sub_100006074();
      }
    }

    else if (v7 == 2 || !v7)
    {
      goto LABEL_24;
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      v15 = a1;
      v16 = 2048;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PKUISSPresentableContext (%p): coalescing handle %p.", &v14, 0x16u);
    }

    [*(a1 + 24) addObject:v4];
    if (*(a1 + 32) == 1)
    {
      sub_100005700(v4);
    }

    if (*(a1 + 33) == 1)
    {
      sub_100005840(v4);
    }

    sub_100005958(v4, a1);
    if (*(a1 + 33) == 1)
    {
LABEL_24:
      __break(1u);
    }

    if (!*(a1 + 16))
    {
      v11 = [*(a1 + 24) firstObject];
      v12 = *(a1 + 16);
      *(a1 + 16) = v11;

      v13 = *(a1 + 16);
      if (v13)
      {
        sub_100006078(a1, v13, (a1 + 16));
      }
    }
  }
}

id sub_100003F00(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if (qword_100011C38 != -1)
  {
    sub_1000061D4();
  }

  v3 = qword_100011C40;

  return [PKBannerPresentationManager _managerForDestination:a2 withProvider:v3];
}

void sub_100003F60(id a1)
{
  qword_100011C40 = sub_100005E20([PKUISSBannerPresentableProvider alloc]);

  _objc_release_x1();
}

uint64_t sub_100003FA0()
{
  objc_opt_self();
  v0 = objc_opt_self();
  v1 = sub_100003F00(v0, 0);
  v2 = [v1 provider];

  return v2;
}

id sub_1000044E0(uint64_t a1)
{
  v2 = sub_1000059E8(*(a1 + 32));
  v3 = [v2 createBannerViewController];

  sub_100003A4C(*(a1 + 40), v3);
  return v3;
}

id sub_100004534(uint64_t a1)
{
  v2 = sub_1000059E8(*(a1 + 32));
  v3 = [v2 createBannerViewController];

  sub_100003A4C(*(a1 + 40), v3);
  return v3;
}

id sub_100004588(uint64_t a1)
{
  v1 = sub_1000059E8(*(a1 + 32));
  v2 = [v1 createBannerViewController];

  return v2;
}

void sub_1000045C4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1 && v4)
  {
    v6 = objc_opt_self();
    v7 = sub_100003F00(v6, 0);
    v8 = sub_1000059E8(v5);
    v9 = [v8 passUniqueIdentifier];

    v12 = *(a1 + 8);
    v11 = (a1 + 8);
    v10 = v12;
    if (v12)
    {
      v13 = sub_1000059E8(v10);
      v14 = [v13 passUniqueIdentifier];

      v15 = [v9 isEqualToString:v14];
      v16 = PKLogFacilityTypeGetObject();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v31 = 138412290;
          v32 = v14;
          v18 = "PKUISSBannerPresentableProvider: coalescing express transaction for %@.";
          v19 = v16;
          v20 = 12;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v31, v20);
        }
      }

      else if (v17)
      {
        v31 = 138412546;
        v32 = v9;
        v33 = 2112;
        v34 = v14;
        v18 = "PKUISSBannerPresentableProvider: subsuming express transaction for %@ with banner for %@.";
        v19 = v16;
        v20 = 22;
        goto LABEL_12;
      }

LABEL_20:

      goto LABEL_21;
    }

    v14 = [v7 _currentRequest];
    v21 = [v14 context];
    v16 = v21;
    if (!v21 || *(v21 + 56))
    {
      objc_storeStrong(v11, a2);
      [v7 _setNeedsUpdate];
      goto LABEL_20;
    }

    v22 = *(v21 + 8);
    v23 = sub_1000059E8(v22);
    v24 = [v23 passUniqueIdentifier];

    v25 = [v9 isEqualToString:v24];
    v26 = PKLogFacilityTypeGetObject();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        v31 = 138412290;
        v32 = v24;
        v28 = "PKUISSBannerPresentableProvider: coalescing express transaction for %@.";
        v29 = v26;
        v30 = 12;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, &v31, v30);
      }
    }

    else if (v27)
    {
      v31 = 138412546;
      v32 = v9;
      v33 = 2112;
      v34 = v24;
      v28 = "PKUISSBannerPresentableProvider: subsuming express transaction for %@ with banner for %@.";
      v29 = v26;
      v30 = 22;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_21:
}

id sub_1000048DC(uint64_t a1)
{
  v2 = *(a1 + 24);

  return v2;
}

void sub_100004DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v34 + 80));
  objc_destroyWeak((v33 + 72));
  objc_destroyWeak((v33 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v35 - 144));
  _Unwind_Resume(a1);
}

BOOL sub_100004E38(id a1, NSUserActivity *a2)
{
  v2 = [(NSUserActivity *)a2 activityType];
  v3 = [v2 isEqualToString:PKPassbookUISSUserActivityTypeInAppPayment];

  return v3;
}

void sub_100004E80(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error requesting destruction for session: %@, %@", &v6, 0x16u);
  }
}

void sub_100004F44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 3) setRootViewController:0];
    v4 = v3[2];
    v3[2] = 0;
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    v6 = +[UIApplication sharedApplication];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100005044;
    v7[3] = &unk_10000C408;
    v8 = v5;
    [v6 requestSceneSessionDestruction:v8 options:0 errorHandler:v7];
  }
}

void sub_100005044(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error requesting destruction for session: %@, %@", &v6, 0x16u);
  }
}

void sub_100005108(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = objc_alloc_init(PKPaymentAuthorizationRemoteAlertViewController);
    v6 = v5;
    if (a2)
    {
      [v5 setBlocksInput];
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005288;
    v12[3] = &unk_10000C588;
    objc_copyWeak(&v15, (a1 + 64));
    v9 = v6;
    v13 = v9;
    v14 = *(a1 + 40);
    [v9 configureWithUserInfo:v7 dismissalHandler:v8 completion:v12];
    objc_storeStrong(WeakRetained + 1, v6);
    objc_storeStrong(WeakRetained + 2, *(a1 + 48));
    v10 = objc_loadWeakRetained((a1 + 72));
    v11 = objc_loadWeakRetained((a1 + 80));
    [v10 inAppPaymentInterfaceWillPresentWithSceneSession:v11];

    objc_destroyWeak(&v15);
  }
}

void sub_100005288(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [*(a1 + 32) noteActivatedWithPresentationMode:0];
    v3 = [[UIWindow alloc] initWithWindowScene:*(a1 + 40)];
    [v3 setRootViewController:*(a1 + 32)];
    [v3 makeKeyAndVisible];
    [v3 setOverrideUserInterfaceStyle:2];
    [v4 setWindow:v3];

    WeakRetained = v4;
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  sub_1000027FC();
  sub_10000289C();
  objc_autoreleasePoolPop(v5);
  LODWORD(argv) = UIApplicationMain(argc, argv, 0, v7);

  return argv;
}

uint64_t sub_1000055F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      result = [v2 remoteTargetWithAssertionAttributes:*(v1 + 40)];
      if (result)
      {
        return result;
      }

      v3 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v5 = 134217984;
      v6 = v1;
      v4 = "PKUISSBannerHandle (%p): attempting to message inactive connection.";
    }

    else
    {
      v3 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        return 0;
      }

      v5 = 134217984;
      v6 = v1;
      v4 = "PKUISSBannerHandle (%p): attempting to message invalidated connection.";
    }

    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &v5, 0xCu);
    goto LABEL_9;
  }

  return result;
}

void sub_100005700(uint64_t a1)
{
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    v2 = *(a1 + 24);
    if (v2 == 2)
    {
      *(a1 + 24) = 3;
      v6 = *(a1 + 16);
      if (v6)
      {
        v8 = objc_retainBlock(v6);
        v7 = *(a1 + 16);
        *(a1 + 16) = 0;

        v8[2](v8, 0);
      }
    }

    else if (v2 != 4)
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = a1;
        sub_100002B50(&_mh_execute_header, v4, v5, "PKUISSBannerHandle (%p): out of order - start - invalidating.", &v9);
      }

      sub_1000011B0(a1, 0);
    }
  }
}

void sub_100005840(uint64_t a1)
{
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    if ((*(a1 + 24) & 0xFE) == 2)
    {
      *(a1 + 24) = 4;
      v2 = *(a1 + 16);
      *(a1 + 16) = 0;

      sub_1000011B0(a1, 0);
    }

    else
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134217984;
        v7 = a1;
        sub_100002B50(&_mh_execute_header, v4, v5, "PKUISSBannerHandle (%p): out of order - finish - invalidating.", &v6);
      }

      sub_1000011B0(a1, 0);
    }
  }
}

void sub_100005958(uint64_t a1, void *a2)
{
  obj = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (WeakRetained != obj || !obj || !WeakRetained)
    {
      objc_storeWeak((a1 + 72), obj);
      if (*(a1 + 8) == 1)
      {
        [obj bannerHandleDidInvalidate:a1];
      }
    }
  }
}

uint64_t sub_1000059E8(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_1000059F4(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

id *sub_100005A00(id *result)
{
  if (result)
  {
    [result[1] activate];
    return [BSServicesConfiguration activateManualDomain:@"remote-ui"];
  }

  return result;
}

void *sub_100005A44(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = PKUISSListener_Banner;
  v1 = objc_msgSendSuper2(&v8, "init");
  v2 = v1;
  if (v1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100002908;
    v6[3] = &unk_10000C3A0;
    v2 = v1;
    v7 = v2;
    v3 = [BSServiceConnectionListener listenerWithConfigurator:v6];
    v4 = v2[1];
    v2[1] = v3;
  }

  return v2;
}

void sub_100005B18(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v7 = 134217984;
    v8 = a3;
    sub_100002B50(&_mh_execute_header, a2, a3, "PKUISSBannerHandle (%p): remotely invalidated.", &v7);
  }

  v5 = *(a3 + 16);
  *(a3 + 16) = 0;

  v6 = *(a3 + 32);
  *(a3 + 32) = 0;
}

void sub_100005BBC(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
}

void sub_100005BF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained bannerHandleDidInvalidate:a1];
}

void sub_100005C28(uint64_t a1)
{
  if (a1 && (*(a1 + 32) & 1) == 0)
  {
    *(a1 + 32) = 1;
    v1 = sub_1000048DC(a1);
    sub_1000048D0();
    v3 = [v2 countByEnumeratingWithState:? objects:? count:?];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v1);
          }

          sub_100005700(*(v7 + 8 * v6));
          v6 = v6 + 1;
        }

        while (v4 != v6);
        sub_1000048D0();
        v4 = [v1 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v4);
    }
  }
}

void sub_100005D10(uint64_t a1)
{
  if (a1 && (*(a1 + 33) & 1) == 0)
  {
    *(a1 + 33) = 1;
    v1 = sub_1000048DC(a1);
    sub_1000048D0();
    v3 = [v2 countByEnumeratingWithState:? objects:? count:?];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v1);
          }

          sub_100005840(*(v7 + 8 * v6));
          v6 = v6 + 1;
        }

        while (v4 != v6);
        sub_1000048D0();
        v4 = [v1 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v4);
    }
  }
}

uint64_t sub_100005DF8(uint64_t result)
{
  if (result)
  {
    sub_1000059F4(*(result + 8));
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

void *sub_100005E20(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = PKUISSBannerPresentableProvider;
  v1 = objc_msgSendSuper2(&v5, "init");
  if (v1)
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = v1[2];
    v1[2] = v2;
  }

  return v1;
}

void sub_100005EA0(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000045C4(a1, a2);
  }
}

void sub_100005EAC(uint64_t a1, void *a2)
{
  v10 = a2;
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3 || (v4 = objc_opt_self(), v5 = sub_100003F00(v4, 0), v6 = [v5 _currentRequest], objc_msgSend(v6, "context"), v3 = objc_claimAutoreleasedReturnValue(), v6, v5, v3) && v3[7] == 1)
    {
      sub_100003BA8(v3, v10);
    }

    else
    {

      v7 = sub_1000038C4([PKUISSPresentableContext alloc], v10);
      v8 = *(a1 + 24);
      *(a1 + 24) = v7;

      v9 = objc_opt_self();
      v3 = sub_100003F00(v9, 0);
      [v3 _setNeedsUpdate];
    }
  }
}

void sub_100005FA8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100005FB4(a1, a2);
  }
}

void sub_100005FB4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    [*(a1 + 16) addObject:a2];
    v2 = objc_opt_self();
    v3 = sub_100003F00(v2, 0);
    [v3 _setNeedsUpdate];
  }
}

void sub_100006014(void *a1, void *a2, void *a3)
{
  [a1 setState:a2];
  [a3 setBannerDetached:a1[2] == 0];
}

void sub_100006078(id *a1, void *a2, uint64_t *a3)
{
  objc_storeStrong(a1 + 1, a2);
  sub_1000017C4(*a3, a1[6]);
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v6 = sub_1000059F4(a1[1]);
    [WeakRetained setState:v6];

    [WeakRetained setBannerDetached:0];
  }
}

void sub_1000060F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = sub_100005DF8(a1);
  [WeakRetained setState:v2];
}

void sub_100006154(uint64_t a1, uint64_t a2, id *a3, void *a4)
{
  sub_1000017C4(a2, *(a1 + 48));
  objc_storeStrong((a1 + 8), *a3);
  v7 = sub_100005DF8(a1);
  [a4 setState:v7];
}