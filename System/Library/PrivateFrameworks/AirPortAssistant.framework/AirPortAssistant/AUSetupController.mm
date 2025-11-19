@interface AUSetupController
+ (id)setupController;
+ (void)initialize;
- (AUSetupController)init;
- (BOOL)dirty;
- (BOOL)hasACPFeature:(unsigned int)a3;
- (BOOL)isMonitoring;
- (BOOL)rememberBasePassword;
- (BOOL)rememberWiFiPassword;
- (NSDictionary)bonjourRecord;
- (NSString)keychainBasePassword;
- (NSString)keychainDiskPassword;
- (NSString)keychainWiFiPassword;
- (_BaseStation)bsRef;
- (id)allKeychainMACAddresses;
- (id)bestKeychainMACAddress;
- (id)snapshotChangedKeys;
- (id)targetBaseInfoDict;
- (id)validateAllSettingsAndGetErrors;
- (id)validateSettingsAndGetErrors:(id)a3;
- (int)busyState;
- (int)cancelSetup;
- (int)cancelTask;
- (int)closeAllConnections:(BOOL)a3;
- (int)copyValue:(id *)a3 forBSSetting:(int)a4;
- (int)copyValue:(id *)a3 forSettingPath:(id)a4;
- (int)getValue:(id *)a3 forBSSetting:(int)a4;
- (int)getValue:(id *)a3 forSettingPath:(id)a4;
- (int)ignoreProblemCode:(unsigned int)a3;
- (int)readPropertyListFromBaseAsync:(id)a3;
- (int)rpcDisconnectAllDiskUsersWithMessageAsync:(id)a3;
- (int)rpcRefreshBSSettingAsync:(int)a3;
- (int)rpcRenewDHCPLeaseAsync;
- (int)rpcStartRemoteBrowse:(id)a3 withService:(id)a4;
- (int)rpcSystemInterfacesAsync;
- (int)rpcWPSAllowClientAsync:(id)a3;
- (int)rpcWPSStartAsync:(BOOL)a3 dayPass:(BOOL)a4 timeout:(unsigned int)a5;
- (int)rpcWPSStopAsync;
- (int)setMonitorForChanges:(BOOL)a3;
- (int)setValue:(id)a3 forBSSetting:(int)a4;
- (int)setValue:(id)a3 forSettingPath:(id)a4;
- (int)setupFromAutoguessRecommendation:(id)a3 withOptions:(id)a4;
- (int)setupWithTargetBaseStation:(id)a3 andSettings:(id)a4;
- (int)setupWithTargetNetwork:(id)a3;
- (int)snapshotPop:(BOOL)a3;
- (int)snapshotPush;
- (int)stateForProblem:(unsigned int)a3;
- (int)subclassAssistantCallback:(AssistantCallbackContext *)a3;
- (int)taskArchiveDiskAsync:(id)a3;
- (int)taskEraseDiskAsync:(id)a3;
- (int)taskRestartAsync;
- (int)taskRestoreDefaultsAsync:(BOOL)a3;
- (int)taskState;
- (int)taskUploadFirmwareAsync:(id)a3;
- (int)unIgnoreProblemCode:(unsigned int)a3;
- (int)updateKeychainWithPasswords;
- (int)updateKeychainWithPasswordsWithStatus:(int)a3;
- (int)updateSettingsAsync;
- (int64_t)ethernetPortCount;
- (int64_t)unignoredProblemCount;
- (unsigned)taskCode;
- (void)dealloc;
- (void)deleteKeychainBasePassword;
- (void)deleteKeychainWirelessPassword;
- (void)handleBusyComplete;
- (void)handleBusyStart;
- (void)handleSetupComplete:(int)a3;
- (void)handleTaskComplete;
- (void)loadKeychainBasePassword;
- (void)loadKeychainWirelessPassword;
- (void)logChangesToCCL;
- (void)resetWiFiState;
- (void)saveKeychainBasePassword;
- (void)setBonjourRecord:(id)a3;
- (void)setKeychainBasePassword:(id)a3;
- (void)setKeychainDiskPassword:(id)a3;
- (void)setKeychainWiFiPassword:(id)a3;
- (void)setRememberBasePassword:(BOOL)a3;
- (void)setRememberWiFiPassword:(BOOL)a3;
- (void)setupUIConfigResult:(int)a3 withOptions:(id)a4;
- (void)setupWiFiState;
- (void)snapshotResetAll;
- (void)updateRememberKeychainFlagsButSkipBasePassword:(BOOL)a3;
- (void)updateRememberKeychainFlagsIfInitializing;
@end

@implementation AUSetupController

+ (void)initialize
{
  if (qword_27E383428 != -1)
  {
    sub_23EC18E88();
  }
}

- (AUSetupController)init
{
  v33.receiver = self;
  v33.super_class = AUSetupController;
  v6 = [(AssistantCallbackController *)&v33 init];
  if (v6)
  {
    *(v6 + 7) = objc_alloc_init(MEMORY[0x277CBEB58]);
    sub_23EBBCBC4(v6 + 5, v7, v8, v9, v10, v11, v12, v13);
    sub_23EBBD130(*(v6 + 5), sub_23EB8491C, v6, v14, v15, v16, v17, v18);
    v19 = *(v6 + 5);
    v22 = objc_msgSend_assistantCallback(v6, v20, v21);
    sub_23EBBD1F4(v19, v22, v6, v23, v24, v25, v26, v27);
    *(v6 + 88) = 1;
    v30 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v28, v29);
    objc_msgSend_addObserver_selector_name_object_(v30, v31, v6, sel_applicationDidEnterBackgroundNotification_, *MEMORY[0x277D76660], 0);
  }

  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController init]", 800, "\n", v2, v3, v4, v5, v33.receiver);
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_closeAllConnections_(self, a2, 1);
  objc_msgSend_setLastDNSName_(self, v3, 0);
  objc_msgSend_setLastSystemName_(self, v4, 0);
  objc_msgSend_setAutoGuessSetupRecommendation_(self, v5, 0);
  objc_msgSend_setLastInstrumentation_(self, v6, 0);

  v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8);
  objc_msgSend_removeObserver_name_object_(v9, v10, self, *MEMORY[0x277D76660], 0);
  v11.receiver = self;
  v11.super_class = AUSetupController;
  [(AssistantCallbackController *)&v11 dealloc];
}

- (int)closeAllConnections:(BOOL)a3
{
  v7 = a3;
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController closeAllConnections:]", 800, "\n", v3, v4, v5, v6, v25);
  }

  if (!objc_msgSend_activeTask(self, a2, a3) || v7)
  {
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v9, self, sel_handleCopyAllSettingsUpdateThread_, 0);
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v10, self, sel_handleSettingsUpdate_, 0);

    self->_setupDelegates = 0;
    objc_sync_enter(self);
    configContext = self->_configContext;
    if (configContext)
    {
      sub_23EBBD130(configContext, 0, 0, v11, v12, v13, v14, v15);
      v7 = sub_23EBBCCF0(self->_configContext, v17, v18, v19, v20, v21, v22, v23);
      self->_configContext = 0;
    }

    else
    {
      v7 = 0;
    }

    objc_sync_exit(self);

    self->_lastHeardFromDevice = 0;
  }

  return v7;
}

