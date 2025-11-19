@interface GCAnalytics
+ (id)instance;
- (BOOL)sendEvent:(id)a3 withXPCPayloadBuilder:(id)a4;
- (GCAnalytics)init;
- (id)getBundleID;
- (void)checkMultipleControllers;
- (void)dealloc;
- (void)publishController:(id)a3;
- (void)runInputPollTimer;
- (void)sendEvent:(id)a3 withXPCPayload:(id)a4;
- (void)sendHapticsClientDestroyedEventForBundleID:(id)a3 productCategory:(id)a4 totalPlayers:(int)a5 sessionTotalDuration:(int)a6 sessionActiveDuration:(int)a7 terminationReason:(id)a8;
- (void)sendHapticsEngineCreatedEventForBundleID:(id)a3 productCategory:(id)a4 hapticsLocality:(id)a5;
- (void)sendHapticsErrorRaisedEventFromSource:(id)a3 productCategory:(id)a4 errorType:(id)a5;
- (void)sendHapticsPlayerDestroyedEventForBundleID:(id)a3 productCategory:(id)a4 totalEventsProcessed:(int)a5 transientEventsProcessed:(int)a6 continuousEventsProcessed:(int)a7 parameterCurvesProcessed:(int)a8 sessionTotalDuration:(int)a9 sessionActiveDuration:(int)a10;
- (void)sendRPKitInstantCaptureBufferStartedEventForBundleID:(id)a3;
- (void)sendRPKitInstantCaptureSavedEventForBundleID:(id)a3 productCategory:(id)a4;
- (void)sendRPKitManualRecordingSavedEventForBundleID:(id)a3 productCategory:(id)a4 duration:(int)a5;
- (void)sendRPKitScreenshotSavedEventForBundleID:(id)a3 productCategory:(id)a4;
- (void)sendSettingsButtonCustomizedEventForBundleID:(id)a3 productCategory:(id)a4 button:(id)a5;
- (void)sendSettingsCustomizationsResetEventForBundleID:(id)a3 productCategory:(id)a4;
- (void)sendSettingsCustomizationsToggledEventForBundleID:(id)a3 productCategory:(id)a4 toggledOn:(BOOL)a5;
- (void)sendSettingsIdentifyControllerEventForProductCategory:(id)a3;
- (void)sendSettingsRPKitGesturesCustomized:(id)a3 from:(id)a4;
- (void)unpublishController:(id)a3;
@end

@implementation GCAnalytics

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__GCAnalytics_GameController__instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (instance_dispatcher != -1)
  {
    dispatch_once(&instance_dispatcher, block);
  }

  v2 = instance_sharedInstance;

  return v2;
}

void __39__GCAnalytics_GameController__instance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = instance_sharedInstance;
  instance_sharedInstance = v1;
}

- (id)getBundleID
{
  bundleID = self->_bundleID;
  if (!bundleID)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = self->_bundleID;
    self->_bundleID = v5;

    bundleID = self->_bundleID;
    if (!bundleID)
    {
      v7 = [MEMORY[0x1E696AE30] processInfo];
      v8 = [v7 processName];
      v9 = self->_bundleID;
      self->_bundleID = v8;

      bundleID = self->_bundleID;
    }
  }

  return bundleID;
}

- (void)dealloc
{
  [(NSTimer *)self->_eventPollTimer invalidate];
  eventPollTimer = self->_eventPollTimer;
  self->_eventPollTimer = 0;

  v4.receiver = self;
  v4.super_class = GCAnalytics;
  [(GCAnalytics *)&v4 dealloc];
}

