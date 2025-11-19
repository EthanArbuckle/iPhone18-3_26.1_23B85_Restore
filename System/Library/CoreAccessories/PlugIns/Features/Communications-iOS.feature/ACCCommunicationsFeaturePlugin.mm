@interface ACCCommunicationsFeaturePlugin
- (BOOL)acceptCallWithAction:(int)a3 callUUID:(id)a4;
- (BOOL)currentMuteStatus;
- (BOOL)endAllCalls;
- (BOOL)endCallWithAction:(int)a3 callUUID:(id)a4;
- (BOOL)initiateCallToDestination:(id)a3 withService:(int)a4 addressBookID:(id)a5;
- (BOOL)initiateCallToVoicemail;
- (BOOL)initiateRedial;
- (BOOL)isAirplaneModeEnabled;
- (BOOL)isEndAndAcceptAvailable;
- (BOOL)isFaceTimeAudioEnabled;
- (BOOL)isFaceTimeVideoEnabled;
- (BOOL)isHoldAndAcceptAvailable;
- (BOOL)isHoldAvailable;
- (BOOL)isInitiateCallAllowed;
- (BOOL)isMergeAvailable;
- (BOOL)isSwapAvailable;
- (BOOL)mergeCalls;
- (BOOL)sendDTMF:(int)a3 forCallWithUUID:(id)a4;
- (BOOL)swapCalls;
- (BOOL)updateHoldStatus:(BOOL)a3 forCallWithUUID:(id)a4;
- (BOOL)updateMuteStatus:(BOOL)a3;
- (NSString)description;
- (NSString)pluginName;
- (id)currentAudioAndVideoCalls;
- (id)currentCallStates;
- (id)currentCarrierName;
- (id)currentCommunicationsStatus;
- (id)currentFavoritesListWithLimit:(unint64_t)a3;
- (id)currentLocalizedCarrierName;
- (id)currentRecentsListWithCoalescing:(BOOL)a3 limit:(unint64_t)a4;
- (int)currentRegistrationStatus;
- (int)currentSignalStrength;
- (unint64_t)currentCallCount;
- (void)addNotificationObservers;
- (void)airplaneModeChanged;
- (void)callStateDidChangeForCall:(id)a3;
- (void)callStateDidChangeNotification:(id)a3;
- (void)commStatusDidChangeNotification:(id)a3;
- (void)currentSignalStrength;
- (void)favoritesListDidChangeNotification:(id)a3;
- (void)initPlugin;
- (void)initiateRedial;
- (void)recentsListDidChangeNotification:(id)a3;
- (void)removeNotificationObservers;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCCommunicationsFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ACCCommunicationsFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  v6 = [(ACCCommunicationsFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (v6)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", v4, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  [(ACCCommunicationsFeaturePlugin *)self setIsRunning:0];
  v3 = [(ACCCommunicationsFeaturePlugin *)self pluginName];
  v4 = dispatch_queue_create([v3 UTF8String], 0);
  [(ACCCommunicationsFeaturePlugin *)self setQueue:v4];

  [(ACCCommunicationsFeaturePlugin *)self setCommCenter:0];
  [(ACCCommunicationsFeaturePlugin *)self setVmManager:0];
  [(ACCCommunicationsFeaturePlugin *)self setRadiosPreferences:0];

  [(ACCCommunicationsFeaturePlugin *)self setChManager:0];
}

- (void)startPlugin
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2335B8000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2335B8000, v5, OS_LOG_TYPE_DEFAULT, "Stopping Communications feature plugin...", v7, 2u);
  }

  v6 = [(ACCCommunicationsFeaturePlugin *)self commCenter];
  [v6 setCallStateDelegate:0];

  [(ACCCommunicationsFeaturePlugin *)self setCommCenter:0];
  [(ACCCommunicationsFeaturePlugin *)self setVmManager:0];
  [(ACCCommunicationsFeaturePlugin *)self setRadiosPreferences:0];
  [(ACCCommunicationsFeaturePlugin *)self setChManager:0];
  [(ACCCommunicationsFeaturePlugin *)self setIsRunning:0];
}

- (void)addNotificationObservers
{
  v3 = [(ACCCommunicationsFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ACCCommunicationsFeaturePlugin_addNotificationObservers__block_invoke;
  block[3] = &unk_2789E2020;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __58__ACCCommunicationsFeaturePlugin_addNotificationObservers__block_invoke(uint64_t a1)
{
  executeOnMainThreadSync(&__block_literal_global_0);
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v29 = 0;
    _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_INFO, "Adding notification observers...", v29, 2u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel_callStateDidChangeNotification_ name:*MEMORY[0x277D6EFF0] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel_callStateDidChangeNotification_ name:*MEMORY[0x277D6F038] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:*(a1 + 32) selector:sel_callStateDidChangeNotification_ name:*MEMORY[0x277D6EFD8] object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:*(a1 + 32) selector:sel_callStateDidChangeNotification_ name:*MEMORY[0x277D6F000] object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:*(a1 + 32) selector:sel_callStateDidChangeNotification_ name:*MEMORY[0x277D6F020] object:0];

  CTTelephonyCenterSetDefaultDispatchQueue();
  CTTelephonyCenterGetDefault();
  v10 = *(a1 + 32);
  v11 = *MEMORY[0x277CC3A40];
  CTTelephonyCenterAddObserver();
  v12 = *(a1 + 32);
  v13 = *MEMORY[0x277CC3E48];
  CTTelephonyCenterAddObserver();
  v14 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  [*(a1 + 32) setRadiosPreferences:v14];

  v15 = *(a1 + 32);
  v16 = [v15 radiosPreferences];
  [v16 setDelegate:v15];

  v17 = *(a1 + 32);
  v18 = *MEMORY[0x277CC3D58];
  CTTelephonyCenterAddObserver();
  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  [v19 addObserver:*(a1 + 32) selector:sel_commStatusDidChangeNotification_ name:*MEMORY[0x277D6EFC8] object:0];

  v20 = [MEMORY[0x277D07D70] sharedInstance];
  [v20 addListenerID:@"com.apple.accessories.features.Communications" forService:2];

  v21 = [MEMORY[0x277D07D70] sharedInstance];
  [v21 addListenerID:@"com.apple.accessories.features.Communications" forService:0];

  v22 = [MEMORY[0x277CCAB98] defaultCenter];
  [v22 addObserver:*(a1 + 32) selector:sel_commStatusDidChangeNotification_ name:*MEMORY[0x277D07D48] object:0];

  executeOnMainThreadSync(&__block_literal_global_47);
  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 addObserver:*(a1 + 32) selector:sel_commStatusDidChangeNotification_ name:*MEMORY[0x277D6F0A0] object:0];

  v24 = objc_alloc_init(MEMORY[0x277D79778]);
  [*(a1 + 32) setVmManager:v24];

  v25 = [MEMORY[0x277CCAB98] defaultCenter];
  [v25 addObserver:*(a1 + 32) selector:sel_commStatusDidChangeNotification_ name:*MEMORY[0x277D79798] object:0];

  v26 = [MEMORY[0x277CCAB98] defaultCenter];
  [v26 addObserver:*(a1 + 32) selector:sel_commStatusDidChangeNotification_ name:*MEMORY[0x277D6F0B0] object:0];

  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 addObserver:*(a1 + 32) selector:sel_recentsListDidChangeNotification_ name:*MEMORY[0x277CF7E18] object:0];

  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  [v28 addObserver:*(a1 + 32) selector:sel_favoritesListDidChangeNotification_ name:*MEMORY[0x277CBD1C8] object:0];
}

- (void)removeNotificationObservers
{
  v3 = [(ACCCommunicationsFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ACCCommunicationsFeaturePlugin_removeNotificationObservers__block_invoke;
  block[3] = &unk_2789E2020;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __61__ACCCommunicationsFeaturePlugin_removeNotificationObservers__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v25 = 0;
    _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_INFO, "Removing all notification observers...", v25, 2u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6EFF0] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6F038] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6EFD8] object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6F000] object:0];

  CTTelephonyCenterSetDefaultDispatchQueue();
  CTTelephonyCenterGetDefault();
  v9 = *(a1 + 32);
  v10 = *MEMORY[0x277CC3A40];
  CTTelephonyCenterRemoveObserver();
  v11 = *(a1 + 32);
  v12 = *MEMORY[0x277CC3E48];
  CTTelephonyCenterRemoveObserver();
  v13 = [*(a1 + 32) radiosPreferences];
  [v13 setDelegate:0];

  [*(a1 + 32) setRadiosPreferences:0];
  v14 = *(a1 + 32);
  v15 = *MEMORY[0x277CC3D58];
  CTTelephonyCenterRemoveObserver();
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6EFC8] object:0];

  v17 = [MEMORY[0x277D07D70] sharedInstance];
  [v17 removeListenerID:@"com.apple.accessories.features.Communications" forService:2];

  v18 = [MEMORY[0x277D07D70] sharedInstance];
  [v18 removeListenerID:@"com.apple.accessories.features.Communications" forService:0];

  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  [v19 removeObserver:*(a1 + 32) name:*MEMORY[0x277D07D48] object:0];

  executeOnMainThreadSync(&__block_literal_global_56);
  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  [v20 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6F0A0] object:0];

  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  [v21 removeObserver:*(a1 + 32) name:*MEMORY[0x277D79798] object:0];

  [*(a1 + 32) setVmManager:0];
  v22 = [MEMORY[0x277CCAB98] defaultCenter];
  [v22 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6F0B0] object:0];

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 removeObserver:*(a1 + 32) name:*MEMORY[0x277CF7E18] object:0];

  v24 = [MEMORY[0x277CCAB98] defaultCenter];
  [v24 removeObserver:*(a1 + 32) name:*MEMORY[0x277CBD1C8] object:0];
}

