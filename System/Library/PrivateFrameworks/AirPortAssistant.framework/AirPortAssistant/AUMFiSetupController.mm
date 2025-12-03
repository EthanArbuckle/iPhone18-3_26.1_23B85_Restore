@interface AUMFiSetupController
+ (id)setupController;
- (AUMFiSetupController)init;
- (id)targetBaseInfoDict;
- (int)cancelSetup;
- (int)endSetup:(int)setup;
- (int)joinTargetSWAP;
- (int)sendProgressToUI:(int)i withParamDict:(id)dict;
- (int)sendSetupCompleteToUIWithResult:(int)result;
- (int)sendiAPOverWiFiDeviceConfiguredXPCMessage;
- (int)setupFromAutoguessRecommendation:(id)recommendation withOptions:(id)options;
- (int)updateSettingsAsync;
- (void)_startEasyConfigWhenReady;
- (void)acquireDestinationNetworkPassword;
- (void)askUserForNetworkPassword:(id)password;
- (void)askUserForSetupCodeWithRetryStatus:(BOOL)status;
- (void)askUserForUncertified;
- (void)callbackAskUserForPasswordResult:(int)result password:(id)password remember:(int)remember;
- (void)callbackAskUserForSetupCodeResult:(int)result password:(id)password;
- (void)callbackAskUserForUncertifiedResult:(int)result;
- (void)createEasyConfigDeviceConfiguration;
- (void)dealloc;
- (void)handleEasyConfigProgress:(id)progress;
- (void)handleEasyConfigProgressAppliedConfigurationToDevice:(id)device;
- (void)handleEasyConfigProgressSearchingForPostConfigDevice:(id)device;
- (void)handleEasyConfigStopped:(id)stopped;
- (void)invalidateLinkUpOnDestinationNetworkTimer;
- (void)joinDestinationAPDone:(id)done;
- (void)joinDestinationNetworkTimeoutFired:(id)fired;
- (void)joinSWAPDone:(id)done;
- (void)linkChangeNotification:(id)notification;
- (void)linkUpOnDestinationAP:(id)p;
- (void)linkUpOnSWAP:(id)p;
- (void)logCompletionStatus:(int)status;
- (void)startEasyConfigWhenReady;
- (void)startListeningForEasyConfigDeviceStatusNotifications;
- (void)stopListeningToAllNotifications;
- (void)stopListeningToEasyConfigDeviceStatusNotifications;
@end

@implementation AUMFiSetupController

+ (id)setupController
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "+[AUMFiSetupController setupController]", 800, "\n", v2, v3, v4, v5, vars0);
  }

  v6 = objc_alloc_init(AUMFiSetupController);

  return v6;
}

- (AUMFiSetupController)init
{
  v8.receiver = self;
  v8.super_class = AUMFiSetupController;
  v6 = [(AUSetupController *)&v8 init];
  if (v6)
  {
    v6->_mfiSetupDelegates = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController init]", 800, "\n", v2, v3, v4, v5, v8.receiver);
  }

  v6->_successfullyEstablishedLinkOnTargetDeviceSWAP = 0;
  v6->_successfullyEstablishedLinkOnDestinationAP = 0;
  v6->_promptedUserForDestinationWiFiPSK = 0;
  v6->_postediAPAccessoryConfiguredNotification = 0;
  v6->_destinationNetworkPasswordAccepted = 0;
  v6->_setupEnded = 0;
  v6->_waitingForLinkState = 0;
  v6->_easyConfigPreConfigMetrics.hitJoiningTargetSWAPTimeout = 0;
  v6->_easyConfigPostConfigMetrics.hitJoiningDestinationAPTimeout = 0;
  return v6;
}

- (void)dealloc
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController dealloc]", 800, "\n", v3, v4, v5, v6, v14.receiver);
  }

  objc_msgSend_invalidateLinkUpOnDestinationNetworkTimer(self, a2, v2);
  objc_msgSend_stopListeningToAllNotifications(self, v8, v9);
  objc_msgSend_closeAllConnections(self, v10, v11);

  self->_mfiSetupDelegates = 0;
  self->_autoGuessRecommendationDict = 0;

  self->_setupOptionsDict = 0;
  self->_destinationNetworkScanRecord = 0;

  self->_targetMFiDeviceScanRecord = 0;
  self->_destinationNetworkSSID = 0;

  self->_destinationNetworkPassword = 0;
  self->_accessoryResponseDict = 0;
  askUserForPasswordSemaphore = self->_askUserForPasswordSemaphore;
  if (askUserForPasswordSemaphore)
  {
    dispatch_release(askUserForPasswordSemaphore);
  }

  linkUpOnTargetSWAPSemaphore = self->_linkUpOnTargetSWAPSemaphore;
  if (linkUpOnTargetSWAPSemaphore)
  {
    dispatch_release(linkUpOnTargetSWAPSemaphore);
  }

  self->_askUserForPasswordSemaphore = 0;
  self->_linkUpOnTargetSWAPSemaphore = 0;
  v14.receiver = self;
  v14.super_class = AUMFiSetupController;
  [(AUSetupController *)&v14 dealloc];
}

- (int)cancelSetup
{
  v6.receiver = self;
  v6.super_class = AUMFiSetupController;
  cancelSetup = [(AUSetupController *)&v6 cancelSetup];
  linkUpOnTargetSWAPSemaphore = self->_linkUpOnTargetSWAPSemaphore;
  if (linkUpOnTargetSWAPSemaphore)
  {
    dispatch_semaphore_signal(linkUpOnTargetSWAPSemaphore);
  }

  if (cancelSetup == -6771)
  {
    return 0;
  }

  else
  {
    return cancelSetup;
  }
}

