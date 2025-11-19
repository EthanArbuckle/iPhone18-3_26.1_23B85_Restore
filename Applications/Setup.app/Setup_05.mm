void sub_10011336C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  v1 = [location[0] delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [location[0] delegate];
    [v3 presentWiFiPaneForFlowItem:location[0]];
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_100113410(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  v1 = [location[0] networkProvider];
  v2 = [v1 currentNetworkSupportsRestore] ^ 1;

  objc_storeStrong(location, 0);
  return v2 & 1;
}

BOOL sub_100113480(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = [a1[4] productVersion];
  location = +[SASSystemInformation productVersion];
  if (v3[0])
  {
    v4 = [SASSystemInformation compareProductVersion:v3[0] toProductVersion:location]== 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v3, 0);
  return v4;
}

void sub_100113F38(NSObject *a1, char a2, id obj)
{
  v21 = a1;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v13 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = location;
      }

      else if (location)
      {
        v16 = [location domain];
        v15 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v16, [location code]);
        v14 = v4;
        v13 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_100071CBC(buf, v4);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v17, "Primary account removal failed: %{public}@", buf, 0xCu);
      if (v13)
      {
      }

      if (v15)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001141AC;
  v10 = &unk_10032B688;
  v12 = v20 & 1;
  v11 = a1[4].isa;
  dispatch_async(v5, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

void sub_1001141AC(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) proximitySetupController];
    [v2 setIntentToMigrate:1];

    v3 = [*(a1 + 32) proximitySetupController];
    v4 = [v3 hasConnection];

    if (v4)
    {
      v5 = [*(a1 + 32) proximitySetupController];
      [v5 addObserver:*(a1 + 32)];

      oslog[0] = _BYLoggingFacility();
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = oslog[0];
        v7 = v23;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v6, v7, "This device is already connected to another device, terminate connection.", buf, 2u);
      }

      objc_storeStrong(oslog, 0);
      objc_initWeak(&location, *(a1 + 32));
      v8 = dispatch_get_global_queue(2, 0);
      v15 = _NSConcreteStackBlock;
      v16 = -1073741824;
      v17 = 0;
      v18 = sub_100114494;
      v19 = &unk_10032AF58;
      objc_copyWeak(&v20, &location);
      dispatch_async(v8, &v15);

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    else
    {
      v9 = [*(a1 + 32) view];
      v10 = [v9 window];
      [v10 setUserInteractionEnabled:1];

      [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"com.apple.buddy.migrateFromiOSChoice.spinner"];
      v11 = [*(a1 + 32) delegate];
      v12 = [v11 popToBuddyControllerWithClass:objc_opt_class() animated:1];
    }
  }

  else
  {
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"com.apple.buddy.migrateFromiOSChoice.spinner"];
    v13 = [*(a1 + 32) view];
    v14 = [v13 window];
    [v14 setUserInteractionEnabled:1];
  }
}

void sub_100114494(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    oslog = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v1 = oslog;
      v2 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v1, v2, "Terminating current connection", v4, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v3 = [location[0] proximitySetupController];
    [v3 setupFinished];
  }

  objc_storeStrong(location, 0);
}

void sub_10011577C(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  [a1[4] _invalidatePendingProximityFinishSetupRequest];
  v2 = dispatch_time(0, 1000000000);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100115874;
  v8 = &unk_10032B0D0;
  v9[0] = a1[4];
  dispatch_after(v2, v3, &block);

  objc_storeStrong(v9, 0);
}

void sub_100115874(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  [v3 setUserInteractionEnabled:1];

  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"com.apple.buddy.migrateFromiOSChoice.spinner"];
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 popToBuddyControllerWithClass:objc_opt_class() animated:1];
}

id sub_100115D7C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7170;
  v13 = qword_1003A7170;
  if (!qword_1003A7170)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001257B8;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001257B8(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_100116204()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7180;
  v13 = qword_1003A7180;
  if (!qword_1003A7180)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100125B6C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100125B6C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100116318(uint64_t a1, char a2, char a3, id obj)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v19 = a1;
  v5 = [*(a1 + 32) migrationFlowController];

  if (v5)
  {
    [*(a1 + 32) _cleanupCachedValues];
    if (location)
    {
      oslog = _BYLoggingFacility();
      v16 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100071CBC(buf, location);
        _os_log_error_impl(&_mh_execute_header, oslog, v16, "Migration flow failed with error: %{public}@", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [*(a1 + 32) setTargetUIState:0];
      v18 = 1;
    }

    else
    {
      if (v21)
      {
        v15 = _BYLoggingFacility();
        v14 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v15;
          v7 = v14;
          sub_10006AA68(v13);
          _os_log_impl(&_mh_execute_header, v6, v7, "Migration flow canceled", v13, 2u);
        }

        objc_storeStrong(&v15, 0);
      }

      else
      {
        v12 = _BYLoggingFacility();
        v11 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v12;
          v9 = v11;
          sub_10006AA68(v10);
          _os_log_impl(&_mh_execute_header, v8, v9, "Migration flow succeeded!", v10, 2u);
        }

        objc_storeStrong(&v12, 0);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  objc_storeStrong(&location, 0);
}

void sub_100116850(uint64_t a1, char a2, char a3, id obj)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v19 = a1;
  v5 = [*(a1 + 32) enrollmentFlowController];

  if (v5)
  {
    [*(a1 + 32) _cleanupCachedValues];
    if (location)
    {
      oslog = _BYLoggingFacility();
      v16 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100071CBC(buf, location);
        _os_log_error_impl(&_mh_execute_header, oslog, v16, "Enrollment flow failed with error: %{public}@", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [*(a1 + 32) setTargetUIState:0];
      v18 = 1;
    }

    else
    {
      if (v21)
      {
        v15 = _BYLoggingFacility();
        v14 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v15;
          v7 = v14;
          sub_10006AA68(v13);
          _os_log_impl(&_mh_execute_header, v6, v7, "Enrollment flow canceled", v13, 2u);
        }

        objc_storeStrong(&v15, 0);
      }

      else
      {
        v12 = _BYLoggingFacility();
        v11 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v12;
          v9 = v11;
          sub_10006AA68(v10);
          _os_log_impl(&_mh_execute_header, v8, v9, "Enrollment flow succeeded!", v10, 2u);
        }

        objc_storeStrong(&v12, 0);
      }

      [*(a1 + 32) setTargetUIState:14];
      [*(a1 + 32) setPresentingViewController:0];
      [*(a1 + 32) _updateUIIfNeeded];
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  objc_storeStrong(&location, 0);
}

void sub_100116E98(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  [*(a1 + 32) setProfileInstallationRequestCompleteHandler:{v11, a1}];
  [*(a1 + 32) setProfileIdentifier:v13];
  [*(a1 + 32) setBaseViewController:0];
  [*(a1 + 32) setNavController:0];
  [*(a1 + 32) setSignInTask:0];
  v9 = +[MCProfileConnection sharedConnection];
  [v9 updateCloudConfigurationWithRMAccountIdentifier:v12];

  v10 = +[BuddyCloudConfigManager sharedManager];
  [v10 cloudConfigMayHaveChanged];

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_100117000(NSObject *a1, char a2, char a3, id obj)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v11, "Enrollment flow failed with error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    [(objc_class *)a1[4].isa _cacheAuthenticationResults:0];
    if (a1[5].isa)
    {
      (*(a1[5].isa + 2))();
    }

    v10 = 1;
  }

  else
  {
    v9 = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v9;
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v5, v6, "Enrollment flow succeed!", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  objc_storeStrong(&location, 0);
}

void sub_10011743C(NSObject *a1, uint64_t a2, id obj, void *a4, void *a5)
{
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  oslog[1] = a1;
  if (v13)
  {
    oslog[0] = _BYLoggingFacility();
    v11 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v8 = oslog[0];
      v9 = v11;
      sub_10006AA68(v10);
      _os_log_error_impl(&_mh_execute_header, v8, v9, "Failed to discover enrollment channel", v10, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  if (v16 == 1)
  {
    [(objc_class *)a1[4].isa setMdmEnrollmentChannel:2];
  }

  else if (v16 == 3)
  {
    [(objc_class *)a1[4].isa setMdmEnrollmentChannel:1];
  }

  else
  {
    [(objc_class *)a1[4].isa setMdmEnrollmentChannel:0];
  }

  (*(a1[5].isa + 2))();
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
}

void sub_100117BE0(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  oslog[1] = a1;
  if ([location[0] length] && !v16)
  {
    v11 = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v11;
      v8 = v10;
      sub_10006AA68(v9);
      _os_log_impl(&_mh_execute_header, v7, v8, "Current bearer token is still valid!", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    (*(a1[4].isa + 2))();
    v12 = 0;
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v14 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v5 = oslog[0];
      v6 = v14;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "Failed to communicate with the MDM server with existing bearer token", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    (*(a1[4].isa + 2))();
    v12 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1001181E8(uint64_t a1)
{
  v2 = [*(a1 + 32) languageSettingBlock];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));

  return (*(*(a1 + 56) + 16))();
}

void sub_100118370(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([a1[4] isMDMMigrationMode])
  {
    location[0] = _BYLoggingFacility();
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = location[0];
      v3 = v50;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Ensuring network connection for MDM migration", buf, 2u);
    }

    objc_storeStrong(location, 0);
    [a1[4] setTargetUIState:11];
    [a1[4] _updateUIIfNeeded];
    v4 = [a1[4] networkProvider];
    v5 = [v4 networkReachable];

    if (v5)
    {
      v48 = _BYLoggingFacility();
      v47 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v48;
        v7 = v47;
        sub_10006AA68(v46);
        _os_log_impl(&_mh_execute_header, v6, v7, "Network is reachable; not showing Wi-Fi picker", v46, 2u);
      }

      objc_storeStrong(&v48, 0);
      (*(a1[5] + 2))();
    }

    else
    {
      v45 = _BYLoggingFacility();
      v44 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v45;
        v9 = v44;
        sub_10006AA68(v43);
        _os_log_impl(&_mh_execute_header, v8, v9, "Showing Wi-Fi picker", v43, 2u);
      }

      objc_storeStrong(&v45, 0);
      objc_initWeak(&from, a1[4]);
      v41[1] = 3;
      v10 = a1[4];
      v35 = _NSConcreteStackBlock;
      v36 = -1073741824;
      v37 = 0;
      v38 = sub_100118830;
      v39 = &unk_10032D178;
      objc_copyWeak(v41, &from);
      v40 = a1[5];
      [v10 _showWiFiPickerWithDismissalTriggers:3 completionHandler:&v35];
      objc_storeStrong(&v40, 0);
      objc_destroyWeak(v41);
      objc_destroyWeak(&from);
    }
  }

  else
  {
    oslog = _BYLoggingFacility();
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = oslog;
      v12 = v33;
      sub_10006AA68(v32);
      _os_log_impl(&_mh_execute_header, v11, v12, "Ensuring network connection", v32, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v13 = [a1[4] networkProvider];
    v14 = [v13 networkReachable];

    if (v14)
    {
      v31 = _BYLoggingFacility();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v31;
        v16 = v30;
        sub_10006AA68(v29);
        _os_log_impl(&_mh_execute_header, v15, v16, "Network is reachable; not waiting for acquisition", v29, 2u);
      }

      objc_storeStrong(&v31, 0);
      (*(a1[5] + 2))();
    }

    else
    {
      v28 = _BYLoggingFacility();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v28;
        v18 = v27;
        sub_10006AA68(v26);
        _os_log_impl(&_mh_execute_header, v17, v18, "Waiting for network acquisition", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      v19 = a1[4];
      v20 = _NSConcreteStackBlock;
      v21 = -1073741824;
      v22 = 0;
      v23 = sub_1001188B0;
      v24 = &unk_10032C630;
      v25 = a1[5];
      [v19 _addNetworkAcquisitionHandler:&v20 withTimeout:60.0];
      objc_storeStrong(&v25, 0);
    }
  }
}

void sub_100118830(uint64_t a1, char a2)
{
  v5 = a1;
  v4 = a2;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained((a1 + 40));
  if (v3[0])
  {
    [v3[0] _midMigrationWiFiPickerWasDismissed:v4 & 1 completionHandler:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(v3, 0);
}

uint64_t sub_1001188B0(NSObject *a1, char a2)
{
  v15 = a1;
  v14 = a2;
  oslog[1] = a1;
  if (a2)
  {
    oslog[0] = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v12;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Timed out waiting for network", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v10;
      v6 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v5, v6, "Acquired network", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  return (*(a1[4].isa + 2))();
}

void sub_100118E2C(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v12;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Association finished; waiting for network acquisition", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  isa = a1[4].isa;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100118F54;
  v9 = &unk_10032C630;
  v10 = a1[5].isa;
  [(objc_class *)isa _addNetworkAcquisitionHandler:&v5 withTimeout:20.0];
  objc_storeStrong(&v10, 0);
}

void sub_100118F54(NSObject *a1, char a2)
{
  v15 = a1;
  v14 = a2;
  oslog[1] = a1;
  if (a2)
  {
    oslog[0] = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v12;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Timed out waiting for network acquisition", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    location = [NSError errorWithDomain:NSURLErrorDomain code:-1009 userInfo:0];
    (*(a1[4].isa + 2))();
    objc_storeStrong(&location, 0);
  }

  else
  {
    v9 = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v9;
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v5, v6, "Acquired network", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    (*(a1[4].isa + 2))();
  }
}

void sub_100119248(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (([(objc_class *)a1[4].isa isMDMMigrationMode]& 1) != 0)
  {
    oslog[0] = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Ignoring fetchingCloudConfigurationScene because we're already installing MDM profile", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    [(objc_class *)a1[4].isa setTargetUIState:1];
    [(objc_class *)a1[4].isa _updateUIIfNeeded];
  }
}

id sub_100119484(uint64_t a1)
{
  v2 = [MDMCloudConfiguration sharedConfiguration:a1];
  [v2 refreshDetailsFromDisk];

  [*(a1 + 32) setTargetUIState:2];
  [*(a1 + 32) setCloudConfigConsentCompletionHandler:*(a1 + 40)];
  v3 = +[BuddyCloudConfigManager sharedManager];
  [v3 cloudConfigMayHaveChanged];

  v4 = *(a1 + 32);
  v5 = [v4 presentingViewController];
  [v4 _setInProgress:0 onViewController:v5];

  return [*(a1 + 32) _updateUIIfNeeded];
}

void sub_10011991C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  oslog[1] = a1;
  if (v14)
  {
    v9 = _BYLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(v16, v14);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Silent auth failed! We have to do UI Auth. Error: %{public}@", v16, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    [*(a1 + 32) _requestInteractiveMAIDAuthenticationWithManagedAppleID:*(a1 + 40) personaID:*(a1 + 48) ephemeral:*(a1 + 64) & 1 completionHandler:*(a1 + 56)];
    v10 = 0;
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog[0];
      v6 = v12;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Silent auth succeed! No need to do UI auth", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v7 = *(a1 + 56);
    v8 = [location[0] mutableCopy];
    (*(v7 + 16))(v7, v8, 0, v14);

    v10 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_100119CDC(id *a1)
{
  v15[2] = a1;
  v15[1] = a1;
  v2 = [a1[4] navController];
  v3 = [a1[4] passcodeCacheManager];
  v4 = [a1[4] featureFlags];
  v15[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:v2 mode:8 passcodeCacheManager:v3 featureFlags:v4];

  if ([a1[5] length])
  {
    [v15[0] setUsername:a1[5]];
    [v15[0] setIsUsernameEditable:0];
  }

  objc_initWeak(&location, v15[0]);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100119EF8;
  v10 = &unk_10032D1F0;
  v11 = a1[4];
  objc_copyWeak(&v13, &location);
  v12 = a1[6];
  [v15[0] setHandler:&v6];
  v5 = [a1[4] navController];
  [v5 pushViewController:v15[0] animated:1];

  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v13);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&location);
  objc_storeStrong(v15, 0);
}

void sub_100119EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100119EF8(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v42 = 0;
  objc_storeStrong(&v42, a3);
  oslog[1] = a1;
  v5 = [BuddyAppleIDSignInTask alloc];
  v6 = [(objc_class *)a1[4].isa featureFlags];
  v7 = +[BuddyAccountTools sharedBuddyAccountTools];
  v8 = [(BuddyAppleIDSignInTask *)v5 initWithFeatureFlags:v6 accountTools:v7];
  [(objc_class *)a1[4].isa setSignInTask:v8];

  LOBYTE(v8) = +[DMCFeatureOverrides allowAnyMAIDToSignIn]^ 1;
  v9 = [(objc_class *)a1[4].isa signInTask];
  [v9 setRequireAppleMAID:v8 & 1];

  v10 = [(objc_class *)a1[4].isa navController];
  v11 = [(objc_class *)a1[4].isa signInTask];
  [v11 setNavigationController:v10];

  v12 = [(objc_class *)a1[4].isa featureFlags];
  LOBYTE(v11) = [v12 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (v11)
  {
    oslog[0] = _BYLoggingFacility();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(objc_class *)a1[4].isa passcodeCacheManager];
      v14 = [(objc_class *)a1[4].isa signInTask];
      sub_10011A49C(buf, "[BuddyEnrollmentCoordinator _requestInteractiveMAIDAuthenticationWithManagedAppleID:personaID:ephemeral:completionHandler:]_block_invoke_2", v13, v14);
      _os_log_impl(&_mh_execute_header, oslog[0], v40, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
    }

    objc_storeStrong(oslog, 0);
    v15 = [(objc_class *)a1[4].isa passcodeCacheManager];
    v16 = [(objc_class *)a1[4].isa signInTask];
    [v16 setCacheManager:v15];
  }

  v17 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v35 = -1073741824;
  v36 = 0;
  v37 = sub_10011A4C4;
  v38 = &unk_10032AF58;
  objc_copyWeak(&v39, &a1[6].isa);
  dispatch_async(v17, &block);

  v33 = _BYLoggingFacility();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v33;
    v19 = v32;
    sub_10006AA68(v31);
    _os_log_impl(&_mh_execute_header, v18, v19, "Beginning authentication...", v31, 2u);
  }

  objc_storeStrong(&v33, 0);
  v20 = [(objc_class *)a1[4].isa signInTask];
  v21 = location[0];
  v22 = v42;
  v23 = _NSConcreteStackBlock;
  v24 = -1073741824;
  v25 = 0;
  v26 = sub_10011A510;
  v27 = &unk_10032D1C8;
  objc_copyWeak(&v30, &a1[6].isa);
  v28 = a1[4].isa;
  v29 = a1[5].isa;
  [v20 authenticateWithUsername:v21 password:v22 completion:&v23];

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v39);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

void sub_10011A468(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19)
{
  objc_destroyWeak(v20);
  objc_destroyWeak(v19);
  _Unwind_Resume(v21);
}

double sub_10011A49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 136315650;
  *a1 = 136315650;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2112;
  *(a1 + 24) = a4;
  return result;
}

void sub_10011A4C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEnabled:{0, a1, a1}];
}

void sub_10011A510(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27 = 0;
  objc_storeStrong(&v27, a3);
  v26[1] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v22 = -1073741824;
  v23 = 0;
  v24 = sub_10011A8D0;
  v25 = &unk_10032AF58;
  objc_copyWeak(v26, (a1 + 48));
  dispatch_async(v5, &block);

  if (v27)
  {
    oslog = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v17 = 0;
      v15 = 0;
      if (_BYIsInternalInstall())
      {
        v6 = v27;
      }

      else if (v27)
      {
        v18 = [v27 domain];
        v17 = 1;
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v18, [v27 code]);
        v16 = v6;
        v15 = 1;
      }

      else
      {
        v6 = 0;
      }

      sub_100071CBC(buf, v6);
      _os_log_error_impl(&_mh_execute_header, oslog, v19, "Authentication failed: %{public}@", buf, 0xCu);
      if (v15)
      {
      }

      if (v17)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    v14 = 1;
  }

  else
  {
    [*(a1 + 32) _cacheAuthenticationResults:location[0]];
    v13 = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v13;
      v8 = v12;
      sub_10006AA68(v11);
      _os_log_impl(&_mh_execute_header, v7, v8, "Authentication succeeded!", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    v9 = *(a1 + 40);
    v10 = [location[0] mutableCopy];
    (*(v9 + 16))(v9, v10, 0, v27);

    v14 = 0;
  }

  objc_destroyWeak(v26);
  if (!v14)
  {
    v14 = 0;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

void sub_10011A8D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEnabled:{1, a1, a1}];
}

void sub_10011AB00(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 isMDMEnrollmentFlowControllerAdoptionEnabled] ^ 1;

  if (v3)
  {
    location[0] = [[BuddyAppleIDSpinnerPage alloc] initWithAccountMode:1];
    v4 = [*(a1 + 32) navController];
    [v4 pushViewController:location[0] animated:1];

    objc_storeStrong(location, 0);
  }

  v46 = _BYLoggingFacility();
  v45 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v46;
    v6 = v45;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v5, v6, "Beginning sign-in...", buf, 2u);
  }

  objc_storeStrong(&v46, 0);
  v7 = +[MDMCloudConfiguration sharedConfiguration];
  v8 = [v7 details];
  v43 = [v8 objectForKeyedSubscript:kCCRemoteManagementAccountIdentifierKey];

  v48[0] = ACAccountTypeIdentifierAppleAccount;
  v48[1] = ACAccountTypeIdentifieriTunesStore;
  v9 = [NSArray arrayWithObjects:v48 count:2];
  v42 = [(NSArray *)v9 mutableCopy];

  if ([v43 length])
  {
    v41 = [*(a1 + 40) objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
    v10 = +[ACAccountStore defaultStore];
    v11 = [v10 dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:v41];

    if (v11)
    {
      oslog = _BYLoggingFacility();
      v39 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = oslog;
        v13 = v39;
        sub_10006AA68(v38);
        _os_log_impl(&_mh_execute_header, v12, v13, "We have signed in AppleAccount already!", v38, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [v42 removeObject:ACAccountTypeIdentifierAppleAccount];
    }

    v14 = +[ACAccountStore defaultStore];
    v15 = [v14 dmc_iTunesAccountForRemoteManagingAccountWithAltDSID:v41];

    if (v15)
    {
      v37 = _BYLoggingFacility();
      v36 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v37;
        v17 = v36;
        sub_10006AA68(v35);
        _os_log_impl(&_mh_execute_header, v16, v17, "We have signed in iTunesStore already!", v35, 2u);
      }

      objc_storeStrong(&v37, 0);
      [v42 removeObject:ACAccountTypeIdentifieriTunesStore];
    }

    objc_storeStrong(&v41, 0);
  }

  v28 = _NSConcreteStackBlock;
  v29 = -1073741824;
  v30 = 0;
  v31 = sub_10011B090;
  v32 = &unk_10032AEC8;
  v33 = *(a1 + 56);
  v34 = objc_retainBlock(&v28);
  if ([v42 count])
  {
    v20 = objc_opt_new();
    v21 = v42;
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = [*(a1 + 32) navController];
    [v20 signInAccountsWithTypes:v21 authenticationResult:v22 personaID:v23 canMakeAccountActive:1 baseViewController:v24 completionHandler:v34];
  }

  else
  {
    v27 = _BYLoggingFacility();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v27;
      v19 = v26;
      sub_10006AA68(v25);
      _os_log_impl(&_mh_execute_header, v18, v19, "No need to sign-in any accounts!", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    (*(v34 + 2))(v34, 1, 0);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
}

void sub_10011B090(uint64_t a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13 = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10011B1B4;
  v9 = &unk_10032B9C8;
  v12 = v15 & 1;
  v10 = location;
  v11 = *(a1 + 32);
  dispatch_async(v4, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_10011B1B4(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (*(a1 + 48))
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v8;
      v4 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v3, v4, "Sign-in succeeded!", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v2 = *(a1 + 32);
      }

      else if (*(a1 + 32))
      {
        v12 = [*(a1 + 32) domain];
        v11 = 1;
        v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [*(a1 + 32) code]);
        v10 = v2;
        v9 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_100071CBC(buf, v2);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Sign-in failed: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10011B798(uint64_t a1)
{
  v2 = [*(a1 + 32) navController];
  v3 = [*(a1 + 32) baseViewController];
  v4 = [v2 popToViewController:v3 animated:1];
}

void sub_10011B97C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v12 = [location[0] domain];
        v11 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [location[0] code]);
        v10 = v3;
        v9 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Reset failed: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Reset was successful!", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_10011C38C(void *a1, void *a2, char a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = a3;
  v5 = a1[4];
  v6 = [location[0] dataUsingEncoding:{4, a1}];
  (*(v5 + 16))(v5, v6, 0, v7 & 1);

  objc_storeStrong(location, 0);
}

double sub_10011C8B8(uint64_t a1, uint64_t a2, int a3)
{
  *&result = 136315650;
  *a1 = 136315650;
  *(a1 + 4) = "[BuddyEnrollmentCoordinator requestUserConsentForMigrationWithPendingCloudConfig:originalEnrollmentType:isMandatory:deadline:completionHandler:]";
  *(a1 + 12) = 2112;
  *(a1 + 14) = a2;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a3;
  return result;
}

id sub_10011CAAC(uint64_t a1)
{
  if (([*(a1 + 32) failedMigrationDueToNetworkError] & 1) == 0)
  {
    [*(a1 + 32) setFailedMigrationDueToNetworkError:{objc_msgSend(*(a1 + 40), "buddy_isCloudConfigMigrationNetworkError") & 1}];
    [*(a1 + 32) _updateMigrationUIConfiguration];
  }

  return [*(a1 + 32) _presentError:*(a1 + 40)];
}

double sub_10011D3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 136315394;
  *a1 = 136315394;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  return result;
}

double sub_10011D3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 136315394;
  *a1 = 136315394;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2114;
  *(a1 + 14) = a3;
  return result;
}

