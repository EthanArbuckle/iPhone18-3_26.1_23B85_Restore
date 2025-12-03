@interface WiFiUtils
+ (BOOL)network:(id)network shouldBeIgnored:(int)ignored;
+ (BOOL)networkIsApple:(id)apple productID:(unsigned int *)d;
+ (BOOL)networkIsSecure:(id)secure secMode:(int *)mode isEnterprise:(BOOL *)enterprise;
+ (BOOL)scanInfoIsAirPlayDevice:(id)device;
+ (BOOL)scanInfoIsAudioDevice:(id)device;
+ (BOOL)scanInfoIsDWDSCapable:(id)capable isDWDSEnabled:(BOOL *)enabled;
+ (BOOL)scanInfoIsGuestNetwork:(id)network;
+ (BOOL)scanInfoIsHomeKitSecureWAC:(id)c;
+ (BOOL)scanInfoIsInSoftReset:(id)reset;
+ (BOOL)scanInfoIsMFIAirPlayDevice:(id)device;
+ (BOOL)scanInfoIsSTAOnly:(id)only;
+ (BOOL)scanInfoIsUnconfigured:(id)unconfigured;
+ (BOOL)scanInfoTestBitFromAppleDeviceIE:(id)e forType:(int64_t)type;
+ (BOOL)stringArray:(id)array containsBSSID:(id)d;
+ (id)copyFilteredNetworks:(id)networks ignoreOptions:(int)options;
+ (id)getNetworkPassword:(id)password;
+ (id)scanInfoAirPortUniqueIdentifier:(id)identifier;
+ (id)scanInfoBSSIDStr:(id)str;
+ (id)scanInfoDataFromAppleDeviceIE:(id)e forType:(int64_t)type;
+ (id)scanInfoDeviceID:(id)d;
+ (id)scanInfoStringFromAppleDeviceIE:(id)e forType:(int64_t)type;
+ (id)sharedInstance;
+ (int)barsForRSSI:(int)i;
+ (int)scanInfoDeviceKind:(id)kind;
+ (unsigned)scanInfoAppleProductID:(id)d;
+ (unsigned)scanInfoSubAppleProductID:(id)d;
+ (void)sharedInstanceRelease;
- (BOOL)getAutoJoinState;
- (BOOL)isCurrentlyAssociatedToAnInfrastructureNetwork:(BOOL *)network;
- (BOOL)isJoinInProgress;
- (BOOL)isScanInProgress;
- (WiFiUtils)init;
- (id)getCurrentAssociationInfo;
- (id)getCurrentAssociationInfoOrNil;
- (id)getCurrentAssociationScanInfo;
- (id)getIfList;
- (id)getLinkStatus;
- (id)getNetworkPasswordForNetworkNamed:(id)named;
- (id)getPreferredNetworks:(BOOL)networks;
- (id)mergedScanInfoArray;
- (id)resetScanInfosOfType:(int)type;
- (id)scanInfoForMACAddress:(id)address;
- (id)scanInfoForName:(id)name wifiType:(int)type;
- (id)unconfiguredScanInfosOfType:(int)type;
- (id)unmergedScanInfoArray;
- (id)unmergedScanInfoDict;
- (int)_asyncWiFiScan:(id)scan wifiType:(int)type merge:(BOOL)merge maxAge:(unint64_t)age isPeriodic:(BOOL)periodic;
- (int)clearScanCacheSync;
- (int)closeWiFi;
- (int)disassociateSync;
- (int)joinNetworkWithNameAsync:(id)async password:(id)password rememberChoice:(int)choice;
- (int)joinNetworkWithScanInfoAsync:(id)async password:(id)password rememberChoice:(int)choice;
- (int)joinNetworkWithScanInfoSync:(id)sync password:(id)password rememberChoice:(int)choice;
- (int)openWiFi;
- (int)setAutoJoinState:(BOOL)state;
- (void)activateScanning:(BOOL)scanning;
- (void)asyncWiFiScanThread:(id)thread;
- (void)cancelAsync;
- (void)clearScanCache;
- (void)dealloc;
- (void)joinNetworkWithNameThread:(id)thread;
- (void)joinNetworkWithScanInfoThread:(id)thread;
- (void)mergeScanResults:(id)results ageOut:(BOOL)out;
- (void)scanTimerCallback:(id)callback;
- (void)setJoinInProgress:(BOOL)progress;
- (void)setScanInProgress:(BOOL)progress;
- (void)setScanOnlyWhenAppActive:(BOOL)active;
- (void)setUnmergedScanInfoDict:(id)dict;
- (void)triggerScan;
@end

@implementation WiFiUtils

+ (id)sharedInstance
{
  result = qword_27E383420;
  if (!qword_27E383420)
  {
    result = objc_alloc_init(WiFiUtils);
    qword_27E383420 = result;
  }

  return result;
}

+ (void)sharedInstanceRelease
{
  if (qword_27E383420)
  {
    v3 = objc_msgSend__scanTimer(qword_27E383420, a2, v2);
    objc_msgSend_invalidate(v3, v4, v5);
    objc_msgSend_set_scanTimer_(qword_27E383420, v6, 0);

    qword_27E383420 = 0;
  }
}

- (WiFiUtils)init
{
  v41.receiver = self;
  v41.super_class = WiFiUtils;
  v2 = [(WiFiUtils *)&v41 init];
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_openWiFi(v2, v3, v4);
    if (v6)
    {
      if (dword_27E381870 <= 800)
      {
        v12 = v6;
        if (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u))
        {
          sub_23EB75374(&dword_27E381870, "[WiFiUtils init]", 800, "Could not init WIFi err: %ld\n", v8, v9, v10, v11, v12);
        }
      }
    }

    objc_msgSend_setPeriodicScanType_(v5, v7, 3);
    objc_msgSend_setPeriodicScanInterval_(v5, v13, v14, 15.0);
    v5->_wifiBusy = dispatch_semaphore_create(1);
    v5->_missingBSSIDCounts = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16);
    v19 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v17, v18);
    objc_msgSend_setUnmergedScanInfoDict_(v5, v20, v19);
    v21 = MEMORY[0x277CBEBB8];
    v24 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v22, v23);
    v27 = objc_msgSend_date(MEMORY[0x277CBEAA8], v25, v26);
    objc_msgSend_timeIntervalSinceDate_(v24, v28, v27);
    v30 = objc_msgSend_timerWithTimeInterval_target_selector_userInfo_repeats_(v21, v29, v5, sel_scanTimerCallback_, 0, 1);
    objc_msgSend_set_scanTimer_(v5, v31, v30);
    v34 = objc_msgSend_mainRunLoop(MEMORY[0x277CBEB88], v32, v33);
    v37 = objc_msgSend__scanTimer(v5, v35, v36);
    objc_msgSend_addTimer_forMode_(v34, v38, v37, *MEMORY[0x277CBE640]);
    objc_msgSend_activateScanning_(v5, v39, 0);
  }

  return v5;
}

