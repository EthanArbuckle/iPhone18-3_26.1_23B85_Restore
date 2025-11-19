@interface ASAccessorySession
+ (BOOL)validateAccessorySetupBundleInfo:(id)a3 error:(id *)a4;
- (ASAccessorySession)init;
- (BOOL)_hasBluetoothASK;
- (BOOL)_verifyCoreBluetoothStateToActivatePicker:(id)a3;
- (NSArray)accessories;
- (OS_dispatch_queue)queue;
- (void)_activateWithQueue:(id)a3 eventHandler:(id)a4;
- (void)_applicationWillEnterForegroundNotification;
- (void)_fetchAuthorizedAccesoriesIfNeeded;
- (void)_fetchBluetoothGlobalTCC;
- (void)_finishDiscovery:(id)a3;
- (void)_handleDASessionEventHandler:(id)a3 session:(id)a4;
- (void)_invalidated;
- (void)_notifyAccesoriesChangedIfNeeded:(id)a3 bundleID:(id)a4 eventType:(int64_t)a5;
- (void)_removeAccessory:(id)a3 completionHandler:(id)a4;
- (void)_setupDeviceAccessSession;
- (void)_showPickerForDisplayItems:(id)a3 completionHandler:(id)a4;
- (void)_updateAccessory:(id)a3 settings:(id)a4 completionHandler:(id)a5;
- (void)_updatePickerWithDiscoveredDisplayItems:(id)a3 completionHandler:(id)a4;
- (void)_validateDiscoveryDescriptor:(id)a3;
- (void)_validateDisplayItem:(id)a3;
- (void)_validateMigrationDisplayItem:(id)a3;
- (void)activateWithQueue:(id)a3 eventHandler:(id)a4;
- (void)dealloc;
- (void)failAuthorization:(id)a3 completionHandler:(id)a4;
- (void)finishPickerDiscovery:(id)a3;
- (void)invalidate;
- (void)pickerDidReport:(id)a3;
- (void)relayPickerEvent:(id)a3;
- (void)removeAccessory:(id)a3 completionHandler:(id)a4;
- (void)renameAccessory:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)showPickerForDisplayItems:(id)a3 completionHandler:(id)a4;
- (void)showPickerWithCompletionHandler:(id)a3;
- (void)updateAccessory:(id)a3 settings:(id)a4 completionHandler:(id)a5;
- (void)updateAuthorization:(id)a3 descriptor:(id)a4 completionHandler:(id)a5;
- (void)updatePickerShowingDiscoveredDisplayItems:(id)a3 completionHandler:(id)a4;
@end

@implementation ASAccessorySession

- (ASAccessorySession)init
{
  v23.receiver = self;
  v23.super_class = ASAccessorySession;
  v2 = [(ASAccessorySession *)&v23 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 environment];
  v5 = [v4 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];

  if (v5)
  {
LABEL_5:
    v10 = [MEMORY[0x277CBEB38] dictionary];
    accessories = v2->_accessories;
    v2->_accessories = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    discoveredAccessories = v2->_discoveredAccessories;
    v2->_discoveredAccessories = v12;

    v2->_bluetoothTCCStateUnknown = 0;
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 bundleIdentifier];
    bundleID = v2->_bundleID;
    v2->_bundleID = v15;

    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v2 selector:sel__applicationWillEnterForegroundNotification name:@"UIApplicationWillEnterForegroundNotification" object:0];

    v18 = v2;
LABEL_6:

    return v2;
  }

  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 infoDictionary];

  v22 = 0;
  v8 = [ASAccessorySession validateAccessorySetupBundleInfo:v7 error:&v22];
  v9 = v22;
  if (v8)
  {

    goto LABEL_5;
  }

  v20 = FatalErrorF();
  [(ASAccessorySession *)v20 dealloc];
  return result;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateDone)
  {
    v4 = [ASAccessorySession dealloc];
    [(ASAccessorySession *)v4 activateWithEventHandler:v5, v6];
  }

  else
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self];

    v7.receiver = self;
    v7.super_class = ASAccessorySession;
    [(ASAccessorySession *)&v7 dealloc];
  }
}

- (void)activateWithQueue:(id)a3 eventHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ASAccessorySession_activateWithQueue_eventHandler___block_invoke;
    block[3] = &unk_278A01AA0;
    block[4] = self;
    v13 = v6;
    v14 = v7;
    v9 = v7;
    v10 = v6;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v11 = [ASAccessorySession activateWithQueue:eventHandler:];
    __53__ASAccessorySession_activateWithQueue_eventHandler___block_invoke(v11);
  }
}

- (void)_activateWithQueue:(id)a3 eventHandler:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    overrideAppBundleID = self->_overrideAppBundleID;
    v9 = overrideAppBundleID;
    if (v9)
    {
      objc_storeStrong(&self->_bundleID, overrideAppBundleID);
    }

    if (self->_dispatchQueue != v12)
    {
      objc_storeStrong(&self->_dispatchQueue, a3);
    }

    v10 = _Block_copy(v7);
    eventHandler = self->_eventHandler;
    self->_eventHandler = v10;

    [(ASAccessorySession *)self _setupDeviceAccessSession];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ASAccessorySession_invalidate__block_invoke;
  block[3] = &unk_278A01AC8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __32__ASAccessorySession_invalidate__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 56) & 1) == 0)
  {
    *(v1 + 56) = 1;
    if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      __32__ASAccessorySession_invalidate__block_invoke_cold_1(v2);
    }

    [*(*v2 + 88) invalidate];
    v3 = *v2;

    return [v3 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v5 = _Block_copy(self->_eventHandler);
    eventHandler = self->_eventHandler;
    self->_eventHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      [ASAccessorySession _invalidated];
    }

    v4 = [[ASAccessoryEvent alloc] initWithEventType:11];
    v5[2](v5, v4);
  }
}

- (void)_applicationWillEnterForegroundNotification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ASAccessorySession__applicationWillEnterForegroundNotification__block_invoke;
  block[3] = &unk_278A01AC8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