- (void)callStateDidChangeForCall:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_DEFAULT, "Sending call state update:\n%@", &v10, 0xCu);
  }

  v8 = [(ACCCommunicationsFeaturePlugin *)self commCenter];
  [v8 callStateDidChange:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)commStatusDidChangeNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_INFO, "Notification received:\n%@", buf, 0xCu);
  }

  v8 = [(ACCCommunicationsFeaturePlugin *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__ACCCommunicationsFeaturePlugin_commStatusDidChangeNotification___block_invoke;
  v11[3] = &unk_2789E2048;
  v12 = v4;
  v13 = self;
  v9 = v4;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __66__ACCCommunicationsFeaturePlugin_commStatusDidChangeNotification___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) name];
  v4 = [v3 isEqualToString:*MEMORY[0x277CC3A40]];

  if (v4 && ([*(a1 + 40) isAirplaneModeEnabled] & 1) == 0)
  {
    v56 = [*(a1 + 32) userInfo];
    v57 = [v56 objectForKeyedSubscript:*MEMORY[0x277CC3A30]];
    v58 = _convertCTGradedSignalToCommSignal(v57);

    v59 = [MEMORY[0x277CCABB0] numberWithInt:v58];
    [v2 setObject:v59 forKey:*MEMORY[0x277CE81E0]];
  }

  v5 = [*(a1 + 32) name];
  v6 = [v5 isEqualToString:*MEMORY[0x277CC3E48]];

  v7 = MEMORY[0x277CE8178];
  if (v6 && ([*(a1 + 40) isAirplaneModeEnabled] & 1) == 0)
  {
    v60 = [*(a1 + 32) userInfo];
    v61 = [v60 objectForKeyedSubscript:*MEMORY[0x277CC3E40]];
    v62 = _convertCTRegStatusToCommRegStatus(v61);

    v63 = [MEMORY[0x277CCABB0] numberWithInt:v62];
    [v2 setObject:v63 forKey:*MEMORY[0x277CE81D8]];

    v64 = [*(a1 + 40) currentLocalizedCarrierName];
    [v2 setObject:v64 forKey:*v7];
  }

  v8 = [*(a1 + 32) name];
  v9 = [v8 isEqualToString:@"AirplaneModeDidChangeNotification"];

  if (v9)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [*(a1 + 40) radiosPreferences];
    v12 = [v10 numberWithBool:{objc_msgSend(v11, "airplaneMode")}];
    [v2 setObject:v12 forKey:*MEMORY[0x277CE8170]];

    v13 = [*(a1 + 40) currentLocalizedCarrierName];
    [v2 setObject:v13 forKey:*v7];

    if ([*(a1 + 40) isAirplaneModeEnabled])
    {
      [v2 setObject:&unk_2848E59F0 forKey:*MEMORY[0x277CE81E0]];
      [v2 setObject:&unk_2848E5A08 forKey:*MEMORY[0x277CE81D8]];
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "currentSignalStrength")}];
      [v2 setObject:v14 forKey:*MEMORY[0x277CE81E0]];

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "currentRegistrationStatus")}];
      [v2 setObject:v15 forKey:*MEMORY[0x277CE81D8]];
    }
  }

  v16 = [*(a1 + 32) name];
  v17 = [v16 isEqualToString:*MEMORY[0x277CC3D58]];

  if (v17)
  {
    v18 = [*(a1 + 40) currentLocalizedCarrierName];
    [v2 setObject:v18 forKey:*v7];
  }

  v19 = [*(a1 + 32) name];
  v20 = [v19 isEqualToString:*MEMORY[0x277D6EFC8]];

  if (v20)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D6EDE8], "supportsTelephonyCalls")}];
    [v2 setObject:v21 forKey:*MEMORY[0x277CE81F0]];
  }

  v22 = [*(a1 + 32) name];
  v23 = [v22 isEqualToString:*MEMORY[0x277D07D48]];

  if (v23)
  {
    v24 = [*(a1 + 32) userInfo];
    v25 = [v24 objectForKey:*MEMORY[0x277D07D40]];
    v26 = [v25 BOOLValue];

    v27 = [*(a1 + 32) userInfo];
    v28 = [v27 objectForKey:*MEMORY[0x277D07D50]];
    v29 = [v28 integerValue];

    if (v29 == 2)
    {
      v30 = MEMORY[0x277CE8198];
    }

    else
    {
      if (v29)
      {
        goto LABEL_21;
      }

      v30 = MEMORY[0x277CE81A0];
    }

    v31 = [MEMORY[0x277CCABB0] numberWithBool:v26];
    [v2 setObject:v31 forKey:*v30];
  }

LABEL_21:
  v32 = [*(a1 + 32) name];
  v33 = [v32 isEqualToString:*MEMORY[0x277D6F0A0]];

  if (v33)
  {
    v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "currentMuteStatus")}];
    [v2 setObject:v34 forKey:*MEMORY[0x277CE81C8]];
  }

  v35 = [*(a1 + 32) name];
  v36 = [v35 isEqualToString:@"CallCountDidChangeNotification"];

  if (v36)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "currentCallCount")}];
    [v2 setObject:v37 forKey:*MEMORY[0x277CE8188]];
  }

  v38 = [*(a1 + 32) name];
  v39 = [v38 isEqualToString:*MEMORY[0x277D79798]];

  if (v39)
  {
    v40 = MEMORY[0x277CCABB0];
    v41 = [*(a1 + 40) vmManager];
    v42 = [v40 numberWithUnsignedChar:{objc_msgSend(v41, "unreadCount")}];
    [v2 setObject:v42 forKey:*MEMORY[0x277CE81D0]];
  }

  v43 = [*(a1 + 32) name];
  v44 = [v43 isEqualToString:*MEMORY[0x277D6F0B0]];

  if (v44)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isInitiateCallAllowed")}];
    [v2 setObject:v45 forKey:*MEMORY[0x277CE81B8]];

    v46 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isEndAndAcceptAvailable")}];
    [v2 setObject:v46 forKey:*MEMORY[0x277CE8190]];

    v47 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isHoldAndAcceptAvailable")}];
    [v2 setObject:v47 forKey:*MEMORY[0x277CE81A8]];

    v48 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isSwapAvailable")}];
    [v2 setObject:v48 forKey:*MEMORY[0x277CE81E8]];

    v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isMergeAvailable")}];
    [v2 setObject:v49 forKey:*MEMORY[0x277CE81C0]];

    v50 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isHoldAvailable")}];
    [v2 setObject:v50 forKey:*MEMORY[0x277CE81B0]];
  }

  if ([v2 count])
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v51 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v51 = MEMORY[0x277D86220];
      v52 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v65 = 138412290;
      v66 = v2;
      _os_log_impl(&dword_2335B8000, v51, OS_LOG_TYPE_DEFAULT, "Sending communications update:\n%@", &v65, 0xCu);
    }

    v53 = [*(a1 + 40) commCenter];
    v54 = [v2 copy];
    [v53 commStatusDidChange:v54];
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)recentsListDidChangeNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_INFO, "Notification received:\n%@", buf, 0xCu);
  }

  v8 = [(ACCCommunicationsFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACCCommunicationsFeaturePlugin_recentsListDidChangeNotification___block_invoke;
  block[3] = &unk_2789E2020;
  block[4] = self;
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

void __67__ACCCommunicationsFeaturePlugin_recentsListDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) commCenter];
  [v1 recentsListDidChange];
}

- (void)favoritesListDidChangeNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_INFO, "Notification received:\n%@", buf, 0xCu);
  }

  v8 = [(ACCCommunicationsFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ACCCommunicationsFeaturePlugin_favoritesListDidChangeNotification___block_invoke;
  block[3] = &unk_2789E2020;
  block[4] = self;
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

void __69__ACCCommunicationsFeaturePlugin_favoritesListDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) commCenter];
  [v1 favoritesListDidChange];
}

