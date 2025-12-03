@interface BCSWiFiConfigurationAction
- (BCSWiFiConfigurationAction)initWithData:(id)data codePayload:(id)payload;
- (BOOL)_startAirplaySetupIfNeeded;
- (id)actionPickerItems;
- (id)debugDescriptionExtraInfoDictionary;
- (id)localizedDefaultActionDescription;
- (void)performDefaultActionWithCompletionHandler:(id)handler;
@end

@implementation BCSWiFiConfigurationAction

- (BCSWiFiConfigurationAction)initWithData:(id)data codePayload:(id)payload
{
  dataCopy = data;
  payloadCopy = payload;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = BCSWiFiConfigurationAction;
  v8 = [(BCSAction *)&v11 initWithData:dataCopy codePayload:payloadCopy];
  if (!v8)
  {
    self = 0;
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = v8;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (id)localizedDefaultActionDescription
{
  _wiFiConfigurationData = [(BCSWiFiConfigurationAction *)self _wiFiConfigurationData];
  ssid = [_wiFiConfigurationData ssid];

  if ([ssid length])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = _BCSLocalizedString(@"Join “%@” Network", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    v6 = [v4 stringWithFormat:v5, ssid];
  }

  else
  {
    v6 = &stru_2853953A0;
  }

  return v6;
}

- (id)debugDescriptionExtraInfoDictionary
{
  v17[5] = *MEMORY[0x277D85DE8];
  _wiFiConfigurationData = [(BCSWiFiConfigurationAction *)self _wiFiConfigurationData];
  ssid = [_wiFiConfigurationData ssid];
  password = [_wiFiConfigurationData password];
  isWEP = [_wiFiConfigurationData isWEP];
  isHidden = [_wiFiConfigurationData isHidden];
  airplayBrokerID = &stru_2853953A0;
  if (ssid)
  {
    v8 = ssid;
  }

  else
  {
    v8 = &stru_2853953A0;
  }

  v16[0] = @"ssid";
  v16[1] = @"password";
  if (password)
  {
    v9 = password;
  }

  else
  {
    v9 = &stru_2853953A0;
  }

  v17[0] = v8;
  v17[1] = v9;
  v10 = @"false";
  v16[2] = @"isWEP";
  v16[3] = @"isHidden";
  if (isWEP)
  {
    v11 = @"true";
  }

  else
  {
    v11 = @"false";
  }

  if (isHidden)
  {
    v10 = @"true";
  }

  v17[2] = v11;
  v17[3] = v10;
  v16[4] = @"airplayPlayload";
  hasAirplayPayload = [_wiFiConfigurationData hasAirplayPayload];
  if (hasAirplayPayload)
  {
    airplayBrokerID = [_wiFiConfigurationData airplayBrokerID];
  }

  v17[4] = airplayBrokerID;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  if (hasAirplayPayload)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)performDefaultActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _wiFiConfigurationData = [(BCSWiFiConfigurationAction *)self _wiFiConfigurationData];
  ssid = [_wiFiConfigurationData ssid];
  if (![ssid length])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSWiFiConfigurationAction performDefaultActionWithCompletionHandler:];
    }

    password = BCSActionError(0);
    handlerCopy[2](handlerCopy, password);
    goto LABEL_20;
  }

  if (![(BCSWiFiConfigurationAction *)self _startAirplaySetupIfNeeded])
  {
    password = [_wiFiConfigurationData password];
    isWEP = [_wiFiConfigurationData isWEP];
    v10 = [password length];
    v11 = objc_alloc(getNEHotspotConfigurationClass());
    if (v10)
    {
      v12 = [v11 initWithSSID:ssid passphrase:password isWEP:isWEP];
    }

    else
    {
      v12 = [v11 initWithSSID:ssid];
    }

    v13 = v12;
    if ([_wiFiConfigurationData isHidden])
    {
      [v13 setHidden:1];
    }

    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSWiFiConfigurationAction: applying wifi configuration", buf, 2u);
      }

      sharedManager = [getNEHotspotConfigurationManagerClass() sharedManager];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __72__BCSWiFiConfigurationAction_performDefaultActionWithCompletionHandler___block_invoke;
      v17[3] = &unk_278CFED28;
      v18 = handlerCopy;
      [sharedManager applyConfiguration:v13 completionHandler:v17];

      v15 = +[BCSAWDLogger sharedLogger];
      [v15 logBarcodeActivatedEventForAction:self];

      v16 = v18;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BCSWiFiConfigurationAction performDefaultActionWithCompletionHandler:];
      }

      v16 = BCSActionError(0);
      handlerCopy[2](handlerCopy, v16);
    }

LABEL_20:
    goto LABEL_21;
  }

  v7 = +[BCSAWDLogger sharedLogger];
  [v7 logBarcodeActivatedEventForAction:self];

  handlerCopy[2](handlerCopy, 0);
LABEL_21:
}

void __72__BCSWiFiConfigurationAction_performDefaultActionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || [v3 code] == 13 || objc_msgSend(v4, "code") == 7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __72__BCSWiFiConfigurationAction_performDefaultActionWithCompletionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __72__BCSWiFiConfigurationAction_performDefaultActionWithCompletionHandler___block_invoke_cold_1(v4);
    }

    if ([v4 code] == 3 || objc_msgSend(v4, "code") == 2)
    {
      v5 = *(a1 + 32);
      v6 = 1;
    }

    else
    {
      v5 = *(a1 + 32);
      v6 = 2;
    }

    v7 = BCSActionError(v6);
    (*(v5 + 16))(v5, v7);
  }
}