+ (BOOL)validateAccessorySetupBundleInfo:(id)a3 error:(id *)a4
{
  v167 = *MEMORY[0x277D85DE8];
  v126 = a3;
  v157 = 0;
  v158 = &v157;
  v159 = 0x3032000000;
  v160 = __Block_byref_object_copy_;
  v161 = __Block_byref_object_dispose_;
  v162 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__ASAccessorySession_validateAccessorySetupBundleInfo_error___block_invoke;
  aBlock[3] = &unk_278A01AF0;
  aBlock[4] = &v157;
  aBlock[5] = a4;
  v124 = _Block_copy(aBlock);
  v5 = [MEMORY[0x277CCAC38] processInfo];
  v6 = [v5 environment];
  v7 = [v6 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  v8 = v7 == 0;

  if (v8)
  {
    v9 = xpc_copy_entitlement_for_token();
    if (v9)
    {
      if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_91;
    }
  }

  v10 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v86 = 1;
    goto LABEL_93;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v118 = v158;
    v119 = ASErrorF(100, "ASAccessorySession only supported from iOS 18.", v12, v13, v14, v15, v16, v17, v122);
    v86 = 0;
    v9 = v118[5];
    v118[5] = v119;
    goto LABEL_92;
  }

  [v126 objectForKeyedSubscript:@"NSAccessorySetupKitSupports"];
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v9 = v153 = 0u;
  v18 = [v9 countByEnumeratingWithState:&v152 objects:v166 count:16];
  if (!v18)
  {

LABEL_56:
    v84 = v158;
    v85 = ASErrorF(100, "Unable to initialize ASAccessorySession. Info property list '%s' should include at least '%s' or '%s'.", v24, v25, v26, v27, v28, v29, "NSAccessorySetupKitSupports");
    v86 = 0;
    v87 = v84[5];
    v84[5] = v85;
    goto LABEL_76;
  }

  v19 = 0;
  v20 = 0;
  v21 = *v153;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v153 != v21)
      {
        objc_enumerationMutation(v9);
      }

      v23 = *(*(&v152 + 1) + 8 * i);
      v20 |= [v23 isEqualToString:@"Bluetooth"];
      v19 |= [v23 isEqualToString:@"WiFi"];
    }

    v18 = [v9 countByEnumeratingWithState:&v152 objects:v166 count:16];
  }

  while (v18);

  if (((v20 | v19) & 1) == 0)
  {
    goto LABEL_56;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_38;
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  obj = v126;
  v30 = [obj countByEnumeratingWithState:&v148 objects:v165 count:16];
  if (!v30)
  {
    goto LABEL_37;
  }

  v31 = *v149;
  v123 = *v149;
  do
  {
    v32 = 0;
    v125 = v30;
    do
    {
      if (*v149 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v130 = *(*(&v148 + 1) + 8 * v32);
      if (![&unk_2849A11E0 containsObject:?])
      {
        goto LABEL_35;
      }

      v33 = [obj objectForKeyedSubscript:v130];
      objc_opt_class();
      v34 = objc_opt_isKindOfClass();

      if ((v34 & 1) == 0)
      {
        v108 = v158;
        v109 = ASErrorF(100, "Unable to initialize ASAccessorySession. Info property list '%@' is not an array.", v35, v36, v37, v38, v39, v40, v130);
        v129 = v108[5];
        v108[5] = v109;

        goto LABEL_74;
      }

      v128 = [obj objectForKeyedSubscript:v130];
      if (![v128 count])
      {
        v110 = v158;
        v111 = ASErrorF(100, "Unable to initialize ASAccessorySession. Info property list '%@' does not have any values.", v41, v42, v43, v44, v45, v46, v130);
LABEL_80:
        v47 = v110[5];
        v110[5] = v111;
        goto LABEL_58;
      }

      if ([v128 count] >= 0x1F5)
      {
        v110 = v158;
        [v128 count];
        v111 = ASErrorF(100, "Unable to initialize ASAccessorySession. Info property list '%@' exceeds key's maximum value limit of %d. (current: %lu)", v112, v113, v114, v115, v116, v117, v130);
        goto LABEL_80;
      }

      if (![v130 isEqualToString:@"NSAccessorySetupBluetoothCompanyIdentifiers"])
      {
        goto LABEL_34;
      }

      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v47 = v128;
      v48 = [v47 countByEnumeratingWithState:&v144 objects:v164 count:16];
      if (!v48)
      {
        goto LABEL_33;
      }

      v49 = *v145;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v145 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v144 + 1) + 8 * j);
          if (![v51 caseInsensitiveCompare:@"4C"] && !objc_msgSend(v51, "caseInsensitiveCompare:", @"004C"))
          {
            v88 = v158;
            v89 = ASErrorF(100, "Unable to initialize ASAccessorySession. Invalid Company ID '%@' in property list item '%@'.", v52, v53, v54, v55, v56, v57, v51);
            v90 = v88[5];
            v88[5] = v89;

LABEL_58:
            goto LABEL_74;
          }
        }

        v48 = [v47 countByEnumeratingWithState:&v144 objects:v164 count:16];
      }

      while (v48);
LABEL_33:

      v31 = v123;
      v30 = v125;
LABEL_34:

LABEL_35:
      ++v32;
    }

    while (v32 != v30);
    v30 = [obj countByEnumeratingWithState:&v148 objects:v165 count:16];
  }

  while (v30);
LABEL_37:

LABEL_38:
  if ((v19 & 1) == 0)
  {
LABEL_91:
    v86 = 1;
    goto LABEL_92;
  }

  [v126 objectForKeyedSubscript:@"WiFiAwareServices"];
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  obj = v141 = 0u;
  v58 = [obj allValues];
  v59 = [v58 countByEnumeratingWithState:&v140 objects:v163 count:16];
  if (!v59)
  {
    v61 = 0;
    v83 = 1;
    goto LABEL_61;
  }

  LOBYTE(v60) = 0;
  LOBYTE(v61) = 0;
  v62 = *v141;
  v63 = v58;
  while (2)
  {
    v64 = 0;
    while (2)
    {
      if (*v141 != v62)
      {
        objc_enumerationMutation(v58);
      }

      v65 = *(*(&v140 + 1) + 8 * v64);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v100 = v158;
        v101 = ASErrorF(100, "Unable to initialize ASAccessorySession. Bad format for Wi-Fi Aware services.", v66, v67, v68, v69, v70, v71, v122);
        v72 = v100[5];
        v100[5] = v101;
LABEL_71:

        goto LABEL_74;
      }

      v72 = v65;
      v73 = [v72 allKeys];
      v74 = [v73 count] == 0;

      if (v74)
      {
        v102 = v158;
        v103 = ASErrorF(100, "Unable to initialize ASAccessorySession. No service role declared for Wi-Fi Aware Service.", v75, v76, v77, v78, v79, v80, v122);
        v104 = v102[5];
        v102[5] = v103;

        goto LABEL_71;
      }

      if (v61)
      {
        v61 = 1;
      }

      else
      {
        v81 = [v72 allKeys];
        v61 = [v81 containsObject:@"Subscribable"];
      }

      if (v60)
      {
        v60 = 1;
      }

      else
      {
        v82 = [v72 allKeys];
        v60 = [v82 containsObject:@"Publishable"];
      }

      ++v64;
      v58 = v63;
      if (v59 != v64)
      {
        continue;
      }

      break;
    }

    v59 = [v63 countByEnumeratingWithState:&v140 objects:v163 count:16];
    if (v59)
    {
      continue;
    }

    break;
  }

  v83 = v60 ^ 1;
LABEL_61:

  v91 = xpc_copy_entitlement_for_token();
  v98 = v91;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v139 = 0;
  v132 = 0;
  v133 = &v132;
  v134 = 0x2020000000;
  v135 = 0;
  if (!v91)
  {
LABEL_64:
    v99 = 0;
LABEL_65:
    if (v61 && (v133[3] & 1) == 0)
    {
      v106 = v158;
      v105 = ASErrorF(100, "Unable to initialize ASAccessorySession. Missing entitlement for Wi-Fi Aware Subscriber '%s'.", v92, v93, v94, v95, v96, v97, "Subscribe");
      goto LABEL_73;
    }

    if (((v83 | v99) & 1) == 0)
    {
      v106 = v158;
      v105 = ASErrorF(100, "Unable to initialize ASAccessorySession. Missing entitlement for Wi-Fi Aware Publisher '%s'.", v92, v93, v94, v95, v96, v97, "Publish");
      goto LABEL_73;
    }

    _Block_object_dispose(&v132, 8);
    _Block_object_dispose(&v136, 8);

    v86 = 1;
    goto LABEL_75;
  }

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __61__ASAccessorySession_validateAccessorySetupBundleInfo_error___block_invoke_2;
  applier[3] = &unk_278A01B18;
  applier[4] = &v136;
  applier[5] = &v132;
  xpc_array_apply(v91, applier);
  v99 = *(v137 + 24);
  if (v99)
  {
    goto LABEL_65;
  }

  if (v133[3])
  {
    goto LABEL_64;
  }

  v105 = ASErrorF(100, "Unable to initialize ASAccessorySession. Need at least Publish or Subscribe for entitlement %s", v92, v93, v94, v95, v96, v97, "com.apple.developer.wifi-aware");
  v106 = v158;
LABEL_73:
  v107 = v106[5];
  v106[5] = v105;

  _Block_object_dispose(&v132, 8);
  _Block_object_dispose(&v136, 8);

LABEL_74:
  v86 = 0;
LABEL_75:
  v87 = obj;
LABEL_76:

LABEL_92:
LABEL_93:
  v124[2](v124);

  _Block_object_dispose(&v157, 8);
  v120 = *MEMORY[0x277D85DE8];
  return v86;
}

void __61__ASAccessorySession_validateAccessorySetupBundleInfo_error___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    if (gLogCategory_ASAccessorySession > 90)
    {
      goto LABEL_6;
    }

    if (gLogCategory_ASAccessorySession == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_6:
        if (*(a1 + 40))
        {
          **(a1 + 40) = *(*(*(a1 + 32) + 8) + 40);
        }

        return;
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = CUPrintNSError();
    LogPrintF();

    goto LABEL_6;
  }
}

uint64_t __61__ASAccessorySession_validateAccessorySetupBundleInfo_error___block_invoke_2(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string_ptr];
    if ([v5 isEqualToString:@"Publish"])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    if ([v5 isEqualToString:@"Subscribe"])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return 1;
}