- (int)subclassAssistantCallback:(AssistantCallbackContext *)a3
{
  if (!a3)
  {
    LODWORD(v13) = -6705;
    return v13;
  }

  v52 = 0;
  v53 = 0;
  sub_23EBEB494(a3, @"kBSAssistantCallback_Configuration_UIConfigSelector", &v53, v3, v4, v5, v6, v7);
  v12 = v13;
  LODWORD(v13) = 0;
  if (!v12 && v53)
  {
    v14 = objc_msgSend_integerValue(v53, v10, v11);
    if (sub_23EBEB5B8(a3, @"kBSAssistantCallback_Configuration_UIConfigParamDict"))
    {
      sub_23EBEB494(a3, @"kBSAssistantCallback_Configuration_UIConfigParamDict", &v52, v17, v18, v19, v20, v21);
      if (v13)
      {
        return v13;
      }

      if (!v52)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v52 = 0;
    }

    if ((v14 - 1) >= 6)
    {
      if ((v14 - 7) >= 2)
      {
        LODWORD(v13) = -6705;
        return v13;
      }

      if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
      {
        sub_23EB75374(&dword_27E3818B0, "[AUSetupController subclassAssistantCallback:]", 800, "selector: %d paramDict: %@\n", v18, v19, v20, v21, v14);
      }

      v13 = objc_msgSend_uiConfigDelegate(self, v15, v16);
      if (v13)
      {
        objc_msgSend_uiConfigDelegate(self, v43, v44);
        if (objc_opt_respondsToSelector())
        {
          callbackContext = self->super._callbackContext;
          if (callbackContext)
          {
            v48 = callbackContext == a3;
          }

          else
          {
            v48 = 1;
          }

          if (!v48)
          {
            goto LABEL_43;
          }

          self->super._callbackContext = a3;
          v49 = objc_msgSend_uiConfigDelegate(self, v45, v46);
          objc_msgSend_setupUIConfigPrompt_paramDict_forController_(v49, v50, v14, v52, self);
        }

LABEL_42:
        LODWORD(v13) = 0;
      }
    }

    else
    {
      sub_23EBEB494(a3, @"kBSAssistantCallback_Configuration_UIConfigConnectionStatusOSStatus", &v53, v17, v18, v19, v20, v21);
      if (!v13)
      {
        if (!v53)
        {
LABEL_38:
          LODWORD(v13) = -6728;
          return v13;
        }

        v30 = objc_msgSend_integerValue(v53, v22, v23);
        if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
        {
          sub_23EB75374(&dword_27E3818B0, "[AUSetupController subclassAssistantCallback:]", 800, "selector: %d status: %ld paramDict: %@\n", v26, v27, v28, v29, v14);
        }

        if (!objc_msgSend_uiConfigDelegate(self, v24, v25) || (objc_msgSend_uiConfigDelegate(self, v31, v32), (objc_opt_respondsToSelector() & 1) == 0))
        {
          if (v30)
          {
            sub_23EBEB6CC(a3, -6757, v32, v33, v34, v35, v36, v37);
          }

          goto LABEL_42;
        }

        v39 = self->super._callbackContext;
        if (!v39 || v39 == a3)
        {
          if (v30)
          {
            v40 = a3;
          }

          else
          {
            v40 = 0;
          }

          self->super._callbackContext = v40;
          v41 = objc_msgSend_uiConfigDelegate(self, v38, v32);
          objc_msgSend_setupUIConfigConnectionStatusUpdated_status_paramDict_forController_(v41, v42, v14, v30, v52, self);
          goto LABEL_42;
        }

LABEL_43:
        LODWORD(v13) = -6721;
      }
    }
  }

  return v13;
}

+ (id)setupController
{
  v2 = objc_alloc_init(AUSetupController);

  return v2;
}

- (int)cancelTask
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBBD00C(configContext, a2, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6720;
  }
}

- (int)cancelSetup
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBBCEC0(configContext, 0, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6720;
  }
}

