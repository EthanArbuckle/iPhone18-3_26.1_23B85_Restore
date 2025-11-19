@interface AutoGuessController
+ (BOOL)isRestoreAnOptionForTheRecommendations:(id)a3;
+ (BOOL)shouldShowPasswordUIForRecommendation:(id)a3;
+ (id)fullAutoGuessDictionaryFromCompletionDict:(id)a3;
+ (id)primaryRecommendationDictionaryFromCompletionDict:(id)a3;
+ (id)recommendationStringFromCompletionDict:(id)a3;
+ (id)recommendationToActionChoice:(id)a3;
+ (id)restoreOfferFromCompletionDict:(id)a3;
+ (id)restoreRecommendationDictionaryFromCompletionDict:(id)a3;
+ (id)shortProductNameForUnconfiguredDeviceFromAutoGuessResults:(id)a3;
+ (id)shortProductNameFromBaseStationDictionary:(id)a3;
+ (id)sourceBaseStationFromRecommendation:(id)a3;
+ (id)sourceNetworkFromRecommendation:(id)a3;
+ (id)unconfiguredBaseStationCanBeConfiguredFromCompletionDict:(id)a3;
+ (id)unconfiguredBaseStationFromGuessCompleteDict:(id)a3;
+ (id)unconfiguredBaseStationFromRecommendation:(id)a3;
- (AutoGuessController)init;
- (BOOL)okToSwitchToShortBonjourTimeout:(id)a3;
- (id)createCompletionDictFromAutoGuessResults:(id)a3;
- (id)targetInfo;
- (int)bonjourBrowseStatus;
- (int)cancelAutoGuess;
- (int)runAutoGuessWithWifiScanInfos:(id)a3;
- (int)startAutoGuessForUnconfiguredMACAddress:(id)a3 withWifiScanInfos:(id)a4;
- (int)startBonjourBrowser;
- (int)startWiFiScanner;
- (int)wifiScanStatus;
- (void)autoGuessEngineComplete;
- (void)bonjourTXTRemoved:(id)a3;
- (void)bonjourTXTUpdated:(id)a3;
- (void)browseReadyTimerCallback:(id)a3;
- (void)cancelBonjourBrowser;
- (void)cancelWiFiScanner;
- (void)dealloc;
- (void)runAutoGuessThread:(id)a3;
- (void)setBonjourBrowseStatus:(int)a3;
- (void)setWiFiScanStatus:(int)a3;
- (void)startAutoGuessIfReady;
- (void)stopBonjourBrowser;
- (void)stopWiFiScanner;
- (void)uiAssetsUpdated:(id)a3;
- (void)updateTargetInfo:(BOOL)a3;
- (void)wirelessScanDone:(id)a3;
@end

@implementation AutoGuessController

- (AutoGuessController)init
{
  v33.receiver = self;
  v33.super_class = AutoGuessController;
  v4 = [(AssistantCallbackController *)&v33 init];
  if (v4)
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3);
    objc_msgSend_set_browsedBases_(v4, v6, v5);
    objc_msgSend_setWiFiScanStatus_(v4, v7, 0);
    objc_msgSend_setBonjourBrowseStatus_(v4, v8, 0);
    sub_23EBE2958(&v4->_guessContext, v9, v10, v11, v12, v13, v14, v15);
    guessContext = v4->_guessContext;
    v19 = objc_msgSend_assistantCallback(v4, v17, v18);
    sub_23EBE2AD8(guessContext, v19, v4, v20, v21, v22, v23, v24);
    sub_23EBE2B88(v4->_guessContext, sub_23EB4FA00, v4, v25, v26, v27, v28, v29);
  }

  v30 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v2, v3);
  objc_msgSend_addSuiteNamed_(v30, v31, @"com.apple.airport.airportassistant");
  return v4;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, @"com.apple.airport.airportutility.DataCache.UIAssets.Refresh.Notification", 0);
  sub_23EBE2A44(self->_guessContext, v6, v7, v8, v9, v10, v11, v12);
  self->_guessContext = 0;
  objc_msgSend_set_browsedBases_(self, v13, 0);
  v16 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v14, v15);
  objc_msgSend_removeSuiteNamed_(v16, v17, @"com.apple.airport.airportassistant");
  v18.receiver = self;
  v18.super_class = AutoGuessController;
  [(AssistantCallbackController *)&v18 dealloc];
}

- (int)startWiFiScanner
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController startWiFiScanner]", 100, "\n", v3, v4, v5, v6, v18);
  }

  v8 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2);
  if (objc_msgSend_airPortIsOn(v8, v9, v10))
  {
    objc_msgSend_setWiFiScanStatus_(self, v11, 1);
    v14 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v13);
    objc_msgSend_addObserver_selector_name_object_(v14, v15, self, sel_wirelessScanDone_, @"com.apple.WiFiUtils.Scan.Complete", 0);
    objc_msgSend_asyncWiFiScan_wifiType_merge_maxAge_(v8, v16, 0, 3, 0, 0);
  }

  else
  {
    objc_msgSend_setWiFiScanStatus_(self, v11, 2);
  }

  return 0;
}