void sub_10011D804(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [a1[4] networkAcquisitionHandlers];
  location[0] = [v2 copy];

  v3 = [a1[4] networkAcquisitionHandlers];
  [v3 removeAllObjects];

  memset(__b, 0, sizeof(__b));
  v4 = location[0];
  v5 = [v4 countByEnumeratingWithState:__b objects:v11 count:16];
  if (v5)
  {
    v6 = *__b[2];
    do
    {
      for (i = 0; i < v5; ++i)
      {
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(__b[1] + 8 * i);
        (*(v9 + 16))();
      }

      v5 = [v4 countByEnumeratingWithState:__b objects:v11 count:16];
    }

    while (v5);
  }

  objc_storeStrong(location, 0);
}

double sub_10011DF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 136315906;
  *a1 = 136315906;
  *(a1 + 4) = "[BuddyEnrollmentCoordinator _updateUIIfNeeded]";
  *(a1 + 12) = 2048;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a3;
  *(a1 + 32) = 2048;
  *(a1 + 34) = a4;
  return result;
}

double sub_10011E154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 136315650;
  *a1 = 136315650;
  *(a1 + 4) = "[BuddyEnrollmentCoordinator _showPaneForUIState:]";
  *(a1 + 12) = 2048;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2112;
  *(a1 + 24) = a3;
  return result;
}

void sub_10011E188(uint64_t a1)
{
  v56[2] = a1;
  v56[1] = a1;
  v2 = [*(a1 + 32) runningFlowItem];

  if (!v2)
  {
    goto LABEL_45;
  }

  v3 = *(a1 + 32);
  v4 = [v3 runningFlowItem];
  v56[0] = [v3 _uiStatesHostedByFlowItem:v4];

  v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  LOBYTE(v3) = [v56[0] containsObject:v5] ^ 1;

  if (v3)
  {
    v6 = [v56[0] allObjects];
    location = [v6 sortedArrayUsingSelector:"compare:"];

    v7 = *(a1 + 40);
    v8 = [location lastObject];
    v9 = [v8 integerValue];

    if (v7 <= v9)
    {
      v52 = _BYLoggingFacility();
      v51 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v19 = [*(a1 + 32) runningFlowItem];
        sub_10007B2CC(v58, v19, *(a1 + 40));
        _os_log_debug_impl(&_mh_execute_header, v52, v51, "Flow %@ can not present the requested state: %ld.", v58, 0x16u);
      }

      objc_storeStrong(&v52, 0);
    }

    else
    {
      oslog = _BYLoggingFacility();
      v53 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) runningFlowItem];
        sub_100071CBC(buf, v10);
        _os_log_impl(&_mh_execute_header, oslog, v53, "Flow item (%{public}@) is done!", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v11 = [*(a1 + 32) runningFlowItem];
      v12 = [v11 delegate];
      v13 = [*(a1 + 32) _viewControllerToRemoveWhenItemIsDone];
      [v12 removeViewControllersOnNextPush:v13];

      v14 = [*(a1 + 32) runningFlowItem];
      LOBYTE(v12) = [v14 isPotentialLastItem];

      if (v12)
      {
        v15 = [*(a1 + 32) exitBuddyBlock];
        v15[2](v15);
      }

      else
      {
        v15 = [*(a1 + 32) runningFlowItem];
        v16 = [v15 delegate];
        v17 = [*(a1 + 32) runningFlowItem];
        [v16 flowItemDone:v17];
      }

      [*(a1 + 32) setRunningFlowItem:0];
      v18 = [*(a1 + 32) viewControllersToRemove];
      [v18 removeAllObjects];
    }

    v50 = 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v20 = *(a1 + 32);
    v21 = [v20 runningFlowItem];
    v22 = [v20 _fatalUIStatesForFlowItem:v21];
    v23 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
    v24 = [v22 containsObject:v23];

    if (v24)
    {
      v25 = [*(a1 + 32) runningFlowItem];
      v26 = [v25 delegate];
      v27 = [*(a1 + 32) viewControllersToRemove];
      v28 = [v27 copy];
      [v26 removeViewControllersOnNextPush:v28];

      v29 = [*(a1 + 32) viewControllersToRemove];
      [v29 removeAllObjects];
    }

    v50 = 0;
  }

  objc_storeStrong(v56, 0);
  if (!v50)
  {
LABEL_45:
    v49 = [*(a1 + 32) _shouldUseNavController];
    v30 = *(a1 + 40);
    if (v30)
    {
      if ((v30 - 1) < 5)
      {
LABEL_27:
        v48 = [*(a1 + 32) viewControllerForUIState:*(a1 + 40)];
        v31 = [*(a1 + 32) viewControllersToRemove];
        [v31 addObject:v48];

        v32 = [*(a1 + 32) shouldShowFlowItemResultBlock];
        if (v32)
        {
          v33 = *(a1 + 32);
          v34 = [v33 pendingFlowItem];
          v47 = [v33 _uiStatesHostedByFlowItem:v34];

          v35 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
          LOBYTE(v33) = [v47 containsObject:v35] ^ 1;

          if (v33)
          {
            v46 = _BYLoggingFacility();
            v45 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v36 = [*(a1 + 32) pendingFlowItem];
              sub_10007B2CC(v57, v36, *(a1 + 40));
              _os_log_debug_impl(&_mh_execute_header, v46, v45, "Pending flow item %@ can not present the requested state: %ld.", v57, 0x16u);
            }

            objc_storeStrong(&v46, 0);
            v37 = [*(a1 + 32) shouldShowFlowItemResultBlock];
            (*(v37 + 2))(v37, 0, 0);

            [*(a1 + 32) setPendingFlowItem:0];
          }

          else
          {
            [*(a1 + 32) setPresentingViewController:v48];
            [*(a1 + 32) setPendingUIState:*(a1 + 40)];
            v38 = [*(a1 + 32) shouldShowFlowItemResultBlock];
            v38[2](v38, 1, v48);
          }

          [*(a1 + 32) setShouldShowFlowItemResultBlock:0];
          objc_storeStrong(&v47, 0);
        }

        else if (v49)
        {
          [*(a1 + 32) setPresentingViewController:v48];
          [*(a1 + 32) setPendingUIState:*(a1 + 40)];
          v39 = [*(a1 + 32) navController];
          [v39 pushViewController:v48 animated:1];
        }

        v50 = 2;
        objc_storeStrong(&v48, 0);
        return;
      }

      if (v30 != 6)
      {
        if ((v30 - 7) >= 3)
        {
          if (v30 == 10)
          {
            return;
          }

          if ((v30 - 11) >= 3)
          {
            if (v30 == 14)
            {
              v41 = [*(a1 + 32) shouldShowFlowItemResultBlock];

              if (v41)
              {
                v42 = [*(a1 + 32) shouldShowFlowItemResultBlock];
                (*(v42 + 2))(v42, 0, 0);

                [*(a1 + 32) setShouldShowFlowItemResultBlock:0];
              }
            }

            return;
          }
        }

        goto LABEL_27;
      }

      v44 = [*(a1 + 32) viewControllerForUIState:*(a1 + 40)];
      [*(a1 + 32) setPresentingViewController:v44];
      if (v49)
      {
        [*(a1 + 32) setPendingUIState:*(a1 + 40)];
        v43 = [[UINavigationController alloc] initWithRootViewController:v44];
        v40 = [*(a1 + 32) navController];
        [v40 presentViewController:v43 animated:1 completion:0];

        objc_storeStrong(&v43, 0);
      }

      v50 = 2;
      objc_storeStrong(&v44, 0);
    }
  }
}

void sub_10011F2E4(uint64_t a1)
{
  v24[2] = a1;
  v24[1] = a1;
  v2 = [*(a1 + 32) presentingViewController];

  if (v2)
  {
    v3 = [*(a1 + 32) presentingViewController];
    v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___BuddyEnrollmentViewControllerProtocol];

    if (v4)
    {
      v24[0] = [*(a1 + 32) presentingViewController];
      v23 = objc_opt_respondsToSelector() & 1;
      v22 = objc_opt_respondsToSelector() & 1;
      if ((v23 & 1) == 0 || ([v24[0] presentErrorIfDesired:*(a1 + 40)] & 1) == 0)
      {
        v21 = [*(a1 + 32) _errorDismissAction];
        v18 = 0;
        if (v22)
        {
          v5 = [v24[0] alertControllerForError:*(a1 + 40) dismissAction:v21];
          v19 = v5;
          v18 = 1;
        }

        else
        {
          v5 = 0;
        }

        v16 = 0;
        if (!v5)
        {
          v5 = [*(a1 + 32) _defaultAlertForError:*(a1 + 40)];
          v17 = v5;
          v16 = 1;
        }

        location = v5;
        if (v16)
        {
        }

        if (v18)
        {
        }

        v6 = *(a1 + 32);
        v7 = [v6 presentingViewController];
        [v6 _presentAlert:location onViewController:v7];

        objc_storeStrong(&location, 0);
        objc_storeStrong(&v21, 0);
      }

      objc_storeStrong(v24, 0);
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = [v8 _defaultAlertForError:*(a1 + 40)];
      v10 = [*(a1 + 32) presentingViewController];
      [v8 _presentAlert:v9 onViewController:v10];
    }
  }

  else
  {
    v11 = [*(a1 + 32) runningFlowItem];

    if (v11)
    {
      v15 = [*(a1 + 32) _defaultAlertForError:*(a1 + 40)];
      v12 = *(a1 + 32);
      v13 = [v12 navController];
      [v12 _presentAlert:v15 onViewController:v13];

      objc_storeStrong(&v15, 0);
    }

    else
    {
      oslog = _BYLoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A4DC0(buf, "-[BuddyEnrollmentCoordinator _presentError:]_block_invoke", [*(a1 + 32) targetUIState]);
        _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s no presentingViewController, will use next UI state to present error. Current targetUIState: %ld", buf, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      [*(a1 + 32) setTargetUIState:{objc_msgSend(*(a1 + 32), "_nextUIStateLargerThan:", objc_msgSend(*(a1 + 32), "targetUIState"))}];
      [*(a1 + 32) setPendingError:*(a1 + 40)];
      [*(a1 + 32) _updateUIIfNeeded];
    }
  }
}

void sub_10011F9F8(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10011FAE8;
  v8 = &unk_10032B0D0;
  v9[0] = a1[4];
  dispatch_async(v3, &v4);

  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

id sub_10011FAE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 runningFlowItem];
  LOBYTE(v2) = [v2 _shouldPopBackToDisclosureOnFailureForFlowItem:v3];

  if (v2)
  {
    return [*(a1 + 32) _popToDisclosureAndRestartEnrollment];
  }

  else
  {
    return [*(a1 + 32) _popOutOfEnrollmentFlow];
  }
}

BOOL sub_10011FFC8(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] _uiStateForControllerClass:objc_opt_class()] == 2;
  objc_storeStrong(location, 0);
  return v3;
}

uint64_t sub_100120AEC(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    return (*(*(result + 32) + 16))(*(result + 32), 1);
  }

  return result;
}

uint64_t sub_100120B44(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    return (*(*(result + 32) + 16))(*(result + 32), 0);
  }

  return result;
}

void sub_100121E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100121EAC(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v41 = 0;
  objc_storeStrong(&v41, a3);
  oslog[1] = a1;
  v5 = [BuddyAppleIDSignInTask alloc];
  v6 = [(objc_class *)a1[4].isa featureFlags];
  v7 = +[BuddyAccountTools sharedBuddyAccountTools];
  v8 = [(BuddyAppleIDSignInTask *)v5 initWithFeatureFlags:v6 accountTools:v7];
  [(objc_class *)a1[4].isa setSignInTask:v8];

  LOBYTE(v8) = +[DMCFeatureOverrides allowAnyMAIDToSignIn]^ 1;
  v9 = [(objc_class *)a1[4].isa signInTask];
  [v9 setRequireAppleMAID:v8 & 1];

  v10 = [(objc_class *)a1[4].isa navController];
  v11 = [(objc_class *)a1[4].isa signInTask];
  [v11 setNavigationController:v10];

  v12 = [(objc_class *)a1[4].isa featureFlags];
  LOBYTE(v11) = [v12 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (v11)
  {
    oslog[0] = _BYLoggingFacility();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(objc_class *)a1[4].isa passcodeCacheManager];
      v14 = [(objc_class *)a1[4].isa signInTask];
      sub_10011A49C(buf, "[BuddyEnrollmentCoordinator maidAuthenticationController]_block_invoke", v13, v14);
      _os_log_impl(&_mh_execute_header, oslog[0], v39, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
    }

    objc_storeStrong(oslog, 0);
    v15 = [(objc_class *)a1[4].isa passcodeCacheManager];
    v16 = [(objc_class *)a1[4].isa signInTask];
    [v16 setCacheManager:v15];
  }

  v17 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v34 = -1073741824;
  v35 = 0;
  v36 = sub_100122428;
  v37 = &unk_10032AF58;
  objc_copyWeak(&v38, &a1[5].isa);
  dispatch_async(v17, &block);

  v32 = _BYLoggingFacility();
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v32;
    v19 = v31;
    sub_10006AA68(v30);
    _os_log_impl(&_mh_execute_header, v18, v19, "Beginning authentication...", v30, 2u);
  }

  objc_storeStrong(&v32, 0);
  v20 = [(objc_class *)a1[4].isa signInTask];
  v21 = location[0];
  v22 = v41;
  v23 = _NSConcreteStackBlock;
  v24 = -1073741824;
  v25 = 0;
  v26 = sub_100122474;
  v27 = &unk_10032D2B8;
  objc_copyWeak(&v29, &a1[5].isa);
  v28 = a1[4].isa;
  [v20 authenticateWithUsername:v21 password:v22 completion:&v23];

  objc_storeStrong(&v28, 0);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v38);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

void sub_1001223F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17)
{
  objc_destroyWeak(v18);
  objc_destroyWeak(v17);
  _Unwind_Resume(v19);
}

void sub_100122428(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEnabled:{0, a1, a1}];
}

