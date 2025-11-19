id sub_100001020()
{
  if (qword_100015E30 != -1)
  {
    sub_100008A2C();
  }

  v1 = qword_100015E38;

  return v1;
}

void sub_100001350(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

void sub_100001390(id a1)
{
  qword_100015D88 = os_log_create("com.apple.AppSSO", "SOAgentListener");

  _objc_release_x1();
}

Class sub_1000013D4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100015D98)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001518;
    v4[4] = &unk_1000103C8;
    v4[5] = v4;
    v5 = off_1000103B0;
    v6 = 0;
    qword_100015D98 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100015D98)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOInternalProtocols");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000082A4();
  }

  qword_100015D90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001518(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100015D98 = result;
  return result;
}

id sub_100001818()
{
  if (qword_100015DA0 != -1)
  {
    sub_1000082CC();
  }

  v1 = qword_100015DA8;

  return v1;
}

void sub_100001A18(id a1)
{
  qword_100015DA8 = os_log_create("com.apple.AppSSO", "SODaemonKerberosSettingsManager");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100001C44();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1000082E0(v1);
  }

  v2 = +[SOExtensionManager sharedInstance];
  [v2 loadExtensions];
  [v2 beginMatchingExtensions];
  v3 = +[SOConfigurationHost defaultManager];
  v4 = objc_alloc_init(SOKerberosSettingsManager);
  [v4 createKerberosSettingsCache];
  v5 = [[SODaemonKerberosSettingsManager alloc] initWithConfigurationHost:v3 settingsManager:v4];
  [(SODaemonKerberosSettingsManager *)v5 listenForConfigurationChanges];
  v6 = objc_alloc_init(SOAppSSOListener);
  [(SOAppSSOListener *)v6 resume];
  v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001C88;
  handler[3] = &unk_1000103F0;
  v8 = v6;
  v13 = v8;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_activate(v7);
  signal(15, 1);
  v9 = sub_100001C44();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100008324(v9);
  }

  objc_autoreleasePoolPop(v0);
  v10 = +[NSRunLoop currentRunLoop];
  [v10 run];

  return 0;
}

id sub_100001C44()
{
  if (qword_100015DB0 != -1)
  {
    sub_100008368();
  }

  v1 = qword_100015DB8;

  return v1;
}

void sub_100001C88(uint64_t a1)
{
  v2 = sub_100001C44();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Got SIGTERM, shutting down", v3, 2u);
  }

  [*(a1 + 32) invalidate];
  exit(0);
}

void sub_100001CF4(id a1)
{
  qword_100015DB8 = os_log_create("com.apple.AppSSO", "AppSSODaemon");

  _objc_release_x1();
}

id sub_100001EE4()
{
  if (qword_100015DD0 != -1)
  {
    sub_10000837C();
  }

  v1 = qword_100015DD8;

  return v1;
}

id sub_100002114()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100015DE0;
  v7 = qword_100015DE0;
  if (!qword_100015DE0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100002418;
    v3[3] = &unk_100010390;
    v3[4] = &v4;
    sub_100002418(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000021DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000221C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100015DC8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100002360;
    v4[4] = &unk_1000103C8;
    v4[5] = v4;
    v5 = off_100010450;
    v6 = 0;
    qword_100015DC8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100015DC8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000844C();
  }

  qword_100015DC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002360(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100015DC8 = result;
  return result;
}

void sub_1000023D4(id a1)
{
  qword_100015DD8 = os_log_create("com.apple.AppSSO", "SODaemonUtils");

  _objc_release_x1();
}

Class sub_100002418(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100015DE8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000255C;
    v4[4] = &unk_1000103C8;
    v4[5] = v4;
    v5 = off_100010488;
    v6 = 0;
    qword_100015DE8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100015DE8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100008474();
  }

  qword_100015DE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000255C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100015DE8 = result;
  return result;
}

void sub_100002614(id a1)
{
  qword_100015DF0 = dispatch_queue_create("com.apple.AppSSO.daemon-ui-queue", 0);

  _objc_release_x1();
}

id sub_100002728()
{
  if (qword_100015E00 != -1)
  {
    sub_1000084B0();
  }

  v1 = qword_100015E08;

  return v1;
}

