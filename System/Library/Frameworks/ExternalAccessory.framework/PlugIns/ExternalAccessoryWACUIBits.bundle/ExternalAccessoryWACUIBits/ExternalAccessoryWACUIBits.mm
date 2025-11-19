void sub_1018(id a1)
{
  qword_CCD0 = objc_alloc_init(EAWiFiUnconfiguredAccessoryBrowserManager);

  _objc_release_x1();
}

void sub_1588(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

void sub_15F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 1)
  {
    NSLog(@"WAC: BrowserManager: Extension completed request, items: %@", a3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRemoteViewController:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setCurrentRequestIdentifier:0];
}

void sub_1678(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 40) == 1)
  {
    v4 = [a3 localizedDescription];
    NSLog(@"WAC: BrowserManager: Extension cancelled request, error: %@", v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRemoteViewController:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setCurrentRequestIdentifier:0];
}

void sub_1710(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    NSLog(@"WAC: BrowserManager: WACUI Interrupted, attempting setup again.");
  }

  dispatch_async(workQueue, &stru_8310);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCurrentRequestIdentifier:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setExtension:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setRemoteViewController:0];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 purgeAccessoriesSet];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 currentBrowserState];

  if (v9 == &dword_0 + 3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_18F0;
    block[3] = &unk_8338;
    objc_copyWeak(&v14, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v14);
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 updateState:1];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_193C;
  v11[3] = &unk_8338;
  objc_copyWeak(&v12, (a1 + 32));
  dispatch_async(&_dispatch_main_q, v11);
  objc_destroyWeak(&v12);
}

void sub_18F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissWithStatus:2];
}

void sub_193C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setup];
}

intptr_t sub_197C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setRemoteViewController:v5];

  v8 = *(a1 + 32);
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 remoteViewController];
  [v10 setParent:v8];

  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 setCurrentRequestIdentifier:v6];

  if (*(a1 + 48) == 1)
  {
    NSLog(@"WAC: BrowserManager: WACUI setup complete");
  }

  v12 = setupSemaphore;

  return dispatch_semaphore_signal(v12);
}

void sub_1A98(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    NSLog(@"### WAC XPC: Error: %@", a2);
  }
}

void sub_1BE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    NSLog(@"### WAC XPC:%s:%d", "[EAWiFiUnconfiguredAccessoryBrowserManager startSearchingForUnconfiguredAccessories]_block_invoke", 292);
    v1 = *(a1 + 32);
  }

  v3 = *(v1 + 80);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1CA0;
  v5[3] = &unk_83F0;
  v5[4] = v1;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
  [v4 startSearchForAccessoriesNeedingReprovisioning];
}

void sub_1CA0(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    NSLog(@"### WAC XPC: Error: %@", a2);
  }
}

void sub_1CE0(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteViewController];
  v1 = [v2 serviceViewControllerProxy];
  [v1 backendStartSearch];
}

void sub_1DF0(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteViewController];
  v1 = [v2 serviceViewControllerProxy];
  [v1 backendStopSearch];
}

void sub_1EE4(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteViewController];
  v1 = [v2 serviceViewControllerProxy];
  [v1 cancelActiveConfiguration];
}

void sub_2174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained isConfiguring];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 56));
    [v4 setIsConfiguring:1];

    v5 = *(a1 + 32);
    v6 = objc_loadWeakRetained((a1 + 56));
    [v6 setAccessoryBeingConfigured:v5];

    v7 = *(a1 + 40);
    v8 = objc_loadWeakRetained((a1 + 56));
    [v8 setTargetViewController:v7];

    v9 = *(a1 + 48);
    v10 = *(v9 + 80);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_2348;
    v18[3] = &unk_83F0;
    v18[4] = v9;
    v11 = [v10 remoteObjectProxyWithErrorHandler:v18];
    v12 = *(*(a1 + 48) + 88);
    v13 = [*(a1 + 32) macAddress];
    v14 = [v12 objectForKey:v13];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_2388;
    v15[3] = &unk_8440;
    v15[4] = *(a1 + 48);
    v16 = *(a1 + 32);
    objc_copyWeak(&v17, (a1 + 56));
    [v11 reconfigureAccessory:v14 withReply:v15];

    objc_destroyWeak(&v17);
  }
}

void sub_2348(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    NSLog(@"### WAC XPC: Error: %@", a2);
  }
}