- (int)runAutoGuessWithWifiScanInfos:(id)a3
{
  if (!objc_msgSend_targetMACAddress(self, a2, a3) && !objc_msgSend_targetScanRecord(self, v5, v6) && !objc_msgSend_targetBrowseRecord(self, v5, v6))
  {
    return -6705;
  }

  self->_updatedTargetInfo = 0;
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6);
  objc_msgSend_addObserver_selector_name_object_(v7, v8, self, sel_uiAssetsUpdated_, @"com.apple.airport.airportutility.DataCache.UIAssets.Refresh.Notification", 0);
  if (a3)
  {
    v13 = objc_msgSend_count(a3, v9, v10) ? a3 : 0;
    if (!objc_msgSend_targetScanRecord(self, v11, v12))
    {
      if (v13)
      {
        if (objc_msgSend_targetMACAddress(self, v9, v10))
        {
          v14 = objc_msgSend_targetMACAddress(self, v9, v10);
          v15 = sub_23EB6B8F0(v14, 0, v13);
          if (v15 != -1)
          {
            v16 = objc_msgSend_objectAtIndex_(v13, v9, v15);
            objc_msgSend_setTargetScanRecord_(self, v17, v16);
          }
        }
      }
    }
  }

  if (!objc_msgSend_targetMACAddress(self, v9, v10))
  {
    v20 = objc_msgSend_targetInfo(self, v18, v19);
    if (!v20)
    {
      return -6705;
    }

    v22 = objc_msgSend_objectForKey_(v20, v21, @"kRecommendationTargetInfoKey_MACAddress");
    objc_msgSend_setTargetMACAddress_(self, v23, v22);
  }

  if (!objc_msgSend_targetMACAddress(self, v18, v19))
  {
    return -6705;
  }

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_autoguessProgressUpdated_paramString_(self->_delegate, v24, 15, 0);
  }

  objc_msgSend_setGuessCompletionDict_(self, v24, 0);
  v27 = objc_msgSend_targetMACAddress(self, v25, v26);

  return MEMORY[0x2821F9670](self, sel_startAutoGuessForUnconfiguredMACAddress_withWifiScanInfos_, v27);
}

- (int)cancelAutoGuess
{
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_autoguessProgressUpdated_paramString_(self->_delegate, a2, 19, 0);
  }

  objc_msgSend_cancel(self->_autoGuessThread, a2, v2);
  if (objc_msgSend_wifiScanStatus(self, v4, v5) == 1)
  {
    objc_msgSend_cancelWiFiScanner(self, v6, v7);
  }

  else
  {
    objc_msgSend_setWiFiScanStatus_(self, v6, 3);
  }

  if (objc_msgSend_bonjourBrowseStatus(self, v8, v9) == 1)
  {
    objc_msgSend_cancelBonjourBrowser(self, v10, v11);
  }

  else
  {
    objc_msgSend_setBonjourBrowseStatus_(self, v10, 3);
  }

  guessContext = self->_guessContext;

  return sub_23EBE967C(guessContext, v12, v13, v14, v15, v16, v17, v18);
}

- (int)startAutoGuessForUnconfiguredMACAddress:(id)a3 withWifiScanInfos:(id)a4
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    objc_msgSend_count(a4, a2, a3);
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) startAutoGuessForUnconfiguredMACAddress:withWifiScanInfos:]", 100, "macAddress: %@ [scanInfos count]: %d\n", v7, v8, v9, v10, a3);
  }

  if (!a3 || !objc_msgSend_length(a3, a2, a3))
  {
    return -6705;
  }

  objc_msgSend_removeAllObjects(self->_browsedBases, v11, v12);
  if (a4)
  {
    objc_msgSend_set_wifiScanInfos_(self, v13, a4);
  }

  if (objc_msgSend_targetScanRecord(self, v13, v14) && (v17 = objc_msgSend_targetScanRecord(self, v15, v16), objc_msgSend_scanInfoIsSTAOnly_(WiFiUtils, v18, v17)))
  {
    objc_msgSend_setBonjourBrowseStatus_(self, v15, 2);
  }

  else
  {
    result = objc_msgSend_startBonjourBrowser(self, v15, v16);
    if (result)
    {
      return result;
    }
  }

  if (self->_wifiScanInfos || objc_msgSend_wifiScanStatus(self, v19, v20) || (result = objc_msgSend_startWiFiScanner(self, v19, v20)) == 0)
  {
    objc_msgSend_startAutoGuessIfReady(self, v19, v20);
    return 0;
  }

  return result;
}

- (void)startAutoGuessIfReady
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) startAutoGuessIfReady]", 100, "\n", v3, v4, v5, v6, v21);
  }

  if (!self->_autoGuessThread && objc_msgSend_wifiScanStatus(self, a2, v2) != 3 && objc_msgSend_bonjourBrowseStatus(self, v8, v9) != 3)
  {
    objc_msgSend_updateTargetInfo_(self, v10, 0);
    if ((self->_wifiScanInfos || objc_msgSend_wifiScanStatus(self, v11, v12) == 2) && objc_msgSend_bonjourBrowseStatus(self, v11, v12) == 2)
    {
      v13 = objc_allocWithZone(MEMORY[0x277CCACC8]);
      v16 = objc_msgSend_targetMACAddress(self, v14, v15);
      v18 = objc_msgSend_initWithTarget_selector_object_(v13, v17, self, sel_runAutoGuessThread_, v16);
      self->_autoGuessThread = v18;

      objc_msgSend_start(v18, v19, v20);
    }
  }
}

- (void)autoGuessEngineComplete
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) autoGuessEngineComplete]", 100, "\n", v3, v4, v5, v6, v15);
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, @"com.apple.airport.airportutility.DataCache.UIAssets.Refresh.Notification", 0);
  if (self->_autoJoinState)
  {
    v12 = objc_msgSend_sharedInstanceRef(WiFiUtils, v10, v11);
    objc_msgSend_setAutoJoinState_(v12, v13, self->_autoJoinState);
  }

  self->_autoJoinState = 0;

  v14 = self;
}