id sub_100002BCC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v60[0] = @"url";
  v58 = [v4 url];
  if (v58)
  {
    v41 = [v4 url];
    v6 = [v41 absoluteString];
  }

  else
  {
    v6 = &stru_100010860;
  }

  v45 = v6;
  v61[0] = v6;
  v60[1] = @"httpHeaders";
  v7 = [v4 httpHeaders];
  v57 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__NSDictionary0__struct;
  }

  v61[1] = v8;
  v60[2] = @"httpBody";
  v9 = [v4 httpBody];
  v10 = v9;
  if (!v9)
  {
    v9 = objc_alloc_init(NSData);
  }

  v44 = v9;
  v61[2] = v9;
  v60[3] = @"extensionBundleIdentifier";
  v11 = [v5 extensionBundleIdentifier];
  v55 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_100010860;
  }

  v61[3] = v12;
  v60[4] = @"teamIdentifier";
  v13 = [v5 extensionTeamIdentifier];
  v54 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &stru_100010860;
  }

  v61[4] = v14;
  v60[5] = @"extensionData";
  v15 = [v5 extensionData];
  v53 = v15;
  if (!v15)
  {
    v15 = +[NSDictionary dictionary];
  }

  v56 = v10;
  v43 = v15;
  v61[5] = v15;
  v60[6] = @"realm";
  v16 = [v5 realm];
  v52 = v16;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &stru_100010860;
  }

  v61[6] = v17;
  v60[7] = @"callerBundleIdentifier";
  v18 = [v4 callerBundleIdentifier];
  v51 = v18;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &stru_100010860;
  }

  v61[7] = v19;
  v60[8] = @"auditTokenData";
  v20 = [v4 auditTokenData];
  v50 = v20;
  if (!v20)
  {
    v20 = +[NSData data];
  }

  v42 = v20;
  v61[8] = v20;
  v60[9] = @"requestedOperation";
  v21 = [v4 requestedOperation];
  v49 = v21;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = &stru_100010860;
  }

  v61[9] = v22;
  v60[10] = @"authorizationOptions";
  v23 = [v4 authorizationOptions];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &__NSDictionary0__struct;
  }

  v61[10] = v25;
  v60[11] = @"useInternalExtensions";
  v48 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 useInternalExtensions]);
  v61[11] = v48;
  v60[12] = @"cfNetworkInterception";
  v47 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isCFNetworkInterception]);
  v61[12] = v47;
  v60[13] = @"callerManaged";
  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isCallerManaged]);
  v61[13] = v26;
  v60[14] = @"callerTeamIdentifier";
  v27 = [v4 callerTeamIdentifier];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = &stru_100010860;
  }

  v61[14] = v29;
  v60[15] = @"localizedCallerDisplayName";
  v30 = [v4 localizedCallerDisplayName];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = &stru_100010860;
  }

  v61[15] = v32;
  v60[16] = @"enableUserInteraction";
  v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isUserInteractionEnabled]);
  v61[16] = v33;
  v60[17] = @"impersonationBundleIdentifier";
  v34 = [v4 impersonationBundleIdentifier];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = &stru_100010860;
  }

  v61[17] = v36;
  v60[18] = @"screenLockedBehavior";
  v59 = v5;
  v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 screenLockedBehavior]);
  v61[18] = v37;
  v60[19] = @"identifier";
  v38 = [v4 identifier];
  v61[19] = v38;
  v60[20] = @"showOnCoverScreen";
  v39 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 canShowOnCoverScreen]);
  v61[20] = v39;
  v46 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:21];

  if (!v50)
  {
  }

  if (!v53)
  {
  }

  if (!v56)
  {
  }

  if (v58)
  {
  }

  return v46;
}

id sub_100003134()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100015E10;
  v7 = qword_100015E10;
  if (!qword_100015E10)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000040A4;
    v3[3] = &unk_100010390;
    v3[4] = &v4;
    sub_1000040A4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000031FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000383C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000385C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100015E20;
  v7 = qword_100015E20;
  if (!qword_100015E20)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000426C;
    v3[3] = &unk_100010390;
    v3[4] = &v4;
    sub_10000426C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100003924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000393C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

void sub_100003DCC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002728();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000088DC();
  }
}

void sub_100003E20(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _closeRemoteUIWithError:0];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void sub_100003F50(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002728();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000088DC();
  }
}

