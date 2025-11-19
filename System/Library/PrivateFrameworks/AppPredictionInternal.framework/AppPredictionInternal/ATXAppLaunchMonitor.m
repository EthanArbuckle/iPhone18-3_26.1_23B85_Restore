@interface ATXAppLaunchMonitor
@end

@implementation ATXAppLaunchMonitor

void __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__45;
    v49 = __Block_byref_object_dispose__45;
    v50 = 0;
    v10 = WeakRetained[4];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_101;
    v42[3] = &unk_27859BBE8;
    v44 = &v45;
    v43 = *(a1 + 32);
    [v10 runWithLockAcquired:v42];
    v11 = v46[5];
    v12 = [MEMORY[0x277CFE338] appBundleIdKey];
    v13 = [v11 objectForKeyedSubscript:v12];

    if ([WeakRetained isValidAppLaunchBundleId:v13])
    {
      if (![MEMORY[0x277CEB3B8] isAppClipForBundleId:v13])
      {
        v16 = [MEMORY[0x277CBEAA8] date];
        v17 = v46[5];
        v18 = [MEMORY[0x277CFE338] appLaunchReasonKey];
        v19 = [v17 objectForKeyedSubscript:v18];
        v20 = v19;
        v21 = &stru_2839A6058;
        if (v19)
        {
          v21 = v19;
        }

        v22 = v21;

        v23 = __atxlog_handle_default();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_cold_2();
        }

        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v25 stringByAppendingString:@"-appLaunch"];

        v27 = v26;
        v36 = v9;
        [v26 UTF8String];
        v28 = os_transaction_create();
        v29 = MEMORY[0x277D425A0];
        v30 = WeakRetained[1];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_107;
        v37[3] = &unk_27859BC10;
        v37[4] = WeakRetained;
        v31 = v13;
        v38 = v31;
        v32 = v22;
        v39 = v32;
        v33 = v16;
        v40 = v33;
        v34 = v28;
        v41 = v34;
        [v29 runAsyncOnQueue:v30 afterDelaySeconds:v37 block:5.0];

        v9 = v36;
        _Block_object_dispose(&v45, 8);

        goto LABEL_17;
      }

      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v13;
        v15 = "Received an app clip bundle id: '%@' in app launch monitoring. Ignoring.";
LABEL_10:
        _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

    else
    {
      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v13;
        v15 = "Received invalid bundle id: '%@' in app launch monitoring. Ignoring.";
        goto LABEL_10;
      }
    }

    _Block_object_dispose(&v45, 8);
LABEL_17:
    objc_autoreleasePoolPop(v9);
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_101(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __29___ATXAppLaunchMonitor_start__block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__45;
  v11 = __Block_byref_object_dispose__45;
  v12 = 0;
  v2 = *(*(a1 + 32) + 24);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29___ATXAppLaunchMonitor_start__block_invoke_82;
  v6[3] = &unk_27859BB28;
  v6[4] = &v7;
  [v2 runWithLockAcquired:v6];
  if (v8[5])
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:v8[5]];
    v5 = v4;

    [*(a1 + 32) updateLaunchHistoryFromStream:0 callback:v5];
  }

  else
  {
    [*(a1 + 32) updateLaunchHistoryFromStream:0 callback:1209600.0];
  }

  _Block_object_dispose(&v7, 8);
}

void __29___ATXAppLaunchMonitor_start__block_invoke_82(uint64_t a1, uint64_t a2)
{
  v7 = [*(a2 + 64) predictionContextForCurrentContext];
  v3 = [v7 userContext];
  v4 = [v3 lastAppLaunchDate];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __29___ATXAppLaunchMonitor_start__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFE318];
  v3 = a2;
  v4 = [v2 userContext];
  v5 = v3[1];
  v3[1] = v4;
}