- (id)targetInfo
{
  if (!objc_msgSend_targetScanRecord(self, a2, v2) && !objc_msgSend_targetBrowseRecord(self, v4, v5))
  {
    return 0;
  }

  v6 = objc_msgSend_targetBrowseRecord(self, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, @"syAP");
  v13 = objc_msgSend_integerValue(v8, v9, v10);
  if (v13)
  {
    v14 = objc_msgSend_targetBrowseRecord(self, v11, v12);
    v22 = sub_23EB6A294(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v25 = objc_msgSend_targetScanRecord(self, v11, v12);
    v13 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v26, v25);
    v29 = objc_msgSend_targetScanRecord(self, v27, v28);
    v22 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v30, v29);
  }

  v31 = v22;
  if (v22 - 3 > 1)
  {
    v37 = objc_msgSend_targetBrowseRecord(self, v23, v24);
    v39 = objc_msgSend_objectForKey_(v37, v38, @"name");
    if (v39)
    {
      goto LABEL_11;
    }

    v40 = objc_msgSend_targetScanRecord(self, v35, v36);
    v34 = objc_msgSend_objectForKey_(v40, v41, @"SSID_STR");
  }

  else
  {
    v32 = objc_msgSend_targetScanRecord(self, v23, v24);
    v34 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v33, v32);
  }

  v39 = v34;
LABEL_11:
  v42 = objc_msgSend_targetBrowseRecord(self, v35, v36);
  v46 = objc_msgSend_objectForKey_(v42, v43, @"raMA");
  if (v46)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    v47 = objc_msgSend_targetScanRecord(self, v44, v45);
    v46 = objc_msgSend_objectForKey_(v47, v48, @"BSSID");
    if (!v39)
    {
      return 0;
    }
  }

  if (v46)
  {
    v49 = MEMORY[0x277CBEAC0];
    v50 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v44, v13);
    v52 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v51, v31);
    return objc_msgSend_dictionaryWithObjectsAndKeys_(v49, v53, v39, @"kRecommendationTargetInfoKey_BaseName", v50, @"kRecommendationTargetInfoKey_ProductID", v46, @"kRecommendationTargetInfoKey_MACAddress", v52, @"kRecommendationTargetInfoKey_DeviceKind", 0);
  }

  return 0;
}

- (void)updateTargetInfo:(BOOL)a3
{
  v7 = a3;
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) updateTargetInfo:]", 100, "inForceUpdate: %d _updatedTargetInfo: %d\n", v3, v4, v5, v6, v7);
  }

  if (!self->_updatedTargetInfo || v7)
  {
    v10 = objc_msgSend_targetInfo(self, a2, a3);
    if (v10)
    {
      v11 = v10;
      if (self->_delegate)
      {
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_autoguessUpdateTargetInfo_(self->_delegate, v12, v11);
          self->_updatedTargetInfo = 1;
        }
      }
    }
  }
}

- (void)uiAssetsUpdated:(id)a3
{
  v4 = objc_msgSend_userInfo(a3, a2, a3);
  if (v4)
  {
    v6 = objc_msgSend_objectForKey_(v4, v5, @"productID");
    v11 = objc_msgSend_integerValue(v6, v7, v8);
    if (v11)
    {
      v12 = objc_msgSend_targetInfo(self, v9, v10);
      v14 = objc_msgSend_objectForKey_(v12, v13, @"kRecommendationTargetInfoKey_ProductID");
      v22 = objc_msgSend_integerValue(v14, v15, v16);
      if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
      {
        sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) uiAssetsUpdated:]", 100, "asset updated id: %d my target id: %d\n", v18, v19, v20, v21, v11);
      }

      if (v11 == v22)
      {

        objc_msgSend_updateTargetInfo_(self, v17, 1);
      }
    }
  }
}

- (BOOL)okToSwitchToShortBonjourTimeout:(id)a3
{
  LOBYTE(onShortTimer) = self->_onShortTimer;
  if (!onShortTimer)
  {
    v6 = objc_msgSend_sharedInstance(WiFiUtils, a2, a3);
    if (objc_msgSend_airPortIsOn(v6, v7, v8))
    {
      onShortTimer = sub_23EB6A530(a3, v9, v10, v11, v12, v13, v14, v15);
      self->_onShortTimer = onShortTimer;
      if (dword_27E380EB8 <= 100)
      {
        if (dword_27E380EB8 != -1 || (v17 = sub_23EB74AC8(&dword_27E380EB8, 0x64u), onShortTimer = self->_onShortTimer, v17))
        {
          objc_msgSend_objectForKey_(a3, v16, @"raMA");
          sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) okToSwitchToShortBonjourTimeout:]", 100, "_onShortTimer: %d inBaseStation: %@\n", v18, v19, v20, v21, onShortTimer);
          LOBYTE(onShortTimer) = self->_onShortTimer;
        }
      }
    }

    else
    {
      LOBYTE(onShortTimer) = 1;
      self->_onShortTimer = 1;
    }
  }

  return onShortTimer;
}

- (void)setWiFiScanStatus:(int)a3
{
  objc_sync_enter(self);
  self->_wifiScanStatus = a3;

  objc_sync_exit(self);
}

- (int)wifiScanStatus
{
  objc_sync_enter(self);
  wifiScanStatus = self->_wifiScanStatus;
  objc_sync_exit(self);
  return wifiScanStatus;
}

- (void)setBonjourBrowseStatus:(int)a3
{
  objc_sync_enter(self);
  self->_bonjourBrowseStatus = a3;

  objc_sync_exit(self);
}

- (int)bonjourBrowseStatus
{
  objc_sync_enter(self);
  bonjourBrowseStatus = self->_bonjourBrowseStatus;
  objc_sync_exit(self);
  return bonjourBrowseStatus;
}