- (void)dealloc
{
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils dealloc]", 800, "%s\n", v2, v3, v4, v5, "[WiFiUtils dealloc]");
  }

  dispatch_semaphore_wait(self->_wifiBusy, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_closeWiFi(self, v7, v8);
  dispatch_semaphore_signal(self->_wifiBusy);
  dispatch_release(self->_wifiBusy);
  self->_wifiBusy = 0;
  objc_msgSend_setUnmergedScanInfoDict_(self, v9, 0);

  self->_missingBSSIDCounts = 0;
  v10.receiver = self;
  v10.super_class = WiFiUtils;
  [(WiFiUtils *)&v10 dealloc];
}

- (void)setScanOnlyWhenAppActive:(BOOL)active
{
  if (self->_scanOnlyWhenAppActive != active)
  {
    self->_scanOnlyWhenAppActive = active;
    if (!active && self->_scanningActive)
    {
      MEMORY[0x2821F9670](self, sel_triggerScan, active);
    }
  }
}

- (void)activateScanning:(BOOL)scanning
{
  scanningCopy = scanning;
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils activateScanning:]", 800, "flag: %d _scanningActive: %d\n", v3, v4, v5, v6, scanningCopy);
  }

  if (self->_scanningActive != scanningCopy)
  {
    self->_scanningActive = scanningCopy;
    if (scanningCopy)
    {

      MEMORY[0x2821F9670](self, sel_triggerScan, scanning);
    }
  }
}

- (BOOL)isScanInProgress
{
  objc_sync_enter(self);
  scanInProgress = self->_scanInProgress;
  objc_sync_exit(self);
  return scanInProgress;
}

- (BOOL)isJoinInProgress
{
  objc_sync_enter(self);
  joinInProgress = self->_joinInProgress;
  objc_sync_exit(self);
  return joinInProgress;
}

- (void)cancelAsync
{
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils cancelAsync]", 800, "%s\n", v3, v4, v5, v6, "[WiFiUtils cancelAsync]");
  }

  if (objc_msgSend_isScanInProgress(self, a2, v2))
  {
    sub_23EC0BD4C(self->_wifiShim, v8, v9, v10, v11, v12, v13, v14);
    objc_msgSend_setScanInProgress_(self, v15, 0);
  }

  else
  {
    if (!objc_msgSend_isJoinInProgress(self, v8, v9))
    {
      return;
    }

    sub_23EC0BD4C(self->_wifiShim, v16, v17, v18, v19, v20, v21, v22);
    objc_msgSend_setJoinInProgress_(self, v23, 0);
  }

  wifiBusy = self->_wifiBusy;

  dispatch_semaphore_signal(wifiBusy);
}

- (void)clearScanCache
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);

  objc_msgSend_setUnmergedScanInfoDict_(self, v4, v5);
}

- (id)unmergedScanInfoArray
{
  v3 = objc_msgSend_unmergedScanInfoDict(self, a2, v2);
  v6 = objc_msgSend_allValues(v3, v4, v5);

  return v6;
}

- (id)mergedScanInfoArray
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v7 = objc_msgSend_unmergedScanInfoArray(self, v5, v6);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = objc_msgSend_objectForKey_(v15, v10, @"SSID_STR");
        if (v16)
        {
          v17 = v16;
          v18 = objc_msgSend_objectForKey_(v4, v10, v16);
          if (!v18 || sub_23EB6B174(v15, v18))
          {
            objc_msgSend_setObject_forKey_(v4, v10, v15, v17);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
    }

    while (v12);
  }

  return objc_msgSend_allValues(v4, v10, v11);
}

- (id)unconfiguredScanInfosOfType:(int)type
{
  v35 = *MEMORY[0x277D85DE8];
  if (!type)
  {
    return 0;
  }

  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, *&type);
  v8 = objc_msgSend_unmergedScanInfoArray(self, v6, v7);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v30, v34, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if (objc_msgSend_scanInfoIsUnconfigured_(WiFiUtils, v11, v15))
        {
          v16 = objc_msgSend_scanInfoIs5GHz_(WiFiUtils, v11, v15);
          if ((((type & 2) == 0) & v16) != 0 || ((type | v16) & 1) == 0)
          {
            if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
            {
              v23 = objc_msgSend_objectForKey_(v15, v11, @"SSID_STR");
              objc_msgSend_objectForKey_(v15, v24, @"CHANNEL");
              sub_23EB75374(&dword_27E381870, "[WiFiUtils unconfiguredScanInfosOfType:]", 800, "Skipping Unconfigured %@ for Channel %@\n", v25, v26, v27, v28, v23);
            }
          }

          else
          {
            if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
            {
              v17 = objc_msgSend_objectForKey_(v15, v11, @"SSID_STR");
              objc_msgSend_objectForKey_(v15, v18, @"CHANNEL");
              sub_23EB75374(&dword_27E381870, "[WiFiUtils unconfiguredScanInfosOfType:]", 800, "Adding Unconfigured %@ for Channel %@\n", v19, v20, v21, v22, v17);
            }

            objc_msgSend_addObject_(v5, v11, v15);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v30, v34, 16);
    }

    while (v12);
  }

  return v5;
}

- (id)resetScanInfosOfType:(int)type
{
  v35 = *MEMORY[0x277D85DE8];
  if (!type)
  {
    return 0;
  }

  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, *&type);
  v8 = objc_msgSend_unmergedScanInfoArray(self, v6, v7);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v30, v34, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if (objc_msgSend_scanInfoIsInSoftReset_(WiFiUtils, v11, v15))
        {
          v16 = objc_msgSend_scanInfoIs5GHz_(WiFiUtils, v11, v15);
          if ((((type & 2) == 0) & v16) != 0 || ((type | v16) & 1) == 0)
          {
            if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
            {
              v23 = objc_msgSend_objectForKey_(v15, v11, @"SSID_STR");
              objc_msgSend_objectForKey_(v15, v24, @"CHANNEL");
              sub_23EB75374(&dword_27E381870, "[WiFiUtils resetScanInfosOfType:]", 800, "Skipping reset %@ for Channel %@\n", v25, v26, v27, v28, v23);
            }
          }

          else
          {
            if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
            {
              v17 = objc_msgSend_objectForKey_(v15, v11, @"SSID_STR");
              objc_msgSend_objectForKey_(v15, v18, @"CHANNEL");
              sub_23EB75374(&dword_27E381870, "[WiFiUtils resetScanInfosOfType:]", 800, "Adding reset %@ for Channel %@\n", v19, v20, v21, v22, v17);
            }

            objc_msgSend_addObject_(v5, v11, v15);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v30, v34, 16);
    }

    while (v12);
  }

  return v5;
}

