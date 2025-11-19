void sub_10018380C(id *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v18[0] = 0;
  if (CPIsInternalDevice())
  {
    v2 = [a1[4] localizedDescription];
    v3 = [NSString stringWithFormat:@"Internal message: %@", v2];
    v4 = v18[0];
    v18[0] = v3;
  }

  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"MULTI_USER_CONFIG_FAILED" value:&stru_10032F900 table:@"Localizable"];
  location = [UIAlertController alertControllerWithTitle:v6 message:v18[0] preferredStyle:1];

  v7 = location;
  v8 = +[NSBundle mainBundle];
  v9 = [(NSBundle *)v8 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_100183A74;
  v15 = &unk_10032B598;
  v16 = a1[5];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:&v11];
  [v7 addAction:v10];

  [a1[5] presentViewController:location animated:1 completion:0];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v18, 0);
}

void sub_100183A74(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] navigationController];
  v4 = [v3 popViewControllerAnimated:1];

  objc_storeStrong(location, 0);
}

id sub_100184178()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7250;
  v13 = qword_1003A7250;
  if (!qword_1003A7250)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001854C8;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001854C8(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_10018428C(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  oslog[1] = a1;
  if (v13)
  {
    oslog[0] = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, v13);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v11, "Failed to request diagnostics view controller: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    v10 = 1;
  }

  else
  {
    sub_100184178();
    if (objc_opt_isKindOfClass())
    {
      [(objc_class *)a1[4].isa setDiagnosticsRemoteController:location[0]];
      isa = a1[4].isa;
      v6 = [(objc_class *)isa diagnosticsRemoteController];
      [v6 setDelegate:isa];

      v7 = a1[4].isa;
      v8 = [(objc_class *)v7 diagnosticsRemoteController];
      [(objc_class *)v7 presentViewController:v8 animated:1 completion:0];
    }

    else
    {
      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10006AE18(v15, location[0]);
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unexpected diagnostics view controller type: %@", v15, 0xCu);
      }

      objc_storeStrong(&v9, 0);
    }

    v10 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_100184748(id *a1)
{
  v43[2] = a1;
  v43[1] = a1;
  sub_100184B98();
  v43[0] = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.DiagnosticsSessionAvailibility"];
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DADiagnosticsSessionAvailabilityProtocol];
  [v43[0] setRemoteObjectInterface:v2];

  location = dispatch_semaphore_create(0);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100184CC0;
  v40[3] = &unk_10032B0D0;
  v41 = location;
  [v43[0] setInterruptionHandler:v40];
  v3 = v43[0];
  v34 = _NSConcreteStackBlock;
  v35 = -1073741824;
  v36 = 0;
  v37 = sub_100184D68;
  v38 = &unk_10032B0D0;
  v39 = location;
  [v3 setInvalidationHandler:&v34];
  [v43[0] resume];
  v29 = 0;
  v30 = &v29;
  v31 = 0x20000000;
  v32 = 32;
  v33 = 0;
  v4 = [v43[0] remoteObjectProxy];
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = sub_100184E10;
  v26 = &unk_10032DF18;
  v27 = v43[0];
  v28[1] = &v29;
  v28[0] = location;
  [v4 checkAvailabilityWithTicketNumber:0 response:&v22];

  v5 = location;
  v6 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v5, v6) != 0)
  {
    oslog = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v19;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v7, v8, "Timed out checking retail diagnostics availability", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v9 = +[BYPreferencesController buddyPreferencesInternal];
  v10 = [v9 BOOLForKey:@"ForceShowDiagnostics"];

  if (v10)
  {
    *(v30 + 24) = 1;
  }

  if (a1[4])
  {
    v11 = &_dispatch_main_q;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100184F2C;
    v16 = &unk_10032C2B8;
    v17[0] = a1[4];
    v17[1] = &v29;
    dispatch_async(v11, &v12);

    objc_storeStrong(v17, 0);
  }

  objc_storeStrong(v28, 0);
  objc_storeStrong(&v27, 0);
  _Block_object_dispose(&v29, 8);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v43, 0);
}

void sub_100184B98()
{
  if (!sub_10018560C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *iOSDiagnosticsLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"RetailDiagnosticsController.m" lineNumber:30 description:@"%s", 0];

    __break(1u);
  }
}

intptr_t sub_100184CC0(uint64_t a1)
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Retail Diagnostics connection interrupted", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  return dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t sub_100184D68(uint64_t a1)
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Retail Diagnostics connection invalidated", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  return dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t sub_100184E10(uint64_t a1, char a2)
{
  v7 = a1;
  v6 = a2;
  oslog[1] = a1;
  [*(a1 + 32) invalidate];
  *(*(*(a1 + 48) + 8) + 24) = v6 & 1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v3 = @"YASE";
    }

    else
    {
      v3 = @"NERP";
    }

    sub_10006AE18(buf, v3);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "RetailDiagnostics available: %@", buf, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100185330(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 flowItemDone:*(a1 + 32)];
}

void sub_1001854C8(NSAssertionHandler *a1)
{
  sub_100184B98();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("DADiagnosticsRemoteHostViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getDADiagnosticsRemoteHostViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"RetailDiagnosticsController.m" lineNumber:31 description:@"Unable to find class %s", "DADiagnosticsRemoteHostViewController"];

    __break(1u);
  }

  qword_1003A7250 = *(*(a1[4].super.isa + 1) + 24);
}

uint64_t sub_10018560C()
{
  if (!qword_1003A7258)
  {
    sub_1001856C0();
  }

  return qword_1003A7258;
}

uint64_t sub_1001856C0()
{
  result = _sl_dlopen();
  qword_1003A7258 = result;
  return result;
}

void sub_1001868D0(uint64_t a1)
{
  v23 = 0;
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 40) error];
  v4 = v3 == 0;

  if (v4)
  {
    v21 = 0;
    v19 = 0;
    v5 = 0;
    if (!*(*(a1 + 32) + 96))
    {
      v22 = [*(a1 + 40) results];
      v21 = 1;
      v20 = [v22 objectForKeyedSubscript:@"update"];
      v19 = 1;
      v5 = v20 != 0;
    }

    if (v19)
    {
    }

    if (v21)
    {
    }

    if (v5)
    {
      v6 = [*(a1 + 40) results];
      v7 = [v6 objectForKeyedSubscript:@"update"];
      v8 = [BYTestingSurrogateBehavior updateWithDictionary:v7];
      v9 = *(a1 + 32);
      v10 = *(v9 + 96);
      *(v9 + 96) = v8;

      v11 = [*(a1 + 40) results];
      v12 = [v11 objectForKeyedSubscript:@"downloadProgressIsDone"];
      *(*(a1 + 32) + 104) = [v12 BOOLValue] & 1;

      v13 = [*(a1 + 40) results];
      v14 = [v13 objectForKeyedSubscript:@"downloadProgressPhase"];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = kSUDownloadPhaseStarting;
      }

      objc_storeStrong((*(a1 + 32) + 112), v16);
    }

    v23 = *(*(a1 + 32) + 96) != 0;
  }

  objc_sync_exit(v2);

  v17 = *(a1 + 48);
  v18 = [*(a1 + 40) error];
  (*(v17 + 16))(v17, v23, v18);
}

void sub_100186E08(uint64_t a1, int a2)
{
  *(v3 - 112) = a1;
  *(v3 - 116) = a2;
  objc_sync_exit(v2);
  _Unwind_Resume(*(v3 - 112));
}

void sub_100187720(uint64_t a1)
{
  v51[2] = a1;
  v51[1] = a1;
  v2 = [*(a1 + 32) error];
  v49 = 0;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) scanResults];
    v50 = v3;
    v49 = 1;
  }

  v51[0] = v3;
  if (v49)
  {
  }

  v4 = *(a1 + 40);
  objc_sync_enter(v4);
  v5 = [v51[0] preferredDescriptor];
  v6 = *(a1 + 40);
  v7 = *(v6 + 80);
  *(v6 + 80) = v5;

  v8 = [v51[0] alternateDescriptor];
  v9 = *(a1 + 40);
  v10 = *(v9 + 88);
  *(v9 + 88) = v8;

  objc_sync_exit(v4);
  v11 = [*(a1 + 32) error];

  if (v11)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
    v39 = _NSConcreteStackBlock;
    v40 = -1073741824;
    v41 = 0;
    v42 = sub_100187C50;
    v43 = &unk_10032BB10;
    v44 = WeakRetained;
    v45 = *(a1 + 40);
    v46 = *(a1 + 32);
    v47 = objc_retainBlock(&v39);
    v12 = *(*(a1 + 40) + 40);
    v37 = 0;
    v13 = 0;
    if (v12)
    {
      v13 = 0;
      if (objc_opt_respondsToSelector())
      {
        v14 = WeakRetained;
        v15 = *(a1 + 40);
        v38 = [*(a1 + 32) error];
        v37 = 1;
        v13 = [v14 manager:v15 shouldShowAlertForScanError:?] ^ 1;
      }
    }

    if (v37)
    {
    }

    if (v13)
    {
      (*(v47 + 2))();
    }

    else
    {
      v36 = [UIAlertController alertControllerWithTitle:@"Fake Scan Failed" message:0 preferredStyle:1];
      v16 = v36;
      v30 = _NSConcreteStackBlock;
      v31 = -1073741824;
      v32 = 0;
      v33 = sub_100187CD8;
      v34 = &unk_10032C658;
      v35 = v47;
      v17 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:&v30];
      [v16 addAction:v17];

      location = objc_loadWeakRetained((*(a1 + 40) + 32));
      [location presentViewController:v36 animated:1 completion:0];
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&WeakRetained, 0);
  }

  v28 = 0;
  v18 = [*(a1 + 32) error];
  v19 = v18 == 0;

  if (v19)
  {
    v20 = [v51[0] preferredDescriptor];
    v26 = 0;
    v21 = 0;
    if (!v20)
    {
      v27 = [v51[0] alternateDescriptor];
      v26 = 1;
      v21 = v27 == 0;
    }

    if (v26)
    {
    }

    if (v21)
    {
      v22 = &off_10033D358;
    }

    else
    {
      v22 = &off_10033D370;
    }

    objc_storeStrong(&v28, v22);
  }

  [*(a1 + 40) _setStateAndCallDelegateWithOptionalState:v28 behavior:*(a1 + 32)];
  v23 = *(a1 + 48);
  v24 = v51[0];
  v25 = [*(a1 + 32) error];
  (*(v23 + 16))(v23, v24, v25);

  objc_storeStrong(&v28, 0);
  objc_storeStrong(v51, 0);
}

void sub_100187C50(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) error];
    [v2 manager:v3 scanFoundUpdates:0 error:v4];
  }
}