- (int)startBonjourBrowser
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) startBonjourBrowser]", 100, "\n", v3, v4, v5, v6, v27);
  }

  if (self->_acpBrowserSession)
  {
    objc_msgSend_stopBonjourBrowser(self, a2, v2);
  }

  result = sub_23EB54398("com.apple.bonjour.txt.Updated", "com.apple.bonjour.txt.Removed", "AutoGuess:BrowseSession", &self->_acpBrowserSession);
  if (!result)
  {
    if (self->_acpBrowserSession)
    {
      v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v9, v10);
      objc_msgSend_addObserver_selector_name_object_(v11, v12, self, sel_bonjourTXTUpdated_, @"com.apple.bonjour.txt.Updated", 0);
      v15 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v13, v14);
      objc_msgSend_addObserver_selector_name_object_(v15, v16, self, sel_bonjourTXTRemoved_, @"com.apple.bonjour.txt.Removed", 0);
      self->_onShortTimer = 0;
      acpBrowserSession = self->_acpBrowserSession;
      v20 = objc_msgSend_UTF8String(0, v18, v19);
      result = sub_23EB548B0(acpBrowserSession, v20);
      if (result)
      {
        v22 = result == -6745;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        v23 = 15.0;
        if (result == -6745)
        {
          v23 = 0.0;
        }

        v24 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v21, self, sel_browseReadyTimerCallback_, 0, 0, v23);
        objc_msgSend_set_browseReadyTimer_(self, v25, v24);
        objc_msgSend_setBonjourBrowseStatus_(self, v26, 1);
        return 0;
      }
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (void)cancelBonjourBrowser
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) cancelBonjourBrowser]", 100, "\n", v3, v4, v5, v6, v9);
  }

  objc_msgSend_stopBonjourBrowser(self, a2, v2);

  objc_msgSend_setBonjourBrowseStatus_(self, v8, 3);
}

- (void)stopBonjourBrowser
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) stopBonjourBrowser]", 100, "\n", v3, v4, v5, v6, v19);
  }

  objc_msgSend_invalidate(self->_browseReadyTimer, a2, v2);
  objc_msgSend_set_browseReadyTimer_(self, v8, 0);
  v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v9, v10);
  objc_msgSend_removeObserver_name_object_(v11, v12, self, @"com.apple.bonjour.txt.Updated", 0);
  v15 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v13, v14);
  objc_msgSend_removeObserver_name_object_(v15, v16, self, @"com.apple.bonjour.txt.Removed", 0);
  acpBrowserSession = self->_acpBrowserSession;
  if (acpBrowserSession)
  {
    if (!sub_23EB54AE0(acpBrowserSession))
    {
      sub_23EB54BC4(self->_acpBrowserSession);
    }

    self->_acpBrowserSession = 0;
  }

  objc_msgSend_setBonjourBrowseStatus_(self, v17, 0);
}

- (void)wirelessScanDone:(id)a3
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) wirelessScanDone:]", 100, "\n", v3, v4, v5, v6, v23);
  }

  objc_msgSend_stopWiFiScanner(self, a2, a3);
  v10 = objc_msgSend_sharedInstance(WiFiUtils, v8, v9);
  v13 = objc_msgSend_unmergedScanInfoArray(v10, v11, v12);
  objc_msgSend_set_wifiScanInfos_(self, v14, v13);
  if (!objc_msgSend_targetScanRecord(self, v15, v16))
  {
    v19 = objc_msgSend_targetMACAddress(self, v17, v18);
    v20 = sub_23EB6B8F0(v19, 0, self->_wifiScanInfos);
    if (v20 != -1)
    {
      v21 = objc_msgSend_objectAtIndex_(self->_wifiScanInfos, v17, v20);
      objc_msgSend_setTargetScanRecord_(self, v22, v21);
    }
  }

  objc_msgSend_startAutoGuessIfReady(self, v17, v18);
}

- (void)cancelWiFiScanner
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) cancelWiFiScanner]", 100, "\n", v3, v4, v5, v6, v14);
  }

  v8 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2);
  objc_msgSend_cancelAsync(v8, v9, v10);
  objc_msgSend_stopWiFiScanner(self, v11, v12);

  objc_msgSend_setWiFiScanStatus_(self, v13, 3);
}

- (void)stopWiFiScanner
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) stopWiFiScanner]", 100, "\n", v3, v4, v5, v6, v11);
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, @"com.apple.WiFiUtils.Scan.Complete", 0);

  objc_msgSend_setWiFiScanStatus_(self, v10, 2);
}

- (void)browseReadyTimerCallback:(id)a3
{
  if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
  {
    sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) browseReadyTimerCallback:]", 100, "\n", v3, v4, v5, v6, v24);
  }

  objc_msgSend_invalidate(self->_browseReadyTimer, a2, a3);
  objc_msgSend_set_browseReadyTimer_(self, v8, 0);
  if (objc_msgSend_bonjourBrowseStatus(self, v9, v10) != 3)
  {
    if (!objc_msgSend_targetBrowseRecord(self, v11, v12))
    {
      v18 = objc_msgSend_allValues(self->_browsedBases, v13, v14);
      if (v18)
      {
        v19 = v18;
        v20 = objc_msgSend_targetMACAddress(self, v13, v14);
        v21 = sub_23EB6B3A8(v19, v20);
        if (v21 != -1)
        {
          v22 = objc_msgSend_objectAtIndex_(v19, v13, v21);
          objc_msgSend_setTargetBrowseRecord_(self, v23, v22);
        }
      }
    }

    objc_msgSend_stopBonjourBrowser(self, v13, v14);
    objc_msgSend_setBonjourBrowseStatus_(self, v15, 2);

    objc_msgSend_startAutoGuessIfReady(self, v16, v17);
  }
}