- (void)_setupDeviceAccessSession
{
  v3 = self->_bundleID;
  v4 = objc_alloc_init(MEMORY[0x277D04780]);
  objc_storeStrong(&self->_daSession, v4);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.ask.sessionQueue", v5);

  objc_storeStrong(&self->_sessionQueue, v6);
  [v4 setBundleID:v3];
  [v4 setDeviceFlags:8];
  [v4 setDispatchQueue:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__ASAccessorySession__setupDeviceAccessSession__block_invoke;
  v9[3] = &unk_278A01B68;
  v9[4] = self;
  v9[5] = v4;
  [v4 setEventHandler:v9];
  v7 = [(ASAccessorySession *)self xpcListenerEndpoint];

  if (v7)
  {
    v8 = [(ASAccessorySession *)self xpcListenerEndpoint];
    [v4 setXpcListenerEndpoint:v8];
  }

  [v4 activate];
}

void __47__ASAccessorySession__setupDeviceAccessSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ASAccessorySession__setupDeviceAccessSession__block_invoke_2;
  block[3] = &unk_278A01B40;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

- (void)pickerDidReport:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(DASession *)self->_daSession eventHandler];
        v10[2](v10, v9);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleDASessionEventHandler:(id)a3 session:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_bundleID;
  v9 = v6;
  v69 = v7;
  if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {
    [ASAccessorySession _handleDASessionEventHandler:session:];
  }

  v10 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
    v13 = [v12 containingBundleRecord];
    v14 = [v13 bundleIdentifier];

    v8 = v14;
  }

  v15 = [v9 eventType];
  if (v15 <= 40)
  {
    switch(v15)
    {
      case 10:
        v27 = [v9 error];

        if (v27)
        {
          if (gLogCategory_ASAccessorySession <= 90 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
          {
            [ASAccessorySession _handleDASessionEventHandler:v9 session:?];
          }

          v42 = [[ASAccessoryEvent alloc] initWithEventType:11];
          v53 = ASErrorF(100, "Unable to activate session.", v47, v48, v49, v50, v51, v52, v66);
          [(ASAccessoryEvent *)v42 setError:v53];
        }

        else
        {
          v42 = [v69 availableDevices];
          [(ASAccessorySession *)self _notifyAccesoriesChangedIfNeeded:v42 bundleID:v8 eventType:10];
        }

        break;
      case 15:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = v9;
          if ([v31 devicesMigrated])
          {
            v32 = self;
            objc_sync_enter(v32);
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v68 = v31;
            v33 = [v31 devices];
            v34 = [v33 countByEnumeratingWithState:&v70 objects:v78 count:16];
            if (v34)
            {
              v35 = *v71;
              do
              {
                for (i = 0; i != v34; ++i)
                {
                  if (*v71 != v35)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v37 = *(*(&v70 + 1) + 8 * i);
                  v38 = [v37 identifier];
                  v39 = [[ASAccessory alloc] initWithDADevice:v37 bundleID:v8];
                  if (v39)
                  {
                    [(NSMutableDictionary *)v32->_accessories setObject:v39 forKeyedSubscript:v38];
                  }
                }

                v34 = [v33 countByEnumeratingWithState:&v70 objects:v78 count:16];
              }

              while (v34);
            }

            v40 = [[ASAccessoryEvent alloc] initWithEventType:20];
            v41 = [(ASAccessorySession *)v32 eventHandler];
            (v41)[2](v41, v40);

            objc_sync_exit(v32);
            v31 = v68;
          }
        }

        goto LABEL_88;
      case 40:
        break;
      default:
        goto LABEL_88;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v28 = [v9 device];
      v29 = [v28 identifier];
      v54 = [v28 appAccessInfoMap];
      v55 = [v54 objectForKeyedSubscript:v8];
      if ([v55 state])
      {
      }

      else
      {
        v56 = [v28 bluetoothAdvertisementData];

        if (v56 && ([(ASPickerDisplaySettings *)self->_pickerDisplaySettings options]& 1) != 0)
        {
          v30 = [[ASDiscoveredAccessory alloc] initWithDADevice:v28 bundleID:v8];
          [(NSMutableDictionary *)self->_discoveredAccessories setObject:v30 forKeyedSubscript:v29];
          v43 = [[ASAccessoryEvent alloc] initWithEventType:33];
          [(ASAccessoryEvent *)v43 setAccessory:v30];
          v57 = [(ASAccessorySession *)self eventHandler];
          (v57)[2](v57, v43);

LABEL_86:
LABEL_87:

          goto LABEL_88;
        }
      }
    }

LABEL_66:
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v28 = v9;
      v29 = [v28 device];
      v30 = [v29 identifier];
      v43 = [[ASAccessory alloc] initWithDADevice:v29 bundleID:v8];
      if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        [ASAccessorySession _handleDASessionEventHandler:session:];
      }

      if (!v43)
      {
        goto LABEL_86;
      }

      v58 = [v29 appAccessInfoMap];
      v59 = [v58 objectForKeyedSubscript:v8];
      v60 = [v59 state];

      if (v60 < 11)
      {
        goto LABEL_86;
      }

      if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        [ASAccessorySession _handleDASessionEventHandler:session:];
      }

      v61 = self;
      objc_sync_enter(v61);
      v62 = [(NSMutableDictionary *)v61->_accessories objectForKeyedSubscript:v30];

      [(NSMutableDictionary *)v61->_accessories setObject:v43 forKeyedSubscript:v30];
      if (v62)
      {
        v63 = 32;
      }

      else
      {
        v63 = 30;
      }

      objc_sync_exit(v61);

      v45 = [[ASAccessoryEvent alloc] initWithEventType:v63];
      [(ASAccessoryEvent *)v45 setAccessory:v43];
      v46 = [(ASAccessorySession *)v61 eventHandler];
      goto LABEL_85;
    }

    goto LABEL_88;
  }

  if (v15 != 41)
  {
    if (v15 != 42)
    {
      if (v15 == 50)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v9;
          if ([v16 devicesMigrated])
          {
            v17 = self;
            objc_sync_enter(v17);
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v67 = v16;
            v18 = [v16 devices];
            v19 = [v18 countByEnumeratingWithState:&v74 objects:v79 count:16];
            if (v19)
            {
              v20 = *v75;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v75 != v20)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v22 = *(*(&v74 + 1) + 8 * j);
                  v23 = [v22 identifier];
                  v24 = [[ASAccessory alloc] initWithDADevice:v22 bundleID:v8];
                  if (v24)
                  {
                    [(NSMutableDictionary *)v17->_accessories setObject:v24 forKeyedSubscript:v23];
                  }
                }

                v19 = [v18 countByEnumeratingWithState:&v74 objects:v79 count:16];
              }

              while (v19);
            }

            v25 = [[ASAccessoryEvent alloc] initWithEventType:20];
            v26 = [(ASAccessorySession *)v17 eventHandler];
            (v26)[2](v26, v25);

            objc_sync_exit(v17);
            v16 = v67;
          }
        }
      }

      goto LABEL_88;
    }

    goto LABEL_66;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v28 = v9;
    v29 = [v28 device];
    v30 = [v29 identifier];
    if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      [ASAccessorySession _handleDASessionEventHandler:session:];
    }

    v43 = [[ASAccessory alloc] initWithDADevice:v29 bundleID:v8];
    if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      [ASAccessorySession _handleDASessionEventHandler:session:];
    }

    if (!v43)
    {
      goto LABEL_87;
    }

    v44 = self;
    objc_sync_enter(v44);
    [(NSMutableDictionary *)v44->_accessories setObject:0 forKeyedSubscript:v30];
    objc_sync_exit(v44);

    v45 = [[ASAccessoryEvent alloc] initWithEventType:31];
    [(ASAccessoryEvent *)v45 setAccessory:v43];
    v46 = [(ASAccessorySession *)v44 eventHandler];
LABEL_85:
    v64 = v46;
    (*(v46 + 16))(v46, v45);

    goto LABEL_86;
  }

LABEL_88:

  v65 = *MEMORY[0x277D85DE8];
}

- (OS_dispatch_queue)queue
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_dispatchQueue;
  objc_sync_exit(v2);

  return v3;
}

- (void)relayPickerEvent:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ASAccessorySession_relayPickerEvent___block_invoke;
  v7[3] = &unk_278A01B90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __39__ASAccessorySession_relayPickerEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) eventHandler];
    v3[2](v3, *(a1 + 40));
  }
}