void __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) endDateForStreamQuery];
  v4 = [v3 dateByAddingTimeInterval:-*(a1 + 56)];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__45;
  v31 = __Block_byref_object_dispose__45;
  v32 = 0;
  v5 = *(*(a1 + 32) + 24);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke_2;
  v26[3] = &unk_27859BB28;
  v26[4] = &v27;
  [v5 runWithLockAcquired:v26];
  v6 = v28[5];
  _Block_object_dispose(&v27, 8);

  v7 = objc_opt_new();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__45;
  v31 = __Block_byref_object_dispose__45;
  v32 = 0;
  v8 = *(*(a1 + 32) + 24);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke_3;
  v25[3] = &unk_27859BB28;
  v25[4] = &v27;
  [v8 runWithLockAcquired:v25];
  v9 = v28[5];
  _Block_object_dispose(&v27, 8);

  v10 = objc_opt_new();
  if (v3 && v4 && [v4 compare:v3] == -1)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke_4;
    v23[3] = &unk_278596DC8;
    v24 = v7;
    [v6 enumerateAppLaunchSessionsBetweenStartDate:v4 endDate:v3 shouldReverse:0 bundleIDFilter:0 block:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke_5;
    v21[3] = &unk_278599810;
    v22 = v10;
    [v9 enumerateDisplayOnIntervalsFromStartDate:v4 endDate:v3 block:v21];
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke_6;
  v15[3] = &unk_27859BB98;
  v16 = v7;
  v17 = v10;
  v18 = v11;
  v20 = *(a1 + 48);
  v19 = *(a1 + 40);
  v13 = v10;
  v14 = v7;
  [v12 runAsyncWithLockAcquired:v15];

  objc_autoreleasePoolPop(v2);
}

uint64_t __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 onInterval];
  v4 = [v3 endDate];
  [v2 addObject:v4];

  return 1;
}

void __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke_6(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = a1[5];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke_7;
  v15[3] = &unk_27859BB70;
  v7 = v3;
  v8 = a1[6];
  v16 = v7;
  v17 = v8;
  [_ATXAppLaunchMonitor mergeAppLaunches:v5 andBacklightTransitions:v6 callingAppLaunchBlock:v15];
  v12 = a1[8];
  if (v12)
  {
    (*(v12 + 16))(v12, v9, v10, v11);
  }

  objc_autoreleasePoolPop(v4);
  v13 = a1[7];
  v14 = objc_opt_self();
}

void __63___ATXAppLaunchMonitor_updateLaunchHistoryFromStream_callback___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v19 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a6)
  {
    if (v19 && v11)
    {
      v16 = a1 + 32;
      v14 = *(a1 + 32);
      v15 = *(v16 + 8);
      if (v13)
      {
        v17 = v13;
      }

      else
      {
        v17 = &stru_2839A6058;
      }

      v18 = [*(v14 + 64) predictionContextForCurrentContext];
      [v15 _addLaunchWithLockWitness:v14 bundleId:v19 date:v11 timeZone:v12 reason:v17 context:v18];
    }
  }

  else
  {
    [*(*(a1 + 32) + 40) addScreenLockAtDate:v11];
  }
}

id __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_107(uint64_t a1)
{
  [*(a1 + 32) handleAppOrClipLaunchNotificationForBundleId:*(a1 + 40) poweringAppClipBundleId:0 urlHash:0 isClip:0 appLaunchReason:*(a1 + 48) appClipLaunchReason:9 date:*(a1 + 56)];
  v2 = *(a1 + 64);
  return objc_opt_self();
}

uint64_t __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 addObject:v4];
  v6 = v5[1];

  v7 = *(a1 + 32);

  return [v6 registerCallback:v7];
}