- (id)currentCallStates
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(ACCCommunicationsFeaturePlugin *)self currentAudioAndVideoCalls];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = _callStateDictionaryForCall(*(*(&v13 + 1) + 8 * i));
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if (v3 && [v3 count])
  {
    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)currentCommunicationsStatus
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[ACCCommunicationsFeaturePlugin currentSignalStrength](self, "currentSignalStrength")}];
  [v3 setObject:v4 forKey:*MEMORY[0x277CE81E0]];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[ACCCommunicationsFeaturePlugin currentRegistrationStatus](self, "currentRegistrationStatus")}];
  [v3 setObject:v5 forKey:*MEMORY[0x277CE81D8]];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isAirplaneModeEnabled](self, "isAirplaneModeEnabled")}];
  [v3 setObject:v6 forKey:*MEMORY[0x277CE8170]];

  v7 = [(ACCCommunicationsFeaturePlugin *)self currentLocalizedCarrierName];
  [v3 setObject:v7 forKey:*MEMORY[0x277CE8178]];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isCellularSupported](self, "isCellularSupported")}];
  [v3 setObject:v8 forKey:*MEMORY[0x277CE8180]];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isTelephonyEnabled](self, "isTelephonyEnabled")}];
  [v3 setObject:v9 forKey:*MEMORY[0x277CE81F0]];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isFaceTimeAudioEnabled](self, "isFaceTimeAudioEnabled")}];
  [v3 setObject:v10 forKey:*MEMORY[0x277CE8198]];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isFaceTimeVideoEnabled](self, "isFaceTimeVideoEnabled")}];
  [v3 setObject:v11 forKey:*MEMORY[0x277CE81A0]];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin currentMuteStatus](self, "currentMuteStatus")}];
  [v3 setObject:v12 forKey:*MEMORY[0x277CE81C8]];

  v13 = [MEMORY[0x277CCABB0] numberWithChar:{-[ACCCommunicationsFeaturePlugin currentCallCount](self, "currentCallCount")}];
  [v3 setObject:v13 forKey:*MEMORY[0x277CE8188]];

  v14 = [MEMORY[0x277CCABB0] numberWithChar:{-[ACCCommunicationsFeaturePlugin currentUnreadVoicemailCount](self, "currentUnreadVoicemailCount")}];
  [v3 setObject:v14 forKey:*MEMORY[0x277CE81D0]];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isInitiateCallAllowed](self, "isInitiateCallAllowed")}];
  [v3 setObject:v15 forKey:*MEMORY[0x277CE81B8]];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isEndAndAcceptAvailable](self, "isEndAndAcceptAvailable")}];
  [v3 setObject:v16 forKey:*MEMORY[0x277CE8190]];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isHoldAndAcceptAvailable](self, "isHoldAndAcceptAvailable")}];
  [v3 setObject:v17 forKey:*MEMORY[0x277CE81A8]];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isSwapAvailable](self, "isSwapAvailable")}];
  [v3 setObject:v18 forKey:*MEMORY[0x277CE81E8]];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isMergeAvailable](self, "isMergeAvailable")}];
  [v3 setObject:v19 forKey:*MEMORY[0x277CE81C0]];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isHoldAvailable](self, "isHoldAvailable")}];
  [v3 setObject:v20 forKey:*MEMORY[0x277CE81B0]];

  if (v3 && [v3 count])
  {
    v21 = [v3 copy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)airplaneModeChanged
{
  v15 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(ACCCommunicationsFeaturePlugin *)self radiosPreferences];
    v7 = [v6 airplaneMode];
    v8 = "NO";
    if (v7)
    {
      v8 = "YES";
    }

    v13 = 136315138;
    v14 = v8;
    _os_log_impl(&dword_2335B8000, v5, OS_LOG_TYPE_INFO, "airplaneModeChanged: %s", &v13, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v9 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACCCommunicationsFeaturePlugin airplaneModeChanged];
  }

  v11 = [MEMORY[0x277CCAB88] notificationWithName:@"AirplaneModeDidChangeNotification" object:0];
  [(ACCCommunicationsFeaturePlugin *)self commStatusDidChangeNotification:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (int)currentSignalStrength
{
  if ([(ACCCommunicationsFeaturePlugin *)self isAirplaneModeEnabled])
  {
    return 0;
  }

  [(ACCCommunicationsFeaturePlugin *)&v3 currentSignalStrength];
  return v3;
}

- (int)currentRegistrationStatus
{
  if ([(ACCCommunicationsFeaturePlugin *)self isAirplaneModeEnabled])
  {
    return 1;
  }

  Status = CTRegistrationGetStatus();

  return _convertCTRegStatusToCommRegStatus(Status);
}

- (BOOL)isAirplaneModeEnabled
{
  v2 = [(ACCCommunicationsFeaturePlugin *)self radiosPreferences];
  v3 = [v2 airplaneMode];

  return v3;
}

- (id)currentCarrierName
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = CTRegistrationCopyOperatorName();

  return v3;
}

- (id)currentLocalizedCarrierName
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(ACCCommunicationsFeaturePlugin *)self currentCarrierName];
  v4 = [(ACCCommunicationsFeaturePlugin *)self currentRegistrationStatus];
  v5 = [(ACCCommunicationsFeaturePlugin *)self isAirplaneModeEnabled];
  if (v5)
  {
    v6 = @"Airplane Mode";
LABEL_8:
    v8 = acc_strings_bundle();
    v9 = [v8 localizedStringForKey:v6 value:&stru_2848E51E8 table:0];

    goto LABEL_9;
  }

  SIMStatus = CTSIMSupportGetSIMStatus();
  if (CFEqual(SIMStatus, *MEMORY[0x277CC3ED8]))
  {
    v6 = @"No SIM";
    goto LABEL_8;
  }

  if (v4 <= 6 && ((1 << v4) & 0x4A) != 0)
  {
    v6 = @"No Service";
    goto LABEL_8;
  }

  if ((v4 & 0xFFFFFFFD) == 0 || (v9 = v3, [v3 isEqualToString:&stru_2848E51E8]))
  {
    v6 = @"Searching...";
    goto LABEL_8;
  }

LABEL_9:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = "NO";
    v15 = 138413058;
    v16 = v9;
    v17 = 2112;
    if (v5)
    {
      v14 = "YES";
    }

    v18 = v3;
    v19 = 1024;
    v20 = v4;
    v21 = 2080;
    v22 = v14;
    _os_log_debug_impl(&dword_2335B8000, v10, OS_LOG_TYPE_DEBUG, "Generated localized carrier name: '%@' (origCarrierName: %@, registrationStatus: %{coreacc:ACCCommunications_CommunicationsUpdate_RegistrationStatus_t}d, airplaneMode: %s)", &v15, 0x26u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isFaceTimeAudioEnabled
{
  v2 = [MEMORY[0x277D07D70] sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.accessories.features.Communications" forService:2] == 1;

  return v3;
}

- (BOOL)isFaceTimeVideoEnabled
{
  v2 = [MEMORY[0x277D07D70] sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.accessories.features.Communications" forService:0] == 1;

  return v3;
}

- (BOOL)currentMuteStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -86;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__ACCCommunicationsFeaturePlugin_currentMuteStatus__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __51__ACCCommunicationsFeaturePlugin_currentMuteStatus__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 frontmostAudioOrVideoCall];

  *(*(*(a1 + 32) + 8) + 24) = [v3 isUplinkMuted];
}

- (id)currentAudioAndVideoCalls
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = MEMORY[0x277CBEBF8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ACCCommunicationsFeaturePlugin_currentAudioAndVideoCalls__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __59__ACCCommunicationsFeaturePlugin_currentAudioAndVideoCalls__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D6EDF8] sharedInstance];
  v2 = [v5 currentAudioAndVideoCalls];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)currentCallCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ACCCommunicationsFeaturePlugin_currentCallCount__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__ACCCommunicationsFeaturePlugin_currentCallCount__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentAudioAndVideoCalls];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (([*(*(&v9 + 1) + 8 * v7) isScreening] & 1) == 0)
        {
          ++*(*(*(a1 + 32) + 8) + 24);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isInitiateCallAllowed
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ACCCommunicationsFeaturePlugin_isInitiateCallAllowed__block_invoke;
  v4[3] = &unk_2789E2098;
  v4[4] = self;
  v4[5] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __55__ACCCommunicationsFeaturePlugin_isInitiateCallAllowed__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentCallCount];
  v3 = [MEMORY[0x277D6EDF8] sharedInstance];
  v4 = [v3 currentCallGroups];
  v5 = [v4 count];

  v6 = [MEMORY[0x277D6EDF8] sharedInstance];
  v7 = [v6 isAddCallAllowed];

  if (!v2 || v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (v5 >= 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v8 = [MEMORY[0x277D6EDF8] sharedInstance];
    v9 = [v8 audioOrVideoCallWithStatus:4];
    if (v9)
    {

LABEL_10:
      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_11;
    }

    v10 = [MEMORY[0x277D6EDF8] sharedInstance];
    v11 = [v10 audioOrVideoCallWithStatus:3];

    if (v11)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v12 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = "NO";
    if (v7)
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v15 = "YES";
    }

    v17 = 134218498;
    v18 = v2;
    v19 = 2080;
    v20 = v16;
    v21 = 2080;
    v22 = v15;
    _os_log_debug_impl(&dword_2335B8000, v12, OS_LOG_TYPE_DEBUG, "currentCallCount: %lu, addCallAllowed: %s, initiateCallAllowed: %s", &v17, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEndAndAcceptAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if ([(ACCCommunicationsFeaturePlugin *)self currentCallCount]>= 2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__ACCCommunicationsFeaturePlugin_isEndAndAcceptAvailable__block_invoke;
    v4[3] = &unk_2789E2070;
    v4[4] = &v5;
    executeOnMainThreadSync(v4);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __57__ACCCommunicationsFeaturePlugin_isEndAndAcceptAvailable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 audioOrVideoCallWithStatus:4];

  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (BOOL)isHoldAndAcceptAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(ACCCommunicationsFeaturePlugin *)self isEndAndAcceptAvailable];
  *(v7 + 24) = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__ACCCommunicationsFeaturePlugin_isHoldAndAcceptAvailable__block_invoke;
    v5[3] = &unk_2789E2070;
    v5[4] = &v6;
    executeOnMainThreadSync(v5);
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

void __58__ACCCommunicationsFeaturePlugin_isHoldAndAcceptAvailable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 isHoldAndAnswerAllowed];
}