void sub_100004060(id a1)
{
  qword_100015E08 = os_log_create("com.apple.AppSSO", "SODaemonUIManager");

  _objc_release_x1();
}

void sub_1000040A4(uint64_t a1)
{
  sub_1000040FC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOErrorHelper");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015E10 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000089DC();
    sub_1000040FC();
  }
}

void sub_1000040FC()
{
  v1[0] = 0;
  if (!qword_100015E18)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1000041F8;
    v1[4] = &unk_1000103C8;
    v1[5] = v1;
    v2 = off_100010568;
    v3 = 0;
    qword_100015E18 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100015E18)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1000041F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100015E18 = result;
  return result;
}

void sub_10000426C(uint64_t a1)
{
  sub_1000040FC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOInternalProtocols");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015E20 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000082A4();
    sub_1000042C4();
  }
}

void sub_100004428(id a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v1 = qword_100015E40;
  v7 = qword_100015E40;
  if (!qword_100015E40)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100007E68;
    v3[3] = &unk_100010390;
    v3[4] = &v4;
    sub_100007E68(v3);
    v1 = v5[3];
  }

  v2 = v1;
  _Block_object_dispose(&v4, 8);
}

void sub_1000044F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000451C(id a1, SORequestQueue *a2, SORequestQueueItem *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(SORequestQueueItem *)v5 service];
  v7 = [(SORequestQueueItem *)v5 requestParameters];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004600;
  v10[3] = &unk_100010610;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [v6 _performAuthorizationWithRequestParameters:v7 completion:v10];
}

void sub_100004600(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) completionBlock];

  if (v7)
  {
    v8 = [*(a1 + 32) completionBlock];
    (v8)[2](v8, v5, v6);
  }

  if ([v6 code] == -2 || objc_msgSend(v6, "code") == -4)
  {
    v9 = *(a1 + 40);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100004728;
    v13 = &unk_1000105E8;
    v14 = v5;
    v15 = v6;
    [v9 removeAllRequestsWithBlock:&v10];
  }

  [*(a1 + 40) processNextRequest];
}

void sub_100004728(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 completionBlock];
  (*(v4 + 2))(v4, *(a1 + 32), *(a1 + 40));
}

void sub_100004B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100004B1C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100015E50;
  v7 = qword_100015E50;
  if (!qword_100015E50)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100008030;
    v3[3] = &unk_100010390;
    v3[4] = &v4;
    sub_100008030(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100004BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000521C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100015E60;
  v7 = qword_100015E60;
  if (!qword_100015E60)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000080E0;
    v3[3] = &unk_100010390;
    v3[4] = &v4;
    sub_1000080E0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000052E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000052FC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100005E90(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100001020();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setupNonUISessionWithCompletion: success = %{public}@, error = %{public}@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  if (a2)
  {
    v9 = v8[4];
    v10 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006014;
    v12[3] = &unk_100010660;
    v12[4] = v8;
    v13 = v10;
    [v9 beginAuthorizationWithRequestParameters:v13 completion:v12];
  }

  else
  {
    v11 = [*(a1 + 40) identifier];
    [v8 authorization:v11 didCompleteWithCredential:0 error:v5];
  }
}

void sub_100006014(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100001020();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67240450;
    v9[1] = a2;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "beginAuthorizationWithRequestParameters: %{public}d, %{public}@", v9, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) identifier];
    [v7 authorization:v8 didCompleteWithCredential:0 error:v5];
  }
}

uint64_t sub_100006464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) authorization:*(a1 + 40) didCompleteWithCredential:a2 error:a3];
  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_1000064CC(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 service];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v6 = [v8 completionBlock];
    v7 = [sub_100004B1C() errorWithCode:-3];
    (v6)[2](v6, 0, v7);
  }
}

void sub_100006AB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v6 queueCount];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100008BA0(v7, v8);
  }

  if (!v7 && ![*(*(a1 + 40) + 32) requestCount])
  {
    [*(a1 + 40) _extensionCleanup];
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

void sub_100006B6C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  if (v6)
  {
    v7 = [v6 queueCount];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100008BA0(v7, v8);
  }

  if (!v7 && ![*(a1[5] + 32) requestCount])
  {
    [*(a1[5] + 16) extensionCleanupWithCompletion:&stru_100010718];
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

void sub_100006C34(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100008C18(a2, v4, v5);
  }
}

void sub_100007518(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

void sub_100007CA4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100001020();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ did finish completion: success = %{public}@, error = %{public}@", &v9, 0x20u);
  }
}

