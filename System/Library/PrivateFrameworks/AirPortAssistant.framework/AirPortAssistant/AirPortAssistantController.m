@interface AirPortAssistantController
+ (BOOL)isUnconfiguredDevice:(id)a3;
+ (BOOL)launchAUForNetwork:(id)a3 withMacAddress:(id)a4 getAUFromAppStore:(BOOL)a5 viewController:(id)a6;
+ (id)assistantUIViewControllerWithParameters:(id)a3;
+ (id)sharedInstance;
+ (id)unconfiguredDeviceName:(id)a3;
+ (id)uniqueBaseStationName:(id)a3 withBssid:(id)a4;
+ (void)cancelAirPortAssistantController;
- (id)WACDeviceFromScanInfo:(id)a3;
- (int)configureUIViewControllerWithParameters:(id)a3;
- (int)start2_4WiFiScan;
- (void)assistantCompleteWithResult:(int)a3;
- (void)dealloc;
- (void)stop2_4WiFiScan;
- (void)updateWACListeners;
- (void)wirelessScanDone:(id)a3;
@end

@implementation AirPortAssistantController

+ (id)sharedInstance
{
  result = qword_27E3833B8;
  if (!qword_27E3833B8)
  {
    result = objc_alloc_init(AirPortAssistantController);
    qword_27E3833B8 = result;
  }

  return result;
}

+ (id)assistantUIViewControllerWithParameters:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = objc_msgSend_objectForKey_(a3, a2, @"scanRecord");
    v6 = objc_msgSend_objectForKey_(v3, v5, @"currentWiFiScan");
    v8 = objc_msgSend_objectForKey_(v3, v7, @"deviceMACAddr");
    if (!(v4 | v8))
    {
      return 0;
    }

    v11 = v8;
    v3 = objc_msgSend_sharedInstance(AirPortAssistantController, v9, v10);
    if (v3)
    {
      v12 = [AssistantUIViewController alloc];
      v14 = objc_msgSend_initWithNibName_bundle_(v12, v13, 0, 0);
      if (v14)
      {
        v16 = v14;
        objc_msgSend_setAssistantDelegate_(v14, v15, v3);
        objc_msgSend_setMacAddress_(v16, v17, v11);
        objc_msgSend_setScanInfoRecord_(v16, v18, v4);
        objc_msgSend_setParamScanResults_(v16, v19, v6);
        objc_msgSend_setViewController_(v3, v20, v16);

        v22 = objc_msgSend_scanInfoNetworkName_(WiFiUtils, v21, v4);
        objc_msgSend_setConfiguredSSID_(v3, v23, v22);
        return v3;
      }

      return 0;
    }
  }

  return v3;
}

+ (void)cancelAirPortAssistantController
{
  objc_msgSend_downloadAssetsCancel(AirPortAssistantController, a2, v2);
  if (qword_27E3833B0)
  {
    v5 = objc_msgSend_uiAlert(qword_27E3833B0, v3, v4);
    objc_msgSend_dismissWithCancelActionAnimated_(v5, v6, 0);
  }

  if (qword_27E3833B8)
  {
    v7 = objc_msgSend_delegate(qword_27E3833B8, v3, v4);
    objc_msgSend_setDelegate_(qword_27E3833B8, v8, 0);
    v11 = objc_msgSend_viewController(qword_27E3833B8, v9, v10);
    objc_msgSend_handeImmediateCancel(v11, v12, v13);
    v14 = qword_27E3833B8;
    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = qword_27E3833B8;
        v19 = objc_msgSend_context(qword_27E3833B8, v16, v17);
        objc_msgSend_airPortAssistantComplete_result_context_animated_(v7, v20, v18, 4294960573, v19, 0);
      }

      else if (objc_opt_respondsToSelector())
      {
        objc_msgSend_airPortAssistantComplete_animated_(v7, v21, qword_27E3833B8, 0);
      }

      else if (objc_opt_respondsToSelector())
      {
        objc_msgSend_airPortAssistantComplete_(v7, v15, qword_27E3833B8);
      }
    }

    v22 = qword_27E3833B8;

    objc_msgSend_setContext_(v22, v15, 0);
  }
}