void sub_100187CD8(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_1001883A8(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((*(a1 + 32) + 24));
  if (location[0])
  {
    v2 = *(a1 + 32);
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100188490;
    v7 = &unk_10032DF58;
    v8 = *(a1 + 40);
    [location[0] manager:v2 promptForDevicePasscodeWithDescriptorCompletion:&v3];
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_100188490(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))(a1[4]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1001886C4(uint64_t a1)
{
  v2 = [*(a1 + 32) results];
  v3 = [v2 objectForKeyedSubscript:@"success"];

  if (v3)
  {
    v4 = [*(a1 + 32) results];
    v5 = [v4 objectForKeyedSubscript:@"success"];
    v13 = [v5 BOOLValue] & 1;
  }

  else
  {
    v6 = [*(a1 + 32) error];
    v13 = v6 == 0;
  }

  if (v13)
  {
    v7 = +[NSUUID UUID];
    v8 = *(a1 + 40);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    v10 = *(a1 + 40);
    objc_sync_enter(v10);
    objc_storeStrong((*(a1 + 40) + 56), *(a1 + 48));
    objc_storeStrong((*(a1 + 40) + 64), 0);
    *(*(a1 + 40) + 72) = 1;
    objc_storeStrong((*(a1 + 40) + 96), *(a1 + 48));
    *(*(a1 + 40) + 104) = 0;
    objc_storeStrong((*(a1 + 40) + 112), kSUDownloadPhaseStarting);
    [*(a1 + 40) _setStateAndCallDelegateWithOptionalState:&off_10033D388 behavior:*(a1 + 32)];
    objc_sync_exit(v10);

    [*(a1 + 40) _startPerformDownloadWithUpdate:*(a1 + 48) thenInstall:*(a1 + 64) & 1];
  }

  else
  {
    [*(a1 + 40) _setStateAndCallDelegateWithOptionalState:0 behavior:*(a1 + 32)];
  }

  v11 = *(a1 + 56);
  v12 = [*(a1 + 32) error];
  (*(v11 + 16))(v11, v13 & 1, v12);
}

void sub_100189028(id a1, SUScanResults *a2, NSError *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 0;
  objc_storeStrong(&v4, a3);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

void sub_100189090(id a1, BOOL a2, NSError *a3)
{
  v5 = a1;
  v4 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  objc_storeStrong(&location, 0);
}

id sub_1001890E0(uint64_t a1)
{
  v4 = *(a1 + 64) + *(a1 + 68);
  v1 = 1.0;
  if (v4 <= 1.0)
  {
    v2 = v4;
  }

  else
  {
    v2 = 1.0;
  }

  *&v2 = v2;
  LODWORD(v1) = *(a1 + 68);
  return [*(a1 + 32) _setDownloadProgress:*(a1 + 40) nextIncrement:*(a1 + 48) update:*(a1 + 56) session:*(a1 + 72) & 1 behavior:v2 thenInstall:v1];
}

void sub_100189420(uint64_t a1)
{
  location[4] = a1;
  location[3] = a1;
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = *(a1 + 40);
    objc_sync_enter(v3);
    v4 = [*(a1 + 32) error];
    v5 = *(a1 + 40);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;

    [*(a1 + 40) _updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:*(a1 + 32)];
    [*(a1 + 40) _setStateAndCallDelegateWithOptionalState:&off_10033D3A0 behavior:*(a1 + 32)];
    objc_sync_exit(v3);

    v7 = *(a1 + 56);
    v8 = [*(a1 + 32) error];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    [*(a1 + 40) _updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:*(a1 + 32)];
    location[0] = objc_loadWeakRetained((*(a1 + 40) + 24));
    v9 = [*(a1 + 32) error];
    v10 = 0;
    if (!v9)
    {
      v10 = objc_opt_respondsToSelector();
      v9 = 0;
    }

    if (v10)
    {
      [location[0] manager:*(a1 + 40) installStartedForUpdate:*(a1 + 48)];
    }

    (*(*(a1 + 56) + 16))();
    [*(a1 + 40) _setStateAndCallDelegateWithOptionalState:&off_10033D3B8 behavior:*(a1 + 32)];
    [*(a1 + 40) _performInstallWithUpdate:*(a1 + 48)];
    objc_storeStrong(location, 0);
  }
}

void sub_100189768(id *a1)
{
  location[4] = a1;
  location[3] = a1;
  v2 = [a1[4] error];

  if (v2)
  {
    v3 = a1[5];
    objc_sync_enter(v3);
    v4 = [a1[4] error];
    v5 = a1[5];
    v6 = v5[8];
    v5[8] = v4;

    [a1[5] _updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:a1[4]];
    [a1[5] _setStateAndCallDelegateWithOptionalState:0 behavior:a1[4]];
    objc_sync_exit(v3);

    location[0] = objc_loadWeakRetained(a1[5] + 3);
    if (objc_opt_respondsToSelector())
    {
      v7 = a1[5];
      v8 = [a1[4] error];
      [location[0] manager:v7 installFailedWithError:v8];
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    [a1[5] _updateClientUpdateReadyToDownloadIfNecessaryWithBehavior:a1[4]];
    [a1[5] _setStateAndCallDelegateWithOptionalState:&off_10033D3D0 behavior:a1[4]];
    v9 = [a1[4] results];
    v10 = [v9 objectForKeyedSubscript:@"clearMandatorySoftwareUpdateInfo"];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      v12 = *(a1[5] + 1);
      v13 = objc_alloc_init(BYTestingSurrogateBehavior);
      v14 = [*(a1[5] + 1) domainSoftwareUpdate];
      [v12 addBehavior:v13 withName:@"mandatorySoftwareUpdateInfo" domain:v14 count:0 replacingAllOthers:1];
    }

    v15 = [a1[4] results];
    v16 = [v15 objectForKeyedSubscript:@"clearRestoreAndMigrationSourceCompatibilityInfo"];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v18 = *(a1[5] + 1);
      v19 = objc_alloc_init(BYTestingSurrogateBehavior);
      v20 = [*(a1[5] + 1) domainSoftwareUpdate];
      [v18 addBehavior:v19 withName:@"restoreAndMigrationSourceCompatibilityInfo" domain:v20 count:0 replacingAllOthers:1];
    }

    v21 = [a1[4] results];
    v22 = [v21 objectForKeyedSubscript:@"notifyOnSuccess"];
    v23 = [v22 BOOLValue];

    if (v23)
    {
      v25 = [[OBWelcomeController alloc] initWithTitle:@"Fake Update Completed" detailText:@"A real update would reboot now. This fake update will trigger no further action on its own.\n\nYou might want to update the device manually symbolName:{or reset datamigrator & reboot.", @"restart.circle"}];
      WeakRetained = objc_loadWeakRetained(a1[5] + 4);
      [WeakRetained presentViewController:v25 animated:1 completion:0];
      objc_storeStrong(&WeakRetained, 0);
      objc_storeStrong(&v25, 0);
    }
  }
}

double sub_10018AC1C(uint64_t a1, uint64_t a2)
{
  *&result = 136446210;
  *a1 = 136446210;
  *(a1 + 4) = a2;
  return result;
}

void sub_10018C5E0(id a1, NSDictionary *a2, id a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_retainBlock(v7);
    sub_10006AE18(buf, v5);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "BuddyAppleIDSignInTask proximityAIDAHandler called, invoking completion: %@", buf, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (v7)
  {
    (*(v7 + 2))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10018CCA4(id *a1)
{
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_alloc_init(ACAccountStore);
  v18 = [[AIDAServiceOwnersManager alloc] initWithAccountStore:v19[0]];
  v17 = [a1[4] _createServiceContextWithAuthenticationResults:a1[5]];
  v2 = [v17 signInContexts];
  v16 = [v2 mutableCopy];

  location = [v16 objectForKeyedSubscript:AIDAServiceTypeStore];
  [location setCanMakeAccountActive:{objc_msgSend(a1[4], "makeStoreServiceActive") & 1}];
  v3 = [a1[4] flowControllerDelegate];
  [v3 setBackgroundDataclassEnablement:1];

  oslog = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = oslog;
    v5 = v13;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetching IDS registration state...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v7 = a1[4];
  v8 = v17;
  v9 = v18;
  v10 = a1[5];
  v11 = a1[6];
  v6 = &_dispatch_main_q;
  IDSRegistrationControlGetStateForRegistrationType();

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
}

void sub_10018CF80(uint64_t a1, uint64_t a2, id obj)
{
  v42 = a1;
  v41 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v39 = a1;
  v38 = v41 != 1;
  if (v41 == 1)
  {
    oslog = _BYLoggingFacility();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = oslog;
      v10 = v24;
      sub_10006AA68(v23);
      _os_log_impl(&_mh_execute_header, v9, v10, "IDS registration is disabled; not signing in iMessage or FaceTime...", v23, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v43[0] = AIDAServiceTypeCloud;
    v43[1] = AIDAServiceTypeStore;
    v43[2] = AIDAServiceTypeGameCenter;
    v22 = [NSArray arrayWithObjects:v43 count:3];
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_10018D410;
    v17 = &unk_10032E070;
    v18 = *(a1 + 56);
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    [v11 signInToServices:v22 usingContext:v12 completion:&v13];
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v37 = _BYLoggingFacility();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v37;
      v5 = v36;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "IDS registration is enabled; continuing to sign in all services...", buf, 2u);
    }

    objc_storeStrong(&v37, 0);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v26 = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = sub_10018D358;
    v30 = &unk_10032E048;
    v31 = *(a1 + 56);
    v32 = *(a1 + 32);
    v33 = *(a1 + 48);
    v34 = *(a1 + 64);
    [v6 _signInToAllServicesUsingContext:v7 serviceOwnersManager:v8 completion:&v26];
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_10018D358(uint64_t a1, char a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = a1;
  if (v7)
  {
    v4 = +[BFFAppleAccountInfo primaryAccountInfo];
    [v4 updateWithAuthenticationResults:*(a1 + 32)];
  }

  [*(a1 + 40) _updateAgreedTerms:{*(a1 + 48), v5}];
  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_10018D410(uint64_t a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v8[1] = a1;
  if (v10)
  {
    v4 = +[BFFAppleAccountInfo primaryAccountInfo];
    [v4 updateWithAuthenticationResults:*(a1 + 32)];
  }

  [*(a1 + 40) _updateAgreedTerms:*(a1 + 48)];
  if (*(a1 + 56))
  {
    v8[0] = [location objectForKeyedSubscript:AIDAServiceTypeCloud];
    v5 = *(a1 + 56);
    v6 = [v8[0] success];
    v7 = [v8[0] error];
    (*(v5 + 16))(v5, v6 & 1, v7);

    objc_storeStrong(v8, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_10018D6A0(uint64_t a1)
{
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = objc_alloc_init(ACAccountStore);
  v16 = [[AIDAServiceOwnersManager alloc] initWithAccountStore:v17[0]];
  v15 = [*(a1 + 32) _createServiceContextWithAuthenticationResults:*(a1 + 40)];
  v2 = [v15 signInContexts];
  location = [v2 objectForKeyedSubscript:AIDAServiceTypeStore];

  [location setCanMakeAccountActive:{objc_msgSend(*(a1 + 32), "makeStoreServiceActive") & 1}];
  LOBYTE(v2) = [*(a1 + 32) skipDataclassEnablement];
  v3 = [*(a1 + 32) flowControllerDelegate];
  [v3 setSkipDataclassEnablement:v2 & 1];

  v4 = *(a1 + 48);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10018D8DC;
  v9 = &unk_10032E070;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v16;
  v13 = *(a1 + 56);
  [v16 signInToServices:v4 usingContext:v15 completion:&v5];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
}

void sub_10018D8DC(uint64_t a1, char a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = a1;
  if (v7)
  {
    v4 = +[BFFAppleAccountInfo primaryAccountInfo];
    [v4 updateWithAuthenticationResults:*(a1 + 32)];
  }

  [*(a1 + 40) _updateAgreedTerms:{*(a1 + 48), v5}];
  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_10018E818(void *a1, char a2, id obj)
{
  v10 = a1;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v7[1] = a1;
  v7[0] = [location objectForKeyedSubscript:AIDAServiceTypeCloud];
  v4 = a1[4];
  v5 = [v7[0] success];
  v6 = [v7[0] error];
  (*(v4 + 16))(v4, v5 & 1, v6);

  objc_storeStrong(v7, 0);
  objc_storeStrong(&location, 0);
}

id sub_10018F69C(uint64_t a1)
{
  v2 = [*(a1 + 32) lockscreenController];

  if (v2)
  {
    v3 = [*(a1 + 32) lockscreenController];
    [v3 deviceMigrationManager:*(a1 + 40) didChangeConnectionInformation:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 32) setManager:*(a1 + 40)];
    [*(a1 + 32) setConnectionInfo:*(a1 + 48)];
  }

  if ([*(a1 + 48) connectionType] == 1)
  {
    v4 = [*(a1 + 32) headerView];
    v5 = +[NSBundle mainBundle];
    v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROGRESS_DETAIL_WIRED"];
  }

  else
  {
    v4 = [*(a1 + 32) headerView];
    v5 = +[NSBundle mainBundle];
    v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROGRESS_DETAIL_WIRELESS"];
  }

  v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Migration"];
  [v4 setDetailText:v7];

  return [*(a1 + 32) setDeviceConnectionInformation:*(a1 + 48)];
}

void sub_10018F8D0(id *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v2 = [a1[4] connectionState];
  if (v2 != [a1[5] connectionState])
  {
    v3 = [a1[5] disconnectionQueue];
    dispatch_suspend(v3);

    [a1[5] setConnectionState:{objc_msgSend(a1[4], "connectionState")}];
    v4 = &_dispatch_main_q;
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_10018FA20;
    v9 = &unk_10032B838;
    v10 = a1[5];
    v11[0] = a1[4];
    dispatch_sync(v4, &v5);

    objc_storeStrong(v11, 0);
    objc_storeStrong(&v10, 0);
  }
}

void sub_10018FA20(id *a1)
{
  v34[2] = a1;
  v34[1] = a1;
  v2 = [a1[4] presentedViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];

  v3 = [a1[5] connectionState];
  if (!v3)
  {
    goto LABEL_8;
  }

  if (v3 != 1)
  {
    if (v3 != 2)
    {
      return;
    }

LABEL_8:
    v10 = [BuddyMigrationDisconnectController alloc];
    v11 = [a1[5] connectionType];
    v12 = [a1[4] featureFlags];
    v13 = [a1[4] deviceProvider];
    v23 = _NSConcreteStackBlock;
    v24 = -1073741824;
    v25 = 0;
    v26 = sub_10018FDF0;
    v27 = &unk_10032B0D0;
    v28 = a1[4];
    v14 = [(BuddyMigrationDisconnectController *)v10 initWithConnectionType:v11 featureFlags:v12 deviceProvider:v13 cancel:&v23];
    [a1[4] setDisconnectController:v14];

    v15 = [a1[4] navigationController];
    v16 = [a1[4] disconnectController];
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_10018FE24;
    v21 = &unk_10032B0D0;
    v22 = a1[4];
    [v15 pushViewController:v16 completion:&v17];

    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v28, 0);
    return;
  }

  v4 = [a1[4] navigationController];
  v5 = [v4 topViewController];
  v6 = [a1[4] disconnectController];

  if (v5 == v6)
  {
    [a1[4] setDisconnectController:0];
    v7 = [a1[4] navigationController];
    v8 = a1[4];
    v29 = _NSConcreteStackBlock;
    v30 = -1073741824;
    v31 = 0;
    v32 = sub_10018FDA0;
    v33 = &unk_10032B0D0;
    v34[0] = a1[4];
    [v7 popToViewController:v8 completion:&v29];

    objc_storeStrong(v34, 0);
  }

  else
  {
    v9 = [a1[4] disconnectionQueue];
    dispatch_resume(v9);
  }
}

void sub_10018FDA0(uint64_t a1)
{
  v1 = [*(a1 + 32) disconnectionQueue];
  dispatch_resume(v1);
}

void sub_10018FE24(uint64_t a1)
{
  v1 = [*(a1 + 32) disconnectionQueue];
  dispatch_resume(v1);
}

void sub_1001910D0(uint64_t a1)
{
  v31 = a1;
  v30 = a1;
  v2 = +[BuddyActivationConfiguration currentConfiguration];
  v3 = [v2 isActivated];

  v29 = v3 & 1;
  v26 = 0;
  v4 = 1;
  if ((v3 & 1) == 0)
  {
    v4 = 1;
    if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
    {
      v27 = +[BYSetupStateManager sharedManager];
      v26 = 1;
      v4 = [v27 didRestoreFromBackup];
    }
  }

  if (v26)
  {
  }

  v28 = v4 & 1;
  if (v4)
  {
    oslog = _BYLoggingFacility();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v24;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Device is considered having been set up; not starting inactivity timer...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v7 = +[NSDate date];
    location = [NSDate dateWithTimeInterval:v7 sinceDate:43200.0];

    v8 = +[BYPreferencesController buddyPreferencesInternal];
    LOBYTE(v7) = [v8 BOOLForKey:@"TestInactivityShutdown"];

    if (v7)
    {
      v9 = +[NSDate date];
      v10 = [NSDate dateWithTimeInterval:v9 sinceDate:30.0];
      v11 = location;
      location = v10;
    }

    v21 = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sub_100071CBC(v32, location);
      _os_log_impl(&_mh_execute_header, v21, v20, "Starting inactivity timer to fire at %{public}@...", v32, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    v12 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_100191468;
    v17 = &unk_10032B838;
    v18 = *(a1 + 32);
    v19 = location;
    dispatch_async(v12, &block);

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&location, 0);
  }
}

void sub_100191468(uint64_t a1)
{
  v2 = [[PCPersistentTimer alloc] initWithFireDate:*(a1 + 40) serviceIdentifier:@"com.apple.purplebuddy.inactivitytimer" target:*(a1 + 32) selector:"_timerFired:" userInfo:{0, a1, a1}];
  [*(a1 + 32) setTimer:v2];

  v3 = [*(a1 + 32) timer];
  [v3 setMinimumEarlyFireProportion:1.0];

  v4 = [*(a1 + 32) timer];
  v5 = +[NSRunLoop mainRunLoop];
  [v4 scheduleInRunLoop:v5];
}

void sub_1001916DC(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  oslog[1] = a1;
  if (v20)
  {
    oslog[0] = _BYLoggingFacility();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, v20);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v18, "Failed to retrieve activation lock information: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    v17 = 1;
  }

  else
  {
    if ([location[0] isActivationLocked])
    {
      v16 = _BYLoggingFacility();
      v15 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v16;
        v6 = v15;
        sub_10006AA68(v14);
        _os_log_impl(&_mh_execute_header, v5, v6, "Device is activation locked; not shutting down device", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
    }

    else
    {
      v13 = _BYLoggingFacility();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v13;
        v8 = v12;
        sub_10006AA68(v11);
        _os_log_impl(&_mh_execute_header, v7, v8, "Shutting down device...", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      [(objc_class *)a1[4].isa _removePowerLog];
      [(objc_class *)a1[4].isa _enableShelfLifeMode];
      v9 = +[FBSSystemService sharedService];
      v10 = [[FBSShutdownOptions alloc] initWithReason:@"Setup Assistant Inactivity"];
      [v9 shutdownWithOptions:v10];
    }

    v17 = 0;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void sub_100192320(uint64_t a1, char a2)
{
  v30 = a1;
  v29 = a2;
  v28 = a1;
  v27 = [*(a1 + 32) isAbleToBackupBeforeRestore] & 1;
  if (v27)
  {
    v3 = [*(a1 + 32) backupDeviceController];
    v4 = [*(a1 + 32) deviceName];
    v5 = [*(a1 + 32) backupItem];
    v6 = [v5 backup];
    v7 = [v6 backupUUID];
    [v3 startBackupDevice:v4 UUID:v7];
  }

  v8 = [*(a1 + 32) backupItem];
  v9 = [v8 backup];
  v10 = [*(a1 + 32) backupItem];
  v11 = [v10 snapshot];
  v26 = [RestorableBackupItem restorableBackupItemWithBackup:v9 snapshot:v11];

  v12 = [*(a1 + 32) pendingRestoreState];
  [v12 setBackupItem:v26 updateBackupMetadata:(v27 ^ 1) & 1 prefetchAccounts:1];

  v13 = [*(a1 + 32) pendingRestoreState];
  [v13 setAllowCellularNetwork:v29 & 1];

  if (v27)
  {
    v14 = [*(a1 + 32) proximitySetupController];
    location = [v14 backupMetadata];

    oslog = _BYLoggingFacility();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location);
      _os_log_impl(&_mh_execute_header, oslog, v23, "Using metadata from source device, rather than backup: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v15 = location;
    v16 = [*(a1 + 32) existingSettings];
    [v16 setBackupMetadata:v15];

    v17 = [*(a1 + 32) pendingRestoreState];
    [v17 setForceSoftwareUpdateRestore:{objc_msgSend(*(a1 + 32), "forceSoftwareUpdateRequiredForNewBackup") & 1}];

    objc_storeStrong(&location, 0);
  }

  v18 = [*(a1 + 32) buddyPreferences];
  [v18 setObject:&__kCFBooleanTrue forKey:@"RestoreChoice"];

  if (v27)
  {
    v19 = [*(a1 + 32) expressRestoreAnalytics];
    [v19 setRestoreChoice:1];
  }

  else
  {
    v19 = [*(a1 + 32) expressRestoreAnalytics];
    [v19 setRestoreChoice:2];
  }

  v20 = v27;
  v21 = [*(a1 + 32) expressRestoreAnalytics];
  [v21 setOfferedBackup:v20 & 1];

  v22.receiver = *(a1 + 32);
  v22.super_class = BuddyExpressRestoreController;
  objc_msgSendSuper2(&v22, "continueTapped");
  objc_storeStrong(&v26, 0);
}

void sub_10019289C(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_100192A00(id a1, BYExpressSetupDataProvider *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setWillRestoreOrMigrate:1];
  [location[0] setWillRestoreOrReallyMigrate:1];
  objc_storeStrong(location, 0);
}

void sub_100192A68(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_100192C64(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [*(a1 + 32) backupItem];
  v3 = [v2 backupUDID];
  v4 = [*(a1 + 32) backupItem];
  [v4 snapshotID];
  location[0] = BYMetadataFromBackup();

  if (location[0])
  {
    v5 = [BYExpressSetupBackupSource alloc];
    v6 = [*(a1 + 32) backupItem];
    v7 = [(BYExpressSetupBackupSource *)v5 initWithBackupItem:v6 backupMetadata:location[0]];

    (*(*(a1 + 40) + 16))();
    objc_storeStrong(&v7, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_1001931D8(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_100193338(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = a1[4];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100193414;
  v7 = &unk_10032E178;
  v8 = a1[4];
  v9[0] = a1[5];
  [v2 _suggestedBackupToRestore:&v3];
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_100193414(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v39 = 0;
  objc_storeStrong(&v39, a3);
  v38[1] = a1;
  if (location[0])
  {
    v38[0] = _BYLoggingFacility();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_100078180(buf, v39, location[0]);
      _os_log_impl(&_mh_execute_header, v38[0], v37, "Express restore flow chose restorable item for device name %@: %@", buf, 0x16u);
    }

    objc_storeStrong(v38, 0);
  }

  else
  {
    v36 = _BYLoggingFacility();
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v36;
      v6 = v35;
      sub_10006AA68(v34);
      _os_log_impl(&_mh_execute_header, v5, v6, "Express restore flow didn't find any usable restorables", v34, 2u);
    }

    objc_storeStrong(&v36, 0);
  }

  [a1[4] setDeviceName:v39];
  [a1[4] setBackupItem:location[0]];
  v33 = 0;
  [a1[4] setAbleToBackupBeforeRestore:{objc_msgSend(a1[4], "_ableToBackupBeforeRestore:softwareUpdateRequired:", location[0], &v33) & 1}];
  v31 = 0;
  v7 = 1;
  if ((v33 & 1) == 0)
  {
    v32 = +[BYPreferencesController buddyPreferencesInternal];
    v31 = 1;
    v7 = [v32 BOOLForKey:@"RequireSoftwareUpdateForGuideUserToBackup"];
  }

  [a1[4] setForceSoftwareUpdateRequiredForNewBackup:v7 & 1];
  if (v31)
  {
  }

  v8 = [a1[4] proximitySetupController];
  v9 = 0;
  if ([v8 hasConnection])
  {
    v9 = 0;
    if (([a1[4] isAbleToBackupBeforeRestore] & 1) == 0)
    {
      v9 = [a1[4] shouldTerminateProximityConnection];
    }
  }

  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v26 = -1073741824;
    v27 = 0;
    v28 = sub_1001938A4;
    v29 = &unk_10032B0D0;
    v30 = a1[4];
    dispatch_async(v10, &block);

    objc_storeStrong(&v30, 0);
  }

  v11 = [BYAnalyticsExpressRestore alloc];
  v12 = [a1[4] analyticsManager];
  v13 = [v11 initWithAnalyticsManager:v12];
  [a1[4] setExpressRestoreAnalytics:v13];

  if (location[0])
  {
    v15 = a1[4];
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_1001938F4;
    v21 = &unk_10032B020;
    v22 = a1[4];
    v23 = a1[5];
    v16.receiver = v15;
    v16.super_class = BuddyExpressRestoreController;
    objc_msgSendSuper2(&v16, "performExtendedInitializationWithCompletion:", &v17);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    v24 = 0;
  }

  else
  {
    v14 = [a1[4] expressRestoreAnalytics];
    [v14 setPaneShown:0];

    if (a1[5])
    {
      (*(a1[5] + 2))();
    }

    v24 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

void sub_1001938A4(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_1001938F4(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) expressRestoreAnalytics];
  [v4 setPaneShown:a2 & 1];

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100194234(NSObject *a1, char a2)
{
  v9 = a1;
  v8 = a2;
  oslog[1] = a1;
  if ((a2 & 1) == 0)
  {
    oslog[0] = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v3, v4, "Backup chosen is not compatible!", v5, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[6].isa)
  {
    (*(a1[6].isa + 2))();
  }
}

void sub_100194550(NSObject *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  oslog[1] = a1;
  if (v28)
  {
    oslog[0] = _BYLoggingFacility();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v24 = 0;
      v22 = 0;
      if (_BYIsInternalInstall())
      {
        v9 = v28;
      }

      else if (v28)
      {
        v25 = [v28 domain];
        v24 = 1;
        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v25, [v28 code]);
        v23 = v9;
        v22 = 1;
      }

      else
      {
        v9 = 0;
      }

      sub_100071CBC(buf, v9);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v26, "Failed to scan for software updates: %{public}@", buf, 0xCu);
      if (v22)
      {
      }

      if (v24)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  v10 = [(objc_class *)a1[4].isa betaEnrollmentStateManager];
  isa = a1[5].isa;
  v11 = [NSArray arrayWithObjects:&isa count:1];
  v12 = [v29 productVersion];
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_1001948D4;
  v17 = &unk_10032D150;
  v18 = a1[5].isa;
  v19 = v29;
  v20 = a1[4].isa;
  v21 = a1[6].isa;
  [v10 loadSeedEnrollmentStateForRestorables:v11 incompatibleWithUpdateVersion:v12 completion:&v13];

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1001948D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) productVersion];
  v5 = 0;
  if (([v2 isCompatibleWithUpdateToSystemVersion:v3] & 1) == 0)
  {
    v6 = [*(a1 + 48) betaEnrollmentStateManager];
    v5 = 1;
    [v6 isRestorableSeedEnrolled:*(a1 + 32)];
  }

  if (v5)
  {
  }

  return (*(*(a1 + 56) + 16))();
}

id sub_100195EC4()
{
  if (!qword_1003A7260)
  {
    v11 = MGCopyAnswer();
    location = v11;

    v10 = MGCopyAnswer();
    v7 = v10;

    v9 = MGCopyAnswer();
    v6 = v9;

    if (![location length])
    {
      objc_storeStrong(&location, @"1.0");
    }

    if (![v7 length])
    {
      objc_storeStrong(&v7, @"1A001a");
    }

    if (![v6 length])
    {
      objc_storeStrong(&v6, &stru_10032F900);
    }

    v0 = [NSString stringWithFormat:@"iOS %@ %@ %@ Setup Assistant", location, v7, v6];
    v1 = [(NSString *)v0 copy];
    v2 = qword_1003A7260;
    qword_1003A7260 = v1;

    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, qword_1003A7260);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Setup Assistant User-Agent = %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&location, 0);
  }

  v3 = qword_1003A7260;

  return v3;
}

BOOL sub_100196140()
{
  v0 = +[NSLocale preferredLanguages];
  v1 = [(NSArray *)v0 objectAtIndex:0];
  v2 = [NSLocale characterDirectionForLanguage:v1];

  return v2 == NSLocaleLanguageDirectionRightToLeft;
}

id sub_1001961E0(id obj, void *a2)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v8 = 0;
  objc_storeStrong(&v8, a2);
  v3 = [NSAttributedString alloc];
  v4 = location;
  v10 = kCTLanguageAttributeName;
  v11 = v8;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v6 = [v3 initWithString:v4 attributes:v5];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);

  return v6;
}

void sub_100196A94(uint64_t a1)
{
  v17 = a1;
  v16 = a1;
  v2 = [*(a1 + 32) migrationController];
  v3 = [*(a1 + 32) existingSettings];
  v4 = [v3 backupMetadata];
  v5 = [v4 nanoRegistryData];
  v6 = [v2 shouldBeDisplayedGivenMigrationData:v5];

  v15 = v6 & 1;
  v7 = &_dispatch_main_q;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100196C08;
  v12 = &unk_10032E1C8;
  v13 = *(a1 + 40);
  v14 = v6 & 1;
  dispatch_async(v7, &v8);

  objc_storeStrong(&v13, 0);
}

uint64_t sub_100196C08(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))(*(result + 32), *(result + 40) & 1);
  }

  return result;
}

void sub_100199FDC(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = objc_opt_class();
  v4 = [a1[4] settingsManager];
  [v3 setSettingEnabled:0 presented:1 settingsManager:v4];

  v5 = [a1[4] paneFeatureAnalyticsManager];
  [v5 recordActionWithValue:&__kCFBooleanFalse forFeature:6];

  v6 = [a1[4] delegate];
  [v6 flowItemDone:a1[4]];

  objc_storeStrong(location, 0);
}

id sub_10019CA70(uint64_t a1)
{
  result = [*(a1 + 32) hasVoiceProfileIniCloud];
  *(*(*(a1 + 40) + 8) + 24) = result & 1;
  return result;
}

id sub_10019CAB8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7268;
  v13 = qword_1003A7268;
  if (!qword_1003A7268)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A13F4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001A13F4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

double sub_10019CBCC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  *&result = 67110658;
  *a1 = 67110658;
  *(a1 + 4) = a2;
  *(a1 + 8) = 1024;
  *(a1 + 10) = a3;
  *(a1 + 14) = 1024;
  *(a1 + 16) = a4;
  *(a1 + 20) = 1024;
  *(a1 + 22) = a5;
  *(a1 + 26) = 1024;
  *(a1 + 28) = a6;
  *(a1 + 32) = 2112;
  *(a1 + 34) = a7;
  *(a1 + 42) = 1024;
  *(a1 + 44) = a8;
  return result;
}

void sub_10019D728(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v13 = [*(a1 + 32) _fetchSiriVoiceProfileAvailability] & 1;
  v12 = [*(a1 + 32) _fetchSiriWantsToRun] & 1;
  v2 = [*(a1 + 32) siriStateCacheQueue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10019D868;
  v8 = &unk_10032C7B8;
  v10 = v13 & 1;
  v11 = v12 & 1;
  v9 = *(a1 + 32);
  dispatch_sync(v2, &v4);

  if (*(a1 + 40))
  {
    v3 = &_dispatch_main_q;
    dispatch_async(v3, *(a1 + 40));
  }

  objc_storeStrong(&v9, 0);
}

id sub_10019D868(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(buf, *(a1 + 40) & 1, *(a1 + 41) & 1);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Express Data Provider caching hasVoiceProfileInCloud %d siriWantsToRun %d", buf, 0xEu);
  }

  objc_storeStrong(oslog, 0);
  [*(a1 + 32) setHasVoiceProfileIniCloud:*(a1 + 40) & 1];
  return [*(a1 + 32) setSiriWantsToRun:*(a1 + 41) & 1];
}

id sub_10019FB28()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7278;
  v13 = qword_1003A7278;
  if (!qword_1003A7278)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A17A8;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001A17A8(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_10019FC3C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7288;
  v13 = qword_1003A7288;
  if (!qword_1003A7288)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A1B5C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001A1B5C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

double sub_10019FD50(uint64_t a1, uint64_t a2)
{
  *&result = 134349056;
  *a1 = 134349056;
  *(a1 + 4) = a2;
  return result;
}

void sub_10019FD64(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v6 = 0;
      v4 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v7 = [location[0] domain];
        v6 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v7, [location[0] code]);
        v5 = v3;
        v4 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to set Siri data sharing opt-in: %{public}@", buf, 0xCu);
      if (v4)
      {
      }

      if (v6)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(location, 0);
}

id sub_1001A0648(uint64_t a1)
{
  result = [*(a1 + 32) siriWantsToRun];
  *(*(*(a1 + 40) + 8) + 24) = result & 1;
  return result;
}

void sub_1001A13F4(NSAssertionHandler *a1)
{
  sub_1001A1538();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("AFPreferences");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BYExpressSetupDataProvider.m" lineNumber:63 description:@"Unable to find class %s", "AFPreferences"];

    __break(1u);
  }

  qword_1003A7268 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001A1538()
{
  if (!sub_1001A1660())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BYExpressSetupDataProvider.m" lineNumber:62 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001A1660()
{
  if (!qword_1003A7270)
  {
    sub_1001A1714();
  }

  return qword_1003A7270;
}

uint64_t sub_1001A1714()
{
  result = _sl_dlopen();
  qword_1003A7270 = result;
  return result;
}

void sub_1001A17A8(NSAssertionHandler *a1)
{
  sub_1001A18EC();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("SSRVoiceProfileManager");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getSSRVoiceProfileManagerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BYExpressSetupDataProvider.m" lineNumber:77 description:@"Unable to find class %s", "SSRVoiceProfileManager"];

    __break(1u);
  }

  qword_1003A7278 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001A18EC()
{
  if (!sub_1001A1A14())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SpeakerRecognitionLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BYExpressSetupDataProvider.m" lineNumber:76 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001A1A14()
{
  if (!qword_1003A7280)
  {
    sub_1001A1AC8();
  }

  return qword_1003A7280;
}

uint64_t sub_1001A1AC8()
{
  result = _sl_dlopen();
  qword_1003A7280 = result;
  return result;
}

void sub_1001A1B5C(NSAssertionHandler *a1)
{
  sub_1001A1538();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("AFSettingsConnection");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getAFSettingsConnectionClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BYExpressSetupDataProvider.m" lineNumber:65 description:@"Unable to find class %s", "AFSettingsConnection"];

    __break(1u);
  }

  qword_1003A7288 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001A2F24(NSObject *a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  oslog[1] = a1;
  if (a2)
  {
    *(a1[4].isa + 1) = 3;
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, v10);
      _os_log_impl(&_mh_execute_header, oslog[0], v8, "SetupAssistant Error setting time: %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    *(a1[4].isa + 1) = 2;
    v7 = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v7;
      v3 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v2, v3, "SetupAssistant System Time update complete.", v5, 2u);
    }

    objc_storeStrong(&v7, 0);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v4 postNotificationName:@"BuddySystemTimeUpdateFinishedNotification" object:0];
}

void sub_1001A30B4(id a1, __CFError *a2)
{
  v4 = a1;
  v3 = a2;
  oslog[1] = a1;
  if (a2)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, v3);
      _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "SetupAssistant Error setting time zone: %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }
}

uint64_t sub_1001A354C(uint64_t result, char a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1001A36D8(id a1, NSError *a2)
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

void sub_1001A3B74(uint64_t a1)
{
  v2 = [*(a1 + 32) miscState];
  v3 = [v2 migrationManager];
  [v3 setIgnoreProximityDisconnections:1];

  v4 = [*(a1 + 32) proximitySetupController];
  [v4 showMigrationInterfaceOnSource];

  v5 = [*(a1 + 32) miscState];
  v6 = [v5 migrationManager];
  [v6 startDataTransfer];

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001A3E44(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_1001A3FB4;
  v7 = &unk_10032BB10;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  location[0] = objc_retainBlock(&v4);
  v2 = [a1[6] presentedViewController];

  if (v2)
  {
    v3 = [a1[6] presentedViewController];
    [v3 dismissViewControllerAnimated:1 completion:location[0]];
  }

  else
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_1001A3FB4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [[BuddyMigrationTargetErrorController alloc] initWithError:*(a1 + 32)];
  [location[0] setForceErase:{objc_msgSend(*(a1 + 40), "hasTransferredData") & 1}];
  v2 = [*(a1 + 48) delegate];
  [v2 flowItemDone:*(a1 + 48) nextItem:location[0]];

  objc_storeStrong(location, 0);
}

void sub_1001A4654(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v4 = [WeakRetained presentWiFiSettings];
  v4[2](v4);

  objc_storeStrong(location, 0);
}

void sub_1001A4C68(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v4 = [WeakRetained presentWiFiSettings];
  v4[2](v4);

  objc_storeStrong(location, 0);
}

void sub_1001A4CF0(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v4 = [WeakRetained restoreOverCellular];
  v4[2](v4);

  objc_storeStrong(location, 0);
}

id sub_1001A5354()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7290;
  v13 = qword_1003A7290;
  if (!qword_1003A7290)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A5468;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001A5468(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001A5468(NSAssertionHandler *a1)
{
  sub_1001A55AC();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("SOSUtilities");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getSOSUtilitiesClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyEmergencyExecutor.m" lineNumber:16 description:@"Unable to find class %s", "SOSUtilities"];

    __break(1u);
  }

  qword_1003A7290 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001A55AC()
{
  if (!sub_1001A56D4())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SOSLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyEmergencyExecutor.m" lineNumber:15 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001A56D4()
{
  if (!qword_1003A7298)
  {
    sub_1001A5788();
  }

  return qword_1003A7298;
}

uint64_t sub_1001A5788()
{
  result = _sl_dlopen();
  qword_1003A7298 = result;
  return result;
}

void sub_1001A5B68(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;
}

void sub_1001A5E70(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_1001A6BA4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
    v2 = [BuddyActivationConfiguration currentConfiguration:a1];
    (*(v1 + 16))(v1, ([v2 isActivated] ^ 1) & 1);
  }
}

void sub_1001A6D3C(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v2 = *(a1 + 40);
  v12 = 0;
  v10 = 0;
  v3 = 0;
  if (v2)
  {
    v3 = 0;
    if (([*(a1 + 32) didActivate] & 1) == 0)
    {
      v3 = 0;
      if (*(a1 + 41))
      {
        v13 = [*(a1 + 32) navigationController];
        v12 = 1;
        v11 = [v13 topViewController];
        v10 = 1;
        v3 = v11 == *(a1 + 32);
      }
    }
  }

  if (v10)
  {
  }

  if (v12)
  {
  }

  if (v3)
  {
    oslog = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      location = NSStringFromClass(v4);
      sub_10006AE18(buf, location);
      _os_log_impl(&_mh_execute_header, oslog, v8, "Activation state changed while on %@", buf, 0xCu);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v5 = +[BuddyActivationConfiguration currentConfiguration];
    [v5 removeDelegate:*(a1 + 32)];

    [*(a1 + 32) setDidActivate:1];
    v6 = [*(a1 + 32) delegate];
    [v6 flowItemDone:*(a1 + 32)];
  }
}

id sub_1001A7260()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A72A0;
  v13 = qword_1003A72A0;
  if (!qword_1003A72A0)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A7A0C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001A7A0C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001A7584(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, BYSetupAssistantDidCompleteSIMSetupNotification, 0, 0, 1u);
  }

  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001A7604(id *a1, char a2)
{
  v11 = a1;
  v10 = a2;
  v9[1] = a1;
  if (a2)
  {
    v3 = [a1[4] setupFlow];
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_1001A7704;
    v8 = &unk_10032DB78;
    v9[0] = a1[5];
    [v3 firstViewController:&v4];

    objc_storeStrong(v9, 0);
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void sub_1001A7704(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))(a1[4], location[0] != 0);
  objc_storeStrong(location, 0);
}

void sub_1001A7A0C(NSAssertionHandler *a1)
{
  sub_1001A7B50();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("TSSetupAssistantSIMSetupFlow");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getTSSetupAssistantSIMSetupFlowClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddySIMController.m" lineNumber:26 description:@"Unable to find class %s", "TSSetupAssistantSIMSetupFlow"];

    __break(1u);
  }

  qword_1003A72A0 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001A7B50()
{
  if (!sub_1001A7C78())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SIMSetupSupportLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySIMController.m" lineNumber:25 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001A7C78()
{
  if (!qword_1003A72A8)
  {
    sub_1001A7D2C();
  }

  return qword_1003A72A8;
}

uint64_t sub_1001A7D2C()
{
  result = _sl_dlopen();
  qword_1003A72A8 = result;
  return result;
}

id sub_1001A9050()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A72B0;
  v13 = qword_1003A72B0;
  if (!qword_1003A72B0)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A96F8;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001A96F8(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001A9354(uint64_t a1, char a2)
{
  v6 = a1;
  v5 = a2;
  v4 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupCompleted:{v5 & 1, WeakRetained, v4}];
  objc_storeStrong(&v3, 0);
}

void sub_1001A96F8(NSAssertionHandler *a1)
{
  sub_1001A983C();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("MSDWelcomeViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getMSDWelcomeViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyDemoController.m" lineNumber:24 description:@"Unable to find class %s", "MSDWelcomeViewController"];

    __break(1u);
  }

  qword_1003A72B0 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001A983C()
{
  if (!sub_1001A9964())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *MobileStoreDemoSetupUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyDemoController.m" lineNumber:23 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001A9964()
{
  if (!qword_1003A72B8)
  {
    sub_1001A9A18();
  }

  return qword_1003A72B8;
}

uint64_t sub_1001A9A18()
{
  result = _sl_dlopen();
  qword_1003A72B8 = result;
  return result;
}

void sub_1001AA818(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[1] = a1;
  v11[0] = [a1[4] managedConfiguration];
  v3 = location[0];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001AA93C;
  v8 = &unk_10032E340;
  v9 = a1[4];
  v10 = a1[5];
  [v11[0] createMDMUnlockTokenIfNeededWithPasscode:v3 completionBlock:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

void sub_1001AA93C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0;
      v4 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v7 = [location[0] domain];
        v6 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v7, [location[0] code]);
        v5 = v3;
        v4 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Failed to create unlock escrow with error: %{public}@", buf, 0xCu);
      if (v4)
      {
      }

      if (v6)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  [(objc_class *)a1[4].isa _tryToInstallStoredProfileShouldCreateEscrowIfNeeded:0 completion:a1[5].isa];
  objc_storeStrong(location, 0);
}

void sub_1001AAB08(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [[BuddyPasscodeEntryController alloc] initWithNibName:0 bundle:0];
  [location[0] setDelegate:a1[4]];
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"CLOUD_CONFIG_PASSCODE_TITLE" value:&stru_10032F900 table:@"Localizable"];
  [location[0] setTitleText:v3];

  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"CLOUD_CONFIG_PASSCODE_INSTRUCTIONS" value:&stru_10032F900 table:@"Localizable"];
  [location[0] setInstructions:v5];

  v6 = [location[0] navigationItem];
  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:a1[4] action:"_cancelDevicePasscodePicker:"];
  [v6 setLeftBarButtonItem:v7];

  v11 = [[UINavigationController alloc] initWithRootViewController:location[0]];
  v8 = +[BFFStyle sharedStyle];
  [v8 applyThemeToNavigationController:v11];

  [a1[4] presentViewController:v11 animated:1 completion:0];
  v9 = a1[4];
  v10 = [v11 presentationController];
  [v10 setDelegate:v9];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_1001AAF98(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001AB0FC;
  v8 = &unk_10032E390;
  v9 = location[0];
  v13 = *(a1 + 56) & 1;
  v10 = *(a1 + 32);
  v12 = *(a1 + 48);
  v11 = *(a1 + 40);
  dispatch_async(v3, &v4);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1001AB0FC(uint64_t a1)
{
  v8 = 1;
  if (*(a1 + 32))
  {
    if (*(a1 + 64) & 1) != 0 && ([*(a1 + 40) _isEscrowMissingError:*(a1 + 32)])
    {
      v8 = 0;
      [*(a1 + 40) _createUnlockEscrowAndRetryProfileInstallationWithCompletion:*(a1 + 56)];
    }

    else
    {
      v2 = [*(a1 + 32) localizedRecoverySuggestion];
      v3 = [v2 length];

      if (v3)
      {
        v4 = [*(a1 + 32) localizedDescription];
        v5 = [*(a1 + 32) localizedRecoverySuggestion];
        v6 = [NSString localizedStringWithFormat:@"%@\n%@", v4, v5];
        [*(a1 + 40) setLastErrorDescription:v6];
      }

      else
      {
        v7 = [*(a1 + 32) localizedDescription];
        [*(a1 + 40) setLastErrorDescription:v7];
      }
    }
  }

  else
  {
    [*(a1 + 48) storeProfileData:0];
    [*(a1 + 40) setLastErrorDescription:0];
  }

  if (v8)
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1001AB8FC(uint64_t a1)
{
  v26 = a1;
  v25 = a1;
  v2 = +[MDMClient sharedClient];
  [v2 monitorDEPPushTokenIfNeededWithCompletion:&stru_10032E3D8];

  v3 = [*(a1 + 32) isAwaitingDeviceConfigured];
  v23 = 0;
  v4 = 0;
  if (v3)
  {
    v24 = [*(a1 + 40) lastErrorDescription];
    v23 = 1;
    v4 = v24 == 0;
  }

  if (v23)
  {
  }

  if (v4)
  {
    objc_initWeak(&location, *(a1 + 40));
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1001ABCE4;
    v20 = &unk_10032AF58;
    objc_copyWeak(&v21, &location);
    [*(a1 + 40) setDeviceConfiguredCompletionBlock:&v16];
    [*(a1 + 40) setState:4];
    [*(a1 + 40) _setupForState];
    v5 = *(a1 + 40);
    v14 = 0;
    v6 = 0;
    if ([v5 cloudConfigurationChangedDuringInstallation])
    {
      v15 = [*(a1 + 40) deviceConfiguredCompletionBlock];
      v14 = 1;
      v6 = v15 != 0;
    }

    if (v14)
    {
    }

    if (v6)
    {
      oslog = _BYLoggingFacility();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = oslog;
        v8 = v12;
        sub_10006AA68(v11);
        _os_log_impl(&_mh_execute_header, v7, v8, "Cloud configuration changed during installation; jumping straight to completion...", v11, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v9 = [*(a1 + 40) deviceConfiguredCompletionBlock];
      v9[2](v9);

      [*(a1 + 40) setDeviceConfiguredCompletionBlock:0];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 40) setState:5];
    [*(a1 + 40) _setupForState];
  }

  v10 = [*(a1 + 40) view];
  [v10 setNeedsLayout];
}

void sub_1001ABBF4(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "monitorDEPPushTokenIfNeededWithCompletion failed with error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_1001ABCE4(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Device configuration completed!", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  location = objc_loadWeakRetained(&a1[4].isa);
  [location setState:5];
  [location _setupForState];
  objc_storeStrong(&location, 0);
}

void sub_1001ABE98(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  v2 = [(objc_class *)a1[4].isa managedConfiguration];
  v3 = [v2 isAwaitingDeviceConfigured];

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v22;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Cloud configuration changed, but we are still waiting for device to be configured. So ignore this change.", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v6 = [(objc_class *)a1[4].isa state];
    v19 = 0;
    v7 = 0;
    if (v6 == 4)
    {
      v20 = [(objc_class *)a1[4].isa deviceConfiguredCompletionBlock];
      v19 = 1;
      v7 = v20 != 0;
    }

    if (v19)
    {
    }

    if (v7)
    {
      v18 = _BYLoggingFacility();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v18;
        v9 = v17;
        sub_10006AA68(v16);
        _os_log_impl(&_mh_execute_header, v8, v9, "Cloud configuration installed!", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
      v10 = [(objc_class *)a1[4].isa deviceConfiguredCompletionBlock];
      v10[2](v10);

      [(objc_class *)a1[4].isa setDeviceConfiguredCompletionBlock:0];
    }

    else if ([(objc_class *)a1[4].isa state]== 3)
    {
      v15 = _BYLoggingFacility();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v15;
        v12 = v14;
        sub_10006AA68(v13);
        _os_log_impl(&_mh_execute_header, v11, v12, "Cloud configuration did change during installation; taking note...", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
      [(objc_class *)a1[4].isa setCloudConfigurationChangedDuringInstallation:1];
    }
  }
}

id sub_1001ACC08()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A72C0;
  v13 = qword_1003A72C0;
  if (!qword_1003A72C0)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001B2218;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001B2218(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001AD42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(v12);
  objc_destroyWeak((v13 - 64));
  _Unwind_Resume(a1);
}

void sub_1001AD44C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 48));
  v10 = [location[0] latestUpdate];
  if (v11[0])
  {
    oslog = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(v11[0] + 1) publicCheckpointLogDetails];
      sub_1001AD694(buf, v5, v12, v10);
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s: Software Update Buddy Checkpoint -%{public}@\n\nerror: %{public}@, SUScanResults: %@", buf, 0x2Au);
    }

    objc_storeStrong(&oslog, 0);
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v10 humanReadableUpdateName];
      sub_10007F718(v14, v6, v10);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using latest update %{public}@ (%p)", v14, 0x16u);
    }

    objc_storeStrong(&v7, 0);
    [*(a1 + 32) setUpdate:v10];
    [*(a1 + 32) setScannedForUpdate:1];
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

double sub_1001AD694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 136315906;
  *a1 = 136315906;
  *(a1 + 4) = "[BuddySoftwareUpdateController scanForUpdateCompletion:]_block_invoke";
  *(a1 + 12) = 2114;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2114;
  *(a1 + 24) = a3;
  *(a1 + 32) = 2112;
  *(a1 + 34) = a4;
  return result;
}

double sub_1001ADB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 136315650;
  *a1 = 136315650;
  *(a1 + 4) = "[BuddySoftwareUpdateController didBecomeActive:]";
  *(a1 + 12) = 2114;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2112;
  *(a1 + 24) = a3;
  return result;
}

void sub_1001ADDC4(id *a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained(a1 + 5);
  if (v6[0])
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(v6[0] + 1) publicCheckpointLogDetails];
      sub_1001ADF54(buf, "[BuddySoftwareUpdateController beginDownloadingUpdate]_block_invoke", v4, v8 & 1, location);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\nsuccessfullyStarted: %d, error: %@", buf, 0x26u);
    }

    objc_storeStrong(&oslog, 0);
    [*(v6[0] + 3) hidesBusyIndicator];
    if ((v8 & 1) == 0)
    {
      [a1[4] _allButtonsSetEnabled:1];
    }
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(&location, 0);
}