void sub_100122474(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v29 = 0;
  objc_storeStrong(&v29, a3);
  v28[1] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v24 = -1073741824;
  v25 = 0;
  v26 = sub_100122898;
  v27 = &unk_10032AF58;
  objc_copyWeak(v28, a1 + 5);
  dispatch_async(v5, &block);

  if (v29)
  {
    oslog = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v19 = 0;
      v17 = 0;
      if (_BYIsInternalInstall())
      {
        v6 = v29;
      }

      else if (v29)
      {
        v20 = [v29 domain];
        v19 = 1;
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v20, [v29 code]);
        v18 = v6;
        v17 = 1;
      }

      else
      {
        v6 = 0;
      }

      sub_100071CBC(buf, v6);
      _os_log_error_impl(&_mh_execute_header, oslog, v21, "Authentication failed: %{public}@", buf, 0xCu);
      if (v17)
      {
      }

      if (v19)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    v16 = 1;
  }

  else
  {
    [a1[4] _cacheAuthenticationResults:location[0]];
    v15 = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v15;
      v8 = v14;
      sub_10006AA68(v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "Authentication succeeded!", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    v9 = [a1[4] maidAuthenticationCompletionHandler];
    v10 = v9 != 0;

    if (v10)
    {
      v11 = [a1[4] maidAuthenticationCompletionHandler];
      v12 = [location[0] mutableCopy];
      v11[2](v11, v12, 0, v29);

      [a1[4] setMaidAuthenticationCompletionHandler:0];
    }

    v16 = 0;
  }

  objc_destroyWeak(v28);
  if (!v16)
  {
    v16 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void sub_100122898(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEnabled:{1, a1, a1}];
}

void sub_100123308(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = [a1[4] navController];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100123400;
  v7 = &unk_10032B838;
  v8 = a1[4];
  v9[0] = a1[5];
  [v2 dismissViewControllerWithTransition:9 completion:&v3];

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_100123400(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [*(a1 + 32) navController];
  location[0] = [v2 topViewController];

  [*(a1 + 32) _setInProgress:0 onViewController:location[0]];
  [*(a1 + 32) setPresentingViewController:location[0]];
  v7 = [*(a1 + 32) _uiStateForControllerClass:objc_opt_class()];
  [*(a1 + 32) setPendingUIState:v7];
  [*(a1 + 32) setTargetUIState:v7];
  v5 = 0;
  v3 = 0;
  if ([*(a1 + 32) isMDMMigrationMode])
  {
    v6 = [*(a1 + 32) webAuthCompletionHandler];
    v5 = 1;
    v3 = v6 != 0;
  }

  if (v5)
  {
  }

  if (v3)
  {
    v4 = [*(a1 + 32) webAuthCompletionHandler];
    (*(v4 + 2))(v4, 0, 0, *(a1 + 40));

    [*(a1 + 32) setWebAuthCompletionHandler:0];
  }

  objc_storeStrong(location, 0);
}

void sub_100123710(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = [a1[4] navController];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100123808;
  v7 = &unk_10032B838;
  v8 = a1[4];
  v9[0] = a1[5];
  [v2 dismissViewControllerWithTransition:9 completion:&v3];

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_100123808(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v10;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Web controller finished dimissing; advancing panes!", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = [(objc_class *)a1[4].isa navController];
  location = [v4 topViewController];

  v7 = [(objc_class *)a1[4].isa _uiStateForControllerClass:objc_opt_class()];
  [(objc_class *)a1[4].isa setPendingUIState:v7];
  [(objc_class *)a1[4].isa setTargetUIState:v7];
  v5 = [(objc_class *)a1[4].isa webAuthCompletionHandler];

  if (v5)
  {
    v6 = [(objc_class *)a1[4].isa webAuthCompletionHandler];
    (*(v6 + 2))(v6, a1[5].isa, 0, 0);

    [(objc_class *)a1[4].isa setWebAuthCompletionHandler:0];
  }

  objc_storeStrong(&location, 0);
}

double sub_100123D70(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *&result = 136315906;
  *a1 = 136315906;
  *(a1 + 4) = "[BuddyEnrollmentCoordinator navigationController:didShowViewController:operation:animated:]";
  *(a1 + 12) = 1024;
  *(a1 + 14) = a2;
  *(a1 + 18) = 2048;
  *(a1 + 20) = a3;
  *(a1 + 28) = 2048;
  *(a1 + 30) = a4;
  return result;
}

id sub_100123F94()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7188;
  v13 = qword_1003A7188;
  if (!qword_1003A7188)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100125CB0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100125CB0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001240A8(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v12 = [location[0] domain];
        v11 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [location[0] code]);
        v10 = v3;
        v9 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_10006AE18(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Error enrolling in beta program: %@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully enrolled in beta program", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_1001257B8(NSAssertionHandler *a1)
{
  sub_1001258FC();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("DMCReturnToServiceController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getDMCReturnToServiceControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyEnrollmentCoordinator.m" lineNumber:73 description:@"Unable to find class %s", "DMCReturnToServiceController"];

    __break(1u);
  }

  qword_1003A7170 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001258FC()
{
  if (!sub_100125A24())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *DMCEnrollmentProviderLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyEnrollmentCoordinator.m" lineNumber:71 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_100125A24()
{
  if (!qword_1003A7178)
  {
    sub_100125AD8();
  }

  return qword_1003A7178;
}

uint64_t sub_100125AD8()
{
  result = _sl_dlopen();
  qword_1003A7178 = result;
  return result;
}

void sub_100125B6C(NSAssertionHandler *a1)
{
  sub_1001258FC();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("DMCEnrollmentFlowManagedConfigurationHelper");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getDMCEnrollmentFlowManagedConfigurationHelperClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyEnrollmentCoordinator.m" lineNumber:72 description:@"Unable to find class %s", "DMCEnrollmentFlowManagedConfigurationHelper"];

    __break(1u);
  }

  qword_1003A7180 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100125CB0(NSAssertionHandler *a1)
{
  sub_100125DF4();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("SDMDMConfigurator");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getSDMDMConfiguratorClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyEnrollmentCoordinator.m" lineNumber:66 description:@"Unable to find class %s", "SDMDMConfigurator"];

    __break(1u);
  }

  qword_1003A7188 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100125DF4()
{
  if (!sub_100125F1C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SeedingLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyEnrollmentCoordinator.m" lineNumber:65 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_100125F1C()
{
  if (!qword_1003A7190)
  {
    sub_100125FD0();
  }

  return qword_1003A7190;
}

uint64_t sub_100125FD0()
{
  result = _sl_dlopen();
  qword_1003A7190 = result;
  return result;
}

id sub_1001268B8(id *a1, void *a2, id obj)
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained(a1 + 4);
  v4 = [v12[0] heightConstraint];

  if (v4)
  {
    v5 = [v12[0] heightConstraint];
    v14 = v5;
    v6 = [NSArray arrayWithObjects:&v14 count:1];
    [NSLayoutConstraint deactivateConstraints:v6];
  }

  if ([v12[0] isShowingVisualPairing])
  {
    v7 = [location[0] heightAnchor];
    v8 = [location[0] widthAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v12[0] setHeightConstraint:v9];
  }

  else
  {
    [v12[0] setHeightConstraint:0];
  }

  v10 = [v12[0] heightConstraint];
  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);

  return v10;
}

id sub_100126EAC(uint64_t a1)
{
  v2 = [*(a1 + 32) visualPairingViewController];
  [v2 stop];

  v3 = [*(a1 + 32) visualPairingViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  result = [*(a1 + 32) setVisualPairingViewController:0];
  if (*(a1 + 40))
  {
    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

void sub_100129AE8(uint64_t a1)
{
  v2 = [UIColor systemGrayColor:a1];
  v3 = [(UIColor *)v2 CGColor];
  v4 = [*(*(a1 + 32) + 32) layer];
  [v4 setBorderColor:v3];
}

void sub_10012A814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012A834(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _choiceConfirmed:1];

  objc_storeStrong(location, 0);
}

void sub_10012AA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012AA30(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _choiceConfirmed:0];

  objc_storeStrong(location, 0);
}

void sub_10012B5C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _tappedChoice:{*(a1 + 32), a1, a1}];
}

id *sub_10012B704(id *result, char a2)
{
  if (a2)
  {
    return [result[4] didSelectChoice:result[5]];
  }

  return result;
}

NSString *__cdecl sub_10012C128(id a1, NSString *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (location[0])
  {
    v5 = location[0];
  }

  else
  {
    v5 = &stru_10032F900;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

void sub_10012CD44(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1003A7198;
  qword_1003A7198 = v1;
}

void sub_10012CF68(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [a1[4] URLConfiguration];
  if (a1[5])
  {
    v2 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_10012D088;
    v7 = &unk_10032BCA0;
    v9 = a1[5];
    v8 = location[0];
    dispatch_async(v2, &block);

    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_10012D1FC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_10012D24C(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (*(a1[4].isa + 1))
  {
    objc_storeStrong((*(a1[5].isa + 1) + 40), *(a1[4].isa + 1));
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v19;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "ConfigurationManager downloading Apple ID URL Configuration...", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v4 = +[AASetupAssistantService urlConfiguration];
    v5 = *(a1[5].isa + 1);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(*(a1[5].isa + 1) + 40);
    v16 = 0;
    v8 = 0;
    if (v7)
    {
      v17 = [*(*(a1[5].isa + 1) + 40) xmlUI];
      v16 = 1;
      v8 = [v17 length] != 0;
    }

    if (v16)
    {
    }

    if (v8)
    {
      objc_storeStrong(a1[4].isa + 1, *(*(a1[5].isa + 1) + 40));
      *(a1[4].isa + 24) = [*(*(a1[5].isa + 1) + 40) setupAssistantServerEnabled] & 1;
      v15 = _BYLoggingFacility();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sub_100082D54(v21, *(a1[4].isa + 24) & 1);
        _os_log_impl(&_mh_execute_header, v15, v14, "ConfigurationManager downloaded AppleID configuration. Service Enabled = %d", v21, 8u);
      }

      objc_storeStrong(&v15, 0);
    }

    else
    {
      v13 = _BYLoggingFacility();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v13;
        v10 = v12;
        sub_10006AA68(v11);
        _os_log_impl(&_mh_execute_header, v9, v10, "ConfigurationManager downloaded AppleID configuration. Empty XMLUI, assuming error.", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      *(a1[4].isa + 24) = 1;
      objc_storeStrong(a1[4].isa + 1, 0);
      +[AASetupAssistantService resetURLConfiguration];
    }
  }
}

void sub_10012DFEC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] _handleScanResults:location[0] error:{v5, a1}];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_10012E064(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] _handleScanResults:location[0] error:{v5, a1}];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

double sub_10012E718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&result = 138545154;
  *a1 = 138545154;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2114;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2048;
  *(a1 + 34) = a5;
  *(a1 + 42) = 2114;
  *(a1 + 44) = a6;
  *(a1 + 52) = 2048;
  *(a1 + 54) = a7;
  *(a1 + 62) = 2114;
  *(a1 + 64) = a8;
  *(a1 + 72) = 2048;
  *(a1 + 74) = a9;
  return result;
}

void sub_10012E770(id *a1, char a2, id obj)
{
  v49 = a1;
  v48 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v46[1] = a1;
  if (location)
  {
    v46[0] = _BYLoggingFacility();
    v45 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v46[0], OS_LOG_TYPE_ERROR))
    {
      v43 = 0;
      v41 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = location;
      }

      else if (location)
      {
        v44 = [location domain];
        v43 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v44, [location code]);
        v42 = v4;
        v41 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_100071CBC(buf, v4);
      _os_log_error_impl(&_mh_execute_header, v46[0], v45, "Failed to determine if an existing download is in progress: %{public}@", buf, 0xCu);
      if (v41)
      {
      }

      if (v43)
      {
      }
    }

    objc_storeStrong(v46, 0);
  }

  v40 = 0;
  v5 = [a1[4] updateManager];
  v6 = [v5 downloadDescriptor];
  v38 = 0;
  v36 = 0;
  v34 = 0;
  v7 = 0;
  if (v6)
  {
    v39 = [a1[4] updateManager];
    v38 = 1;
    v37 = [v39 downloadDescriptor];
    v36 = 1;
    v35 = [a1[4] update];
    v34 = 1;
    v7 = [v37 isEqual:?];
  }

  if (v34)
  {
  }

  if (v36)
  {
  }

  if (v38)
  {
  }

  v40 = (v7 & 1) != 0;
  oslog = _BYLoggingFacility();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(v50, v48 & 1, v40);
    _os_log_impl(&_mh_execute_header, oslog, v32, "Existing download in progress? %d Matches our update? %d", v50, 0xEu);
  }

  objc_storeStrong(&oslog, 0);
  if (v40 && (v48 & 1) != 0)
  {
    v31 = _BYLoggingFacility();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v31;
      v9 = v30;
      sub_10006AA68(v29);
      _os_log_impl(&_mh_execute_header, v8, v9, "Not starting a new download; a download is already in progress", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
    v28 = 1;
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v21 = 0;
    v10 = 0;
    if (v40)
    {
      v26 = [a1[4] updateManager];
      v25 = 1;
      v10 = 0;
      if ([v26 downloadProgressIsDone])
      {
        v24 = [a1[4] updateManager];
        v23 = 1;
        v22 = [v24 downloadProgressPhase];
        v21 = 1;
        v10 = [v22 isEqualToString:kSUDownloadPhasePreparingForInstallation];
      }
    }

    if (v21)
    {
    }

    if (v23)
    {
    }

    if (v25)
    {
    }

    v27 = v10 & 1;
    if (v10)
    {
      v20 = _BYLoggingFacility();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v20;
        v12 = v19;
        sub_10006AA68(v18);
        _os_log_impl(&_mh_execute_header, v11, v12, "Update already downloaded; starting install...", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      [a1[4] startInstall];
    }

    else
    {
      v17 = _BYLoggingFacility();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v17;
        v14 = v16;
        sub_10006AA68(v15);
        _os_log_impl(&_mh_execute_header, v13, v14, "Starting download of update...", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      [a1[4] startDownload];
    }

    v28 = 0;
  }

  objc_storeStrong(&location, 0);
}

void sub_10012EEC8(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = a3;
  v5 = [location[0] domain];
  v6 = 0;
  if ([v5 isEqualToString:@"com.apple.MobileAssetError.Download"])
  {
    v6 = [location[0] code] == 18;
  }

  if (v6)
  {
    *(*(a1[4] + 8) + 24) = 1;
    *v7 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_10012F55C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  [(objc_class *)a1[4].isa resetProgress];
  v3 = [(objc_class *)a1[4].isa updateManager];
  v4 = [v3 readyToResume];

  if (v4)
  {
    oslog[0] = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog[0];
      v6 = v27;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Attempting to resume download...", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v7 = [(objc_class *)a1[4].isa updateManager];
    [v7 resumeDownload];
  }

  else
  {
    v8 = [(objc_class *)a1[4].isa updateManager];
    v9 = [(objc_class *)a1[4].isa update];
    v10 = [v8 readyToDownloadUpdate:v9];

    if (v10)
    {
      v25 = _BYLoggingFacility();
      v24 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v25;
        v12 = v24;
        sub_10006AA68(v23);
        _os_log_impl(&_mh_execute_header, v11, v12, "Attempting to start download...", v23, 2u);
      }

      objc_storeStrong(&v25, 0);
      [(objc_class *)a1[4].isa startDownload];
    }

    else
    {
      v22 = _BYLoggingFacility();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v22;
        v14 = v21;
        sub_10006AA68(v20);
        _os_log_impl(&_mh_execute_header, v13, v14, "Update is not ready to resume or download", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      v15 = [(objc_class *)a1[4].isa navigationController];
      v16 = [v15 topViewController];
      isa = a1[4].isa;

      if (v16 == isa)
      {
        v18 = [(objc_class *)a1[4].isa navigationController];
        v19 = [v18 popViewControllerAnimated:1];
      }
    }
  }

  objc_storeStrong(location, 0);
}

void sub_10012F818(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] navigationController];
  v4 = [v3 popViewControllerAnimated:1];

  objc_storeStrong(location, 0);
}

void sub_10012FCA4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] delegate];
  v4 = [v3 popToBuddyControllerWithClass:+[BuddyCloudConfigController disclosureViewControllerClass](BuddyCloudConfigController animated:{"disclosureViewControllerClass"), 1}];

  objc_storeStrong(location, 0);
}

void sub_10012FE28(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) handleDownload:v5 & 1 error:{location, a1}];
  objc_storeStrong(&location, 0);
}

void sub_10013054C(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 topViewController];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = [*(a1 + 32) navigationController];
    v6 = [v5 popViewControllerAnimated:1];
  }
}

void sub_1001306D4(NSObject *a1, char a2, id obj)
{
  v21 = a1;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v20)
  {
    oslog[0] = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v17;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Started install...", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v15 = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v22, location);
      _os_log_impl(&_mh_execute_header, v15, v14, "Failed to start install: %@", v22, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    v6 = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001308FC;
    v11 = &unk_10032B838;
    v12 = a1[4].isa;
    v13 = location;
    dispatch_async(v6, &v7);

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_100130B18(uint64_t a1)
{
  v9 = 1;
  v2 = *(a1 + 40);
  if (v2 == 3)
  {
    v3 = [*(a1 + 32) navigationController];
    v4 = [v3 topViewController];
    v5 = *(a1 + 32);

    if (v4 == v5)
    {
      v6 = [*(a1 + 32) navigationController];
      v7 = [v6 popViewControllerAnimated:1];
    }
  }

  else if (v2 == 14)
  {
    v9 = 0;
  }

  v8 = [*(a1 + 32) navigationItem];
  [v8 setHidesBackButton:v9 & 1];
}

void sub_100130D90(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MANDATORY_UPDATE_PROGRESS_TITLE_DOWNLOADING" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  [v2 setTitle:v4];

  [*(a1 + 32) setProgress:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = [v5 updateManager];
  v7 = [v6 progressString];
  [v5 setProgressText:v7];
}

id sub_100131100(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Download of software update failed: %@", buf, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  return [*(a1 + 40) showAlertForError:*(a1 + 32)];
}

void sub_1001312E8(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MANDATORY_UPDATE_PROGRESS_TITLE_INSTALLING" value:&stru_10032F900 table:@"MandatorySoftwareUpdate"];
  [v2 setTitle:v4];

  [*(a1 + 32) setProgress:1.0];
  v5 = *(a1 + 32);
  v6 = [v5 updateManager];
  v7 = [v6 progressString];
  [v5 setProgressText:v7];
}

id sub_10013153C(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Install of software update failed: %@", buf, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  return [*(a1 + 40) showAlertForError:*(a1 + 32)];
}

void sub_10013182C(uint64_t a1)
{
  if ([*(a1 + 32) failedToFindMDMRequiredUpdate])
  {
    v2 = *(a1 + 32);
    v3 = [v2 scanOptions];
    [v2 showAlertForMDMMissingUpdate:v3];
  }

  else
  {
    v3 = [*(a1 + 32) navigationController];
    v4 = [v3 popViewControllerAnimated:1];
  }
}

double sub_1001321D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&result = 138413058;
  *a1 = 138413058;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2112;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2112;
  *(a1 + 34) = a5;
  return result;
}

SetupController *sub_100132204(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v1 = objc_alloc_init(SetupController);

  return v1;
}

void sub_100132D74(id a1, LSBundleProxy *a2, BOOL *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

void sub_100132DC4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] showModalWiFiSettingsBlock];
  (*(v3 + 2))(v3, 0, 0);

  objc_storeStrong(location, 0);
}

void sub_100132E40(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  *(a1[4] + 10) = 1;
  [a1[4] _skipPressed:0];
  objc_storeStrong(location, 0);
}

id sub_100133B64(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    v8 = [location[0] stringByAppendingString:@"_Dark"];
  }

  else
  {
    v8 = location[0];
  }

  objc_storeStrong(location, 0);
  v5 = v8;

  return v5;
}

void sub_10013413C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Tapped Skip Apple ID", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa _reallySkip];
  *(a1[4].isa + 10) = 0;
  objc_storeStrong(location, 0);
}

void sub_100134214(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v3, v4, "Tapped Don't Skip Apple ID", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  if (*(a1[4].isa + 10))
  {
    v5 = [(objc_class *)a1[4].isa showModalWiFiSettingsBlock];
    (*(v5 + 2))(v5, 0, 0);
  }

  *(a1[4].isa + 10) = 0;
  objc_storeStrong(location, 0);
}

void sub_100134750(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) setUrlConfiguration:location[0]];
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(location, 0);
}

id sub_100136820()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A71A8;
  v13 = qword_1003A71A8;
  if (!qword_1003A71A8)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100136EE4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100136EE4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100136EE4(NSAssertionHandler *a1)
{
  sub_100137028();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("DMCEnrollmentFlowManagedConfigurationHelper");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getDMCEnrollmentFlowManagedConfigurationHelperClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyEnrollmentFlowMCBridge.m" lineNumber:22 description:@"Unable to find class %s", "DMCEnrollmentFlowManagedConfigurationHelper"];

    __break(1u);
  }

  qword_1003A71A8 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100137028()
{
  if (!sub_100137150())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *DMCEnrollmentProviderLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyEnrollmentFlowMCBridge.m" lineNumber:21 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_100137150()
{
  if (!qword_1003A71B0)
  {
    sub_100137204();
  }

  return qword_1003A71B0;
}

uint64_t sub_100137204()
{
  result = _sl_dlopen();
  qword_1003A71B0 = result;
  return result;
}

void sub_1001379B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001379EC(id *a1, double a2)
{
  v25 = a1;
  v24 = a2;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  memset(__b, 0, sizeof(__b));
  [location[0] _contentDisplayModel];
  __b[0] = v2;
  __b[1] = v3;
  v4 = [location[0] timeLabelCenterYConstraints];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100137B6C;
  v18 = &unk_10032D548;
  v19 = v24;
  v20 = __b[0];
  v21 = __b[1];
  [v4 enumerateObjectsUsingBlock:&v14];

  v5 = [location[0] timeLabelWidthConstraints];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100137BE4;
  v10 = &unk_10032D548;
  v11 = v24;
  v12 = __b[0];
  v13 = __b[1];
  [v5 enumerateObjectsUsingBlock:&v6];

  objc_storeStrong(location, 0);
}

void sub_100137B6C(double *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setConstant:-(a1[4] * a1[5])];
  objc_storeStrong(location, 0);
}

void sub_100137BE4(double *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setConstant:a1[4] * a1[6]];
  objc_storeStrong(location, 0);
}