- (void)assistantCompleteWithResult:(int)a3
{
  v3 = *&a3;
  v5 = self;
  if (self->_delegate)
  {
    v7 = objc_opt_respondsToSelector();
    delegate = self->_delegate;
    if (v7)
    {
      v10 = objc_msgSend_context(self, v6, v8);
      objc_msgSend_airPortAssistantComplete_result_context_animated_(delegate, v11, self, v3, v10, 1);
    }

    else if (delegate)
    {
      v12 = objc_opt_respondsToSelector();
      v13 = self->_delegate;
      if (v12)
      {
        objc_msgSend_airPortAssistantComplete_animated_(v13, v6, self, 1);
      }

      else if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_msgSend_airPortAssistantComplete_(self->_delegate, v6, self);
      }
    }
  }

  objc_msgSend_setContext_(self, v6, 0);
}

+ (BOOL)isUnconfiguredDevice:(id)a3
{
  objc_msgSend_downloadAssetsIfNeeded(AirPortAssistantController, a2, a3);
  IsUnconfigured = objc_msgSend_scanInfoIsUnconfigured_(WiFiUtils, v4, a3);
  v7 = objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, v6, a3);
  v9 = objc_msgSend_scanInfoSupportsACPConfigV1_(WiFiUtils, v8, a3);
  v11 = objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v10, a3);
  v13 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v12, a3);
  if (IsUnconfigured)
  {
    v14 = (v13 != 0) | v7 | v9 | v11;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

+ (id)unconfiguredDeviceName:(id)a3
{
  v4 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, a3);

  return sub_23EB6D0E0(a3, v4, 0);
}

+ (id)uniqueBaseStationName:(id)a3 withBssid:(id)a4
{
  v5 = sub_23EB6D320(a4, 0, a3);
  v6 = MEMORY[0x277CCAB68];
  v8 = objc_msgSend_substringFromIndex_(v5, v7, 9);
  v10 = objc_msgSend_stringWithString_(v6, v9, v8);
  v13 = objc_msgSend_length(v10, v11, v12);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v10, v14, @":", &stru_285145FE8, 0, 0, v13 - 1);
  return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%@ %@", a3, v10);
}

+ (BOOL)launchAUForNetwork:(id)a3 withMacAddress:(id)a4 getAUFromAppStore:(BOOL)a5 viewController:(id)a6
{
  v7 = a5;
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"apmanage://manage?");
  if (a4)
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@macaddr=%@", v11, a4);
  }

  if (a3)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@&network=%@", v11, a3);
    v15 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], v13, v14);
    v11 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v12, v16, v15);
  }

  v17 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v10, v11);
  v18 = sub_23EC0F534(v17);
  if (!v18 && v7)
  {
    sub_23EB6CCD4(@"SetupRecommendations");
    v19 = [AUUIAlert alloc];
    v21 = objc_msgSend_initWithViewController_(v19, v20, a6);
    v22 = sub_23EB6CD3C(@"AskToGetAirPortUtility1", qword_27E383800);
    objc_msgSend_setTitle_(v21, v23, v22);
    v24 = sub_23EB6CD3C(@"AskToGetAirPortUtility2", qword_27E383800);
    objc_msgSend_setMessage_(v21, v25, v24);
    v26 = sub_23EB6CD3C(@"kOK", qword_27E383800);
    objc_msgSend_setOkButtonTitle_(v21, v27, v26);
    v28 = sub_23EB6CD3C(@"kCancel", qword_27E383800);
    objc_msgSend_setCancelButtonTitle_(v21, v29, v28);
    qword_27E3833B0 = objc_alloc_init(AUUIAlertDelegateClass);
    objc_msgSend_setDelegate_(v21, v30, qword_27E3833B0);
    objc_msgSend_setUiAlert_(qword_27E3833B0, v31, v21);
    objc_msgSend_show(v21, v32, v33);
  }

  return v18;
}

- (int)start2_4WiFiScan
{
  v4 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2);
  if (!v4)
  {
    return -6728;
  }

  v7 = v4;
  if (!objc_msgSend_airPortIsOn(v4, v5, v6))
  {
    return -6729;
  }

  if (objc_msgSend_isScanningActive(v7, v8, v9))
  {
    return -6709;
  }

  objc_msgSend_setUnconfiguredWACDevices_(self, v10, 0);
  objc_msgSend_clearScanCache(v7, v12, v13);
  objc_msgSend_setPeriodicScanType_(v7, v14, 1);
  objc_msgSend_setPeriodicScanInterval_(v7, v15, v16, 10.0);
  objc_msgSend_activateScanning_(v7, v17, 1);
  v20 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v18, v19);
  objc_msgSend_addObserver_selector_name_object_(v20, v21, self, sel_wirelessScanDone_, @"com.apple.WiFiUtils.Scan.Complete", 0);
  return 0;
}