void __48___ATXAppLaunchMonitor_registerForAppClipLaunch__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = __atxlog_handle_hero();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Received clip launch with event: %@", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v6 = [v3 webClipBundleId];
    if (v6)
    {
      v7 = [v3 clipBundleId];
      if (v7)
      {
        v8 = [v3 urlHash];
        if (v8)
        {
          v9 = objc_opt_new();
          [v9 setBundleId:v7];
          [v9 setUrlHash:v8];
          -[NSObject setCaptureType:](v9, "setCaptureType:", [objc_opt_class() petClipCaptureTypeFromDuetClipLaunchReason:{objc_msgSend(v3, "launchReason")}]);
          [WeakRetained[7] trackScalarForMessage:v9];
          v10 = [v3 launchReason];
          v11 = [MEMORY[0x277CBEAA8] now];
          [WeakRetained handleAppOrClipLaunchNotificationForBundleId:v6 poweringAppClipBundleId:v7 urlHash:v8 isClip:1 appLaunchReason:@"ATXClipLaunch" appClipLaunchReason:v10 date:v11];
        }

        else
        {
          v9 = __atxlog_handle_hero();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __48___ATXAppLaunchMonitor_registerForAppClipLaunch__block_invoke_cold_1();
          }
        }
      }

      else
      {
        v8 = __atxlog_handle_hero();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __48___ATXAppLaunchMonitor_registerForAppClipLaunch__block_invoke_cold_2();
        }
      }
    }

    else
    {
      v7 = __atxlog_handle_hero();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __48___ATXAppLaunchMonitor_registerForAppClipLaunch__block_invoke_cold_3();
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __50___ATXAppLaunchMonitor_registerForBacklightChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0x80000000;
    v10 = WeakRetained[4];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50___ATXAppLaunchMonitor_registerForBacklightChange__block_invoke_127;
    v24[3] = &unk_27859BBE8;
    v26 = &v27;
    v25 = *(a1 + 32);
    [v10 runWithLockAcquired:v24];
    if (*(v28 + 6) != 0x80000000)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v12 stringByAppendingString:@"-backlightChanged"];

      [v13 UTF8String];
      v14 = os_transaction_create();
      v15 = objc_opt_new();
      v16 = MEMORY[0x277D425A0];
      v17 = v9[1];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __50___ATXAppLaunchMonitor_registerForBacklightChange__block_invoke_2;
      v20[3] = &unk_27859BC88;
      v20[4] = v9;
      v23 = &v27;
      v18 = v15;
      v21 = v18;
      v19 = v14;
      v22 = v19;
      [v16 runAsyncOnQueue:v17 afterDelaySeconds:v20 block:5.0];
    }

    _Block_object_dispose(&v27, 8);
  }
}

void __50___ATXAppLaunchMonitor_registerForBacklightChange__block_invoke_127(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = [v4 intValue];
  }
}

id __50___ATXAppLaunchMonitor_registerForBacklightChange__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) handleBacklightChangeNotificationWithValue:*(*(*(a1 + 56) + 8) + 24) date:*(a1 + 40)];
  v2 = *(a1 + 48);
  return objc_opt_self();
}

uint64_t __50___ATXAppLaunchMonitor_registerForBacklightChange__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 addObject:v4];
  v6 = v5[1];

  v7 = *(a1 + 32);

  return [v6 registerCallback:v7];
}

void __72___ATXAppLaunchMonitor_processDonationsForPreviousAppSessionEndIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2[5];
  v5 = a2;
  v6 = [v4 lastAppLaunchDate];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = a2[5];
  v10 = [v9 lastAppLaunch];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 40) + 8) + 40) && *(*(*(a1 + 48) + 8) + 40))
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(*(a1 + 48) + 8) + 40);
      v15 = *(*(*(a1 + 40) + 8) + 40);
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Donation processing - Processing donations for %@, launched on: %@", &v18, 0x16u);
    }

    v16 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-5.0];
    [*(a1 + 32) updateActionPredictionPipelineForAppSession:*(*(*(a1 + 48) + 8) + 40) startDate:*(*(*(a1 + 40) + 8) + 40) endDate:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

id __149___ATXAppLaunchMonitor_handleAppOrClipLaunchNotificationForBundleId_poweringAppClipBundleId_urlHash_isClip_appLaunchReason_appClipLaunchReason_date___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a2 + 32) stopAppUsageAtDate:*(a1 + 32)];
  v3 = *(a1 + 40);
  return objc_opt_self();
}