- (void)bonjourTXTUpdated:(id)a3
{
  v4 = objc_msgSend_userInfo(a3, a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"name");
  if (v4)
  {
    v8 = v6;
    if (v6)
    {
      v9 = objc_msgSend_objectForKey_(v4, v7, @"raMA");
      if (objc_msgSend_okToSwitchToShortBonjourTimeout_(self, v10, v4))
      {
        v12 = 2.0;
      }

      else
      {
        v12 = 5.0;
      }

      objc_msgSend_setObject_forKey_(self->_browsedBases, v11, v4, v8);
      browseReadyTimer = self->_browseReadyTimer;
      v16 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v14, v15, v12);
      objc_msgSend_setFireDate_(browseReadyTimer, v17, v16);
      if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
      {
        sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) bonjourTXTUpdated:]", 100, "MAC: %@\n", v18, v19, v20, v21, v9);
      }
    }
  }
}

- (void)bonjourTXTRemoved:(id)a3
{
  v4 = objc_msgSend_userInfo(a3, a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"name");
  if (v4)
  {
    v8 = v6;
    if (v6)
    {
      v9 = objc_msgSend_objectForKey_(v4, v7, @"raMA");
      objc_msgSend_removeObjectForKey_(self->_browsedBases, v10, v8);
      browseReadyTimer = self->_browseReadyTimer;
      v14 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v12, v13, 5.0);
      objc_msgSend_setFireDate_(browseReadyTimer, v15, v14);
      if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
      {
        sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) bonjourTXTRemoved:]", 100, "MAC: %@\n", v16, v17, v18, v19, v9);
      }
    }
  }
}

- (void)runAutoGuessThread:(id)a3
{
  v58 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if ((objc_msgSend_isCancelled(self->_autoGuessThread, v5, v6) & 1) == 0)
  {
    if (dword_27E380EB8 <= 100 && (dword_27E380EB8 != -1 || sub_23EB74AC8(&dword_27E380EB8, 0x64u)))
    {
      sub_23EB75374(&dword_27E380EB8, "[AutoGuessController(EngineControllerPrivate) runAutoGuessThread:]", 100, "unconfiguredMACAddress: %@\n", v9, v10, v11, v12, a3);
    }

    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8);
    v16 = objc_msgSend_sharedInstance(WiFiUtils, v14, v15);
    v19 = objc_msgSend_airPortIsOn(v16, v17, v18);
    v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v20, v19 ^ 1u);
    objc_msgSend_setValue_forKey_(v13, v22, v21, @"BSAutoGuessContext_HostNotUsingWireless");
    v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v23, 1);
    objc_msgSend_setValue_forKey_(v13, v25, v24, @"BSAutoGuessContext_HostHasPreferredNetworkSupport");
    PreferredNetworks = objc_msgSend_getPreferredNetworks_(v16, v26, 0);
    if (PreferredNetworks)
    {
      objc_msgSend_setObject_forKey_(v13, v28, PreferredNetworks, @"BSAutoGuessContext_HostPreferredNetworks");
    }

    v30 = MEMORY[0x277CBEA60];
    v31 = objc_msgSend_allValues(self->_browsedBases, v28, v29);
    v33 = objc_msgSend_arrayWithArray_(v30, v32, v31);
    if (v33)
    {
      objc_msgSend_setObject_forKey_(v13, v34, v33, @"BSAutoGuessContext_HostBrowsedBaseStations");
    }

    if (a3)
    {
      if (objc_msgSend_targetBrowseRecord(self, v34, v35))
      {
        v38 = objc_msgSend_targetBrowseRecord(self, v36, v37);
        objc_msgSend_setObject_forKey_(v13, v39, v38, @"BSAutoGuessContext_ChosenUnconfiguredBrowseRecord");
      }

      else if (objc_msgSend_targetScanRecord(self, v36, v37))
      {
        v40 = objc_msgSend_targetScanRecord(self, v34, v35);
        objc_msgSend_setObject_forKey_(v13, v41, v40, @"BSAutoGuessContext_ChosenUnconfiguredScanRecord");
      }
    }

    if (v19)
    {
      wifiScanInfos = self->_wifiScanInfos;
      if (wifiScanInfos)
      {
        v43 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v34, wifiScanInfos);
        objc_msgSend_setObject_forKey_(v13, v44, v43, @"BSAutoGuessContext_HostScannedNetworks");
      }

      if (objc_msgSend_isCurrentlyAssociatedToAnInfrastructureNetwork_(v16, v34, 0))
      {
        CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(v16, v34, v35);
        if (CurrentAssociationInfo)
        {
          objc_msgSend_setObject_forKey_(v13, v34, CurrentAssociationInfo, @"BSAutoGuessContext_HostCurrentWirelessAssociation");
        }
      }
    }

    self->super._callbackContext = 0;
    if ((objc_msgSend_isCancelled(self->_autoGuessThread, v34, v35) & 1) == 0)
    {
      guessContext = self->_guessContext;
      if (guessContext)
      {
        if (!sub_23EBE2C38(guessContext, v13, v46, v47, v48, v49, v50, v51))
        {
          AutoJoinState = objc_msgSend_getAutoJoinState(v16, v53, v54);
          self->_autoJoinState = AutoJoinState;
          if (AutoJoinState)
          {
            objc_msgSend_setAutoJoinState_(v16, v56, 0);
          }

          v57 = self;
        }
      }
    }
  }

  self->_autoGuessThread = 0;
}

+ (id)recommendationToActionChoice:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = objc_msgSend_objectForKey_(a3, a2, @"BSAutoGuess_Recommendation");
  if (!v3)
  {
    return 0;
  }

  v4 = qword_27E383800;

  return sub_23EB6CD3C(v3, v4);
}

