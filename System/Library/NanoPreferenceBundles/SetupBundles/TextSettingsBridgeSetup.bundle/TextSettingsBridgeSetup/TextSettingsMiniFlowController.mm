@interface TextSettingsMiniFlowController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)skipControllerForExpressMode:(id)a3;
- (BOOL)holdBeforeDisplaying;
- (TextSettingsMiniFlowController)init;
- (id)viewController;
- (void)dealloc;
- (void)didReceiveIncomingData:(id)a3;
- (void)didSelectContentSizeCategory:(id)a3 boldTextEnabled:(BOOL)a4;
- (void)miniFlowStepComplete:(id)a3;
- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4;
@end

@implementation TextSettingsMiniFlowController

- (TextSettingsMiniFlowController)init
{
  v8.receiver = self;
  v8.super_class = TextSettingsMiniFlowController;
  v2 = [(TextSettingsMiniFlowController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.accessibility.ids.services.queue", v3);
    [(TextSettingsMiniFlowController *)v2 setIdsServicesQueue:v4];

    v5 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(TextSettingsMiniFlowController *)v2 setControllerHoldTimeoutTimer:v5];

    v6 = +[AXIDSServices sharedInstance];
    [v6 registerForIncomingData:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[AXIDSServices sharedInstance];
  [v3 deregisterForIncomingData:self];

  v4.receiver = self;
  v4.super_class = TextSettingsMiniFlowController;
  [(TextSettingsMiniFlowController *)&v4 dealloc];
}

+ (BOOL)controllerNeedsToRun
{
  v2 = getActiveDevice();
  v3 = [[NSUUID alloc] initWithUUIDString:@"B4FBD189-BF37-4C38-A2C3-A0471795086C"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

+ (BOOL)skipControllerForExpressMode:(id)a3
{
  v3 = a3;
  v4 = getWatchContentSize(v3);
  v5 = boldTextKeyExistsOnDevice(v3);

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = AXLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v13 = 0;
      v9 = "[TextSettingsMiniFlowController] skip for express mode";
      v10 = &v13;
LABEL_9:
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else if (v8)
  {
    v12 = 0;
    v9 = "[TextSettingsMiniFlowController] do not skip for express mode";
    v10 = &v12;
    goto LABEL_9;
  }

  return v6;
}

- (BOOL)holdBeforeDisplaying
{
  v3 = [(TextSettingsMiniFlowController *)self receivedCachedScreenshots];
  if (v3)
  {
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      v5 = "[TextSettingsMiniFlowController] already received snapshots, do not hold";
LABEL_8:
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v5, location, 2u);
    }
  }

  else
  {
    if (![(TextSettingsMiniFlowController *)self controllerIsOnHold])
    {
      [(TextSettingsMiniFlowController *)self setControllerIsOnHold:1];
      objc_initWeak(location, self);
      v6 = [(TextSettingsMiniFlowController *)self controllerHoldTimeoutTimer];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __54__TextSettingsMiniFlowController_holdBeforeDisplaying__block_invoke;
      v9[3] = &unk_C470;
      objc_copyWeak(&v10, location);
      [v6 afterDelay:v9 processBlock:30.0];

      v7 = [(TextSettingsMiniFlowController *)self idsServicesQueue];
      dispatch_async(v7, &__block_literal_global);

      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }

    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      v5 = "[TextSettingsMiniFlowController] continue to hold";
      goto LABEL_8;
    }
  }

  return v3 ^ 1;
}

void __54__TextSettingsMiniFlowController_holdBeforeDisplaying__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v3 buddyControllerReleaseHoldAndSkip:v4];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setControllerIsOnHold:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setReceivedCachedScreenshots:0];
}

void __54__TextSettingsMiniFlowController_holdBeforeDisplaying__block_invoke_2(id a1)
{
  v1 = AXLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "[TextSettingsMiniFlowController] publishing sendSnapshots request", v4, 2u);
  }

  v2 = +[AXIDSServices sharedInstance];
  v3 = [v2 publishMessage:&off_C868 priority:2 requestingResponse:1];
}