- (BOOL)isSwapAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__ACCCommunicationsFeaturePlugin_isSwapAvailable__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __49__ACCCommunicationsFeaturePlugin_isSwapAvailable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v11 = [v2 frontmostAudioOrVideoCall];

  v3 = v11;
  if (v11)
  {
    v4 = [v11 model];
    *(*(*(a1 + 32) + 8) + 24) = [v4 supportsHolding];

    v3 = v11;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v5 = [MEMORY[0x277D6EDF8] sharedInstance];
    v6 = [v5 currentCallGroups];
    *(*(*(a1 + 32) + 8) + 24) = [v6 count] > 1;

    v3 = v11;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v7 = [MEMORY[0x277D6EDF8] sharedInstance];
      v8 = [v7 audioOrVideoCallWithStatus:4];
      if (v8)
      {

        v3 = v11;
      }

      else
      {
        v9 = [MEMORY[0x277D6EDF8] sharedInstance];
        v10 = [v9 audioOrVideoCallWithStatus:3];

        v3 = v11;
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

LABEL_9:
}

- (BOOL)isMergeAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ACCCommunicationsFeaturePlugin_isMergeAvailable__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__ACCCommunicationsFeaturePlugin_isMergeAvailable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v11 = [v2 frontmostAudioOrVideoCall];

  v3 = v11;
  if (v11)
  {
    v4 = [v11 model];
    *(*(*(a1 + 32) + 8) + 24) = [v4 supportsGrouping];

    v3 = v11;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v5 = [MEMORY[0x277D6EDF8] sharedInstance];
    v6 = [v5 currentCallGroups];
    *(*(*(a1 + 32) + 8) + 24) = [v6 count] > 1;

    v3 = v11;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v7 = [MEMORY[0x277D6EDF8] sharedInstance];
      v8 = [v7 audioOrVideoCallWithStatus:4];
      if (v8)
      {

        v3 = v11;
      }

      else
      {
        v9 = [MEMORY[0x277D6EDF8] sharedInstance];
        v10 = [v9 audioOrVideoCallWithStatus:3];

        v3 = v11;
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

LABEL_9:
}

- (BOOL)isHoldAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__ACCCommunicationsFeaturePlugin_isHoldAvailable__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __49__ACCCommunicationsFeaturePlugin_isHoldAvailable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v12 = [v2 frontmostAudioOrVideoCall];

  v3 = v12;
  if (v12)
  {
    v4 = [v12 model];
    *(*(*(a1 + 32) + 8) + 24) = [v4 supportsHolding];

    v3 = v12;
  }

  v5 = *(a1 + 32);
  if (*(*(v5 + 8) + 24) == 1)
  {
    v6 = [MEMORY[0x277D6EDF8] sharedInstance];
    v7 = [v6 audioOrVideoCallWithStatus:2];

    v5 = *(a1 + 32);
    if (v7)
    {
      *(*(v5 + 8) + 24) = 0;
      v5 = *(a1 + 32);
    }

    v3 = v12;
  }

  if (*(*(v5 + 8) + 24) == 1)
  {
    v8 = [MEMORY[0x277D6EDF8] sharedInstance];
    v9 = [v8 audioOrVideoCallWithStatus:4];
    if (v9)
    {

      v3 = v12;
    }

    else
    {
      v10 = [MEMORY[0x277D6EDF8] sharedInstance];
      v11 = [v10 audioOrVideoCallWithStatus:3];

      v3 = v12;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

LABEL_12:
}

- (BOOL)initiateCallToDestination:(id)a3 withService:(int)a4 addressBookID:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(ACCCommunicationsFeaturePlugin *)self currentCallCount];
  if ([(ACCCommunicationsFeaturePlugin *)self isInitiateCallAllowed])
  {
    v11 = objc_alloc_init(MEMORY[0x277D6EE28]);
    switch(a4)
    {
      case 3:
        if (!v10)
        {
          v19 = objc_alloc(MEMORY[0x277D6EED0]);
          v20 = [v11 faceTimeProvider];
          v14 = [v19 initWithProvider:v20];

          [v14 setVideo:1];
          if (v9 && [v9 length])
          {
            [v14 setContactIdentifier:v9];
          }

          if (gLogObjects && gNumLogObjects >= 1)
          {
            v16 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCCommunicationsFeaturePlugin startPlugin];
            }

            v16 = MEMORY[0x277D86220];
            v26 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_50;
          }

          v32 = 138477827;
          v33 = v8;
          v22 = "Initiating FaceTime Video call to: %{private}@...";
          goto LABEL_49;
        }

        v14 = logObjectForModule();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
LABEL_38:
          v24 = 0;
LABEL_51:

          goto LABEL_52;
        }

        LOWORD(v32) = 0;
        v31 = "Cannot add FaceTime Video call if there is already an active call - ignoring request";
        break;
      case 2:
        if (!v10)
        {
          v17 = objc_alloc(MEMORY[0x277D6EED0]);
          v18 = [v11 faceTimeProvider];
          v14 = [v17 initWithProvider:v18];

          [v14 setVideo:0];
          if (v9 && [v9 length])
          {
            [v14 setContactIdentifier:v9];
          }

          if (gLogObjects && gNumLogObjects >= 1)
          {
            v16 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCCommunicationsFeaturePlugin startPlugin];
            }

            v16 = MEMORY[0x277D86220];
            v25 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_50;
          }

          v32 = 138477827;
          v33 = v8;
          v22 = "Initiating FaceTime Audio call to: %{private}@...";
          goto LABEL_49;
        }

        v14 = logObjectForModule();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        LOWORD(v32) = 0;
        v31 = "Cannot add FaceTime Audio call if there is already an active call - ignoring request";
        break;
      case 1:
        v12 = objc_alloc(MEMORY[0x277D6EED0]);
        v13 = [v11 telephonyProvider];
        v14 = [v12 initWithProvider:v13];

        if (v9 && [v9 length])
        {
          [v14 setContactIdentifier:v9];
        }

        v15 = [MEMORY[0x277D6EEE8] handleWithDestinationID:v8];
        [v14 setHandle:v15];

        if (gLogObjects && gNumLogObjects >= 1)
        {
          v16 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCCommunicationsFeaturePlugin startPlugin];
          }

          v16 = MEMORY[0x277D86220];
          v21 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        v32 = 138477827;
        v33 = v8;
        v22 = "Initiating telephony call to: %{private}@...";
LABEL_49:
        _os_log_impl(&dword_2335B8000, v16, OS_LOG_TYPE_DEFAULT, v22, &v32, 0xCu);
LABEL_50:

        v27 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v28 = [v14 URL];
        v24 = [v27 openURL:v28 withOptions:0];

        goto LABEL_51;
      default:
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v14 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCCommunicationsFeaturePlugin startPlugin];
          }

          v14 = MEMORY[0x277D86220];
          v23 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin initiateCallToDestination:withService:addressBookID:];
        }

        goto LABEL_38;
    }

    _os_log_impl(&dword_2335B8000, v14, OS_LOG_TYPE_DEFAULT, v31, &v32, 2u);
    goto LABEL_38;
  }

  v11 = logObjectForModule();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_2335B8000, v11, OS_LOG_TYPE_DEFAULT, "Cannot add call - ignoring request", &v32, 2u);
  }

  v24 = 0;
LABEL_52:

  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)initiateCallToVoicemail
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_2335B8000, v5, OS_LOG_TYPE_DEFAULT, "Initiating call to voicemail...", v14, 2u);
  }

  if (![(ACCCommunicationsFeaturePlugin *)self isInitiateCallAllowed])
  {
    return 0;
  }

  v6 = objc_alloc_init(MEMORY[0x277D6EE28]);
  v7 = objc_alloc(MEMORY[0x277D6EED0]);
  v8 = [v6 voicemailProvider];
  v9 = [v7 initWithProvider:v8];

  [v9 setDialType:2];
  v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11 = [v9 URL];
  v12 = [v10 openURL:v11 withOptions:0];

  return v12;
}