double sub_1001ADF54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *&result = 136315906;
  *a1 = 136315906;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2114;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 2112;
  *(a1 + 30) = a5;
  return result;
}

void sub_1001AE318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001AE348(id *a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v8[1] = a1;
  v8[0] = objc_loadWeakRetained(a1 + 4);
  if (v8[0])
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(v8[0] + 1) publicCheckpointLogDetails];
      sub_1001ADF54(buf, "[BuddySoftwareUpdateController installTonightPressed]_block_invoke", v4, v10 & 1, location);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\nsuccessfullyStarted: %d, error: %@", buf, 0x26u);
    }

    objc_storeStrong(&oslog, 0);
    if (v10)
    {
      v5 = [v8[0] delegate];
      WeakRetained = objc_loadWeakRetained(a1 + 4);
      [v5 flowItemDone:WeakRetained];
    }

    else
    {
      [v8[0] _installFailedWithError:location];
    }
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(&location, 0);
}

void sub_1001AE8FC(id *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v1 = *(a1[4] + 1);
  v2 = _NSConcreteStackBlock;
  v3 = -1073741824;
  v4 = 0;
  v5 = sub_1001AE9C0;
  v6 = &unk_10032BAE8;
  v7[0] = a1[4];
  [v1 startInstallWithHandler:&v2];
  objc_storeStrong(v7, 0);
}

void sub_1001AE9C0(NSObject *a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100143424(buf, "[BuddySoftwareUpdateController installNowPressed]_block_invoke_2", v6 & 1, location);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Started install = %d, error = %@", buf, 0x1Cu);
  }

  objc_storeStrong(oslog, 0);
  if ((v6 & 1) == 0)
  {
    [(objc_class *)a1[4].isa _installFailedWithError:location];
  }

  objc_storeStrong(&location, 0);
}

double sub_1001AEFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 136315650;
  *a1 = 136315650;
  *(a1 + 4) = "[BuddySoftwareUpdateController _installFailedWithError:]";
  *(a1 + 12) = 2114;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2114;
  *(a1 + 24) = a3;
  return result;
}