- (int)setValue:(id)a3 forBSSetting:(int)a4
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  v8 = 0;
  result = sub_23EBBEC90(configContext, &v8);
  if (!result)
  {
    if (v8)
    {
      return sub_23EBB3DBC(v8, a4, a3);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)copyValue:(id *)a3 forBSSetting:(int)a4
{
  if (!a3)
  {
    return -6705;
  }

  *a3 = 0;
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (!a4)
  {
    return -6705;
  }

  v8 = 0;
  result = sub_23EBBEC90(configContext, &v8);
  if (!result)
  {
    if (v8)
    {
      return sub_23EBB3F30(v8, a4, a3);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)getValue:(id *)a3 forBSSetting:(int)a4
{
  v5 = objc_msgSend_copyValue_forBSSetting_(self, a2, a3, *&a4);
  if (!v5)
  {
    v6 = *a3;
  }

  return v5;
}

- (int)setValue:(id)a3 forSettingPath:(id)a4
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  v12 = 0;
  result = sub_23EBBEC90(configContext, &v12);
  if (!result)
  {
    v10 = v12;
    if (v12)
    {
      v11 = objc_msgSend_UTF8String(a4, v8, v9);
      return sub_23EBB3B84(v10, v11, a3);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)copyValue:(id *)a3 forSettingPath:(id)a4
{
  if (!a3)
  {
    return -6705;
  }

  *a3 = 0;
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (!a4)
  {
    return -6705;
  }

  v12 = 0;
  result = sub_23EBBEC90(configContext, &v12);
  if (!result)
  {
    v10 = v12;
    if (v12)
    {
      v11 = objc_msgSend_UTF8String(a4, v8, v9);
      return sub_23EBB3E20(v10, v11, a3);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)getValue:(id *)a3 forSettingPath:(id)a4
{
  v5 = objc_msgSend_copyValue_forSettingPath_(self, a2, a3, a4);
  if (!v5)
  {
    v6 = *a3;
  }

  return v5;
}

- (BOOL)hasACPFeature:(unsigned int)a3
{
  configContext = self->_configContext;
  if (configContext)
  {
    v6 = 0;
    if (sub_23EBBEC90(configContext, &v6))
    {
      LOBYTE(configContext) = 0;
    }

    else
    {
      LOBYTE(configContext) = v6;
      if (v6)
      {
        LOBYTE(configContext) = sub_23EBB4248(v6, a3);
      }
    }
  }

  return configContext;
}

- (int)stateForProblem:(unsigned int)a3
{
  configContext = self->_configContext;
  if (configContext)
  {
    v7 = 0;
    v6 = 0;
    if (sub_23EBBEC90(configContext, &v7))
    {
      LODWORD(configContext) = 0;
    }

    else
    {
      LODWORD(configContext) = v7;
      if (v7)
      {
        LODWORD(configContext) = sub_23EBB4248(v7, 1400460148);
        if (configContext)
        {
          LODWORD(configContext) = sub_23EBB427C(v7, a3, &v6);
          if (configContext)
          {
            if (v6)
            {
              LODWORD(configContext) = 1;
            }

            else
            {
              LODWORD(configContext) = 2;
            }
          }
        }
      }
    }
  }

  return configContext;
}

- (int64_t)unignoredProblemCount
{
  v33 = *MEMORY[0x277D85DE8];
  configContext = self->_configContext;
  if (!configContext)
  {
    return 0;
  }

  v30 = 0;
  v31 = 0;
  if (sub_23EBBEC90(configContext, &v31) || !v31)
  {
    return 0;
  }

  if (!sub_23EBB4248(v31, 1400460148))
  {
    v29 = 0;
    sub_23EBBF110(self->_configContext, &v29);
    if (v29)
    {
      return sub_23EB6B004(v29, v18, v19, v20, v21, v22, v23, v24);
    }

    return 0;
  }

  v4 = 0;
  if (!sub_23EBB3F30(v31, 1937331060, &v30) && v30)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = objc_msgSend_objectForKey_(v30, v6, @"problems", 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v32, 16);
    if (v9)
    {
      v11 = v9;
      v4 = 0;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = objc_msgSend_objectForKey_(*(*(&v25 + 1) + 8 * i), v10, @"code");
          v16 = sub_23EB6D4A8(v14, v15);
          if (objc_msgSend_stateForProblem_(self, v17, v16) == 2)
          {
            ++v4;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v25, v32, 16);
      }

      while (v11);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)validateAllSettingsAndGetErrors
{
  v5 = 0;
  result = self->_configContext;
  if (result)
  {
    v6 = 0;
    if (sub_23EBBEC90(result, &v6))
    {
      return 0;
    }

    else
    {
      result = v6;
      if (v6)
      {
        v3 = sub_23EBB4690(v6, &v5);
        result = v5;
        if (v3 != -6727)
        {
          if (v5)
          {
            v4 = v5;
            return v5;
          }
        }
      }
    }
  }

  return result;
}

- (id)validateSettingsAndGetErrors:(id)a3
{
  v7 = 0;
  result = self->_configContext;
  if (result)
  {
    *v8 = 0;
    if (sub_23EBBEC90(result, v8))
    {
      return 0;
    }

    else
    {
      result = *v8;
      if (*v8)
      {
        v5 = sub_23EBB4360(*v8, a3, &v7);
        result = v7;
        if (v5 != -6727)
        {
          if (v7)
          {
            v6 = v7;
            return v7;
          }
        }
      }
    }
  }

  return result;
}

- (int)ignoreProblemCode:(unsigned int)a3
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  v6 = 0;
  result = sub_23EBBEC90(configContext, &v6);
  if (!result)
  {
    if (v6)
    {
      return sub_23EBB42A0(v6, a3);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)unIgnoreProblemCode:(unsigned int)a3
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  v6 = 0;
  result = sub_23EBBEC90(configContext, &v6);
  if (!result)
  {
    if (v6)
    {
      return sub_23EBB42B4(v6, a3);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (NSString)keychainBasePassword
{
  objc_sync_enter(self);
  keychainBasePassword = self->_keychainBasePassword;
  objc_sync_exit(self);
  return keychainBasePassword;
}

- (NSString)keychainWiFiPassword
{
  objc_sync_enter(self);
  keychainWiFiPassword = self->_keychainWiFiPassword;
  objc_sync_exit(self);
  return keychainWiFiPassword;
}

- (NSString)keychainDiskPassword
{
  objc_sync_enter(self);
  keychainDiskPassword = self->_keychainDiskPassword;
  objc_sync_exit(self);
  return keychainDiskPassword;
}

- (void)setKeychainBasePassword:(id)a3
{
  keychainBasePassword = self->_keychainBasePassword;
  if (keychainBasePassword)
  {
    v4 = keychainBasePassword == a3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    objc_sync_enter(self);
    v7 = a3;

    self->_keychainBasePassword = a3;
    if (objc_msgSend_length(a3, v8, v9))
    {
      v12 = objc_msgSend_rememberBasePassword(self, v10, v11);
      objc_msgSend_setRememberBasePassword_(self, v13, v12);
    }

    else
    {
      objc_msgSend_setRememberBasePassword_(self, v10, 0);
    }

    objc_sync_exit(self);
  }
}

- (void)setKeychainWiFiPassword:(id)a3
{
  keychainWiFiPassword = self->_keychainWiFiPassword;
  if (keychainWiFiPassword)
  {
    v4 = keychainWiFiPassword == a3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    objc_sync_enter(self);
    if (objc_msgSend_length(a3, v7, v8))
    {
      v11 = objc_msgSend_length(self->_keychainWiFiPassword, v9, v10) == 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = a3;

    self->_keychainWiFiPassword = a3;
    if (v11)
    {
      objc_msgSend_setRememberWiFiPassword_(self, v13, 1);
    }

    else if (objc_msgSend_length(a3, v13, v14))
    {
      v17 = objc_msgSend_rememberWiFiPassword(self, v15, v16);
      objc_msgSend_setRememberWiFiPassword_(self, v18, v17);
    }

    else
    {
      objc_msgSend_setRememberWiFiPassword_(self, v15, 0);
    }

    objc_sync_exit(self);
  }
}

- (void)setKeychainDiskPassword:(id)a3
{
  keychainDiskPassword = self->_keychainDiskPassword;
  if (keychainDiskPassword)
  {
    v4 = keychainDiskPassword == a3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    objc_sync_enter(self);
    v7 = a3;

    self->_keychainDiskPassword = a3;
    if (objc_msgSend_length(a3, v8, v9))
    {
      v12 = objc_msgSend_rememberDiskPassword(self, v10, v11);
      objc_msgSend_setRememberDiskPassword_(self, v13, v12);
    }

    else
    {
      objc_msgSend_setRememberDiskPassword_(self, v10, 0);
    }

    objc_sync_exit(self);
  }
}

- (int)readPropertyListFromBaseAsync:(id)a3
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  result = sub_23EBBF76C(configContext, a3, a3, v3, v4, v5, v6, v7);
  if (!result)
  {
    objc_msgSend_handleBusyStart(self, v11, v12);
    result = 0;
    self->_performingManualRead = 1;
  }

  return result;
}

- (int)updateSettingsAsync
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  result = sub_23EBBFA24(configContext, a2, v2, v3, v4, v5, v6, v7);
  if (!result)
  {
    objc_msgSend_handleBusyStart(self, v11, v12);
    objc_msgSend_setupWiFiState(self, v13, v14);
    return 0;
  }

  return result;
}

- (id)snapshotChangedKeys
{
  v7 = 0;
  v3 = objc_msgSend_bsRef(self, a2, v2);
  v4 = sub_23EBB41B0(v3, &v7);
  result = v7;
  if (!v4)
  {
    if (v7)
    {
      v6 = v7;
      return v7;
    }
  }

  return result;
}

- (void)snapshotResetAll
{
  v3 = objc_msgSend_bsRef(self, a2, v2);

  sub_23EBB41D4(v3);
}

- (int)snapshotPush
{
  v3 = objc_msgSend_bsRef(self, a2, v2);

  return sub_23EBB41E4(v3);
}

- (int)snapshotPop:(BOOL)a3
{
  v3 = a3;
  v4 = objc_msgSend_bsRef(self, a2, a3);

  return sub_23EBB41F4(v4, v3);
}

- (id)bestKeychainMACAddress
{
  v9 = 0;
  if ((objc_msgSend_getValue_forBSSetting_(self, a2, &v9, 2002865473) || !objc_msgSend_length(v9, v3, v4) || objc_msgSend_isEqualToString_(v9, v3, @"00:00:00:00:00:00")) && (v9 = 0, objc_msgSend_getValue_forBSSetting_(self, v3, &v9, 1918979393)) || !objc_msgSend_length(v9, v3, v5) || objc_msgSend_isEqualToString_(v9, v3, @"00:00:00:00:00:00"))
  {
    v9 = 0;
    if (objc_msgSend_getValue_forBSSetting_(self, v3, &v9, 1818316097))
    {
      return 0;
    }
  }

  result = objc_msgSend_length(v9, v3, v6);
  if (result)
  {
    if (objc_msgSend_isEqualToString_(v9, v8, @"00:00:00:00:00:00"))
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

- (id)allKeychainMACAddresses
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v15 = 0;
  if (!objc_msgSend_getValue_forBSSetting_(self, v5, &v15, 2002865473) && objc_msgSend_length(v15, v6, v7) && (objc_msgSend_isEqualToString_(v15, v6, @"00:00:00:00:00:00") & 1) == 0)
  {
    objc_msgSend_addObject_(v4, v6, v15);
  }

  v15 = 0;
  if (!objc_msgSend_getValue_forBSSetting_(self, v6, &v15, 1918979393) && objc_msgSend_length(v15, v8, v9) && (objc_msgSend_isEqualToString_(v15, v8, @"00:00:00:00:00:00") & 1) == 0)
  {
    objc_msgSend_addObject_(v4, v8, v15);
  }

  v15 = 0;
  if (!objc_msgSend_getValue_forBSSetting_(self, v8, &v15, 1818316097) && objc_msgSend_length(v15, v10, v11) && (objc_msgSend_isEqualToString_(v15, v13, @"00:00:00:00:00:00") & 1) == 0)
  {
    objc_msgSend_addObject_(v4, v14, v15);
  }

  return v4;
}

- (void)updateRememberKeychainFlagsIfInitializing
{
  if (!self->_initializedBasePasswordFlag && objc_msgSend_bonjourRecord(self, a2, v2))
  {
    self->_initializedBasePasswordFlag = 1;

    objc_msgSend_updateRememberKeychainFlagsButSkipBasePassword_(self, v4, 0);
  }
}

- (void)updateRememberKeychainFlagsButSkipBasePassword:(BOOL)a3
{
  if (!a3)
  {
    objc_msgSend_loadKeychainBasePassword(self, a2, a3);
  }

  MEMORY[0x2821F9670](self, sel_loadKeychainWirelessPassword, a3);
}

- (int)updateKeychainWithPasswordsWithStatus:(int)a3
{
  if (a3 == -16)
  {
    objc_msgSend_deleteKeychainBasePassword(self, a2, *&a3);
    return 0;
  }

  else
  {

    return objc_msgSend_updateKeychainWithPasswords(self, a2, *&a3);
  }
}

- (int)updateKeychainWithPasswords
{
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    v4 = objc_msgSend_rememberBasePassword(self, a2, v2);
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController updateKeychainWithPasswords]", 800, "self.rememberBasePassword %d\n", v5, v6, v7, v8, v4);
  }

  if (objc_msgSend_rememberBasePassword(self, a2, v2))
  {
    objc_msgSend_saveKeychainBasePassword(self, v9, v10);
  }

  return 0;
}

- (void)loadKeychainBasePassword
{
  v5 = 0;
  objc_sync_enter(self);
  configContext = self->_configContext;
  if (configContext && !sub_23EBBF110(configContext, &v5) && v5)
  {
    CFRetain(v5);
    objc_sync_exit(self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23EB86590;
    block[3] = &unk_278C69060;
    block[4] = self;
    block[5] = v5;
    dispatch_group_async(qword_27E383438, qword_27E383430, block);
  }

  else
  {
    objc_sync_exit(self);
  }
}

- (void)saveKeychainBasePassword
{
  if (objc_msgSend_rememberBasePassword(self, a2, v2))
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
    objc_sync_enter(self);
    configContext = self->_configContext;
    if (!configContext || sub_23EBBEC90(configContext, &v29) || !v29)
    {
      goto LABEL_4;
    }

    v13 = objc_msgSend_bestKeychainMACAddress(self, v5, v6);
    if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
    {
      sub_23EB75374(&dword_27E3818B0, "[AUSetupController saveKeychainBasePassword]", 800, "macAddress: %@ err: %#m\n", v9, v10, v11, v12, v13);
    }

    if (!objc_msgSend_length(v13, v7, v8) || objc_msgSend_getValue_forBSSetting_(self, v14, &v31, 1937330263) || (v17 = v31) == 0)
    {
LABEL_4:
      objc_sync_exit(self);
      return;
    }

    if (dword_27E3818B0 <= 800)
    {
      if (dword_27E3818B0 != -1)
      {
LABEL_18:
        v18 = objc_msgSend_length(v17, v15, v16);
        sub_23EB75374(&dword_27E3818B0, "[AUSetupController saveKeychainBasePassword]", 800, "password (length): %ld err: %#m\n", v19, v20, v21, v22, v18);
        goto LABEL_19;
      }

      if (sub_23EB74AC8(&dword_27E3818B0, 0x320u))
      {
        v17 = v31;
        goto LABEL_18;
      }
    }

LABEL_19:
    if (!objc_msgSend_getValue_forBSSetting_(self, v15, &v30, 1937329773))
    {
      v27 = v30;
      if (v30)
      {
        if (dword_27E3818B0 <= 800)
        {
          if (dword_27E3818B0 != -1)
          {
LABEL_25:
            sub_23EB75374(&dword_27E3818B0, "[AUSetupController saveKeychainBasePassword]", 800, "name: %@ err: %#m\n", v23, v24, v25, v26, v27);
            goto LABEL_26;
          }

          if (sub_23EB74AC8(&dword_27E3818B0, 0x320u))
          {
            v27 = v30;
            goto LABEL_25;
          }
        }

LABEL_26:
        objc_sync_exit(self);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23EB86828;
        block[3] = &unk_278C69088;
        block[4] = v31;
        block[5] = self;
        block[6] = v13;
        block[7] = v30;
        dispatch_group_async(qword_27E383438, qword_27E383430, block);
        return;
      }
    }

    goto LABEL_4;
  }
}

- (void)deleteKeychainBasePassword
{
  v5 = 0;
  objc_sync_enter(self);
  configContext = self->_configContext;
  if (configContext && !sub_23EBBF110(configContext, &v5) && v5)
  {
    CFRetain(v5);
    objc_sync_exit(self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23EB869DC;
    block[3] = &unk_278C69060;
    block[4] = self;
    block[5] = v5;
    dispatch_group_async(qword_27E383438, qword_27E383430, block);
  }

  else
  {
    objc_sync_exit(self);
  }
}

- (void)loadKeychainWirelessPassword
{
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  objc_sync_enter(self);
  configContext = self->_configContext;
  if (configContext && !sub_23EBBEC90(configContext, &v17) && v17 && (sub_23EBB6604(v17), v4 = sub_23EB6D3EC(1918979693), !objc_msgSend_getValue_forSettingPath_(self, v5, &v16, v4)) && v16 && objc_msgSend_length(v16, v6, v7) && !objc_msgSend_getValue_forBSSetting_(self, v8, &v14, 1651717454) && v14 && (!objc_msgSend_BOOLValue(v14, v9, v10) || (sub_23EBB65F0(v17), v11 = sub_23EB6D3EC(1918979693), !objc_msgSend_getValue_forSettingPath_(self, v12, &v15, v11)) && v15))
  {
    objc_sync_exit(self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23EB86BB8;
    v13[3] = &unk_278C69088;
    v13[4] = v16;
    v13[5] = v14;
    v13[6] = v15;
    v13[7] = self;
    dispatch_group_async(qword_27E383438, qword_27E383430, v13);
  }

  else
  {
    objc_sync_exit(self);
  }
}

- (void)deleteKeychainWirelessPassword
{
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  objc_sync_enter(self);
  configContext = self->_configContext;
  if (!configContext || sub_23EBBEC90(configContext, &v15) || !v15 || objc_msgSend_getValue_forBSSetting_(self, v4, &v12, 1651717454) || !v12 || (sub_23EBB6604(v15), v5 = sub_23EB6D3EC(1918979693), objc_msgSend_getValue_forSettingPath_(self, v6, &v14, v5)) || !v14 || objc_msgSend_BOOLValue(v12, v7, v8) && ((sub_23EBB65F0(v15), v9 = sub_23EB6D3EC(1918979693), objc_msgSend_getValue_forSettingPath_(self, v10, &v13, v9)) || !v13))
  {
    objc_sync_exit(self);
  }

  else
  {
    objc_sync_exit(self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23EB86E48;
    v11[3] = &unk_278C69088;
    v11[4] = v14;
    v11[5] = v12;
    v11[6] = v13;
    v11[7] = self;
    dispatch_group_async(qword_27E383438, qword_27E383430, v11);
  }
}

- (int)rpcSystemInterfacesAsync
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB7918(configContext, a2, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcStartRemoteBrowse:(id)a3 withService:(id)a4
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB7B38(configContext, a3, a4, a4, v4, v5, v6, v7);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcRefreshBSSettingAsync:(int)a3
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB7F44(configContext, a3, *&a3, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcDisconnectAllDiskUsersWithMessageAsync:(id)a3
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB825C(configContext, a3, a3, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcRenewDHCPLeaseAsync
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB84FC(configContext, a2, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcWPSStartAsync:(BOOL)a3 dayPass:(BOOL)a4 timeout:(unsigned int)a5
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB86B0(configContext, a3, a4, *&a5, *&a5, v5, v6, v7);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcWPSStopAsync
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB89D4(configContext, a2, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcWPSAllowClientAsync:(id)a3
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB8CE8(configContext, a3, a3, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6718;
  }
}

- (int)taskState
{
  v4 = 0;
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBB77D8(configContext, &v4);
    LODWORD(configContext) = v4;
  }

  return configContext;
}

- (unsigned)taskCode
{
  v5 = 0;
  if (!self->_configContext || objc_msgSend_taskState(self, a2, v2) != 6)
  {
    return 0;
  }

  sub_23EBB779C(self->_configContext, &v5);
  return v5;
}

- (int)busyState
{
  v4 = 0;
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBB78F0(configContext, &v4);
    LODWORD(configContext) = v4;
  }

  return configContext;
}

- (int)taskRestartAsync
{
  if (!self->_configContext)
  {
    return -6718;
  }

  objc_msgSend_setActiveTask_(self, a2, 1);
  result = sub_23EBB900C(self->_configContext, v3, v4, v5, v6, v7, v8, v9);
  if (!result)
  {
    objc_msgSend_handleBusyStart(self, v11, v12);
    objc_msgSend_setupWiFiState(self, v13, v14);
    return 0;
  }

  return result;
}

- (int)taskRestoreDefaultsAsync:(BOOL)a3
{
  if (!self->_configContext)
  {
    return -6718;
  }

  v3 = a3;
  objc_msgSend_setActiveTask_(self, a2, 1);
  result = sub_23EBB9E34(self->_configContext, v3, v5, v6, v7, v8, v9, v10);
  if (!result)
  {
    objc_msgSend_handleBusyStart(self, v12, v13);
    objc_msgSend_setupWiFiState(self, v14, v15);
    return 0;
  }

  return result;
}

- (int)taskUploadFirmwareAsync:(id)a3
{
  if (!self->_configContext)
  {
    return -6718;
  }

  if (!a3)
  {
    return -6705;
  }

  objc_msgSend_setActiveTask_(self, a2, 1);
  result = sub_23EBBAC3C(self->_configContext, a3, v5, v6, v7, v8, v9, v10);
  if (!result)
  {
    objc_msgSend_handleBusyStart(self, v12, v13);
    objc_msgSend_setupWiFiState(self, v14, v15);
    return 0;
  }

  return result;
}

- (int)taskEraseDiskAsync:(id)a3
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (a3)
  {
    return sub_23EBBBDE8(configContext, a3, a3, v3, v4, v5, v6, v7);
  }

  return -6705;
}

- (int)taskArchiveDiskAsync:(id)a3
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (a3)
  {
    return sub_23EBBC3D0(configContext, a3, a3, v3, v4, v5, v6, v7);
  }

  return -6705;
}

- (int)setMonitorForChanges:(BOOL)a3
{
  if (self->_configContext)
  {
    return sub_23EBC220C(self->_configContext, a3, self->_busy, v3, v4, v5, v6, v7);
  }

  else
  {
    return -6718;
  }
}

- (BOOL)isMonitoring
{
  v4 = 0;
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBC2310(configContext, &v4);
    LOBYTE(configContext) = v4 != 0;
  }

  return configContext;
}

- (BOOL)rememberBasePassword
{
  result = 1;
  v11 = 1;
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBBECD8(configContext, &v11, v2, v3, v4, v5, v6, v7);
    return v11 != 0;
  }

  return result;
}

- (void)setRememberBasePassword:(BOOL)a3
{
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBBED88(configContext, a3, a3, v3, v4, v5, v6, v7);
  }
}

- (BOOL)rememberWiFiPassword
{
  result = 1;
  v11 = 1;
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBBEE38(configContext, &v11, v2, v3, v4, v5, v6, v7);
    return v11 != 0;
  }

  return result;
}

- (void)setRememberWiFiPassword:(BOOL)a3
{
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBBEEE8(configContext, a3, a3, v3, v4, v5, v6, v7);
  }
}

- (NSDictionary)bonjourRecord
{
  v3 = 0;
  result = self->_configContext;
  if (result)
  {
    sub_23EBBF110(result, &v3);
    return v3;
  }

  return result;
}

- (void)setBonjourRecord:(id)a3
{
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController setBonjourRecord:]", 800, "record: %@\n", v3, v4, v5, v6, a3);
  }

  if (self->_configContext)
  {
    objc_sync_enter(self);
    if (a3)
    {
      self->_needToNilBonjour = 0;
      goto LABEL_8;
    }

    if (!self->_busy)
    {
      p_needToNilBonjour = &self->_needToNilBonjour;
      self->_needToNilBonjour = 0;
      goto LABEL_20;
    }

    v17 = objc_msgSend_taskState(self, v9, v10);
    v18 = v17 != 0;
    p_needToNilBonjour = &self->_needToNilBonjour;
    self->_needToNilBonjour = v18;
    if (!v17 || dword_27E3818B0 > 800)
    {
      goto LABEL_20;
    }

    if (dword_27E3818B0 == -1)
    {
      if (!sub_23EB74AC8(&dword_27E3818B0, 0x320u))
      {
LABEL_20:
        if (*p_needToNilBonjour)
        {
LABEL_21:

          objc_sync_exit(self);
          return;
        }

        v20 = sub_23EBBCEC0(self->_configContext, 1, v10, v11, v12, v13, v14, v15);
        if (dword_27E3818B0 <= 800)
        {
          v25 = v20;
          if (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u))
          {
            sub_23EB75374(&dword_27E3818B0, "[AUSetupController setBonjourRecord:]", 800, "err: %#m\n", v21, v22, v23, v24, v25);
          }
        }

LABEL_8:
        v16 = objc_msgSend_taskState(self, v9, v10);
        if (v16 == 6 || !v16)
        {
          sub_23EBBCA7C(self->_configContext, a3);
        }

        goto LABEL_21;
      }

      v18 = *p_needToNilBonjour;
    }

    sub_23EB75374(&dword_27E3818B0, "[AUSetupController setBonjourRecord:]", 800, "_needToNilBonjour: %d\n", v12, v13, v14, v15, v18);
    goto LABEL_20;
  }
}

- (BOOL)dirty
{
  configContext = self->_configContext;
  if (configContext)
  {
    v6 = 0;
    v5 = 0;
    return !sub_23EBBEC90(configContext, &v5) && v5 && !sub_23EBB3A0C(v5, &v6) && v6;
  }

  else
  {
    return 0;
  }
}

- (_BaseStation)bsRef
{
  v3 = 0;
  result = self->_configContext;
  if (result)
  {
    sub_23EBBEC90(result, &v3);
    return v3;
  }

  return result;
}

- (int64_t)ethernetPortCount
{
  v7 = 0;
  Value_forBSSetting = objc_msgSend_getValue_forBSSetting_(self, a2, &v7, 1937326416);
  result = 0;
  if (!Value_forBSSetting)
  {
    v6 = objc_msgSend_integerValue(v7, v2, v3);
    return sub_23EB4BDAC(v6);
  }

  return result;
}

- (void)setupUIConfigResult:(int)a3 withOptions:(id)a4
{
  callbackContext = self->super._callbackContext;
  if (callbackContext)
  {
    if (!a4 || (v11 = sub_23EBEB5E8(callbackContext, @"kBSAssistantCallback_Configuration_UIConfigResultsDict", a4, a4, v4, v5, v6, v7)) == 0)
    {
      v11 = a3;
    }

    v12 = self->super._callbackContext;
    if (v12)
    {
      sub_23EBEB6CC(v12, v11, *&a3, a4, v4, v5, v6, v7);
    }
  }

  self->super._callbackContext = 0;
}

- (int)setupFromAutoguessRecommendation:(id)a3 withOptions:(id)a4
{
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController setupFromAutoguessRecommendation:withOptions:]", 800, "\n", v4, v5, v6, v7, v120);
  }

  if (!self->_configContext)
  {
    return -6718;
  }

  if (!a3)
  {
    return -6705;
  }

  v11 = objc_msgSend_objectForKey_(a3, a2, @"BSAutoGuess_Recommendation");
  objc_msgSend_setAutoGuessSetupRecommendation_(self, v12, v11);
  if (!self->_autoGuessSetupRecommendation)
  {
    return -6727;
  }

  v15 = a4 ? objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v13, a4) : objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
  v18 = v15;
  v19 = objc_msgSend_objectForKey_(a3, v16, @"BSAutoGuess_UnconfiguredBase");
  v21 = objc_msgSend_objectForKey_(a3, v20, @"BSAutoGuess_UnconfiguredNetwork");
  if (!(v19 | v21))
  {
    return -6727;
  }

  v23 = v21;
  v24 = objc_msgSend_objectForKey_(a3, v22, @"BSAutoGuess_UnconfiguredBaseSettings");
  v32 = v24;
  if (v19)
  {
    if (!v24)
    {
      return -6727;
    }
  }

  if (v19)
  {
    objc_msgSend_setObject_forKey_(v18, v25, v19, @"kBSAutoGuessSetupOptionKey_TargetBase");
  }

  if (v32)
  {
    objc_msgSend_setObject_forKey_(v18, v25, v32, @"kBSAutoGuessSetupOptionKey_TargetSettings");
  }

  if (v23)
  {
    objc_msgSend_setObject_forKey_(v18, v25, v23, @"kBSAutoGuessSetupOptionKey_TargetNetwork");
  }

  if (v19)
  {
    v33 = sub_23EB6A2C0(v19, v25, v26, v27, v28, v29, v30, v31);
    v41 = sub_23EB6A294(v19, v34, v35, v36, v37, v38, v39, v40);
  }

  else
  {
    v33 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v25, v23);
    v41 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v43, v23);
  }

  v44 = v41;
  v45 = objc_msgSend_objectForKey_(a4, v42, @"kBSAutoGuessSetupOptionKey_BaseName");
  if (objc_msgSend_length(v45, v46, v47))
  {
    if (!v45)
    {
      return -6727;
    }
  }

  else
  {
    v45 = sub_23EB6D75C(v33, v44);
    if (!objc_msgSend_length(v45, v49, v50))
    {
      v45 = sub_23EB6D7A8(v33, v44);
    }

    if (!v45)
    {
      return -6727;
    }

    objc_msgSend_setObject_forKey_(v18, v51, v45, @"kBSAutoGuessSetupOptionKey_BaseName");
  }

  if ((objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v48, @"BSSetupRecommend_OfferExtendWirelessly") & 1) != 0 || objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v52, @"BSSetupRecommend_AskUserChooseBaseWireless"))
  {
    v53 = objc_msgSend_objectForKey_(a4, v52, @"kBSAutoGuessSetupOptionKey_ExtendOption_JoinApple");
    v56 = objc_msgSend_BOOLValue(v53, v54, v55);
    v58 = objc_msgSend_objectForKey_(a3, v57, @"BSAutoGuess_SourceBase");
    if (v58)
    {
      objc_msgSend_setObject_forKey_(v18, v59, v58, @"kBSAutoGuessSetupOptionKey_SourceBase");
    }

    if (v56)
    {
      v65 = 7;
    }

    else
    {
      v65 = 6;
    }

    goto LABEL_41;
  }

  if ((objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v52, @"BSSetupRecommend_OfferExtendOverEthernet") & 1) != 0 || objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v78, @"BSSetupRecommend_AskUserChooseBaseWired"))
  {
    v79 = objc_msgSend_objectForKey_(a3, v78, @"BSAutoGuess_SourceBase");
    if (v79)
    {
      objc_msgSend_setObject_forKey_(v18, v80, v79, @"kBSAutoGuessSetupOptionKey_SourceBase");
    }

    v65 = 8;
    goto LABEL_41;
  }

  if ((objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v78, @"BSSetupRecommend_OfferCreate") & 1) != 0 || objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v81, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable"))
  {
    v82 = objc_msgSend_objectForKey_(a4, v81, @"kBSAutoGuessSetupOptionKey_SkipInternetTests");
    objc_msgSend_BOOLValue(v82, v83, v84);
    result = sub_23EBBEF98(self->_configContext, 1, v85, v86, v87, v88, v89, v90);
    if (result)
    {
      return result;
    }

    if (objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v91, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable"))
    {
      v93 = objc_msgSend_objectForKey_(a3, v92, @"BSAutoGuess_SourceBase");
      if (v93)
      {
        objc_msgSend_setObject_forKey_(v18, v94, v93, @"kBSAutoGuessSetupOptionKey_SourceBase");
        v65 = 12;
        goto LABEL_41;
      }

      return -6727;
    }

    v65 = 1;
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v81, @"BSSetupRecommend_OfferJoinNetwork") & 1) != 0 || objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v95, @"BSSetupRecommend_AskUserChooseNetworkToJoin"))
    {
      v96 = objc_msgSend_objectForKey_(a3, v95, @"BSAutoGuess_SourceNetwork");
      if (v96)
      {
        objc_msgSend_setObject_forKey_(v18, v97, v96, @"kBSAutoGuessSetupOptionKey_SourceNetwork");
      }

      if ((v44 & 0xFFFFFFFE) == 2 && !objc_msgSend_objectForKey_(v18, v97, @"kBSAutoGuessSetupOptionKey_BasePassword"))
      {
        result = sub_23EBBED88(self->_configContext, 0, v98, v99, v100, v101, v102, v103);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_23EBBEF98(self->_configContext, 1, v98, v99, v100, v101, v102, v103);
        if (result)
        {
          return result;
        }
      }

      v65 = 2;
      goto LABEL_41;
    }

    if (objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v95, @"BSSetupRecommend_OfferRestore"))
    {
      v106 = objc_msgSend_objectForKey_(a4, v104, @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
      if (v106)
      {
        objc_msgSend_setObject_forKey_(v18, v105, v106, @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
      }

      if (objc_msgSend_objectForKey_(v106, v105, @"device"))
      {
        objc_msgSend_setObject_forKey_(v18, v107, v45, @"kBSAutoGuessSetupOptionKey_BaseName");
      }

      v65 = 3;
      goto LABEL_41;
    }

    if (!objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v104, @"BSSetupRecommend_OfferReplaceConfiguration"))
    {
      if (!objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v108, @"BSSetupRecommend_OfferReplace"))
      {
        return -6735;
      }

      v118 = objc_msgSend_objectForKey_(a3, v117, @"BSAutoGuess_SourceBase");
      if (!v118)
      {
        return -6727;
      }

      objc_msgSend_setObject_forKey_(v18, v119, v118, @"kBSAutoGuessSetupOptionKey_SourceBase");
      v65 = 9;
      goto LABEL_41;
    }

    v109 = objc_msgSend_objectForKey_(a4, v108, @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
    if (!v109)
    {
      return -6727;
    }

    objc_msgSend_setObject_forKey_(v18, v110, v109, @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
    result = sub_23EBBEF98(self->_configContext, 1, v111, v112, v113, v114, v115, v116);
    if (result)
    {
      return result;
    }

    v65 = 4;
  }

LABEL_41:
  result = sub_23EBBC828(self->_configContext, v65, v18, v60, v61, v62, v63, v64);
  if (!result)
  {
    configContext = self->_configContext;
    v68 = objc_msgSend_objectForKey_(a4, v66, @"kBSAutoGuessSetupOptionKey_RecommendationIsAutomatic");
    v71 = objc_msgSend_BOOLValue(v68, v69, v70);

    return sub_23EBBF030(configContext, v71, v72, v73, v74, v75, v76, v77);
  }

  return result;
}