void sub_100007E24(id a1)
{
  qword_100015E38 = os_log_create("com.apple.AppSSO", "SODaemon");

  _objc_release_x1();
}

Class sub_100007E68(uint64_t a1)
{
  sub_100007EC0();
  result = objc_getClass("SOAuthorizationCredential");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100008CA4();
  }

  qword_100015E40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100007EC0()
{
  v1[0] = 0;
  if (!qword_100015E48)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100007FBC;
    v1[4] = &unk_1000103C8;
    v1[5] = v1;
    v2 = off_1000107A8;
    v3 = 0;
    qword_100015E48 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100015E48)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100007FBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100015E48 = result;
  return result;
}

Class sub_100008030(uint64_t a1)
{
  sub_100007EC0();
  result = objc_getClass("SOErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015E50 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1000089DC();
    return sub_100008088(v3);
  }

  return result;
}

Class sub_100008088(uint64_t a1)
{
  sub_100007EC0();
  result = objc_getClass("SOAuthorizationHintsCore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100008CCC();
  }

  qword_100015E58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000080E0(uint64_t a1)
{
  sub_100007EC0();
  result = objc_getClass("SOUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015E60 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100008474();
    return sub_100008138(v3);
  }

  return result;
}

Class sub_100008138(uint64_t a1)
{
  sub_100007EC0();
  result = objc_getClass("SOAuthorizationCredentialCore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100008CF4();
  }

  qword_100015E68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100008190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  sub_100007EC0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOInternalProtocols");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015E70 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = sub_1000082A4();
    sub_1000081E8(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void sub_1000081E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10000821C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}@, %{public}@", &v3, 0x16u);
}

void sub_100008390(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [NSNumber numberWithInt:a1];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ failed to get localized app name => using process name", &v6, 0x16u);
}

void sub_1000084C4()
{
  sub_1000042FC();
  sub_1000042E4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100008540()
{
  sub_1000042F0();
  sub_1000042D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000857C()
{
  sub_1000042F0();
  sub_1000042D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000085B8()
{
  sub_1000042F0();
  sub_1000042E4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000085F4()
{
  sub_1000042F0();
  sub_1000042D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100008630(uint64_t a1)
{
  v1 = *(a1 + 8);
  v6[0] = 136315906;
  sub_1000042C4();
  v7 = v2;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s _remoteAlertHandle = %{public}@, handle = %{public}@ on %@", v6, 0x2Au);
}

void sub_1000086CC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = @"NO";
  v7 = "[SODaemonUIManager remoteAlertHandleDidDeactivate:]";
  v6 = 136316162;
  v8 = 2114;
  if (v4)
  {
    v5 = @"YES";
  }

  v9 = v3;
  v10 = 2114;
  v11 = a2;
  v12 = 2114;
  v13 = v5;
  v14 = 2112;
  v15 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s _remoteAlertHandle = %{public}@, handle = %{public}@, isInternalExtension = %{public}@ on %@", &v6, 0x34u);
}

void sub_100008798()
{
  sub_1000042FC();
  sub_1000042E4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100008814(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_1000042C4();
  sub_1000042E4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000088A0()
{
  sub_1000042F0();
  sub_1000042D8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100008950(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_1000042C4();
  sub_1000042E4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100008A40(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v9 = [NSNumber numberWithInteger:a2];
  sub_1000081E8(&_mh_execute_header, v3, v4, "%{public}@ extension requests mode = %{public}@", v5, v6, v7, v8, 2u);
}

void sub_100008AEC(void *a1, id *a2)
{
  v3 = [a1 extensionBundleIdentifier];
  v10 = [*a2 endpoint];
  sub_1000081E8(&_mh_execute_header, v4, v5, "extension id: %@, endpoint: %@", v6, v7, v8, v9, 2u);
}

void sub_100008BA0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "finishAuthorizationWithCompletion: request queue count = %d", v2, 8u);
}

void sub_100008C18(char a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2114;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "extensionCleanupWithCompletion finished, success = %d, %{public}@", v3, 0x12u);
}