id __54__GCAnalytics_GameController__sendInputsPressedEvent___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF90];
  v9 = @"bundleID";
  v3 = [*(a1 + 32) getBundleID];
  v10[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [v2 dictionaryWithDictionary:v4];

  v6 = convertToDict(*(a1 + 40), numberFromInt);
  [v5 addEntriesFromDictionary:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)checkMultipleControllers
{
  v19 = *MEMORY[0x1E69E9840];
  if (checkMultipleControllers_maximumControllersConnectedForSentEvent <= 3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(NSMutableDictionary *)self->_controllersData allValues];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (([v10 isATVRemote] & 1) == 0)
          {
            ++v7;
            v11 = [v10 detailedProductCategory];
            [v3 addObject:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    [v3 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
    if (v7 >= 2 && v7 > checkMultipleControllers_maximumControllersConnectedForSentEvent)
    {
      v13 = v3;
      AnalyticsSendEventLazy();
      checkMultipleControllers_maximumControllersConnectedForSentEvent = v7;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __55__GCAnalytics_GameController__checkMultipleControllers__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) getBundleID];
  [v2 setObject:v3 forKeyedSubscript:@"bundleID"];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", getpid()];
  [v2 setObject:v4 forKeyedSubscript:@"processID"];

  if ([*(a1 + 40) count])
  {
    v5 = [*(a1 + 40) objectAtIndexedSubscript:0];
    [v2 setObject:v5 forKeyedSubscript:@"controller1"];
  }

  if ([*(a1 + 40) count] >= 2)
  {
    v6 = [*(a1 + 40) objectAtIndexedSubscript:1];
    [v2 setObject:v6 forKeyedSubscript:@"controller2"];
  }

  if ([*(a1 + 40) count] >= 3)
  {
    v7 = [*(a1 + 40) objectAtIndexedSubscript:2];
    [v2 setObject:v7 forKeyedSubscript:@"controller3"];
  }

  if ([*(a1 + 40) count] >= 4)
  {
    v8 = [*(a1 + 40) objectAtIndexedSubscript:3];
    [v2 setObject:v8 forKeyedSubscript:@"controller4"];
  }

  return v2;
}

- (void)runInputPollTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__GCAnalytics_GameController__runInputPollTimer__block_invoke;
  block[3] = &unk_1E8418C28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__GCAnalytics_GameController__runInputPollTimer__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__GCAnalytics_GameController__runInputPollTimer__block_invoke_2;
  v5[3] = &unk_1E8418E90;
  v5[4] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v5 block:10.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t __48__GCAnalytics_GameController__runInputPollTimer__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 8) count];
  if (result)
  {
    v13 = 0u;
    memset(v14, 0, 60);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [*(*(a1 + 32) + 8) allValues];
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

          *&v8 = batchInputData(v14, *(*(&v10 + 1) + 8 * v7++));
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:{16, v8}];
      }

      while (v5);
    }

    result = [*(a1 + 32) sendInputsPressedEvent:v14];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)publishController:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__GCAnalytics_GameController__publishController___block_invoke;
  block[3] = &unk_1E8418C28;
  block[4] = self;
  if (publishController__dispatcher != -1)
  {
    dispatch_once(&publishController__dispatcher, block);
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  dataFromController(v4, &v11);
  controllersData = self->_controllersData;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "deviceHash")}];
  [(NSMutableDictionary *)controllersData setObject:v4 forKey:v6];

  v7 = MEMORY[0x1E69E9820];
  v8 = v11;
  v9 = *(&v11 + 1);
  v10 = v12;
  AnalyticsSendEventLazy();
  [(GCAnalytics *)self checkMultipleControllers:v7];
}

id __49__GCAnalytics_GameController__publishController___block_invoke_2(uint64_t a1)
{
  v18[9] = *MEMORY[0x1E69E9840];
  v17[0] = @"productCategoryName";
  v17[1] = @"connectionCount";
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v18[0] = *(v3 + 8);
  v18[1] = &unk_1F4E8E000;
  v17[2] = @"bundleID";
  v4 = MEMORY[0x1E695DF90];
  v5 = [v2 getBundleID];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v18[2] = v5;
  v18[3] = v6;
  v17[3] = @"vendorName";
  v17[4] = @"profileName";
  v18[4] = v7;
  v17[5] = @"isFormFitting";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  v18[5] = v8;
  v17[6] = @"hasClickableThumbsticks";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 65)];
  v18[6] = v9;
  v17[7] = @"isSiriRemote";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 66)];
  v18[7] = v10;
  v17[8] = @"isPhysicalRemote";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 67)];
  v18[8] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:9];
  v13 = [v4 dictionaryWithDictionary:v12];

  v14 = convertToDict((a1 + 68), stringFromState);
  [v13 addEntriesFromDictionary:v14];

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)unpublishController:(id)a3
{
  controllersData = self->_controllersData;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "deviceHash")}];
  [(NSMutableDictionary *)controllersData removeObjectForKey:v4];
}