- (int)setupWithTargetNetwork:(id)a3
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (a3)
  {
    return sub_23EBBC8E4(configContext, a3, a3, v3, v4, v5, v6, v7);
  }

  return -6705;
}

- (int)setupWithTargetBaseStation:(id)a3 andSettings:(id)a4
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (a3)
  {
    return sub_23EBBC998(configContext, a3, a4, a4, v4, v5, v6, v7);
  }

  return -6705;
}

- (void)handleBusyStart
{
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController(private) handleBusyStart]", 800, "_busy:\n %d\n", v2, v3, v4, v5, self->_busy);
  }

  self->_busy = 1;
  self->_needToNilBonjour = 0;
}

- (void)handleBusyComplete
{
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController(private) handleBusyComplete]", 800, "_busy:\n %d\n", v2, v3, v4, v5, self->_busy);
  }

  self->_busy = 0;
  self->_performingManualRead = 0;
  if (self->_needToNilBonjour)
  {

    MEMORY[0x2821F9670](self, sel_setBonjourRecord_, 0);
  }
}

- (void)setupWiFiState
{
  v4 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2);
  AutoJoinState = objc_msgSend_getAutoJoinState(v4, v5, v6);
  self->_autoJoinState = AutoJoinState;
  if (AutoJoinState)
  {
    objc_msgSend_setAutoJoinState_(v4, v8, 0);
  }

  isScanningActive = objc_msgSend_isScanningActive(v4, v8, v9);
  self->_scanningState = isScanningActive;
  if (isScanningActive)
  {
    if (objc_msgSend_isScanInProgress(v4, v11, v12))
    {
      objc_msgSend_cancelAsync(v4, v13, v14);
    }

    objc_msgSend_activateScanning_(v4, v13, 0);
  }
}

