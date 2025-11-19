void sub_100000ED8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [v9 isAuthenticated];
    v16 = [NSNumber numberWithInteger:a2];
    v20 = 138413058;
    v21 = v9;
    v22 = 1024;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "RemoteAlert: authentication result: localPlayer=%@\nisAuthenticated=%d\nresult=%@\nerror=%@", &v20, 0x26u);
  }

  if (a2 == 2)
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "RemoteAlert: Need to show the GreenBuddy flow", &v20, 2u);
    }

    [*(a1 + 32) setNeedToShowGreenBuddy:1];
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))();
  }
}

void sub_100001550(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v10 = [v4 _remoteViewControllerProxy];
    [v10 invalidate];
  }

  else
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 68);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);

    [v4 dismissExistingAndInvokeDashboardWithHostPID:v5 game:v7 byPassPreAuthentication:v6 deepLink:v8 launchContext:v9];
  }
}

void sub_1000017F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:GKRemoteUIErrorDomain])
  {
    v8 = [v6 code];

    if (v8 && v5)
    {
      goto LABEL_4;
    }

LABEL_6:
    (*(*(a1 + 40) + 16))();
    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = [[GKRemoteUINavigationController alloc] initWithRemoteUIController:v5];
  [v9 setModalPresentationStyle:2];
  [v9 setModalInPresentation:1];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100001954;
  v15 = &unk_100008278;
  v10 = *(a1 + 40);
  v16 = v9;
  v17 = v10;
  v11 = v9;
  [v5 setCompletionHandler:&v12];
  [*(a1 + 32) presentViewController:v11 animated:1 completion:{0, v12, v13, v14, v15}];

LABEL_7:
}

void sub_100001954(uint64_t a1, void *a2)
{
  if ([a2 isServerAuthenticated])
  {
    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = [NSError userErrorForCode:2 underlyingError:0];
    v5 = +[GKLocalPlayer local];
    [v5 authenticationDidCompleteWithError:v4];

    v6 = +[GKLocalPlayer local];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001A9C;
    v9[3] = &unk_100008250;
    v7 = *(a1 + 40);
    v10 = v4;
    v11 = v7;
    v8 = v4;
    [v6 signOutWithCompletionHandler:v9];
  }
}

void sub_100001E04(id a1)
{
  v2 = +[GKDaemonProxy proxyForLocalPlayer];
  v1 = [v2 utilityServicePrivate];
  [v1 notifyRemoteAlertCompletedPresentingDashboard];
}

void sub_100001F88(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteViewControllerProxy];
  [v2 deactivate];
  [*(a1 + 32) setGameCenterViewController:0];
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

void sub_1000020FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "RemoteAlert: Failed deserializing the game data with error=%@", &v2, 0xCu);
}