void sub_1001AF138(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))(a1[4], location[0] != 0);
  objc_storeStrong(location, 0);
}

void sub_1001AF6D0(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained(a1 + 4);
  if (v10[0])
  {
    v9 = [[BuddyPasscodeEntryController alloc] initWithNibName:0 bundle:0];
    [v9 setDelegate:v10[0]];
    v1 = +[NSBundle mainBundle];
    v2 = [(NSBundle *)v1 localizedStringForKey:@"PASSCODE_TITLE" value:&stru_10032F900 table:@"SoftwareUpdate"];
    [v9 setTitleText:v2];

    v3 = +[NSBundle mainBundle];
    v4 = [(NSBundle *)v3 localizedStringForKey:@"PASSCODE_INSTRUCTIONS" value:&stru_10032F900 table:@"SoftwareUpdate"];
    [v9 setInstructions:v4];

    v5 = [v9 navigationItem];
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v10[0] action:"_cancelDevicePasscodePicker:"];
    [v5 setLeftBarButtonItem:v6];

    location = [[UINavigationController alloc] initWithRootViewController:v9];
    v7 = +[BFFStyle sharedStyle];
    [v7 applyThemeToNavigationController:location];

    [v10[0] presentViewController:location animated:1 completion:0];
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(v10, 0);
}

double sub_1001AFC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&result = 136316674;
  *a1 = 136316674;
  *(a1 + 4) = "[BuddySoftwareUpdateController manager:didTransitionToState:fromState:]";
  *(a1 + 12) = 2114;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2114;
  *(a1 + 24) = a3;
  *(a1 + 32) = 2048;
  *(a1 + 34) = a4;
  *(a1 + 42) = 2114;
  *(a1 + 44) = a5;
  *(a1 + 52) = 2048;
  *(a1 + 54) = a6;
  *(a1 + 62) = 2112;
  *(a1 + 64) = a7;
  return result;
}

void sub_1001AFCBC(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  if (location[0])
  {
    v2 = *(location[0] + 3);
    v3 = +[NSBundle mainBundle];
    v4 = [(NSBundle *)v3 localizedStringForKey:@"DOWNLOAD_AND_INSTALL" value:&stru_10032F900 table:@"SoftwareUpdate"];
    [v2 setTitle:v4 forState:0];

    v5 = [location[0] buttonTray];
    [v5 setCaptionText:&stru_10032F900];

    [*(a1 + 32) resetButtonState:*(location[0] + 3) andEventHandlers:1];
    if (*(location[0] + 4))
    {
      [*(a1 + 32) resetButtonState:*(location[0] + 4) andEventHandlers:1];
    }

    if (*(location[0] + 5))
    {
      [*(a1 + 32) resetButtonState:*(location[0] + 5) andEventHandlers:0];
    }

    if (*(a1 + 40))
    {
      v48 = [*(location[0] + 1) enableUpdateButtonForError:*(a1 + 40)] & 1;
      [*(location[0] + 3) setEnabled:v48];
      [*(location[0] + 4) setEnabled:v48 & 1];
      v6 = [location[0] buttonTray];
      v7 = [*(location[0] + 1) humanReadableDescriptionForError:*(a1 + 40)];
      [v6 setCaptionText:v7];
    }

    v8 = [location[0] update];

    if (v8)
    {
      v9 = *(location[0] + 2);
      v10 = [location[0] update];
      v11 = [v10 publisher];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = @"Apple, Inc.";
      }

      [v9 setPublisherText:v13];

      v14 = *(location[0] + 2);
      v15 = *(location[0] + 1);
      v16 = [location[0] update];
      v17 = [v15 prettyNameForUpdate:v16];
      [v14 setUpdateName:v17];

      v18 = [location[0] update];
      v19 = [v18 documentation];
      v46 = 0;
      v44 = 0;
      v42 = 0;
      v20 = 0;
      if (v19)
      {
        v47 = [location[0] update];
        v46 = 1;
        v45 = [v47 documentation];
        v44 = 1;
        v43 = [v45 releaseNotesSummary];
        v42 = 1;
        v20 = v43 != 0;
      }

      if (v42)
      {
      }

      if (v44)
      {
      }

      if (v46)
      {
      }

      if (v20)
      {
        v21 = *(location[0] + 2);
        v22 = [location[0] update];
        v23 = [v22 documentation];
        v24 = [v23 releaseNotesSummary];
        [v21 setReleaseNotesSummary:v24];
      }

      if ([*(location[0] + 1) state] != 12)
      {
        v25 = *(location[0] + 2);
        v26 = [location[0] update];
        v27 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v26 downloadSize], 2);
        [v25 setStatusMessage:v27 symbolizingError:0];
      }

      [*(location[0] + 2) setAnimatingGearView:{objc_msgSend(*(location[0] + 1), "state") == 12}];
    }

    v28 = *(a1 + 56);
    if (v28 != 3)
    {
      if (v28 == 5)
      {
        [*(location[0] + 2) setProgressDisplayStyle:0];
        [*(location[0] + 3) setEnabled:0];
        [*(location[0] + 4) setEnabled:0];
      }

      else if (v28 == 6 || (v28 - 8) < 2)
      {
        [*(location[0] + 2) setProgressDisplayStyle:0];
        v29 = *(location[0] + 3);
        v30 = +[NSBundle mainBundle];
        v31 = [(NSBundle *)v30 localizedStringForKey:@"DOWNLOAD_AND_INSTALL" value:&stru_10032F900 table:@"SoftwareUpdate"];
        [v29 setTitle:v31 forState:0];

        [*(location[0] + 3) addTarget:location[0] action:"downloadAndInstallPressed" forControlEvents:64];
        v32 = *(location[0] + 4);
        v33 = +[NSBundle mainBundle];
        v34 = [(NSBundle *)v33 localizedStringForKey:@"DOWNLOAD_AND_INSTALL_TONIGHT" value:&stru_10032F900 table:@"SoftwareUpdate"];
        [v32 setTitle:v34 forState:0];

        [*(location[0] + 4) addTarget:location[0] action:"downloadAndInstallTonightPressed" forControlEvents:64];
      }

      else
      {
        switch(v28)
        {
          case 10:
            [*(location[0] + 2) setProgressDisplayStyle:0];
            v35 = *(location[0] + 3);
            v36 = +[NSBundle mainBundle];
            v37 = [(NSBundle *)v36 localizedStringForKey:@"INSTALL_NOW" value:&stru_10032F900 table:@"SoftwareUpdate"];
            [v35 setTitle:v37 forState:0];

            v38 = *(location[0] + 4);
            v39 = +[NSBundle mainBundle];
            v40 = [(NSBundle *)v39 localizedStringForKey:@"INSTALL_TONIGHT" value:&stru_10032F900 table:@"SoftwareUpdate"];
            [v38 setTitle:v40 forState:0];

            [*(location[0] + 3) addTarget:location[0] action:"installNowPressed" forControlEvents:64];
            [*(location[0] + 4) addTarget:location[0] action:"installTonightPressed" forControlEvents:64];
            break;
          case 12:
            [*(location[0] + 3) setHidden:1];
            [*(location[0] + 4) setHidden:1];
            break;
          case 14:
            [*(location[0] + 3) addTarget:location[0] action:"resumePressed" forControlEvents:64];
            [*(location[0] + 3) setHidden:{(objc_msgSend(*(location[0] + 1), "readyToResume") ^ 1) & 1}];
            [*(location[0] + 4) setHidden:1];
            break;
          case 15:
            [location[0] _allButtonsSetEnabled:0];
            [*(location[0] + 3) setHidden:1];
            [*(location[0] + 4) setHidden:1];
            [*(location[0] + 5) setHidden:1];
            [*(location[0] + 2) setProgressDisplayStyle:0];
            break;
        }
      }
    }

    v41 = [location[0] tableView];
    [v41 reloadData];
  }

  objc_storeStrong(location, 0);
}

void sub_1001B0990(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    oslog = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *&v2 = *(a1 + 48);
      v8 = [*(a1 + 32) humanReadableUpdateName];
      sub_1001B0BA4(buf, v2, v8);
      _os_log_impl(&_mh_execute_header, oslog, v9, "%{public}s: Progress %f for download: %@", buf, 0x20u);

      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&oslog, 0);
    LODWORD(v3) = *(a1 + 48);
    [*(location[0] + 2) setProgress:v3];
    v4 = *(location[0] + 2);
    v5 = [*(location[0] + 1) progressString];
    [v4 setStatusMessage:v5 symbolizingError:0];

    [*(location[0] + 2) setProgressDisplayStyle:*(a1 + 52)];
    v6 = location[0];
    v7 = [*(location[0] + 1) actionString];
    [v6 setButtonTitle:v7];
  }

  objc_storeStrong(location, 0);
}

double sub_1001B0BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 136446722;
  *a1 = 136446722;
  *(a1 + 4) = "[BuddySoftwareUpdateController manager:downloadDescriptor:progressChangedToNormalizedPercentComplete:displayStyle:]_block_invoke";
  *(a1 + 12) = 2048;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2112;
  *(a1 + 24) = a3;
  return result;
}

void sub_1001B0CF8(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    if (*(location[0] + 7))
    {
      v3 = [location[0] navigationController];
      v4 = [v3 topViewController];

      if (v4 == location[0])
      {
        v9 = _BYLoggingFacility();
        v8 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v5 = [*(*(a1 + 32) + 8) publicCheckpointLogDetails];
          sub_10011D3F8(v14, "[BuddySoftwareUpdateController managerDownloadFinished:]_block_invoke", v5);
          _os_log_impl(&_mh_execute_header, v9, v8, "%s: Software Update Buddy Checkpoint -%{public}@\n\nUpdate finished downloading attempting to install...", v14, 0x16u);
        }

        objc_storeStrong(&v9, 0);
        if (*(location[0] + 7) == 1)
        {
          [location[0] installNowPressed];
        }

        else
        {
          [location[0] installTonightPressed];
        }
      }

      else
      {
        v7 = _BYLoggingFacility();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [*(*(a1 + 32) + 8) publicCheckpointLogDetails];
          sub_10011D3F8(v13, "[BuddySoftwareUpdateController managerDownloadFinished:]_block_invoke", v6);
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Software Update Buddy Checkpoint -%{public}@\n\nUpdate finished downloading, but waiting for user to initiate install (not frontmost)", v13, 0x16u);
        }

        objc_storeStrong(&v7, 0);
      }
    }

    else
    {
      oslog = _BYLoggingFacility();
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v2 = [*(*(a1 + 32) + 8) publicCheckpointLogDetails];
        sub_10011D3F8(buf, "[BuddySoftwareUpdateController managerDownloadFinished:]_block_invoke", v2);
        _os_log_impl(&_mh_execute_header, oslog, v10, "%s: Software Update Buddy Checkpoint -%{public}@\n\nUpdate finished downloading, but waiting for user to initiate install", buf, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  objc_storeStrong(location, 0);
}

void sub_1001B11E4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    [location[0] _installFailedWithError:*(a1 + 32)];
  }

  objc_storeStrong(location, 0);
}

id sub_1001B19AC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A72D0;
  v13 = qword_1003A72D0;
  if (!qword_1003A72D0)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001B25CC;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001B25CC(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001B2218(NSAssertionHandler *a1)
{
  sub_1001B235C();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("SUSSoftwareUpdateTitleCell");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getSUSSoftwareUpdateTitleCellClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddySoftwareUpdateController.m" lineNumber:32 description:@"Unable to find class %s", "SUSSoftwareUpdateTitleCell"];

    __break(1u);
  }

  qword_1003A72C0 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001B235C()
{
  if (!sub_1001B2484())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SoftwareUpdateSettingsLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySoftwareUpdateController.m" lineNumber:31 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001B2484()
{
  if (!qword_1003A72C8)
  {
    sub_1001B2538();
  }

  return qword_1003A72C8;
}

uint64_t sub_1001B2538()
{
  result = _sl_dlopen();
  qword_1003A72C8 = result;
  return result;
}

void sub_1001B25CC(NSAssertionHandler *a1)
{
  sub_1001B235C();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("SUSSoftwareUpdateReleaseNotesDetail");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getSUSSoftwareUpdateReleaseNotesDetailClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddySoftwareUpdateController.m" lineNumber:35 description:@"Unable to find class %s", "SUSSoftwareUpdateReleaseNotesDetail"];

    __break(1u);
  }

  qword_1003A72D0 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001B5420(id a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v4[0] = objc_alloc_init(NSMutableParagraphStyle);
  [v4[0] setLineBreakMode:4];
  [v4[0] setAlignment:1];
  [v4[0] setLineSpacing:0.0];
  location = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  v5[0] = NSFontAttributeName;
  v6[0] = location;
  v5[1] = NSParagraphStyleAttributeName;
  v6[1] = v4[0];
  v1 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v2 = qword_1003A72E8;
  qword_1003A72E8 = v1;

  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
}

void sub_1001B55F0(id a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v4[0] = objc_alloc_init(NSMutableParagraphStyle);
  [v4[0] setLineBreakMode:4];
  [v4[0] setAlignment:1];
  v5[0] = NSFontAttributeName;
  v1 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v6[0] = v1;
  v5[1] = NSParagraphStyleAttributeName;
  v6[1] = v4[0];
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = qword_1003A72F8;
  qword_1003A72F8 = v2;

  objc_storeStrong(v4, 0);
}

BOOL sub_1001B6D24(double a1, double a2, double a3, double a4)
{
  v4 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v4;
}

void sub_1001B7F28(uint64_t a1)
{
  v2 = [*(a1 + 32) miscState];
  [v2 setUserSkippedWiFi:1];

  v3 = [*(a1 + 32) miscState];
  [v3 setUserSelectedCellularActivation:0];

  v4 = [*(a1 + 32) delegate];
  [v4 flowItemDone:*(a1 + 32)];
}

void sub_1001B7FD4(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

void sub_1001B8428(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = a1;
  [*(a1 + 32) setPreflightInformation:location[0]];
  v5 = *(a1 + 40);
  v6.receiver = *(a1 + 32);
  v6.super_class = BuddyMigrationStoreRenewController;
  objc_msgSendSuper2(&v6, "performExtendedInitializationWithCompletion:", v5);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1001B8BE8(NSObject *a1, uint64_t a2, id obj)
{
  v25 = a1;
  *(&location + 1) = a2;
  *&location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location == 0)
  {
    oslog[0] = _BYLoggingFacility();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v22;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Renew credentials was successful!", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    [(objc_class *)a1[4].isa setRenewSucceeded:1];
  }

  else
  {
    v20 = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v6 = DWORD2(location);
      v17 = 0;
      v15 = 0;
      if (_BYIsInternalInstall())
      {
        v7 = location;
      }

      else if (location)
      {
        v18 = [location domain];
        v17 = 1;
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v18, [location code]);
        v16 = v7;
        v15 = 1;
      }

      else
      {
        v7 = 0;
      }

      sub_10008D1D4(v26, v6, v7);
      _os_log_impl(&_mh_execute_header, v20, v19, "Renew credentials failed (%d): %{public}@", v26, 0x12u);
      if (v15)
      {
      }

      if (v17)
      {
      }
    }

    objc_storeStrong(&v20, 0);
  }

  v8 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1001B8EE0;
  v13 = &unk_10032B0D0;
  v14 = a1[4].isa;
  dispatch_async(v8, &block);

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
}

void sub_1001B8EE0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 flowItemDone:*(a1 + 32)];
}

void sub_1001BA0D8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  *(a1 + 40) = 0;
  objc_storeStrong((a1 + 40), v2);

  objc_storeStrong(v3, 0);
}

void sub_1001BA128(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    v4 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingString:@" Dark"];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_1001BA5C4(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v1 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001BA6C0;
    v6 = &unk_10032B0D0;
    v7 = location[0];
    dispatch_async(v1, &block);

    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_1001BA6C0(uint64_t a1)
{
  [*(a1 + 32) _updateAnalyticsWithChoice:{@"cloud", a1, a1}];
  v2 = [*(a1 + 32) miscState];
  v3 = [v2 migrationManager];
  [v3 cancelWithCause:3];
}

void sub_1001BA744(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v1 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001BA840;
    v6 = &unk_10032B0D0;
    v7 = location[0];
    dispatch_async(v1, &block);

    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_1001BA840(uint64_t a1)
{
  [*(a1 + 32) _updateAnalyticsWithChoice:{@"migration", a1, a1}];
  v2 = [*(a1 + 32) startDeviceMigrationBlock];
  v2[2](v2);
}

void sub_1001BABE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(v12);
  objc_destroyWeak((v13 - 48));
  _Unwind_Resume(a1);
}

void sub_1001BAC18(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v1 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001BAD14;
    v6 = &unk_10032B0D0;
    v7 = location[0];
    dispatch_async(v1, &block);

    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

id sub_1001BAD14(uint64_t a1)
{
  v2 = [*(a1 + 32) miscState];
  v3 = [v2 migrationManager];
  [v3 cancelWithCause:3];

  v4 = [*(a1 + 32) proximitySetupController];
  [v4 setSkipExpressRestore:1];

  return [*(a1 + 32) _updateAnalyticsWithChoice:@"other"];
}

void sub_1001BB758(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v53 = 0;
  objc_storeStrong(&v53, a3);
  v52 = 0;
  objc_storeStrong(&v52, a4);
  v51 = a1;
  if (v52)
  {
    (*(a1[5] + 2))();
    v50 = 1;
  }

  else
  {
    v49 = objc_alloc_init(SASProximityAnisetteDataProvider);
    v7 = [a1[4] proximitySession];
    [v49 setSession:v7];

    v8 = [BuddyAppleIDSignInTask alloc];
    v9 = [a1[4] featureFlags];
    v10 = +[BuddyAccountTools sharedBuddyAccountTools];
    v11 = [(BuddyAppleIDSignInTask *)v8 initWithFeatureFlags:v9 accountTools:v10];
    [a1[4] setSignInTask:v11];

    v12 = [a1[4] navigationController];
    v13 = [a1[4] signInTask];
    [v13 setNavigationController:v12];

    LOBYTE(v12) = [a1[4] ignoreLockAssertErrors];
    v14 = [a1[4] signInTask];
    [v14 setIgnoreLockAssertErrors:v12 & 1];

    LOBYTE(v12) = [a1[4] restoreFromBackupMode];
    v15 = [a1[4] signInTask];
    [v15 setRestoreFromBackupMode:v12 & 1];

    LOBYTE(v12) = [a1[4] makeStoreServiceActive];
    v16 = [a1[4] signInTask];
    [v16 setMakeStoreServiceActive:v12 & 1];

    v17 = [a1[4] featureFlags];
    LOBYTE(v16) = [v17 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

    if (v16)
    {
      oslog = _BYLoggingFacility();
      v47 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [a1[4] cacheManager];
        v19 = [a1[4] signInTask];
        sub_10011A49C(buf, "[BuddyProximityAppleIDSignInTask authenticateThenSignInWithCompletion:]_block_invoke", v18, v19);
        _os_log_impl(&_mh_execute_header, oslog, v47, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      v20 = [a1[4] cacheManager];
      v21 = [a1[4] signInTask];
      [v21 setCacheManager:v20];
    }

    v22 = [a1[4] signInTask];
    [v22 setEnableFindMy:0];

    v23 = +[AKAccountManager sharedInstance];
    v24 = [(AKAccountManager *)v23 securityLevelForAccount:location[0]];

    if (v24 != 2)
    {
      v25 = [a1[4] messageSession];
      v26 = [a1[4] signInTask];
      [v26 setMessageSession:v25];
    }

    v46 = _BYLoggingFacility();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v46;
      v28 = v45;
      sub_10006AA68(v44);
      _os_log_impl(&_mh_execute_header, v27, v28, "Beginning authentication for iCloud account...", v44, 2u);
    }

    objc_storeStrong(&v46, 0);
    v29 = [BYAnalyticsEventAppleIDSignIn alloc];
    v30 = [a1[4] analyticsManager];
    v43 = [v29 initWithAnalyticsManager:v30 context:0];

    v31 = a1[4];
    v32 = [location[0] username];
    v33 = v53;
    v34 = v49;
    v35 = _NSConcreteStackBlock;
    v36 = -1073741824;
    v37 = 0;
    v38 = sub_1001BBD74;
    v39 = &unk_10032E598;
    v42 = a1[5];
    v40 = v43;
    v41 = a1[4];
    [v31 _authenticateWithUsername:v32 companionDevice:v33 anisetteDataProvider:v34 completion:&v35];

    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v49, 0);
    v50 = 0;
  }

  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
}

void sub_1001BBD74(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v33 = 0;
  objc_storeStrong(&v33, a3);
  v32[1] = a1;
  if (v33)
  {
    v32[0] = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v32[0], OS_LOG_TYPE_ERROR))
    {
      v29 = 0;
      v27 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v33;
      }

      else if (v33)
      {
        v30 = [v33 domain];
        v29 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v30, [v33 code]);
        v28 = v5;
        v27 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, v32[0], v31, "Authentication failed: %{public}@", buf, 0xCu);
      if (v27)
      {
      }

      if (v29)
      {
      }
    }

    objc_storeStrong(v32, 0);
    (*(a1[6] + 2))();
    v26 = 1;
  }

  else
  {
    [a1[4] markSignInStartedAfterAuthenticationCompleted];
    oslog = _BYLoggingFacility();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v24;
      sub_10006AA68(v23);
      _os_log_impl(&_mh_execute_header, v6, v7, "Authentication succeeded!", v23, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v22 = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v22;
      v9 = v21;
      sub_10006AA68(v20);
      _os_log_impl(&_mh_execute_header, v8, v9, "Beginning sign-in for iCloud account...", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    v10 = [a1[5] signInTask];
    v11 = location[0];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1001BC13C;
    v16 = &unk_10032E570;
    v17 = a1[4];
    v18 = location[0];
    v19 = a1[6];
    [v10 signInToAllServicesWithAuthenticationResults:v11 completion:&v12];

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    v26 = 0;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

void sub_1001BC13C(NSObject *a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v17)
  {
    oslog[0] = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v14;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Sign-in succeeded!", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    [(objc_class *)a1[4].isa markSignInCompleted];
    v6 = +[BFFAppleAccountInfo primaryAccountInfo];
    [v6 updateWithAuthenticationResults:a1[5].isa];
  }

  else
  {
    v12 = _BYLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v8 = 0;
      if (_BYIsInternalInstall())
      {
        v7 = location;
      }

      else if (location)
      {
        v11 = [location domain];
        v10 = 1;
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v11, [location code]);
        v9 = v7;
        v8 = 1;
      }

      else
      {
        v7 = 0;
      }

      sub_100071CBC(v19, v7);
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Sign-in failed: %{public}@", v19, 0xCu);
      if (v8)
      {
      }

      if (v10)
      {
      }
    }

    objc_storeStrong(&v12, 0);
  }

  (*(a1[6].isa + 2))();
  objc_storeStrong(&location, 0);
}