- (id)scanInfoForMACAddress:(id)address
{
  v22 = *MEMORY[0x277D85DE8];
  if (!address)
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(address, a2, @"00:00:00:00:00:00"))
  {
    return 0;
  }

  v7 = objc_msgSend_unmergedScanInfoArray(self, v5, v6);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (!v9)
  {
    return 0;
  }

  v11 = v9;
  v12 = *v18;
LABEL_5:
  v13 = 0;
  while (1)
  {
    if (*v18 != v12)
    {
      objc_enumerationMutation(v7);
    }

    v14 = *(*(&v17 + 1) + 8 * v13);
    v15 = objc_msgSend_objectForKey_(v14, v10, @"BSSID");
    if (sub_23EBAFDF4(address, v15))
    {
      return v14;
    }

    if (v11 == ++v13)
    {
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v21, 16);
      v14 = 0;
      if (v11)
      {
        goto LABEL_5;
      }

      return v14;
    }
  }
}

- (id)scanInfoForName:(id)name wifiType:(int)type
{
  v4 = 0;
  v23 = *MEMORY[0x277D85DE8];
  if (name && type)
  {
    v7 = objc_msgSend_unmergedScanInfoArray(self, a2, name);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v19;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v4 = *(*(&v18 + 1) + 8 * v13);
        v14 = objc_msgSend_scanInfoIs5GHz_(WiFiUtils, v10, v4);
        if (((type & 2) == 0) & v14) == 0 && ((type | v14))
        {
          v15 = objc_msgSend_objectForKey_(v4, v10, @"SSID_STR");
          if (objc_msgSend_isEqualToString_(name, v16, v15))
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
          v4 = 0;
          if (v11)
          {
            goto LABEL_5;
          }

          return v4;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

+ (id)scanInfoBSSIDStr:(id)str
{
  v9 = 0;
  if (!str)
  {
    return 0;
  }

  sub_23EB6FF14(str, &v9, "%kO", v3, v4, v5, v6, v7, @"BSSID");
  return v9;
}

+ (id)scanInfoDeviceID:(id)d
{
  v3 = objc_msgSend_scanInfoDataFromAppleDeviceIE_forType_(WiFiUtils, a2, d, 7);
  if (v3 && (v6 = v3, objc_msgSend_length(v3, v4, v5) == 6) && (v9 = objc_msgSend_bytes(v6, v7, v8)) != 0)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%02x%02x%02x%02x%02x%02x", *v9, v9[1], v9[2], v9[3], v9[4], v9[5]);
  }

  else
  {
    return 0;
  }
}

+ (id)scanInfoStringFromAppleDeviceIE:(id)e forType:(int64_t)type
{
  if (!e)
  {
    return 0;
  }

  typeCopy = type;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  Value = CFDictionaryGetValue(e, @"IE");
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(Value);
  if (sub_23EB78B74(BytePtr, &BytePtr[Length], 10502144, &v12, &v11, 0) || sub_23EB78B04(v12, &v12[v11], typeCopy, &v14, &v13, 0))
  {
    return 0;
  }

  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  return objc_msgSend_initWithBytes_length_encoding_(v9, v10, v14, v13, 4);
}

+ (id)scanInfoDataFromAppleDeviceIE:(id)e forType:(int64_t)type
{
  if (!e)
  {
    return 0;
  }

  typeCopy = type;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  Value = CFDictionaryGetValue(e, @"IE");
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(Value);
  if (sub_23EB78B74(BytePtr, &BytePtr[Length], 10502144, &v12, &v11, 0))
  {
    return 0;
  }

  result = 0;
  if (v12)
  {
    if (v11)
    {
      v10 = sub_23EB78B04(v12, &v12[v11], typeCopy, &v14, &v13, 0);
      result = 0;
      if (!v10)
      {
        if (v14)
        {
          if (v13)
          {
            return objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, v14);
          }
        }
      }
    }
  }

  return result;
}

+ (id)scanInfoAirPortUniqueIdentifier:(id)identifier
{
  v8 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  if (sub_23EB81F28(identifier, &v8, &v6) || sub_23EB78D24(v8, &v8[v6], 1, &v7, &v5, 0))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v3, v7, v5);
  }
}

+ (unsigned)scanInfoSubAppleProductID:(id)d
{
  v9 = 0;
  v7 = 0;
  v8 = 0;
  if (!sub_23EB81F28(d, &v9, &v7) && ((v6 = 0, !sub_23EB78D24(v9, &v9[v7], 2, &v8, &v6, 0)) ? (v3 = v8 == 0) : (v3 = 1), !v3 ? (v4 = v6 == 1) : (v4 = 0), v4))
  {
    return *v8;
  }

  else
  {
    return 0;
  }
}

+ (unsigned)scanInfoAppleProductID:(id)d
{
  if (d)
  {
    Value = CFDictionaryGetValue(d, @"IE");
    if (Value)
    {
      v4 = Value;
      v8 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v4);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], &v8, 0))
      {
        LODWORD(Value) = 0;
      }

      else
      {
        LODWORD(Value) = v8;
      }
    }
  }

  else
  {
    LODWORD(Value) = 0;
  }

  return Value;
}

+ (int)scanInfoDeviceKind:(id)kind
{
  if (!kind)
  {
    return 0;
  }

  if (objc_msgSend_scanInfoIsMFIAirPlayDevice_(WiFiUtils, a2, kind))
  {
    return 3;
  }

  if ((objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, v4, kind) & 1) != 0 || objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v6, kind) && !objc_msgSend_scanInfoSupportsSecureWAC_(WiFiUtils, v7, kind))
  {
    return 4;
  }

  if (objc_msgSend_scanInfoIsAirPlayDevice_(WiFiUtils, v7, kind))
  {
    return 2;
  }

  return 1;
}