- (id)viewController
{
  v3 = [(TextSettingsMiniFlowController *)self textSettingsViewController];

  if (!v3)
  {
    v4 = [(TextSettingsMiniFlowController *)self delegate];
    v5 = [v4 activePairingDevice];

    v6 = [[TextSettingsViewController alloc] initWithDevice:v5 observer:self];
    [(TextSettingsMiniFlowController *)self setTextSettingsViewController:v6];

    v7 = [(TextSettingsMiniFlowController *)self textSettingsViewController];
    [v7 setMiniFlowDelegate:self];
  }

  return [(TextSettingsMiniFlowController *)self textSettingsViewController];
}

- (void)miniFlowStepComplete:(id)a3
{
  v4 = [(TextSettingsMiniFlowController *)self delegate];
  [v4 buddyControllerDone:self];
}

- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4
{
  v5 = objc_alloc_init(a4);
  [v5 setMiniFlowDelegate:self];
  [(TextSettingsMiniFlowController *)self pushController:v5 animated:1];
}

- (void)didReceiveIncomingData:(id)a3
{
  v4 = a3;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[TextSettingsMiniFlowController] did receive incoming data", buf, 2u);
  }

  v6 = [(TextSettingsMiniFlowController *)self controllerHoldTimeoutTimer];
  [v6 cancel];

  v7 = [(TextSettingsMiniFlowController *)self idsServicesQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __57__TextSettingsMiniFlowController_didReceiveIncomingData___block_invoke;
  v9[3] = &unk_C448;
  v10 = v4;
  v11 = self;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __57__TextSettingsMiniFlowController_didReceiveIncomingData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:AXIDSServiceDataKey];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v3, v4, v5, objc_opt_class(), 0];
  v31 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v2 error:&v31];
  v8 = v31;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v8;
    v23 = v7;
    v24 = v6;
    v25 = a1;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [v9 objectForKeyedSubscript:v14];
          v16 = [v15 objectForKeyedSubscript:&__kCFBooleanFalse];
          v17 = [UIImage imageWithData:v16];

          v18 = [v9 objectForKeyedSubscript:v14];
          v19 = [v18 objectForKeyedSubscript:&__kCFBooleanTrue];
          v20 = [UIImage imageWithData:v19];

          cacheTextPreviewImage(v17, v14, 0);
          cacheTextPreviewImage(v20, v14, 1);
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v26 = *(v25 + 40);
    AXPerformBlockOnMainThread();
    v7 = v23;
    v6 = v24;
    v8 = v22;
  }

  else
  {
    v21 = AXLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __57__TextSettingsMiniFlowController_didReceiveIncomingData___block_invoke_cold_1(v21);
    }
  }
}

void __57__TextSettingsMiniFlowController_didReceiveIncomingData___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setReceivedCachedScreenshots:1];
  v2 = [*(a1 + 32) textSettingsViewController];
  [v2 updateWatchScreenImageViewAndNotifyObserver:0];

  if ([*(a1 + 32) controllerIsOnHold])
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[TextSettingsMiniFlowController] releasing hold on controller", v5, 2u);
    }

    [*(a1 + 32) setControllerIsOnHold:0];
    v4 = [*(a1 + 32) delegate];
    [v4 buddyControllerReleaseHold:*(a1 + 32)];
  }
}

- (void)didSelectContentSizeCategory:(id)a3 boldTextEnabled:(BOOL)a4
{
  v6 = a3;
  v7 = [(TextSettingsMiniFlowController *)self idsServicesQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __79__TextSettingsMiniFlowController_didSelectContentSizeCategory_boldTextEnabled___block_invoke;
  v9[3] = &unk_C500;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, v9);
}

void __79__TextSettingsMiniFlowController_didSelectContentSizeCategory_boldTextEnabled___block_invoke(uint64_t a1)
{
  v9 = @"updateUI";
  v1 = *(a1 + 32);
  v7[1] = @"boldTextEnabled";
  v8[0] = v1;
  v7[0] = @"contentSizeCategory";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v8[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  v5 = +[AXIDSServices sharedInstance];
  v6 = [v5 publishMessage:v4 priority:2 requestingResponse:0];
}

@end