void sub_100139524(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v34 = 0;
  objc_storeStrong(&v34, a3);
  v33[1] = a1;
  if (v34)
  {
    v33[0] = _BYLoggingFacility();
    v32 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v33[0], OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      v28 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v34;
      }

      else if (v34)
      {
        v31 = [v34 domain];
        v30 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v31, [v34 code]);
        v29 = v5;
        v28 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, v33[0], v32, "Credential recovery failed: %{public}@", buf, 0xCu);
      if (v28)
      {
      }

      if (v30)
      {
      }
    }

    objc_storeStrong(v33, 0);
    v6 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v22 = -1073741824;
    v23 = 0;
    v24 = sub_1001398FC;
    v25 = &unk_10032B838;
    v26 = a1[4];
    v27 = v34;
    dispatch_async(v6, &block);

    v20 = 1;
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v18;
      sub_10006AA68(v17);
      _os_log_impl(&_mh_execute_header, v7, v8, "Credential recovery succeeded!", v17, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v9 = &_dispatch_main_q;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100139930;
    v14 = &unk_10032B838;
    v15 = a1[4];
    v16 = location[0];
    dispatch_async(v9, &v10);

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    v20 = 0;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

void sub_100139930(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 appleIDController:*(a1 + 32) didAuthenticateForCredentialRecovery:*(a1 + 40)];
  }

  else
  {
    location[0] = -[BuddyAppleIDSpinnerPage initWithAccountMode:]([BuddyAppleIDSpinnerPage alloc], "initWithAccountMode:", [*(a1 + 32) operationType]);
    v5 = [*(a1 + 32) navigationController];
    [v5 pushViewController:location[0] animated:1];

    oslog = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v17;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v6, v7, "Beginning sign-in...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v8 = [*(a1 + 32) signInTask];
    v9 = *(a1 + 40);
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100139B44;
    v14 = &unk_10032BAE8;
    v15 = *(a1 + 32);
    [v8 signInToAllServicesWithAuthenticationResults:v9 completion:&v10];

    objc_storeStrong(&v15, 0);
    objc_storeStrong(location, 0);
  }
}

void sub_100139B44(uint64_t a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13 = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100139C68;
  v9 = &unk_10032BAC0;
  v12 = v15 & 1;
  v10 = location;
  v11 = *(a1 + 32);
  dispatch_async(v4, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_100139C68(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (*(a1 + 48))
  {
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v10;
      v7 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v6, v7, "Sign-in succeeded!", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    [*(a1 + 40) _signInSucceeded];
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v11 = 0;
      if (_BYIsInternalInstall())
      {
        v2 = *(a1 + 32);
      }

      else if (*(a1 + 32))
      {
        v14 = [*(a1 + 32) domain];
        v13 = 1;
        v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v14, [*(a1 + 32) code]);
        v12 = v2;
        v11 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_100071CBC(buf, v2);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v15, "Sign-in failed: %{public}@", buf, 0xCu);
      if (v11)
      {
      }

      if (v13)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    v3 = [*(a1 + 40) navigationController];
    v4 = [*(a1 + 40) authAttemptLandingViewController];
    v5 = [v3 popToViewController:v4 animated:1];
  }
}

void sub_10013A298(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v34 = 0;
  objc_storeStrong(&v34, a3);
  v33[1] = a1;
  if (v34)
  {
    v33[0] = _BYLoggingFacility();
    v32 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v33[0], OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      v28 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v34;
      }

      else if (v34)
      {
        v31 = [v34 domain];
        v30 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v31, [v34 code]);
        v29 = v5;
        v28 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, v33[0], v32, "Account creation failed: %{public}@", buf, 0xCu);
      if (v28)
      {
      }

      if (v30)
      {
      }
    }

    objc_storeStrong(v33, 0);
    v6 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v22 = -1073741824;
    v23 = 0;
    v24 = sub_10013A670;
    v25 = &unk_10032B838;
    v26 = a1[4];
    v27 = v34;
    dispatch_async(v6, &block);

    v20 = 1;
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v18;
      sub_10006AA68(v17);
      _os_log_impl(&_mh_execute_header, v7, v8, "Account creation succeeded!", v17, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v9 = &_dispatch_main_q;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_10013A6A4;
    v14 = &unk_10032B838;
    v15 = a1[4];
    v16 = location[0];
    dispatch_async(v9, &v10);

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    v20 = 0;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

void sub_10013A6A4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = -[BuddyAppleIDSpinnerPage initWithAccountMode:]([BuddyAppleIDSpinnerPage alloc], "initWithAccountMode:", [*(a1 + 32) operationType]);
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:location[0] animated:1];

  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Beginning sign-in...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [*(a1 + 32) signInTask];
  v6 = *(a1 + 40);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10013A850;
  v11 = &unk_10032BAE8;
  v12 = *(a1 + 32);
  [v5 signInToAllServicesWithAuthenticationResults:v6 completion:&v7];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_10013A850(uint64_t a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13 = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10013A974;
  v9 = &unk_10032BAC0;
  v12 = v15 & 1;
  v10 = location;
  v11 = *(a1 + 32);
  dispatch_async(v4, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

id sub_10013A974(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (*(a1 + 48))
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Sign-in succeeded!", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
    return [*(a1 + 40) _signInSucceeded];
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v2 = *(a1 + 32);
      }

      else if (*(a1 + 32))
      {
        v12 = [*(a1 + 32) domain];
        v11 = 1;
        v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [*(a1 + 32) code]);
        v10 = v2;
        v9 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_100071CBC(buf, v2);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Sign-in failed: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    return [*(a1 + 40) _signInFailedWithError:*(a1 + 32)];
  }
}

void sub_10013B2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, _Unwind_Exception *exception_object, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(v29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10013B328(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v2, v3, "iForgot tapped", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  return [(objc_class *)a1[4].isa showCredentialRecovery];
}

void sub_10013B3D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isMovingToParentViewController] ^ 1;

  if (v3)
  {
    [*(a1 + 32) cancelAuthentication];
  }
}

void sub_10013B434(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  oslog[1] = a1;
  WeakRetained = objc_loadWeakRetained(&a1[5].isa);
  [(objc_class *)a1[4].isa setAuthAttemptLandingViewController:WeakRetained];

  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = oslog[0];
    v7 = v13;
    sub_10006AA68(v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "Begin post-upgrade sign in from sign in page", v12, 2u);
  }

  objc_storeStrong(oslog, 0);
  isa = a1[4].isa;
  v9 = location[0];
  v10 = v15;
  v11 = objc_loadWeakRetained(&a1[5].isa);
  [(objc_class *)isa _beginPostUpgradeAppleIDLoginWithUsername:v9 password:v10 signInController:v11];

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_10013B560(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10013B6B0;
  v10 = &unk_10032BB10;
  v11 = v14;
  v12 = a1[4];
  v13[0] = location[0];
  dispatch_async(v5, &block);

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_10013B6B0(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  if (*(a1 + 32))
  {
    [*(a1 + 40) _authCompletedShouldProceed:0 error:*(a1 + 32)];
  }

  else
  {
    v1 = *(a1 + 40);
    v2 = *(a1 + 48);
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_10013B790;
    v7 = &unk_10032BAE8;
    v8[0] = *(a1 + 40);
    [v1 _upgradeAccountWithAuthenticationResults:v2 completion:&v3];
    objc_storeStrong(v8, 0);
  }
}

void sub_10013B790(uint64_t a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13 = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10013B8B4;
  v9 = &unk_10032BAC0;
  v10 = *(a1 + 32);
  v12 = v15 & 1;
  v11 = location;
  dispatch_async(v4, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_10013BBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, _Unwind_Exception *exception_object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10013BC18(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v2, v3, "iForgot tapped", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  return [(objc_class *)a1[4].isa showCredentialRecovery];
}

void sub_10013BCC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isMovingToParentViewController] ^ 1;

  if (v3)
  {
    [*(a1 + 32) cancelAuthentication];
  }
}

void sub_10013BD24(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  oslog[1] = a1;
  WeakRetained = objc_loadWeakRetained(&a1[5].isa);
  [(objc_class *)a1[4].isa setAuthAttemptLandingViewController:WeakRetained];

  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = oslog[0];
    v7 = v13;
    sub_10006AA68(v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "Begin restore upgrade sign in from sign in page", v12, 2u);
  }

  objc_storeStrong(oslog, 0);
  isa = a1[4].isa;
  v9 = location[0];
  v10 = v15;
  v11 = objc_loadWeakRetained(&a1[5].isa);
  [(objc_class *)isa _beginPostUpgradeAppleIDLoginWithUsername:v9 password:v10 signInController:v11];

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_10013C074(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [a1[4] navigationController];
  location[0] = [v2 viewControllers];

  if ([location[0] count] <= 1)
  {
    v3 = [a1[4] navigationController];
    v4 = [v3 topViewController];
    [a1[4] setAuthAttemptLandingViewController:v4];
  }

  else
  {
    v3 = [location[0] objectAtIndexedSubscript:{objc_msgSend(location[0], "count") - 2}];
    [a1[4] setAuthAttemptLandingViewController:v3];
  }

  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog;
    v6 = v12;
    sub_10006AA68(v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Begin silent post-upgrade sign in", v11, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v7 = a1[4];
  v8 = [a1[5] appleID];
  v9 = [a1[5] rawPassword];
  v10 = [a1[5] continuationKey];
  [v7 _beginPostUpgradeAppleIDLoginWithUsername:v8 password:v9 continuationKey:v10 signInController:0];

  objc_storeStrong(location, 0);
}

void sub_10013CB5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38)
{
  objc_destroyWeak(v39);
  objc_destroyWeak(v38);
  objc_destroyWeak((v40 - 216));
  _Unwind_Resume(v41);
}

void sub_10013CC08(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "iForgot with create tapped", v7, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = [(objc_class *)a1[4].isa delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(objc_class *)a1[4].isa delegate];
    [v6 appleIDControllerWantsChoiceController:a1[4].isa];
  }
}

void sub_10013CD08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isMovingToParentViewController] ^ 1;

  if (v3)
  {
    [*(a1 + 32) cancelAuthentication];
  }
}

void sub_10013CD6C(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v40 = 0;
  objc_storeStrong(&v40, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v38[1] = a1;
  if (v39)
  {
    v38[0] = _BYLoggingFacility();
    v37 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v38[0], OS_LOG_TYPE_ERROR))
    {
      v35 = 0;
      v33 = 0;
      if (_BYIsInternalInstall())
      {
        v7 = v39;
      }

      else if (v39)
      {
        v36 = [v39 domain];
        v35 = 1;
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v36, [v39 code]);
        v34 = v7;
        v33 = 1;
      }

      else
      {
        v7 = 0;
      }

      sub_100071CBC(buf, v7);
      _os_log_error_impl(&_mh_execute_header, v38[0], v37, "Authentication failed: %{public}@", buf, 0xCu);
      if (v33)
      {
      }

      if (v35)
      {
      }
    }

    objc_storeStrong(v38, 0);
    v8 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = sub_10013D1CC;
    v30 = &unk_10032AFA8;
    objc_copyWeak(&v32, a1 + 6);
    v31 = a1[4];
    dispatch_async(v8, &block);

    v25 = 1;
    objc_storeStrong(&v31, 0);
    objc_destroyWeak(&v32);
  }

  else
  {
    [a1[5] markSignInStartedAfterAuthenticationCompleted];
    oslog = _BYLoggingFacility();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = oslog;
      v10 = v23;
      sub_10006AA68(v22);
      _os_log_impl(&_mh_execute_header, v9, v10, "Authentication succeeded!", v22, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v11 = &_dispatch_main_q;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10013D270;
    v16 = &unk_10032D610;
    v17 = a1[4];
    v18 = location[0];
    v19 = v40;
    objc_copyWeak(&v21, a1 + 6);
    v20 = a1[5];
    dispatch_async(v11, &v12);

    objc_storeStrong(&v20, 0);
    objc_destroyWeak(&v21);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    v25 = 0;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

void sub_10013D1CC(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 5);
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained setEnabled:1];

  v3 = [a1[4] navigationController];
  v4 = [v3 popToViewController:location[0] animated:1];

  objc_storeStrong(location, 0);
}

void sub_10013D270(uint64_t a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v18[0] = -[BuddyAppleIDSpinnerPage initWithAccountMode:]([BuddyAppleIDSpinnerPage alloc], "initWithAccountMode:", [*(a1 + 32) operationType]);
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:v18[0] animated:1];

  location = _BYLoggingFacility();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v3 = location;
    v4 = v16;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Beginning sign-in...", buf, 2u);
  }

  objc_storeStrong(&location, 0);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10013D44C;
  v11 = &unk_10032D5E8;
  objc_copyWeak(&v14, (a1 + 64));
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  [v5 signInToAllServicesWithAuthenticationResults:v6 completion:&v7];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v14);
  objc_storeStrong(v18, 0);
}

void sub_10013D44C(id *a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10013D5B4;
  v9 = &unk_10032D5C0;
  objc_copyWeak(&v13, a1 + 6);
  v14 = v17 & 1;
  v10 = location;
  v11 = a1[4];
  v12 = a1[5];
  dispatch_async(v4, &block);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v13);
  objc_storeStrong(&location, 0);
}

void sub_10013D5B4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 64))
  {
    v9 = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v9;
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v5, v6, "Sign-in succeeded!", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    [*(a1 + 48) markSignInCompleted];
    [*(a1 + 40) _signInSucceeded];
    v10 = 0;
  }

  else
  {
    oslog = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v11 = 0;
      if (_BYIsInternalInstall())
      {
        v2 = *(a1 + 32);
      }

      else if (*(a1 + 32))
      {
        v14 = [*(a1 + 32) domain];
        v13 = 1;
        v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v14, [*(a1 + 32) code]);
        v12 = v2;
        v11 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_100071CBC(buf, v2);
      _os_log_error_impl(&_mh_execute_header, oslog, v15, "Sign-in failed: %{public}@", buf, 0xCu);
      if (v11)
      {
      }

      if (v13)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    [location[0] setEnabled:1];
    v3 = [*(a1 + 40) navigationController];
    v4 = [v3 popToViewController:location[0] animated:1];

    v10 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_10013D844(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog[0];
    v6 = v22;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v5, v6, "Beginning authentication...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&a1[5].isa);
  [WeakRetained setEnabled:0];

  v8 = objc_loadWeakRetained(&a1[5].isa);
  v9 = [v8 navigationController];
  v10 = objc_loadWeakRetained(&a1[6].isa);
  [v10 setNavigationController:v9];

  v11 = objc_loadWeakRetained(&a1[6].isa);
  v12 = location[0];
  v13 = v24;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_10013DA5C;
  v18 = &unk_10032D660;
  v19 = a1[4].isa;
  objc_copyWeak(&v20, &a1[6].isa);
  [v11 authenticateWithUsername:v12 password:v13 completion:&v14];

  objc_destroyWeak(&v20);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void sub_10013DA5C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v5 + 16))(v5, WeakRetained, location[0], v7);

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10013DB00(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v5 + 16))(v5, WeakRetained, location[0], v7);

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10013E4C4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  *(v29 - 184) = a1;
  *(v29 - 188) = a2;
  objc_destroyWeak(v28);
  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
  objc_destroyWeak(v26);
  objc_destroyWeak(v25);
  objc_destroyWeak(v24);
  objc_destroyWeak(&v30);
  objc_destroyWeak(v23);
  objc_destroyWeak((v29 - 168));
  _Unwind_Resume(*(v29 - 184));
}

void sub_10013E58C(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v2, v3, "iForgot tapped", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&a1[4].isa);
  [WeakRetained showCredentialRecovery];
}

void sub_10013E648(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  WeakRetained = objc_loadWeakRetained(&a1[4].isa);
  v3 = [WeakRetained isMovingToParentViewController] ^ 1;

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v4, v5, "Navigated back, cancelling auth", v7, 2u);
    }

    objc_storeStrong(oslog, 0);
    v6 = objc_loadWeakRetained(&a1[5].isa);
    [v6 cancelAuthentication];
  }
}

void sub_10013E728(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v38 = 0;
  objc_storeStrong(&v38, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36[1] = a1;
  if (v37)
  {
    v36[0] = _BYLoggingFacility();
    v35 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v36[0], OS_LOG_TYPE_ERROR))
    {
      v33 = 0;
      v31 = 0;
      if (_BYIsInternalInstall())
      {
        v7 = v37;
      }

      else if (v37)
      {
        v34 = [v37 domain];
        v33 = 1;
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v34, [v37 code]);
        v32 = v7;
        v31 = 1;
      }

      else
      {
        v7 = 0;
      }

      sub_100071CBC(buf, v7);
      _os_log_error_impl(&_mh_execute_header, v36[0], v35, "Authentication failed: %{public}@", buf, 0xCu);
      if (v31)
      {
      }

      if (v33)
      {
      }
    }

    objc_storeStrong(v36, 0);
    v8 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_10013EB38;
    v28 = &unk_10032AFA8;
    objc_copyWeak(&v30, a1 + 5);
    v29 = a1[4];
    dispatch_async(v8, &block);

    v23 = 1;
    objc_storeStrong(&v29, 0);
    objc_destroyWeak(&v30);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = oslog;
      v10 = v21;
      sub_10006AA68(v20);
      _os_log_impl(&_mh_execute_header, v9, v10, "Authentication succeeded!", v20, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v11 = &_dispatch_main_q;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10013EBDC;
    v16 = &unk_10032D888;
    v17 = a1[4];
    v18 = v38;
    objc_copyWeak(&v19, a1 + 5);
    dispatch_async(v11, &v12);

    objc_destroyWeak(&v19);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    v23 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

void sub_10013EB38(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 5);
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained setEnabled:1];

  v3 = [a1[4] navigationController];
  v4 = [v3 popToViewController:location[0] animated:1];

  objc_storeStrong(location, 0);
}

void sub_10013EBDC(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = -[BuddyAppleIDSpinnerPage initWithAccountMode:]([BuddyAppleIDSpinnerPage alloc], "initWithAccountMode:", [*(a1 + 32) operationType]);
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:location[0] animated:1];

  oslog = _BYLoggingFacility();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v16;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Beginning sign-in...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [*(a1 + 32) signInTask];
  v19[0] = AIDAServiceTypeCloud;
  v19[1] = AIDAServiceTypeStore;
  v6 = [NSArray arrayWithObjects:v19 count:2];
  v7 = *(a1 + 40);
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10013EE7C;
  v12 = &unk_10032D700;
  objc_copyWeak(&v14, (a1 + 48));
  v13 = *(a1 + 32);
  [v5 signInToServices:v6 authenticationResults:v7 completion:&v8];

  objc_storeStrong(&v13, 0);
  objc_destroyWeak(&v14);
  objc_storeStrong(location, 0);
}

void sub_10013EE7C(uint64_t a1, char a2, id obj)
{
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v14 = a1;
  v4 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10013EFC4;
  v9 = &unk_10032D6D8;
  objc_copyWeak(&v12, (a1 + 40));
  v13 = v16 & 1;
  v10 = location;
  v11 = *(a1 + 32);
  dispatch_async(v4, &v5);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v12);
  objc_storeStrong(&location, 0);
}

void sub_10013EFC4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 56))
  {
    v9 = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v9;
      v5 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v4, v5, "Sign-in succeeded!", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    v6 = [*(a1 + 40) delegate];
    [v6 appleIDControllerFinished:*(a1 + 40)];

    v10 = 0;
  }

  else
  {
    oslog = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, *(a1 + 32));
      _os_log_error_impl(&_mh_execute_header, oslog, v11, "Sign-in failed: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [location[0] setEnabled:1];
    v2 = [*(a1 + 40) navigationController];
    v3 = [v2 popToViewController:location[0] animated:1];

    v10 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_10013F1A4(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog[0];
    v6 = v22;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v5, v6, "Beginning authentication...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  WeakRetained = objc_loadWeakRetained(&a1[5].isa);
  [WeakRetained setEnabled:0];

  v8 = objc_loadWeakRetained(&a1[5].isa);
  v9 = [v8 navigationController];
  v10 = objc_loadWeakRetained(&a1[6].isa);
  [v10 setNavigationController:v9];

  v11 = objc_loadWeakRetained(&a1[6].isa);
  v12 = location[0];
  v13 = v24;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_10013F3BC;
  v18 = &unk_10032D660;
  v19 = a1[4].isa;
  objc_copyWeak(&v20, &a1[6].isa);
  [v11 authenticateWithUsername:v12 password:v13 completion:&v14];

  objc_destroyWeak(&v20);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void sub_10013F3BC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v5 + 16))(v5, WeakRetained, location[0], v7);

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10013F460(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v5 + 16))(v5, WeakRetained, location[0], v7);

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_100140320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(v17);
  objc_destroyWeak((v18 - 80));
  _Unwind_Resume(a1);
}