id __50__GCAnalytics_GameController__onSiriMotionEnabled__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"bundleID";
  v1 = [*(a1 + 32) getBundleID];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)sendSettingsCustomizationsToggledEventForBundleID:(id)a3 productCategory:(id)a4 toggledOn:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  v8 = @"N/A";
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = @"N/A";
  }

  if (v7)
  {
    v8 = v7;
  }

  v12 = v9;
  v13 = v8;
  v10 = v8;
  v11 = v9;
  AnalyticsSendEventLazy();
}

id __110__GCAnalytics_SettingsAnalytics__sendSettingsCustomizationsToggledEventForBundleID_productCategory_toggledOn___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"bundleID";
  v6[1] = @"productCategory";
  v1 = *(a1 + 40);
  v7[0] = *(a1 + 32);
  v7[1] = v1;
  v6[2] = @"customizationsToggledOn";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v7[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)sendSettingsCustomizationsResetEventForBundleID:(id)a3 productCategory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = @"N/A";
  if (!v5)
  {
    v5 = @"N/A";
  }

  if (v6)
  {
    v7 = v6;
  }

  v10 = v5;
  v11 = v7;
  v8 = v7;
  v9 = v5;
  AnalyticsSendEventLazy();
}

id __98__GCAnalytics_SettingsAnalytics__sendSettingsCustomizationsResetEventForBundleID_productCategory___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"bundleID";
  v5[1] = @"productCategory";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)sendSettingsButtonCustomizedEventForBundleID:(id)a3 productCategory:(id)a4 button:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = @"N/A";
    }

    if (!v8)
    {
      v8 = @"N/A";
    }

    v7 = v10;
    v8 = v8;
    v11 = v9;
    AnalyticsSendEventLazy();
  }
}

id __102__GCAnalytics_SettingsAnalytics__sendSettingsButtonCustomizedEventForBundleID_productCategory_button___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5[0] = @"bundleID";
  v5[1] = @"productCategory";
  v6 = v1;
  v5[2] = @"buttonName";
  v7 = *(a1 + 48);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)sendSettingsIdentifyControllerEventForProductCategory:(id)a3
{
  v3 = a3;
  v4 = @"N/A";
  if (v3)
  {
    v4 = v3;
  }

  v6 = v4;
  v5 = v4;
  AnalyticsSendEventLazy();
}

id __88__GCAnalytics_SettingsAnalytics__sendSettingsIdentifyControllerEventForProductCategory___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"productCategory";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id __93__GCAnalytics_SettingsAnalytics__sendSettingsDevicesEventForTotalCustomizedControllersCount___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"customizedControllersCount";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id __93__GCAnalytics_SettingsAnalytics__sendSettingsCustomizedAppsEventForTotalCustomizedAppsCount___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"customizedAppsCount";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)sendSettingsRPKitGesturesCustomized:(id)a3 from:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = getGCSettingsLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v5;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_1D2CD5000, v7, OS_LOG_TYPE_DEFAULT, "sendSettingsRPKitGesturesCustomized %@, %@", buf, 0x16u);
  }

  if (v5)
  {
    if (v6)
    {
      v8 = [v5 controllerElementMappingKey];

      if (v8)
      {
        v26 = objc_opt_new();
        v9 = [v5 singlePressGesture];
        if (v9 != [v6 singlePressGesture])
        {
          v10 = GCSystemGestureModeToString([v5 singlePressGesture]);
          [v26 setObject:v10 forKeyedSubscript:@"Single Press"];
        }

        v11 = [v5 doublePressGesture];
        if (v11 != [v6 doublePressGesture])
        {
          v12 = GCSystemGestureModeToString([v5 doublePressGesture]);
          [v26 setObject:v12 forKeyedSubscript:@"Double Press"];
        }

        v13 = [v5 longPressGesture];
        if (v13 != [v6 longPressGesture])
        {
          v14 = GCSystemGestureModeToString([v5 longPressGesture]);
          [v26 setObject:v14 forKeyedSubscript:@"Long Press"];
        }

        v25 = v6;
        v15 = v5;
        v16 = getGCSettingsLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v26;
          _os_log_impl(&dword_1D2CD5000, v16, OS_LOG_TYPE_DEFAULT, "sendSettingsRPKitGesturesCustomized changedGestures %@", buf, 0xCu);
        }

        context = objc_autoreleasePoolPush();
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v17 = [v26 allKeys];
        v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v30;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v30 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v29 + 1) + 8 * i);
              v27 = v15;
              v28 = v26;
              AnalyticsSendEventLazy();
            }

            v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v19);
        }

        objc_autoreleasePoolPop(context);
        v5 = v15;
        v6 = v25;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