+ (BOOL)isRestoreAnOptionForTheRecommendations:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = objc_msgSend_valueForKey_(a3, a2, @"BSAutoGuessComplete_Suggestions");
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
    if (v5)
    {
      v7 = v5;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = objc_msgSend_objectForKey_(*(*(&v12 + 1) + 8 * i), v6, @"BSAutoGuess_Recommendation");
          if (v10 && (objc_msgSend_isEqualToString_(v10, v6, @"BSSetupRecommend_OfferRestore") & 1) != 0)
          {
            LOBYTE(v5) = 1;
            return v5;
          }
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v12, v16, 16);
        LOBYTE(v5) = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)shortProductNameFromBaseStationDictionary:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = objc_msgSend_objectForKey_(a3, a2, @"syAP");
  if (!v4)
  {
    return 0;
  }

  v7 = objc_msgSend_integerValue(v4, v5, v6);
  v15 = sub_23EB6A294(a3, v8, v9, v10, v11, v12, v13, v14);

  return sub_23EB6CEE0(v7, v15, 0);
}

+ (id)shortProductNameForUnconfiguredDeviceFromAutoGuessResults:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = objc_msgSend_valueForKey_(a3, a2, @"BSAutoGuessComplete_Suggestions");
  if (!v4)
  {
    return 0;
  }

  v7 = v4;
  if (!objc_msgSend_count(v4, v5, v6))
  {
    return 0;
  }

  v9 = objc_msgSend_objectAtIndex_(v7, v8, 0);
  if (!v9)
  {
    return 0;
  }

  v11 = v9;
  v12 = objc_msgSend_valueForKey_(v9, v10, @"BSAutoGuess_UnconfiguredBase");
  if (v12)
  {

    return MEMORY[0x2821F9670](a1, sel_shortProductNameFromBaseStationDictionary_, v12);
  }

  v14 = objc_msgSend_valueForKey_(v11, v13, @"BSAutoGuess_UnconfiguredNetwork");
  if (!v14)
  {
    return 0;
  }

  v16 = v14;
  v17 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v15, v14);
  v19 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v18, v16);

  return sub_23EB6CEE0(v17, v19, 0);
}

+ (id)sourceBaseStationFromRecommendation:(id)a3
{
  if (a3)
  {
    return objc_msgSend_objectForKey_(a3, a2, @"BSAutoGuess_SourceBase");
  }

  else
  {
    return 0;
  }
}

+ (id)sourceNetworkFromRecommendation:(id)a3
{
  if (a3)
  {
    return objc_msgSend_objectForKey_(a3, a2, @"BSAutoGuess_SourceNetwork");
  }

  else
  {
    return 0;
  }
}

+ (id)unconfiguredBaseStationFromGuessCompleteDict:(id)a3
{
  result = objc_msgSend_valueForKey_(a3, a2, @"primaryRecommendationDict");
  if (result)
  {
    v5 = result;
    result = objc_msgSend_valueForKey_(result, v4, @"BSAutoGuess_UnconfiguredBase");
    if (!result)
    {

      return objc_msgSend_valueForKey_(v5, v6, @"BSAutoGuess_UnconfiguredNetwork");
    }
  }

  return result;
}

+ (id)unconfiguredBaseStationFromRecommendation:(id)a3
{
  if (a3)
  {
    return objc_msgSend_objectForKey_(a3, a2, @"BSAutoGuess_UnconfiguredBase");
  }

  else
  {
    return 0;
  }
}

+ (BOOL)shouldShowPasswordUIForRecommendation:(id)a3
{
  if ((objc_msgSend_isEqualToString_(a3, a2, @"BSSetupRecommend_OfferCreate") & 1) != 0 || (isEqualToString = objc_msgSend_isEqualToString_(a3, v4, @"BSSetupRecommend_OfferJoinNetwork")) != 0)
  {
    LOBYTE(isEqualToString) = 1;
  }

  return isEqualToString;
}

+ (id)restoreOfferFromCompletionDict:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = objc_msgSend_restoreRecommendationDictionaryFromCompletionDict_(AutoGuessController, a2, a3);

  return objc_msgSend_objectForKey_(v3, v4, @"BSAutoGuess_Recommendation");
}

+ (id)recommendationStringFromCompletionDict:(id)a3
{
  if (a3)
  {
    return objc_msgSend_valueForKey_(a3, a2, @"recommendationText");
  }

  else
  {
    return 0;
  }
}

+ (id)unconfiguredBaseStationCanBeConfiguredFromCompletionDict:(id)a3
{
  if (a3)
  {
    return objc_msgSend_valueForKey_(a3, a2, @"baseStationCanBeConfigured");
  }

  else
  {
    return 0;
  }
}

+ (id)primaryRecommendationDictionaryFromCompletionDict:(id)a3
{
  if (a3)
  {
    return objc_msgSend_valueForKey_(a3, a2, @"primaryRecommendationDict");
  }

  else
  {
    return 0;
  }
}

+ (id)restoreRecommendationDictionaryFromCompletionDict:(id)a3
{
  if (a3)
  {
    return objc_msgSend_valueForKey_(a3, a2, @"restoreRecommendationDict");
  }

  else
  {
    return 0;
  }
}

+ (id)fullAutoGuessDictionaryFromCompletionDict:(id)a3
{
  if (a3)
  {
    return objc_msgSend_valueForKey_(a3, a2, @"fullGuessResults");
  }

  else
  {
    return 0;
  }
}