- (BOOL)initiateRedial
{
  v40 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335B8000, v5, OS_LOG_TYPE_DEFAULT, "Initiating redial...", buf, 2u);
  }

  v6 = [(ACCCommunicationsFeaturePlugin *)self chManager];
  v7 = [MEMORY[0x277CF7D48] predicateForCallsWithStatusOriginated:1];
  *buf = v7;
  v8 = [MEMORY[0x277CF7D48] predicateForCallsWithAnyMediaTypes:&unk_2848E5A68];
  v38 = v8;
  v9 = MEMORY[0x277CF7D48];
  v10 = *MEMORY[0x277CF7E00];
  v36[0] = *MEMORY[0x277CF7E08];
  v36[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v12 = [v9 predicateForCallsWithAnyServiceProviders:v11];
  v39 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

  v14 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v13];

  v15 = [v6 callsWithPredicate:v14 limit:1 offset:0 batchSize:0];

  if (![v15 count])
  {
    v17 = logObjectForModule();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "No recent calls - ignoring request!";
LABEL_28:
      _os_log_impl(&dword_2335B8000, v17, OS_LOG_TYPE_DEFAULT, v35, buf, 2u);
    }

LABEL_30:
    v32 = 0;
    goto LABEL_23;
  }

  v16 = [v15 objectAtIndex:0];
  if (!v16)
  {
    v17 = logObjectForModule();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "Could not find last outgoing call - ignoring request!";
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v17 = v16;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v18 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(ACCCommunicationsFeaturePlugin *)v17 initiateRedial:v18];
  }

  v26 = [v17 remoteParticipantHandles];
  v27 = [v26 count];

  if (v27 != 1)
  {
    [ACCCommunicationsFeaturePlugin initiateRedial];
    goto LABEL_30;
  }

  v28 = objc_alloc_init(MEMORY[0x277D6EE28]);
  v29 = [v28 dialRequestForRecentCall:v17];
  v30 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v31 = [v29 URL];
  v32 = [v30 openURL:v31 withOptions:0];

LABEL_23:
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)acceptCallWithAction:(int)a3 callUUID:(id)a4
{
  v6 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v7 = [(ACCCommunicationsFeaturePlugin *)self currentCallCount];
  v8 = [(ACCCommunicationsFeaturePlugin *)self isEndAndAcceptAvailable];
  v9 = [(ACCCommunicationsFeaturePlugin *)self isHoldAndAcceptAvailable];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke;
  v21[3] = &unk_2789E2098;
  v10 = v6;
  v22 = v10;
  v23 = &v24;
  executeOnMainThreadSync(v21);
  if (v25[5])
  {
    v11 = v7 < 2;
    if (v7 >= 2)
    {
      v12 = a3;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v11 = 1;
    }

    if (!v11 && !v9)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v13 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2335B8000, v13, OS_LOG_TYPE_INFO, "Cannot hold and accept - ending and accepting instead", buf, 2u);
      }

      v12 = 1;
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90;
    v17[3] = &unk_2789E20C0;
    v18 = v12;
    v17[4] = &v24;
    v17[5] = &v30;
    v17[6] = v7;
    v19 = v8;
    executeOnMainThreadSync(v17);
  }

  else
  {
    [ACCCommunicationsFeaturePlugin acceptCallWithAction:callUUID:];
  }

  v15 = *(v31 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

void __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277D6EDF8] sharedInstance];
    v4 = [v3 callWithCallUUID:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_22;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v7 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_cold_2(v2);
    }
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v7 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_INFO, "No call UUID specified - falling back to incoming call", v19, 2u);
    }
  }

LABEL_22:
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = [MEMORY[0x277D6EDF8] sharedInstance];
    v12 = [v11 incomingCall];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v15 = [MEMORY[0x277D6EDF8] sharedInstance];
      v16 = [v15 incomingVideoCall];
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }
}

void __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 != 1)
  {
    if (!v2)
    {
      v3 = *(a1 + 48);
      if (v3 == 2)
      {
        if (gLogObjects)
        {
          v4 = gNumLogObjects < 1;
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCCommunicationsFeaturePlugin startPlugin];
          }

          v15 = MEMORY[0x277D86220];
          v5 = MEMORY[0x277D86220];
        }

        else
        {
          v15 = *gLogObjects;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2335B8000, v15, OS_LOG_TYPE_DEFAULT, "Holding active and accepting incoming call...", buf, 2u);
        }

        v16 = [MEMORY[0x277D6EDF8] sharedInstance];
        [v16 holdActiveAndAnswerCall:*(*(*(a1 + 32) + 8) + 40)];
      }

      else if (v3 < 3)
      {
        if (v3 == 1 && ([MEMORY[0x277D6EDF8] sharedInstance], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "audioOrVideoCallWithStatus:", 2), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v19 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCCommunicationsFeaturePlugin startPlugin];
            }

            v19 = MEMORY[0x277D86220];
            v31 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v38 = 0;
            _os_log_impl(&dword_2335B8000, v19, OS_LOG_TYPE_DEFAULT, "Unholding call...", v38, 2u);
          }

          v16 = [MEMORY[0x277D6EDF8] sharedInstance];
          v32 = [MEMORY[0x277D6EDF8] sharedInstance];
          v33 = [v32 audioOrVideoCallWithStatus:2];
          [v16 unholdCall:v33];
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v23 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCCommunicationsFeaturePlugin startPlugin];
            }

            v23 = MEMORY[0x277D86220];
            v28 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v37 = 0;
            _os_log_impl(&dword_2335B8000, v23, OS_LOG_TYPE_DEFAULT, "Accepting incoming call...", v37, 2u);
          }

          v16 = [MEMORY[0x277D6EDF8] sharedInstance];
          [v16 answerCall:*(*(*(a1 + 32) + 8) + 40)];
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v11 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCCommunicationsFeaturePlugin startPlugin];
          }

          v11 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v39 = 0;
          _os_log_impl(&dword_2335B8000, v11, OS_LOG_TYPE_DEFAULT, "Ending held, holding active, and answering incoming call...", v39, 2u);
        }

        v16 = [MEMORY[0x277D6EDF8] sharedInstance];
        [v16 endHeldAndAnswerCall:*(*(*(a1 + 32) + 8) + 40)];
      }

      goto LABEL_91;
    }

    if (gLogObjects)
    {
      v9 = gNumLogObjects < 1;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v14 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *gLogObjects;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90_cold_11();
    }

LABEL_44:

    return;
  }

  if (*(a1 + 60) != 1)
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v22 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v22 = *gLogObjects;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_2335B8000, v22, OS_LOG_TYPE_DEFAULT, "Ending all calls and hoping we get called back (probably CDMA)...", v34, 2u);
    }

    v16 = [MEMORY[0x277D6EDF8] sharedInstance];
    [v16 disconnectAllCalls];
    goto LABEL_91;
  }

  v6 = *(a1 + 48);
  if (v6 == 2)
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 1;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v25 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v25 = *gLogObjects;
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    v36 = 0;
    v26 = "Ending active and accepting incoming call...";
    v27 = &v36;
    goto LABEL_89;
  }

  if (gLogObjects)
  {
    v20 = gNumLogObjects <= 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  if (v6 < 3)
  {
    if (v21)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v14 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90_cold_3();
    }

    goto LABEL_44;
  }

  if (v21)
  {
    v25 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v25 = MEMORY[0x277D86220];
    v29 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    v26 = "Leaving held, ending active, and answering incoming call...";
    v27 = v35;
LABEL_89:
    _os_log_impl(&dword_2335B8000, v25, OS_LOG_TYPE_DEFAULT, v26, v27, 2u);
  }

LABEL_90:

  v16 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v16 endActiveAndAnswerCall:*(*(*(a1 + 32) + 8) + 40)];
LABEL_91:

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (BOOL)endCallWithAction:(int)a3 callUUID:(id)a4
{
  v5 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke;
  v11[3] = &unk_2789E2098;
  v6 = v5;
  v12 = v6;
  v13 = &v14;
  executeOnMainThreadSync(v11);
  if (v15[5])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke_91;
    v9[3] = &unk_2789E20E8;
    v10 = a3;
    v9[4] = &v14;
    v9[5] = &v20;
    executeOnMainThreadSync(v9);
  }

  else
  {
    [ACCCommunicationsFeaturePlugin endCallWithAction:callUUID:];
  }

  v7 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277D6EDF8] sharedInstance];
    v4 = [v3 callWithCallUUID:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (gLogObjects)
    {
      v7 = gNumLogObjects <= 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      if (v8)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v9 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_cold_2(v2);
      }

      goto LABEL_34;
    }

    if (v8)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = *v2;
      v23 = 138412290;
      v24 = v17;
      v13 = "Couldn't find call with specified UUID: %@ - falling back to frontmost call";
      v14 = v9;
      v15 = 12;
      goto LABEL_33;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      v13 = "No call UUID specified - falling back to frontmost call";
      v14 = v9;
      v15 = 2;