- (int)setupFromAutoguessRecommendation:(id)recommendation withOptions:(id)options
{
  self->_easyConfigPreConfigMetrics.startTime = CFAbsoluteTimeGetCurrent();
  self->_autoGuessRecommendationDict = recommendation;
  setupOptionsDict = options;
  self->_setupOptionsDict = setupOptionsDict;
  if (self->_autoGuessRecommendationDict)
  {
    v13 = setupOptionsDict == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    return -6762;
  }

  if (dword_27E383310 <= 800)
  {
    if (dword_27E383310 != -1 || (v14 = sub_23EB74AC8(&dword_27E383310, 0x320u), setupOptionsDict = self->_setupOptionsDict, v14))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController setupFromAutoguessRecommendation:withOptions:]", 800, "Setup Options: %@\n", v9, v10, v11, v12, setupOptionsDict);
      setupOptionsDict = self->_setupOptionsDict;
    }
  }

  v15 = objc_msgSend_objectForKey_(setupOptionsDict, v8, @"kBSAutoGuessSetupOptionKey_BaseName");
  self->_postConfigTargetDeviceFriendlyName = v15;
  if (!objc_msgSend_length(v15, v16, v17))
  {
    return -6762;
  }

  self->_destinationNetworkScanRecord = objc_msgSend_objectForKey_(self->_setupOptionsDict, v18, @"kBSAutoGuessSetupOptionKey_SourceNetwork");
  v21 = objc_msgSend_objectForKey_(self->_setupOptionsDict, v19, @"BSAutoGuess_UnconfiguredNetwork");
  self->_targetMFiDeviceScanRecord = v21;
  result = -6762;
  if (self->_destinationNetworkScanRecord && v21)
  {
    v23 = objc_msgSend_objectForKey_(v21, v20, @"SNR");
    v25 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, v24, @"RSSI");
    v27 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, v26, @"CHANNEL");
    self->_easyConfigPreConfigMetrics.snrOfSWAP = objc_msgSend_integerValue(v23, v28, v29);
    self->_easyConfigPreConfigMetrics.rssiOfSWAP = objc_msgSend_integerValue(v25, v30, v31);
    self->_easyConfigPreConfigMetrics.channelOfSWAP = objc_msgSend_integerValue(v27, v32, v33);
    v35 = objc_msgSend_objectForKey_(self->_destinationNetworkScanRecord, v34, @"SNR");
    v37 = objc_msgSend_objectForKey_(self->_destinationNetworkScanRecord, v36, @"RSSI");
    v39 = objc_msgSend_objectForKey_(self->_destinationNetworkScanRecord, v38, @"CHANNEL");
    self->_easyConfigPostConfigMetrics.snrOfDestinationAP = objc_msgSend_integerValue(v35, v40, v41);
    self->_easyConfigPostConfigMetrics.rssiOfDestinationAP = objc_msgSend_integerValue(v37, v42, v43);
    self->_easyConfigPostConfigMetrics.channelOfDestinationAP = objc_msgSend_integerValue(v39, v44, v45);
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController setupFromAutoguessRecommendation:withOptions:]", 800, "Destination Network Scan Record: %@\n", v46, v47, v48, v49, self->_destinationNetworkScanRecord);
    }

    v50 = objc_alloc(MEMORY[0x277CCACA8]);
    v52 = objc_msgSend_scanInfoNetworkName_(WiFiUtils, v51, self->_destinationNetworkScanRecord);
    v54 = objc_msgSend_initWithString_(v50, v53, v52);
    self->_destinationNetworkSSID = v54;
    if (v54)
    {
      v56 = objc_msgSend_objectForKey_(self->_autoGuessRecommendationDict, v55, @"BSAutoGuess_SourceNetwork");
      v58 = objc_msgSend_scanInfoNetworkName_(WiFiUtils, v57, v56);
      self->_easyConfigPreConfigMetrics.destinationNetworkRecommendationUsed = objc_msgSend_isEqualToString_(self->_destinationNetworkSSID, v59, v58);
      postConfigTargetDeviceFriendlyName = self->_postConfigTargetDeviceFriendlyName;
      v62 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v61, self->_targetMFiDeviceScanRecord);
      self->_easyConfigPreConfigMetrics.userChangedFriendlyName = objc_msgSend_isEqualToString_(postConfigTargetDeviceFriendlyName, v63, v62) ^ 1;
      v66 = objc_msgSend_sharedInstance(WiFiUtils, v64, v65);
      objc_msgSend_setAutoJoinState_(v66, v67, 0);
      v68 = dispatch_semaphore_create(0);
      result = 0;
      self->_linkUpOnTargetSWAPSemaphore = v68;
      return result;
    }

    return -6762;
  }

  return result;
}

- (int)updateSettingsAsync
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23EC13F7C;
  block[3] = &unk_278C66C50;
  block[4] = self;
  dispatch_async(global_queue, block);
  return 0;
}

- (void)linkChangeNotification:(id)notification
{
  if (!self->_waitingForLinkState || (v8 = objc_msgSend_userInfo(notification, a2, notification)) == 0)
  {
    v24 = 0;
LABEL_22:
    v18 = &stru_285145FE8;
    goto LABEL_23;
  }

  v10 = v8;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkChangeNotification:]", 800, "linkDict: %@\n", v3, v4, v5, v6, v10);
  }

  v11 = objc_msgSend_objectForKey_(v10, v9, @"kNetworkLinkManager_LinkChangeKey_LinkState");
  v14 = objc_msgSend_integerValue(v11, v12, v13);
  if (v14 != 1)
  {
    v24 = v14;
    goto LABEL_22;
  }

  objc_msgSend_objectForKey_(v10, v15, @"kNetworkLinkManager_LinkChangeKey_IfName");
  v18 = objc_msgSend_objectForKey_(v10, v16, @"kNetworkLinkManager_LinkChangeKey_WiFiName");
  if (v18)
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkChangeNotification:]", 800, "Link Up on SSID: %@\n", v3, v4, v5, v6, v18);
    }

    if (self->_waitingForLinkState == 1)
    {
      v19 = &OBJC_IVAR___AUMFiSetupController__targetMFiDeviceScanRecord;
    }

    else
    {
      v19 = &OBJC_IVAR___AUMFiSetupController__destinationNetworkScanRecord;
    }

    v20 = objc_msgSend_objectForKey_(*(&self->super.super.super.isa + *v19), v17, @"SSID_STR");
    if (objc_msgSend_isEqualToString_(v20, v21, v18))
    {
      waitingForLinkState = self->_waitingForLinkState;
      if (waitingForLinkState == 2)
      {
        objc_msgSend_linkUpOnDestinationAP_(self, v22, v18);
      }

      else if (waitingForLinkState == 1)
      {
        objc_msgSend_linkUpOnSWAP_(self, v22, v18);
      }
    }
  }

  v24 = 1;
LABEL_23:
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkChangeNotification:]", 800, "eWaitingForLinkState: %d\n", v3, v4, v5, v6, self->_waitingForLinkState);
  }

  v25 = self->_waitingForLinkState;
  if (!v25)
  {
    return;
  }

  if (!v24)
  {
    if (dword_27E383310 > 800 || dword_27E383310 == -1 && !sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      return;
    }

    v27 = "Link Down\n";
    goto LABEL_41;
  }

  if (!v18)
  {
    if (dword_27E383310 > 800 || dword_27E383310 == -1 && !sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      return;
    }

    v27 = "No SSID Associated\n";
LABEL_41:

    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkChangeNotification:]", 800, v27, v3, v4, v5, v6, v29);
    return;
  }

  if (v25 == 1)
  {
    v26 = 269;
  }

  else
  {
    if (v25 != 2)
    {
      return;
    }

    v26 = 270;
  }

  if ((*(&self->super.super.super.isa + v26) & 1) == 0 && dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkChangeNotification:]", 800, "ERROR: Currently associated to: %@, expected: %@\n", v3, v4, v5, v6, v18);
  }
}

- (void)linkUpOnSWAP:(id)p
{
  self->_easyConfigPreConfigMetrics.secondsToGetLinkUpOnSWAP = CFAbsoluteTimeGetCurrent() - self->_timeSWAPJoinStarted;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkUpOnSWAP:]", 800, "SSID: %@\n", v5, v6, v7, v8, p);
  }

  dispatch_semaphore_signal(self->_linkUpOnTargetSWAPSemaphore);
  self->_successfullyEstablishedLinkOnTargetDeviceSWAP = 1;
  self->_waitingForLinkState = 0;
}

- (void)linkUpOnDestinationAP:(id)p
{
  self->_easyConfigPostConfigMetrics.secondsToGetLinkUpOnDestination = CFAbsoluteTimeGetCurrent() - self->_timeDestinationAPJoinStarted;
  objc_msgSend_invalidateLinkUpOnDestinationNetworkTimer(self, v5, v6);
  v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8);
  objc_msgSend_removeObserver_name_object_(v9, v10, self, @"com.apple.AirPort.WiFiShim.Notification.LinkChange", 0);
  objc_msgSend_resumePostConfig(self->_easyConfigDevice, v11, v12);
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController linkUpOnDestinationAP:]", 800, "SSID: %@\n", v13, v14, v15, v16, p);
  }

  self->_successfullyEstablishedLinkOnDestinationAP = 1;
  self->_waitingForLinkState = 0;
}