- (id)createCompletionDictFromAutoGuessResults:(id)a3
{
  v147 = *MEMORY[0x277D85DE8];
  v145 = 0;
  v140 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3);
  v137 = a3;
  sub_23EB6FF14(a3, &v145, "%ks:int", v4, v5, v6, v7, v8, "BSAutoGuessComplete_ErrorResult");
  if (v10)
  {
    return v140;
  }

  if (v145 == -6723)
  {
    v119 = @"kSetup_SetupRecommendationErrorCanceled";
    goto LABEL_77;
  }

  if (v145)
  {
    v119 = @"kSetup_SetupRecommendationErrorGeneric";
LABEL_77:
    v120 = MEMORY[0x277CCAB68];
    v121 = sub_23EB6CD3C(v119, qword_27E383800);
    v14 = objc_msgSend_stringWithString_(v120, v122, v121);
    v133 = 0;
    v134 = 0;
    v135 = 0;
    if (!v14)
    {
      return v140;
    }

    goto LABEL_78;
  }

  obj = objc_msgSend_objectForKey_(a3, v9, @"BSAutoGuessComplete_Suggestions");
  if (!obj)
  {
    return v140;
  }

  v14 = objc_msgSend_string(MEMORY[0x277CCAB68], v12, v13);
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v141, v146, 16);
  if (v139)
  {
    v132 = v14;
    v134 = 0;
    v135 = 0;
    v138 = *v142;
    v133 = 1;
LABEL_8:
    v17 = 0;
    while (1)
    {
      if (*v142 != v138)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v141 + 1) + 8 * v17);
      v19 = objc_msgSend_objectForKey_(v18, v16, @"BSAutoGuess_Recommendation");
      if (!v19)
      {
        return v140;
      }

      v21 = v19;
      v22 = objc_msgSend_objectForKey_(v18, v20, @"BSAutoGuess_AskUserList");
      v24 = objc_msgSend_objectForKey_(v18, v23, @"BSAutoGuess_UnconfiguredBase");
      v26 = objc_msgSend_objectForKey_(v18, v25, @"BSAutoGuess_UnconfiguredNetwork");
      v34 = v26;
      if (v24)
      {
        break;
      }

      if (v26)
      {
        v35 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v27, v26);
        v43 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v54, v34);
        if ((v43 - 3) > 1)
        {
          v44 = objc_msgSend_shortProductNameForUnconfiguredDeviceFromAutoGuessResults_(AutoGuessController, v55, v137);
        }

        else
        {
          v44 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v55, v34);
        }

        goto LABEL_14;
      }

      v45 = 0;
      v35 = 0;
      v43 = 0;
LABEL_15:
      v46 = sub_23EB6CE6C(v35, v43);
      if (objc_msgSend_isEqualToString_(v21, v47, @"BSSetupRecommend_OfferCreate"))
      {
        v49 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v48, @"PrimarySetupRecommendation_Create%@", v46);
LABEL_19:
        valid = sub_23EB6CD3C(v49, qword_27E383800);
        goto LABEL_20;
      }

      if (objc_msgSend_isEqualToString_(v21, v48, @"BSSetupRecommend_OfferExtendOverEthernet"))
      {
        v49 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v50, @"PrimarySetupRecommendation_ExtendEthernet%@", v46);
        goto LABEL_19;
      }

      if (objc_msgSend_isEqualToString_(v21, v50, @"BSSetupRecommend_OfferExtendWirelessly"))
      {
        v57 = objc_msgSend_objectForKey_(v18, v56, @"BSAutoGuess_SourceBase");
        v59 = objc_msgSend_valueForKey_(v57, v58, @"raNm");
        v62 = objc_msgSend_length(v59, v60, v61);
        v64 = MEMORY[0x277CCACA8];
        v65 = v62 == 0;
        v66 = @"PrimarySetupRecommendation_ExtendWireless.Specific%@";
        v67 = @"PrimarySetupRecommendation_ExtendWireless%@";
LABEL_34:
        if (v65)
        {
          v74 = objc_msgSend_stringWithFormat_(v64, v63, v67, v46);
        }

        else
        {
          v74 = objc_msgSend_stringWithFormat_(v64, v63, v66, v46);
        }

        v53 = sub_23EB6CD3C(v74, qword_27E383800);
        if (!objc_msgSend_length(v59, v75, v76))
        {
          goto LABEL_21;
        }

        v77 = MEMORY[0x277CCACA8];
        v128 = v59;
        goto LABEL_42;
      }

      if (objc_msgSend_isEqualToString_(v21, v56, @"BSSetupRecommend_OfferJoinNetwork"))
      {
        v69 = objc_msgSend_objectForKey_(v18, v68, @"BSAutoGuess_SourceBase");
        v59 = objc_msgSend_valueForKey_(v69, v70, @"raNm");
        v73 = objc_msgSend_length(v59, v71, v72);
        v64 = MEMORY[0x277CCACA8];
        v65 = v73 == 0;
        v66 = @"PrimarySetupRecommendation_Join.Specific%@";
        v67 = @"PrimarySetupRecommendation_Join%@";
        goto LABEL_34;
      }

      if (objc_msgSend_isEqualToString_(v21, v68, @"BSSetupRecommend_OfferReplace"))
      {
        v79 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v78, @"PrimarySetupRecommendation_Replace%@", v46);
        v81 = objc_msgSend_objectForKey_(v18, v80, @"BSAutoGuess_SourceBase");
        v82 = MEMORY[0x277CCACA8];
        v53 = sub_23EB6CD3C(v79, qword_27E383800);
        v128 = objc_msgSend_objectForKey_(v81, v83, @"raNm");
        v77 = v82;
LABEL_42:
        v84 = v53;