void sub_1001BC6F0(NSObject *a1, char a2, id obj)
{
  v15 = a1;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v14 & 1) == 0)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v8 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = location;
      }

      else if (location)
      {
        v11 = [location domain];
        v10 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v11, [location code]);
        v9 = v4;
        v8 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_100071CBC(buf, v4);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to save account: %{public}@", buf, 0xCu);
      if (v8)
      {
      }

      if (v10)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  isa = a1[6].isa;
  v6 = a1[4].isa;
  v7 = [(objc_class *)a1[5].isa companionDevice];
  (*(isa + 2))(isa, v6, v7, location);

  objc_storeStrong(&location, 0);
}

void sub_1001BCAF4(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v5 = [v7 domain];
  v6 = 0;
  if ([v5 isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    v6 = [v7 code] == -7006;
  }

  if (v6)
  {
    [*(a1 + 32) _authenticateWithUsername:*(a1 + 40) companionDevice:*(a1 + 48) anisetteDataProvider:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

id sub_1001BE664()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7308;
  v13 = qword_1003A7308;
  if (!qword_1003A7308)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001BEB00;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001BEB00(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001BE778(NSObject *a1, char a2, id obj)
{
  v25 = a1;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v24 & 1;
    v19 = 0;
    v17 = 0;
    if (_BYIsInternalInstall())
    {
      v5 = location;
    }

    else if (location)
    {
      v20 = [location domain];
      v19 = 1;
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v20, [location code]);
      v18 = v5;
      v17 = 1;
    }

    else
    {
      v5 = 0;
    }

    sub_10008D1D4(buf, v4, v5);
    _os_log_impl(&_mh_execute_header, oslog[0], v21, "Did check whether to present safety settings with result %d error %{public}@", buf, 0x12u);
    if (v17)
    {
    }

    if (v19)
    {
    }
  }

  objc_storeStrong(oslog, 0);
  v6 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001BEA54;
  v11 = &unk_10032BBB0;
  v16 = v24 & 1;
  v12 = a1[4].isa;
  v13 = a1[5].isa;
  v14 = a1[6].isa;
  v15 = a1[7].isa;
  dispatch_async(v6, &block);

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

void sub_1001BEA54(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = 0;
  if (*(a1 + 64))
  {
    v2 = objc_alloc_init(BuddySafetySettingsPresenterSession);
    v3 = location[0];
    location[0] = v2;

    [location[0] setDelegate:*(a1 + 32)];
    [location[0] setPresenter:*(a1 + 40)];
    [location[0] setContext:*(a1 + 48)];
    [*(a1 + 40) setDelegate:location[0]];
  }

  (*(*(a1 + 56) + 16))();
  objc_storeStrong(location, 0);
}

Class sub_1001BEB00(uint64_t a1)
{
  sub_1001BEB6C();
  result = objc_getClass("AISSafetySettingsFlowPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A7308 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001BEB6C()
{
  if (!qword_1003A7310)
  {
    return sub_1001BEC1C();
  }

  return result;
}

uint64_t sub_1001BEC1C()
{
  result = _sl_dlopen();
  qword_1003A7310 = result;
  return result;
}

void sub_1001BF640(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to get secure app assertion: %@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_1001BF8E4(id *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v2 = [a1[4] connectionState];
  if (v2 != [a1[5] connectionState])
  {
    v3 = [a1[5] disconnectionQueue];
    dispatch_suspend(v3);

    [a1[5] setConnectionState:{objc_msgSend(a1[4], "connectionState")}];
    v4 = &_dispatch_main_q;
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_1001BFA34;
    v9 = &unk_10032B838;
    v10 = a1[4];
    v11[0] = a1[5];
    dispatch_sync(v4, &v5);

    objc_storeStrong(v11, 0);
    objc_storeStrong(&v10, 0);
  }
}

void sub_1001BFA34(id *a1)
{
  v27[2] = a1;
  v27[1] = a1;
  v2 = [a1[4] connectionState];
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v2 != 2)
    {
      return;
    }

LABEL_8:
    v9 = [BuddyMigrationLockscreenDisconnectController alloc];
    v10 = [a1[4] connectionType];
    v11 = [a1[5] featureFlags];
    v12 = [a1[5] deviceProvider];
    v13 = [(BuddyMigrationBaseDisconnectController *)v9 initWithConnectionType:v10 featureFlags:v11 deviceProvider:v12];
    [a1[5] setDisconnectController:v13];

    v14 = [a1[5] navigationController];
    v15 = [a1[5] disconnectController];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1001BFD7C;
    v20 = &unk_10032B0D0;
    v21 = a1[5];
    [v14 pushViewController:v15 completion:&v16];

    objc_storeStrong(&v21, 0);
    return;
  }

  v3 = [a1[5] navigationController];
  v4 = [v3 topViewController];
  v5 = [a1[5] disconnectController];

  if (v4 == v5)
  {
    [a1[5] setDisconnectController:0];
    v6 = [a1[5] navigationController];
    v7 = [a1[5] progressController];
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_1001BFD2C;
    v26 = &unk_10032B0D0;
    v27[0] = a1[5];
    [v6 popToViewController:v7 completion:&v22];

    objc_storeStrong(v27, 0);
  }

  else
  {
    v8 = [a1[5] disconnectionQueue];
    dispatch_resume(v8);
  }
}

void sub_1001BFD2C(uint64_t a1)
{
  v1 = [*(a1 + 32) disconnectionQueue];
  dispatch_resume(v1);
}

void sub_1001BFD7C(uint64_t a1)
{
  v1 = [*(a1 + 32) disconnectionQueue];
  dispatch_resume(v1);
}

void sub_1001C0D38(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] delegate];
  [v3 presentWiFiPaneForFlowItem:a1[4]];

  objc_storeStrong(location, 0);
}

void sub_1001C1514(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _beginInstall];
  objc_storeStrong(location, 0);
}

void sub_1001C1564(id a1, UIAlertAction *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

void sub_1001C15AC(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  [a1[4] setAutoInstallTimeRemaining:{objc_msgSend(a1[4], "autoInstallTimeRemaining") - 1}];
  if ([a1[4] autoInstallTimeRemaining] <= 0)
  {
    [location[0] invalidate];
    v4 = a1[5];
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_1001C16F4;
    v9 = &unk_10032B0D0;
    v10[0] = a1[4];
    [v4 dismissViewControllerAnimated:1 completion:&v5];
    objc_storeStrong(v10, 0);
  }

  else
  {
    v3 = [a1[4] _autoInstallAlertMessageForTimeRemaining:{objc_msgSend(a1[4], "autoInstallTimeRemaining")}];
    [a1[5] setMessage:v3];
  }

  objc_storeStrong(location, 0);
}

void sub_1001C1BB4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20[1] = a1;
  v20[0] = _BYLoggingFacility();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v20[0];
    v4 = v19;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Scan failure for required update alert cancel button tapped", buf, 2u);
  }

  objc_storeStrong(v20, 0);
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v15 = 0;
  v13 = 0;
  v5 = 0;
  if (WeakRetained)
  {
    v16 = [WeakRetained navigationController];
    v15 = 1;
    v14 = [v16 topViewController];
    v13 = 1;
    v5 = v14 == a1[4];
  }

  if (v13)
  {
  }

  if (v15)
  {
  }

  if (v5)
  {
    oslog = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v11;
      sub_10006AA68(v10);
      _os_log_impl(&_mh_execute_header, v6, v7, "Popping back from mandatory update after scan failure for required update alert", v10, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v8 = [WeakRetained navigationController];
    v9 = [v8 popViewControllerAnimated:1];
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

void sub_1001C1F9C(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_1001C21B8(uint64_t a1)
{
  v42 = a1;
  v41 = a1;
  v40 = +[BuddyMandatoryUpdateUtilities isUpdateRequired];
  v2 = +[BuddyCloudConfigManager sharedManager];
  v3 = 0;
  if ([v2 hasCloudConfiguration])
  {
    v3 = v40 ^ 1;
  }

  if (v3)
  {
    location = _BYLoggingFacility();
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v4 = location;
      v5 = v38;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Update not required and has cloud configuration", buf, 2u);
    }

    objc_storeStrong(&location, 0);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) runState];
    v7 = 0;
    if ([v6 hasCompletedInitialRun])
    {
      v7 = v40 ^ 1;
    }

    if (v7)
    {
      v36 = _BYLoggingFacility();
      v35 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v36;
        v9 = v35;
        sub_10006AA68(v34);
        _os_log_impl(&_mh_execute_header, v8, v9, "Update not required and has completed initial run", v34, 2u);
      }

      objc_storeStrong(&v36, 0);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v33 = _BYLoggingFacility();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v33;
        v11 = v32;
        sub_10006AA68(v31);
        _os_log_impl(&_mh_execute_header, v10, v11, "Checking for mandatory update...", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      v30 = +[BuddyMandatoryUpdateUtilities hasInformation];
      v20 = _NSConcreteStackBlock;
      v21 = -1073741824;
      v22 = 0;
      v23 = sub_1001C258C;
      v24 = &unk_10032E6B8;
      v27 = v40 & 1;
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v28 = v30 & 1;
      v29 = objc_retainBlock(&v20);
      v12 = &_dispatch_main_q;
      block = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_1001C28CC;
      v17 = &unk_10032AFD0;
      v18 = *(a1 + 32);
      v19 = v29;
      dispatch_async(v12, &block);

      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v25, 0);
    }
  }
}

void sub_1001C258C(uint64_t a1, char a2, id obj)
{
  v25 = a1;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v22[1] = a1;
  if (v24)
  {
    if (*(a1 + 48))
    {
      v4 = dispatch_get_global_queue(25, 0);
      block = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_1001C282C;
      v21 = &unk_10032B0D0;
      v22[0] = *(a1 + 32);
      dispatch_async(v4, &block);

      objc_storeStrong(v22, 0);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if ((*(a1 + 48) & 1) != 0 && location)
  {
    oslog = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v15;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Activation has indicated an update is required and we can't successfully scan for an update", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v7 = dispatch_get_global_queue(25, 0);
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1001C287C;
    v12 = &unk_10032B0D0;
    v13 = *(a1 + 32);
    dispatch_async(v7, &v8);

    [*(a1 + 32) setScanFailedForRequiredUpdate:1];
    (*(*(a1 + 40) + 16))();
    objc_storeStrong(&v13, 0);
  }

  else
  {
    if (v24 & 1) == 0 && (*(a1 + 49))
    {
      +[BuddyMandatoryUpdateUtilities removeInformation];
    }

    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1001C282C(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_1001C287C(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_1001C28CC(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = [a1[4] softwareUpdateCache];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001C29D0;
  v7 = &unk_10032E6E0;
  v8 = a1[4];
  v9[0] = a1[5];
  [v2 scanUsingCache:1 allowBootstrap:1 retry:1 withCompletion:&v3];

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_1001C29D0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v37 = 0;
  objc_storeStrong(&v37, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = 0;
  objc_storeStrong(&v35, a5);
  v34 = a1;
  v9 = [*(a1 + 32) networkProvider];
  v31 = 0;
  v10 = 0;
  if ([v9 networkReachable])
  {
    v32 = [*(a1 + 32) networkProvider];
    v31 = 1;
    v10 = [v32 connectedOverWiFi] ^ 1;
  }

  if (v31)
  {
  }

  v33 = v10 & 1;
  v11 = [*(a1 + 32) networkProvider];
  v12 = [v11 connectedOverWiFiAndNetworkReachable];

  v30 = v12 & 1;
  v13 = 0;
  if ((v12 & 1) == 0)
  {
    v13 = v33 ^ 1;
  }

  v29 = v13 & 1;
  v14 = [*(a1 + 32) analyticsManager];
  v40[0] = @"successfulScan";
  v15 = [NSNumber numberWithInt:v35 == 0];
  v41[0] = v15;
  v40[1] = @"cellular";
  v16 = [NSNumber numberWithBool:v33 & 1];
  v41[1] = v16;
  v40[2] = @"wifi";
  v17 = [NSNumber numberWithBool:v30 & 1];
  v41[2] = v17;
  v40[3] = @"bootstrap";
  v18 = [NSNumber numberWithBool:v29 & 1];
  v41[3] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:4];
  [v14 addEvent:@"com.apple.setupassistant.ios.activation.mandatoryUpdate" withPayload:v19 persist:1];

  if (v35)
  {
    oslog = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v25 = 0;
      v23 = 0;
      if (_BYIsInternalInstall())
      {
        v20 = v35;
      }

      else if (v35)
      {
        v26 = [v35 domain];
        v25 = 1;
        v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v26, [v35 code]);
        v24 = v20;
        v23 = 1;
      }

      else
      {
        v20 = 0;
      }

      sub_100071CBC(buf, v20);
      _os_log_error_impl(&_mh_execute_header, oslog, v27, "Unable to scan for software updates: %{public}@", buf, 0xCu);
      if (v23)
      {
      }

      if (v25)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    (*(*(a1 + 40) + 16))();
    v22 = 1;
  }

  else
  {
    v21 = [*(a1 + 32) _applicableUpdateFromPreferredUpdate:location[0] alternateUpdate:v37 latestUpdate:v36];
    [*(a1 + 32) setUpdate:v21];
    (*(*(a1 + 40) + 16))(*(a1 + 40), v21 != 0, v35);
    objc_storeStrong(&v21, 0);
    v22 = 0;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

void sub_1001C4B6C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v1 = [location[0] navigationController];

    if (v1)
    {
      v2 = [location[0] navigationController];
      v3 = [v2 presentedViewController];

      if (v3 == location[0])
      {
        [location[0] start];
      }
    }

    else
    {
      [location[0] start];
    }
  }

  objc_storeStrong(location, 0);
}

void sub_1001C4E78(uint64_t a1)
{
  v6 = a1;
  v5 = a1;
  v2 = [*(a1 + 32) visualPairingView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) visualPairingView];
  memcpy(v4, &CGAffineTransformIdentity, sizeof(v4));
  [v3 setTransform:v4];
}

void sub_1001C4F0C(uint64_t a1)
{
  v5 = a1;
  v4 = a1;
  v1 = [*(a1 + 32) _maskContainerView];
  v2 = [v1 maskView];
  CGAffineTransformMakeScale(&v3, 0.95, 0.95);
  [v2 setTransform:&v3];
}

void sub_1001C5168(uint64_t a1)
{
  v9 = a1;
  v8 = a1;
  v2 = [*(a1 + 32) _maskContainerView];
  v3 = [v2 maskView];
  CGAffineTransformMakeScale(&v7, 0.666666667, 0.666666667);
  [v3 setTransform:&v7];

  v4 = [*(a1 + 32) visualPairingView];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) visualPairingView];
  CGAffineTransformMakeScale(&v6, 1.5, 1.5);
  [v5 setTransform:&v6];
}

id sub_1001C6D00(uint64_t a1)
{
  [*(a1 + 32) setVideoPlayer:{0, a1, a1}];
  [*(a1 + 32) _resetPlayer];
  return [*(a1 + 32) setRetryAttempts:{objc_msgSend(*(a1 + 32), "retryAttempts") + 1}];
}

void sub_1001C79DC(id *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v2 = [a1[4] existingSettings];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001C7AB0;
  v7 = &unk_10032E708;
  v8[0] = a1[5];
  [v2 setBackupMetadataWithProviderBlock:&v3];

  objc_storeStrong(v8, 0);
}

id sub_1001C7AB0(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, oslog[0], v7, "Fetching metadata for backup: %@", buf, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v2 = [*(a1 + 32) backupUDID];
  [*(a1 + 32) snapshotID];
  location = BYMetadataFromBackup();

  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(v9, location);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Chosen backup has metadata: %@", v9, 0xCu);
  }

  objc_storeStrong(&v5, 0);
  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

void sub_1001C8758(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 beginAdvertisingProximitySetup];

  objc_storeStrong(location, 0);
}

void sub_1001C8804(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 endAdvertisingProximitySetup];

  objc_storeStrong(location, 0);
}

void sub_1001C88A4(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 endPairing];

  objc_storeStrong(location, 0);
}

void sub_1001C8988(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 hasConnection:&stru_10032E7C8];

  objc_storeStrong(location, 0);
}

void sub_1001C8A48(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 endDeviceToDeviceMigration];

  objc_storeStrong(location, 0);
}

void sub_1001C8AE8(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 beginSIMSetupExternalAuthentication];

  objc_storeStrong(location, 0);
}

void sub_1001C8B88(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 endSIMSetupExternalAuthentication];

  objc_storeStrong(location, 0);
}

void sub_1001C8CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(v11);
  objc_destroyWeak((v12 - 48));
  _Unwind_Resume(a1);
}

void sub_1001C8D24(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    location[0] = objc_loadWeakRetained((a1 + 40));
    v3 = *(a1 + 32);
    v4 = [location[0] handshake];
    v5 = [location[0] information];
    (*(v3 + 16))(v3, v4, v5, 0, &stru_10032F900, &stru_10032F900, [location[0] isConnected] & 1);

    objc_storeStrong(location, 0);
  }
}

void sub_1001C8DFC(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 resumeProximitySetup:0];

  objc_storeStrong(location, 0);
}

void sub_1001C8EA0(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 showMigrationInterfaceOnSource];

  objc_storeStrong(location, 0);
}

void sub_1001C8FE4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] remoteObjectProxy];
  [v3 storeHandshake:a1[4]];

  objc_storeStrong(location, 0);
}

void sub_1001C912C(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] remoteObjectProxy];
  [v3 storeInformation:a1[4]];

  objc_storeStrong(location, 0);
}

void sub_1001C91F8(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 suspendConnectionForSoftwareUpdate:0];

  objc_storeStrong(location, 0);
}

void sub_1001C92D0(id a1, NSXPCConnection *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] remoteObjectProxy];
  [v2 fileTransferSessionTemplate:0];

  objc_storeStrong(location, 0);
}

