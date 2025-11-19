id sub_100001368(void *a1)
{
  v2 = [[ICQUpgradeFlowManager alloc] initWithOffer:a1[5]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1[4] + 8) setDelegate:?];
  [*(a1[4] + 8) setFlowOptions:a1[6]];
  [*(a1[4] + 8) setIcqLink:a1[7]];
  v5 = *(a1[4] + 8);
  v6 = a1[8];
  v7 = a1[9];

  return [v5 _configurePresentingViewController:v6 preloadedRemoteUIData:v7];
}

id sub_1000015C4(uint64_t a1)
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "presenting local upgrade flow manager within hidden app", v13, 2u);
  }

  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = [v3 isEqualToString:ICQBundleId];

  v5 = [*(a1 + 32) serverUIURL];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
LABEL_5:

    goto LABEL_8;
  }

  v8 = [*(a1 + 40) actionURL];

  if (!v8)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100004F80(v6);
    }

    v7 = 1;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_8:
  if ([*(a1 + 40) action] == 127)
  {
    return [*(a1 + 48) _presentOSLOWithOffer:*(a1 + 32) link:*(a1 + 40) presenter:*(a1 + 56)];
  }

  if ((v4 | v7) == 1)
  {
    return [*(a1 + 48) _presentFlowWithOffer:*(a1 + 32) flowOptions:*(a1 + 64) containerViewController:*(a1 + 56)];
  }

  v10 = [[ICQUpgradeFlowManager alloc] initWithOffer:*(a1 + 32)];
  v11 = *(a1 + 48);
  v12 = *(v11 + 8);
  *(v11 + 8) = v10;

  [*(*(a1 + 48) + 8) setDelegate:?];
  [*(*(a1 + 48) + 8) setFlowOptions:*(a1 + 64)];
  [*(*(a1 + 48) + 8) setIcqLink:*(a1 + 40)];
  return [*(*(a1 + 48) + 8) _configurePresentingViewController:*(a1 + 56) preloadedRemoteUIData:*(a1 + 72)];
}

void sub_1000019D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fetchedOffer = %@", buf, 0xCu);
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "error = %@", buf, 0xCu);
  }

  if (!v5 || v6)
  {
    [*(a1 + 40) _cancelFlow];
    v23 = _ICQGetLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [*(a1 + 32) context];
      *buf = 138412290;
      v41 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to launch offer with context = %@", buf, 0xCu);
    }

    v25 = [*(a1 + 32) context];
    v11 = [NSURL URLWithString:v25];

    v26 = [v11 icq_isICQLaunchURL];
    v27 = _ICQGetLogSystem();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        *buf = 0;
      }

      v29 = [NSURL URLWithString:ICQManageStoragePreferencesURL];
      v30 = +[LSApplicationWorkspace defaultWorkspace];
      [v30 openSensitiveURL:v29 withOptions:0];
    }

    else
    {
      if (v28)
      {
        *buf = 138412290;
        v41 = v11;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Launching link %@ in safari", buf, 0xCu);
      }

      v29 = objc_alloc_init(_LSOpenConfiguration);
      [v29 setAllowURLOverrides:0];
      v30 = +[LSApplicationWorkspace defaultWorkspace];
      [v30 openURL:v11 configuration:v29 completionHandler:&stru_10000C360];
    }
  }

  else
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "fetch offer success presenting flow in RemoteApp", buf, 2u);
    }

    v10 = [*(a1 + 32) context];
    v11 = [v5 universalLinkForContext:v10];

    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [v11 action];
      v13 = _ICQStringForAction();
      *buf = 138412290;
      v41 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Using link with action %@", buf, 0xCu);
    }

    v14 = [v11 action];
    v15 = *(a1 + 32);
    if (v14 == 118)
    {
      [v15 updateOfferWithAction:118];
      v16 = *(a1 + 32);
      v17 = [v11 actionURL];
      [v16 _updateRequestedServerUIURLWithURL:v17];

      v18 = [[ICQUpgradeFlowManager alloc] initWithOffer:*(a1 + 32)];
      v19 = *(a1 + 40);
      v20 = *(v19 + 8);
      *(v19 + 8) = v18;

      [*(*(a1 + 40) + 8) setDelegate:?];
      [*(*(a1 + 40) + 8) setIcqLink:v11];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001F7C;
      block[3] = &unk_10000C2F8;
      v21 = *(a1 + 48);
      block[4] = *(a1 + 40);
      v22 = &v38;
      v38 = v21;
      v39 = *(a1 + 56);
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v31 = [v15 context];
      [v5 setContext:v31];

      v32 = [[ICQUpgradeFlowManager alloc] initWithOffer:v5];
      v33 = *(a1 + 40);
      v34 = *(v33 + 8);
      *(v33 + 8) = v32;

      [*(*(a1 + 40) + 8) setDelegate:?];
      [*(*(a1 + 40) + 8) setFlowOptions:*(a1 + 64)];
      [*(*(a1 + 40) + 8) setIcqLink:v11];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100001F98;
      v35[3] = &unk_10000C320;
      v35[4] = *(a1 + 40);
      v22 = &v36;
      v36 = *(a1 + 56);
      dispatch_async(&_dispatch_main_q, v35);
    }
  }
}