void sub_100140370(id *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = [WeakRetained isMovingToParentViewController] ^ 1;

  if (v3)
  {
    [a1[4] cancelAuthentication];
  }

  v4 = [a1[4] twoAccountsiCloudSignInController];

  if (v4)
  {
    v5 = a1[4];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_10014047C;
    v10 = &unk_10032D750;
    v11[0] = a1[4];
    [v5 _removeBackToViewControllerMatchingBlock:&v6 withOffset:1];
    objc_storeStrong(v11, 0);
  }
}

uint64_t sub_10014047C(id *a1, void *a2)
{
  v2 = a1;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v4 = [v2[4] twoAccountsiCloudSignInController];
  LOBYTE(v2) = v3 == v4;

  objc_storeStrong(location, 0);
  return v2 & 1;
}

void sub_1001404E8(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v40 = 0;
  objc_storeStrong(&v40, a3);
  v39 = a1;
  if (location[0] || v40)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 5);
    [a1[4] setAuthAttemptLandingViewController:WeakRetained];

    v6 = [BuddyAppleIDSignInTask alloc];
    v7 = [a1[4] featureFlags];
    v8 = +[BuddyAccountTools sharedBuddyAccountTools];
    v9 = [(BuddyAppleIDSignInTask *)v6 initWithFeatureFlags:v7 accountTools:v8];
    [a1[4] setSignInTask:v9];

    v10 = objc_loadWeakRetained(a1 + 5);
    v11 = [v10 navigationController];
    v12 = [a1[4] signInTask];
    [v12 setNavigationController:v11];

    v13 = [a1[4] signInTask];
    [v13 setServiceType:2];

    LOBYTE(v13) = [a1[4] _isRestore];
    v14 = [a1[4] signInTask];
    [v14 setRestoreFromBackupMode:v13 & 1];

    v15 = [a1[4] featureFlags];
    LOBYTE(v14) = [v15 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

    if (v14)
    {
      oslog = _BYLoggingFacility();
      v36 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [a1[4] passcodeCacheManager];
        v17 = [a1[4] signInTask];
        sub_10011A49C(buf, "[BuddyAppleIDController _showTwoAccountsiTunesSignInController]_block_invoke_3", v16, v17);
        _os_log_impl(&_mh_execute_header, oslog, v36, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      v18 = [a1[4] passcodeCacheManager];
      v19 = [a1[4] signInTask];
      [v19 setCacheManager:v18];
    }

    v35 = _BYLoggingFacility();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v35;
      v21 = v34;
      sub_10006AA68(v33);
      _os_log_impl(&_mh_execute_header, v20, v21, "Beginning authentication for store account...", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
    v22 = objc_loadWeakRetained(a1 + 5);
    [v22 setEnabled:0];

    v23 = [a1[4] signInTask];
    v24 = location[0];
    v25 = v40;
    v26 = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = sub_100140A84;
    v30 = &unk_10032D2B8;
    objc_copyWeak(&v32, a1 + 5);
    v31 = a1[4];
    [v23 authenticateWithUsername:v24 password:v25 completion:&v26];

    objc_storeStrong(&v31, 0);
    objc_destroyWeak(&v32);
    v38 = 0;
  }

  else
  {
    [a1[4] _signInSucceeded];
    v38 = 1;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

void sub_100140A84(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v37 = 0;
  objc_storeStrong(&v37, a3);
  v36[1] = a1;
  if (v37)
  {
    v36[0] = _BYLoggingFacility();
    v35 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v36[0], OS_LOG_TYPE_ERROR))
    {
      v33 = 0;
      v31 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v37;
      }

      else if (v37)
      {
        v34 = [v37 domain];
        v33 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v34, [v37 code]);
        v32 = v5;
        v31 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, v36[0], v35, "Authentication failed: %{public}@", buf, 0xCu);
      if (v31)
      {
      }

      if (v33)
      {
      }
    }

    objc_storeStrong(v36, 0);
    v6 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v24 = -1073741824;
    v25 = 0;
    v26 = sub_100140EB4;
    v27 = &unk_10032D888;
    objc_copyWeak(&v30, a1 + 5);
    v28 = a1[4];
    v29 = v37;
    dispatch_async(v6, &block);

    v22 = 1;
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v28, 0);
    objc_destroyWeak(&v30);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v20;
      sub_10006AA68(v19);
      _os_log_impl(&_mh_execute_header, v7, v8, "Authentication succeeded!", v19, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v9 = &_dispatch_main_q;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100140F18;
    v14 = &unk_10032D7A0;
    v15 = a1[4];
    v16 = location[0];
    objc_copyWeak(&v18, a1 + 5);
    v17 = v37;
    dispatch_async(v9, &v10);

    objc_storeStrong(&v17, 0);
    objc_destroyWeak(&v18);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    v22 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

void sub_100140EB4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  [location[0] setEnabled:1];
  [*(a1 + 32) _signInFailedWithError:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

void sub_100140F18(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = -[BuddyAppleIDSpinnerPage initWithAccountMode:]([BuddyAppleIDSpinnerPage alloc], "initWithAccountMode:", [*(a1 + 32) operationType]);
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:location[0] animated:1];

  oslog = _BYLoggingFacility();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v17;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Beginning sign-in for store account...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [*(a1 + 32) signInTask];
  v20 = AIDAServiceTypeStore;
  v6 = [NSArray arrayWithObjects:&v20 count:1];
  v7 = *(a1 + 40);
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001411D0;
  v12 = &unk_10032D778;
  objc_copyWeak(&v15, (a1 + 56));
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  [v5 signInToServices:v6 authenticationResults:v7 completion:&v8];

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(&v15);
  objc_storeStrong(location, 0);
}

void sub_1001411D0(id *a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100141338;
  v9 = &unk_10032D5C0;
  objc_copyWeak(&v13, a1 + 6);
  v14 = v17 & 1;
  v10 = location;
  v11 = a1[4];
  v12 = a1[5];
  dispatch_async(v4, &block);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v13);
  objc_storeStrong(&location, 0);
}

void sub_100141338(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 64))
  {
    v6 = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v6;
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Sign-in succeeded!", v4, 2u);
    }

    objc_storeStrong(&v6, 0);
    [*(a1 + 40) _signInSucceeded];
    v7 = 0;
  }

  else
  {
    oslog = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, *(a1 + 32));
      _os_log_error_impl(&_mh_execute_header, oslog, v8, "Sign-in failed: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [location[0] setEnabled:1];
    [*(a1 + 40) _signInFailedWithError:*(a1 + 48)];
    v7 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_10014165C(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  oslog[1] = a1;
  if (v19)
  {
    oslog[0] = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v13 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v19;
      }

      else if (v19)
      {
        v16 = [v19 domain];
        v15 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v16, [v19 code]);
        v14 = v5;
        v13 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v17, "Proximity authentication failed: %{public}@", buf, 0xCu);
      if (v13)
      {
      }

      if (v15)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  v6 = [(objc_class *)a1[4].isa proximityLoginHandler];

  if (v6)
  {
    v7 = [(objc_class *)a1[4].isa proximityLoginHandler];
    v7[2](v7, location[0], v19);
  }

  else
  {
    v12 = _BYLoggingFacility();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v8 = v12;
      v9 = v11;
      sub_10006AA68(v10);
      _os_log_fault_impl(&_mh_execute_header, v8, v9, "Proximity authentation called without a handler!", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void sub_100141B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(v17);
  objc_destroyWeak((v18 - 80));
  _Unwind_Resume(a1);
}

void sub_100141BB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isMovingToParentViewController] ^ 1;

  if (v3)
  {
    [*(a1 + 32) cancelAuthentication];
  }
}

void sub_100141C18(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v38 = 0;
  objc_storeStrong(&v38, a3);
  oslog[1] = a1;
  WeakRetained = objc_loadWeakRetained(&a1[5].isa);
  [(objc_class *)a1[4].isa setAuthAttemptLandingViewController:WeakRetained];

  v6 = [BuddyAppleIDSignInTask alloc];
  v7 = [(objc_class *)a1[4].isa featureFlags];
  v8 = +[BuddyAccountTools sharedBuddyAccountTools];
  v9 = [(BuddyAppleIDSignInTask *)v6 initWithFeatureFlags:v7 accountTools:v8];
  [(objc_class *)a1[4].isa setSignInTask:v9];

  v10 = objc_loadWeakRetained(&a1[5].isa);
  v11 = [v10 navigationController];
  v12 = [(objc_class *)a1[4].isa signInTask];
  [v12 setNavigationController:v11];

  v13 = [(objc_class *)a1[4].isa signInTask];
  [v13 setMakeStoreServiceActive:0];

  LOBYTE(v13) = [(objc_class *)a1[4].isa _isRestore];
  v14 = [(objc_class *)a1[4].isa signInTask];
  [v14 setRestoreFromBackupMode:v13 & 1];

  v15 = [(objc_class *)a1[4].isa featureFlags];
  LOBYTE(v14) = [v15 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (v14)
  {
    oslog[0] = _BYLoggingFacility();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(objc_class *)a1[4].isa passcodeCacheManager];
      v17 = [(objc_class *)a1[4].isa signInTask];
      sub_10011A49C(buf, "[BuddyAppleIDController _showTwoAccountsiCloudSignInController]_block_invoke_2", v16, v17);
      _os_log_impl(&_mh_execute_header, oslog[0], v36, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
    }

    objc_storeStrong(oslog, 0);
    v18 = [(objc_class *)a1[4].isa passcodeCacheManager];
    v19 = [(objc_class *)a1[4].isa signInTask];
    [v19 setCacheManager:v18];
  }

  v35 = _BYLoggingFacility();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v35;
    v21 = v34;
    sub_10006AA68(v33);
    _os_log_impl(&_mh_execute_header, v20, v21, "Beginning authentication for iCloud account...", v33, 2u);
  }

  objc_storeStrong(&v35, 0);
  v22 = objc_loadWeakRetained(&a1[5].isa);
  [v22 setEnabled:0];

  v23 = [(objc_class *)a1[4].isa signInTask];
  v24 = location[0];
  v25 = v38;
  v26 = _NSConcreteStackBlock;
  v27 = -1073741824;
  v28 = 0;
  v29 = sub_100142168;
  v30 = &unk_10032D2B8;
  objc_copyWeak(&v32, &a1[5].isa);
  v31 = a1[4].isa;
  [v23 authenticateWithUsername:v24 password:v25 completion:&v26];

  objc_storeStrong(&v31, 0);
  objc_destroyWeak(&v32);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

void sub_100142168(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v36 = 0;
  objc_storeStrong(&v36, a3);
  v35[1] = a1;
  if (v36)
  {
    v35[0] = _BYLoggingFacility();
    v34 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35[0], OS_LOG_TYPE_ERROR))
    {
      v32 = 0;
      v30 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v36;
      }

      else if (v36)
      {
        v33 = [v36 domain];
        v32 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v33, [v36 code]);
        v31 = v5;
        v30 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, v35[0], v34, "Authentication failed: %{public}@", buf, 0xCu);
      if (v30)
      {
      }

      if (v32)
      {
      }
    }

    objc_storeStrong(v35, 0);
    v6 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_100142578;
    v26 = &unk_10032D888;
    objc_copyWeak(&v29, a1 + 5);
    v27 = a1[4];
    v28 = v36;
    dispatch_async(v6, &block);

    v21 = 1;
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v27, 0);
    objc_destroyWeak(&v29);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v19;
      sub_10006AA68(v18);
      _os_log_impl(&_mh_execute_header, v7, v8, "Authentication succeeded!", v18, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v9 = &_dispatch_main_q;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1001425DC;
    v14 = &unk_10032D888;
    v15 = a1[4];
    v16 = location[0];
    objc_copyWeak(&v17, a1 + 5);
    dispatch_async(v9, &v10);

    objc_destroyWeak(&v17);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    v21 = 0;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

void sub_100142578(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  [location[0] setEnabled:1];
  [*(a1 + 32) _signInFailedWithError:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

void sub_1001425DC(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = -[BuddyAppleIDSpinnerPage initWithAccountMode:]([BuddyAppleIDSpinnerPage alloc], "initWithAccountMode:", [*(a1 + 32) operationType]);
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:location[0] animated:1];

  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v15;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Beginning sign-in for iCloud account...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [*(a1 + 32) signInTask];
  v6 = *(a1 + 40);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001427B4;
  v11 = &unk_10032D7C8;
  objc_copyWeak(&v13, (a1 + 48));
  v12 = *(a1 + 32);
  [v5 signInToAllServicesWithAuthenticationResults:v6 completion:&v7];

  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v13);
  objc_storeStrong(location, 0);
}

void sub_1001427B4(uint64_t a1, char a2, id obj)
{
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v14 = a1;
  v4 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001428FC;
  v9 = &unk_10032D6D8;
  objc_copyWeak(&v12, (a1 + 40));
  v13 = v16 & 1;
  v10 = location;
  v11 = *(a1 + 32);
  dispatch_async(v4, &v5);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v12);
  objc_storeStrong(&location, 0);
}

void sub_1001428FC(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 56))
  {
    v7 = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v7;
      v4 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v3, v4, "Sign-in succeeded!", v5, 2u);
    }

    objc_storeStrong(&v7, 0);
    [*(a1 + 40) _showTwoAccountsiTunesSignInController];
    v8 = 0;
  }

  else
  {
    oslog = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v2 = *(a1 + 32);
      }

      else if (*(a1 + 32))
      {
        v12 = [*(a1 + 32) domain];
        v11 = 1;
        v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [*(a1 + 32) code]);
        v10 = v2;
        v9 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_100071CBC(buf, v2);
      _os_log_error_impl(&_mh_execute_header, oslog, v13, "Sign-in failed: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    [location[0] setEnabled:1];
    [*(a1 + 40) _signInFailedWithError:*(a1 + 32)];
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_100143018(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) setUserInteractionEnabled:{1, a1}];
  [*(a1 + 40) _popBackToAuthAttemptLandingPage];
  objc_storeStrong(&location, 0);
}

double sub_100143424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *&result = 136315650;
  *a1 = 136315650;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 2112;
  *(a1 + 20) = a4;
  return result;
}

void sub_1001435A4(uint64_t a1)
{
  [*(a1 + 32) _createMeCard];
  [*(a1 + 32) _nameDevice];
  v2 = [*(a1 + 32) lockdownModeProvider];
  [v2 fetchAccountStateWithCompletionHandler:&stru_10032D810];
}

void sub_1001441EC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10014433C;
  v10 = &unk_10032BB10;
  v11 = v14;
  v12 = a1[4];
  v13[0] = location[0];
  dispatch_async(v5, &block);

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_10014433C(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  if (*(a1 + 32))
  {
    [*(a1 + 40) _authCompletedShouldProceed:0 error:*(a1 + 32)];
  }

  else
  {
    v1 = *(a1 + 40);
    v2 = *(a1 + 48);
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_10014441C;
    v7 = &unk_10032BAE8;
    v8[0] = *(a1 + 40);
    [v1 _upgradeAccountWithAuthenticationResults:v2 completion:&v3];
    objc_storeStrong(v8, 0);
  }
}

void sub_10014441C(uint64_t a1, char a2, id obj)
{
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13 = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100144540;
  v9 = &unk_10032BAC0;
  v10 = *(a1 + 32);
  v12 = v15 & 1;
  v11 = location;
  dispatch_async(v4, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_100144AEC(uint64_t a1, char a2, id obj)
{
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v14 = a1;
  v4 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100144C38;
  v9 = &unk_10032D838;
  v10 = *(a1 + 32);
  v13 = v16 & 1;
  v11 = location;
  v12 = *(a1 + 40);
  dispatch_async(v4, &v5);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_100144C38(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  [*(a1 + 32) _didFinishResponsibilityViewControllerPushSeesion];
  if (*(a1 + 56))
  {
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v10;
      v3 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v2, v3, "Sign-in succeeded!", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, *(a1 + 40));
      _os_log_error_impl(&_mh_execute_header, oslog[0], v11, "Sign-in failed: %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = [*(a1 + 40) objectForKeyedSubscript:AIDAServiceTypeCloud];
    v7 = [v6 error];
    (*(v4 + 16))(v4, v5 & 1, v7);
  }
}

void sub_100144F18(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v33 = 0;
  objc_storeStrong(&v33, a3);
  v32[1] = a1;
  v26 = _NSConcreteStackBlock;
  v27 = -1073741824;
  v28 = 0;
  v29 = sub_100145304;
  v30 = &unk_10032B0D0;
  v31 = a1[4];
  v32[0] = objc_retainBlock(&v26);
  if (v33)
  {
    oslog = _BYLoggingFacility();
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v20 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v33;
      }

      else if (v33)
      {
        v23 = [v33 domain];
        v22 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v23, [v33 code]);
        v21 = v5;
        v20 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, oslog, v24, "Security upgrade authentication failed: %{public}@", buf, 0xCu);
      if (v20)
      {
      }

      if (v22)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    (*(v32[0] + 2))();
  }

  else if ([a1[4] accountToUpgradeIsPrimary])
  {
    v6 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100145530;
    v16 = &unk_10032BC78;
    v17 = a1[4];
    v18 = location[0];
    v19 = v32[0];
    dispatch_async(v6, &block);

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v11 = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v11;
      v8 = v10;
      sub_10006AA68(v9);
      _os_log_impl(&_mh_execute_header, v7, v8, "Security upgrade authentication completed for non-primary Apple ID", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    (*(v32[0] + 2))();
  }

  objc_storeStrong(v32, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void sub_100145304(id *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001453DC;
  v7 = &unk_10032B0D0;
  v8[0] = a1[4];
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

void sub_1001453DC(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = a1[4];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001454C4;
  v8 = &unk_10032D750;
  v9[0] = a1[4];
  [v2 _removeBackToViewControllerMatchingBlock:&v4 withOffset:0];
  v3 = [a1[4] delegate];
  [v3 appleIDControllerFinished:a1[4]];

  objc_storeStrong(v9, 0);
}

uint64_t sub_1001454C4(id *a1, void *a2)
{
  v2 = a1;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v4 = [v2[4] authAttemptLandingViewController];
  LOBYTE(v2) = v3 == v4;

  objc_storeStrong(location, 0);
  return v2 & 1;
}

void sub_100145530(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Security upgrade authentication completed for primary Apple ID; proceeding with next steps", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  isa = a1[4].isa;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001456A4;
  v9 = &unk_10032BC78;
  v10 = a1[4].isa;
  v11 = a1[5].isa;
  v12 = a1[6].isa;
  [(objc_class *)isa _showSpinnerPageWithIdentifier:@"appleIDSecurityUpgradePostActions" handler:&v5];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

void sub_1001456A4(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100145764;
  v7 = &unk_10032AEC8;
  v8[0] = *(a1 + 48);
  [v1 _upgradeAccountWithAuthenticationResults:v2 completion:&v3];
  objc_storeStrong(v8, 0);
}

void sub_100145764(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 32) + 16))(*(a1 + 32));
  objc_storeStrong(&location, 0);
}

void ***sub_100146A24(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = a3;
  v15[1] = a1;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  *v16 = [(NSBundle *)v5 localizedStringForKey:@"APPLE_ID_LOGIN_OPTIONS" value:&stru_10032F900 table:@"AppleIDAuth"];

  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100146B98;
  v12 = &unk_10032D888;
  v13 = a1[4];
  objc_copyWeak(v15, a1 + 5);
  v14 = location[0];
  v6 = objc_retainBlock(&v8);
  objc_storeStrong(&v14, 0);
  objc_destroyWeak(v15);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v6;
}

void sub_100146B98(id *a1)
{
  v36[2] = a1;
  v36[1] = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"APPLE_ID_LOGIN_OPTIONS_TITLE" value:&stru_10032F900 table:@"AppleIDAuth"];
  v36[0] = [UIAlertController alertControllerWithTitle:v3 message:&stru_10032F900 preferredStyle:0];

  v4 = v36[0];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"APPLE_ID_PROXIMITY_SIGNIN" value:&stru_10032F900 table:@"AppleIDAuth"];
  v29 = _NSConcreteStackBlock;
  v30 = -1073741824;
  v31 = 0;
  v32 = sub_100147044;
  v33 = &unk_10032B8D8;
  v34 = a1[4];
  objc_copyWeak(&v35, a1 + 6);
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:&v29];
  [v4 addAction:v7];
  v28 = 0;

  v8 = v36[0];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"HAVE_TWO_ACCOUNTS" value:&stru_10032F900 table:@"AppleIDAuth"];
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = sub_1001470B0;
  v26 = &unk_10032B598;
  v27 = a1[4];
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:&v22];
  [v8 addAction:v11];

  v12 = v36[0];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [(NSBundle *)v13 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"AppleIDAuth"];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
  [v12 addAction:v15];

  location = [v36[0] popoverPresentationController];
  [location setSourceView:a1[5]];
  [a1[5] bounds];
  [location setSourceRect:{v16, v17, v18, v19}];
  v20 = [a1[4] navigationController];
  [v20 presentViewController:v36[0] animated:1 completion:0];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v27, 0);
  objc_destroyWeak(&v35);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(v36, 0);
}