void sub_1001C9DC8(id *a1, uint64_t a2)
{
  v34 = a1;
  v33 = a2;
  v32[1] = a1;
  v3 = [a1[4] proximitySetupController];
  v32[0] = [v3 sharingMessageSession];

  v4 = [a1[4] proximitySetupController];
  v5 = [v4 information];
  v6 = [v5 hasTransferrableTelephonyPlan];
  v7 = [v6 BOOLValue];

  v31 = v7 & 1;
  v8 = sub_1001CA224();
  v37[0] = v8;
  v38[0] = &off_10033D538;
  v9 = sub_1001CA32C();
  v37[1] = v9;
  v10 = [NSNumber numberWithBool:v7 & 1];
  v38[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
  v30 = [NSMutableDictionary dictionaryWithDictionary:v11];

  v12 = [a1[4] proximitySetupController];
  v13 = [v12 information];
  v29 = [v13 productVersion];

  v14 = [a1[4] proximitySetupController];
  v15 = 0;
  if ([v14 hasConnection])
  {
    v15 = v29 != 0;
  }

  if (v15)
  {
    v16 = sub_1001CA434();
    v35 = v16;
    v36 = v29;
    v17 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v30 addEntriesFromDictionary:v17];
  }

  if (v33 == 1 && v32[0])
  {
    v18 = sub_1001CA53C();
    [v30 setObject:v32[0] forKeyedSubscript:v18];
  }

  location = [sub_1001CA644() flowWithOptions:v30];
  if (location)
  {
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_1001CA758;
    v23 = &unk_10032E920;
    v24 = a1[4];
    v25 = location;
    v26 = a1[5];
    [location firstViewController:&v19];
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    v27 = 0;
  }

  else
  {
    (*(a1[5] + 2))();
    v27 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(v32, 0);
}

id sub_1001CA224()
{
  v4 = sub_1001CAEA4();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoFlowTypeKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySIMTransferController.m" lineNumber:28 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_1001CA32C()
{
  v4 = sub_1001CB280();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoHasTransferablePlanKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySIMTransferController.m" lineNumber:30 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_1001CA434()
{
  v4 = sub_1001CB3E8();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoSourceOSVersionKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySIMTransferController.m" lineNumber:31 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_1001CA53C()
{
  v4 = sub_1001CB550();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getTSUserInfoMessageSessionKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySIMTransferController.m" lineNumber:29 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_1001CA644()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7340;
  v13 = qword_1003A7340;
  if (!qword_1003A7340)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001CB6B8;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001CB6B8(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001CA758(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = a1;
  v12 = location[0] != 0;
  if (location[0])
  {
    [*(a1 + 32) setSetupFlow:*(a1 + 40)];
    v3 = *(a1 + 32);
    v4 = [v3 setupFlow];
    [v4 setDelegate:v3];
  }

  else
  {
    v5 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1001CA8C0;
    v10 = &unk_10032B0D0;
    v11 = *(a1 + 32);
    dispatch_async(v5, &block);

    objc_storeStrong(&v11, 0);
  }

  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_1001CA9B8(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  v2 = [*(a1 + 32) proximitySetupController];
  v3 = [v2 information];
  v4 = [v3 appleID];
  v5 = v4 != 0;

  v16 = v5;
  v6 = [*(a1 + 32) miscState];
  v7 = [v6 migrationManager];
  v8 = [v7 willMigrate];

  v15 = v8 & 1;
  v9 = [*(a1 + 32) proximitySetupController];
  v10 = [v9 information];
  location = [v10 productVersion];

  v13 = [SASSystemInformation compareProductVersion:location toProductVersion:@"19.0"]!= 1;
  v11 = 1;
  if (!v16)
  {
    v11 = 1;
    if ((v15 & 1) == 0)
    {
      v11 = v13;
    }
  }

  if ((v11 & 1) == 0)
  {
    v12 = [*(a1 + 32) proximitySetupController];
    [v12 setupFinished];
  }

  objc_storeStrong(&location, 0);
}

uint64_t sub_1001CAEA4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A7318;
  v13 = qword_1003A7318;
  if (!qword_1003A7318)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001CAFA0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001CAFA0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1001CAFA0(uint64_t a1)
{
  v2 = sub_1001CB00C();
  result = dlsym(v2, "TSUserInfoFlowTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A7318 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001CB00C()
{
  v3 = sub_1001CB138();
  if (!v3)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *SIMSetupSupportLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddySIMTransferController.m" lineNumber:26 description:@"%s", 0];

    __break(1u);
  }

  return v3;
}

uint64_t sub_1001CB138()
{
  if (!qword_1003A7320)
  {
    sub_1001CB1EC();
  }

  return qword_1003A7320;
}

uint64_t sub_1001CB1EC()
{
  result = _sl_dlopen();
  qword_1003A7320 = result;
  return result;
}

uint64_t sub_1001CB280()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A7328;
  v13 = qword_1003A7328;
  if (!qword_1003A7328)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001CB37C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001CB37C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1001CB37C(uint64_t a1)
{
  v2 = sub_1001CB00C();
  result = dlsym(v2, "TSUserInfoHasTransferablePlanKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A7328 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001CB3E8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A7330;
  v13 = qword_1003A7330;
  if (!qword_1003A7330)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001CB4E4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001CB4E4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1001CB4E4(uint64_t a1)
{
  v2 = sub_1001CB00C();
  result = dlsym(v2, "TSUserInfoSourceOSVersionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A7330 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001CB550()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A7338;
  v13 = qword_1003A7338;
  if (!qword_1003A7338)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001CB64C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001CB64C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1001CB64C(uint64_t a1)
{
  v2 = sub_1001CB00C();
  result = dlsym(v2, "TSUserInfoMessageSessionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A7338 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1001CB6B8(NSAssertionHandler *a1)
{
  sub_1001CB00C();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("TSSIMSetupFlow");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getTSSIMSetupFlowClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddySIMTransferController.m" lineNumber:27 description:@"Unable to find class %s", "TSSIMSetupFlow"];

    __break(1u);
  }

  qword_1003A7340 = *(*(a1[4].super.isa + 1) + 24);
}

id sub_1001CBCCC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7348;
  v13 = qword_1003A7348;
  if (!qword_1003A7348)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001CBDE0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001CBDE0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001CBDE0(NSAssertionHandler *a1)
{
  sub_1001CBF24();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("PASUIDependentViewPresenter");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getPASUIDependentViewPresenterClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyOverridesFactory.m" lineNumber:29 description:@"Unable to find class %s", "PASUIDependentViewPresenter"];

    __break(1u);
  }

  qword_1003A7348 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001CBF24()
{
  if (!sub_1001CC04C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *ProximityAppleIDSetupUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyOverridesFactory.m" lineNumber:28 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001CC04C()
{
  if (!qword_1003A7350)
  {
    sub_1001CC100();
  }

  return qword_1003A7350;
}

uint64_t sub_1001CC100()
{
  result = _sl_dlopen();
  qword_1003A7350 = result;
  return result;
}

NSString *__cdecl sub_1001CC748(id a1, BOOL a2)
{
  if (a2)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

id sub_1001CD3FC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7358;
  v13 = qword_1003A7358;
  if (!qword_1003A7358)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001CF854;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001CF854(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001CD8B4(id *a1)
{
  v49[2] = a1;
  v49[1] = a1;
  v49[0] = objc_alloc_init(BYBuddyDaemonGeneralClient);
  v2 = [v49[0] fetchAuthenticationContextForApplePay];
  v48 = [v2 externalizedContext];

  v47 = [a1[4] proximitySetupController];
  v3 = objc_alloc(sub_1001CDD84());
  v40 = _NSConcreteStackBlock;
  v41 = -1073741824;
  v42 = 0;
  v43 = sub_1001CDE98;
  v44 = &unk_10032B0D0;
  v45 = v47;
  v34 = _NSConcreteStackBlock;
  v35 = -1073741824;
  v36 = 0;
  v37 = sub_1001CDF44;
  v38 = &unk_10032B0D0;
  v39 = v47;
  v28 = _NSConcreteStackBlock;
  v29 = -1073741824;
  v30 = 0;
  v31 = sub_1001CDFF4;
  v32 = &unk_10032E9B8;
  v33 = v47;
  v46 = [v3 initWithStartTransferAuthorization:&v40 endTransferAuthorization:&v34 fetchMessageSession:&v28];
  v18 = _NSConcreteStackBlock;
  v19 = -1073741824;
  v20 = 0;
  v21 = sub_1001CE0E4;
  v22 = &unk_10032D150;
  v23 = v48;
  v24 = a1[4];
  v25 = v46;
  v26 = a1[5];
  location = objc_retainBlock(&v18);
  v4 = [sub_1001CE644() sharedInstance];
  v5 = [a1[4] existingSettings];
  v6 = [v5 walletData];
  [v4 setBackupMetadata:v6];

  v7 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001CE758;
  v12 = &unk_10032EA08;
  v13 = a1[4];
  v14 = v48;
  v15 = v46;
  v16 = a1[5];
  v17 = location;
  dispatch_async(v7, &block);

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(v49, 0);
}

id sub_1001CDD84()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7368;
  v13 = qword_1003A7368;
  if (!qword_1003A7368)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001CFC08;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001CFC08(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_1001CDE98(NSObject *a1)
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
    _os_log_impl(&_mh_execute_header, v2, v3, "BuddyPaymentController START repurposing SIM setup external authentication for Apple Pay authentication", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  return [(objc_class *)a1[4].isa setSourceProxCardVisibliityForSIMSetupExternalAuthentication:0];
}

id sub_1001CDF44(NSObject *a1)
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
    _os_log_impl(&_mh_execute_header, v2, v3, "BuddyPaymentController END repurposing SIM setup external authentication for Apple Pay authentication", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  return [(objc_class *)a1[4].isa setSourceProxCardVisibliityForSIMSetupExternalAuthentication:1];
}

void sub_1001CDFF4(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "BuddyPaymentController Returning message session", v7, 2u);
  }

  objc_storeStrong(oslog, 0);
  v5 = location[0];
  v6 = [(objc_class *)a1[4].isa sharingMessageSession];
  v5[2](v5, v6, 0);

  objc_storeStrong(location, 0);
}

void sub_1001CE0E4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [objc_alloc(sub_1001CE248()) initWithSetupAssistant:1];
  [location[0] setExternalizedContext:*(a1 + 32)];
  [location[0] setDelegate:*(a1 + 40)];
  [location[0] setProximitySetupLiaison:*(a1 + 48)];
  v2 = [*(a1 + 40) _createPaymentControllerWithContext:location[0]];
  [*(a1 + 40) setPaymentController:v2];

  v3 = [*(a1 + 40) paymentController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001CE35C;
  v8 = &unk_10032E9E0;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  [v3 prepareForPresentationWithCompletion:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

id sub_1001CE248()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7370;
  v13 = qword_1003A7370;
  if (!qword_1003A7370)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001CFD4C;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001CFD4C(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001CE35C(uint64_t a1, char a2, id obj, uint64_t a4)
{
  v23 = a1;
  v22 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v20 = a4;
  v19 = a1;
  if ((v22 & 1) != 0 && location)
  {
    [*(a1 + 32) setInitialViewController:location];
    v6 = [*(a1 + 32) chronicle];
    [v6 recordFeatureShown:1];

    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    v18 = 1;
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1001CE624(buf, v22 & 1, v20);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Skipping Apple Pay because it did not need to run (%d) and/or requirements were not met (%lu)", buf, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    v7 = [*(a1 + 32) buddyPreferences];
    v8 = 0;
    if (([v7 BOOLForKey:@"Payment2Presented"] & 1) == 0)
    {
      v8 = v22;
    }

    if (v8)
    {
      v16 = 1;
      v14 = 0;
      v9 = 0;
      if ((v20 & 2) != 0)
      {
        v15 = [*(a1 + 32) capabilities];
        v14 = 1;
        v9 = [v15 canShowPasscodeScreen] ^ 1;
      }

      if (v14)
      {
      }

      if (v9)
      {
        v16 = 0;
      }

      else
      {
        v12 = 0;
        v10 = 0;
        if (v20)
        {
          v13 = [*(a1 + 32) capabilities];
          v12 = 1;
          v10 = [v13 canShowAppleIDScreen] ^ 1;
        }

        if (v12)
        {
        }

        if (v10)
        {
          v16 = 0;
        }
      }

      if (v16)
      {
        v11 = [*(a1 + 32) flowSkipController];
        [v11 didSkipFlow:BYFlowSkipIdentifierApplePay];
      }
    }

    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    v18 = 0;
  }

  objc_storeStrong(&location, 0);
}

double sub_1001CE624(uint64_t a1, int a2, uint64_t a3)
{
  *&result = 67109376;
  *a1 = 67109376;
  *(a1 + 4) = a2;
  *(a1 + 8) = 2048;
  *(a1 + 10) = a3;
  return result;
}

id sub_1001CE644()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7378;
  v13 = qword_1003A7378;
  if (!qword_1003A7378)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001CFE90;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001CFE90(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001CE758(uint64_t a1)
{
  v14[2] = a1;
  v14[1] = a1;
  v2 = [*(a1 + 32) miscState];
  v3 = [v2 walletProvisioningContext];

  if (v3)
  {
    v14[0] = [objc_alloc(sub_1001CE248()) initWithSetupAssistant:1];
    [v14[0] setExternalizedContext:*(a1 + 40)];
    [v14[0] setDelegate:*(a1 + 32)];
    [v14[0] setProximitySetupLiaison:*(a1 + 48)];
    location = [objc_alloc(sub_1001CE92C()) initWithSetupAssistantContext:v14[0]];
    v4 = [*(a1 + 32) miscState];
    v5 = [v4 walletProvisioningContext];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1001CEA40;
    v10 = &unk_10032CC40;
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    [location expressSetupFlowForSetupProvisioningContext:v5 withCompletion:&v6];

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&location, 0);
    objc_storeStrong(v14, 0);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

id sub_1001CE92C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7388;
  v13 = qword_1003A7388;
  if (!qword_1003A7388)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001D0244;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001D0244(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001CEA40(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[1] = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001CEB78;
  v8 = &unk_10032BC78;
  v9 = a1[4];
  v10 = location[0];
  v11[0] = a1[5];
  dispatch_async(v3, &v4);

  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

id sub_1001CEB78(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  result = [(objc_class *)a1[4].isa setInitialViewController:a1[5].isa];
  if (a1[6].isa)
  {
    if (a1[5].isa)
    {
      v3 = [(objc_class *)a1[4].isa chronicle];
      [v3 recordFeatureShown:1];
    }

    else
    {
      oslog[0] = _BYLoggingFacility();
      v7 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
      {
        v4 = oslog[0];
        v5 = v7;
        sub_10006AA68(v6);
        _os_log_impl(&_mh_execute_header, v4, v5, "Skipping Apple Pay because it did not return a view controller for the express flow", v6, 2u);
      }

      objc_storeStrong(oslog, 0);
    }

    return (*(a1[6].isa + 2))(a1[6].isa, a1[5].isa != 0);
  }

  return result;
}

id sub_1001CEF18()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A7390;
  v13 = qword_1003A7390;
  if (!qword_1003A7390)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001D0388;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001D0388(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001CF1A0(void *a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = a3;
  v7 = a1;
  if (location[0])
  {
    (*(a1[4] + 16))();
    v6 = 1;
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(buf, v8);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "ExpressController did not need return a setupProvisioningContext; requirements were not met (%lu)", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }

    v6 = 0;
  }

  objc_storeStrong(location, 0);
}

void sub_1001CF854(NSAssertionHandler *a1)
{
  sub_1001CF998();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("PKPaymentSetupAssistantController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getPKPaymentSetupAssistantControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyPaymentController.m" lineNumber:56 description:@"Unable to find class %s", "PKPaymentSetupAssistantController"];

    __break(1u);
  }

  qword_1003A7358 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001CF998()
{
  if (!sub_1001CFAC0())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *PassKitUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyPaymentController.m" lineNumber:51 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001CFAC0()
{
  if (!qword_1003A7360)
  {
    sub_1001CFB74();
  }

  return qword_1003A7360;
}

uint64_t sub_1001CFB74()
{
  result = _sl_dlopen();
  qword_1003A7360 = result;
  return result;
}

void sub_1001CFC08(NSAssertionHandler *a1)
{
  sub_1001CF998();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("PKProximitySetupLiaison");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getPKProximitySetupLiaisonClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyPaymentController.m" lineNumber:54 description:@"Unable to find class %s", "PKProximitySetupLiaison"];

    __break(1u);
  }

  qword_1003A7368 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001CFD4C(NSAssertionHandler *a1)
{
  sub_1001CF998();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("PKSetupAssistantContext");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getPKSetupAssistantContextClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyPaymentController.m" lineNumber:52 description:@"Unable to find class %s", "PKSetupAssistantContext"];

    __break(1u);
  }

  qword_1003A7370 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001CFE90(NSAssertionHandler *a1)
{
  sub_1001CFFD4();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("PKPassLibrary");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getPKPassLibraryClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyPaymentController.m" lineNumber:48 description:@"Unable to find class %s", "PKPassLibrary"];

    __break(1u);
  }

  qword_1003A7378 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001CFFD4()
{
  if (!sub_1001D00FC())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *PassKitCoreLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyPaymentController.m" lineNumber:47 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001D00FC()
{
  if (!qword_1003A7380)
  {
    sub_1001D01B0();
  }

  return qword_1003A7380;
}

uint64_t sub_1001D01B0()
{
  result = _sl_dlopen();
  qword_1003A7380 = result;
  return result;
}

void sub_1001D0244(NSAssertionHandler *a1)
{
  sub_1001CF998();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("PKPaymentSetupAssistantExpressController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getPKPaymentSetupAssistantExpressControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyPaymentController.m" lineNumber:60 description:@"Unable to find class %s", "PKPaymentSetupAssistantExpressController"];

    __break(1u);
  }

  qword_1003A7388 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001D0388(NSAssertionHandler *a1)
{
  sub_1001CF998();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("PKPaymentVerificationMethodsViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getPKPaymentVerificationMethodsViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyPaymentController.m" lineNumber:58 description:@"Unable to find class %s", "PKPaymentVerificationMethodsViewController"];

    __break(1u);
  }

  qword_1003A7390 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001D0D08(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  [a1[4] setHandshake:{location[0], a1}];
  [a1[4] updateInformation:v16];
  [a1[4] setHasAppliedSettings:1];
  [a1[4] setModel:v14];
  [a1[4] setDeviceClass:v13];
  [a1[4] _setConnected:a7 & 1];
  [a1[4] _updatedMessageSession:v15];
  [a1[4] _setSetupIntent];
  [a1[4] prepareForDependentSetup];
  [a1[4] setHasResumed:1];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_1001D192C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_alloc_init(SASProximityMigrationStartAction);
  v2 = [a1[4] session];
  v3 = [v2 sendAction:location[0]];

  objc_storeStrong(location, 0);
}

id sub_1001D222C(uint64_t a1)
{
  [*(a1 + 32) setupFinished];
  result = [*(a1 + 32) shouldEnableProximity];
  if (result)
  {
    return [*(a1 + 32) beginAdvertisingProximitySetup];
  }

  return result;
}

id *sub_1001D270C(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] prepareForDependentSetup];
  }

  return result;
}

double sub_1001D390C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138412546;
  *a1 = 138412546;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2080;
  *(a1 + 14) = a3;
  return result;
}

void sub_1001D3AC4(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_1001D3C28(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1001D3D48(uint64_t a1)
{
  v9 = a1;
  v8 = a1;
  memset(v6, 0, sizeof(v6));
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v6[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*v6[2] != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(v6[1] + 8 * i);
        [v7 connectionTerminated];
      }

      v3 = [v2 countByEnumeratingWithState:v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1001D453C(uint64_t a1)
{
  v9 = a1;
  v8 = a1;
  memset(v6, 0, sizeof(v6));
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v6[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*v6[2] != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(v6[1] + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v7 proximitySetupCompleted:*(a1 + 40)];
        }
      }

      v3 = [v2 countByEnumeratingWithState:v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1001D4998(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 32) deviceClass];
  [v2 displayIncompatibleProximityPairingFromDeviceClass:v3];
}

void sub_1001D4A0C(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizations];
  v4 = [*(a1 + 32) receivedLanguages];
  v5 = [NSBundle preferredLocalizationsFromArray:v3 forPreferences:v4];
  location[0] = [(NSArray *)v5 firstObject];

  v6 = [*(a1 + 32) buddyPreferences];
  v7 = [v6 objectForKey:@"UserChoseLanguage"];

  if (v7)
  {
    v8 = +[NSLocale preferredLanguages];
    v9 = [(NSArray *)v8 firstObject];
    v10 = location[0];
    location[0] = v9;
  }

  v11 = [*(a1 + 32) delegate];
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = [*(a1 + 32) accessibilitySettings];
  [v11 displayProximityPinCode:v12 language:location[0] visual:v13 & 1 accessibilitySettings:v14];

  objc_storeStrong(location, 0);
}

void sub_1001D4D24(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 dismissProximityPinCode];
}

void sub_1001D5590(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 displayUpdateRequiredToMigrate];
}

void sub_1001D5B44(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [a1[4] delegate];
  [v2 willPerformProximityHandshake];

  location[0] = [a1[4] performHandshake];
  if (location[0])
  {
    v3 = [a1[4] delegate];
    [v3 unableToApplyProximitySettings];
  }

  else
  {
    [a1[4] readyForInformation];
  }

  objc_storeStrong(location, 0);
}

void sub_1001D5CFC(uint64_t a1)
{
  v9 = a1;
  v8 = a1;
  memset(v6, 0, sizeof(v6));
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v6[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*v6[2] != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(v6[1] + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v7 receivedBackupAction:*(a1 + 40)];
        }
      }

      v3 = [v2 countByEnumeratingWithState:v6 objects:v10 count:16];
    }

    while (v3);
  }
}

id sub_1001D6CF0()
{
  v4 = sub_1001D75E8();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getWFNetworkListControllerAssociationDidStartNotification(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCloudConfigWiFiAssociationWatcher.m" lineNumber:18 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_1001D6DF8()
{
  v4 = sub_1001D79C4();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getWFNetworkListControllerAssociationDidFinishNotification(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCloudConfigWiFiAssociationWatcher.m" lineNumber:20 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

void sub_1001D729C(uint64_t a1)
{
  [*(a1 + 32) setCountOfAssociationAttempts:{objc_msgSend(*(a1 + 32), "countOfAssociationAttempts", a1, a1) + 1}];
  v2 = objc_opt_new();
  [*(a1 + 32) setCurrentAssociationFinishHandlers:v2];
}

void sub_1001D73F4(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [a1[4] currentAssociationFinishHandlers];
  location[0] = [v2 copy];

  [a1[4] setCurrentAssociationFinishHandlers:0];
  memset(__b, 0, sizeof(__b));
  v3 = location[0];
  v4 = [v3 countByEnumeratingWithState:__b objects:v10 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(__b[1] + 8 * i);
        (*(v8 + 16))();
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v10 count:16];
    }

    while (v4);
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_1001D75E8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A7398;
  v13 = qword_1003A7398;
  if (!qword_1003A7398)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001D76E4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001D76E4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1001D76E4(uint64_t a1)
{
  v2 = sub_1001D7750();
  result = dlsym(v2, "WFNetworkListControllerAssociationDidStartNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A7398 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001D7750()
{
  v3 = sub_1001D787C();
  if (!v3)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *WiFiKitLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyCloudConfigWiFiAssociationWatcher.m" lineNumber:16 description:@"%s", 0];

    __break(1u);
  }

  return v3;
}

uint64_t sub_1001D787C()
{
  if (!qword_1003A73A0)
  {
    sub_1001D7930();
  }

  return qword_1003A73A0;
}

uint64_t sub_1001D7930()
{
  result = _sl_dlopen();
  qword_1003A73A0 = result;
  return result;
}

uint64_t sub_1001D79C4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A73A8;
  v13 = qword_1003A73A8;
  if (!qword_1003A73A8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001D7AC0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001D7AC0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1001D7AC0(uint64_t a1)
{
  v2 = sub_1001D7750();
  result = dlsym(v2, "WFNetworkListControllerAssociationDidFinishNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A73A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1001D9A40(uint64_t a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = a3;
  v14 = 0;
  v5 = 0;
  if (*(a1 + 48))
  {
    v15 = [location[0] detailText];
    v14 = 1;
    v5 = [v15 length] != 0;
  }

  if (v14)
  {
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"MULTILINGUAL_EXPRESS_KEYBOARD_WITH_SOFTWARE_LAYOUT" value:&stru_10032F900 table:@"Localizable"];
    v9 = [location[0] title];
    v10 = [location[0] detailText];
    v11 = [NSString localizedStringWithFormat:v8, v9, v10];
    [v6 appendString:v11];
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = [location[0] title];
    [v12 appendString:v13];
  }

  if (v16 != [*(a1 + 40) count] - 1)
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  objc_storeStrong(location, 0);
}

double sub_1001DBF44(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *&result = 134218496;
  *a1 = 134218496;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  return result;
}

void sub_1001DC53C(uint64_t a1, char a2, id obj)
{
  v36 = a1;
  v35 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v33 = a1;
  v32 = 0;
  if ((v35 & 1) == 0)
  {
    if (byte_1003A73B0)
    {
      oslog = _BYLoggingFacility();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = oslog;
        v5 = v30;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v4, v5, "Showing iCloud Analytics because re-opt was requested", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v32 = 1;
    }

    else
    {
      v28 = 0;
      v6 = +[BuddyAccountTools sharedBuddyAccountTools];
      obja = 0;
      v7 = [v6 iCloudAnalyticsOptInError:&obja];
      objc_storeStrong(&v28, obja);
      v27 = v7;

      if (v28)
      {
        v22 = _BYLoggingFacility();
        v21 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v27;
          v19 = 0;
          v17 = 0;
          if (_BYIsInternalInstall())
          {
            v11 = v28;
          }

          else if (v28)
          {
            v20 = [v28 domain];
            v19 = 1;
            v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v20, [v28 code]);
            v18 = v11;
            v17 = 1;
          }

          else
          {
            v11 = 0;
          }

          sub_1001DC9A4(v38, v10, v11);
          _os_log_impl(&_mh_execute_header, v22, v21, "Unable to read iCloud Analytics value from server, iCloudAnalyticsOptIn = %{public}@, error = %@", v38, 0x16u);
          if (v17)
          {
          }

          if (v19)
          {
          }
        }

        objc_storeStrong(&v22, 0);
      }

      else if (!v27 || [v27 integerValue] == -1)
      {
        v25 = _BYLoggingFacility();
        v24 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v25;
          v9 = v24;
          sub_10006AA68(v23);
          _os_log_impl(&_mh_execute_header, v8, v9, "Showing iCloud analytics because it's never been seen", v23, 2u);
        }

        objc_storeStrong(&v25, 0);
        v32 = 1;
      }

      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
    }
  }

  if (v32)
  {
    *(*(*(a1 + 48) + 8) + 24) |= 1uLL;
  }

  if (*(a1 + 40))
  {
    v16 = _BYLoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 48) + 8) + 24);
      v13 = *(a1 + 56) & 1;
      v14 = *(a1 + 57) & 1;
      v15 = [*(a1 + 32) miscState];
      sub_1001DC9C4(v37, v12, v13, v14, [v15 launchedWithCombinedAnalyticsMismatch] & 1, *(a1 + 58) & 1);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Diagnostics display mode = %ld, factors: Restricted = %d, AlreadyYes = %d, Mismatch = %d, AlreadyPresented = %d", v37, 0x24u);
    }

    objc_storeStrong(&v16, 0);
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

double sub_1001DC9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138543618;
  *a1 = 138543618;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  return result;
}

double sub_1001DC9C4(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  *&result = 134219008;
  *a1 = 134219008;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  *(a1 + 30) = 1024;
  *(a1 + 32) = a6;
  return result;
}

void sub_1001DCE80(uint64_t a1, char a2, id obj)
{
  v15 = a1;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v14)
  {
    oslog[0] = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, oslog[0], v11, "Successfully wrote %@ to IdMS", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 0;
      v6 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = location;
      }

      else if (location)
      {
        v9 = [location domain];
        v8 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v9, [location code]);
        v7 = v5;
        v6 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_10010DD40(v16, v4, v5);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to write %@ to IdMS, error: %{public}@", v16, 0x16u);
      if (v6)
      {
      }

      if (v8)
      {
      }
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_1001DD810(uint64_t a1, char a2)
{
  v12 = a1;
  v11 = a2;
  v10 = a1;
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_1001DD900;
    v7 = &unk_10032E1C8;
    v8 = *(a1 + 40);
    v9 = v11 & 1;
    [v2 _prepareAnalyticsWithCompletion:&v3];
    objc_storeStrong(&v8, 0);
  }

  else if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_1001DD900(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))(*(result + 32), *(result + 40) & 1);
  }

  return result;
}

void sub_1001DD948(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = a1[4];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001DDA24;
  v7 = &unk_10032BB88;
  v8 = a1[4];
  v9[0] = a1[5];
  [v2 _determineDisplayMode:&v3];
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_1001DF198(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  oslog[1] = a1;
  if (v15)
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v15;
      }

      else if (v15)
      {
        v12 = [v15 domain];
        v11 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [v15 code]);
        v10 = v5;
        v9 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_10006AE18(buf, v5);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Failed to fetch cut off age for child account: %@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    (*(a1[4].isa + 2))();
  }

  else
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [location[0] childCutOffAge];
      v7 = [location[0] childCutOffAgeLocalized];
      sub_1000A79D4(v17, v6, v7);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did fetch cut off age for child account: %ld '%{public}@'", v17, 0x16u);
    }

    objc_storeStrong(&v8, 0);
    (*(a1[4].isa + 2))(a1[4].isa, [location[0] childCutOffAge], 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

id sub_1001DF4DC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A73B8;
  v13 = qword_1003A73B8;
  if (!qword_1003A73B8)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001DFD90;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001DFD90(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001DFD90(NSAssertionHandler *a1)
{
  sub_1001DFED4();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("AISChildSetupPresenter");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getAISChildSetupPresenterClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyChildSetupPresenter.m" lineNumber:19 description:@"Unable to find class %s", "AISChildSetupPresenter"];

    __break(1u);
  }

  qword_1003A73B8 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001DFED4()
{
  if (!sub_1001DFFFC())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *AppleIDSetupUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyChildSetupPresenter.m" lineNumber:18 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001DFFFC()
{
  if (!qword_1003A73C0)
  {
    sub_1001E00B0();
  }

  return qword_1003A73C0;
}

uint64_t sub_1001E00B0()
{
  result = _sl_dlopen();
  qword_1003A73C0 = result;
  return result;
}

void sub_1001E03E4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v7 = [(BuddyMigrationSourceErrorController *)[BuddyMigrationSourceLockscreenErrorController alloc] initWithError:*(a1 + 32), a1, a1];
    [*(a1 + 40) setErrorController:v7];

    v5 = [*(a1 + 40) navigationController];
    v6 = [*(a1 + 40) errorController];
  }

  else
  {
    v2 = [BuddyMigrationLockscreenFinishedController alloc];
    v3 = [*(a1 + 40) stringProvider];
    v4 = [(BuddyMigrationLockscreenFinishedController *)v2 initWithStringProvider:v3];
    [*(a1 + 40) setFinishedController:v4];

    v5 = [*(a1 + 40) navigationController];
    v6 = [*(a1 + 40) finishedController];
  }

  [v5 pushViewController:v6 animated:1];
}

void sub_1001E0860(id a1)
{
  v1 = objc_alloc_init(BuddyCloudConfigManager);
  v2 = qword_1003A73C8;
  qword_1003A73C8 = v1;
}

id sub_1001E0AD4(NSObject *a1, int a2)
{
  v10 = a1;
  v9 = a2;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v3, v4, "Profile list has changed. Reload skip keys", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  return [(objc_class *)a1[4].isa _updateSkipKeysWithCachedDetails:*(a1[4].isa + 2)];
}

double sub_1001E0B88(uint64_t a1, uint64_t a2, int a3)
{
  *&result = 138543618;
  *a1 = 138543618;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1026;
  *(a1 + 14) = a3;
  return result;
}

void sub_1001E1114(uint64_t a1)
{
  v2 = [*(a1 + 32) enrollmentCoordinator];
  v3 = 0;
  if ([v2 shouldDoReturnToService])
  {
    v3 = [*(a1 + 40) isEqualToString:kMCCCSkipWiFi] ^ 1;
  }

  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 24) containsObject:*(a1 + 40)] & 1;
  }
}

void sub_1001E1514(uint64_t a1)
{
  v2 = [NSNotificationCenter defaultCenter:a1];
  [(NSNotificationCenter *)v2 postNotificationName:@"BuddyCloudConfigManagerSkipKeysDidChangeNotification" object:*(a1 + 32)];
}

void sub_1001E2128(id *a1, char a2)
{
  v14 = a1;
  v13 = a2;
  v12[1] = a1;
  [a1[4] setRequiresTermsAcceptanceForPrimaryAccount:a2 & 1];
  v3 = a1[4];
  v4 = a1[5];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001E2248;
  v9 = &unk_10032BC78;
  v10 = a1[4];
  v11 = a1[5];
  v12[0] = a1[6];
  [v3 _startSilentEscrowRecordRepairIfNecessaryWithAccount:v4 completion:&v5];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

uint64_t sub_1001E2248(uint64_t a1)
{
  v74 = a1;
  v73 = a1;
  v2 = +[BYSetupStateManager sharedManager];
  v70 = 0;
  v3 = 1;
  if ([v2 restoreType] != 1)
  {
    v71 = [*(a1 + 32) miscState];
    v70 = 1;
    v3 = [v71 forcePrimaryAppleIDAuthentication];
  }

  if (v70)
  {
  }

  v72 = v3 & 1;
  if (v3)
  {
    [*(a1 + 32) setAccountToRepair:*(a1 + 40)];
    [*(a1 + 32) setPerformAuthKitRepair:0];
  }

  else
  {
    v4 = *(a1 + 32);
    v64 = _NSConcreteStackBlock;
    v65 = -1073741824;
    v66 = 0;
    v67 = sub_1001E29DC;
    v68 = &unk_10032EBF8;
    v69 = *(a1 + 32);
    [v4 _determineAccountToRepair:&v64];
    v5 = [*(a1 + 32) accountToRepair];

    if (!v5)
    {
      v6 = [*(a1 + 32) _accountToUpdate];
      [*(a1 + 32) setAccountForSecurityUpgrade:v6];
    }

    objc_storeStrong(&v69, 0);
  }

  v7 = [*(a1 + 32) proximitySetupController];
  v8 = [v7 hasAppliedSettings];

  v63 = v8 & 1;
  if (!*(a1 + 40))
  {
    v16 = [*(a1 + 32) miscState];
    v17 = [v16 iCloudAppleIdFromActivation];
    v18 = [v17 length];

    if (v18)
    {
      v19 = [*(a1 + 32) miscState];
      v20 = [v19 iCloudAppleIdFromActivation];
      [*(a1 + 32) setExistingAccountUsername:v20];

      [*(a1 + 32) setExistingAccountType:1];
      v54 = _BYLoggingFacility();
      v53 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v54;
        v22 = v53;
        sub_10006AA68(v52);
        _os_log_impl(&_mh_execute_header, v21, v22, "Buddy AppleID choice flow: Found iCloud account from activation.", v52, 2u);
      }

      objc_storeStrong(&v54, 0);
    }

    else
    {
      v23 = +[SSAccountStore defaultStore];
      v24 = [v23 activeAccount];
      v25 = [v24 accountName];
      [*(a1 + 32) setExistingAccountUsername:v25];

      v26 = [*(a1 + 32) existingAccountUsername];
      v27 = [v26 length];

      if (v27)
      {
        [*(a1 + 32) setExistingAccountType:2];
        v51 = _BYLoggingFacility();
        v50 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v51;
          v29 = v50;
          sub_10006AA68(v49);
          _os_log_impl(&_mh_execute_header, v28, v29, "Buddy AppleID choice flow: Found Store account.", v49, 2u);
        }

        objc_storeStrong(&v51, 0);
      }

      else
      {
        v30 = [*(a1 + 32) proximitySetupController];
        v31 = [v30 information];
        location = [v31 appleID];

        if (location)
        {
          v47 = _BYLoggingFacility();
          v46 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v47;
            v33 = v46;
            sub_10006AA68(v45);
            _os_log_impl(&_mh_execute_header, v32, v33, "Buddy AppleID choice flow: Found Apple ID from proximity", v45, 2u);
          }

          objc_storeStrong(&v47, 0);
          [*(a1 + 32) setExistingAccountUsername:location];
          [*(a1 + 32) setExistingAccountType:1];
        }

        objc_storeStrong(&location, 0);
      }
    }

    goto LABEL_36;
  }

  v9 = [*(a1 + 32) accountToRepair];
  v61 = 0;
  if (v9 || (v62 = [*(a1 + 32) accountForSecurityUpgrade], v61 = 1, v10 = 0, v62))
  {
    v10 = v63 ^ 1;
  }

  if (v61)
  {
  }

  if (v10)
  {
    oslog = _BYLoggingFacility();
    v59 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = oslog;
      v12 = v59;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v11, v12, "Buddy AppleID choice flow: account needs updating.", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
LABEL_36:
    v34 = [*(a1 + 32) buddyPreferences];
    v43 = 0;
    v41 = 0;
    v35 = 0;
    if ([v34 BOOLForKey:@"AppleIDPB10Presented"])
    {
      v44 = [*(a1 + 32) accountToRepair];
      v43 = 1;
      v35 = 0;
      if (!v44)
      {
        v42 = [*(a1 + 32) accountForSecurityUpgrade];
        v41 = 1;
        v35 = v42 == 0;
      }
    }

    if (v41)
    {
    }

    if (v43)
    {
    }

    if (!v35)
    {
      return (*(*(a1 + 48) + 16))();
    }

    v40 = _BYLoggingFacility();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v40;
      v37 = v39;
      sub_10006AA68(v38);
      _os_log_impl(&_mh_execute_header, v36, v37, "Skipping AppleID Setup: already done.", v38, 2u);
    }

    objc_storeStrong(&v40, 0);
    return (*(*(a1 + 48) + 16))();
  }

  v57 = _BYLoggingFacility();
  v56 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v57;
    v14 = v56;
    sub_10006AA68(v55);
    _os_log_impl(&_mh_execute_header, v13, v14, "Skipping AppleID Setup: iCloud account already present, no upgrade needed.", v55, 2u);
  }

  objc_storeStrong(&v57, 0);
  return (*(*(a1 + 48) + 16))();
}

void sub_1001E29DC(id *a1, void *a2, char a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] setAccountToRepair:{location[0], a1}];
  [a1[4] setPerformAuthKitRepair:a3 & 1];
  objc_storeStrong(location, 0);
}

void sub_1001E3264(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  oslog[1] = a1;
  if (v12)
  {
    oslog[0] = _BYLoggingFacility();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v5 = [(objc_class *)a1[4].isa aa_altDSID];
      v9 = 0;
      v7 = 0;
      if (_BYIsInternalInstall())
      {
        v6 = v12;
      }

      else if (v12)
      {
        v10 = [v12 domain];
        v9 = 1;
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v10, [v12 code]);
        v8 = v6;
        v7 = 1;
      }

      else
      {
        v6 = 0;
      }

      sub_10010DD40(buf, v5, v6);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to get accepted terms info for alt-DSID %@: %{public}@", buf, 0x16u);
      if (v7)
      {
      }

      if (v9)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_1001E3854(NSObject *a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v10)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(objc_class *)a1[4].isa altDSID];
      sub_10006AE18(buf, v4);
      _os_log_impl(&_mh_execute_header, oslog[0], v7, "Successfully started silent escrow record repair flow for account with altDSID (%@)", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v5 = [(objc_class *)a1[4].isa altDSID];
      sub_10010DD40(v12, v5, location);
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to start silent escrow record repair flow for account with altDSID (%@) with error (%{public}@)", v12, 0x16u);
    }

    objc_storeStrong(&v6, 0);
  }

  if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(&location, 0);
}

id sub_1001E44C0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A73D8;
  v13 = qword_1003A73D8;
  if (!qword_1003A73D8)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001E4908;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001E4908(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_1001E45D4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A73E8;
  v13 = qword_1003A73E8;
  if (!qword_1003A73E8)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001E4CBC;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1001E4CBC(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_1001E4908(NSAssertionHandler *a1)
{
  sub_1001E4A4C();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("AISShieldFlowContext");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getAISShieldFlowContextClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyIntentAndChildSetupFlowItem.m" lineNumber:26 description:@"Unable to find class %s", "AISShieldFlowContext"];

    __break(1u);
  }

  qword_1003A73D8 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001E4A4C()
{
  if (!sub_1001E4B74())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *AppleIDSetupLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyIntentAndChildSetupFlowItem.m" lineNumber:25 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001E4B74()
{
  if (!qword_1003A73E0)
  {
    sub_1001E4C28();
  }

  return qword_1003A73E0;
}

uint64_t sub_1001E4C28()
{
  result = _sl_dlopen();
  qword_1003A73E0 = result;
  return result;
}

void sub_1001E4CBC(NSAssertionHandler *a1)
{
  sub_1001E4E00();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("AISShieldViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getAISShieldViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyIntentAndChildSetupFlowItem.m" lineNumber:28 description:@"Unable to find class %s", "AISShieldViewController"];

    __break(1u);
  }

  qword_1003A73E8 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_1001E4E00()
{
  if (!sub_1001E4F28())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *AppleIDSetupUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyIntentAndChildSetupFlowItem.m" lineNumber:27 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1001E4F28()
{
  if (!qword_1003A73F0)
  {
    sub_1001E4FDC();
  }

  return qword_1003A73F0;
}

uint64_t sub_1001E4FDC()
{
  result = _sl_dlopen();
  qword_1003A73F0 = result;
  return result;
}

uint64_t sub_1001E53D8(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  result = [(objc_class *)a1[4].isa waitingForMigration];
  if (result)
  {
    oslog[0] = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v3, v4, "Managed configuration migration is taking a while; showing completing setup UI...", v5, 2u);
    }

    objc_storeStrong(oslog, 0);
    result = [(objc_class *)a1[4].isa setPaneVisible:1];
    if (a1[5].isa)
    {
      return (*(a1[5].isa + 2))();
    }
  }

  return result;
}

void sub_1001E54B4(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v13;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting managed configuration migration...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v4 = [(objc_class *)a1[4].isa managedConfiguration];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001E5618;
  v9 = &unk_10032AFD0;
  v10 = a1[4].isa;
  v11 = a1[5].isa;
  [v4 waitForMigrationIncludingPostRestoreMigration:1 completion:&v5];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

void sub_1001E5618(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = &_dispatch_main_q;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001E5710;
  v7 = &unk_10032AFD0;
  v8 = a1[4];
  v9[0] = a1[5];
  dispatch_async(v2, &v3);

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void sub_1001E5710(NSObject *a1)
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Managed configuration migration complete!", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa setWaitingForMigration:0];
  if (([(objc_class *)a1[4].isa isPaneVisible]& 1) != 0)
  {
    v4 = [(objc_class *)a1[4].isa delegate];
    [v4 flowItemDone:a1[4].isa];
  }

  else if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }
}

void sub_1001E5FC8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v18 = a1;
  v17 = 0;
  if (a2 == 1)
  {
    v17 = 0;
  }

  else if (a2 == 2)
  {
    v17 = 1;
  }

  if (v17)
  {
    oslog = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v15;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Beginning authentication and sign-in for iCloud account...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v5 = [*(a1 + 32) proximitySetupController];
    v6 = [v5 dependentController];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001E61A8;
    v11 = &unk_10032CC40;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    [v6 waitForViewController:&v7];

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
  }

  else if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001E61A8(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) setViewController:location[0]];
  v3 = *(a1 + 32);
  v4 = [v3 proximitySetupController];
  v5 = [v4 dependentController];
  [v5 setDelegate:v3];

  v6 = [*(a1 + 32) proximitySetupController];
  [v6 addObserver:*(a1 + 32)];

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), location[0] != 0);
  }

  objc_storeStrong(location, 0);
}

void sub_1001E6A98(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_1001E6FD4(uint64_t a1)
{
  v38 = a1;
  v37 = a1;
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 topViewController];
  v4 = [*(a1 + 32) viewController];
  v34 = 0;
  v32 = 0;
  isKindOfClass = 0;
  if (v3 == v4)
  {
    v35 = [*(a1 + 32) controllers];
    v34 = 1;
    v33 = [v35 firstObject];
    v32 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v32)
  {
  }

  if (v34)
  {
  }

  v36 = isKindOfClass & 1;
  v31 = [*(a1 + 32) presentedPasscodeFlow] & 1;
  v6 = 1;
  if ((isKindOfClass & 1) == 0)
  {
    v6 = v31;
  }

  v30 = v6;
  [*(a1 + 32) setPresentedPasscodeFlow:1];
  [*(a1 + 32) setPasscodeFlowCompletion:*(a1 + 40)];
  if (v30)
  {
    if (v31)
    {
      oslog = _BYLoggingFacility();
      v28 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = oslog;
        v8 = v28;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v7, v8, "Updating flow to show passcode flow next...", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v9 = [*(a1 + 32) miscState];
      [v9 setHasPresentedPasscodeFlow:0];

      [*(a1 + 32) _updateClassListWithPasscodeShownInitially:0];
    }

    v26 = _BYLoggingFacility();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v26;
      v11 = v25;
      sub_10006AA68(v24);
      _os_log_impl(&_mh_execute_header, v10, v11, "Presenting biometric/passcode setup during sign-in...", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    v12 = [*(a1 + 32) viewController];

    if (v12)
    {
      v13 = [*(a1 + 32) navigationFlowDelegate];
      v14 = [*(a1 + 32) viewController];
      v39 = v14;
      v15 = [NSArray arrayWithObjects:&v39 count:1];
      [v13 removeViewControllersOnNextPush:v15];
    }

    v16 = *(a1 + 32);
    v17 = [v16 controllers];
    v18 = [v17 lastObject];
    [v16 flowItemDone:v18];
  }

  else
  {
    v23 = _BYLoggingFacility();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v23;
      v20 = v22;
      sub_10006AA68(v21);
      _os_log_impl(&_mh_execute_header, v19, v20, "Updating flow to show passcode flow initially...", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    [*(a1 + 32) _updateClassListWithPasscodeShownInitially:1];
  }
}

void sub_1001E7A08(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_1001E7A58(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 setupFinished];
}

void sub_1001E7D78(NSObject *a1, char a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  [(objc_class *)a1[4].isa setSignInTask:0];
  v4 = [(objc_class *)a1[4].isa proximitySetupController];
  v5 = [v4 hasConnection];

  if (v5)
  {
    (*(a1[5].isa + 2))();
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog[0];
      v7 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v6, v7, "Prematurely ending dependent flow after sign-in due to loss of proximity connection", v8, 2u);
    }

    objc_storeStrong(oslog, 0);
    [(objc_class *)a1[4].isa _endFlowPrematurely];
  }

  objc_storeStrong(&location, 0);
}

void sub_1001E7F60(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v2 = [*(a1 + 32) passcodeFlowCompletion];
  v9 = 0;
  v3 = 0;
  if (!v2)
  {
    v10 = [*(a1 + 32) signInTask];
    v9 = 1;
    v3 = v10 == 0;
  }

  if (v9)
  {
  }

  if (v3)
  {
    oslog = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Prematurely ending dependent flow due to loss of proximity connection", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1 + 32) _endFlowPrematurely];
  }
}

void sub_1001E8C10(uint64_t a1)
{
  v1 = [*(a1 + 32) proximitySetupController];
  [v1 endPairing];
}

void sub_1001E912C(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] setShouldOnlySetActiveStoreAccount:0];
  if (location[0])
  {
    [a1[4] _authenticateNextAccount];
  }

  else
  {
    v3 = [a1[4] storeAccountsToSignIn];
    [v3 removeObjectAtIndex:0];

    [a1[4] _authenticateThenSignInNextAccount];
  }

  objc_storeStrong(location, 0);
}