- (void)_fetchAuthorizedAccesoriesIfNeeded
{
  if (gLogCategory_ASAccessorySession <= 90 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

void __56__ASAccessorySession__fetchAuthorizedAccesoriesIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy_;
  v20[4] = __Block_byref_object_dispose_;
  v21 = 0;
  v7 = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ASAccessorySession__fetchAuthorizedAccesoriesIfNeeded__block_invoke_2;
  aBlock[3] = &unk_278A01BB8;
  v19 = v20;
  v8 = v7;
  v18 = v8;
  v9 = _Block_copy(aBlock);
  if (!v8 || !v6)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ASAccessorySession__fetchAuthorizedAccesoriesIfNeeded__block_invoke_3;
    block[3] = &unk_278A01B40;
    block[4] = v10;
    v12 = v8;
    v13 = *(a1 + 40);
    v15 = v12;
    v16 = v13;
    dispatch_async(v11, block);
  }

  v9[2](v9);

  _Block_object_dispose(v20, 8);
}

void __56__ASAccessorySession__fetchAuthorizedAccesoriesIfNeeded__block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && gLogCategory_ASAccessorySession <= 90)
  {
    if (gLogCategory_ASAccessorySession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(*(*(a1 + 40) + 8) + 40);
    }

    v3 = CUPrintNSError();
    v4 = *(a1 + 32);
    LogPrintF();
  }
}

- (void)_notifyAccesoriesChangedIfNeeded:(id)a3 bundleID:(id)a4 eventType:(int64_t)a5
{
  v88 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v57 = self;
  accessories = self->_accessories;
  p_accessories = &self->_accessories;
  v61 = accessories;
  v55 = [MEMORY[0x277CBEB18] array];
  v54 = [MEMORY[0x277CBEB18] array];
  v53 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v81;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v81 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v80 + 1) + 8 * i);
        if ([v17 state] != 1)
        {
          v18 = [[ASAccessory alloc] initWithDADevice:v17 bundleID:v8];
          v19 = v18;
          if (v18)
          {
            v20 = [(ASAccessory *)v18 identifier];
            [v11 setObject:v19 forKeyedSubscript:v20];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v14);
  }

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __74__ASAccessorySession__notifyAccesoriesChangedIfNeeded_bundleID_eventType___block_invoke;
  v77[3] = &unk_278A01C08;
  v21 = v11;
  v78 = v21;
  v22 = v53;
  v79 = v22;
  v23 = v61;
  [(NSMutableDictionary *)v61 enumerateKeysAndObjectsUsingBlock:v77];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __74__ASAccessorySession__notifyAccesoriesChangedIfNeeded_bundleID_eventType___block_invoke_2;
  v74[3] = &unk_278A01C30;
  v74[4] = v61;
  v24 = v55;
  v75 = v24;
  v25 = v54;
  v76 = v25;
  [v21 enumerateKeysAndObjectsUsingBlock:v74];
  v26 = v57;
  objc_sync_enter(v26);
  objc_storeStrong(p_accessories, v11);
  objc_sync_exit(v26);

  if (a5 == 10)
  {
    v27 = [[ASAccessoryEvent alloc] initWithEventType:10];
    v28 = [(ASAccessorySession *)v26 eventHandler];
    (v28)[2](v28, v27);
  }

  else
  {
    v58 = v25;
    v60 = v24;
    v56 = v21;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v29 = v22;
    v30 = [v29 countByEnumeratingWithState:&v70 objects:v86 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v71;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v71 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v70 + 1) + 8 * j);
          v35 = [[ASAccessoryEvent alloc] initWithEventType:31];
          [(ASAccessoryEvent *)v35 setAccessory:v34];
          v36 = [(ASAccessorySession *)v26 eventHandler];
          (v36)[2](v36, v35);
        }

        v31 = [v29 countByEnumeratingWithState:&v70 objects:v86 count:16];
      }

      while (v31);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v37 = v60;
    v38 = [v37 countByEnumeratingWithState:&v66 objects:v85 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v67;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v67 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v66 + 1) + 8 * k);
          v43 = [[ASAccessoryEvent alloc] initWithEventType:30];
          [(ASAccessoryEvent *)v43 setAccessory:v42];
          v44 = [(ASAccessorySession *)v26 eventHandler];
          (v44)[2](v44, v43);
        }

        v39 = [v37 countByEnumeratingWithState:&v66 objects:v85 count:16];
      }

      while (v39);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v27 = v58;
    v45 = [(ASAccessoryEvent *)v27 countByEnumeratingWithState:&v62 objects:v84 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v63;
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v63 != v47)
          {
            objc_enumerationMutation(v27);
          }

          v49 = *(*(&v62 + 1) + 8 * m);
          v50 = [[ASAccessoryEvent alloc] initWithEventType:32];
          [(ASAccessoryEvent *)v50 setAccessory:v49];
          v51 = [(ASAccessorySession *)v26 eventHandler];
          (v51)[2](v51, v50);
        }

        v46 = [(ASAccessoryEvent *)v27 countByEnumeratingWithState:&v62 objects:v84 count:16];
      }

      while (v46);
    }

    v24 = v60;
    v23 = v61;
    v21 = v56;
    v25 = v58;
  }

  v52 = *MEMORY[0x277D85DE8];
}

void __74__ASAccessorySession__notifyAccesoriesChangedIfNeeded_bundleID_eventType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];

  if (!v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __74__ASAccessorySession__notifyAccesoriesChangedIfNeeded_bundleID_eventType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v11];
  v7 = v6;
  if (!v6)
  {
    v10 = *(a1 + 40);
LABEL_6:
    [v10 addObject:v5];
    goto LABEL_8;
  }

  v8 = [v6 identifier];
  if ([v8 isEqualToString:v11])
  {
    v9 = [v7 isEqual:v5];

    if (v9)
    {
      goto LABEL_8;
    }

    v10 = *(a1 + 48);
    goto LABEL_6;
  }

LABEL_8:
}

- (NSArray)accessories
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_accessories allValues];
  objc_sync_exit(v2);

  return v3;
}

- (void)failAuthorization:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {
    [ASAccessorySession failAuthorization:completionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke;
  block[3] = &unk_278A01C80;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke_cold_1();
    goto LABEL_7;
  }

  if (*(v2 + 56) == 1)
  {
LABEL_7:
    __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke_cold_3();
    goto LABEL_8;
  }

  v1 = a1;
  v3 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_8:
    __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke_cold_2(v1, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  v12 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke_2;
  v14[3] = &unk_278A01C58;
  v13 = *(v1 + 40);
  v15 = *(v1 + 48);
  [v12 failWithAccessory:v13 completionHandler:v14];
}

- (void)removeAccessory:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {
    [ASAccessorySession removeAccessory:completionHandler:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ASAccessorySession_removeAccessory_completionHandler___block_invoke;
  block[3] = &unk_278A01AA0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __56__ASAccessorySession_removeAccessory_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if ((v2[8] & 1) == 0)
  {
    __56__ASAccessorySession_removeAccessory_completionHandler___block_invoke_cold_1();
    goto LABEL_7;
  }

  if (v2[56] == 1)
  {
LABEL_7:
    v5 = __56__ASAccessorySession_removeAccessory_completionHandler___block_invoke_cold_2();
    [(ASAccessorySession *)v5 _removeAccessory:v6 completionHandler:v7, v8];
    return;
  }

  v3 = a1[5];
  v4 = a1[6];

  [v2 _removeAccessory:v3 completionHandler:v4];
}

- (void)_removeAccessory:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASAccessorySession *)self overrideAppBundleID];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v11 bundleIdentifier];
  }

  v12 = objc_alloc(MEMORY[0x277D04730]);
  v13 = [v7 identifier];

  v14 = [v12 initWithBundleIdentifier:v10 deviceIdentifier:v13 state:0];
  v15 = [(ASAccessorySession *)self daSession];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__ASAccessorySession__removeAccessory_completionHandler___block_invoke;
  v17[3] = &unk_278A01CD0;
  v17[4] = self;
  v18 = v6;
  v16 = v6;
  [v15 removeDeviceAccess:v14 completionHandler:v17];
}

void __57__ASAccessorySession__removeAccessory_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__ASAccessorySession__removeAccessory_completionHandler___block_invoke_2;
  v6[3] = &unk_278A01CA8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __57__ASAccessorySession__removeAccessory_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 code];
    v10 = *(a1 + 40);
    if (v3 == 350006)
    {
      v11 = "User restricted accessory removal";
      v12 = 750;
    }

    else
    {
      v11 = "Unable to remove accessory";
      v12 = 1;
    }

    v15 = ASErrorF(v12, v11, v4, v5, v6, v7, v8, v9, v14);
    (*(v10 + 16))(v10, v15);
  }

  else
  {
    v13 = *(*(a1 + 40) + 16);

    v13();
  }
}