LABEL_33:
      _os_log_impl(&dword_2335B8000, v14, OS_LOG_TYPE_INFO, v13, &v23, v15);
    }
  }

LABEL_34:

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v18 = [MEMORY[0x277D6EDF8] sharedInstance];
    v19 = [v18 frontmostAudioOrVideoCall];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke_91(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (gLogObjects)
    {
      v1 = gNumLogObjects < 1;
    }

    else
    {
      v1 = 1;
    }

    if (v1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v8 = MEMORY[0x277D86220];
      v2 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *gLogObjects;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke_91_cold_2();
    }
  }

  else
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) status];
    if (gLogObjects)
    {
      v5 = gNumLogObjects <= 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
    if (v4 == 4)
    {
      if (v6)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v7 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_DEFAULT, "Declining incoming call...", buf, 2u);
      }

      v11 = [MEMORY[0x277D6EDF8] sharedInstance];
      [v11 disconnectCall:*(*(*(a1 + 32) + 8) + 40) withReason:2];
    }

    else
    {
      if (v6)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v9 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_2335B8000, v9, OS_LOG_TYPE_DEFAULT, "Ending call and activating held (if any)...", v16, 2u);
      }

      v13 = [MEMORY[0x277D6EDF8] sharedInstance];
      [v13 disconnectCall:*(*(*(a1 + 32) + 8) + 40)];

      v11 = [MEMORY[0x277D6EDF8] sharedInstance];
      v14 = [MEMORY[0x277D6EDF8] sharedInstance];
      v15 = [v14 audioOrVideoCallWithStatus:2];
      [v11 unholdCall:v15];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)endAllCalls
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__ACCCommunicationsFeaturePlugin_endAllCalls__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __45__ACCCommunicationsFeaturePlugin_endAllCalls__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v2 disconnectAllCalls];

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (BOOL)swapCalls
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(ACCCommunicationsFeaturePlugin *)self isSwapAvailable])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__ACCCommunicationsFeaturePlugin_swapCalls__block_invoke;
    v8[3] = &unk_2789E2070;
    v8[4] = &v9;
    executeOnMainThreadSync(v8);
  }

  else
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 1;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v4 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    else
    {
      v4 = *gLogObjects;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_DEFAULT, "Swap calls isn't available - ignoring request", v7, 2u);
    }
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __43__ACCCommunicationsFeaturePlugin_swapCalls__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_DEFAULT, "Swapping calls...", v6, 2u);
  }

  v5 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v5 swapCalls];

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (BOOL)mergeCalls
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(ACCCommunicationsFeaturePlugin *)self isMergeAvailable])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__ACCCommunicationsFeaturePlugin_mergeCalls__block_invoke;
    v8[3] = &unk_2789E2070;
    v8[4] = &v9;
    executeOnMainThreadSync(v8);
  }

  else
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 1;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v4 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    else
    {
      v4 = *gLogObjects;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_DEFAULT, "Merge calls isn't available - ignoring request", v7, 2u);
    }
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __44__ACCCommunicationsFeaturePlugin_mergeCalls__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_DEFAULT, "Merging calls...", v10, 2u);
  }

  v5 = [MEMORY[0x277D6EDF8] sharedInstance];
  v6 = [v5 callWithStatus:2];

  v7 = [MEMORY[0x277D6EDF8] sharedInstance];
  v8 = [v7 callWithStatus:1];

  v9 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v9 groupCall:v6 withOtherCall:v8];

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (BOOL)updateHoldStatus:(BOOL)a3 forCallWithUUID:(id)a4
{
  v4 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "NO";
    if (v4)
    {
      v10 = "YES";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_2335B8000, v9, OS_LOG_TYPE_INFO, "Setting hold status to %s...", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__ACCCommunicationsFeaturePlugin_updateHoldStatus_forCallWithUUID___block_invoke;
  v18[3] = &unk_2789E2098;
  v11 = v6;
  v19 = v11;
  p_buf = &buf;
  executeOnMainThreadSync(v18);
  if (*(*(&buf + 1) + 40))
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = [(ACCCommunicationsFeaturePlugin *)self isHoldAvailable];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__ACCCommunicationsFeaturePlugin_updateHoldStatus_forCallWithUUID___block_invoke_92;
    v14[3] = &unk_2789E2110;
    v14[5] = &buf;
    v14[6] = v16;
    v14[4] = self;
    v15 = v4;
    executeOnMainThreadSync(v14);
    _Block_object_dispose(v16, 8);
  }

  else
  {
    [ACCCommunicationsFeaturePlugin updateHoldStatus:forCallWithUUID:];
  }

  _Block_object_dispose(&buf, 8);
  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void __67__ACCCommunicationsFeaturePlugin_updateHoldStatus_forCallWithUUID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277D6EDF8] sharedInstance];
    v4 = [v3 callWithCallUUID:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (gLogObjects)
    {
      v7 = gNumLogObjects <= 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      if (v8)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v9 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_cold_2(v2);
      }

      goto LABEL_34;
    }

    if (v8)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = *v2;
      v23 = 138412290;
      v24 = v17;
      v13 = "Could not find call with specified UUID: %@ - falling back to frontmost call";
      v14 = v9;
      v15 = 12;
      goto LABEL_33;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      v13 = "No call UUID specified - falling back to frontmost call";
      v14 = v9;
      v15 = 2;
LABEL_33:
      _os_log_impl(&dword_2335B8000, v14, OS_LOG_TYPE_INFO, v13, &v23, v15);
    }
  }

LABEL_34:

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v18 = [MEMORY[0x277D6EDF8] sharedInstance];
    v19 = [v18 frontmostAudioOrVideoCall];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __67__ACCCommunicationsFeaturePlugin_updateHoldStatus_forCallWithUUID___block_invoke_92(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) status] != 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  if ([*(a1 + 32) isHoldAvailable])
  {
    if (*(a1 + 56))
    {
      v4 = [MEMORY[0x277D6EDF8] sharedInstance];
      [v4 holdCall:*(*(*(a1 + 40) + 8) + 40)];
LABEL_11:

      return;
    }

LABEL_10:
    v4 = [MEMORY[0x277D6EDF8] sharedInstance];
    [v4 unholdCall:*(*(*(a1 + 40) + 8) + 40)];
    goto LABEL_11;
  }

  if (!*(a1 + 56))
  {
    goto LABEL_10;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v2 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335B8000, v2, OS_LOG_TYPE_DEFAULT, "Hold isn't available - ignoring message", buf, 2u);
  }
}

- (BOOL)updateMuteStatus:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (v3)
    {
      v7 = "YES";
    }

    *buf = 136315138;
    v18 = v7;
    _os_log_impl(&dword_2335B8000, v6, OS_LOG_TYPE_DEFAULT, "Setting mute status to %s...", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__ACCCommunicationsFeaturePlugin_updateMuteStatus___block_invoke;
  v11[3] = &unk_2789E2138;
  v12 = v3;
  v11[4] = &v13;
  executeOnMainThreadSync(v11);
  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void __51__ACCCommunicationsFeaturePlugin_updateMuteStatus___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v4 = [v2 frontmostAudioOrVideoCall];

  v3 = v4;
  if (v4)
  {
    [v4 setUplinkMuted:*(a1 + 40)];
    v3 = v4;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (BOOL)sendDTMF:(int)a3 forCallWithUUID:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 >= 0xC)
  {
    [ACCCommunicationsFeaturePlugin sendDTMF:a3 forCallWithUUID:?];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__ACCCommunicationsFeaturePlugin_sendDTMF_forCallWithUUID___block_invoke;
    v10[3] = &unk_2789E2098;
    v11 = v5;
    v12 = &v13;
    executeOnMainThreadSync(v10);
    if (v14[5])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__ACCCommunicationsFeaturePlugin_sendDTMF_forCallWithUUID___block_invoke_93;
      v8[3] = &unk_2789E2160;
      v8[4] = &v13;
      v9 = a3;
      executeOnMainThreadSync(v8);
    }

    else
    {
      [ACCCommunicationsFeaturePlugin updateHoldStatus:forCallWithUUID:];
    }

    _Block_object_dispose(&v13, 8);
  }

  return 0;
}

void __59__ACCCommunicationsFeaturePlugin_sendDTMF_forCallWithUUID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277D6EDF8] sharedInstance];
    v4 = [v3 callWithCallUUID:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (gLogObjects)
    {
      v7 = gNumLogObjects <= 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      if (v8)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v9 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_cold_2(v2);
      }

      goto LABEL_34;
    }

    if (v8)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = *v2;
      v23 = 138412290;
      v24 = v17;
      v13 = "Could not find call with specified UUID: %@ - falling back to frontmost call";
      v14 = v9;
      v15 = 12;
      goto LABEL_33;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      v13 = "No call UUID specified - falling back to frontmost call";
      v14 = v9;
      v15 = 2;
LABEL_33:
      _os_log_impl(&dword_2335B8000, v14, OS_LOG_TYPE_INFO, v13, &v23, v15);
    }
  }