+ (BOOL)scanInfoIsUnconfigured:(id)unconfigured
{
  if (unconfigured)
  {
    Value = CFDictionaryGetValue(unconfigured, @"IE");
    if (Value)
    {
      v5 = Value;
      v10 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v5);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], 0, &v10))
      {
        LOBYTE(Value) = objc_msgSend_scanInfoTestBitFromAppleDeviceIE_forType_(WiFiUtils, v8, unconfigured, 1);
      }

      else
      {
        LODWORD(Value) = (v10 >> 1) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsGuestNetwork:(id)network
{
  if (network)
  {
    Value = CFDictionaryGetValue(network, @"IE");
    if (Value)
    {
      v4 = Value;
      v8 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v4);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], 0, &v8))
      {
        LOBYTE(Value) = 0;
      }

      else
      {
        LODWORD(Value) = (v8 >> 3) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsAudioDevice:(id)device
{
  if (device)
  {
    Value = CFDictionaryGetValue(device, @"IE");
    if (Value)
    {
      v5 = Value;
      v10 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v5);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], 0, &v10))
      {
        LOBYTE(Value) = objc_msgSend_scanInfoTestBitFromAppleDeviceIE_forType_(WiFiUtils, v8, device, 0);
      }

      else
      {
        LODWORD(Value) = (v10 >> 11) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsSTAOnly:(id)only
{
  if (only)
  {
    Value = CFDictionaryGetValue(only, @"IE");
    if (Value)
    {
      v5 = Value;
      v11 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v5);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], 0, &v11))
      {
        if (objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, v8, only))
        {
          LOBYTE(Value) = 1;
        }

        else
        {
          LOBYTE(Value) = objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v9, only);
        }
      }

      else
      {
        LODWORD(Value) = (v11 >> 7) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsMFIAirPlayDevice:(id)device
{
  v4 = objc_msgSend_scanInfoSupportsMFIConfigV1_(WiFiUtils, a2, device);
  if (v4)
  {

    LOBYTE(v4) = objc_msgSend_scanInfoIsAirPlayDevice_(WiFiUtils, v5, device);
  }

  return v4;
}

+ (BOOL)scanInfoIsHomeKitSecureWAC:(id)c
{
  v4 = objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, a2, c);
  if (v4)
  {

    LOBYTE(v4) = objc_msgSend_scanInfoSupportsSecureWAC_(WiFiUtils, v5, c);
  }

  return v4;
}

+ (BOOL)scanInfoIsAirPlayDevice:(id)device
{
  IsSTAOnly = objc_msgSend_scanInfoIsSTAOnly_(WiFiUtils, a2, device);
  if (IsSTAOnly)
  {

    LOBYTE(IsSTAOnly) = MEMORY[0x2821F9670](WiFiUtils, sel_scanInfoIsAudioDevice_, device);
  }

  return IsSTAOnly;
}

+ (BOOL)scanInfoTestBitFromAppleDeviceIE:(id)e forType:(int64_t)type
{
  if (e)
  {
    Value = CFDictionaryGetValue(e, @"IE");
    if (Value)
    {
      v6 = Value;
      v12 = 0;
      v13 = 0;
      v11 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v6);
      if (sub_23EB78B74(BytePtr, &BytePtr[Length], 10502144, &v13, &v11, 0) || (v9 = v11, v11 = 0, sub_23EB78B04(v13, &v13[v9], 0, &v12, &v11, 0)) || type >= (8 * v11))
      {
        LOBYTE(Value) = 0;
      }

      else
      {
        LODWORD(Value) = (v12[type / 8] >> (~type & 7)) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsInSoftReset:(id)reset
{
  if (reset)
  {
    Value = CFDictionaryGetValue(reset, @"IE");
    if (Value)
    {
      v4 = Value;
      v8 = 0;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v4);
      if (sub_23EB78C00(BytePtr, &BytePtr[Length], 0, &v8))
      {
        LOBYTE(Value) = 0;
      }

      else
      {
        LODWORD(Value) = (v8 >> 10) & 1;
      }
    }
  }

  else
  {
    LOBYTE(Value) = 0;
  }

  return Value;
}

+ (BOOL)scanInfoIsDWDSCapable:(id)capable isDWDSEnabled:(BOOL *)enabled
{
  if (!capable)
  {
    return 0;
  }

  v11 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, capable);
  result = 0;
  v13 = v11 > 3 || v11 == 2;
  if (v13 && v11 != 102)
  {
    if (enabled)
    {
      v17 = 0;
      sub_23EB6FF14(capable, &v17, "%kO.%kO:int", v6, v7, v8, v9, v10, @"DWDS_IE");
      if (v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = v17 == 0;
      }

      v16 = !v15;
      *enabled = v16;
    }

    return 1;
  }

  return result;
}

- (int)joinNetworkWithScanInfoAsync:(id)async password:(id)password rememberChoice:(int)choice
{
  v32 = 0;
  if (!async)
  {
    v11 = -6705;
LABEL_7:
    dispatch_semaphore_signal(self->_wifiBusy);
    return v11;
  }

  if (!objc_msgSend_airPortIsOn(self, a2, async))
  {
    v11 = -6735;
    goto LABEL_7;
  }

  if (dispatch_semaphore_wait(self->_wifiBusy, 0))
  {
    return -6721;
  }

  if (objc_msgSend_length(password, v9, v10))
  {
    passwordCopy = password;
  }

  else
  {
    passwordCopy = 0;
  }

  if (!passwordCopy && objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, v13, async, 0, &v32) && v32 != 1)
  {
    v11 = -16;
    goto LABEL_7;
  }

  v15 = MEMORY[0x277CBEAC0];
  objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v13, choice);
  v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(v15, v16, async);
  if (!v17)
  {
    v11 = -6728;
    goto LABEL_7;
  }

  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x277CCACC8]);
  v21 = objc_msgSend_initWithTarget_selector_object_(v19, v20, self, sel_joinNetworkWithScanInfoThread_, v18);
  objc_msgSend_start(v21, v22, v23);
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils joinNetworkWithScanInfoAsync:password:rememberChoice:]", 800, "starting Join thread\n", v26, v27, v28, v29, @"JoinParam_ScanInfo");
  }

  v30 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v24, v25);
  objc_msgSend_postNotificationNameOnMainThread_object_userInfo_waitUntilDone_(v30, v31, @"com.apple.WiFiUtils.Join.Start", self, async, 0);
  return 0;
}