- (void)resetWiFiState
{
  if (self->_autoJoinState)
  {
    v4 = objc_msgSend_sharedInstanceRef(WiFiUtils, a2, v2);
    objc_msgSend_setAutoJoinState_(v4, v5, self->_autoJoinState);
  }

  self->_autoJoinState = 0;
  if (self->_scanningState)
  {
    v6 = objc_msgSend_sharedInstanceRef(WiFiUtils, a2, v2);
    objc_msgSend_activateScanning_(v6, v7, self->_scanningState);
  }

  self->_scanningState = 0;
}

- (void)handleSetupComplete:(int)a3
{
  objc_msgSend_resetWiFiState(self, a2, *&a3);
  if (!a3)
  {
    v7 = objc_msgSend_bonjourRecord(self, v5, v6);
    sub_23EC127B0(v7, 0, v8, v9, v10, v11, v12, v13);
  }

  v20 = 0;
  v14 = sub_23EBBD2B8(self->_configContext);
  if (!sub_23EBEB420(v14, &v20))
  {
    if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
    {
      sub_23EB75374(&dword_27E3818B0, "[AUSetupController(private) handleSetupComplete:]", 800, "instrumentation:\n %@\n", v16, v17, v18, v19, v20);
    }

    objc_msgSend_setLastInstrumentation_(self, v15, v20);
  }
}