void sub_1001E96D4(NSObject *a1, char a2, id obj)
{
  v21 = a1;
  v20 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v20)
  {
    [(objc_class *)a1[4].isa setActiveStoreAccount:a1[5].isa];
  }

  else
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
      _os_log_error_impl(&_mh_execute_header, oslog[0], v17, "Failed to make store account active: %{public}@", buf, 0xCu);
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
  v9 = sub_1001E996C;
  v10 = &unk_10032BCA0;
  v12 = a1[6].isa;
  v11 = location;
  dispatch_async(v5, &block);

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

uint64_t sub_1001E996C(uint64_t result)
{
  if (*(result + 40))
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32));
  }

  return result;
}

void sub_1001E9DC8(id *a1, void *a2, void *a3)
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
  v9 = sub_1001E9F18;
  v10 = &unk_10032ECE0;
  v11 = location[0];
  v13[0] = a1[4];
  v12 = v14;
  dispatch_async(v5, &block);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_1001E9F18(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = [*(a1 + 32) familyMembers];
  v3 = [v2 buddy_mapSet:&stru_10032ECB8];
  location[0] = [v3 allObjects];

  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(location, 0);
}

id sub_1001E9FD0(id a1, AMSFamilyMember *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] iTunesUsername];
  objc_storeStrong(location, 0);

  return v2;
}