id __75__GCAnalytics_SettingsAnalytics__sendSettingsRPKitGesturesCustomized_from___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"buttonName";
  v2 = [*(a1 + 32) controllerElementMappingKey];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v10[0] = v2;
  v10[1] = v4;
  v9[1] = @"gestureType";
  v9[2] = @"gestureMode";
  v5 = [v3 objectForKeyedSubscript:?];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)sendRPKitScreenshotSavedEventForBundleID:(id)a3 productCategory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = @"N/A";
  if (!v5)
  {
    v5 = @"N/A";
  }

  if (v6)
  {
    v7 = v6;
  }

  v10 = v5;
  v11 = v7;
  v8 = v7;
  v9 = v5;
  AnalyticsSendEventLazy();
}

id __92__GCAnalytics_ReplayKitAnalytics__sendRPKitScreenshotSavedEventForBundleID_productCategory___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"bundleID";
  v5[1] = @"productCategory";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)sendRPKitManualRecordingSavedEventForBundleID:(id)a3 productCategory:(id)a4 duration:(int)a5
{
  v6 = a3;
  v7 = a4;
  v8 = @"N/A";
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = @"N/A";
  }

  if (v7)
  {
    v8 = v7;
  }

  v12 = v9;
  v13 = v8;
  v10 = v8;
  v11 = v9;
  AnalyticsSendEventLazy();
}

id __106__GCAnalytics_ReplayKitAnalytics__sendRPKitManualRecordingSavedEventForBundleID_productCategory_duration___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"bundleID";
  v6[1] = @"productCategory";
  v1 = *(a1 + 40);
  v7[0] = *(a1 + 32);
  v7[1] = v1;
  v6[2] = @"duration";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v7[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)sendRPKitInstantCaptureSavedEventForBundleID:(id)a3 productCategory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = @"N/A";
  if (!v5)
  {
    v5 = @"N/A";
  }

  if (v6)
  {
    v7 = v6;
  }

  v10 = v5;
  v11 = v7;
  v8 = v7;
  v9 = v5;
  AnalyticsSendEventLazy();
}

id __96__GCAnalytics_ReplayKitAnalytics__sendRPKitInstantCaptureSavedEventForBundleID_productCategory___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"bundleID";
  v5[1] = @"productCategory";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)sendRPKitInstantCaptureBufferStartedEventForBundleID:(id)a3
{
  v3 = a3;
  v4 = @"N/A";
  if (v3)
  {
    v4 = v3;
  }

  v6 = v4;
  v5 = v4;
  AnalyticsSendEventLazy();
}

id __88__GCAnalytics_ReplayKitAnalytics__sendRPKitInstantCaptureBufferStartedEventForBundleID___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"bundleID";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)sendHapticsEngineCreatedEventForBundleID:(id)a3 productCategory:(id)a4 hapticsLocality:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = @"N/A";
  if (!v7)
  {
    v7 = @"N/A";
  }

  if (!v8)
  {
    v8 = @"N/A";
  }

  if (v9)
  {
    v10 = v9;
  }

  v14 = v7;
  v15 = v8;
  v16 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v7;
  AnalyticsSendEventLazy();
}

id __106__GCAnalytics_HapticsAnalytics__sendHapticsEngineCreatedEventForBundleID_productCategory_hapticsLocality___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5[0] = @"bundleID";
  v5[1] = @"productCategory";
  v6 = v1;
  v5[2] = @"hapticsLocality";
  v7 = *(a1 + 48);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)sendHapticsClientDestroyedEventForBundleID:(id)a3 productCategory:(id)a4 totalPlayers:(int)a5 sessionTotalDuration:(int)a6 sessionActiveDuration:(int)a7 terminationReason:(id)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a8;
  v13 = @"N/A";
  if (!v10)
  {
    v10 = @"N/A";
  }

  if (!v11)
  {
    v11 = @"N/A";
  }

  if (v12)
  {
    v13 = v12;
  }

  v17 = v13;
  v14 = v13;
  v15 = v11;
  v16 = v10;
  AnalyticsSendEventLazy();
}