- (int)joinTargetSWAP
{
  self->_waitingForLinkState = 1;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    v3 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, a2, @"SSID_STR");
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController joinTargetSWAP]", 800, "%@\n", v4, v5, v6, v7, v3);
  }

  self->_timeSWAPJoinStarted = CFAbsoluteTimeGetCurrent();
  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9);
  objc_msgSend_addObserver_selector_name_object_(v10, v11, self, sel_joinSWAPDone_, @"com.apple.WiFiUtils.Join.Complete", 0);
  v14 = objc_msgSend_sharedInstance(WiFiUtils, v12, v13);
  targetMFiDeviceScanRecord = self->_targetMFiDeviceScanRecord;

  return objc_msgSend_joinNetworkWithScanInfoAsync_password_rememberChoice_(v14, v15, targetMFiDeviceScanRecord, 0, 1);
}

- (void)joinDestinationNetworkTimeoutFired:(id)fired
{
  linkUpOnDestinationNetworkTimer = self->_linkUpOnDestinationNetworkTimer;
  if (linkUpOnDestinationNetworkTimer)
  {
    if (objc_msgSend_isValid(linkUpOnDestinationNetworkTimer, a2, fired))
    {
      objc_msgSend_invalidateLinkUpOnDestinationNetworkTimer(self, v5, v6);
      if (!self->_successfullyEstablishedLinkOnDestinationAP)
      {
        self->_easyConfigPostConfigMetrics.hitJoiningDestinationAPTimeout = 1;
        v9 = objc_msgSend_sharedInstance(WiFiUtils, v7, v8);
        objc_msgSend_cancelAsync(v9, v10, v11);
        if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
        {
          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController joinDestinationNetworkTimeoutFired:]", 800, "ERROR: Did not successfully join destination network. Hit %d sec timeout.\n", v13, v14, v15, v16, 60);
        }

        objc_msgSend_endSetup_(self, v12, 4294960574);
      }
    }
  }
}

- (void)joinDestinationAPDone:(id)done
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, done);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  v9 = objc_msgSend_userInfo(done, v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, @"WiFiUtils_OSStatus");
  if (v11)
  {
    v14 = objc_msgSend_integerValue(v11, v12, v13);
    v20 = v14;
    if (v14)
    {
      if (v14 == -16)
      {
        if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
        {
          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController joinDestinationAPDone:]", 800, "ERROR: Incorrect destination network password for %@\n", v16, v17, v18, v19, self->_destinationNetworkSSID);
        }

        objc_msgSend_endSetup_(self, v15, 4294960534);
        LODWORD(v20) = -16;
      }

      else if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
      {
        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController joinDestinationAPDone:]", 800, "ERROR: %#m\n", v16, v17, v18, v19, v20);
      }
    }

    else
    {
      self->_destinationNetworkPasswordAccepted = 1;
    }
  }

  else
  {
    LODWORD(v20) = -6705;
  }

  self->_easyConfigPostConfigMetrics.wifiJoinDestinationAPError = v20;
}

- (void)joinSWAPDone:(id)done
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, done);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  v9 = objc_msgSend_userInfo(done, v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, @"WiFiUtils_OSStatus");
  if (v11)
  {
    v14 = objc_msgSend_integerValue(v11, v12, v13);
  }

  else
  {
    v14 = -6705;
  }

  self->_easyConfigPreConfigMetrics.wifiJoinSWAPError = v14;
}

- (void)invalidateLinkUpOnDestinationNetworkTimer
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController invalidateLinkUpOnDestinationNetworkTimer]", 800, "\n", v3, v4, v5, v6, v9);
  }

  objc_msgSend_invalidate(self->_linkUpOnDestinationNetworkTimer, a2, v2);

  objc_msgSend_setLinkUpOnDestinationNetworkTimer_(self, v8, 0);
}

- (void)acquireDestinationNetworkPassword
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController acquireDestinationNetworkPassword]", 800, "\n", v2, v3, v4, v5, v18);
  }

  v19 = 0;
  if (objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, a2, self->_destinationNetworkScanRecord, 0, &v19))
  {
    if (v19 == 1)
    {
      if (dword_27E383310 > 800 || dword_27E383310 == -1 && !sub_23EB74AC8(&dword_27E383310, 0x320u))
      {
        goto LABEL_12;
      }

      v12 = "ERROR: Destination network has Enterprise security.\n";
LABEL_11:
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController acquireDestinationNetworkPassword]", 800, v12, v8, v9, v10, v11, v18);
LABEL_12:
      objc_msgSend_endSetup_(self, v7, 4294960534);
      return;
    }

    NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, v7, self->_destinationNetworkScanRecord);
    objc_msgSend_setDestinationNetworkPassword_(self, v14, NetworkPassword);
    self->_easyConfigPostConfigMetrics.destinationNetworkPSKInKeychain = 1;
    if (!self->_destinationNetworkPassword)
    {
      self->_askUserForPasswordSemaphore = dispatch_semaphore_create(0);
      objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(self, v15, sel_askUserForNetworkPassword_, self->_destinationNetworkSSID, 0);
      dispatch_semaphore_wait(self->_askUserForPasswordSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      self->_easyConfigPostConfigMetrics.destinationNetworkPSKInKeychain = 0;
      if (!objc_msgSend_length(self->_destinationNetworkPassword, v16, v17))
      {
        if (dword_27E383310 > 800 || dword_27E383310 == -1 && !sub_23EB74AC8(&dword_27E383310, 0x320u))
        {
          goto LABEL_12;
        }

        v12 = "ERROR: Network is secure, but _destinationNetworkPassword is zero length!\n";
        goto LABEL_11;
      }
    }
  }
}

- (void)startListeningForEasyConfigDeviceStatusNotifications
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController startListeningForEasyConfigDeviceStatusNotifications]", 800, "\n", v3, v4, v5, v6, v15);
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_addObserver_selector_name_object_(v8, v9, self, sel_handleEasyConfigProgress_, *MEMORY[0x277D06AD0], 0);
  v12 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v10, v11);
  v14 = *MEMORY[0x277D06AD8];

  objc_msgSend_addObserver_selector_name_object_(v12, v13, self, sel_handleEasyConfigStopped_, v14, 0);
}

- (void)stopListeningToEasyConfigDeviceStatusNotifications
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController stopListeningToEasyConfigDeviceStatusNotifications]", 800, "\n", v3, v4, v5, v6, v15);
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, *MEMORY[0x277D06AD0], 0);
  v12 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v10, v11);
  v14 = *MEMORY[0x277D06AD8];

  objc_msgSend_removeObserver_name_object_(v12, v13, self, v14, 0);
}