void sub_1001EAAD4(NSObject *a1)
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
  v4 = [(objc_class *)a1[4].isa storeAppleIDController];
  [v4 showCredentialRecovery];
}

void sub_1001EAB98(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  v1 = [location[0] signInController];
  v2 = [v1 isMovingToParentViewController] ^ 1;

  if (v2)
  {
    v3 = [location[0] storeAppleIDController];
    [v3 cancelAuthentication];
  }

  objc_storeStrong(location, 0);
}

void sub_1001EAC2C(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25[1] = a1;
  v25[0] = objc_loadWeakRetained(a1 + 5);
  v5 = [v25[0] storeAppleIDController];
  v6 = [v25[0] signInController];
  [v5 setAuthAttemptLandingViewController:v6];

  if (location[0])
  {
    oslog = _BYLoggingFacility();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v23, "Beginning authentication for store account: %@...", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v7 = [v25[0] navigationController];
    v8 = [v25[0] passcodeCacheManager];
    v22 = [BuddyAppleIDAuthManager managerWithNavigationController:v7 passcodeCacheManager:v8];

    [v22 setServiceType:2];
    v9 = [v25[0] signInController];
    v10 = location[0];
    v11 = v26;
    v12 = [a1[4] altDSID];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1001EAFAC;
    v20 = &unk_10032D598;
    v21 = v25[0];
    [v22 authenticateWithSignInController:v9 username:v10 password:v11 altDSID:v12 completion:&v16];

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v15 = _BYLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [a1[4] username];
      sub_10006AE18(v28, v13);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skipping sign-in for %@...", v28, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    v14 = [v25[0] storeAccountsToSignIn];
    [v14 removeObjectAtIndex:0];

    [v25[0] _authenticateThenSignInNextAccount];
  }

  objc_storeStrong(v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void sub_1001EAFAC(id *a1, void *a2, void *a3)
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
  v9 = sub_1001EB0FC;
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

void sub_1001EB0FC(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if (a1[4].isa)
  {
    oslog[0] = _BYLoggingFacility();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v14 = 0;
      if (_BYIsInternalInstall())
      {
        isa = a1[4].isa;
      }

      else if (a1[4].isa)
      {
        v17 = [(objc_class *)a1[4].isa domain];
        v16 = 1;
        isa = [NSString stringWithFormat:@"<Error domain: %@, code %ld>", v17, [(objc_class *)a1[4].isa code]];
        v15 = isa;
        v14 = 1;
      }

      else
      {
        isa = 0;
      }

      sub_100071CBC(buf, isa);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v18, "Authentication failed: %{public}@", buf, 0xCu);
      if (v14)
      {
      }

      if (v16)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    v3 = [(objc_class *)a1[5].isa navigationController];
    v4 = [v3 topViewController];
    v5 = [(objc_class *)a1[5].isa signInController];

    if (v4 != v5)
    {
      v6 = [(objc_class *)a1[5].isa navigationController];
      v7 = [(objc_class *)a1[5].isa signInController];
      v8 = [v6 popToViewController:v7 animated:1];
    }
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
      _os_log_impl(&_mh_execute_header, v9, v10, "Authentication succeeded!", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    [(objc_class *)a1[5].isa _didAuthenticateWithAuthenticationResults:a1[6].isa];
  }
}

void sub_1001EB930(id *a1, char a2, id obj)
{
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v4 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001EBAC4;
  v9 = &unk_10032ED58;
  v10 = a1[4];
  v15 = v18 & 1;
  v11 = location;
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  dispatch_async(v4, &v5);

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_1001EBAC4(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  [*(a1 + 32) _stopSpinningForIdentifier:@"signin"];
  if (*(a1 + 72))
  {
    v15 = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v15;
      v9 = v14;
      sub_10006AA68(v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "Sign-in succeeded!", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    v10 = [*(a1 + 32) activeStoreAccount];
    v11 = v10 == 0;

    if (v11)
    {
      v12 = [*(a1 + 48) accountForService:AIDAServiceTypeStore];
      [*(a1 + 32) setActiveStoreAccount:v12];
    }

    [*(a1 + 32) _didSignInUsername:*(a1 + 56) altDSID:*(a1 + 64)];
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v16 = 0;
      if (_BYIsInternalInstall())
      {
        v2 = *(a1 + 40);
      }

      else if (*(a1 + 40))
      {
        v19 = [*(a1 + 40) domain];
        v18 = 1;
        v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v19, [*(a1 + 40) code]);
        v17 = v2;
        v16 = 1;
      }

      else
      {
        v2 = 0;
      }

      sub_100071CBC(buf, v2);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v20, "Sign-in failed: %{public}@", buf, 0xCu);
      if (v16)
      {
      }

      if (v18)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    v3 = [*(a1 + 32) storeAppleIDController];
    v4 = [v3 authAttemptLandingViewController];

    if (v4)
    {
      v5 = [*(a1 + 32) navigationController];
      v6 = [*(a1 + 32) storeAppleIDController];
      v7 = [v6 authAttemptLandingViewController];
      [v5 popToViewController:v7 completion:0];
    }
  }
}

void sub_1001EC0A0(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  oslog[1] = a1;
  [(objc_class *)a1[4].isa _stopSpinningForIdentifier:@"family"];
  if (v17)
  {
    oslog[0] = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, v17);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v15, "Failed to look up family members: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else if ([location[0] count])
  {
    v14 = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v20, location[0]);
      _os_log_impl(&_mh_execute_header, v14, v13, "Found family members: %@", v20, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    [(objc_class *)a1[4].isa _removeAccountsToSignIn:location[0]];
    v12 = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(objc_class *)a1[4].isa storeAccountsToSignIn];
      sub_10006AE18(v19, v5);
      _os_log_impl(&_mh_execute_header, v12, v11, "Accounts to sign-in after removing family members: %@", v19, 0xCu);
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v10;
      v7 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v6, v7, "Found no family members", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  [(objc_class *)a1[4].isa _authenticateThenSignInNextAccount];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_1001ECC00(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) setMediaLinkedAccountDSID:location[0]];
  dispatch_group_leave(*(a1 + 40));
  objc_storeStrong(location, 0);
}

uint64_t sub_1001ECC5C(uint64_t result)
{
  v1 = result;
  if (*(result + 40))
  {
    v2 = [*(result + 32) storeAccountsToSignIn];
    [v2 count];

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

void sub_1001ECDF0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v81 = 0;
  objc_storeStrong(&v81, a3);
  v80 = a1;
  [*(a1 + 32) setStoreAccountMap:location[0]];
  v5 = objc_alloc_init(NSMutableArray);
  [*(a1 + 32) setStoreAccountsToSignIn:v5];

  memset(__b, 0, sizeof(__b));
  v6 = [location[0] allKeys];
  v7 = [v6 countByEnumeratingWithState:__b objects:v87 count:16];
  if (v7)
  {
    v8 = *__b[2];
    do
    {
      for (i = 0; i < v7; ++i)
      {
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v6);
        }

        v79 = *(__b[1] + 8 * i);
        v10 = [*(a1 + 32) storeAccountMap];
        v77 = [v10 objectForKeyedSubscript:v79];

        v76 = [v77 objectForKeyedSubscript:@"dsid"];
        v75 = [v77 objectForKeyedSubscript:@"altDsid"];
        v11 = [BuddyStoreAccount alloc];
        v74 = [(BuddyStoreAccount *)v11 initWithUsername:v79 dsid:v76 altDSID:v75];
        v12 = [*(a1 + 32) storeAccountsToSignIn];
        [v12 addObject:v74];

        objc_storeStrong(&v74, 0);
        objc_storeStrong(&v75, 0);
        objc_storeStrong(&v76, 0);
        objc_storeStrong(&v77, 0);
      }

      v7 = [v6 countByEnumeratingWithState:__b objects:v87 count:16];
    }

    while (v7);
  }

  v13 = [*(a1 + 32) storeAccountsToSignIn];
  v67 = _NSConcreteStackBlock;
  v68 = -1073741824;
  v69 = 0;
  v70 = sub_1001ED7D8;
  v71 = &unk_10032EDF8;
  v72 = *(a1 + 32);
  v14 = [v13 indexOfObjectPassingTest:&v67];

  v73 = v14;
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [*(a1 + 32) storeAccountsToSignIn];
    v66 = [v15 objectAtIndexedSubscript:v73];

    v16 = [*(a1 + 32) storeAccountsToSignIn];
    [v16 removeObjectAtIndex:v73];

    v17 = [*(a1 + 32) storeAccountsToSignIn];
    [v17 insertObject:v66 atIndex:0];

    objc_storeStrong(&v66, 0);
  }

  if (v81)
  {
    v65 = 0x7FFFFFFFFFFFFFFFLL;
    for (j = 0; ; ++j)
    {
      v18 = j;
      v19 = [*(a1 + 32) storeAccountsToSignIn];
      v20 = [v19 count];

      if (v18 >= v20)
      {
        break;
      }

      v21 = [*(a1 + 32) storeAccountsToSignIn];
      v63 = [v21 objectAtIndexedSubscript:j];

      v22 = [v63 username];
      v23 = [v22 isEqualToString:v81];

      if (v23)
      {
        v65 = j;
        v62 = 4;
      }

      else
      {
        v62 = 0;
      }

      objc_storeStrong(&v63, 0);
      if (v62)
      {
        break;
      }
    }

    v61 = 0;
    if (v65 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = [BuddyStoreAccount alloc];
      v25 = [(BuddyStoreAccount *)v24 initWithUsername:v81 dsid:0 altDSID:0];
      v26 = v61;
      v61 = v25;
    }

    else
    {
      v28 = [*(a1 + 32) storeAccountsToSignIn];
      v29 = [v28 objectAtIndex:v65];
      v30 = v61;
      v61 = v29;

      v31 = [*(a1 + 32) storeAccountsToSignIn];
      [v31 removeObject:v61];
    }

    v27 = [*(a1 + 32) storeAccountsToSignIn];
    [v27 insertObject:v61 atIndex:0];

    [*(a1 + 32) setActiveBuddyStoreAccount:v61];
    objc_storeStrong(&v61, 0);
  }

  v32 = [*(a1 + 32) _primaryAccountInfo];
  v60 = [v32 username];

  v33 = [*(a1 + 32) _primaryAccountInfo];
  v59 = [v33 altDSID];

  oslog = _BYLoggingFacility();
  v57 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [*(a1 + 32) storeAccountsToSignIn];
    sub_10006AE18(buf, v34);
    _os_log_impl(&_mh_execute_header, oslog, v57, "Store accounts to sign in: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v56 = _BYLoggingFacility();
  v55 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(v85, v60);
    _os_log_impl(&_mh_execute_header, v56, v55, "Primary Apple ID: %@", v85, 0xCu);
  }

  objc_storeStrong(&v56, 0);
  v54 = _BYLoggingFacility();
  v53 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [*(a1 + 32) activeBuddyStoreAccount];
    sub_10006AE18(v84, v35);
    _os_log_impl(&_mh_execute_header, v54, v53, "Active store account: %@", v84, 0xCu);
  }

  objc_storeStrong(&v54, 0);
  v36 = [*(a1 + 32) _primaryAccountInfo];
  v52 = [v36 dsid];

  v37 = [*(a1 + 32) storeAccountsToSignIn];
  v44 = _NSConcreteStackBlock;
  v45 = -1073741824;
  v46 = 0;
  v47 = sub_1001ED88C;
  v48 = &unk_10032EE20;
  v49 = v59;
  v50 = v52;
  v38 = [v37 indexOfObjectPassingTest:&v44];

  v51 = v38;
  if (v38 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v43 = _BYLoggingFacility();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [*(a1 + 32) storeAccountsToSignIn];
      v40 = [v39 objectAtIndexedSubscript:v51];
      v41 = [v40 username];
      sub_10006AE18(v83, v41);
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Skipping owner account %@...", v83, 0xCu);
    }

    objc_storeStrong(&v43, 0);
    v42 = [*(a1 + 32) storeAccountsToSignIn];
    [v42 removeObjectAtIndex:v51];
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1001ED7D8(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = a1[4];
  v4 = [location[0] username];
  v5 = [location[0] altDSID];
  LOBYTE(v3) = [v3 _isPrimaryAccountWithUsername:v4 orAltDSID:v5];

  objc_storeStrong(location, 0);
  return v3 & 1;
}

uint64_t sub_1001ED88C(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] altDSID];
  v4 = [v3 isEqualToString:a1[4]];

  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v5 = [location[0] dsid];
    v8 = [v5 isEqualToString:a1[5]] & 1;
  }

  objc_storeStrong(location, 0);
  return v8 & 1;
}

id sub_1001EE048(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1001EE080(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[2] = a1;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    dispatch_block_cancel(*(*(*(a1 + 40) + 8) + 40));
  }

  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001EE1B8;
  v8 = &unk_10032EE70;
  v10[1] = *(a1 + 48);
  v10[0] = *(a1 + 32);
  v9 = location[0];
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1001EE1B8(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  if ((*(*(a1[6].isa + 1) + 24) & 1) == 0)
  {
    *(*(a1[6].isa + 1) + 24) = 1;
    if (a1[5].isa)
    {
      v2 = [(objc_class *)a1[4].isa value];
      v3 = [v2 BOOLValue];

      if (v3)
      {
        oslog[0] = _BYLoggingFacility();
        v17 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
        {
          v4 = [(objc_class *)a1[4].isa value];
          sub_100071CBC(buf, v4);
          _os_log_impl(&_mh_execute_header, oslog[0], v17, "Media linked account result: %{public}@", buf, 0xCu);
        }

        objc_storeStrong(oslog, 0);
        isa = a1[5].isa;
        v6 = [(objc_class *)a1[4].isa value];
        (*(isa + 2))(isa, v6);
      }

      else
      {
        v16 = _BYLoggingFacility();
        v15 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v16;
          v8 = v15;
          sub_10006AA68(v14);
          _os_log_impl(&_mh_execute_header, v7, v8, "No media linked account found", v14, 2u);
        }

        objc_storeStrong(&v16, 0);
        (*(a1[5].isa + 2))();
      }
    }

    else
    {
      v13 = _BYLoggingFacility();
      v12 = 16;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v9 = v13;
        v10 = v12;
        sub_10006AA68(v11);
        _os_log_error_impl(&_mh_execute_header, v9, v10, "Completion handler missing.", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
    }
  }
}

uint64_t sub_1001EE424(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = 16;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_error_impl(&_mh_execute_header, v2, v3, "AMS cache promise did not respond in time. Timing out!", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  return (*(a1[4].isa + 2))();
}

void sub_1001EE4DC(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    dispatch_block_perform(DISPATCH_BLOCK_ASSIGN_CURRENT, *(*(*(a1 + 32) + 8) + 40));
  }
}

void sub_1001EE524(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  oslog[1] = a1;
  if (v17)
  {
    oslog[0] = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v11 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v17;
      }

      else if (v17)
      {
        v14 = [v17 domain];
        v13 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v14, [v17 code]);
        v12 = v5;
        v11 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v15, "AMS cache update failed to resolve with error: %{public}@", buf, 0xCu);
      if (v11)
      {
      }

      if (v13)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    (*(a1[4].isa + 2))();
  }

  else
  {
    v10 = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v10;
      v7 = v9;
      sub_10006AA68(v8);
      _os_log_impl(&_mh_execute_header, v6, v7, "AMS cache updated", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_1001EE798(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  oslog[1] = a1;
  if (v22)
  {
    oslog[0] = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v16 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = v22;
      }

      else if (v22)
      {
        v19 = [v22 domain];
        v18 = 1;
        v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v19, [v22 code]);
        v17 = v5;
        v16 = 1;
      }

      else
      {
        v5 = 0;
      }

      sub_100071CBC(buf, v5);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v20, "AMS cache promise failure to resolve with error: %{public}@", buf, 0xCu);
      if (v16)
      {
      }

      if (v18)
      {
      }
    }

    objc_storeStrong(oslog, 0);
    (*(a1[4].isa + 2))();
  }

  else if ([location[0] isStale])
  {
    v15 = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v15;
      v7 = v14;
      sub_10006AA68(v13);
      _os_log_impl(&_mh_execute_header, v6, v7, "AMS cache promise resolved with stale response. Wait for update.", v13, 2u);
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
      _os_log_impl(&_mh_execute_header, v8, v9, "AMS cache promise resolved with non-stale response", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}