id __166__GCAnalytics_HapticsAnalytics__sendHapticsClientDestroyedEventForBundleID_productCategory_totalPlayers_sessionTotalDuration_sessionActiveDuration_terminationReason___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v8[0] = @"bundleID";
  v8[1] = @"productCategory";
  v10 = *(a1 + 48);
  v8[2] = @"terminationReason";
  v8[3] = @"totalPlayers";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v11 = v2;
  v8[4] = @"sessionTotalDuration";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 60)];
  v12 = v3;
  v8[5] = @"sessionActiveDuration";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
  v13 = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:v8 count:6];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)sendHapticsPlayerDestroyedEventForBundleID:(id)a3 productCategory:(id)a4 totalEventsProcessed:(int)a5 transientEventsProcessed:(int)a6 continuousEventsProcessed:(int)a7 parameterCurvesProcessed:(int)a8 sessionTotalDuration:(int)a9 sessionActiveDuration:(int)a10
{
  v12 = a3;
  v13 = a4;
  v14 = mach_absolute_time();
  if (v14 * self->_timebaseInfo.numer / self->_timebaseInfo.denom / 0x3B9ACA00 - self->_lastHapticsEvent * self->_timebaseInfo.numer / self->_timebaseInfo.denom / 0x3B9ACA00 > 4)
  {
    self->_lastHapticsEvent = v14;
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = @"N/A";
    }

    if (!v13)
    {
      v13 = @"N/A";
    }

    v12 = v16;
    v13 = v13;
    AnalyticsSendEventLazy();

    v15 = v12;
    goto LABEL_11;
  }

  if (gc_isInternalBuild())
  {
    v15 = getGCLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [GCAnalytics(HapticsAnalytics) sendHapticsPlayerDestroyedEventForBundleID:v15 productCategory:? totalEventsProcessed:? transientEventsProcessed:? continuousEventsProcessed:? parameterCurvesProcessed:? sessionTotalDuration:? sessionActiveDuration:?];
    }

LABEL_11:
  }
}

id __232__GCAnalytics_HapticsAnalytics__sendHapticsPlayerDestroyedEventForBundleID_productCategory_totalEventsProcessed_transientEventsProcessed_continuousEventsProcessed_parameterCurvesProcessed_sessionTotalDuration_sessionActiveDuration___block_invoke(uint64_t a1)
{
  v13[8] = *MEMORY[0x1E69E9840];
  v12[0] = @"bundleID";
  v12[1] = @"productCategory";
  v2 = *(a1 + 40);
  v13[0] = *(a1 + 32);
  v13[1] = v2;
  v12[2] = @"totalEventsProcessed";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v13[2] = v3;
  v12[3] = @"transientEventsProcessed";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 52)];
  v13[3] = v4;
  v12[4] = @"continuousEventsProcessed";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v13[4] = v5;
  v12[5] = @"parameterCurvesProcessed";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 60)];
  v13[5] = v6;
  v12[6] = @"sessionTotalDuration";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
  v13[6] = v7;
  v12[7] = @"sessionActiveDuration";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 68)];
  v13[7] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)sendHapticsErrorRaisedEventFromSource:(id)a3 productCategory:(id)a4 errorType:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = @"N/A";
  }

  if (!v8)
  {
    v8 = @"N/A";
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"Unknown Error";
  }

  v15 = v11;
  v16 = v8;
  v17 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v11;
  AnalyticsSendEventLazy();
}

id __97__GCAnalytics_HapticsAnalytics__sendHapticsErrorRaisedEventFromSource_productCategory_errorType___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5[0] = @"errorType";
  v5[1] = @"productCategory";
  v6 = v1;
  v5[2] = @"source";
  v7 = *(a1 + 48);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (GCAnalytics)init
{
  v6.receiver = self;
  v6.super_class = GCAnalytics;
  v2 = [(GCAnalytics *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  controllersData = v2->_controllersData;
  v2->_controllersData = v3;

  mach_timebase_info(&v2->_timebaseInfo);
  return v2;
}

- (void)sendEvent:(id)a3 withXPCPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  [a3 UTF8String];
  analytics_send_event();
}

- (BOOL)sendEvent:(id)a3 withXPCPayloadBuilder:(id)a4
{
  v5 = a3;
  v6 = a3;
  v7 = a4;
  [v5 UTF8String];
  LOBYTE(v5) = analytics_send_event_lazy();

  return v5;
}

@end