- (void)handleEasyConfigProgress:(id)progress
{
  lastHeardEasyConfigProgressNotification = self->_lastHeardEasyConfigProgressNotification;
  v6 = objc_msgSend_userInfo(progress, a2, progress);
  v8 = objc_msgSend_objectForKey_(v6, v7, *MEMORY[0x277D06B40]);
  v11 = objc_msgSend_integerValue(v8, v9, v10);
  self->_lastHeardEasyConfigProgressNotification = v11;
  if (v11 != 50)
  {
    v17 = v11;
    if (v11 != 40)
    {
      if (v11 == 10)
      {
        if (lastHeardEasyConfigProgressNotification >= 0xB && dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
        {

          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController handleEasyConfigProgress:]", 800, "RETRY: EasyConfig backed up states\n", v13, v14, v15, v16, v31);
        }

        return;
      }

      if (dword_27E383310 > 800)
      {
        return;
      }

      if (dword_27E383310 == -1)
      {
        if (!sub_23EB74AC8(&dword_27E383310, 0x320u))
        {
          return;
        }

        v17 = self->_lastHeardEasyConfigProgressNotification;
      }

      if (v17 > 29)
      {
        if (v17 <= 49)
        {
          if (v17 == 30)
          {
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Applying configuration to device");
            goto LABEL_60;
          }

          if (v17 == 40)
          {
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Applied configuration to device");
            goto LABEL_60;
          }
        }

        else
        {
          switch(v17)
          {
            case '2':
              v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Searching for post-config device");
              goto LABEL_60;
            case '<':
              v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Performing post-config check of device");
              goto LABEL_60;
            case 'F':
              v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Performed post-config check of device");
              goto LABEL_60;
          }
        }
      }

      else if (v17 <= 2)
      {
        if (v17 == 1)
        {
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Start");
          goto LABEL_60;
        }

        if (v17 == 2)
        {
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Final");
          goto LABEL_60;
        }
      }

      else
      {
        switch(v17)
        {
          case 3:
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Error");
            goto LABEL_60;
          case 10:
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Search for pre-config device");
            goto LABEL_60;
          case 20:
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Authenticating pre-config device");
LABEL_60:
            sub_23EB75374(&dword_27E383310, "[AUMFiSetupController handleEasyConfigProgress:]", 800, "Unhandled: %@\n", v19, v20, v21, v22, v18);
            return;
        }
      }

      if (v17 == 100)
      {
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Configuration complete");
      }

      else
      {
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "?");
      }

      goto LABEL_60;
    }

    if (lastHeardEasyConfigProgressNotification <= 0x27)
    {

      MEMORY[0x2821F9670](self, sel_handleEasyConfigProgressAppliedConfigurationToDevice_, progress);
      return;
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1)
    {
      v23 = MEMORY[0x277CCACA8];
LABEL_31:
      v24 = objc_msgSend_stringWithUTF8String_(v23, v12, "Applied configuration to device");
LABEL_32:
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController handleEasyConfigProgress:]", 800, "Ignoring duplicate %@\n", v25, v26, v27, v28, v24);
      return;
    }

    if (!sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      return;
    }

    v29 = self->_lastHeardEasyConfigProgressNotification;
    v23 = MEMORY[0x277CCACA8];
    if (v29 > 29)
    {
      if (v29 <= 49)
      {
        if (v29 == 30)
        {
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Applying configuration to device");
          goto LABEL_32;
        }

        if (v29 == 40)
        {
          goto LABEL_31;
        }
      }

      else
      {
        switch(v29)
        {
          case '2':
            v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Searching for post-config device");
            goto LABEL_32;
          case '<':
            v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Performing post-config check of device");
            goto LABEL_32;
          case 'F':
            v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Performed post-config check of device");
            goto LABEL_32;
        }
      }
    }

    else if (v29 <= 2)
    {
      if (v29 == 1)
      {
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Start");
        goto LABEL_32;
      }

      if (v29 == 2)
      {
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Final");
        goto LABEL_32;
      }
    }

    else
    {
      switch(v29)
      {
        case 3:
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Error");
          goto LABEL_32;
        case 10:
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Search for pre-config device");
          goto LABEL_32;
        case 20:
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Authenticating pre-config device");
          goto LABEL_32;
      }
    }

    if (v29 == 100)
    {
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "Configuration complete");
    }

    else
    {
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "?");
    }

    goto LABEL_32;
  }

  MEMORY[0x2821F9670](self, sel_handleEasyConfigProgressSearchingForPostConfigDevice_, progress);
}

- (void)handleEasyConfigProgressAppliedConfigurationToDevice:(id)device
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController handleEasyConfigProgressAppliedConfigurationToDevice:]", 800, "\n", v3, v4, v5, v6, v26);
  }

  self->_waitingForLinkState = 2;
  v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, device);
  objc_msgSend_addObserver_selector_name_object_(v9, v10, self, sel_joinDestinationAPDone_, @"com.apple.WiFiUtils.Join.Complete", 0);
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController handleEasyConfigProgressAppliedConfigurationToDevice:]", 800, "Asking WiFiUtils to join destination network: %@\n", v11, v12, v13, v14, self->_destinationNetworkSSID);
  }

  self->_timeDestinationAPJoinStarted = CFAbsoluteTimeGetCurrent();
  v17 = objc_msgSend_sharedInstance(WiFiUtils, v15, v16);
  objc_msgSend_joinNetworkWithScanInfoAsync_password_rememberChoice_(v17, v18, self->_destinationNetworkScanRecord, self->_destinationNetworkPassword, 2);
  v20 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v19, self, sel_joinDestinationNetworkTimeoutFired_, 0, 0, 60.0);
  objc_msgSend_setLinkUpOnDestinationNetworkTimer_(self, v21, v20);
  v24 = objc_msgSend_userInfo(device, v22, v23);
  self->_accessoryResponseDict = objc_msgSend_objectForKey_(v24, v25, *MEMORY[0x277D06B50]);
}

- (void)handleEasyConfigProgressSearchingForPostConfigDevice:(id)device
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = objc_msgSend_objectForKey_(self->_setupOptionsDict, a2, @"kBSAutoGuessSetupOptionKey_BaseName");
  v8 = objc_msgSend_dictionaryWithObject_forKey_(v4, v6, v5, @"BSAssistantProgressKey_StringParameter");

  objc_msgSend_sendProgressToUI_withParamDict_(self, v7, 7, v8);
}

- (void)handleEasyConfigStopped:(id)stopped
{
  v4 = objc_msgSend_userInfo(stopped, a2, stopped);
  v6 = objc_msgSend_objectForKey_(v4, v5, *MEMORY[0x277D06B48]);
  v10 = objc_msgSend_code(v6, v7, v8);

  objc_msgSend_endSetup_(self, v9, v10);
}

- (void)createEasyConfigDeviceConfiguration
{
  v3 = objc_msgSend_objectForKey_(self->_autoGuessRecommendationDict, a2, @"BSAutoGuess_UnconfiguredNetwork");
  v5 = objc_msgSend_deviceWithScanRecord_(MEMORY[0x277D06B70], v4, v3);
  self->_easyConfigDevice = v5;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_23EC15690;
  v26[3] = &unk_278C69420;
  v26[4] = self;
  objc_msgSend_setPromptForSetupCodeHandler_(v5, v6, v26);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_msgSend_setObject_forKey_(v7, v8, self->_destinationNetworkSSID, *MEMORY[0x277D06B68]);
  objc_msgSend_acquireDestinationNetworkPassword(self, v9, v10);
  if (objc_msgSend_length(self->_destinationNetworkPassword, v11, v12))
  {
    objc_msgSend_setObject_forKey_(v7, v13, self->_destinationNetworkPassword, *MEMORY[0x277D06B60]);
  }

  objc_msgSend_setObject_forKey_(v7, v13, self->_postConfigTargetDeviceFriendlyName, *MEMORY[0x277D06B30]);
  if (objc_msgSend_scanInfoIsMFIAirPlayDevice_(WiFiUtils, v14, self->_targetMFiDeviceScanRecord))
  {
    v16 = objc_msgSend_objectForKey_(self->_setupOptionsDict, v15, @"kBSAutoGuessSetupOptionKey_AirPlayPassword");
    v19 = objc_msgSend_length(v16, v17, v18);
    v20 = v19 != 0;
    if (v19)
    {
      objc_msgSend_setObject_forKey_(v7, v15, v16, *MEMORY[0x277D06B38]);
    }

    self->_easyConfigPreConfigMetrics.playPasswordSet = v20;
  }

  objc_msgSend_setConfiguration_(self->_easyConfigDevice, v15, v7);
  objc_msgSend_setPausesAfterApply_(self->_easyConfigDevice, v21, 1);
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController createEasyConfigDeviceConfiguration]", 800, "Config dict: %@\n", v22, v23, v24, v25, v7);
  }
}