void sub_10014700C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21, char a22, int a23, _Unwind_Exception *exception_object)
{
  if (a22)
  {
    objc_destroyWeak(v24);
  }

  _Unwind_Resume(a1);
}

void sub_100147044(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 _showProximityiCloudSignInController:WeakRetained];

  objc_storeStrong(location, 0);
}

void sub_1001470B0(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _showTwoAccountsiCloudSignInController];
  objc_storeStrong(location, 0);
}

void ***sub_100147100(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = a3;
  v13[1] = a1;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  *v14 = [(NSBundle *)v5 localizedStringForKey:@"HAVE_TWO_ACCOUNTS" value:&stru_10032F900 table:@"AppleIDAuth"];

  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100147238;
  v12 = &unk_10032B0D0;
  v13[0] = a1[4];
  v6 = objc_retainBlock(&v8);
  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);

  return v6;
}

void ***sub_100147264(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = a3;
  v14[1] = a1;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  *v15 = [(NSBundle *)v5 localizedStringForKey:@"APPLE_ID_PROXIMITY_SIGNIN" value:&stru_10032F900 table:@"AppleIDAuth"];

  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001473BC;
  v12 = &unk_10032B8B0;
  v13 = a1[4];
  objc_copyWeak(v14, a1 + 5);
  v6 = objc_retainBlock(&v8);
  objc_destroyWeak(v14);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v6;
}

void sub_1001473BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 _showProximityiCloudSignInController:{WeakRetained, a1, a1}];
}

void sub_100147F1C(uint64_t a1, char a2)
{
  v13 = a1;
  v12 = a2;
  v11 = a1;
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100148004;
  v8 = &unk_10032B688;
  v10 = v12 & 1;
  v9 = *(a1 + 32);
  dispatch_async(v3, &block);

  objc_storeStrong(&v9, 0);
}

id sub_100148004(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    return [*(a1 + 32) exitMigrationReconnectController];
  }

  [*(a1 + 32) setDidReconnect:{1, a1, a1}];
  return [*(a1 + 32) _startMigrationIfPossible];
}

void sub_1001484C8(uint64_t a1, char a2)
{
  v12 = a1;
  v11 = a2;
  v10[1] = a1;
  if (a2)
  {
    v3 = [*(a1 + 32) navigationItem];
    v4 = [v3 leftBarButtonItem];
    [v4 setEnabled:0];

    v5 = [*(a1 + 32) miscState];
    v6 = [v5 migrationManager];
    [v6 cancelWithCause:2];

    if (*(a1 + 40))
    {
      v7 = [*(a1 + 32) analyticsManager];
      [v7 commitThenUpload];

      v10[0] = objc_alloc_init(DDRResetOptions);
      location = [[DDRResetRequest alloc] initWithMode:4 options:v10[0] reason:@"Migration Disconnect Erase"];
      v8 = +[DDRResetService sharedInstance];
      [(DDRResetService *)v8 resetWithRequest:location completion:&stru_10032D8F8];

      objc_storeStrong(&location, 0);
      objc_storeStrong(v10, 0);
    }

    else
    {
      [*(a1 + 32) exitMigrationReconnectController];
    }
  }

  else
  {
    [*(a1 + 32) setUserDidCancelReconnect:0];
    [*(a1 + 32) _startMigrationIfPossible];
  }
}

void sub_100148670(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v12 = [location[0] domain];
        v11 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [location[0] code]);
        v10 = v3;
        v9 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Reset failed: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Reset was successful!", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_1001492AC(id *a1, void *a2, id obj)
{
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v11[2] = a1;
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001493C8;
  v9 = &unk_10032D948;
  objc_copyWeak(v11, a1 + 5);
  v11[1] = v13;
  v10 = a1[4];
  dispatch_async(v4, &block);

  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v11);
  objc_storeStrong(&location, 0);
}

void sub_1001493C8(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  [location[0] setScreenTimeState:*(a1 + 48)];
  v2 = [STSetupAssistantViewController alloc];
  v3 = *(a1 + 48);
  v4 = [location[0] managementState];
  v5 = [v2 initWithScreenTimeState:v3 passcode:{objc_msgSend(v4, "isRestrictionsPasscodeSet") & 1}];
  [location[0] setScreenTimeViewController:v5];

  v6 = [location[0] screenTimeViewController];
  [v6 setDelegate:location[0]];

  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_1001496C0(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001497D8;
  v8 = &unk_10032D998;
  objc_copyWeak(&v10, (a1 + 32));
  v9 = location[0];
  v11 = *(a1 + 40) & 1;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_storeStrong(location, 0);
}

void sub_1001497D8(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:v3];

  v4 = [location[0] screenTimeViewController];
  v5 = [v4 view];
  v6 = [v5 window];
  [v6 setUserInteractionEnabled:1];

  if (*(a1 + 32))
  {
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 48))
      {
        v7 = @"enable";
      }

      else
      {
        v7 = @"disable";
      }

      v18 = 0;
      v16 = 0;
      if (_BYIsInternalInstall())
      {
        v8 = *(a1 + 32);
      }

      else if (*(a1 + 32))
      {
        v19 = [*(a1 + 32) domain];
        v18 = 1;
        v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v19, [*(a1 + 32) code]);
        v17 = v8;
        v16 = 1;
      }

      else
      {
        v8 = 0;
      }

      sub_100078180(buf, v7, v8);
      _os_log_error_impl(&_mh_execute_header, oslog, v20, "Failed to %@ Screen Time: %@", buf, 0x16u);
      if (v16)
      {
      }

      if (v18)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v15 = _BYLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v9 = @"enabled";
      }

      else
      {
        v9 = @"disabled";
      }

      sub_10006AE18(v23, v9);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Screen Time successfully %@", v23, 0xCu);
    }

    objc_storeStrong(&v15, 0);
  }

  v10 = [location[0] buddyPreferences];
  [v10 setObject:&__kCFBooleanTrue forKey:@"ScreenTimePresented"];

  v11 = [location[0] settingsManager];
  [v11 setScreenTimeEnabled:*(a1 + 48) & 1];

  v12 = [location[0] paneFeatureAnalyticsManager];
  v13 = [NSNumber numberWithBool:*(a1 + 48) & 1];
  [v12 recordActionWithValue:v13 forFeature:0];

  v14 = [location[0] delegate];
  [v14 flowItemDone:location[0]];

  objc_storeStrong(location, 0);
}

void sub_10014AE44(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1[4] + 24) reloadData];
  objc_storeStrong(location, 0);
}

void sub_10014AEA8(id a1, UIViewControllerTransitionCoordinatorContext *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

void sub_10014D378(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  v4[0] = [NSError errorWithDomain:@"BYCloudConfigRetreiveProfileFromWebErrorDomain" code:-5 userInfo:0];
  v3 = [a1[4] delegate];
  [v3 webAuthCanceled:v4[0]];

  objc_storeStrong(v4, 0);
  objc_storeStrong(location, 0);
}

BYBackupMetadata *__cdecl sub_10014DF3C(id a1, NSString *a2, unint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = BYMetadataFromBackup();
  objc_storeStrong(location, 0);

  return v3;
}

void sub_10014E43C(id *a1)
{
  v2 = [a1[4] backupUDIDToSeedEnrolledMap];
  v3 = [a1[5] backupUDID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    [a1[6] addObject:a1[5]];
  }
}

uint64_t sub_10014E4DC(uint64_t a1)
{
  v1 = a1;
  v45 = a1;
  v44 = a1;
  memset(__b, 0, sizeof(__b));
  v2 = *(v1 + 32);
  v3 = [v2 countByEnumeratingWithState:__b objects:v47 count:16];
  if (v3)
  {
    v4 = &__b[2];
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (**v4 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v43 = *(__b[1] + 8 * i);
        v7 = [*(v1 + 40) fetchBackupMetadataBlock];
        v8 = [v43 backupUDID];
        location = v7[2](v7, v8, [v43 snapshotID]);

        v9 = [location seedEnrollmentProgram];
        v38 = 0;
        v10 = 0;
        if (v9)
        {
          v39 = [location seedEnrollmentAssetAudience];
          v38 = 1;
          v10 = v39 != 0;
        }

        if (v38)
        {
        }

        v40 = v10;
        v11 = [*(v1 + 40) backupUDIDToSeedEnrolledMapAccessQueue];
        block = _NSConcreteStackBlock;
        v31 = -1073741824;
        v32 = 0;
        v33 = sub_10014E8FC;
        v34 = &unk_10032BAC0;
        v35 = *(v1 + 40);
        v36 = v43;
        v37 = v40;
        dispatch_sync(v11, &block);

        oslog = _BYLoggingFacility();
        v28 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          log = oslog;
          v12 = v1;
          v13 = v5;
          v14 = v2;
          v15 = v4;
          v16 = v40;
          v17 = v3;
          v18 = [v43 backupUDID];
          v19 = v16;
          v4 = v15;
          v2 = v14;
          v5 = v13;
          v1 = v12;
          sub_100097718(buf, v19, v18);
          _os_log_debug_impl(&_mh_execute_header, log, v28, "Did load seed enrollment state %d for restorable item %@", buf, 0x12u);
          v20 = v18;
          v3 = v17;
        }

        objc_storeStrong(&oslog, 0);
        objc_storeStrong(&v36, 0);
        objc_storeStrong(&v35, 0);
        objc_storeStrong(&location, 0);
      }

      v3 = [v2 countByEnumeratingWithState:__b objects:v47 count:16];
    }

    while (v3);
  }

  v27 = _BYLoggingFacility();
  v26 = 2;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v21 = v27;
    v22 = v26;
    sub_10006AA68(v25);
    _os_log_debug_impl(&_mh_execute_header, v21, v22, "Finished loading seed enrollment state", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  return (*(*(v1 + 48) + 16))();
}

void sub_10014E8FC(uint64_t a1)
{
  v2 = [NSNumber numberWithBool:*(a1 + 48) & 1, a1, a1];
  v3 = [*(a1 + 32) backupUDIDToSeedEnrolledMap];
  v4 = [*(a1 + 40) backupUDID];
  [v3 setObject:v2 forKeyedSubscript:v4];
}

void sub_10014EB14(uint64_t a1)
{
  v2 = [*(a1 + 32) backupUDIDToSeedEnrolledMap];
  v3 = [*(a1 + 40) backupUDID];
  v4 = [v2 objectForKeyedSubscript:v3];
  *(*(*(a1 + 48) + 8) + 24) = [v4 BOOLValue] & 1;
}

void sub_10015108C(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  oslog[1] = a1;
  if (v9)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, v9);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Error fetching user information: %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    (*(a1[4].isa + 2))();
  }

  else
  {
    isa = a1[4].isa;
    v6 = [location[0] repairState];
    v7 = 1;
    if (v6 != 2)
    {
      v7 = [location[0] repairState] == 3;
    }

    (*(isa + 2))(isa, v7);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_100151494(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  oslog[1] = a1;
  if (v19)
  {
    oslog[0] = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, v19);
      _os_log_impl(&_mh_execute_header, oslog[0], v17, "Repair flow completed with error: %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v16 = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v16;
      v6 = v15;
      sub_10006AA68(v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "Repair flow completed successfully!", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
  }

  v7 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001516B4;
  v12 = &unk_10032B0D0;
  v13 = a1[4].isa;
  dispatch_async(v7, &block);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void sub_1001516B4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 flowItemDone:*(a1 + 32)];
}

void sub_100151D18(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_1001521EC(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_100152248(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_100152C54(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] navigationController];
  v4 = [v3 view];
  [v4 setNeedsLayout];

  v5 = [a1[4] navigationController];
  v6 = [v5 view];
  [v6 layoutIfNeeded];

  v7 = a1[4];
  [v7 _contentViewHeight];
  [v7 _setPosedViewToBoundedHeight:1 animated:?];
  objc_storeStrong(location, 0);
}

void sub_100152F2C(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionView];
  v3 = [v2 leftPosedView];
  [v3 updateBoundsForMaxContentHeight:*(a1 + 40)];
  v5 = v4;

  v6 = [*(a1 + 32) selectionView];
  v7 = [v6 centerPosedView];
  [v7 updateBoundsForMaxContentHeight:*(a1 + 40)];

  v8 = [*(a1 + 32) selectionView];
  v9 = [v8 rightPosedView];
  [v9 updateBoundsForMaxContentHeight:*(a1 + 40)];

  v10 = [*(a1 + 32) selectionViewHeightChangeBlock];
  if (v10)
  {
    v11 = [*(a1 + 32) selectionViewHeightChangeBlock];
    v11[2](v11, v5);
  }

  if (*(a1 + 48) & 1) != 0 && (*(a1 + 49))
  {
    v12 = [*(a1 + 32) view];
    [v12 layoutIfNeeded];
  }
}

void sub_1001530C4(uint64_t a1, char a2)
{
  if (*(a1 + 40) & 1) == 0 && (a2 & 1) != 0 && (*(a1 + 41))
  {
    v2 = [*(a1 + 32) view];
    [v2 setNeedsLayout];
  }
}

BOOL sub_100153728(uint64_t a1)
{
  v1 = 1;
  if (a1 != 4)
  {
    return a1 == 3;
  }

  return v1;
}

id sub_100153A90()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A71B8;
  v13 = qword_1003A71B8;
  if (!qword_1003A71B8)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100153E7C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100153E7C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100153BA4(NSObject *a1, char a2)
{
  v17 = a1;
  v16 = a2;
  oslog[1] = a1;
  if ((a2 & 1) == 0)
  {
    oslog[0] = _BYLoggingFacility();
    v14 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v3 = oslog[0];
      v4 = v14;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v3, v4, "Preloading resources failed; will present anyway", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  v5 = sub_100153A90();
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100153D0C;
  v11 = &unk_10032B0D0;
  v12 = a1[4].isa;
  v6 = [v5 viewControllerWithDismissHandler:&v7];
  [(objc_class *)a1[4].isa setViewController:v6];

  (*(a1[5].isa + 2))();
  objc_storeStrong(&v12, 0);
}

void sub_100153D0C(uint64_t a1)
{
  v2 = [*(a1 + 32) configurationCompleted];

  if (v2)
  {
    v3 = [*(a1 + 32) configurationCompleted];
    v3[2](v3);
  }
}

void sub_100153E7C(NSAssertionHandler *a1)
{
  sub_100153FC0();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("BCSetupAssistantDependencyAdapter");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getBCSetupAssistantDependencyAdapterClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyButtonConfigurationWrapper.m" lineNumber:19 description:@"Unable to find class %s", "BCSetupAssistantDependencyAdapter"];

    __break(1u);
  }

  qword_1003A71B8 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100153FC0()
{
  if (!sub_1001540E8())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *ActionButtonConfigurationUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyButtonConfigurationWrapper.m" lineNumber:18 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001540E8()
{
  if (!qword_1003A71C0)
  {
    sub_10015419C();
  }

  return qword_1003A71C0;
}

uint64_t sub_10015419C()
{
  result = _sl_dlopen();
  qword_1003A71C0 = result;
  return result;
}

void sub_1001545A0(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (([a1[4] isActivating] & 1) == 1)
  {
    location[0] = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = location[0];
      v3 = v14;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Wi-Fi activation already in-progress, ignoring additional attempt", buf, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    [a1[4] setActivating:1];
    objc_initWeak(&from, a1[4]);
    v4 = [a1[4] activationEngine];
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_100154758;
    v9 = &unk_10032DB00;
    objc_copyWeak(v11, &from);
    v10 = a1[5];
    [v4 tryActivateWithOptions:0 requestMutator:0 completion:&v5];

    objc_storeStrong(&v10, 0);
    objc_destroyWeak(v11);
    objc_destroyWeak(&from);
  }
}

void sub_100154758(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained activationFinishedWithData:location[0] responseHeaders:v12 error:v10 completionHandler:{*(a1 + 32), a1}];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_100154A0C(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if (*(a1 + 32))
  {
    location[0] = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      v19 = 0;
      v17 = 0;
      if (_BYIsInternalInstall())
      {
        v2 = *(a1 + 32);
      }

      else if (*(a1 + 32))
      {
        v20 = [*(a1 + 32) domain];
        v19 = 1;
        v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v20, [*(a1 + 32) code]);
        v18 = v2;
        v17 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_100071CBC(buf, v2);
      _os_log_error_impl(&_mh_execute_header, location[0], v21, "Error activating device: %{public}@", buf, 0xCu);
      if (v17)
      {
      }

      if (v19)
      {
      }
    }

    objc_storeStrong(location, 0);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    oslog = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v15;
      sub_10006AA68(v14);
      _os_log_impl(&_mh_execute_header, v3, v4, "Activation complete", v14, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v13 = [*(a1 + 40) objectForKeyedSubscript:@"Content-Type"];
    v12 = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_100071CBC(v23, v13);
      _os_log_impl(&_mh_execute_header, v12, v11, "Activation Content-Type: %{public}@", v23, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    if ([v13 containsString:@"application/x-buddyml"])
    {
      v10 = _BYLoggingFacility();
      v9 = 16;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v5 = v10;
        v6 = v9;
        sub_10006AA68(v8);
        _os_log_error_impl(&_mh_execute_header, v5, v6, "Activation response contains buddyml, assuming activation failed", v8, 2u);
      }

      objc_storeStrong(&v10, 0);
      [*(a1 + 48) setActivating:0];
      v7 = [NSError errorWithDomain:@"com.apple.purplebuddy.noninteractive-deviceactivator" code:1 userInfo:0];
      (*(*(a1 + 64) + 16))();
      objc_storeStrong(&v7, 0);
    }

    else
    {
      [*(a1 + 48) activateWithData:*(a1 + 56) headers:*(a1 + 40) completion:*(a1 + 64)];
    }

    objc_storeStrong(&v13, 0);
  }
}

void sub_100154F60(uint64_t a1)
{
  v25[2] = a1;
  v25[1] = a1;
  v25[0] = 0;
  if (*(a1 + 32))
  {
    v27 = kMAOptionsActivationResponseHeaders;
    v28 = *(a1 + 32);
    v2 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v3 = v25[0];
    v25[0] = v2;
  }

  location = 0;
  oslog[1] = 0;
  v4 = MAEActivateDeviceWithError();
  objc_storeStrong(&location, 0);
  v23 = v4 & 1;
  oslog[0] = _BYLoggingFacility();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithBool:v23 & 1];
    v19 = 0;
    v17 = 0;
    if (_BYIsInternalInstall())
    {
      v6 = location;
    }

    else if (location)
    {
      v20 = [location domain];
      v19 = 1;
      v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v20, [location code]);
      v18 = v6;
      v17 = 1;
    }

    else
    {
      v6 = 0;
    }

    sub_100073058(buf, v5, v6);
    _os_log_impl(&_mh_execute_header, oslog[0], v21, "Activation response accepted: %{public}@, error = %{public}@", buf, 0x16u);
    if (v17)
    {
    }

    if (v19)
    {
    }
  }

  objc_storeStrong(oslog, 0);
  v7 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001552C0;
  v12 = &unk_10032D838;
  v13 = *(a1 + 48);
  v16 = v23 & 1;
  v14 = location;
  v15 = *(a1 + 56);
  dispatch_async(v7, &block);

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v25, 0);
}

void sub_1001552C0(uint64_t a1)
{
  v3[2] = a1;
  v3[1] = a1;
  [*(a1 + 32) setActivating:0];
  if (*(a1 + 56))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = NSUnderlyingErrorKey;
    v5 = *(a1 + 40);
    v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    v3[0] = [NSError errorWithDomain:@"com.apple.purplebuddy.noninteractive-deviceactivator" code:2 userInfo:v2];

    (*(*(a1 + 48) + 16))();
    objc_storeStrong(v3, 0);
  }
}

BOOL sub_1001582AC(uint64_t a1)
{
  v1 = 1;
  if (a1 != 4)
  {
    return a1 == 3;
  }

  return v1;
}