- (int)joinNetworkWithNameAsync:(id)async password:(id)password rememberChoice:(int)choice
{
  if (!async)
  {
    v9 = -6705;
LABEL_7:
    dispatch_semaphore_signal(self->_wifiBusy);
    return v9;
  }

  if (!objc_msgSend_airPortIsOn(self, a2, async))
  {
    v9 = -6735;
    goto LABEL_7;
  }

  if (dispatch_semaphore_wait(self->_wifiBusy, 0))
  {
    return -6721;
  }

  v11 = MEMORY[0x277CBEAC0];
  objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v8, choice);
  v13 = objc_msgSend_dictionaryWithObjectsAndKeys_(v11, v12, async);
  if (!v13)
  {
    v9 = -6728;
    goto LABEL_7;
  }

  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCACC8]);
  v17 = objc_msgSend_initWithTarget_selector_object_(v15, v16, self, sel_joinNetworkWithNameThread_, v14);
  objc_msgSend_start(v17, v18, v19);
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils joinNetworkWithNameAsync:password:rememberChoice:]", 800, "starting Join (with name) thread\n", v22, v23, v24, v25, @"JoinParam_Name");
  }

  v26 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v20, v21);
  objc_msgSend_postNotificationNameOnMainThread_object_userInfo_waitUntilDone_(v26, v27, @"com.apple.WiFiUtils.Join.Start", self, 0, 0);
  return 0;
}

- (int)disassociateSync
{
  if (!objc_msgSend_airPortIsOn(self, a2, v2))
  {
    v12 = -6735;
    goto LABEL_5;
  }

  if (dispatch_semaphore_wait(self->_wifiBusy, 0))
  {
    return -6721;
  }

  wifiShim = self->_wifiShim;
  if (!wifiShim)
  {
    v12 = -6718;
    goto LABEL_5;
  }

  v12 = sub_23EC0B7DC(wifiShim, v4, v5, v6, v7, v8, v9, v10);
  result = -6721;
  if (v12 != -6721)
  {
LABEL_5:
    dispatch_semaphore_signal(self->_wifiBusy);
    return v12;
  }

  return result;
}

- (int)clearScanCacheSync
{
  if (!objc_msgSend_airPortIsOn(self, a2, v2))
  {
    v12 = -6735;
    goto LABEL_5;
  }

  if (dispatch_semaphore_wait(self->_wifiBusy, 0))
  {
    return -6721;
  }

  wifiShim = self->_wifiShim;
  if (!wifiShim)
  {
    v12 = -6718;
    goto LABEL_5;
  }

  v12 = sub_23EC0ABD0(wifiShim, v4, v5, v6, v7, v8, v9, v10);
  result = -6721;
  if (v12 != -6721)
  {
LABEL_5:
    dispatch_semaphore_signal(self->_wifiBusy);
    return v12;
  }

  return result;
}

- (id)getCurrentAssociationInfo
{
  v11 = 0;
  result = self->_wifiShim;
  if (result)
  {
    v9 = sub_23EC0AFA4(result, &v11, v2, v3, v4, v5, v6, v7);
    result = v11;
    if (!v9)
    {
      if (v11)
      {
        v10 = v11;
        return v11;
      }
    }
  }

  return result;
}

- (id)getCurrentAssociationInfoOrNil
{
  if (!objc_msgSend_airPortIsOn(self, a2, v2))
  {
    return 0;
  }

  return objc_msgSend_getCurrentAssociationInfo(self, v4, v5);
}

- (id)getCurrentAssociationScanInfo
{
  CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(self, a2, v2);
  result = objc_msgSend_objectForKey_(CurrentAssociationInfo, v5, @"BSSID");
  if (result)
  {

    return objc_msgSend_scanInfoForMACAddress_(self, v7, result);
  }

  return result;
}

- (id)getIfList
{
  v11 = 0;
  result = self->_wifiShim;
  if (result)
  {
    v9 = sub_23EC0BE3C(result, &v11, v2, v3, v4, v5, v6, v7);
    result = v11;
    if (!v9)
    {
      if (v11)
      {
        v10 = v11;
        return v11;
      }
    }
  }

  return result;
}

- (id)getLinkStatus
{
  v6 = 0;
  result = self->_wifiShim;
  if (result)
  {
    sub_23EC0A048(result, &v6);
    v4 = v3;
    result = v6;
    if (!v4)
    {
      if (v6)
      {
        v5 = v6;
        return v6;
      }
    }
  }

  return result;
}

- (int)setAutoJoinState:(BOOL)state
{
  wifiShim = self->_wifiShim;
  if (wifiShim)
  {
    return sub_23EC0B530(wifiShim, state, state, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6718;
  }
}

- (BOOL)getAutoJoinState
{
  wifiShim = self->_wifiShim;
  if (wifiShim)
  {
    v4 = 0;
    if (sub_23EC0C008(wifiShim, &v4))
    {
      LOBYTE(wifiShim) = 0;
    }

    else
    {
      LOBYTE(wifiShim) = v4;
    }
  }

  return wifiShim;
}

+ (id)getNetworkPassword:(id)password
{
  v10 = 0;
  if (!password)
  {
    return 0;
  }

  sub_23EC0C054(password, &v10, password, v3, v4, v5, v6, v7);
  v8 = v10;
  return v10;
}

- (BOOL)isCurrentlyAssociatedToAnInfrastructureNetwork:(BOOL *)network
{
  CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(self, a2, network);
  if (CurrentAssociationInfo)
  {
    v7 = CurrentAssociationInfo;
    v8 = objc_msgSend_objectForKey_(CurrentAssociationInfo, v6, @"STATE");
    if (objc_msgSend_integerValue(v8, v9, v10) == 4 && (v12 = objc_msgSend_objectForKey_(v7, v11, @"AP_MODE"), objc_msgSend_integerValue(v12, v13, v14) == 2))
    {
      if (network)
      {
        *network = 0;
        CurrentAssociationScanInfo = objc_msgSend_getCurrentAssociationScanInfo(self, v15, v16);
        if (CurrentAssociationScanInfo)
        {
          *network = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v18, CurrentAssociationScanInfo) != 0;
        }
      }

      LOBYTE(CurrentAssociationInfo) = 1;
    }

    else
    {
      LOBYTE(CurrentAssociationInfo) = 0;
    }
  }

  return CurrentAssociationInfo;
}