- (void)renameAccessory:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ASAccessorySession *)self overrideAppBundleID];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v13 bundleIdentifier];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ASAccessorySession_renameAccessory_options_completionHandler___block_invoke;
  block[3] = &unk_278A01CF8;
  block[4] = self;
  v18 = v8;
  v20 = v9;
  v21 = a4;
  v19 = v12;
  v15 = v8;
  v16 = v9;
  dispatch_async(dispatchQueue, block);
}

void __64__ASAccessorySession_renameAccessory_options_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 8) & 1) == 0)
  {
    __64__ASAccessorySession_renameAccessory_options_completionHandler___block_invoke_cold_1();
    goto LABEL_9;
  }

  if (*(v2 + 56) == 1)
  {
LABEL_9:
    __64__ASAccessorySession_renameAccessory_options_completionHandler___block_invoke_cold_2();
    goto LABEL_10;
  }

  v1 = a1;
  v3 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
    [v13 updateWithAccessory:v1[5] options:v1[8] for:v1[6] completionHandler:v1[7]];
    goto LABEL_5;
  }

LABEL_10:
  v11 = v1[7];
  if (!v11)
  {
    return;
  }

  v13 = ASErrorF(550, "App extension is not supported for rename.", v5, v6, v7, v8, v9, v10, v12);
  (*(v11 + 16))(v11);
LABEL_5:
}

- (void)showPickerForDisplayItems:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ASAccessorySession *)self _verifyCoreBluetoothStateToActivatePicker:v6])
  {
    if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      [ASAccessorySession showPickerForDisplayItems:completionHandler:];
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ASAccessorySession_showPickerForDisplayItems_completionHandler___block_invoke;
    block[3] = &unk_278A01AA0;
    block[4] = self;
    v18 = v6;
    v19 = v7;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v15 = ASErrorF(550, "CBManagers active with global permissions", v8, v9, v10, v11, v12, v13, v16);
    (*(v7 + 2))(v7, v15);
  }
}

- (void)_showPickerForDisplayItems:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_activateCalled)
  {
    [ASAccessorySession _showPickerForDisplayItems:completionHandler:];
    goto LABEL_33;
  }

  if (self->_invalidateCalled)
  {
LABEL_33:
    [ASAccessorySession _showPickerForDisplayItems:completionHandler:];
LABEL_34:
    [(ASAccessorySession *)a4 _showPickerForDisplayItems:v11 completionHandler:v12, v13, v14, v15, v16, v17];
    goto LABEL_31;
  }

  a4 = v7;
  if (([(ASPickerDisplaySettings *)self->_pickerDisplaySettings options]& 1) != 0)
  {
    v8 = 15;
  }

  else
  {
    v8 = 500;
  }

  if ([v6 count] > v8 && !self->_disablePickerItemMaxLimit)
  {
    v40 = [ASAccessorySession _showPickerForDisplayItems:completionHandler:];
    _Block_object_dispose(&v55, 8);
    _Unwind_Resume(v40);
  }

  v9 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_34;
  }

  v18 = xpc_copy_entitlement_for_token();
  if (v18)
  {
LABEL_10:
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    LOBYTE(v58) = 0;
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2020000000;
    v53 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x2020000000;
    v51 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_2;
    v45[3] = &unk_278A01D48;
    v45[4] = self;
    v45[5] = &v55;
    v45[6] = v52;
    v45[7] = v50;
    v45[8] = &v46;
    [v6 enumerateObjectsUsingBlock:v45];
    if (IsAppleInternalBuild() && self->_disableWiFiAwareEnforcement)
    {
      if (gLogCategory_ASAccessorySession <= 50 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else if (*(v47 + 24) == 1 && ([(DASession *)self->_daSession currentDeviceCapabilities]& 0x400) == 0)
    {
      v25 = ASErrorF(450, "Current device is not Wi-Fi Aware capable.", v19, v20, v21, v22, v23, v24, v41[0]);
      (*(a4 + 2))(a4, v25);
LABEL_29:

      _Block_object_dispose(&v46, 8);
      _Block_object_dispose(v50, 8);
      _Block_object_dispose(v52, 8);
      goto LABEL_30;
    }

    v35 = [(ASAccessorySession *)self pickerDisplaySettings];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = +[ASPickerDisplaySettings defaultSettings];
    }

    v38 = v37;

    sessionQueue = self->_sessionQueue;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_3;
    v41[3] = &unk_278A01D70;
    v41[4] = self;
    v42 = v6;
    v43 = v38;
    v44 = a4;
    v25 = v38;
    dispatch_async(sessionQueue, v41);

    goto LABEL_29;
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  if (self->_dispatchQueue == MEMORY[0x277D85CD0])
  {
    v26 = [MEMORY[0x277D75128] sharedApplication];
    v27 = [v26 applicationState];
    v56[3] = v27;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke;
    block[3] = &unk_278A01D20;
    block[4] = &v55;
    v26 = MEMORY[0x277D85CD0];
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  if (!v56[3])
  {
    _Block_object_dispose(&v55, 8);
    goto LABEL_10;
  }

  v34 = ASErrorF(550, "Application is not in foreground.", v28, v29, v30, v31, v32, v33, v41[0]);
  (*(a4 + 2))(a4, v34);

LABEL_30:
  _Block_object_dispose(&v55, 8);

LABEL_31:
}

void __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  *(*(*(a1 + 32) + 8) + 24) = [v2 applicationState];
}

void __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(*(a1 + 40) + 8);
  if (a3 || (isKindOfClass & 1) != 0)
  {
    if (*(v6 + 24) == 1 && (objc_opt_class(), v7 = objc_opt_isKindOfClass(), a3) && (v7 & 1) != 0)
    {
      if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_2_cold_1();
      }
    }

    else
    {
      objc_opt_class();
      v8 = objc_opt_isKindOfClass();
      if (a3 || (v8 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_17;
  }

  *(v6 + 24) = 1;
  if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {
    __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_2_cold_2();
  }

LABEL_17:
  [*(a1 + 32) _validateDisplayItem:v15];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v14 = __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_2_cold_3();
    __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_3(v14);
  }

  else
  {
    v9 = [v15 descriptor];
    v10 = [v9 wifiAwareServiceName];

    v11 = v15;
    if (v10)
    {
      v12 = [v15 descriptor];
      v13 = [v12 wifiAwareServiceRole];

      if (v13 == 20)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
      v11 = v15;
    }
  }
}

void __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_3(void *a1)
{
  v2 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
  [v2 activateConnectionWithSession:a1[4] with:a1[5] pickerSettings:a1[6] for:*(a1[4] + 112) completionHandler:a1[7]];
}

- (void)showPickerWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {
    [ASAccessorySession showPickerWithCompletionHandler:];
  }

  [(ASAccessorySession *)self showPickerForDisplayItems:MEMORY[0x277CBEBF8] completionHandler:v4];
}

- (void)updatePickerShowingDiscoveredDisplayItems:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ASAccessorySession_updatePickerShowingDiscoveredDisplayItems_completionHandler___block_invoke;
  block[3] = &unk_278A01AA0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __82__ASAccessorySession_updatePickerShowingDiscoveredDisplayItems_completionHandler___block_invoke(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 8) & 1) == 0)
  {
    __82__ASAccessorySession_updatePickerShowingDiscoveredDisplayItems_completionHandler___block_invoke_cold_1();
    goto LABEL_8;
  }

  if (*(v1 + 56) == 1)
  {
LABEL_8:
    __82__ASAccessorySession_updatePickerShowingDiscoveredDisplayItems_completionHandler___block_invoke_cold_3();
    goto LABEL_9;
  }

  if (([*(v1 + 80) options] & 1) == 0)
  {
LABEL_9:
    v6 = __82__ASAccessorySession_updatePickerShowingDiscoveredDisplayItems_completionHandler___block_invoke_cold_2();
    [(ASAccessorySession *)v6 _updatePickerWithDiscoveredDisplayItems:v7 completionHandler:v8, v9];
    return;
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  [v3 _updatePickerWithDiscoveredDisplayItems:v4 completionHandler:v5];
}

- (void)_updatePickerWithDiscoveredDisplayItems:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
  [v7 updatePickerWith:v6 completionHandler:v5];
}