void sub_10015A078(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_10015A0C8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v32 = 0;
  objc_storeStrong(&v32, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  objc_storeStrong(&v30, a5);
  oslog[1] = a1;
  if (v30)
  {
    oslog[0] = _BYLoggingFacility();
    v28 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v26 = 0;
      v24 = 0;
      if (_BYIsInternalInstall())
      {
        v9 = v30;
      }

      else if (v30)
      {
        v27 = [v30 domain];
        v26 = 1;
        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v27, [v30 code]);
        v25 = v9;
        v24 = 1;
      }

      else
      {
        v9 = 0;
      }

      sub_100071CBC(buf, v9);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v28, "Unable to scan for software updates: %{public}@", buf, 0xCu);
      if (v24)
      {
      }

      if (v26)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  v10 = 1;
  if (!v31)
  {
    v10 = *(a1 + 56);
  }

  v23 = v10 & 1;
  if ((v10 & 1) == 0)
  {
    [*(a1 + 32) cancelWithCause:6];
    v11 = [*(a1 + 40) proximitySetupController];
    v12 = [v11 information];
    v13 = [v12 appleID];
    v14 = v13 != 0;

    v22 = v14;
    if (!v14)
    {
      v15 = dispatch_get_global_queue(0, 0);
      block = _NSConcreteStackBlock;
      v17 = -1073741824;
      v18 = 0;
      v19 = sub_10015A43C;
      v20 = &unk_10032B0D0;
      v21 = *(a1 + 40);
      dispatch_async(v15, &block);

      objc_storeStrong(&v21, 0);
    }
  }

  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

void sub_10015A43C(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

id sub_10015F4A0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A71C8;
  v13 = qword_1003A71C8;
  if (!qword_1003A71C8)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10015FBC0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10015FBC0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_10015F5B4()
{
  v4 = sub_10015FF78();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoFlowTypeKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyManagedSIMController.m" lineNumber:26 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_10015F6BC()
{
  v4 = sub_1001600E0();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoIgnoreTransportKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyManagedSIMController.m" lineNumber:27 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_10015F7C4()
{
  v4 = sub_100160248();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoWaitForServiceKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyManagedSIMController.m" lineNumber:28 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

void sub_10015F8CC(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_10015FBC0(NSAssertionHandler *a1)
{
  sub_10015FD04();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("TSSIMSetupFlow");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getTSSIMSetupFlowClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyManagedSIMController.m" lineNumber:25 description:@"Unable to find class %s", "TSSIMSetupFlow"];

    __break(1u);
  }

  qword_1003A71C8 = *(*(a1[4].super.isa + 1) + 24);
}

uint64_t sub_10015FD04()
{
  v3 = sub_10015FE30();
  if (!v3)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SIMSetupSupportLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyManagedSIMController.m" lineNumber:24 description:@"%s", 0];

    __break(1u);
  }

  return v3;
}

uint64_t sub_10015FE30()
{
  if (!qword_1003A71D0)
  {
    sub_10015FEE4();
  }

  return qword_1003A71D0;
}

uint64_t sub_10015FEE4()
{
  result = _sl_dlopen();
  qword_1003A71D0 = result;
  return result;
}

uint64_t sub_10015FF78()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A71D8;
  v13 = qword_1003A71D8;
  if (!qword_1003A71D8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100160074;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100160074(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_100160074(uint64_t a1)
{
  v2 = sub_10015FD04();
  result = dlsym(v2, "TSUserInfoFlowTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A71D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001600E0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A71E0;
  v13 = qword_1003A71E0;
  if (!qword_1003A71E0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001601DC;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001601DC(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1001601DC(uint64_t a1)
{
  v2 = sub_10015FD04();
  result = dlsym(v2, "TSUserInfoIgnoreTransportKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A71E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100160248()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A71E8;
  v13 = qword_1003A71E8;
  if (!qword_1003A71E8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100160344;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100160344(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_100160344(uint64_t a1)
{
  v2 = sub_10015FD04();
  result = dlsym(v2, "TSUserInfoWaitForServiceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A71E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1001621E4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = *(a1 + 40);
    v2 = [*(a1 + 32) proximitySetupController];
    (*(v1 + 16))(v1, [v2 shouldEnableProximity] & 1);
  }
}

void sub_100162664(NSObject *a1, char a2)
{
  v6 = a1;
  v5 = a2;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, v5 & 1);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Finished fetching skip keys: %d", buf, 8u);
  }

  objc_storeStrong(oslog, 0);
  v3 = &_dispatch_main_q;
  dispatch_async(v3, a1[4].isa);
}

void sub_1001639B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) statusLabel];
  [v3 setText:v2];

  v4 = [*(a1 + 32) view];
  [v4 setNeedsDisplay];
}

id sub_100164EC8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A71F0;
  v13 = qword_1003A71F0;
  if (!qword_1003A71F0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100167DF8;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100167DF8(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100164FDC(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    v6 = 0;
    if (_BYIsInternalInstall())
    {
      v5 = v11;
    }

    else if (v11)
    {
      v9 = [v11 domain];
      v8 = 1;
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v9, [v11 code]);
      v7 = v5;
      v6 = 1;
    }

    else
    {
      v5 = 0;
    }

    sub_10006AE18(buf, v5);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Age attestation intent did refresh age range with error %@", buf, 0xCu);
    if (v6)
    {
    }

    if (v8)
    {
    }
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

id sub_1001654DC(uint64_t a1)
{
  result = [*(a1 + 32) setDidChooseSetUpWithParentOrGuardian:{*(a1 + 48) == 0, a1, a1}];
  if (*(a1 + 40))
  {
    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

void sub_1001656B8(uint64_t a1)
{
  v35 = a1;
  v34 = a1;
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 32) setShieldViewSetupPasscodeCompletion:*(a1 + 40)];
  objc_sync_exit(v2);

  v33 = 1;
  v3 = [*(a1 + 32) accountTools];
  v32 = [v3 primaryAccount];

  if (v32)
  {
    v4 = [*(a1 + 32) accountTools];
    v5 = [v4 ageRangeForAccount:v32];
    v6 = [v5 isTeen];

    v31 = v6 & 1;
    oslog = _BYLoggingFacility();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100082D54(buf, v31 & 1);
      _os_log_impl(&_mh_execute_header, oslog, v29, "Age attestation intent passcode setup has primary account (is teen? %d)", buf, 8u);
    }

    objc_storeStrong(&oslog, 0);
    if (v31)
    {
      v33 = 0;
    }
  }

  if (v33)
  {
    v28 = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v28;
      v8 = v27;
      sub_10006AA68(v26);
      _os_log_impl(&_mh_execute_header, v7, v8, "Age attestation intent passcode setup setting intent to child", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v9 = [*(a1 + 32) setupMethod];
    [v9 setIntent:2];

    v10 = [*(a1 + 32) flowItemDispositionProvider];
    [v10 setPreferredDispositions:8];
  }

  else
  {
    v25 = _BYLoggingFacility();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v25;
      v12 = v24;
      sub_10006AA68(v23);
      _os_log_impl(&_mh_execute_header, v11, v12, "Age attestation intent passcode setup setting intent to myself", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v13 = [*(a1 + 32) setupMethod];
    [v13 setIntent:1];

    v14 = [*(a1 + 32) flowItemDispositionProvider];
    [v14 setPreferredDispositions:4];
  }

  location = [*(a1 + 32) createConditionalFlowItemForClass:objc_opt_class()];
  if (location)
  {
    v15 = *(a1 + 32);
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_100165B80;
    v20 = &unk_10032B2E0;
    v21 = *(a1 + 32);
    [v15 pushFlowItem:location inFlow:v15 withExtendedInitialization:1 animated:1 willPushFlowItem:&v16];
    objc_storeStrong(&v21, 0);
  }

  else
  {
    [*(a1 + 32) _callShieldViewSetupPasscodeCompletion];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v32, 0);
}

id *sub_100165B80(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _callShieldViewSetupPasscodeCompletion];
  }

  return result;
}

void sub_100165F74(NSObject *a1)
{
  oslog[4] = a1;
  oslog[3] = a1;
  v2 = a1[4].isa;
  objc_sync_enter(v2);
  [(objc_class *)a1[4].isa setShieldViewSetupLocationServicesCompletion:a1[5].isa];
  objc_sync_exit(v2);

  oslog[0] = _BYLoggingFacility();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v16;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Age attestation intent location services setup setting intent to child", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v5 = [(objc_class *)a1[4].isa setupMethod];
  [v5 setIntent:2];

  v6 = [(objc_class *)a1[4].isa flowItemDispositionProvider];
  [v6 setPreferredDispositions:8];

  location = [(objc_class *)a1[4].isa createConditionalFlowItemForClass:objc_opt_class()];
  if (location)
  {
    isa = a1[4].isa;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1001661AC;
    v12 = &unk_10032B2E0;
    v13 = a1[4].isa;
    [(objc_class *)isa pushFlowItem:location inFlow:isa withExtendedInitialization:1 animated:1 willPushFlowItem:&v8];
    objc_storeStrong(&v13, 0);
  }

  else
  {
    [(objc_class *)a1[4].isa _callShieldViewSetupLocationServicesCompletion];
  }

  objc_storeStrong(&location, 0);
}

id *sub_1001661AC(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _callShieldViewSetupLocationServicesCompletion];
  }

  return result;
}

void sub_1001663A4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [BuddyAppleIDSignInTask alloc];
  v3 = [*(a1 + 32) featureFlags];
  v4 = [*(a1 + 32) accountTools];
  location[0] = [(BuddyAppleIDSignInTask *)v2 initWithFeatureFlags:v3 accountTools:v4];

  v5 = [*(a1 + 32) navigationController];
  [location[0] setNavigationController:v5];

  [location[0] setEnableFindMy:0];
  [location[0] setRestoreFromBackupMode:0];
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v14, "Age attestation intent shield view will start sign task %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = location[0];
  v7 = *(a1 + 40);
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001665B0;
  v12 = &unk_10032AEC8;
  v13 = *(a1 + 48);
  [v6 signInToAllServicesWithAuthenticationResults:v7 completion:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_1001665B0(NSObject *a1, char a2, id obj)
{
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v18 & 1;
    v13 = 0;
    v11 = 0;
    if (_BYIsInternalInstall())
    {
      v5 = location;
    }

    else if (location)
    {
      v14 = [location domain];
      v13 = 1;
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v14, [location code]);
      v12 = v5;
      v11 = 1;
    }

    else
    {
      v5 = 0;
    }

    sub_100097718(buf, v4, v5);
    _os_log_impl(&_mh_execute_header, oslog[0], v15, "Age attestation intent shield view completed sign in task with success %d error %@", buf, 0x12u);
    if (v11)
    {
    }

    if (v13)
    {
    }
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  else
  {
    v10 = _BYLoggingFacility();
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v6 = v10;
      v7 = v9;
      sub_10006AA68(v8);
      _os_log_error_impl(&_mh_execute_header, v6, v7, "Age attestation intent shield view sign in lacks completion!", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_100166AC8(uint64_t a1)
{
  v38 = a1;
  v37 = a1;
  v36 = 4;
  v35 = 0;
  v2 = [*(a1 + 32) accountTools];
  location = [v2 primaryAccount];

  if (location)
  {
    v3 = [*(a1 + 32) accountTools];
    v4 = [v3 ageRangeForAccount:location];
    v5 = [v4 isTeen];

    v33 = v5 & 1;
    oslog = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100082D54(buf, v33 & 1);
      _os_log_impl(&_mh_execute_header, oslog, v31, "Age attestation intent completion has primary account (is teen? %d)", buf, 8u);
    }

    objc_storeStrong(&oslog, 0);
    if ((v33 & 1) == 0)
    {
      v35 = 1;
    }
  }

  else
  {
    v6 = [*(a1 + 32) accountTools];
    v7 = [*(a1 + 32) accountTools];
    v8 = [v7 protoAccount];
    v9 = [v6 ageRangeForAccount:v8];
    v10 = [v9 isChild];

    if (v10)
    {
      if ([*(a1 + 32) didChooseSetUpWithParentOrGuardian])
      {
        v30 = _BYLoggingFacility();
        v29 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v30;
          v12 = v29;
          sub_10006AA68(v28);
          _os_log_impl(&_mh_execute_header, v11, v12, "Age attestation intent completion has child proto account and guardian setup", v28, 2u);
        }

        objc_storeStrong(&v30, 0);
        v35 = 1;
      }

      else
      {
        v36 = 16;
      }
    }
  }

  if (v35)
  {
    v27 = _BYLoggingFacility();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v27;
      v14 = v26;
      sub_10006AA68(v25);
      _os_log_impl(&_mh_execute_header, v13, v14, "Age attestation intent completion setting intent to child", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    v15 = [*(a1 + 32) setupMethod];
    [v15 setIntent:2];

    v16 = [*(a1 + 32) flowItemDispositionProvider];
    [v16 setPreferredDispositions:8];
  }

  else
  {
    v24 = _BYLoggingFacility();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v24;
      v18 = v23;
      sub_10006AA68(v22);
      _os_log_impl(&_mh_execute_header, v17, v18, "Age attestation intent completion setting intent to myself", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v19 = [*(a1 + 32) setupMethod];
    [v19 setIntent:1];

    v20 = v36;
    v21 = [*(a1 + 32) flowItemDispositionProvider];
    [v21 setPreferredDispositions:v20];
  }

  [*(a1 + 32) _finishFlowWithAISProvidedViewControllersToRemove:*(a1 + 40)];
  objc_storeStrong(&location, 0);
}

void sub_100167264(uint64_t a1)
{
  v22[2] = a1;
  v22[1] = a1;
  v2 = [*(a1 + 32) accountTools];
  v3 = [v2 primaryAccount];

  if (v3)
  {
    v4 = [*(a1 + 32) intentAndChildSetupFlowItem];
    v22[0] = [v4 viewController];

    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) intentAndChildSetupFlowItem];
      sub_100078180(buf, v5, v22[0]);
      _os_log_impl(&_mh_execute_header, oslog, v20, "Age attestation intent needs to remove its view controllers starting with %@ %@", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    location = objc_alloc_init(NSMutableArray);
    v18 = 0;
    memset(__b, 0, sizeof(__b));
    v6 = [*(a1 + 32) navigationController];
    v7 = [v6 viewControllers];

    v8 = [v7 countByEnumeratingWithState:__b objects:v25 count:16];
    if (v8)
    {
      v9 = *__b[2];
      do
      {
        for (i = 0; i < v8; ++i)
        {
          if (*__b[2] != v9)
          {
            objc_enumerationMutation(v7);
          }

          v17 = *(__b[1] + 8 * i);
          if (v18)
          {
            [location addObject:v17];
          }

          else if (v17 == v22[0])
          {
            v18 = 1;
            [location addObject:v17];
          }
        }

        v8 = [v7 countByEnumeratingWithState:__b objects:v25 count:16];
      }

      while (v8);
    }

    v15 = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v24, location);
      _os_log_impl(&_mh_execute_header, v15, v14, "Age attestation intent removing view controllers %@", v24, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    [*(a1 + 32) removeViewControllersOnNextPush:location];
    objc_storeStrong(&location, 0);
    objc_storeStrong(v22, 0);
  }

  else if ([*(a1 + 40) count])
  {
    v13 = _BYLoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v23, *(a1 + 40));
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Age attestation intent removing AIS-provided view controllers %@", v23, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    [*(a1 + 32) removeViewControllersOnNextPush:*(a1 + 40)];
  }

  v11 = [*(a1 + 32) accountTools];
  [v11 ageAttenstationFlowCompleted];

  v12 = [*(a1 + 32) delegate];
  [v12 flow:*(a1 + 32) finishedWithLastItem:*(a1 + 32) nextItem:0];
}

Class sub_100167DF8(uint64_t a1)
{
  sub_100167E64();
  result = objc_getClass("AKAgeRangeSettingsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A71F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100167E64()
{
  if (!qword_1003A71F8)
  {
    return sub_100167F14();
  }

  return result;
}

uint64_t sub_100167F14()
{
  result = _sl_dlopen();
  qword_1003A71F8 = result;
  return result;
}

void sub_100168354(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Keychain transferred and imported...", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa _beginSignIn];
  objc_storeStrong(location, 0);
}

void sub_10016879C(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _signInCompleted:location[0]];
  objc_storeStrong(location, 0);
}

void sub_100168BA0(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_100168C04(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = [a1[4] navigationController];
  v2 = [v10[0] viewControllers];
  v3 = [v2 indexOfObject:a1[4]];

  location[1] = v3;
  v4 = [v10[0] viewControllers];
  v5 = [v10[0] viewControllers];
  v12 = v3;
  v11 = ([v5 count] - v3);
  v13 = v3;
  v14 = v11;
  v6 = [NSIndexSet indexSetWithIndexesInRange:v3, v11];
  location[0] = [v4 objectsAtIndexes:v6];

  v7 = [a1[4] delegate];
  [v7 removeViewControllersOnNextPush:location[0]];

  v8 = [a1[4] delegate];
  [v8 flowItemDone:a1[4]];

  objc_storeStrong(location, 0);
  objc_storeStrong(v10, 0);
}

id sub_10016940C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7200;
  v13 = qword_1003A7200;
  if (!qword_1003A7200)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100169A74;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100169A74(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_100169520()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7210;
  v13 = qword_1003A7210;
  if (!qword_1003A7210)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100169E28;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100169E28(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100169634(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  v1 = [location[0] delegate];
  [v1 presentWiFiPaneForFlowItem:location[0]];

  objc_storeStrong(location, 0);
}

void sub_1001696A0(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  v1 = [location[0] delegate];
  [v1 flowItemDone:location[0]];

  objc_storeStrong(location, 0);
}

uint64_t sub_100169818(uint64_t a1)
{
  v2 = [*(a1 + 32) eraseFlow];
  v3 = [v2 startFlow];
  [*(a1 + 32) setInitialViewController:v3];

  return (*(*(a1 + 40) + 16))();
}

void sub_100169A74(NSAssertionHandler *a1)
{
  sub_100169BB8();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("DKEraseFlow");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getDKEraseFlowClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyMigrationSourceEraseController.m" lineNumber:16 description:@"Unable to find class %s", "DKEraseFlow"];

    __break(1u);
  }

  qword_1003A7200 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100169BB8()
{
  if (!sub_100169CE0())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *DisembarkUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyMigrationSourceEraseController.m" lineNumber:15 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_100169CE0()
{
  if (!qword_1003A7208)
  {
    sub_100169D94();
  }

  return qword_1003A7208;
}

uint64_t sub_100169D94()
{
  result = _sl_dlopen();
  qword_1003A7208 = result;
  return result;
}

void sub_100169E28(NSAssertionHandler *a1)
{
  sub_100169BB8();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("DKConfiguration");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getDKConfigurationClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyMigrationSourceEraseController.m" lineNumber:18 description:@"Unable to find class %s", "DKConfiguration"];

    __break(1u);
  }

  qword_1003A7210 = *(*(a1[4].super.isa + 1) + 24);
}

id sub_10016A4E8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7218;
  v13 = qword_1003A7218;
  if (!qword_1003A7218)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10016B5B0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10016B5B0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_10016A7D0(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v2 = [*(a1 + 32) intelligenceProvider];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10016A8D0;
  v7 = &unk_10032C680;
  v10 = *(a1 + 48) & 1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v2 isIntelligenceEnabledWithCompletionHandler:&v3];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_10016A8D0(uint64_t a1, char a2)
{
  v22 = a1;
  v21 = a2;
  location[1] = a1;
  v3 = *(a1 + 48);
  v18 = 0;
  v16 = 0;
  if (v3)
  {
    v19 = [*(a1 + 32) intelligenceProvider];
    v18 = 1;
    v4 = [v19 stashableNotificationOnboardingDefaults];
    v17 = v4;
    v16 = 1;
  }

  else
  {
    v4 = 0;
  }

  location[0] = v4;
  if (v16)
  {
  }

  if (v18)
  {
  }

  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10016AAA0;
  v10 = &unk_10032DC30;
  v11 = *(a1 + 32);
  v14 = *(a1 + 48) & 1;
  v15 = v21 & 1;
  v12 = location[0];
  v13 = *(a1 + 40);
  dispatch_async(v5, &block);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_10016AAA0(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsManager];
  v3 = v2;
  v4 = 0;
  if (*(a1 + 56))
  {
    v4 = *(a1 + 57);
  }

  [v2 stashIsIntelligenceEnabled:v4 & 1];

  v5 = [*(a1 + 32) settingsManager];
  [v5 stashNotificationOnboardingDefaults:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:v7];

    v8 = [*(a1 + 48) view];
    v9 = [v8 window];
    [v9 setUserInteractionEnabled:1];
  }

  v10 = [*(a1 + 32) delegate];
  [v10 flowItemDone:*(a1 + 32)];
}

uint64_t sub_10016AF04(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) intelligenceProvider];
    [v3 setDidShowIntelligencePaneInCurrentSession];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10016B5B0(NSAssertionHandler *a1)
{
  sub_10016B6F4();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("VTUIGMEnrollmentViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getVTUIGMEnrollmentViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyIntelligenceController.m" lineNumber:23 description:@"Unable to find class %s", "VTUIGMEnrollmentViewController"];

    __break(1u);
  }

  qword_1003A7218 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_10016B6F4()
{
  if (!sub_10016B81C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyIntelligenceController.m" lineNumber:22 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_10016B81C()
{
  if (!qword_1003A7220)
  {
    sub_10016B8D0();
  }

  return qword_1003A7220;
}

uint64_t sub_10016B8D0()
{
  result = _sl_dlopen();
  qword_1003A7220 = result;
  return result;
}

void sub_10016CA30(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained((a1 + 48));
  v3 = v6[0];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) copy];
  [v3 _presentMoreInfoForError:v4 dismissAction:v5];

  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

void sub_10016CCDC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_10016CD2C(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23 = a3;
  if ([location[0] buddy_isCloudConfigMigrationNoNetworkSelectedError])
  {
    *(*(a1[4] + 8) + 24) = 1;
    v5 = +[NSBundle mainBundle];
    v6 = [(NSBundle *)v5 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NETWORK_ERROR_NONE_SELECTED" value:&stru_10032F900 table:@"Localizable"];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *v23 = 1;
  }

  v9 = [location[0] domain];
  v10 = [v9 isEqualToString:NSURLErrorDomain];

  if (v10)
  {
    *(*(a1[4] + 8) + 24) = 1;
    if ([location[0] code] == -1009)
    {
      v11 = +[NSBundle mainBundle];
      v12 = [(NSBundle *)v11 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NETWORK_ERROR_NO_INTERNET" value:&stru_10032F900 table:@"Localizable"];
      v13 = *(a1[5] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      *v23 = 1;
    }

    if ([location[0] code] == -1003)
    {
      v15 = +[NSBundle mainBundle];
      v16 = [(NSBundle *)v15 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NETWORK_ERROR_DNS_RESOLUTION" value:&stru_10032F900 table:@"Localizable"];
      v17 = *(a1[5] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      *v23 = 1;
    }

    if ([location[0] code] == -1004)
    {
      v19 = +[NSBundle mainBundle];
      v20 = [(NSBundle *)v19 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NETWORK_ERROR_UNREACHABLE" value:&stru_10032F900 table:@"Localizable"];
      v21 = *(a1[5] + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      *v23 = 1;
    }
  }

  objc_storeStrong(location, 0);
}

void sub_10016EA8C(id a1, UIAlertAction *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"Login"];
  objc_storeStrong(location, 0);
}

void sub_10016F4A4(uint64_t a1)
{
  v65[2] = a1;
  v65[1] = a1;
  v65[0] = objc_alloc_init(BYBuddyDaemonGeneralClient);
  v2 = [v65[0] fetchAuthenticationContextForBiometric];
  v64.receiver = *(a1 + 32);
  v64.super_class = PearlSplashController;
  objc_msgSendSuper2(&v64, "setAuthContext:", v2);

  v3 = [*(a1 + 32) managedConfiguration];
  v4 = [v3 isPasscodeSet];

  v63 = v4 & 1;
  v5 = [*(a1 + 32) passcodeCacheManager];
  v6 = [v5 cachedPasscode];
  v7 = v6 != 0;

  v62 = v7;
  v59 = 0;
  v8 = 1;
  if (v63)
  {
    v8 = 1;
    if (!v62)
    {
      v60 = [*(a1 + 32) authContext];
      v59 = 1;
      v8 = v60 != 0;
    }
  }

  if (v59)
  {
  }

  v61 = v8;
  v9 = [*(a1 + 32) managedConfiguration];
  v10 = [v9 effectiveBoolValueForSetting:MCFeatureCameraAllowed] != 2;

  v58 = v10;
  v11 = [*(a1 + 32) capabilities];
  v12 = [v11 isPearlEnrolled] ^ 1;

  v57 = v12 & 1;
  v56 = 0;
  v13 = [*(a1 + 32) capabilities];
  v14 = [v13 supportsPeriocularFaceID];

  if (v14)
  {
    v54 = 0;
    v15 = 0;
    if (BYSetupAssistantHasCompletedInitialRun())
    {
      v55 = [*(a1 + 32) capabilities];
      v54 = 1;
      v15 = [v55 isPearlEnrolled];
    }

    if (v54)
    {
    }

    if (v15)
    {
      [*(a1 + 32) setEnrollmentConfiguration:3];
      v52 = 0;
      v16 = 0;
      if (v63)
      {
        v16 = 1;
        if (!v62)
        {
          v53 = [*(a1 + 32) authContext];
          v52 = 1;
          v16 = v53 != 0;
        }
      }

      v61 = v16;
      if (v52)
      {
      }

      v17 = *(a1 + 48);
      v50 = 0;
      v48 = 0;
      v18 = 0;
      if (v17)
      {
        v18 = 0;
        if (v61)
        {
          v18 = 0;
          if (v58)
          {
            v51 = [*(a1 + 32) capabilities];
            v50 = 1;
            v19 = [v51 hasEligibleEnrolledIdentityForPeriocularFaceIDEnrollment];
            v18 = 0;
            if (v19)
            {
              v49 = +[BYPreferencesController buddyPreferences];
              v48 = 1;
              v18 = [v49 BOOLForKey:@"FaceIDPeriocularPresented"] ^ 1;
            }
          }
        }
      }

      v56 = v18 & 1;
      if (v48)
      {
      }

      if (v50)
      {
      }
    }

    else
    {
      [*(a1 + 32) setEnrollmentConfiguration:1];
      v20 = 0;
      if (*(a1 + 48))
      {
        v20 = 0;
        if (v61)
        {
          v20 = 0;
          if (v57)
          {
            v20 = v58;
          }
        }
      }

      v56 = v20;
    }

    oslog = _BYLoggingFacility();
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = BYSetupAssistantHasCompletedInitialRun() & 1;
      v22 = [*(a1 + 32) capabilities];
      v23 = [v22 isPearlEnrolled] & 1;
      v24 = [*(a1 + 32) enrollmentConfiguration];
      v25 = [*(a1 + 32) capabilities];
      sub_10016FD30(buf, v21, v23, v24, [v25 hasEligibleEnrolledIdentityForPeriocularFaceIDEnrollment] & 1);
      _os_log_impl(&_mh_execute_header, oslog, v46, "PearlSplashController: extendedInit for periocular, user has completed initial run :%i, is pearl enrollenabled %i and enrollmentConfiguration is: %lu, has eligible enrolled identity :%i", buf, 0x1Eu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v26 = 0;
    if (*(a1 + 48))
    {
      v26 = 0;
      if (v61)
      {
        v26 = 0;
        if (v57)
        {
          v26 = v58;
        }
      }
    }

    v56 = v26;
    v45 = _BYLoggingFacility();
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(v68, [*(a1 + 32) enrollmentConfiguration]);
      _os_log_impl(&_mh_execute_header, v45, v44, "PearlSplashController: extendedInit, enrollmentConfiguration is: %lu", v68, 0xCu);
    }

    objc_storeStrong(&v45, 0);
  }

  if ((v56 & 1) == 0)
  {
    v43 = [NSString stringWithFormat:@"PearlSplashController extended init preflight failure \nisPasscodeSet: $&0 \nhasCachedPasscode: $&1 \npassCodeCheck: $&2 \ncameraAllowed: $&3 \nunenrolled: $&4 \n"];
    v27 = [NSNumber numberWithBool:v63 & 1];
    v67[0] = v27;
    v28 = [NSNumber numberWithBool:v62];
    v67[1] = v28;
    v29 = [NSNumber numberWithBool:v61];
    v67[2] = v29;
    v30 = [NSNumber numberWithBool:v58];
    v67[3] = v30;
    v31 = [NSNumber numberWithBool:v57 & 1];
    v67[4] = v31;
    location = [NSArray arrayWithObjects:v67 count:5];

    for (i = 0; i < [location count]; ++i)
    {
      v32 = [NSString stringWithFormat:@"$&%i", i];
      v33 = [location objectAtIndexedSubscript:i];
      if ([v33 isEqual:&off_10033D310])
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      v35 = [v43 stringByReplacingOccurrencesOfString:v32 withString:v34];
      v36 = v43;
      v43 = v35;
    }

    v40 = _BYLoggingFacility();
    v39 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      sub_10006AE18(v66, v43);
      _os_log_debug_impl(&_mh_execute_header, v40, v39, "%@", v66, 0xCu);
    }

    objc_storeStrong(&v40, 0);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v43, 0);
  }

  if (*(a1 + 40))
  {
    if (v56)
    {
      v37 = *(a1 + 40);
      v38.receiver = *(a1 + 32);
      v38.super_class = PearlSplashController;
      objc_msgSendSuper2(&v38, "performExtendedInitializationWithCompletion:", v37);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(v65, 0);
}

double sub_10016FD30(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  result = 2.0542726e-289;
  *a1 = 67109888;
  *(a1 + 4) = a2;
  *(a1 + 8) = 1024;
  *(a1 + 10) = a3;
  *(a1 + 14) = 2048;
  *(a1 + 16) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  return result;
}

BOOL sub_100170280(id a1, UIViewController *a2, NSDictionary *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  sub_100170308();
  objc_opt_class();
  LOBYTE(a3) = objc_opt_isKindOfClass();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return a3 & 1;
}

id sub_100170308()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7228;
  v13 = qword_1003A7228;
  if (!qword_1003A7228)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100170684;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100170684(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_100170684(NSAssertionHandler *a1)
{
  sub_1001707C8();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("BKUIPeriocularEnableSplashViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getBKUIPeriocularEnableSplashViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"PearlSplashController.m" lineNumber:24 description:@"Unable to find class %s", "BKUIPeriocularEnableSplashViewController"];

    __break(1u);
  }

  qword_1003A7228 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001707C8()
{
  if (!sub_1001708F0())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *BiometricKitUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"PearlSplashController.m" lineNumber:23 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001708F0()
{
  if (!qword_1003A7230)
  {
    sub_1001709A4();
  }

  return qword_1003A7230;
}

uint64_t sub_1001709A4()
{
  result = _sl_dlopen();
  qword_1003A7230 = result;
  return result;
}

void sub_100170BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100171464;
  v10 = &unk_10032B0A8;
  v11 = v15;
  dispatch_async(v5, &v6);
}

void sub_10017109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100171490;
  v10 = &unk_10032B0A8;
  v11 = v15;
  dispatch_async(v5, &v6);
}

void sub_100171764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100171784(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 48));
  if (v15[0])
  {
    [v15[0] setEnabled:0];
    v14 = [BuddyAppleIDAuthManager managerWithNavigationController:*(a1 + 32) passcodeCacheManager:*(a1 + 40)];
    v3 = 0;
    if (*(a1 + 56) == 8)
    {
      v3 = +[DMCFeatureOverrides allowAnyMAIDToSignIn]^ 1;
    }

    v13 = v3 & 1;
    v4 = location[0];
    v5 = v3 & 1;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100171918;
    v10 = &unk_10032DD58;
    v11 = v15[0];
    v12 = location[0];
    [v14 fetchAuthModeForUsername:v4 requiresAppleMAID:v5 & 1 completion:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
}

void sub_100171918(uint64_t a1, uint64_t a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) setEnabled:{1, a1}];
  if (v6 == 2)
  {
    v4 = [*(a1 + 32) handler];
    (*(v4 + 2))(v4, *(a1 + 40), 0);
  }

  else
  {
    [*(a1 + 32) setShowsPasswordAsField:1 animated:1];
  }

  objc_storeStrong(&location, 0);
}

void sub_100171C28(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v2 = +[AKURLBag sharedBag];
  v3 = 0;
  if ([v2 isPhoneNumberSupportedConfig])
  {
    v3 = *(a1 + 40) != 8;
  }

  v12 = v3;
  if (v3)
  {
    v4 = &_dispatch_main_q;
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_100171D5C;
    v9 = &unk_10032B688;
    v10 = *(a1 + 32);
    v11 = v12;
    dispatch_async(v4, &v5);

    objc_storeStrong(&v10, 0);
  }
}

void sub_100171D5C(uint64_t a1)
{
  *(*(a1 + 32) + 44) = *(a1 + 40) & 1;
  if (*(*(a1 + 32) + 44))
  {
    v1 = [*(*(a1 + 32) + 8) editableTextField];
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [(NSBundle *)v2 localizedStringForKey:@"SIGN_IN_EMAIL_OR_PHONE" value:&stru_10032F900 table:@"AppleIDAuth"];
    [v1 setPlaceholder:v3];
  }
}

void sub_100173DA0(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"ICLOUD_UPGRADE_SKIP_TITLE" value:&stru_10032F900 table:@"AppleIDAuth"];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (*(a1 + 40))
  {
    v6 = @"ICLOUD_UPGRADE_SKIP_BODY";
  }

  else
  {
    v6 = @"STORE_ACCOUNT_UPGRADE_SKIP_BODY";
  }

  v7 = [(NSBundle *)v4 localizedStringForKey:v6 value:&stru_10032F900 table:@"AppleIDAuth"];
  location[0] = [UIAlertController alertControllerWithTitle:v3 message:v7 preferredStyle:1];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = v8;
  if (*(a1 + 40))
  {
    v10 = @"DONT_SKIP_ALERT_BUTTON";
  }

  else
  {
    v10 = @"CANCEL";
  }

  v11 = [(NSBundle *)v8 localizedStringForKey:v10 value:&stru_10032F900 table:@"AppleIDAuth"];
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];
  [location[0] addAction:v12];

  v13 = location[0];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [(NSBundle *)v14 localizedStringForKey:@"SKIP_ALERT_BUTTON" value:&stru_10032F900 table:@"AppleIDAuth"];
  v18 = _NSConcreteStackBlock;
  v19 = -1073741824;
  v20 = 0;
  v21 = sub_1001740F0;
  v22 = &unk_10032B928;
  objc_copyWeak(&v23, (a1 + 32));
  v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:&v18];
  [v13 addAction:v16];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:location[0] animated:1 completion:0];

  objc_destroyWeak(&v23);
  objc_storeStrong(location, 0);
}

void sub_1001740B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9, char a10, char a11, int a12, _Unwind_Exception *exception_object)
{
  if (a11)
  {
    objc_destroyWeak(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1001740F0(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  if (v3[0] && *(v3[0] + 7))
  {
    (*(*(v3[0] + 7) + 16))();
  }

  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

void sub_1001741A0(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"ICLOUD_UPGRADE_SKIP_TITLE" value:&stru_10032F900 table:@"AppleIDAuth"];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"ICLOUD_UPGRADE_SKIP_BODY" value:&stru_10032F900 table:@"AppleIDAuth"];
  location[0] = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"DONT_SKIP_ALERT_BUTTON" value:&stru_10032F900 table:@"AppleIDAuth"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [location[0] addAction:v8];

  v9 = location[0];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [(NSBundle *)v10 localizedStringForKey:@"SKIP_ALERT_BUTTON" value:&stru_10032F900 table:@"AppleIDAuth"];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1001744C8;
  v18 = &unk_10032B928;
  objc_copyWeak(&v19, a1 + 4);
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:&v14];
  [v9 addAction:v12];

  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained presentViewController:location[0] animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_storeStrong(location, 0);
}

void sub_100174490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9, char a10, char a11, int a12, _Unwind_Exception *exception_object)
{
  if (a11)
  {
    objc_destroyWeak(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1001744C8(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  if (v3[0] && *(v3[0] + 7))
  {
    (*(*(v3[0] + 7) + 16))();
  }

  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100175024()
{
  predicate = &unk_1003A7240;
  block = 0;
  objc_storeStrong(&block, &stru_10032DE10);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return byte_1003A7238 & 1;
}

uint64_t sub_100175ABC()
{
  predicate = &unk_1003A7248;
  block = 0;
  objc_storeStrong(&block, &stru_10032DE30);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return byte_1003A7239 & 1;
}

void sub_1001768BC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) editableTextField];
  [v2 resignFirstResponder];

  v3 = [*(a1 + 32) handler];
  v4 = *(a1 + 32);
  v5 = [v4 username];
  v6 = [v4 _serverFriendlyDisplayNameForCurrentUserName:v5];
  v7 = [*(*(a1 + 32) + 16) editableTextField];
  v8 = [v7 text];
  v3[2](v3, v6, v8);
}

void sub_1001778C8(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 insertRowsAtIndexPaths:*(a1 + 40) withRowAnimation:3];

  v3 = [*(*(a1 + 32) + 16) editableTextField];
  [v3 becomeFirstResponder];
}

void sub_10017795C(uint64_t a1)
{
  v1 = [*(a1 + 32) continueButton];
  [v1 setEnabled:0];
}

void sub_1001779B4(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 layoutIfNeeded];

  v3 = [*(a1 + 32) tableView];
  [v3 deleteRowsAtIndexPaths:*(a1 + 40) withRowAnimation:*(a1 + 48)];
}

void sub_100178710(id a1)
{
  v1 = [UIDevice currentDevice:a1];
  byte_1003A7238 = [(UIDevice *)v1 userInterfaceIdiom]== UIUserInterfaceIdiomPhone;
}

void sub_100178780(id a1)
{
  v1 = [UIDevice currentDevice:a1];
  byte_1003A7239 = [(UIDevice *)v1 userInterfaceIdiom]== 1;
}

void sub_100178A54(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] _updateFillColor];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

double sub_100179D50(uint64_t a1, int a2, int a3, uint64_t a4)
{
  *&result = 67109634;
  *a1 = 67109634;
  *(a1 + 4) = a2;
  *(a1 + 8) = 1024;
  *(a1 + 10) = a3;
  *(a1 + 14) = 2114;
  *(a1 + 16) = a4;
  return result;
}

void sub_10017C644(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10017C754;
  v8 = &unk_10032B838;
  v9 = a1[4];
  v10[0] = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_10017C754(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 40) != 0, a1];
  [*(a1 + 32) setReadyForPresentation:v2];

  v3 = [*(a1 + 32) viewControllerAvailableBlock];
  if (v3)
  {
    v4 = [*(a1 + 32) viewControllerAvailableBlock];
    v5 = [*(a1 + 32) parentViewController];
    v4[2](v4, v5);

    [*(a1 + 32) setViewControllerAvailableBlock:0];
  }
}

void sub_10017CABC(uint64_t a1)
{
  v2 = [*(a1 + 32) readyForPresentation];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) parentViewController];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    [*(a1 + 32) setViewControllerAvailableBlock:*(a1 + 40)];
  }
}

id sub_10017CC68(uint64_t a1)
{
  if ([*(a1 + 32) hasAccountType])
  {
    return (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) accountType]);
  }

  else
  {
    return [*(a1 + 32) setAccountTypeSelectedBlock:*(a1 + 40)];
  }
}

id sub_10017D450(uint64_t a1)
{
  result = [*(a1 + 32) hasAccountType];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) _accountTypeSelected:{objc_msgSend(*(a1 + 40), "accountType")}];
  }

  return result;
}

id sub_10017D79C(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (([(objc_class *)a1[4].isa hasAccountType]& 1) == 0)
  {
    oslog[0] = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v2, v3, "Forcing account type selection due to loss of proximity connection", v5, 2u);
    }

    objc_storeStrong(oslog, 0);
    [(objc_class *)a1[4].isa _accountTypeSelected:2];
  }

  return [(objc_class *)a1[4].isa setDelegate:0];
}