- (void)stop2_4WiFiScan
{
  v4 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2);
  if (v4)
  {
    v7 = v4;
    if (objc_msgSend_isScanningActive(v4, v5, v6))
    {
      objc_msgSend_activateScanning_(v7, v5, 0);
      objc_msgSend_cancelAsync(v7, v8, v9);
    }
  }

  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6);

  objc_msgSend_removeObserver_name_object_(v10, v11, self, @"com.apple.WiFiUtils.Scan.Complete", 0);
}

- (int)configureUIViewControllerWithParameters:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return -6762;
  }

  v5 = objc_msgSend_objectForKey_(a3, a2, @"scanRecord");
  v7 = objc_msgSend_objectForKey_(a3, v6, @"currentWiFiScan");
  v9 = objc_msgSend_objectForKey_(a3, v8, @"deviceMACAddr");
  v11 = objc_msgSend_objectForKey_(a3, v10, @"wacShouldHideFindAppUI");
  if (!(v5 | v9))
  {
    return -6762;
  }

  v12 = v11;
  v13 = [AssistantUIViewController alloc];
  v15 = objc_msgSend_initWithNibName_bundle_(v13, v14, 0, 0);
  if (!v15)
  {
    return -6762;
  }

  v17 = v15;
  objc_msgSend_setAssistantDelegate_(v15, v16, self);
  objc_msgSend_setMacAddress_(v17, v18, v9);
  objc_msgSend_setScanInfoRecord_(v17, v19, v5);
  objc_msgSend_setParamScanResults_(v17, v20, v7);
  if (v12)
  {
    v25 = @"wacShouldHideFindAppUI";
    v26[0] = v12;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v26, &v25, 1);
    objc_msgSend_setCallerParamDict_(v17, v23, v22);
  }

  objc_msgSend_setViewController_(self, v21, v17);

  return 0;
}

- (void)wirelessScanDone:(id)a3
{
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {

    MEMORY[0x2821F9670](self, sel_updateWACListeners, v4);
  }
}

- (void)updateWACListeners
{
  v106 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2);
  v7 = objc_msgSend_mergedScanInfoArray(v4, v5, v6);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
  v83 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12);
  if (objc_msgSend_count(self->_unconfiguredWACDevices, v13, v14))
  {
    v17 = MEMORY[0x277CBEB38];
    v18 = objc_msgSend_unconfiguredWACDevices(self, v15, v16);
    v85 = objc_msgSend_dictionaryWithDictionary_(v17, v19, v18);
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v20, &v94, v104, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v95;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v95 != v25)
          {
            objc_enumerationMutation(v7);
          }

          v27 = *(*(&v94 + 1) + 8 * i);
          if ((objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, v22, v27) & 1) != 0 || objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v22, v27))
          {
            v29 = objc_msgSend_unconfiguredWACDevices(self, v22, v28);
            v31 = objc_msgSend_scanInfoBSSIDStr_(WiFiUtils, v30, v27);
            if (!objc_msgSend_objectForKey_(v29, v32, v31))
            {
              v33 = objc_msgSend_WACDeviceFromScanInfo_(self, v22, v27);
              v35 = objc_msgSend_objectForKey_(v33, v34, @"wacMACAddress");
              objc_msgSend_setObject_forKey_(v10, v36, v33, v35);
              objc_msgSend_setObject_forKey_(v85, v37, v33, v35);
            }
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v22, &v94, v104, 16);
      }

      while (v24);
    }

    v38 = objc_msgSend_unconfiguredWACDevices(self, v22, v23);
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = objc_msgSend_allValues(v38, v39, v40);
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v90, v103, 16);
    if (v42)
    {
      v44 = v42;
      v81 = v10;
      v82 = self;
      v45 = *v91;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v91 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v47 = *(*(&v90 + 1) + 8 * j);
          v48 = objc_msgSend_objectForKey_(v47, v43, @"wacMACAddress");
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v49, &v86, v102, 16);
          if (v50)
          {
            v51 = v50;
            v52 = *v87;
LABEL_20:
            v53 = 0;
            while (1)
            {
              if (*v87 != v52)
              {
                objc_enumerationMutation(v7);
              }

              v54 = objc_msgSend_scanInfoBSSIDStr_(WiFiUtils, v43, *(*(&v86 + 1) + 8 * v53));
              if (objc_msgSend_isEqualToString_(v48, v55, v54))
              {
                break;
              }

              if (v51 == ++v53)
              {
                v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v43, &v86, v102, 16);
                if (v51)
                {
                  goto LABEL_20;
                }

                goto LABEL_26;
              }
            }
          }

          else
          {
LABEL_26:
            objc_msgSend_setObject_forKey_(v83, v43, v47, v48);
            objc_msgSend_removeObjectForKey_(v85, v56, v48);
          }
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v90, v103, 16);
      }

      while (v44);
      v10 = v81;
      self = v82;
    }

    objc_msgSend_setUnconfiguredWACDevices_(self, v43, v85);
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v15, &v98, v105, 16);
    v61 = v10;
    if (v59)
    {
      v62 = v59;
      v63 = *v99;
      do
      {
        for (k = 0; k != v62; ++k)
        {
          if (*v99 != v63)
          {
            objc_enumerationMutation(v7);
          }

          v65 = *(*(&v98 + 1) + 8 * k);
          if ((objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, v60, v65) & 1) != 0 || objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v60, v65))
          {
            v66 = objc_msgSend_WACDeviceFromScanInfo_(self, v60, v65);
            v68 = objc_msgSend_objectForKey_(v66, v67, @"wacMACAddress");
            objc_msgSend_setObject_forKey_(v10, v69, v66, v68);
          }
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v60, &v98, v105, 16);
      }

      while (v62);
      v61 = v10;
    }

    objc_msgSend_setUnconfiguredWACDevices_(self, v60, v61);
  }

  if (objc_msgSend_count(v10, v57, v58) || objc_msgSend_count(v83, v70, v71))
  {
    delegate = self->_delegate;
    v73 = objc_msgSend_allValues(v10, v70, v71);
    v76 = objc_msgSend_allValues(v83, v74, v75);
    objc_msgSend_wacDevicesAdded_andWACDevicesRemoved_withController_(delegate, v77, v73, v76, self);
  }

  v78 = objc_msgSend_sharedInstance(WiFiUtils, v70, v71);
  objc_msgSend_clearScanCache(v78, v79, v80);
}