void __149___ATXAppLaunchMonitor_handleAppOrClipLaunchNotificationForBundleId_poweringAppClipBundleId_urlHash_isClip_appLaunchReason_appClipLaunchReason_date___block_invoke_135(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__45;
  v20 = __Block_byref_object_dispose__45;
  v21 = 0;
  v3 = *(*(a1 + 32) + 24);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __149___ATXAppLaunchMonitor_handleAppOrClipLaunchNotificationForBundleId_poweringAppClipBundleId_urlHash_isClip_appLaunchReason_appClipLaunchReason_date___block_invoke_2;
  v15[3] = &unk_27859BB28;
  v15[4] = &v16;
  [v3 runWithLockAcquired:v15];
  [*(a1 + 32) logAppLaunchForBundleId:*(a1 + 40) launchReason:*(a1 + 48)];
  LOBYTE(v7) = 15;
  [_ATXAppLaunchMonitor _logPredictionForBundleId:*(a1 + 40) poweringAppClipBundleId:*(a1 + 56) urlHash:*(a1 + 64) isClip:*(a1 + 92) appLaunchReason:*(a1 + 48) appClipLaunchReason:*(a1 + 88) consumerType:7 consumerSubType:v7 context:v17[5]];
  v4 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __149___ATXAppLaunchMonitor_handleAppOrClipLaunchNotificationForBundleId_poweringAppClipBundleId_urlHash_isClip_appLaunchReason_appClipLaunchReason_date___block_invoke_3;
  v8[3] = &unk_27859BD00;
  v9 = *(a1 + 40);
  v5 = *(a1 + 72);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v14 = &v16;
  v13 = *(a1 + 80);
  [v4 runAsyncWithLockAcquired:v8];

  _Block_object_dispose(&v16, 8);
  objc_autoreleasePoolPop(v2);
}

uint64_t __149___ATXAppLaunchMonitor_handleAppOrClipLaunchNotificationForBundleId_poweringAppClipBundleId_urlHash_isClip_appLaunchReason_appClipLaunchReason_date___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 64) updateContextStreamAndReturnPredictionContextForCurrentContext];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __149___ATXAppLaunchMonitor_handleAppOrClipLaunchNotificationForBundleId_poweringAppClipBundleId_urlHash_isClip_appLaunchReason_appClipLaunchReason_date___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  [v3 addLaunchForBundleId:v4 date:v5 completion:0];
  [*(a1 + 48) _addLaunchWithLockWitness:v6 bundleId:*(a1 + 32) date:*(a1 + 40) timeZone:0 reason:*(a1 + 56) context:*(*(*(a1 + 72) + 8) + 40)];

  if (([*(*(a1 + 48) + 72) containsObject:*(a1 + 32)] & 1) == 0)
  {
    ATXUpdatePredictionsDefaultInterval(1);
  }

  v7 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __149___ATXAppLaunchMonitor_handleAppOrClipLaunchNotificationForBundleId_poweringAppClipBundleId_urlHash_isClip_appLaunchReason_appClipLaunchReason_date___block_invoke_4;
  block[3] = &unk_278596BB8;
  v9 = *(a1 + 64);
  dispatch_async(v7, block);
}

void __54___ATXAppLaunchMonitor_handleRemoteAppLaunch_context___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 24);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54___ATXAppLaunchMonitor_handleRemoteAppLaunch_context___block_invoke_2;
  v10[3] = &unk_27859BD50;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v9;
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v11 = v8;
  v12 = v7;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  [v3 runAsyncWithLockAcquired:v10];

  objc_autoreleasePoolPop(v2);
}

void __54___ATXAppLaunchMonitor_handleRemoteAppLaunch_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  [v3 addLaunchForBundleId:v4 date:v5 completion:0];
  [*(a1 + 48) _addLaunchWithLockWitness:v6 bundleId:*(a1 + 32) date:*(a1 + 40) timeZone:0 reason:*(a1 + 56) context:*(a1 + 64)];

  if (([*(*(a1 + 48) + 72) containsObject:*(a1 + 32)] & 1) == 0)
  {
    ATXUpdatePredictionsDefaultInterval(1);
  }

  v7 = *(*(a1 + 48) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54___ATXAppLaunchMonitor_handleRemoteAppLaunch_context___block_invoke_3;
  block[3] = &unk_278596BB8;
  v9 = *(a1 + 72);
  dispatch_async(v7, block);
}

void __72___ATXAppLaunchMonitor_handleBacklightChangeNotificationWithValue_date___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v7 = v3;
  if (v4 == 1)
  {
    [v3[5] addScreenLockAtDate:*(a1 + 32)];
  }

  else if (!v4)
  {
    [v3[4] stopAppUsageAtDate:*(a1 + 32)];
  }

  v5 = *(a1 + 40);
  v6 = objc_opt_self();
}