- (void)startEasyConfigWhenReady
{
  if ((objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, a2, self->_targetMFiDeviceScanRecord) & 1) != 0 || !objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v3, self->_targetMFiDeviceScanRecord))
  {

    MEMORY[0x2821F9670](self, sel__startEasyConfigWhenReady, v4);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_askUserForUncertified, v4);
  }
}

- (void)_startEasyConfigWhenReady
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23EC15A28;
  block[3] = &unk_278C66C50;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_msgSend_createEasyConfigDeviceConfiguration(self, v3, v4);
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController _startEasyConfigWhenReady]", 800, "_joinTargetSWAPCompleteSemaphore - WAITING\n", v5, v6, v7, v8, v20);
  }

  linkUpOnTargetSWAPSemaphore = self->_linkUpOnTargetSWAPSemaphore;
  v10 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(linkUpOnTargetSWAPSemaphore, v10);
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController _startEasyConfigWhenReady]", 800, "_joinTargetSWAPCompleteSemaphore - DONE\n", v13, v14, v15, v16, v20);
  }

  successfullyEstablishedLinkOnTargetDeviceSWAP = self->_successfullyEstablishedLinkOnTargetDeviceSWAP;
  self->_easyConfigPreConfigMetrics.hitJoiningTargetSWAPTimeout = !successfullyEstablishedLinkOnTargetDeviceSWAP;
  if (successfullyEstablishedLinkOnTargetDeviceSWAP)
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController _startEasyConfigWhenReady]", 800, "Successfully joined target device SWAP\n", v13, v14, v15, v16, v20);
    }

    objc_msgSend_startListeningForEasyConfigDeviceStatusNotifications(self, v11, v12);
    objc_msgSend_start(self->_easyConfigDevice, v18, v19);
  }

  else
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController _startEasyConfigWhenReady]", 800, "ERROR: Did not successfully join target device SWAP. Hit %d sec timeout\n", v13, v14, v15, v16, 30);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_23EC15A38;
    v21[3] = &unk_278C66C50;
    v21[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v21);
  }
}

- (id)targetBaseInfoDict
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
  v9 = objc_msgSend_objectForKey_(self->_autoGuessRecommendationDict, v8, @"BSAutoGuess_Recommendation");
  objc_msgSend_setObject_forKey_(v4, v10, v9, @"BSAutoGuess_Recommendation");
  objc_msgSend_setObject_forKey_(v4, v11, self->_autoGuessRecommendationDict, @"kSetupBaseStationInfoKey_RecommendationInfo");
  objc_msgSend_setObject_forKey_(v4, v12, self->_targetMFiDeviceScanRecord, @"kSetupBaseStationInfoKey_BrowseRecord");
  destinationNetworkSSID = self->_destinationNetworkSSID;
  v14 = sub_23EB6CDF8(1918979693);
  objc_msgSend_setObject_forKey_(v7, v15, destinationNetworkSSID, v14);
  objc_msgSend_setObject_forKey_(v4, v16, v7, @"kSetupBaseStationInfoKey_RadioInfo");
  accessoryResponseDict = self->_accessoryResponseDict;
  if (accessoryResponseDict)
  {
    objc_msgSend_setObject_forKey_(v4, v17, accessoryResponseDict, @"kSetupBaseStationInfoKey_MFiAccessoryResponse");
  }

  return v4;
}

- (void)askUserForUncertified
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController askUserForUncertified]", 800, "\n", v2, v3, v4, v5, v8);
  }

  uiDelegate = self->super.super._uiDelegate;

  MEMORY[0x2821F9670](uiDelegate, sel_callbackAskUserForUncertifiedForController_, self);
}

- (void)callbackAskUserForUncertifiedResult:(int)result
{
  if (result)
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForUncertifiedResult:]", 800, "User denied uncertified accessory.\n", v3, v4, v5, v6, v8);
    }

    objc_msgSend_endSetup_(self, a2, 4294960573);
  }

  else
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForUncertifiedResult:]", 800, "User approved uncertified accessory.\n", v3, v4, v5, v6, v8);
    }

    objc_msgSend_performSelectorInBackground_withObject_(self, a2, sel__startEasyConfigWhenReady, 0);
  }
}

- (void)askUserForSetupCodeWithRetryStatus:(BOOL)status
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController askUserForSetupCodeWithRetryStatus:]", 800, "\n", v3, v4, v5, v6, v9);
  }

  uiDelegate = self->super.super._uiDelegate;

  MEMORY[0x2821F9670](uiDelegate, sel_callbackAskUserForSetupCode_isRetry_forController_, 2);
}

- (void)callbackAskUserForSetupCodeResult:(int)result password:(id)password
{
  if (result)
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForSetupCodeResult:password:]", 800, "Failed to obtain MFi setup code from user.\n", v4, v5, v6, v7, v12);
    }

    easyConfigDevice = self->_easyConfigDevice;

    objc_msgSend_stop(easyConfigDevice, a2, *&result);
  }

  else
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForSetupCodeResult:password:]", 800, "Successfully obtained MFi setup code from user.\n", v4, v5, v6, v7, v12);
    }

    v11 = self->_easyConfigDevice;

    MEMORY[0x2821F9670](v11, sel_trySetupCode_, password);
  }
}

- (void)askUserForNetworkPassword:(id)password
{
  self->_promptedUserForDestinationWiFiPSK = 1;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController askUserForNetworkPassword:]", 800, "\n", v3, v4, v5, v6, v10);
  }

  uiDelegate = self->super.super._uiDelegate;

  objc_msgSend_callbackAskUserForPassword_param_forController_(uiDelegate, a2, 1, password, self);
}

- (void)callbackAskUserForPasswordResult:(int)result password:(id)password remember:(int)remember
{
  v27 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForPasswordResult:password:remember:]", 800, "Did NOT get destination network password from user\n", *&remember, v5, v6, v7, v22);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = objc_msgSend_copy(self->_mfiSetupDelegates, a2, *&result, 0);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v18 = objc_msgSend_targetBaseInfoDict(self, v16, v17);
            objc_msgSend_setupCompleteWithResult_baseStationInfo_forController_(v15, v19, 4294960527, v18, self);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v16, &v22, v26, 16);
      }

      while (v12);
    }
  }

  else
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController callbackAskUserForPasswordResult:password:remember:]", 800, "Successfully obtained destination network password from user.\n", *&remember, v5, v6, v7, v22);
    }

    objc_msgSend_setDestinationNetworkPassword_(self, a2, password);
    askUserForPasswordSemaphore = self->_askUserForPasswordSemaphore;

    dispatch_semaphore_signal(askUserForPasswordSemaphore);
  }
}