+ (BOOL)networkIsSecure:(id)secure secMode:(int *)mode isEnterprise:(BOOL *)enterprise
{
  v7 = sub_23EC0A274(secure, a2);
  if (mode)
  {
    *mode = v7;
  }

  if (enterprise)
  {
    *enterprise = (v7 - 9) < 4;
  }

  return v7 != 1;
}

+ (BOOL)networkIsApple:(id)apple productID:(unsigned int *)d
{
  v5 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, apple);
  if (d)
  {
    *d = v5;
  }

  return v5 != 0;
}

- (id)getPreferredNetworks:(BOOL)networks
{
  v11 = 0;
  result = self->_wifiShim;
  if (result)
  {
    v9 = sub_23EC0AC78(result, networks, &v11, v3, v4, v5, v6, v7);
    result = v11;
    if (!v9)
    {
      if (v11)
      {
        v10 = v11;
        return v11;
      }
    }
  }

  return result;
}

+ (id)copyFilteredNetworks:(id)networks ignoreOptions:(int)options
{
  v4 = *&options;
  v20 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (networks)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(networks, v6, &v15, v19, 16);
    if (v8)
    {
      v10 = v8;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(networks);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ((objc_msgSend_network_shouldBeIgnored_(WiFiUtils, v9, v13, v4) & 1) == 0)
          {
            objc_msgSend_addObject_(v7, v9, v13);
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(networks, v9, &v15, v19, 16);
      }

      while (v10);
    }
  }

  return v7;
}

+ (BOOL)network:(id)network shouldBeIgnored:(int)ignored
{
  ignoredCopy = ignored;
  if ((ignored & 1) != 0 && !objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, network))
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this non-Apple network:%@ (%@)\n";
    goto LABEL_60;
  }

  if ((ignoredCopy & 2) != 0 && objc_msgSend_scanInfoIsIBSS_(WiFiUtils, a2, network))
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this IBSS network:%@ (%@)\n";
LABEL_60:
    v10 = objc_msgSend_objectForKey_(network, a2, @"SSID_STR");
    objc_msgSend_objectForKey_(network, v11, @"BSSID");
    sub_23EB75374(&dword_27E381870, "+[WiFiUtils network:shouldBeIgnored:]", 800, v6, v12, v13, v14, v15, v10);
    return 1;
  }

  if ((ignoredCopy & 0x20) != 0 && objc_msgSend_scanInfoIsUnconfigured_(WiFiUtils, a2, network))
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this unconfigured network:%@ (%@)\n";
    goto LABEL_60;
  }

  if ((ignoredCopy & 0x40) != 0 && objc_msgSend_scanInfoIsGuestNetwork_(WiFiUtils, a2, network))
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this guest network:%@ (%@)\n";
    goto LABEL_60;
  }

  if ((ignoredCopy & 0x80) != 0 && (objc_msgSend_scanInfoIsDWDSCapable_isDWDSEnabled_(WiFiUtils, a2, network, 0) & 1) == 0)
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this DWDS Incapable network:%@ (%@)\n";
    goto LABEL_60;
  }

  if ((ignoredCopy & 0x100) != 0 && objc_msgSend_scanInfoIs5GHz_(WiFiUtils, a2, network))
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this 5GHz network:%@ (%@)\n";
    goto LABEL_60;
  }

  v7 = sub_23EC0A274(network, a2);
  if (v7 == 1)
  {
    if ((ignoredCopy & 0x10) == 0)
    {
      return 0;
    }

    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this unsecured network:%@ (%@)\n";
    goto LABEL_60;
  }

  v9 = v7;
  if ((ignoredCopy & 4) != 0 && v7 - 9 <= 3)
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this Enterprise network:%@ (%@)\n";
    goto LABEL_60;
  }

  if ((ignoredCopy & 8) != 0 && v7 <= 0xB && ((1 << v7) & 0xB5C) != 0 || (result = 0, (ignoredCopy & 0x200) != 0) && v9 == 13)
  {
    if (dword_27E381870 > 800 || dword_27E381870 == -1 && !sub_23EB74AC8(&dword_27E381870, 0x320u))
    {
      return 1;
    }

    v6 = "Ignoring this legacy Sec Mode network:%@ (%@)\n";
    goto LABEL_60;
  }

  return result;
}

+ (int)barsForRSSI:(int)i
{
  iCopy = i - 100;
  if (i < 0)
  {
    iCopy = i;
  }

  if (iCopy < -99)
  {
    return 0;
  }

  v5 = 0;
  while (v5 != 3)
  {
    result = v5 + 1;
    v6 = dword_23EC21E20[++v5];
    if (iCopy < v6)
    {
      return result;
    }
  }

  return 4;
}

- (id)getNetworkPasswordForNetworkNamed:(id)named
{
  v3 = objc_msgSend_scanInfoForName_wifiType_(self, a2, named, 3);
  result = objc_msgSend_count(v3, v4, v5);
  if (result)
  {

    return objc_msgSend_getNetworkPassword_(WiFiUtils, v7, v3);
  }

  return result;
}

- (int)_asyncWiFiScan:(id)scan wifiType:(int)type merge:(BOOL)merge maxAge:(unint64_t)age isPeriodic:(BOOL)periodic
{
  periodicCopy = periodic;
  mergeCopy = merge;
  if (!objc_msgSend_airPortIsOn(self, a2, scan))
  {
    v14 = -6735;
LABEL_5:
    dispatch_semaphore_signal(self->_wifiBusy);
    return v14;
  }

  if (!dispatch_semaphore_wait(self->_wifiBusy, 0))
  {
    v16 = MEMORY[0x277CBEAC0];
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v13, type);
    v19 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v18, periodicCopy);
    v21 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v20, age);
    v23 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v22, mergeCopy);
    v25 = objc_msgSend_dictionaryWithObjectsAndKeys_(v16, v24, v17, @"ScanParam_WiFiType", v19, @"ScanParam_IsPeriodic", v21, @"ScanParam_MaxAge", v23, @"ScanParam_MergeResults", scan, @"ScanParam_Name", 0);
    if (v25)
    {
      v26 = v25;
      v27 = objc_allocWithZone(MEMORY[0x277CCACC8]);
      v29 = objc_msgSend_initWithTarget_selector_object_(v27, v28, self, sel_asyncWiFiScanThread_, v26);
      objc_msgSend_start(v29, v30, v31);
      return 0;
    }

    v14 = -6728;
    goto LABEL_5;
  }

  return -6721;
}