void __36___ATXAppLaunchMonitor_clearHistory__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[5];
  v3 = a2;
  [v2 clearAppLaunchInfo];
  v4 = [v3[6] histogramForLaunchType:0];
  [v4 resetData];

  v5 = [v3[6] histogramForLaunchType:1];
  [v5 resetData];

  v6 = [v3[6] histogramForLaunchType:92];
  [v6 resetData];

  v7 = [v3[6] histogramForLaunchType:93];
  [v7 resetData];

  v8 = [v3[6] histogramForLaunchType:11];
  [v8 resetData];

  v9 = [v3[6] histogramForLaunchType:2];
  [v9 resetData];

  v10 = [v3[6] histogramForLaunchType:3];
  [v10 resetData];

  v11 = v3[6];
  v12 = [v11 histogramForLaunchType:5];
  [v12 resetData];

  +[_ATXAppLaunchHistogramManager resetDataForCategoricalHistograms];
  v13 = +[ATXHistogramBundleIdTable sharedInstance];
  [v13 clear];
}

void __51___ATXAppLaunchMonitor_clearIntentHistogramHistory__block_invoke(uint64_t a1, id *a2)
{
  v3 = a2[6];
  v4 = a2;
  v5 = [v3 histogramForLaunchType:14];
  [v5 resetData];

  v6 = [a2[6] histogramForLaunchType:17];
  [v6 resetData];

  v7 = [a2[6] histogramForLaunchType:23];
  [v7 resetData];

  v8 = [a2[6] histogramForLaunchType:26];
  [v8 resetData];

  v9 = [a2[6] histogramForLaunchType:20];
  [v9 resetData];

  v10 = [a2[6] categoricalHistogramForLaunchType:29];
  [v10 resetData];

  v11 = [a2[6] categoricalHistogramForLaunchType:40];
  [v11 resetData];

  v12 = [a2[6] histogramForLaunchType:16];
  [v12 resetData];

  v13 = [a2[6] histogramForLaunchType:19];
  [v13 resetData];

  v14 = [a2[6] histogramForLaunchType:25];
  [v14 resetData];

  v15 = [a2[6] histogramForLaunchType:28];
  [v15 resetData];

  v16 = [a2[6] histogramForLaunchType:22];
  [v16 resetData];

  v17 = [a2[6] categoricalHistogramForLaunchType:31];
  [v17 resetData];

  v18 = a2[6];
  v19 = [v18 categoricalHistogramForLaunchType:39];
  [v19 resetData];

  v24 = +[_ATXAppInfoManager sharedInstance];
  v20 = +[_ATXAppLaunchSequenceManager sharedInstance];
  v21 = [v24 allApps];
  [v20 deleteAllLaunchesForBundles:v21];

  v22 = +[ATXHistogramBundleIdTable sharedInstance];
  [v22 clear];

  v23 = +[_ATXAppPredictor sharedInstance];
  [v23 iterZeroDayAppIntentKeysWithBlock:&__block_literal_global_167];
}

void __51___ATXAppLaunchMonitor_clearIntentHistogramHistory__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[ATXHistogramBundleIdTable sharedInstance];
  [v3 intern:v2];
}

void __67___ATXAppLaunchMonitor_addLaunchWithBundleId_date_timeZone_reason___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a2[8];
  v8 = a2;
  v9 = [v7 predictionContextForCurrentContext];
  [v2 _addLaunchWithLockWitness:v8 bundleId:v3 date:v4 timeZone:v5 reason:v6 context:v9];
}

void __28___ATXAppLaunchMonitor_stop__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2[2];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [v2[1] deregisterCallback:{*(*(&v10 + 1) + 8 * v7++), v10}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = v2[1];
  v2[1] = 0;

  v9 = *MEMORY[0x277D85DE8];
}

void __43___ATXAppLaunchMonitor_startDeltaRecording__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = v2[1];
  v2[1] = v3;
}

void __42___ATXAppLaunchMonitor_stopDeltaRecording__block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2[1]);
  v4 = a2;
  v3 = a2[1];
  a2[1] = 0;
}

void __72___ATXAppLaunchMonitor_swapAppInFocusStream_andDisplayOnIntervalStream___block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 2, *(a1 + 32));
  v4 = a2;
  objc_storeStrong(v4 + 3, *(a1 + 40));
}

void __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "Identifier called: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __44___ATXAppLaunchMonitor_registerForAppChange__block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1(&dword_2263AA000, v0, v1, "Donation Processing - App change notification bundleId: '%@', launch reason: '%@'");
  v2 = *MEMORY[0x277D85DE8];
}

@end