void sub_100180404(NSObject *a1, char a2, id obj)
{
  v21 = a1;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v13 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = location;
      }

      else if (location)
      {
        v16 = [location domain];
        v15 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v16, [location code]);
        v14 = v4;
        v13 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_100071CBC(buf, v4);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v17, "Failed to determine new user disposition: %{public}@", buf, 0xCu);
      if (v13)
      {
      }

      if (v15)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = [(objc_class *)a1[4].isa setupMethod];
    v10 = 0;
    v6 = 1;
    if ([v5 intent] != 2)
    {
      v11 = [(objc_class *)a1[4].isa flowItemDispositionProvider];
      v10 = 1;
      v6 = ([v11 dispositions] & 0x20) == 32;
    }

    if (v10)
    {
    }

    v12 = v6;
    v7 = [BYSetupUserDisposition alloc];
    v9 = [v7 initWithNewUser:v20 & 1 child:v6];
    v8 = [(objc_class *)a1[4].isa buddyPreferencesExcludedFromBackup];
    [v9 persistUsingPreferences:v8];

    objc_storeStrong(&v9, 0);
  }

  if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100183464(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  v2 = [(objc_class *)a1[4].isa managedConfiguration];
  [v2 setupAssistantDidFinish];

  v3 = [(objc_class *)a1[4].isa enrollmentCoordinator];
  [v3 returnToServiceFlowCompleted];

  oslog[0] = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = oslog[0];
    v5 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v4, v5, "Configuring Login Window...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  location = [DMCMultiUserModeUtilities configureToSharedDeviceWithPreferenceDomain:kMDMNotBackedUpPreferencesDomain];
  if (location)
  {
    v11 = _BYLoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v7 = 0;
      if (_BYIsInternalInstall())
      {
        v6 = location;
      }

      else
      {
        v10 = [location domain];
        v9 = 1;
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v10, [location code]);
        v8 = v6;
        v7 = 1;
      }

      sub_100071CBC(v16, v6);
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Switch to Login Window failed: %{public}@", v16, 0xCu);
      if (v7)
      {
      }

      if (v9)
      {
      }
    }

    objc_storeStrong(&v11, 0);
    [(objc_class *)a1[4].isa _showConfigurationFailedForError:location];
  }

  objc_storeStrong(&location, 0);
}