- (void)finishPickerDiscovery:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ASAccessorySession_finishPickerDiscovery___block_invoke;
  v7[3] = &unk_278A01CA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __44__ASAccessorySession_finishPickerDiscovery___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9[8])
  {
    v10 = *(a1 + 40);
    if (v9[56] == 1)
    {
      __44__ASAccessorySession_finishPickerDiscovery___block_invoke_cold_2(*(a1 + 40), a2, v10, a4, a5, a6, a7, a8);
    }

    else
    {

      [v9 _finishDiscovery:v10];
    }
  }

  else
  {
    __44__ASAccessorySession_finishPickerDiscovery___block_invoke_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

- (void)_finishDiscovery:(id)a3
{
  v3 = a3;
  v4 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
  [v4 finishDiscoveryWith:v3];
}

- (void)updateAccessory:(id)a3 settings:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ASAccessorySession_updateAccessory_settings_completionHandler___block_invoke;
  v15[3] = &unk_278A01D70;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

void __65__ASAccessorySession_updateAccessory_settings_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if ((v2[8] & 1) == 0)
  {
    __65__ASAccessorySession_updateAccessory_settings_completionHandler___block_invoke_cold_1();
    goto LABEL_7;
  }

  if (v2[56] == 1)
  {
LABEL_7:
    v6 = __65__ASAccessorySession_updateAccessory_settings_completionHandler___block_invoke_cold_2();
    [(ASAccessorySession *)v6 _updateAccessory:v7 settings:v8 completionHandler:v9, v10];
    return;
  }

  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  [v2 _updateAccessory:v3 settings:v4 completionHandler:v5];
}

- (void)_updateAccessory:(id)a3 settings:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self->_daSession;
  v11 = MEMORY[0x277D04740];
  v12 = a4;
  v13 = objc_alloc_init(v11);
  v14 = [v12 SSID];
  [v13 setSSID:v14];

  v15 = [v12 bluetoothTransportBridgingIdentifier];
  [v13 setBridgingIdentifier:v15];

  v16 = [v12 bluetoothTransportBridgingIdentifier];

  if (v16)
  {
    v17 = [(DASession *)v10 availableDevices];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke;
    v22[3] = &unk_278A01D98;
    v23 = v8;
    [v17 enumerateObjectsUsingBlock:v22];
  }

  v18 = [v8 identifier];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_2;
  v20[3] = &unk_278A01CD0;
  v20[4] = self;
  v21 = v9;
  v19 = v9;
  [(DASession *)v10 modifyDeviceWithIdentifier:v18 settings:v13 completionHandler:v20];
}

void __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    if (([v10 flags] & 0x20) != 0)
    {
      v9 = __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_cold_1();
      __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_2(v9);
      return;
    }

    *a4 = 1;
  }
}

void __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_3;
  v6[3] = &unk_278A01CA8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v11 = CUPrintNSError();
    v8 = ASErrorF(450, "Unable to update accessory: %@", v2, v3, v4, v5, v6, v7, v11);
    (*(v1 + 16))(v1, v8);
  }

  else
  {
    v9 = *(v1 + 16);
    v10 = *(a1 + 40);

    v9(v10, 0);
  }
}

- (void)updateAuthorization:(id)a3 descriptor:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_activateCalled)
  {
    [ASAccessorySession updateAuthorization:descriptor:completionHandler:];
    goto LABEL_29;
  }

  if (self->_invalidateCalled)
  {
LABEL_29:
    [ASAccessorySession updateAuthorization:descriptor:completionHandler:];
    goto LABEL_30;
  }

  a5 = v10;
  v11 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_30:
    [(ASAccessorySession *)a5 updateAuthorization:v13 descriptor:v14 completionHandler:v15, v16, v17, v18, v19];
    goto LABEL_26;
  }

  v20 = [v8 descriptor];
  v21 = [v20 isEqual:v9];

  if (v21)
  {
    [(ASAccessorySession *)a5 updateAuthorization:v22 descriptor:v23 completionHandler:v24, v25, v26, v27, v28];
  }

  else
  {
    [(ASAccessorySession *)self _validateDiscoveryDescriptor:v9];
    v29 = [v8 bluetoothIdentifier];

    v30 = [v8 SSID];

    v31 = [v8 wifiAwarePairedDeviceID];
    v32 = [v9 bluetoothServiceUUID];
    if (v32)
    {
      v33 = 1;
    }

    else
    {
      v33 = [v9 bluetoothCompanyIdentifier] != 0;
    }

    v34 = [v9 SSID];
    v51 = a5;
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v36 = [v9 SSIDPrefix];
      v35 = v36 == 0;
    }

    v37 = v29 == 0;

    v38 = [v9 wifiAwareServiceName];

    if (v31)
    {
      v46 = v37 && v35;
    }

    else
    {
      v46 = 1;
    }

    if (v38)
    {
      v47 = 1;
    }

    else
    {
      v47 = v37;
    }

    if (v46 != 1 || !v47)
    {
      goto LABEL_27;
    }

    v48 = v38 == 0;
    v49 = !v30 || v31 != 0 && !v33;
    if (v49 || v33)
    {
      v48 = v31 != 0 && !v33;
    }

    if (v48 != 1)
    {
      sessionQueue = self->_sessionQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__ASAccessorySession_updateAuthorization_descriptor_completionHandler___block_invoke;
      block[3] = &unk_278A01D70;
      block[4] = self;
      v53 = v8;
      v54 = v9;
      a5 = v51;
      v55 = v51;
      dispatch_async(sessionQueue, block);
    }

    else
    {
LABEL_27:
      a5 = v51;
      [(ASAccessorySession *)v51 updateAuthorization:v39 descriptor:v40 completionHandler:v41, v42, v43, v44, v45];
    }
  }

LABEL_26:
}

void __71__ASAccessorySession_updateAuthorization_descriptor_completionHandler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pickerDisplaySettings];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[ASPickerDisplaySettings defaultSettings];
  }

  v5 = v4;

  v6 = [ASMigrationDisplayItem alloc];
  v7 = [*(a1 + 40) displayName];
  v8 = objc_opt_new();
  v9 = [(ASPickerDisplayItem *)v6 initWithName:v7 productImage:v8 descriptor:*(a1 + 48)];

  v10 = [*(a1 + 40) identifier];
  [(ASMigrationDisplayItem *)v9 setAccessoryIdentifier:v10];

  v11 = [*(a1 + 40) bluetoothIdentifier];
  [(ASMigrationDisplayItem *)v9 setPeripheralIdentifier:v11];

  v12 = [*(a1 + 40) SSID];
  [(ASMigrationDisplayItem *)v9 setHotspotSSID:v12];

  -[ASMigrationDisplayItem setWifiAwarePairedDeviceID:](v9, "setWifiAwarePairedDeviceID:", [*(a1 + 40) wifiAwarePairedDeviceID]);
  [(ASMigrationDisplayItem *)v9 setUpgradeAccessory:1];
  v13 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
  v14 = *(a1 + 32);
  v17[0] = v9;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v13 activateConnectionWithSession:v14 with:v15 pickerSettings:v5 for:*(*(a1 + 32) + 112) completionHandler:*(a1 + 56)];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_validateDisplayItem:(id)a3
{
  v8 = a3;
  v4 = [v8 productImage];

  if (!v4)
  {
    [ASAccessorySession _validateDisplayItem:];
    goto LABEL_10;
  }

  v5 = [v8 descriptor];

  if (!v5)
  {
LABEL_10:
    [ASAccessorySession _validateDisplayItem:];
    goto LABEL_11;
  }

  v6 = [v8 name];

  if (!v6)
  {
LABEL_11:
    [ASAccessorySession _validateDisplayItem:];
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [v8 descriptor];
    [(ASAccessorySession *)self _validateDiscoveryDescriptor:v7];

    goto LABEL_6;
  }

LABEL_12:
  [(ASAccessorySession *)self _validateMigrationDisplayItem:v8];
LABEL_6:
}