LABEL_34:

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v18 = [MEMORY[0x277D6EDF8] sharedInstance];
    v19 = [v18 frontmostCall];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __59__ACCCommunicationsFeaturePlugin_sendDTMF_forCallWithUUID___block_invoke_93(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(*(*(a1 + 32) + 8) + 40) shouldPlayDTMFTone])
  {
    v2 = *(a1 + 40);
    if (v2 > 0xB)
    {
      v3 = 0;
    }

    else
    {
      v3 = byte_2335C6798[v2];
    }

    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(*(*(a1 + 32) + 8) + 40) callUUID];
      v12[0] = 67109378;
      v12[1] = v3;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_2335B8000, v9, OS_LOG_TYPE_DEFAULT, "Playing DTMF Tone: 0x%02X, callUUID: %@", v12, 0x12u);
    }

    [*(*(*(a1 + 32) + 8) + 40) playDTMFToneForKey:v3];
  }

  else
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v8 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *gLogObjects;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_2335B8000, v8, OS_LOG_TYPE_DEFAULT, "Playing DTMF tone isn't available - ignoring message", v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)currentRecentsListWithCoalescing:(BOOL)a3 limit:(unint64_t)a4
{
  v5 = a3;
  v87 = *MEMORY[0x277D85DE8];
  v68 = [MEMORY[0x277CBEB18] array];
  if (v5)
  {
    v7 = *MEMORY[0x277CF7DE8];
    v8 = [(ACCCommunicationsFeaturePlugin *)self chManager];
    [v8 setCoalescingStrategy:v7];

    v9 = [(ACCCommunicationsFeaturePlugin *)self chManager];
    v10 = _recentCallsPredicate();
    [v9 coalescedCallsWithPredicate:v10 limit:a4 offset:0 batchSize:0];
  }

  else
  {
    v11 = [(ACCCommunicationsFeaturePlugin *)self chManager];
    [v11 setCoalescingStrategy:0];

    v9 = [(ACCCommunicationsFeaturePlugin *)self chManager];
    v10 = _recentCallsPredicate();
    [v9 callsWithPredicate:v10 limit:a4 offset:0 batchSize:0];
  }
  v12 = ;

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v13 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = [v12 count];
    v16 = "NO";
    *buf = 134218498;
    v82 = v15;
    if (v5)
    {
      v16 = "YES";
    }

    v83 = 2080;
    v84 = v16;
    v85 = 2048;
    v86 = a4;
    _os_log_impl(&dword_2335B8000, v13, OS_LOG_TYPE_INFO, "recentCalls.count: %lu (coalesce: %s, limit: %lu)", buf, 0x20u);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v12;
  v69 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
  if (v69)
  {
    v67 = *v75;
    v66 = *MEMORY[0x277CE8248];
    v65 = *MEMORY[0x277CE8228];
    v64 = *MEMORY[0x277CE8238];
    v63 = *MEMORY[0x277CE8220];
    v62 = *MEMORY[0x277CE8250];
    v61 = *MEMORY[0x277CF7DC8];
    v60 = *MEMORY[0x277CF7DD8];
    v59 = *MEMORY[0x277CF7DD0];
    v52 = *MEMORY[0x277CF7DB8];
    v51 = *MEMORY[0x277CF7DC0];
    v58 = *MEMORY[0x277CE8258];
    v57 = *MEMORY[0x277CF7DA0];
    v56 = *MEMORY[0x277CE8260];
    HIDWORD(v50) = *MEMORY[0x277CF7D88] | *MEMORY[0x277CF7D78];
    LODWORD(v50) = *MEMORY[0x277CF7D90] | *MEMORY[0x277CF7D80];
    v55 = *MEMORY[0x277CE8230];
    v54 = *MEMORY[0x277CE8240];
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v75 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v74 + 1) + 8 * i);
        v78[0] = v66;
        v19 = [v18 callerId];
        v73 = v19;
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = &stru_2848E51E8;
        }

        v79[0] = v20;
        v78[1] = v65;
        v72 = [v18 callerNameForDisplay];
        v21 = removeBidirectionalUnicodeCharacters(v72);
        v71 = v21;
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = &stru_2848E51E8;
        }

        v79[1] = v22;
        v78[2] = v64;
        v23 = [v18 callerIdSubStringForDisplay];
        v70 = v23;
        if (v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = &stru_2848E51E8;
        }

        v79[2] = v24;
        v78[3] = v63;
        v25 = [v18 contactIdentifier];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = &stru_2848E51E8;
        }

        v79[3] = v27;
        v78[4] = v62;
        v28 = MEMORY[0x277CCABB0];
        v29 = [v18 callType];
        if ((v61 & v29) == 0 && (v60 & v29) == 0 && (v59 & v29) == 0)
        {
          if (v51 == v29)
          {
            v33 = 3;
          }

          else
          {
            v33 = 0;
          }

          if (v52 == v29)
          {
            v32 = 2;
          }

          else
          {
            v32 = v33;
          }
        }

        else
        {
          v32 = 1;
        }

        v34 = [v28 numberWithUnsignedInt:v32];
        v79[4] = v34;
        v78[5] = v58;
        v35 = MEMORY[0x277CCABB0];
        v36 = [v18 callStatus];
        if ((v57 & v36) != 0)
        {
          v37 = 3;
        }

        else if ((HIDWORD(v50) & v36) != 0)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2 * ((v50 & v36) != 0);
        }

        v38 = [v35 numberWithUnsignedInt:v37];
        v79[5] = v38;
        v78[6] = v56;
        v39 = MEMORY[0x277CCABB0];
        v40 = [v18 date];
        [v40 timeIntervalSince1970];
        v42 = [v39 numberWithLongLong:v41];
        v79[6] = v42;
        v78[7] = v55;
        v43 = MEMORY[0x277CCABB0];
        [v18 duration];
        v45 = [v43 numberWithLong:v44];
        v79[7] = v45;
        v78[8] = v54;
        v46 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v18, "numberOfOccurrences")}];
        v79[8] = v46;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:9];

        [v68 addObject:v47];
      }

      v69 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
    }

    while (v69);
  }

  v48 = *MEMORY[0x277D85DE8];

  return v68;
}

- (id)currentFavoritesListWithLimit:(unint64_t)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v68 = [MEMORY[0x277CBEB18] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v3 = [MEMORY[0x277CBDAF8] sharedInstance];
  v4 = [v3 entries];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v77;
    v8 = *MEMORY[0x277CBCF70];
    v65 = *MEMORY[0x277CBCF80];
    v63 = *MEMORY[0x277CBCF58];
    v64 = *MEMORY[0x277CBCF68];
    v61 = *MEMORY[0x277CBD098];
    v62 = *MEMORY[0x277CE8210];
    v56 = *MEMORY[0x277CBCFC0];
    v60 = *MEMORY[0x277CE8200];
    v59 = *MEMORY[0x277CE8208];
    v58 = *MEMORY[0x277CE81F8];
    v57 = *MEMORY[0x277CE8218];
    v66 = *MEMORY[0x277CBCF70];
    v67 = *v77;
    do
    {
      v9 = 0;
      v69 = v6;
      do
      {
        if (*v77 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v76 + 1) + 8 * v9);
        v11 = [v10 actionType];
        v12 = [v11 isEqual:v8];

        if (v12)
        {
          v13 = [v10 bundleIdentifier];
          v14 = [v13 isEqual:v64];

          if (v14)
          {
            v15 = 1;
            goto LABEL_13;
          }

          v15 = 2;
        }

        else
        {
          v16 = [v10 actionType];
          v17 = [v16 isEqual:v65];

          if (!v17)
          {
            goto LABEL_34;
          }

          v15 = 3;
        }

        v18 = [v10 bundleIdentifier];
        v19 = [v18 isEqual:v63];

        if (!v19)
        {
          goto LABEL_34;
        }

LABEL_13:

        v80[0] = v62;
        v20 = v10;
        v21 = [v20 contactProperty];
        v22 = [v21 key];
        v23 = [v22 isEqual:v61];

        v24 = [v20 contactProperty];
        v25 = v24;
        if (v23)
        {
          v26 = [v24 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_20;
          }

          v28 = [v20 contactProperty];
          v29 = [v28 value];

          v30 = [v29 stringValue];
        }

        else
        {
          v31 = [v24 key];
          v32 = [v31 isEqual:v56];

          if (!v32)
          {
            goto LABEL_20;
          }

          v33 = [v20 contactProperty];
          v34 = [v33 value];
          objc_opt_class();
          v35 = objc_opt_isKindOfClass();

          if ((v35 & 1) == 0)
          {
LABEL_20:
            v36 = 0;
            goto LABEL_21;
          }

          v29 = [v20 contactProperty];
          v30 = [v29 value];
        }

        v36 = v30;

LABEL_21:
        v71 = v36;

        if (v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = &stru_2848E51E8;
        }

        v81[0] = v37;
        v80[1] = v60;
        v75 = [v20 name];
        v38 = removeBidirectionalUnicodeCharacters(v75);
        v39 = v38;
        if (v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = &stru_2848E51E8;
        }

        v81[1] = v40;
        v80[2] = v59;
        v41 = MEMORY[0x277CBDB20];
        v74 = [v20 contactProperty];
        v72 = [v74 label];
        v73 = [v20 contactProperty];
        v42 = [v73 key];
        v43 = [v41 localizedDisplayStringForLabel:v72 propertyName:v42];
        v44 = _overrideLabelForFaceTime(v43, v15);
        v45 = v44;
        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = &stru_2848E51E8;
        }

        v81[2] = v46;
        v80[3] = v58;
        v47 = [v20 contactProperty];
        v48 = [v47 contact];
        v49 = [v48 identifier];
        v50 = v15;
        v51 = v49;
        if (v49)
        {
          v52 = v49;
        }

        else
        {
          v52 = &stru_2848E51E8;
        }

        v81[3] = v52;
        v80[4] = v57;
        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v50];
        v81[4] = v53;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:5];

        [v68 addObject:v10];
        v8 = v66;
        v7 = v67;
        v6 = v69;