- (int)openWiFi
{
  result = sub_23EC0A8C8(&self->_wifiShim, a2, v2, v3, v4, v5, v6, v7);
  if (!result)
  {
    if (self->_wifiShim)
    {
      return 0;
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)closeWiFi
{
  wifiShim = self->_wifiShim;
  if (!wifiShim)
  {
    return -6718;
  }

  result = sub_23EC0A9F4(wifiShim, a2, v2, v3, v4, v5, v6, v7);
  self->_wifiShim = 0;
  return result;
}

- (void)scanTimerCallback:(id)callback
{
  if (self->_scanOnlyWhenAppActive)
  {
    v5 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], a2, callback);
    v8 = objc_msgSend_applicationState(v5, v6, v7) == 0;
  }

  else
  {
    v8 = 1;
  }

  objc_msgSend_airPortIsOn(self, a2, callback);
  if (self->_scanningActive && v8)
  {
    if (objc_msgSend_airPortIsOn(self, v9, v10))
    {
      v17 = objc_msgSend_periodicScanType(self, v11, v12);
      if (objc_msgSend__asyncWiFiScan_wifiType_merge_maxAge_isPeriodic_(self, v18, 0, v17, 0, 0, 1))
      {
        v21 = MEMORY[0x277CBEAA8];
        objc_msgSend_periodicScanInterval(self, v19, v20);
        v24 = objc_msgSend_dateWithTimeIntervalSinceNow_(v21, v22, v23);
        objc_msgSend_setFireDate_(callback, v25, v24);
      }
    }
  }

  else
  {
    v26 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v9, v10);
    objc_msgSend_setFireDate_(callback, v27, v26);
    objc_msgSend_activateScanning_(self, v28, 0);
  }

  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils scanTimerCallback:]", 800, "_scanOnlyWhenAppActive: %d scanRightNow: %d airPortIsOn: %d asyncWiFiScan err: %d\n", v13, v14, v15, v16, self->_scanOnlyWhenAppActive);
  }
}

- (void)triggerScan
{
  if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
  {
    sub_23EB75374(&dword_27E381870, "[WiFiUtils triggerScan]", 800, "_scanningActive: %d\n", v3, v4, v5, v6, self->_scanningActive);
  }

  if (self->_scanningActive)
  {
    scanTimer = self->_scanTimer;
    v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2);

    objc_msgSend_setFireDate_(scanTimer, v9, v10);
  }
}

- (void)setScanInProgress:(BOOL)progress
{
  objc_sync_enter(self);
  self->_scanInProgress = progress;

  objc_sync_exit(self);
}

- (void)setJoinInProgress:(BOOL)progress
{
  objc_sync_enter(self);
  self->_joinInProgress = progress;

  objc_sync_exit(self);
}

- (void)joinNetworkWithScanInfoThread:(id)thread
{
  v28 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (thread && (v7 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_ScanInfo")) != 0 && (v8 = v7, (v9 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_RememberChoice")) != 0))
  {
    v10 = v9;
    v11 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_Password");
    objc_msgSend_setJoinInProgress_(self, v12, 1);
    v15 = objc_msgSend_integerValue(v10, v13, v14);
    v17 = objc_msgSend_joinNetworkWithScanInfoSync_password_rememberChoice_(self, v16, v8, v11, v15);
  }

  else
  {
    v17 = -6705;
  }

  if (objc_msgSend_isJoinInProgress(self, v5, v6))
  {
    objc_msgSend_setJoinInProgress_(self, v18, 0);
    dispatch_semaphore_signal(self->_wifiBusy);
    v21 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v19, v20);
    v22 = MEMORY[0x277CBEAC0];
    v24 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v23, v17);
    v26 = objc_msgSend_dictionaryWithObject_forKey_(v22, v25, v24, @"WiFiUtils_OSStatus");
    objc_msgSend_postNotificationNameOnMainThread_object_userInfo_waitUntilDone_(v21, v27, @"com.apple.WiFiUtils.Join.Complete", self, v26, 0);
  }
}

- (void)joinNetworkWithNameThread:(id)thread
{
  v30 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (thread && (v7 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_Name")) != 0 && (v8 = v7, (v9 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_RememberChoice")) != 0))
  {
    v10 = v9;
    v11 = objc_msgSend_objectForKey_(thread, v5, @"JoinParam_Password");
    objc_msgSend_setJoinInProgress_(self, v12, 1);
    wifiShim = self->_wifiShim;
    v16 = objc_msgSend_integerValue(v10, v14, v15);
    v19 = sub_23EC0A0C8(wifiShim, v8, v11, 3, v16, 0, v17, v18);
  }

  else
  {
    v19 = -6705;
  }

  if (objc_msgSend_isJoinInProgress(self, v5, v6))
  {
    objc_msgSend_setJoinInProgress_(self, v20, 0);
    dispatch_semaphore_signal(self->_wifiBusy);
    v23 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v21, v22);
    v24 = MEMORY[0x277CBEAC0];
    v26 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, v19);
    v28 = objc_msgSend_dictionaryWithObject_forKey_(v24, v27, v26, @"WiFiUtils_OSStatus");
    objc_msgSend_postNotificationNameOnMainThread_object_userInfo_waitUntilDone_(v23, v29, @"com.apple.WiFiUtils.Join.Complete", self, v28, 0);
  }
}

- (int)joinNetworkWithScanInfoSync:(id)sync password:(id)password rememberChoice:(int)choice
{
  v5 = *&choice;
  if (!objc_msgSend_airPortIsOn(self, a2, sync))
  {
    return -6735;
  }

  if (!sync)
  {
    return -6705;
  }

  wifiShim = self->_wifiShim;
  if (!wifiShim)
  {
    return -6718;
  }

  return sub_23EC0B188(wifiShim, sync, password, v5, v9, v10, v11, v12);
}