LABEL_43:
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v77, v52, v84, @"%@", 0, v128, v129, v131);
        goto LABEL_20;
      }

      if (objc_msgSend_isEqualToString_(v21, v78, @"BSSetupRecommend_OfferRestore") & 1) != 0 || (objc_msgSend_isEqualToString_(v21, v52, @"BSSetupRecommend_OfferNoRestore"))
      {
        v134 = v18;
LABEL_47:
        v53 = &stru_285145FE8;
        goto LABEL_21;
      }

      if (objc_msgSend_isEqualToString_(v21, v52, @"BSSetupRecommend_TellUserCannotFindDevices") || objc_msgSend_isEqualToString_(v21, v85, @"BSSetupRecommend_WaitForBaseStation"))
      {
        v87 = qword_27E383800;
        v88 = @"kProgress_NothingNewFoundError";
LABEL_51:
        v89 = sub_23EB6CD3C(v88, v87);
        goto LABEL_52;
      }

      if (objc_msgSend_isEqualToString_(v21, v86, @"BSSetupRecommend_DeviceIsTooNewToSetUp"))
      {
        v88 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v90, @"BaseStationTooNew%@", v46);
        v87 = qword_27E383800;
        goto LABEL_51;
      }

      if (objc_msgSend_isEqualToString_(v21, v90, @"BSSetupRecommend_AskUserChooseBaseWired") || objc_msgSend_isEqualToString_(v21, v91, @"BSSetupRecommend_AskUserChooseBaseWireless"))
      {
        v93 = objc_msgSend_count(v22, v91, v92);
        v94 = MEMORY[0x277CCACA8];
        if (v93 <= 3)
        {
          v95 = sub_23EB6CD3C(@"CantPickNamedBasesToExtend", qword_27E383800);
          v97 = objc_msgSend_valueForKey_(v24, v96, @"name");
          v98 = sub_23EB6CD3C(@"Conjunction_Or", qword_27E383800);
          v100 = sub_23EB52350(v22, v98, v99);
          goto LABEL_62;
        }

        v102 = sub_23EB6CD3C(@"CantPickOneOfManyBasesToExtend", qword_27E383800);
        v130 = objc_msgSend_valueForKey_(v24, v103, @"name");
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v94, v104, v102, @"%@%@", 0, v45, v130, v131);
LABEL_20:
        v53 = valid;
        goto LABEL_21;
      }

      if (objc_msgSend_isEqualToString_(v21, v91, @"BSSetupRecommend_AskUserChooseNetworkToJoin"))
      {
        v94 = MEMORY[0x277CCACA8];
        v95 = sub_23EB6CD3C(@"CantPickNamedBasesToJoin", qword_27E383800);
        v97 = objc_msgSend_valueForKey_(v24, v106, @"name");
        v107 = sub_23EB6CD3C(@"Conjunction_Or", qword_27E383800);
        v100 = sub_23EB5252C(v22, v107, v108);
LABEL_62:
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v94, v101, v95, @"%@%@%@", 0, v45, v97, v100);
        goto LABEL_20;
      }

      if ((objc_msgSend_isEqualToString_(v21, v105, @"BSSetupRecommend_UseAUFor80211g") & 1) == 0 && !objc_msgSend_isEqualToString_(v21, v52, @"BSSetupRecommend_FirmwareUpdateRequired"))
      {
        if (objc_msgSend_isEqualToString_(v21, v52, @"BSSetupRecommend_NoNetworkToJoin"))
        {
          v117 = MEMORY[0x277CCACA8];
          v84 = sub_23EB6CD3C(@"CantFindNetworksToJoin", qword_27E383800);
          v128 = v45;
          v77 = v117;
          goto LABEL_43;
        }

        goto LABEL_47;
      }

      if (v24)
      {
        v109 = MEMORY[0x277CCACA8];
        v110 = sub_23EB6CD3C(@"UseAirPortUtilityFor80211g", qword_27E383800);
        v129 = objc_msgSend_valueForKey_(v24, v111, @"name");
        v89 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v109, v112, v110, @"%@%@", 0, v45);
      }

      else
      {
        if (!v34)
        {
          v133 = 0;
          goto LABEL_47;
        }

        v113 = MEMORY[0x277CCACA8];
        v114 = sub_23EB6CD3C(@"UseAirPortUtilityFor80211g", qword_27E383800);
        v129 = objc_msgSend_valueForKey_(v34, v115, @"SSID_STR");
        v89 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v113, v116, v114, @"%@%@", 0, v45);
      }

LABEL_52:
      v53 = v89;
      v133 = 0;
LABEL_21:
      if ((objc_msgSend_isEqualToString_(v21, v52, @"BSSetupRecommend_OfferRestore") & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v16, @"BSSetupRecommend_OfferNoRestore") & 1) == 0)
      {
        objc_msgSend_setString_(v132, v16, v53);
        v135 = v18;
      }

      if (v139 == ++v17)
      {
        v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v141, v146, 16);
        v139 = v118;
        if (v118)
        {
          goto LABEL_8;
        }

        v14 = v132;
        if (v132)
        {
          goto LABEL_78;
        }

        return v140;
      }
    }

    v35 = sub_23EB6A2C0(v24, v27, v28, v29, v30, v31, v32, v33);
    v43 = sub_23EB6A294(v24, v36, v37, v38, v39, v40, v41, v42);
    v44 = sub_23EB6CEE0(v35, v43, 0);
LABEL_14:
    v45 = v44;
    goto LABEL_15;
  }

  v134 = 0;
  v135 = 0;
  v133 = 1;
  if (!v14)
  {
    return v140;
  }

LABEL_78:
  objc_msgSend_setValue_forKey_(v140, v16, v137, @"fullGuessResults");
  objc_msgSend_setValue_forKey_(v140, v123, v14, @"recommendationText");
  v125 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v124, v133 & 1);
  objc_msgSend_setValue_forKey_(v140, v126, v125, @"baseStationCanBeConfigured");
  if (v135)
  {
    objc_msgSend_setValue_forKey_(v140, v127, v135, @"primaryRecommendationDict");
  }

  if (v134)
  {
    objc_msgSend_setValue_forKey_(v140, v127, v134, @"restoreRecommendationDict");
  }

  return v140;
}

@end