- (int)sendProgressToUI:(int)i withParamDict:(id)dict
{
  v23 = *MEMORY[0x277D85DE8];
  mfiSetupDelegates = self->_mfiSetupDelegates;
  if (!mfiSetupDelegates)
  {
    return -6762;
  }

  v7 = *&i;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = objc_msgSend_copy(mfiSetupDelegates, a2, *&i, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (!v10)
  {
    return -6700;
  }

  v11 = v10;
  v12 = *v19;
  v13 = -6700;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v18 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_setupProgressUpdated_status_paramDict_forController_(v15, v16, v7, 0, dict, self);
        v13 = 0;
      }
    }

    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v18, v22, 16);
  }

  while (v11);
  return v13;
}

- (int)sendSetupCompleteToUIWithResult:(int)result
{
  v7 = *&result;
  v28 = *MEMORY[0x277D85DE8];
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController sendSetupCompleteToUIWithResult:]", 800, "%#m\n", v3, v4, v5, v6, v7);
  }

  mfiSetupDelegates = self->_mfiSetupDelegates;
  if (!mfiSetupDelegates)
  {
    return -6762;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = objc_msgSend_copy(mfiSetupDelegates, a2, *&result);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v27, 16);
  if (!v12)
  {
    return -6700;
  }

  v13 = v12;
  v14 = *v24;
  v15 = -6700;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v23 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v20 = objc_msgSend_targetBaseInfoDict(self, v18, v19);
        objc_msgSend_setupCompleteWithResult_baseStationInfo_forController_(v17, v21, v7, v20, self);
        v15 = 0;
      }
    }

    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v18, &v23, v27, 16);
  }

  while (v13);
  return v15;
}

- (int)sendiAPOverWiFiDeviceConfiguredXPCMessage
{
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController sendiAPOverWiFiDeviceConfiguredXPCMessage]", 800, "\n", v2, v3, v4, v5, v24);
  }

  mach_service = xpc_connection_create_mach_service("com.apple.iaptransportd.xpc", 0, 0);
  qword_27E3834E0 = mach_service;
  if (!mach_service && dword_27E383310 <= 800)
  {
    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController sendiAPOverWiFiDeviceConfiguredXPCMessage]", 800, "ERROR: Unable to get iaptransportd xpc connection\n", v8, v9, v10, v11, v24);
    }

    mach_service = qword_27E3834E0;
  }

  if (mach_service && (xpc_connection_set_event_handler(mach_service, &unk_285145828), xpc_connection_resume(qword_27E3834E0), (v12 = xpc_dictionary_create(0, 0, 0)) != 0))
  {
    v13 = v12;
    xpc_dictionary_set_string(v12, "requestType", "kAirPortAssistantKey_ConfigurediAP");
    v15 = objc_msgSend_cStringUsingEncoding_(self->_postConfigTargetDeviceFriendlyName, v14, 4);
    xpc_dictionary_set_string(v13, "kAirPortAssistantKey_ConfigurediAP_Name", v15);
    v17 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, v16, @"BSSID");
    v19 = objc_msgSend_cStringUsingEncoding_(v17, v18, 4);
    xpc_dictionary_set_string(v13, "kAirPortAssistantKey_ConfigurediAP_MAC_Address", v19);
    v21 = objc_msgSend_cStringUsingEncoding_(self->_destinationNetworkSSID, v20, 4);
    xpc_dictionary_set_string(v13, "kAirPortAssistantKey_ConfigurediAP_Destination_Network_SSID", v21);
    xpc_connection_send_message(qword_27E3834E0, v13);
    xpc_release(v13);
    v22 = 0;
    self->_postediAPAccessoryConfiguredNotification = 1;
  }

  else
  {
    v22 = -6762;
  }

  xpc_release(qword_27E3834E0);
  return v22;
}

- (int)endSetup:(int)setup
{
  v7 = *&setup;
  if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
  {
    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController endSetup:]", 800, "%#m\n", v3, v4, v5, v6, v7);
  }

  objc_msgSend_stopListeningToAllNotifications(self, a2, *&setup);
  if (self->_setupEnded)
  {
    v11 = 0;
  }

  else
  {
    self->_setupEnded = 1;
    objc_msgSend_sendSetupCompleteToUIWithResult_(self, v9, v7);
    if (v7 || !objc_msgSend_scanInfoIsiAPOverWiFiDevice_(WiFiUtils, v12, self->_targetMFiDeviceScanRecord))
    {
      v11 = 0;
    }

    else
    {
      v11 = objc_msgSend_sendiAPOverWiFiDeviceConfiguredXPCMessage(self, v12, v13);
      if (v11 && dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
      {
        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController endSetup:]", 800, "ERROR: Unable to send iAP Accessory Configured XPC message\n", v14, v15, v16, v17, v28);
      }
    }

    objc_msgSend_logCompletionStatus_(self, v12, v7);
  }

  configContext = self->super._configContext;
  if (configContext)
  {
    v19 = sub_23EBBD2B8(configContext);
    sub_23EBEE150(v19);
  }

  v20 = objc_msgSend_sharedInstance(WiFiUtils, v9, v10);
  objc_msgSend_setAutoJoinState_(v20, v21, 1);
  easyConfigDevice = self->_easyConfigDevice;
  if (easyConfigDevice)
  {
    objc_msgSend_setPreConfigMetrics_(easyConfigDevice, v22, &self->_easyConfigPreConfigMetrics);
    objc_msgSend_setPostConfigMetrics_(self->_easyConfigDevice, v24, &self->_easyConfigPostConfigMetrics);
    objc_msgSend_stop(self->_easyConfigDevice, v25, v26);
  }

  return v11;
}

- (void)stopListeningToAllNotifications
{
  objc_msgSend_stopListeningToEasyConfigDeviceStatusNotifications(self, a2, v2);
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, @"com.apple.AirPort.WiFiShim.Notification.LinkChange", 0);
  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9);

  objc_msgSend_removeObserver_name_object_(v10, v11, self, @"com.apple.WiFiUtils.Join.Complete", 0);
}