- (void)asyncWiFiScanThread:(id)thread
{
  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v53 = 0;
  if (self->_wifiShim)
  {
    if (thread)
    {
      v8 = objc_msgSend_objectForKey_(thread, v5, @"ScanParam_Name");
      v10 = objc_msgSend_objectForKey_(thread, v9, @"ScanParam_IsPeriodic");
      v12 = objc_msgSend_objectForKey_(thread, v11, @"ScanParam_WiFiType");
      v14 = objc_msgSend_objectForKey_(thread, v13, @"ScanParam_MaxAge");
      v16 = objc_msgSend_objectForKey_(thread, v15, @"ScanParam_MergeResults");
      objc_msgSend_setScanInProgress_(self, v17, 1);
      wifiShim = self->_wifiShim;
      if (v12)
      {
        v21 = objc_msgSend_integerValue(v12, v18, v19);
      }

      else
      {
        v21 = 3;
      }

      v23 = objc_msgSend_BOOLValue(v16, v18, v19);
      v26 = objc_msgSend_unsignedIntegerValue(v14, v24, v25);
      v22 = sub_23EC0B89C(wifiShim, v8, v21, v23, v26, &v53, v27, v28);
      if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
      {
        sub_23EB75374(&dword_27E381870, "[WiFiUtils asyncWiFiScanThread:]", 800, "err: %d\n", v29, v30, v31, v32, v22);
      }

      if (!v22)
      {
        v6 = v53;
        if (v53)
        {
          objc_msgSend_mergeScanResults_ageOut_(self, v5, v53, v8 == 0);
        }

        LODWORD(v22) = 0;
      }
    }

    else
    {
      v10 = 0;
      LODWORD(v22) = -6705;
    }
  }

  else
  {
    v10 = 0;
    LODWORD(v22) = -6718;
  }

  if (objc_msgSend_isScanInProgress(self, v5, v6))
  {
    objc_msgSend_setScanInProgress_(self, v33, 0);
    dispatch_semaphore_signal(self->_wifiBusy);
    v37 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v35, v36);
    v38 = MEMORY[0x277CBEAC0];
    v40 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v39, v22);
    v42 = objc_msgSend_dictionaryWithObjectsAndKeys_(v38, v41, v40, @"WiFiUtils_OSStatus", v53, @"WiFiUtils_ScanInfos", 0);
    objc_msgSend_postNotificationNameOnMainThread_object_userInfo_waitUntilDone_(v37, v43, @"com.apple.WiFiUtils.Scan.Complete", self, v42, 0);
  }

  if (objc_msgSend_BOOLValue(v10, v33, v34))
  {
    v46 = 1.0;
    if (v22 != 16)
    {
      objc_msgSend_periodicScanInterval(self, v44, v45);
      v46 = v47;
    }

    v48 = objc_msgSend__scanTimer(self, v44, v45);
    v51 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v49, v50, v46);
    objc_msgSend_setFireDate_(v48, v52, v51);
  }
}

+ (BOOL)stringArray:(id)array containsBSSID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(array, a2, &v12, v16, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(array);
        }

        if (sub_23EBAFDF4(*(*(&v12 + 1) + 8 * v9), d))
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(array, v10, &v12, v16, 16);
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (void)mergeScanResults:(id)results ageOut:(BOOL)out
{
  v66 = *MEMORY[0x277D85DE8];
  if (results)
  {
    outCopy = out;
    v6 = objc_msgSend_unmergedScanInfoDict(self, a2, results);
    v9 = objc_msgSend_mutableCopy(v6, v7, v8);
    v10 = MEMORY[0x277CBEB18];
    v55 = v9;
    v13 = objc_msgSend_allKeys(v9, v11, v12);
    v15 = objc_msgSend_arrayWithArray_(v10, v14, v13);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(results, v16, &v60, v65, 16);
    if (v17)
    {
      v19 = v17;
      v20 = *v61;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v61 != v20)
          {
            objc_enumerationMutation(results);
          }

          v22 = *(*(&v60 + 1) + 8 * i);
          v23 = objc_msgSend_objectForKey_(v22, v18, @"BSSID");
          if (v23)
          {
            v24 = v23;
            v25 = objc_msgSend_indexOfObject_(v15, v18, v23);
            if (v25 != 0x7FFFFFFFFFFFFFFFLL)
            {
              objc_msgSend_removeObjectAtIndex_(v15, v26, v25);
            }

            objc_msgSend_setObject_forKey_(v55, v26, v22, v24);
            objc_msgSend_removeObjectForKey_(self->_missingBSSIDCounts, v27, v24);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(results, v18, &v60, v65, 16);
      }

      while (v19);
    }

    if (outCopy)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v56, v64, 16);
      if (v28)
      {
        v29 = v28;
        v30 = *v57;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v57 != v30)
            {
              objc_enumerationMutation(v15);
            }

            v32 = *(*(&v56 + 1) + 8 * j);
            v33 = objc_msgSend_objectForKey_(self->_missingBSSIDCounts, v18, v32);
            if (v33 && (v33 = objc_msgSend_integerValue(v33, v34, v35), v33 > 1))
            {
              if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
              {
                v46 = objc_msgSend_objectForKey_(v55, v34, v32);
                v48 = objc_msgSend_objectForKey_(v46, v47, @"SSID_STR");
                sub_23EB75374(&dword_27E381870, "[WiFiUtils mergeScanResults:ageOut:]", 800, "Network: %@ is GONE\n", v49, v50, v51, v52, v48);
              }

              objc_msgSend_removeObjectForKey_(v55, v34, v32);
              objc_msgSend_removeObjectForKey_(self->_missingBSSIDCounts, v53, v32);
            }

            else
            {
              missingBSSIDCounts = self->_missingBSSIDCounts;
              v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v34, v33 + 1);
              objc_msgSend_setObject_forKey_(missingBSSIDCounts, v38, v37, v32);
              if (dword_27E381870 <= 800 && (dword_27E381870 != -1 || sub_23EB74AC8(&dword_27E381870, 0x320u)))
              {
                v39 = objc_msgSend_objectForKey_(v55, v18, v32);
                v41 = objc_msgSend_objectForKey_(v39, v40, @"SSID_STR");
                sub_23EB75374(&dword_27E381870, "[WiFiUtils mergeScanResults:ageOut:]", 800, "Network: %@ is %ld scan(s) old\n", v42, v43, v44, v45, v41);
              }
            }
          }

          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v56, v64, 16);
        }

        while (v29);
      }
    }

    objc_msgSend_setUnmergedScanInfoDict_(self, v18, v55);
  }
}

- (id)unmergedScanInfoDict
{
  objc_sync_enter(self);
  v3 = self->_unmergedScanInfoDict;
  objc_sync_exit(self);
  return v3;
}

- (void)setUnmergedScanInfoDict:(id)dict
{
  objc_sync_enter(self);
  if (self->_unmergedScanInfoDict != dict)
  {
    dictCopy = dict;

    self->_unmergedScanInfoDict = dict;
  }

  objc_sync_exit(self);
}

@end