LABEL_34:

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v6);
  }

  v54 = *MEMORY[0x277D85DE8];

  return v68;
}

- (void)callStateDidChangeNotification:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = gLogObjects;
  v6 = gNumLogObjects;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v89 = v5;
      v90 = 1024;
      v91 = v6;
      OUTLINED_FUNCTION_5(&dword_2335B8000, MEMORY[0x277D86220], v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v89 = v4;
    _os_log_impl(&dword_2335B8000, v10, OS_LOG_TYPE_INFO, "Notification received:\n%@", buf, 0xCu);
  }

  v11 = [v4 name];
  v12 = *MEMORY[0x277D6EFF0];
  v13 = [v11 isEqualToString:*MEMORY[0x277D6EFF0]];
  v14 = MEMORY[0x277D6F038];
  v15 = MEMORY[0x277D6EFD8];
  v76 = v4;
  if (v13)
  {
    goto LABEL_16;
  }

  v16 = [v4 name];
  if ([v16 isEqualToString:*v14])
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  v17 = v14;
  v18 = [v4 name];
  if ([v18 isEqualToString:*v15])
  {

    v14 = v17;
    goto LABEL_15;
  }

  v47 = [v4 name];
  v48 = [v47 isEqualToString:*MEMORY[0x277D6F020]];

  v14 = v17;
  if ((v48 & 1) == 0)
  {
    v19 = v76;
    v49 = [v76 name];
    v50 = [v49 isEqualToString:*MEMORY[0x277D6F000]];

    if (!v50)
    {
      goto LABEL_62;
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v23 = [(ACCCommunicationsFeaturePlugin *)self currentAudioAndVideoCalls];
    v51 = [v23 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v80;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v80 != v53)
          {
            objc_enumerationMutation(v23);
          }

          v55 = *(*(&v79 + 1) + 8 * i);
          if ([v55 status] == 1)
          {
            v56 = _callStateDictionaryForCall(v55);
            v57 = [(ACCCommunicationsFeaturePlugin *)self queue];
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __65__ACCCommunicationsFeaturePlugin_callStateDidChangeNotification___block_invoke_3;
            v77[3] = &unk_2789E2048;
            v77[4] = self;
            v78 = v56;
            v58 = v56;
            dispatch_async(v57, v77);
          }
        }

        v52 = [v23 countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v52);
      v19 = v76;
    }

    goto LABEL_61;
  }

LABEL_17:
  v19 = v76;
  v20 = [v76 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v22 = [v76 object];
    v23 = v22;
    if (!v22)
    {
      goto LABEL_61;
    }

    if ([v22 status] == 3 || objc_msgSend(v23, "status") == 4 || objc_msgSend(v23, "status") == 6 || objc_msgSend(v23, "status") == 1 && (objc_msgSend(v23, "isScreening") & 1) != 0 || objc_msgSend(v23, "status") == 1 && (objc_msgSend(v23, "isScreening") & 1) == 0 && objc_msgSend(v23, "wasScreened"))
    {
      v24 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v25 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_3(3.8521e-34);
          *(v72 + 14) = v24;
          OUTLINED_FUNCTION_5(&dword_2335B8000, MEMORY[0x277D86220], v73, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v25 = MEMORY[0x277D86220];
        v26 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2335B8000, v25, OS_LOG_TYPE_DEBUG, "Creating CallCountDidChangeNotification NSNotification...", buf, 2u);
      }

      v27 = [MEMORY[0x277CCAB88] notificationWithName:@"CallCountDidChangeNotification" object:0];
      [(ACCCommunicationsFeaturePlugin *)self commStatusDidChangeNotification:v27];
    }

    v28 = [v76 name];
    if ([v28 isEqualToString:v12])
    {
    }

    else
    {
      v29 = [v76 name];
      v30 = [v29 isEqualToString:*v14];

      if (!v30)
      {
LABEL_43:
        v35 = [v76 name];
        if (![v35 isEqualToString:*v15] || objc_msgSend(v23, "status") == 1)
        {

          goto LABEL_47;
        }

        v36 = [v23 isScreening];

        if (v36)
        {
LABEL_47:
          v37 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v38 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_3(3.8521e-34);
              *(v70 + 14) = v37;
              OUTLINED_FUNCTION_5(&dword_2335B8000, MEMORY[0x277D86220], v71, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v38 = MEMORY[0x277D86220];
            v39 = MEMORY[0x277D86220];
          }

          if (OUTLINED_FUNCTION_16())
          {
            v59 = [v76 name];
            *buf = 138412290;
            v89 = v59;
            OUTLINED_FUNCTION_11();
            _os_log_debug_impl(v60, v61, v62, v63, v64, 0xCu);
          }

          v40 = _callStateDictionaryForCall(v23);
          if (acc_userDefaults_copyIntegerForKey(@"LiveVoicemailFakeRinging") && [v23 status] == 1 && (objc_msgSend(v23, "isScreening") & 1) == 0 && objc_msgSend(v23, "wasScreened"))
          {
            v41 = [v40 mutableCopy];
            [v41 setValue:&unk_2848E59D8 forKey:*MEMORY[0x277CE8168]];
            v42 = [(ACCCommunicationsFeaturePlugin *)self queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __65__ACCCommunicationsFeaturePlugin_callStateDidChangeNotification___block_invoke;
            block[3] = &unk_2789E2048;
            block[4] = self;
            v86 = v41;
            v43 = v41;
            dispatch_async(v42, block);
          }

          v44 = [(ACCCommunicationsFeaturePlugin *)self queue];
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __65__ACCCommunicationsFeaturePlugin_callStateDidChangeNotification___block_invoke_2;
          v83[3] = &unk_2789E2048;
          v83[4] = self;
          v84 = v40;
          v45 = v40;
          dispatch_async(v44, v83);
        }

LABEL_61:

        goto LABEL_62;
      }
    }

    v31 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v32 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3(3.8521e-34);
        *(v74 + 14) = v31;
        OUTLINED_FUNCTION_5(&dword_2335B8000, MEMORY[0x277D86220], v75, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }

      v32 = MEMORY[0x277D86220];
      v33 = MEMORY[0x277D86220];
    }

    if (OUTLINED_FUNCTION_16())
    {
      *buf = 0;
      OUTLINED_FUNCTION_11();
      _os_log_debug_impl(v65, v66, v67, v68, v69, 2u);
    }

    v34 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D6F0B0] object:0];
    [(ACCCommunicationsFeaturePlugin *)self commStatusDidChangeNotification:v34];

    goto LABEL_43;
  }

LABEL_62:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)currentSignalStrength
{
  CTIndicatorsGetSignalStrength();
  v2 = [MEMORY[0x277CCABB0] numberWithInt:0];
  *a1 = _convertCTGradedSignalToCommSignal(v2);
}

- (void)initiateCallToDestination:withService:addressBookID:.cold.5()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initiateRedial
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_4(&dword_2335B8000, v2, v3, "Last outgoing call had more than one remote participant - ignoring request", v4, v5, v6, v7, 0);
  }
}

- (void)acceptCallWithAction:callUUID:.cold.2()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_4(&dword_2335B8000, v2, v3, "Couldn't find an incoming call - ignoring request", v4, v5, v6, v7, 0);
  }
}

void __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6(&dword_2335B8000, v1, v2, "Found call with UUID: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90_cold_3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90_cold_11()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)endCallWithAction:callUUID:.cold.1()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_4(&dword_2335B8000, v2, v3, "Couldn't find a call to end - ignoring request", v4, v5, v6, v7, 0);
  }
}

void __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke_91_cold_2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateHoldStatus:forCallWithUUID:.cold.2()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_10(v1))
  {
    OUTLINED_FUNCTION_4(&dword_2335B8000, v2, v3, "Couldn't find an active call - ignoring request", v4, v5, v6, v7, 0);
  }
}

- (void)sendDTMF:(int)a1 forCallWithUUID:.cold.2(int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = logObjectForModule();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&dword_2335B8000, v2, OS_LOG_TYPE_ERROR, "Invalid tone: %d", v4, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end