- (BOOL)_startAirplaySetupIfNeeded
{
  _wiFiConfigurationData = [(BCSWiFiConfigurationAction *)self _wiFiConfigurationData];
  if ([_wiFiConfigurationData hasAirplayPayload] && _bcs_airplayInWifiEnabled())
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v3 = getAPUIAirPlaySetupConfigurationWiFiClass_softClass;
    v32 = getAPUIAirPlaySetupConfigurationWiFiClass_softClass;
    if (!getAPUIAirPlaySetupConfigurationWiFiClass_softClass)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __getAPUIAirPlaySetupConfigurationWiFiClass_block_invoke;
      v27 = &unk_278CFE620;
      v28 = &v29;
      __getAPUIAirPlaySetupConfigurationWiFiClass_block_invoke(&v24);
      v3 = v30[3];
    }

    v4 = v3;
    _Block_object_dispose(&v29, 8);
    v5 = objc_alloc_init(v3);
    ssid = [_wiFiConfigurationData ssid];
    [v5 setSSID:ssid];

    password = [_wiFiConfigurationData password];
    [v5 setPassphrase:password];

    captivePortalToken = [_wiFiConfigurationData captivePortalToken];
    [v5 setCaptivePortalBypassToken:captivePortalToken];

    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v9 = getAPUIAirPlaySetupConfigurationDiscoveryBrokerClass_softClass;
    v32 = getAPUIAirPlaySetupConfigurationDiscoveryBrokerClass_softClass;
    if (!getAPUIAirPlaySetupConfigurationDiscoveryBrokerClass_softClass)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __getAPUIAirPlaySetupConfigurationDiscoveryBrokerClass_block_invoke;
      v27 = &unk_278CFE620;
      v28 = &v29;
      __getAPUIAirPlaySetupConfigurationDiscoveryBrokerClass_block_invoke(&v24);
      v9 = v30[3];
    }

    v10 = v9;
    _Block_object_dispose(&v29, 8);
    v11 = objc_alloc_init(v9);
    airplayBrokerID = [_wiFiConfigurationData airplayBrokerID];
    [v11 setAuthToken:airplayBrokerID];

    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v13 = getAPUIAirPlaySetupConfigurationReceiverClass_softClass;
    v32 = getAPUIAirPlaySetupConfigurationReceiverClass_softClass;
    if (!getAPUIAirPlaySetupConfigurationReceiverClass_softClass)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __getAPUIAirPlaySetupConfigurationReceiverClass_block_invoke;
      v27 = &unk_278CFE620;
      v28 = &v29;
      __getAPUIAirPlaySetupConfigurationReceiverClass_block_invoke(&v24);
      v13 = v30[3];
    }

    v14 = v13;
    _Block_object_dispose(&v29, 8);
    v15 = objc_alloc_init(v13);
    airplayBrokerPin = [_wiFiConfigurationData airplayBrokerPin];
    [v15 setAuthString:airplayBrokerPin];

    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v17 = getAPUIAirPlaySetupConfigurationClass_softClass;
    v32 = getAPUIAirPlaySetupConfigurationClass_softClass;
    if (!getAPUIAirPlaySetupConfigurationClass_softClass)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __getAPUIAirPlaySetupConfigurationClass_block_invoke;
      v27 = &unk_278CFE620;
      v28 = &v29;
      __getAPUIAirPlaySetupConfigurationClass_block_invoke(&v24);
      v17 = v30[3];
    }

    v18 = v17;
    _Block_object_dispose(&v29, 8);
    v19 = objc_alloc_init(v17);
    [v19 setWifi:v5];
    [v19 setBroker:v11];
    [v19 setReceiver:v15];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v20 = getAPUIAirPlaySetupFlowLauncherClass_softClass;
    v32 = getAPUIAirPlaySetupFlowLauncherClass_softClass;
    if (!getAPUIAirPlaySetupFlowLauncherClass_softClass)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __getAPUIAirPlaySetupFlowLauncherClass_block_invoke;
      v27 = &unk_278CFE620;
      v28 = &v29;
      __getAPUIAirPlaySetupFlowLauncherClass_block_invoke(&v24);
      v20 = v30[3];
    }

    v21 = v20;
    _Block_object_dispose(&v29, 8);
    v22 = [v20 launchAirPlayAutomaticSetupFlowWithConfiguration:v19];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)actionPickerItems
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = _BCSLocalizedString(@"Join Network", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  _wiFiConfigurationData = [(BCSWiFiConfigurationAction *)self _wiFiConfigurationData];
  hasAirplayPayload = [_wiFiConfigurationData hasAirplayPayload];

  if (hasAirplayPayload)
  {
    v6 = _BCSLocalizedString(@"Connect TV", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);

    v3 = v6;
  }

  v7 = [(BCSActionPickerItem *)[BCSWiFiConfigurationActionPickerItem alloc] initWithLabel:v3 action:self];
  actionIcon = [(BCSAction *)self actionIcon];
  [(BCSWiFiConfigurationActionPickerItem *)v7 setIcon:actionIcon];

  v12[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __72__BCSWiFiConfigurationAction_performDefaultActionWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  v3 = 138543362;
  v4 = v1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSWiFiConfigurationAction: Error applying WiFi configuration: %{public}@", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

@end