- (void)_validateDiscoveryDescriptor:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v78 = [(ASPickerDisplaySettings *)self->_pickerDisplaySettings options];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 infoDictionary];

  v79 = v6;
  [v6 objectForKeyedSubscript:@"NSAccessorySetupKitSupports"];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v7 = v89 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v86 objects:v91 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v87;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v87 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v86 + 1) + 8 * i);
        v11 |= [v14 isEqualToString:@"Bluetooth"];
        v10 |= [v14 isEqualToString:@"WiFi"];
      }

      v9 = [v7 countByEnumeratingWithState:&v86 objects:v91 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
  }

  v15 = [v4 bluetoothCompanyIdentifier];
  v16 = v15 != 0;
  if (v15)
  {
    if ((v11 & 1) == 0)
    {
LABEL_99:
      [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_100:
      [ASAccessorySession _validateDiscoveryDescriptor:];
      goto LABEL_101;
    }

    v17 = [v4 bluetoothCompanyIdentifier];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x", objc_msgSend(v4, "bluetoothCompanyIdentifier")];
    v19 = [v79 objectForKeyedSubscript:@"NSAccessorySetupBluetoothCompanyIdentifiers"];
    v20 = v19;
    if ((v78 & 1) == 0 && !v19)
    {
      goto LABEL_100;
    }

    if ((v78 & 1) == 0 && ![v19 count])
    {
      goto LABEL_112;
    }

    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __51__ASAccessorySession__validateDiscoveryDescriptor___block_invoke;
    v84[3] = &__block_descriptor_34_e18__16__0__NSString_8l;
    v85 = __rev16(v17);
    v21 = [v20 cuFilteredArrayUsingBlock:v84];
    v22 = v21;
    if ((v78 & 1) == 0 && [v21 count] != 1)
    {
      goto LABEL_113;
    }
  }

  v23 = [v4 bluetoothServiceUUID];

  if (v23)
  {
    if ((v11 & 1) == 0)
    {
LABEL_101:
      [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_102:
      [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_103:
      [ASAccessorySession _validateDiscoveryDescriptor:];
      goto LABEL_104;
    }

    v24 = [v4 bluetoothServiceUUID];
    v23 = [v24 UUIDString];

    v25 = [v79 objectForKeyedSubscript:@"NSAccessorySetupBluetoothServices"];
    v26 = v25;
    if ((v78 & 1) == 0 && !v25)
    {
      goto LABEL_102;
    }

    if ((v78 & 1) == 0)
    {
      if (![v25 count])
      {
LABEL_114:
        [ASAccessorySession _validateDiscoveryDescriptor:];
        goto LABEL_115;
      }

      if (([v26 containsObject:v23] & 1) == 0)
      {
LABEL_115:
        FatalErrorF();
        goto LABEL_116;
      }
    }

    v16 = 1;
  }

  v27 = [v4 bluetoothManufacturerDataBlob];
  if (v27)
  {
  }

  else
  {
    v23 = [v4 bluetoothManufacturerDataMask];

    if (!v23)
    {
      goto LABEL_37;
    }
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_88;
  }

  if (![v4 bluetoothCompanyIdentifier])
  {
LABEL_89:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_90:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_91;
  }

  v28 = [v4 bluetoothManufacturerDataBlob];
  if (!v28 || (v23 = v28, [v4 bluetoothManufacturerDataMask], v29 = objc_claimAutoreleasedReturnValue(), v29, v23, !v29))
  {
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_88:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_89;
  }

  v23 = [v4 bluetoothManufacturerDataBlob];
  if (![v23 length])
  {
LABEL_91:

    goto LABEL_92;
  }

  v30 = [v4 bluetoothManufacturerDataMask];
  v31 = [v30 length];

  if (!v31)
  {
LABEL_92:
    FatalErrorF();
    goto LABEL_93;
  }

  v23 = [v4 bluetoothManufacturerDataBlob];
  v32 = [v23 length];
  v33 = [v4 bluetoothManufacturerDataMask];
  v34 = [v33 length];

  if (v32 != v34)
  {
LABEL_93:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_94:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_95;
  }

LABEL_37:
  v35 = [v4 bluetoothServiceDataBlob];
  if (v35)
  {
  }

  else
  {
    v23 = [v4 bluetoothServiceDataMask];

    if (!v23)
    {
      goto LABEL_47;
    }
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_94;
  }

  v23 = [v4 bluetoothServiceUUID];

  if (!v23)
  {
LABEL_95:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_96;
  }

  v36 = [v4 bluetoothServiceDataBlob];
  if (!v36)
  {
    goto LABEL_90;
  }

  v23 = v36;
  v37 = [v4 bluetoothServiceDataMask];

  if (!v37)
  {
    goto LABEL_90;
  }

  v23 = [v4 bluetoothServiceDataBlob];
  if (![v23 length])
  {
LABEL_96:

    goto LABEL_97;
  }

  v38 = [v4 bluetoothServiceDataMask];
  v39 = [v38 length];

  if (!v39)
  {
LABEL_97:
    FatalErrorF();
    goto LABEL_98;
  }

  v40 = [v4 bluetoothServiceDataBlob];
  v41 = [v40 length];
  v42 = [v4 bluetoothServiceDataMask];
  v43 = [v42 length];

  if (v41 != v43)
  {
LABEL_98:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_99;
  }

LABEL_47:
  v44 = [v4 bluetoothNameSubstring];

  if (!v44)
  {
    goto LABEL_62;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_103;
  }

  if (!v16)
  {
LABEL_104:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_105:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_106;
  }

  v45 = [v79 objectForKeyedSubscript:@"NSAccessorySetupBluetoothNames"];
  v46 = [v4 bluetoothNameSubstring];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v47 = v45;
  v48 = [v47 countByEnumeratingWithState:&v80 objects:v90 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v81;
LABEL_52:
    v51 = 0;
    while (1)
    {
      if (*v81 != v50)
      {
        objc_enumerationMutation(v47);
      }

      if ([v46 containsString:*(*(&v80 + 1) + 8 * v51)])
      {
        goto LABEL_60;
      }

      if (v49 == ++v51)
      {
        v49 = [v47 countByEnumeratingWithState:&v80 objects:v90 count:16];
        if (v49)
        {
          goto LABEL_52;
        }

        break;
      }
    }
  }

  if ((v78 & 1) == 0)
  {
    v77 = v46;
    FatalErrorF();
LABEL_60:
  }

LABEL_62:
  v52 = [v4 SSID];

  if (!v52)
  {
    goto LABEL_67;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_105;
  }

  v53 = [v4 SSID];
  v54 = [v53 length];

  if (!v54)
  {
LABEL_106:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_107:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_108;
  }

  v55 = [v4 wifiAwareServiceName];

  if (v55)
  {
LABEL_108:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_109;
  }

  v16 = 1;
LABEL_67:
  v56 = [v4 SSIDPrefix];

  if (!v56)
  {
    goto LABEL_72;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_107;
  }

  v57 = [v4 SSIDPrefix];
  v58 = [v57 length];

  if (!v58)
  {
LABEL_109:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_110:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_111;
  }

  v59 = [v4 wifiAwareServiceName];

  if (v59)
  {
LABEL_111:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_112:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_113:
    FatalErrorF();
    goto LABEL_114;
  }

  v16 = 1;
LABEL_72:
  v60 = [v4 wifiAwareServiceName];

  if (v60)
  {
    v61 = [v4 wifiAwareServiceName];
    v62 = [v79 objectForKeyedSubscript:@"WiFiAwareServices"];
    v63 = [v62 allKeys];
    v64 = [v63 containsObject:v61];

    if (v64)
    {
      if (![v4 wifiAwareServiceRole])
      {
        [v4 setWifiAwareServiceRole:10];
      }

      if ([v4 wifiAwareServiceRole] != 20)
      {
        goto LABEL_79;
      }

      v65 = [v62 objectForKeyedSubscript:v61];
      v66 = [v65 allKeys];
      v67 = [v66 containsObject:@"Publishable"];

      if (v67)
      {

LABEL_79:
        if ([v4 wifiAwareServiceRole] != 10)
        {
LABEL_82:

          v16 = 1;
          goto LABEL_83;
        }

        v68 = [v62 objectForKeyedSubscript:v61];
        v69 = [v68 allKeys];
        v70 = [v69 containsObject:@"Subscribable"];

        if (v70)
        {

          goto LABEL_82;
        }

LABEL_117:
        [ASAccessorySession _validateDiscoveryDescriptor:];
        goto LABEL_118;
      }

LABEL_116:
      [ASAccessorySession _validateDiscoveryDescriptor:];
      goto LABEL_117;
    }

    goto LABEL_110;
  }

LABEL_83:
  v71 = [v4 SSID];
  if (!v71 || (v72 = v71, [v4 SSIDPrefix], v73 = objc_claimAutoreleasedReturnValue(), v73, v72, !v73))
  {
    if (v16)
    {

      v74 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_118:
    FatalErrorF();
  }

  v75 = FatalErrorF();
  __51__ASAccessorySession__validateDiscoveryDescriptor___block_invoke(v75, v76);
}

void *__51__ASAccessorySession__validateDiscoveryDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CUPrintHex();
  if ([v2 caseInsensitiveCompare:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

- (void)_validateMigrationDisplayItem:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 infoDictionary];

  v31 = v5;
  [v5 objectForKeyedSubscript:@"NSAccessorySetupKitSupports"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v35 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v10 |= [v13 isEqualToString:@"Bluetooth"];
        v9 |= [v13 isEqualToString:@"WiFi"];
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v9) = 0;
    LOBYTE(v10) = 0;
  }

  v14 = [v3 peripheralIdentifier];
  if (!v14)
  {
    v14 = [v3 hotspotSSID];
    if (!v14)
    {
      goto LABEL_29;
    }
  }

  while (1)
  {
    v15 = [v3 hotspotSSID];
    v16 = v15;
    if (((v15 != 0) & v9) == 1)
    {
      v17 = [v3 hotspotSSID];

      if (!v17)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if (v16)
      {
LABEL_22:
        FatalErrorF();
LABEL_23:

        goto LABEL_24;
      }
    }

    if (![v3 wifiAwarePairedDeviceID])
    {
      goto LABEL_24;
    }

    v16 = [v3 descriptor];
    v18 = [v16 wifiAwareServiceName];
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = v18;
    if ((v9 & 1) == 0 || ![v3 wifiAwarePairedDeviceID])
    {
      break;
    }

    v20 = [v3 descriptor];
    v21 = [v20 wifiAwareServiceName];

    if (!v21)
    {
      goto LABEL_33;
    }

LABEL_24:
    v22 = [v3 peripheralIdentifier];
    v23 = v22;
    if (((v22 != 0) & v10) == 1)
    {
      v24 = [v3 peripheralIdentifier];

      if (v24)
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (!v23)
      {
LABEL_26:

        v25 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    FatalErrorF();
LABEL_29:
    if ([v3 wifiAwarePairedDeviceID])
    {
      v26 = [v3 descriptor];
      v27 = [v26 wifiAwareServiceName];

      if (v27)
      {
        continue;
      }
    }

    FatalErrorF();
  }

LABEL_33:
  v28 = FatalErrorF();
  [(ASAccessorySession *)v28 _verifyCoreBluetoothStateToActivatePicker:v29, v30];
}

- (BOOL)_verifyCoreBluetoothStateToActivatePicker:(id)a3
{
  v4 = a3;
  if ([(ASAccessorySession *)self _hasBluetoothASK])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__ASAccessorySession__verifyCoreBluetoothStateToActivatePicker___block_invoke;
    v7[3] = &unk_278A01DE0;
    v7[4] = &v8;
    [v4 enumerateObjectsUsingBlock:v7];
    if ((v9[3] & 1) == 0)
    {
      goto LABEL_12;
    }

    [(ASAccessorySession *)self _fetchBluetoothGlobalTCC];
    if (self->_bluetoothTCCStateUnknown)
    {
      goto LABEL_12;
    }

    if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if ([MEMORY[0x277CBE040] retrieveCurrentProcessSessionCount])
    {
      if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        [MEMORY[0x277CBE040] retrieveCurrentProcessSessionCount];
        LogPrintF();
      }

      v5 = 0;
    }

    else
    {
LABEL_12:
      v5 = 1;
    }

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __64__ASAccessorySession__verifyCoreBluetoothStateToActivatePicker___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v14 = [a2 descriptor];
  v6 = [v14 bluetoothCompanyIdentifier];
  v7 = [v14 bluetoothServiceUUID];

  v8 = [v14 bluetoothManufacturerDataBlob];

  v9 = [v14 bluetoothServiceDataBlob];
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7 == 0;
  }

  v13 = !v10 || v8 != 0 || v9 != 0;

  *(*(*(a1 + 32) + 8) + 24) = v13;
  *a4 = v13;
}

- (BOOL)_hasBluetoothASK
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 infoDictionary];

  v4 = [v3 objectForKey:@"NSAccessorySetupKitSupports"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= [*(*(&v12 + 1) + 8 * i) isEqualToString:@"Bluetooth"];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (void)_fetchBluetoothGlobalTCC
{
  if (!self->_bluetoothTCCStateUnknown)
  {
    pthread_mutex_lock(&_fetchBluetoothGlobalTCC_gLock);
    if (!_fetchBluetoothGlobalTCC_tccServer)
    {
      v3 = tcc_server_create();
      v4 = _fetchBluetoothGlobalTCC_tccServer;
      _fetchBluetoothGlobalTCC_tccServer = v3;
    }

    pthread_mutex_unlock(&_fetchBluetoothGlobalTCC_gLock);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 2;
    v5 = tcc_message_options_create();
    tcc_message_options_set_reply_handler_policy();
    tcc_message_options_set_request_prompt_policy();
    v6 = tcc_credential_singleton_for_self();
    v7 = *MEMORY[0x277D6C110];
    v8 = tcc_service_singleton_for_CF_name();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__ASAccessorySession__fetchBluetoothGlobalTCC__block_invoke;
    aBlock[3] = &unk_278A01E08;
    aBlock[4] = &v14;
    v9 = _Block_copy(aBlock);
    tcc_server_message_request_authorization();
    v10 = *(v15 + 6);
    if (v10 >= 2)
    {
      if (v10 != 2)
      {
LABEL_17:

        _Block_object_dispose(&v14, 8);
        return;
      }

      if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v11 = 1;
LABEL_16:
      self->_bluetoothTCCStateUnknown = v11;
      goto LABEL_17;
    }

    if (gLogCategory_ASAccessorySession <= 40)
    {
      if (gLogCategory_ASAccessorySession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v12 = *(v15 + 6);
      }

      LogPrintF();
    }

LABEL_13:
    v11 = 0;
    goto LABEL_16;
  }
}

uint64_t __46__ASAccessorySession__fetchBluetoothGlobalTCC__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = result;
    result = tcc_authorization_record_get_authorization_right();
    v4 = 2 * (result != 2);
    if (!result)
    {
      v4 = 1;
    }

    *(*(*(v3 + 32) + 8) + 24) = v4;
  }

  return result;
}