void sub_100001FAC(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v8 = "Success %@ %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v9, 0x16u);
    }
  }

  else if (v7)
  {
    v9 = 138412546;
    v10 = 0;
    v11 = 2112;
    v12 = v5;
    v8 = "Failure %@ %@";
    goto LABEL_6;
  }
}

void sub_1000023F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "listener lookup connection error %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAndExit];
}

id sub_100002538(uint64_t a1)
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Exiting Hidden App Process", v4, 2u);
  }

  return [*(a1 + 32) _main_dismissAndExit];
}

void sub_100002638(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = [*(a1 + 32) _remoteViewControllerProxy];
  [v4 invalidate];
}

void sub_1000028A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error creating remoteVCProxy: %@", &v5, 0xCu);
  }

  [*(a1 + 32) _cancelFlow];
}

Class sub_100002F14(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100011BC0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100003058;
    v4[4] = &unk_10000C460;
    v4[5] = v4;
    v5 = off_10000C448;
    v6 = 0;
    qword_100011BC0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100011BC0)
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
  result = objc_getClass("INDaemonInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100004FC4();
  }

  qword_100011BB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003058(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100011BC0 = result;
  return result;
}

void sub_1000037EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void sub_100003E94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetch offer completed successfully: %@", buf, 0xCu);
    }

    v9 = [*(a1 + 32) remoteContext];
    v10 = [v9 offer];
    v11 = [v10 context];
    [v5 setContext:v11];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000040B0;
    block[3] = &unk_10000C320;
    block[4] = *(a1 + 32);
    v14 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch offer with error: %@", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000410C;
    v12[3] = &unk_10000C3D8;
    v12[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v12);
  }
}

void sub_1000040B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 universalLink];
  [v1 _launchUpgradeFlowWithOffer:v2 icqLink:v3];
}

id sub_10000410C(uint64_t a1)
{
  [*(a1 + 32) _handleFallback];
  v2 = *(a1 + 32);

  return [v2 _dismissAndExit];
}

void sub_100004374(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v8 = "Success %@ %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v9, 0x16u);
    }
  }

  else if (v7)
  {
    v9 = 138412546;
    v10 = 0;
    v11 = 2112;
    v12 = v5;
    v8 = "Failure %@ %@";
    goto LABEL_6;
  }
}

void sub_100004A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004AB4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to connect to remote proxy with error: %@", &v4, 0xCu);
  }
}

void sub_100004BC0(id a1)
{
  v1 = _ICQGetLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Exiting hidden app process.", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 openSessions];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = +[UIApplication sharedApplication];
        [v9 requestSceneSessionDestruction:v8 options:0 errorHandler:0];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  exit(0);
}

Class sub_100004DAC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100011BD0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100004EF0;
    v4[4] = &unk_10000C460;
    v4[5] = v4;
    v5 = off_10000C548;
    v6 = 0;
    qword_100011BD0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100011BD0)
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
  result = objc_getClass("INDaemonInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100004FC4();
  }

  qword_100011BC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100004EF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100011BD0 = result;
  return result;
}

void sub_100004F64(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000502C(void *a1, NSObject *a2)
{
  v3 = [a1 _sceneIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "windowScene._sceneIdentifier: %@", &v4, 0xCu);
}

void sub_100005194(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No context found. Action unhandled.", buf, 2u);
}