- (void)handleTaskComplete
{
  objc_msgSend_resetWiFiState(self, a2, v2);

  objc_msgSend_setActiveTask_(self, v4, 0);
}

- (void)logChangesToCCL
{
  v3 = objc_msgSend_bsRef(self, a2, v2);

  MEMORY[0x2821F9670](ConfigChangeLogs, sel_writeConfigChangeLog_, v3);
}

- (id)targetBaseInfoDict
{
  if (!self->_configContext)
  {
    return 0;
  }

  v105 = 0;
  v106 = 0;
  v104 = 0;
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (sub_23EBBEC90(self->_configContext, &v106))
  {
    v6 = 1;
  }

  else
  {
    v6 = v106 == 0;
  }

  if (!v6 && !objc_msgSend_getValue_forBSSetting_(self, v5, &v105, 1651717454))
  {
    if (v105)
    {
      v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8);
      sub_23EBB6604(v106);
      v10 = sub_23EB6D3EC(1918979693);
      if (!objc_msgSend_getValue_forSettingPath_(self, v11, &v104, v10))
      {
        v12 = v104;
        if (v104)
        {
          v13 = sub_23EB6CDF8(1918979693);
          objc_msgSend_setObject_forKey_(v9, v14, v12, v13);
          sub_23EBB6604(v106);
          v15 = sub_23EB6D3EC(1651725131);
          if (!objc_msgSend_getValue_forSettingPath_(self, v16, &v104, v15))
          {
            v17 = v104;
            if (v104)
            {
              v18 = sub_23EB6CDF8(1651725131);
              objc_msgSend_setObject_forKey_(v9, v19, v17, v18);
              objc_msgSend_setObject_forKey_(v4, v20, v9, @"kSetupBaseStationInfoKey_RadioInfo");
              if (objc_msgSend_BOOLValue(v105, v21, v22))
              {
                v25 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v23, v24);
                sub_23EBB65F0(v106);
                v26 = sub_23EB6D3EC(1918979693);
                if (objc_msgSend_getValue_forSettingPath_(self, v27, &v104, v26))
                {
                  return v4;
                }

                v28 = v104;
                if (!v104)
                {
                  return v4;
                }

                v29 = sub_23EB6CDF8(1918979693);
                objc_msgSend_setObject_forKey_(v25, v30, v28, v29);
                sub_23EBB65F0(v106);
                v31 = sub_23EB6D3EC(1651725131);
                if (objc_msgSend_getValue_forSettingPath_(self, v32, &v104, v31))
                {
                  return v4;
                }

                v33 = v104;
                if (!v104)
                {
                  return v4;
                }

                v34 = sub_23EB6CDF8(1651725131);
                objc_msgSend_setObject_forKey_(v25, v35, v33, v34);
                objc_msgSend_setObject_forKey_(v4, v36, v25, @"kSetupBaseStationInfoKey_RadioInfo5GHz");
              }

              if (objc_msgSend_bonjourRecord(self, v23, v24))
              {
                v39 = objc_msgSend_bonjourRecord(self, v37, v38);
                objc_msgSend_setObject_forKey_(v4, v40, v39, @"kSetupBaseStationInfoKey_BrowseRecord");
                v43 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v41, v42);
                if (!objc_msgSend_getValue_forBSSetting_(self, v44, &v104, 1937330263))
                {
                  v45 = v104;
                  if (v104)
                  {
                    v46 = sub_23EB6CDF8(1937330263);
                    objc_msgSend_setObject_forKey_(v43, v47, v45, v46);
                    if (!objc_msgSend_getValue_forBSSetting_(self, v48, &v104, 1937329773))
                    {
                      v49 = v104;
                      if (v104)
                      {
                        v50 = sub_23EB6CDF8(1937329773);
                        objc_msgSend_setObject_forKey_(v43, v51, v49, v50);
                        if (!objc_msgSend_getValue_forBSSetting_(self, v52, &v104, 1937326416))
                        {
                          v53 = v104;
                          if (v104)
                          {
                            v54 = sub_23EB6CDF8(1937326416);
                            objc_msgSend_setObject_forKey_(v43, v55, v53, v54);
                            objc_msgSend_setObject_forKey_(v4, v56, v43, @"kSetupBaseStationInfoKey_GeneralInfo");
                            if (!objc_msgSend_hasACPFeature_(self, v57, 1297314927))
                            {
                              goto LABEL_39;
                            }

                            v60 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v58, v59);
                            if (!objc_msgSend_getValue_forBSSetting_(self, v61, &v104, 1651721805))
                            {
                              v62 = v104;
                              if (v104)
                              {
                                v63 = sub_23EB6CDF8(1651721805);
                                objc_msgSend_setObject_forKey_(v60, v64, v62, v63);
                                if (objc_msgSend_integerValue(v104, v65, v66) == 1)
                                {
                                  if (objc_msgSend_getValue_forBSSetting_(self, v67, &v104, 1718842224))
                                  {
                                    return v4;
                                  }

                                  v45 = v104;
                                  if (!v104)
                                  {
                                    return v4;
                                  }
                                }

                                else
                                {
                                  if (objc_msgSend_integerValue(v104, v67, v68) != 2)
                                  {
                                    v104 = 0;
                                    goto LABEL_38;
                                  }

                                  v104 = v45;
                                }

                                v71 = sub_23EB6CDF8(1718842224);
                                objc_msgSend_setObject_forKey_(v60, v72, v45, v71);
LABEL_38:
                                objc_msgSend_setObject_forKey_(v4, v70, v60, @"kSetupBaseStationInfoKey_DiskInfo");
LABEL_39:
                                if (objc_msgSend_hasACPFeature_(self, v58, 1198748750))
                                {
                                  v75 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v73, v74);
                                  v76 = sub_23EB6D3EC(1651722053);
                                  if (objc_msgSend_getValue_forSettingPath_(self, v77, &v104, v76))
                                  {
                                    return v4;
                                  }

                                  v78 = v104;
                                  if (!v104)
                                  {
                                    return v4;
                                  }

                                  v79 = sub_23EB6CDF8(1651722053);
                                  objc_msgSend_setObject_forKey_(v75, v80, v78, v79);
                                  if (objc_msgSend_integerValue(v104, v81, v82))
                                  {
                                    v84 = sub_23EB6D3EC(1651722062);
                                    if (objc_msgSend_getValue_forSettingPath_(self, v85, &v104, v84))
                                    {
                                      return v4;
                                    }

                                    v86 = v104;
                                    if (!v104)
                                    {
                                      return v4;
                                    }

                                    v87 = sub_23EB6CDF8(1651722062);
                                    objc_msgSend_setObject_forKey_(v75, v88, v86, v87);
                                    v89 = sub_23EB6D3EC(1651722067);
                                    if (objc_msgSend_getValue_forSettingPath_(self, v90, &v104, v89))
                                    {
                                      return v4;
                                    }

                                    v91 = v104;
                                    if (!v104)
                                    {
                                      return v4;
                                    }

                                    v92 = sub_23EB6CDF8(1651722067);
                                    objc_msgSend_setObject_forKey_(v75, v93, v91, v92);
                                    v94 = sub_23EB6D3EC(1651722064);
                                    if (objc_msgSend_getValue_forSettingPath_(self, v95, &v104, v94))
                                    {
                                      return v4;
                                    }

                                    v96 = v104;
                                    if (!v104)
                                    {
                                      return v4;
                                    }

                                    v97 = sub_23EB6CDF8(1651722064);
                                    objc_msgSend_setObject_forKey_(v75, v98, v96, v97);
                                  }

                                  objc_msgSend_setObject_forKey_(v4, v83, v75, @"kSetupBaseStationInfoKey_GuestNetworkInfo");
                                }

                                if (!self->_autoGuessSetupRecommendation)
                                {
                                  return v4;
                                }

                                v103 = 0;
                                v99 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v73, v74);
                                objc_msgSend_setObject_forKey_(v99, v100, self->_autoGuessSetupRecommendation, @"BSAutoGuess_Recommendation");
                                v101 = sub_23EBBF0C8(self->_configContext, &v103);
                                if (v101 != -6727)
                                {
                                  if (v101 || !v103)
                                  {
                                    return v4;
                                  }

                                  objc_msgSend_setObject_forKey_(v99, v102, v103, @"BSAutoGuess_SourceBase");
                                }

                                objc_msgSend_setObject_forKey_(v4, v102, v99, @"kSetupBaseStationInfoKey_RecommendationInfo");
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

  return v4;
}

@end