- (void)_handleDASessionEventHandler:(void *)a1 session:.cold.4(void *a1)
{
  v2 = [a1 error];
  v1 = CUPrintNSError();
  LogPrintF();
}

void __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48))
  {
    ASErrorF(550, "App extension is not supported for setup.", a3, a4, a5, a6, a7, a8, v10);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_0();
    v9(v8);
  }
}

- (void)_showPickerForDisplayItems:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ASErrorF(550, "App extension is not supported for setup.", a3, a4, a5, a6, a7, a8, v10);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_0();
    v9(v8);
  }
}

void __44__ASAccessorySession_finishPickerDiscovery___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  ASErrorF(450, "%s called before activate", a3, a4, a5, a6, a7, a8, "[ASAccessorySession finishPickerDiscovery:]_block_invoke");
  objc_claimAutoreleasedReturnValue();
  v9 = OUTLINED_FUNCTION_0();
  v10(v9);
}

void __44__ASAccessorySession_finishPickerDiscovery___block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ASErrorF(450, "%s called after invalidate", a3, a4, a5, a6, a7, a8, "[ASAccessorySession finishPickerDiscovery:]_block_invoke");
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_0();
  v9(v8);
}

- (void)updateAuthorization:(uint64_t)a3 descriptor:(uint64_t)a4 completionHandler:(uint64_t)a5 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ASErrorF(450, "Accessory cannot be upgraded with given descriptor.", a3, a4, a5, a6, a7, a8, v10);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_0();
    v9(v8);
  }
}

- (void)updateAuthorization:(uint64_t)a3 descriptor:(uint64_t)a4 completionHandler:(uint64_t)a5 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ASErrorF(450, "No new updates detected from existing accessory descriptor.", a3, a4, a5, a6, a7, a8, v10);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_0();
    v9(v8);
  }
}

- (void)updateAuthorization:(uint64_t)a3 descriptor:(uint64_t)a4 completionHandler:(uint64_t)a5 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ASErrorF(550, "App extension is not supported for upgrade.", a3, a4, a5, a6, a7, a8, v10);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_0();
    v9(v8);
  }
}

@end