void sub_2388(id *a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v5 = a1[4];
  v6 = v5[8];
  if (a2 != 3)
  {
    if (a2 == 1)
    {
      if (v5[8])
      {
        NSLog(@"### WAC: %s:%d: Reprovisioning not required for this device", "[EAWiFiUnconfiguredAccessoryBrowserManager configureAccessory:withConfigurationUIOnViewController:]_block_invoke_3", 375);
LABEL_15:
        v5 = a1[4];
      }
    }

    else
    {
      if (!a2)
      {
        if (v5[8])
        {
          NSLog(@"### WAC: %s:%d: Reprovision Success", "[EAWiFiUnconfiguredAccessoryBrowserManager configureAccessory:withConfigurationUIOnViewController:]_block_invoke_3", 354);
          v5 = a1[4];
        }

        v7 = &kErrorNone;
        goto LABEL_17;
      }

      if (v5[8])
      {
        NSLog(@"### WAC: %s:%d: status: %d: error: %@", "[EAWiFiUnconfiguredAccessoryBrowserManager configureAccessory:withConfigurationUIOnViewController:]_block_invoke_3", 381, a2, v15);
        goto LABEL_15;
      }
    }

    v7 = &kErrorUnexpected;
LABEL_17:
    [v5 dismissWithStatus:*v7];
    goto LABEL_20;
  }

  if (v5[8])
  {
    NSLog(@"### WAC: %s:%d: Accessory is SecureWAC/HomeKit but not part of user homes", "[EAWiFiUnconfiguredAccessoryBrowserManager configureAccessory:withConfigurationUIOnViewController:]_block_invoke_3", 359);
    v5 = a1[4];
  }

  v8 = *(v5 + 11);
  v9 = [a1[5] macAddress];
  v10 = [v8 objectForKey:v9];
  [a1[4] setUnconfiguredDeviceID:v10];

  if (MGGetBoolAnswer())
  {
    v11 = [a1[5] name];
    v12 = [NSString stringWithFormat:@"%@ is an unconfigured Home Accessory", v11];
    v13 = @"SECURE_WAC_WLAN_MESSAGE";
  }

  else
  {
    NSLog(@"### WAC: %s:%d Other Region SKU", "[EAWiFiUnconfiguredAccessoryBrowserManager configureAccessory:withConfigurationUIOnViewController:]_block_invoke_3", 368);
    v11 = [a1[5] name];
    v12 = [NSString stringWithFormat:@"%@ is an unconfigured Home Accessory", v11];
    v13 = @"SECURE_WAC_WIFI_MESSAGE";
  }

  [EAPostAlert EANotificationPostAccessoryNotification:v12 forMsg:v13 forDefaultButton:@"OKAY_STRING" withAlternateButton:@"CANCEL_STRING" forNotification:&qword_CCD8 withCallback:sub_25E4 andTimeout:0.0];

LABEL_20:
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setIsConfiguring:0];
}

void sub_25E4(const void *a1, uint64_t a2)
{
  NSLog(@"### WAC: %s:%d responseFlags: %lx", "_notificationCleanup", 42, a2);
  printf("### WAC: %s:%d responseFlags: %lx", "_notificationCleanup", 43, a2);
  if (qword_CCD8 == a1)
  {
    CFRelease(a1);
    qword_CCD8 = 0;
  }

  if (a2 == 1)
  {
    v4 = +[EAWiFiUnconfiguredAccessoryBrowserManager sharedInstance];
    [v4 dismissWithStatus:4294960573];
  }

  else
  {
    if (a2)
    {
      return;
    }

    v4 = +[EAWiFiUnconfiguredAccessoryBrowserManager sharedInstance];
    [v4 openHomeAppForConfiguration];
  }
}

void sub_26E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained isConfiguring];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 56));
    [v4 setIsConfiguring:1];

    dispatch_async(workQueue, &stru_8488);
    v5 = *(a1 + 32);
    v6 = objc_loadWeakRetained((a1 + 56));
    [v6 setAccessoryBeingConfigured:v5];

    v7 = *(a1 + 40);
    v8 = objc_loadWeakRetained((a1 + 56));
    [v8 setTargetViewController:v7];

    v9 = objc_loadWeakRetained((a1 + 56));
    v10 = [v9 remoteViewController];
    v11 = [v10 serviceViewControllerProxy];
    v12 = [*(a1 + 32) macAddress];
    [v11 backendConfigureAirPortAssistantWithTargetMACAddress:v12];

    v13 = objc_loadWeakRetained((a1 + 56));
    v14 = [v13 remoteViewController];
    [v14 setModalPresentationStyle:2];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_2898;
    v15[3] = &unk_84B0;
    objc_copyWeak(&v16, (a1 + 56));
    v15[4] = *(a1 + 48);
    dispatch_sync(&_dispatch_main_q, v15);
    objc_destroyWeak(&v16);
  }
}

void sub_2898(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained targetViewController];
  v3 = [*(a1 + 32) remoteViewController];
  [v2 presentViewController:v3 animated:1 completion:0];
}

void *sub_3520(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    NSLog(@"%s: failed to launch URL %@, error: %@", "[EAWiFiUnconfiguredAccessoryBrowserManager openURL:]_block_invoke", result[4], a3);
    v4 = v3[5];

    return [v4 dismissWithStatus:4294960560];
  }

  return result;
}