- (void)logCompletionStatus:(int)status
{
  v7 = *&status;
  if (dword_27E383310 <= 800)
  {
    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "************************ MFI CONFIG RESULTS *************************\n", v3, v4, v5, v6, v137);
    }

    if (dword_27E383310 <= 800)
    {
      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
      {
        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "TARGET INFO:\n", v3, v4, v5, v6, v137);
      }

      if (dword_27E383310 <= 800)
      {
        if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
        {
          v10 = MEMORY[0x277CCACA8];
          if (objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v9, self->_targetMFiDeviceScanRecord))
          {
            if (objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v11, self->_targetMFiDeviceScanRecord) == 1)
            {
              v13 = objc_msgSend_stringWithUTF8String_(v10, v12, "Base Station");
            }

            else if (objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v12, self->_targetMFiDeviceScanRecord) == 2)
            {
              v13 = objc_msgSend_stringWithUTF8String_(v10, v18, "Apple AirPlay Device");
            }

            else if (objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v18, self->_targetMFiDeviceScanRecord) == 3)
            {
              v13 = objc_msgSend_stringWithUTF8String_(v10, v19, "MFi AirPlay Device");
            }

            else if (objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v19, self->_targetMFiDeviceScanRecord) == 4)
            {
              v13 = objc_msgSend_stringWithUTF8String_(v10, v20, "MFi Device");
            }

            else
            {
              v13 = objc_msgSend_stringWithUTF8String_(v10, v20, "?");
            }
          }

          else
          {
            v13 = objc_msgSend_stringWithUTF8String_(v10, v11, "Unknown");
          }

          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    DEVICE KIND..: %@\n", v14, v15, v16, v17, v13);
        }

        if (dword_27E383310 <= 800)
        {
          if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
          {
            v21 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v9, self->_targetMFiDeviceScanRecord);
            sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    FRIENDLY NAME: %@\n", v22, v23, v24, v25, v21);
          }

          if (dword_27E383310 <= 800)
          {
            if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
            {
              v26 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, v9, @"SSID_STR");
              sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    SSID.........: %@\n", v27, v28, v29, v30, v26);
            }

            if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
            {
              v31 = objc_msgSend_objectForKey_(self->_targetMFiDeviceScanRecord, v9, @"BSSID");
              sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    MAC..........: %@\n", v32, v33, v34, v35, v31);
            }
          }
        }
      }
    }
  }

  if (self->_accessoryResponseDict)
  {
    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    APP MATCHING VALUES:\n", v3, v4, v5, v6, v137);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v37 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v36, *MEMORY[0x277D06AE8]);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        BUNDLE SEED ID: %@\n", v38, v39, v40, v41, v37);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v42 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v36, *MEMORY[0x277D06B18]);
      v44 = objc_msgSend_componentsJoinedByString_(v42, v43, @", ");
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        PROTOCOLS.....: %@\n", v45, v46, v47, v48, v44);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v49 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v36, *MEMORY[0x277D06B30]);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        NAME..........: %@\n", v50, v51, v52, v53, v49);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v54 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v36, *MEMORY[0x277D06B20]);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        MANUFACTURER..: %@\n", v55, v56, v57, v58, v54);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v59 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v36, *MEMORY[0x277D06B28]);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        MODEL.........: %@\n", v60, v61, v62, v63, v59);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v64 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v36, *MEMORY[0x277D06B00]);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        FIRMWARE REV..: %@\n", v65, v66, v67, v68, v64);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v69 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v36, *MEMORY[0x277D06B10]);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        HARDWARE REV..: %@\n", v70, v71, v72, v73, v69);
    }

    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      v138 = objc_msgSend_objectForKey_(self->_accessoryResponseDict, v36, *MEMORY[0x277D06B58]);
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        SERIAL NUMBER.: %@\n", v74, v75, v76, v77, v138);
    }
  }

  else
  {
    if (dword_27E383310 > 800)
    {
      return;
    }

    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    APP MATCHING VALUES: <<NULL>>\n", v3, v4, v5, v6, v137);
    }
  }

  if (dword_27E383310 <= 800)
  {
    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
    {
      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "CONFIGURATION:\n", v3, v4, v5, v6, v137);
    }

    if (dword_27E383310 <= 800)
    {
      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
      {
        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    FRIENDLY NAME: %@\n", v3, v4, v5, v6, self->_postConfigTargetDeviceFriendlyName);
      }

      if (dword_27E383310 <= 800)
      {
        if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
        {
          v83 = objc_msgSend_objectForKey_(self->_setupOptionsDict, v78, @"kBSAutoGuessSetupOptionKey_AirPlayPassword");
          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    PLAY PASSWORD: %@\n", v84, v85, v86, v87, v83);
        }

        if (dword_27E383310 <= 800)
        {
          if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
          {
            sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    DESTINATION:\n", v79, v80, v81, v82, v137);
          }

          if (dword_27E383310 <= 800)
          {
            if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
            {
              sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        SSID...........: %@\n", v79, v80, v81, v82, self->_destinationNetworkSSID);
            }

            if (dword_27E383310 <= 800)
            {
              if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
              {
                v89 = objc_msgSend_objectForKey_(self->_destinationNetworkScanRecord, v88, @"BSSID");
                sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        MAC............: %@\n", v90, v91, v92, v93, v89);
              }

              if (dword_27E383310 <= 800)
              {
                if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                {
                  if (objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, v88, self->_destinationNetworkScanRecord, 0, 0))
                  {
                    v99 = @"Yes";
                  }

                  else
                  {
                    v99 = @"No";
                  }

                  sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        SECURED........: %@\n", v95, v96, v97, v98, v99);
                }

                if (dword_27E383310 <= 800)
                {
                  if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                  {
                    if (objc_msgSend_length(self->_destinationNetworkPassword, v88, v94))
                    {
                      v108 = @"Yes";
                    }

                    else
                    {
                      v108 = @"No";
                    }

                    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        WIFI PSK VALID.: %@\n", v104, v105, v106, v107, v108);
                  }

                  if (dword_27E383310 <= 800)
                  {
                    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                    {
                      if (self->_promptedUserForDestinationWiFiPSK)
                      {
                        v109 = @"User";
                      }

                      else
                      {
                        v109 = @"Keychain";
                      }

                      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        WIFI PSK ORIGIN: %@\n", v100, v101, v102, v103, v109);
                    }

                    if (dword_27E383310 <= 800)
                    {
                      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                      {
                        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "AWD:\n", v100, v101, v102, v103, v137);
                      }

                      if (dword_27E383310 <= 800)
                      {
                        if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                        {
                          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    SWAP:\n", v100, v101, v102, v103, v137);
                        }

                        if (dword_27E383310 <= 800)
                        {
                          if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                          {
                            sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        LINK UP TIME: %.3f seconds\n", v100, v101, v102, v103, *&self->_easyConfigPreConfigMetrics.secondsToGetLinkUpOnSWAP);
                          }

                          if (dword_27E383310 <= 800)
                          {
                            if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                            {
                              sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        JOIN ERROR..: %#m\n", v100, v101, v102, v103, self->_easyConfigPreConfigMetrics.wifiJoinSWAPError);
                            }

                            if (dword_27E383310 <= 800)
                            {
                              if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                              {
                                sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        RSSI........: %d\n", v100, v101, v102, v103, self->_easyConfigPreConfigMetrics.rssiOfSWAP);
                              }

                              if (dword_27E383310 <= 800)
                              {
                                if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                {
                                  sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        SNR.........: %d\n", v100, v101, v102, v103, self->_easyConfigPreConfigMetrics.snrOfSWAP);
                                }

                                if (dword_27E383310 <= 800)
                                {
                                  if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                  {
                                    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        CHANNEL.....: %d\n", v100, v101, v102, v103, self->_easyConfigPreConfigMetrics.channelOfSWAP);
                                  }

                                  if (dword_27E383310 <= 800)
                                  {
                                    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                    {
                                      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    DESTINATION AP:\n", v100, v101, v102, v103, v137);
                                    }

                                    if (dword_27E383310 <= 800)
                                    {
                                      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                      {
                                        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        LINK UP TIME: %.3f seconds\n", v100, v101, v102, v103, *&self->_easyConfigPostConfigMetrics.secondsToGetLinkUpOnDestination);
                                      }

                                      if (dword_27E383310 <= 800)
                                      {
                                        if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                        {
                                          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        JOIN ERROR..: %#m\n", v100, v101, v102, v103, self->_easyConfigPostConfigMetrics.wifiJoinDestinationAPError);
                                        }

                                        if (dword_27E383310 <= 800)
                                        {
                                          if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                          {
                                            sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        RSSI........: %d\n", v100, v101, v102, v103, self->_easyConfigPostConfigMetrics.rssiOfDestinationAP);
                                          }

                                          if (dword_27E383310 <= 800)
                                          {
                                            if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                            {
                                              sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        SNR.........: %d\n", v100, v101, v102, v103, self->_easyConfigPostConfigMetrics.snrOfDestinationAP);
                                            }

                                            if (dword_27E383310 <= 800)
                                            {
                                              if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                              {
                                                sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "        CHANNEL.....: %d\n", v100, v101, v102, v103, self->_easyConfigPostConfigMetrics.channelOfDestinationAP);
                                              }

                                              if (dword_27E383310 <= 800)
                                              {
                                                if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                {
                                                  if (self->_easyConfigPreConfigMetrics.destinationNetworkRecommendationUsed)
                                                  {
                                                    v110 = @"Yes";
                                                  }

                                                  else
                                                  {
                                                    v110 = @"No";
                                                  }

                                                  sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    AUTOGUESS NETWORK USED....: %@\n", v100, v101, v102, v103, v110);
                                                }

                                                if (dword_27E383310 <= 800)
                                                {
                                                  if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                  {
                                                    if (self->_easyConfigPreConfigMetrics.userChangedFriendlyName)
                                                    {
                                                      v111 = @"Yes";
                                                    }

                                                    else
                                                    {
                                                      v111 = @"No";
                                                    }

                                                    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    USER CHANGED FRIENDLY NAME: %@\n", v100, v101, v102, v103, v111);
                                                  }

                                                  if (dword_27E383310 <= 800)
                                                  {
                                                    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                    {
                                                      if (self->_easyConfigPreConfigMetrics.playPasswordSet)
                                                      {
                                                        v112 = @"Yes";
                                                      }

                                                      else
                                                      {
                                                        v112 = @"No";
                                                      }

                                                      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    PLAY PASSWORD SET.........: %@\n", v100, v101, v102, v103, v112);
                                                    }

                                                    if (dword_27E383310 <= 800)
                                                    {
                                                      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                      {
                                                        Current = CFAbsoluteTimeGetCurrent();
                                                        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "    TOTAL TIME TO CONFIG......: %.3f seconds\n", v118, v119, v120, v121, COERCE__INT64(Current - self->_easyConfigPreConfigMetrics.startTime));
                                                      }

                                                      if (dword_27E383310 <= 800)
                                                      {
                                                        if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                        {
                                                          sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "STATUS:\n", v113, v114, v115, v116, v137);
                                                        }

                                                        if (dword_27E383310 <= 800)
                                                        {
                                                          if (dword_27E383310 == -1 && !sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                          {
LABEL_233:
                                                            if (dword_27E383310 <= 800)
                                                            {
                                                              if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                              {
                                                                if (self->_successfullyEstablishedLinkOnTargetDeviceSWAP)
                                                                {
                                                                  v133 = @"Yes";
                                                                }

                                                                else
                                                                {
                                                                  v133 = @"No";
                                                                }

                                                                sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     ESTABLISHED LINK ON TARGET SWAP...: %@\n", v123, v124, v125, v126, v133);
                                                              }

                                                              if (dword_27E383310 <= 800)
                                                              {
                                                                if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                                {
                                                                  if (self->_successfullyEstablishedLinkOnDestinationAP)
                                                                  {
                                                                    v134 = @"Yes";
                                                                  }

                                                                  else
                                                                  {
                                                                    v134 = @"No";
                                                                  }

                                                                  sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     ESTABLISHED LINK ON DESTINATION AP: %@\n", v123, v124, v125, v126, v134);
                                                                }

                                                                if (dword_27E383310 <= 800)
                                                                {
                                                                  if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                                  {
                                                                    if (self->_destinationNetworkPasswordAccepted)
                                                                    {
                                                                      v135 = @"Yes";
                                                                    }

                                                                    else
                                                                    {
                                                                      v135 = @"No";
                                                                    }

                                                                    sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     DESTINATION AP PASSWORD ACCEPTED..: %@\n", v123, v124, v125, v126, v135);
                                                                  }

                                                                  if (dword_27E383310 <= 800)
                                                                  {
                                                                    if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                                    {
                                                                      if (self->_postediAPAccessoryConfiguredNotification)
                                                                      {
                                                                        v136 = @"Yes";
                                                                      }

                                                                      else
                                                                      {
                                                                        v136 = @"No";
                                                                      }

                                                                      sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     POSTED iAP OVER WIFI NOTIFICATION.: %@\n", v123, v124, v125, v126, v136);
                                                                    }

                                                                    if (dword_27E383310 <= 800)
                                                                    {
                                                                      if (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u))
                                                                      {
                                                                        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     RESULT............................: %#m\n", v123, v124, v125, v126, v7);
                                                                      }

                                                                      if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
                                                                      {

                                                                        sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "*********************************************************************\n", v123, v124, v125, v126, v140);
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }

                                                            return;
                                                          }

                                                          lastHeardEasyConfigProgressNotification = self->_lastHeardEasyConfigProgressNotification;
                                                          if (lastHeardEasyConfigProgressNotification > 29)
                                                          {
                                                            if (lastHeardEasyConfigProgressNotification <= 49)
                                                            {
                                                              if (lastHeardEasyConfigProgressNotification == 30)
                                                              {
                                                                v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Applying configuration to device");
                                                                goto LABEL_232;
                                                              }

                                                              if (lastHeardEasyConfigProgressNotification == 40)
                                                              {
                                                                v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Applied configuration to device");
                                                                goto LABEL_232;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              switch(lastHeardEasyConfigProgressNotification)
                                                              {
                                                                case '2':
                                                                  v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Searching for post-config device");
                                                                  goto LABEL_232;
                                                                case '<':
                                                                  v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Performing post-config check of device");
                                                                  goto LABEL_232;
                                                                case 'F':
                                                                  v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Performed post-config check of device");
                                                                  goto LABEL_232;
                                                              }
                                                            }
                                                          }

                                                          else if (lastHeardEasyConfigProgressNotification <= 2)
                                                          {
                                                            if (lastHeardEasyConfigProgressNotification == 1)
                                                            {
                                                              v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Start");
                                                              goto LABEL_232;
                                                            }

                                                            if (lastHeardEasyConfigProgressNotification == 2)
                                                            {
                                                              v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Final");
                                                              goto LABEL_232;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            switch(lastHeardEasyConfigProgressNotification)
                                                            {
                                                              case 3:
                                                                v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Error");
                                                                goto LABEL_232;
                                                              case 10:
                                                                v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Search for pre-config device");
                                                                goto LABEL_232;
                                                              case 20:
                                                                v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Authenticating pre-config device");
LABEL_232:
                                                                sub_23EB75374(&dword_27E383310, "[AUMFiSetupController logCompletionStatus:]", 800, "     LAST EASYCONFIG NOTIFICATION......: %@\n", v129, v130, v131, v132, v128);
                                                                goto LABEL_233;
                                                            }
                                                          }

                                                          if (lastHeardEasyConfigProgressNotification == 100)
                                                          {
                                                            v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "Configuration complete");
                                                          }

                                                          else
                                                          {
                                                            v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "?");
                                                          }

                                                          goto LABEL_232;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

@end