- (id)WACDeviceFromScanInfo:(id)a3
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3);
  v5 = MEMORY[0x277CCABB0];
  IsMFIAirPlayDevice = objc_msgSend_scanInfoIsMFIAirPlayDevice_(WiFiUtils, v6, a3);
  v36 = objc_msgSend_numberWithBool_(v5, v8, IsMFIAirPlayDevice);
  v9 = MEMORY[0x277CCABB0];
  v11 = objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v10, a3);
  v13 = objc_msgSend_numberWithBool_(v9, v12, v11);
  v14 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_scanInfoSupportsSecureWAC_(WiFiUtils, v15, a3);
  v18 = objc_msgSend_numberWithBool_(v14, v17, v16);
  v20 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v19, a3);
  v22 = objc_msgSend_scanInfoDeviceID_(WiFiUtils, v21, a3);
  v24 = objc_msgSend_scanInfoNetworkName_(WiFiUtils, v23, a3);
  v26 = objc_msgSend_scanInfoBSSIDStr_(WiFiUtils, v25, a3);
  v28 = objc_msgSend_scanInfoModelName_(WiFiUtils, v27, a3);
  v30 = objc_msgSend_scanInfoManufacturerName_(WiFiUtils, v29, a3);
  objc_msgSend_setObject_forKey_(v4, v31, v36, @"wacSupportsAirPlay");
  objc_msgSend_setObject_forKey_(v4, v32, v13, @"wacSupportsSpruce");
  objc_msgSend_setObject_forKey_(v4, v33, v18, @"wacSupportsSecureWAC");
  if (v20)
  {
    objc_msgSend_setObject_forKey_(v4, v34, v20, @"wacFriendlyName");
  }

  if (v22)
  {
    objc_msgSend_setObject_forKey_(v4, v34, v22, @"wacDeviceID");
  }

  if (v24)
  {
    objc_msgSend_setObject_forKey_(v4, v34, v24, @"wacSSID");
  }

  if (v26)
  {
    objc_msgSend_setObject_forKey_(v4, v34, v26, @"wacMACAddress");
  }

  if (v28)
  {
    objc_msgSend_setObject_forKey_(v4, v34, v28, @"wacModelName");
  }

  if (v30)
  {
    objc_msgSend_setObject_forKey_(v4, v34, v30, @"wacManufacturerName");
  }

  return v4;
}

- (void)dealloc
{
  qword_27E3833B8 = 0;
  objc_msgSend_sharedInstanceRelease(WiFiUtils, v3, v4);

  self->_configuredSSID = 0;
  objc_msgSend_setUnconfiguredWACDevices_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = AirPortAssistantController;
  [(AirPortAssistantController *)&v6 dealloc];
}

@end