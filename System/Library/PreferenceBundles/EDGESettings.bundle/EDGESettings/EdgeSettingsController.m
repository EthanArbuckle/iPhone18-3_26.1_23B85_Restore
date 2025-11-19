@interface EdgeSettingsController
+ (id)makeUIApnBasedOn:(id)a3;
- (BOOL)_isAPNDictionaryBlank:(id)a3;
- (BOOL)_shouldShowUIForServiceType:(int)a3;
- (BOOL)isTypeOfService:(id)a3 ofServiceType:(int)a4;
- (BOOL)shouldResetAttachAPN;
- (EdgeSettingsController)init;
- (id)_getAPNDictinaryForService:(int)a3;
- (id)_getMMSObjectForKey:(id)a3;
- (id)attachAPNSettings;
- (id)edgeDNS:(id)a3;
- (id)getAPNDataForSpecifier:(id)a3;
- (id)getAttachAPNDataForSpecifier:(id)a3;
- (id)getDefaultSettings:(id)a3;
- (id)getMMSNumericValueForSpecifier:(id)a3;
- (id)getMMSValueForSpecifier:(id)a3;
- (id)specifiers;
- (unint64_t)getGSMASettingsUIControl;
- (void)_setMMSOverrideValue:(id)a3 forKey:(id)a4;
- (void)_updateKey:(id)a3 toValue:(id)a4 forServiceType:(int)a5;
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)attachAPNSettings;
- (void)commitAPNsSettings;
- (void)commitAttachAPNSettings;
- (void)dealloc;
- (void)didChangeDeviceManagementSettings:(id)a3;
- (void)getGSMASettingsUIControl;
- (void)initAPNCacheDictionaries;
- (void)loadCurrentAPNs;
- (void)resetAPNsDictionaries;
- (void)resetAllConfiguredSettings;
- (void)resetAttachAPNSettings;
- (void)resetCarrierSettings:(id)a3;
- (void)setAPNData:(id)a3 forSpecifier:(id)a4;
- (void)setAttachAPNData:(id)a3 forSpecifier:(id)a4;
- (void)setDefaultSettings:(id)a3 specifier:(id)a4;
- (void)setMMSNumericValue:(id)a3 forSpecifier:(id)a4;
- (void)setMMSValue:(id)a3 forSpecifier:(id)a4;
- (void)showCarrierSettingsEraseAlert:(BOOL)a3;
- (void)specifiers;
- (void)uploadSettingsOnCT:(id)a3;
@end

@implementation EdgeSettingsController

- (id)getAPNDataForSpecifier:(id)a3
{
  v5 = [objc_msgSend(a3 propertyForKey:{@"ServiceTypeUI", "intValue"}] - 1;
  if (v5 > 4)
  {
    return &stru_284EE8C10;
  }

  v6 = dword_23C141D18[v5];
  v7 = [a3 propertyForKey:@"apnItemKey"];
  if (!v7)
  {
    return &stru_284EE8C10;
  }

  v8 = v7;
  v9 = [(EdgeSettingsController *)self _getAPNDictinaryForService:v6];

  return [v9 objectForKey:v8];
}

- (void)setAPNData:(id)a3 forSpecifier:(id)a4
{
  v7 = [objc_msgSend(a4 propertyForKey:{@"ServiceTypeUI", "intValue"}] - 1;
  if (v7 >= 5)
  {

    [a4 propertyForKey:@"apnItemKey"];
  }

  else
  {
    v8 = dword_23C141D18[v7];
    v9 = [a4 propertyForKey:@"apnItemKey"];
    if (v9)
    {

      [(EdgeSettingsController *)self _updateKey:v9 toValue:a3 forServiceType:v8];
    }
  }
}

- (void)resetAllConfiguredSettings
{
  v3 = [(EdgeSettingsController *)self coreTelephonyClient];
  v4 = [(EdgeSettingsController *)self context];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__EdgeSettingsController_resetAllConfiguredSettings__block_invoke;
  v5[3] = &unk_278BB2DB0;
  v5[4] = self;
  [(CoreTelephonyClient *)v3 resetUIConfiguredApns:v4 completion:v5];
}

void __52__EdgeSettingsController_resetAllConfiguredSettings__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __52__EdgeSettingsController_resetAllConfiguredSettings__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) resetAPNsDictionaries];
    [*(a1 + 32) loadCurrentAPNs];
    if ([objc_msgSend(*(a1 + 32) "context")] == 1)
    {
      v3 = @"MMS";
    }

    else
    {
      v3 = @"MMS2";
    }

    v4 = [MEMORY[0x277CBEAC0] dictionary];
    v5 = *MEMORY[0x277CBF040];
    v6 = *MEMORY[0x277CBF010];
    CFPreferencesSetValue(v3, v4, @"com.apple.mms_override", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    CFPreferencesSynchronize(@"com.apple.mms_override", v5, v6);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.MMSEnabled.changed", 0, 0, 0);
    v8 = [*(a1 + 32) shouldResetAttachAPN];
    v9 = *(a1 + 32);
    if (v8)
    {
      v10 = [v9 coreTelephonyClient];
      v11 = [*(a1 + 32) context];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __52__EdgeSettingsController_resetAllConfiguredSettings__block_invoke_43;
      v12[3] = &unk_278BB2DB0;
      v12[4] = *(a1 + 32);
      [v10 context:v11 modifyAttachApnSettings:0 completion:v12];
    }

    else
    {

      [v9 reloadSpecifiers];
    }
  }
}

uint64_t __52__EdgeSettingsController_resetAllConfiguredSettings__block_invoke_43(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __52__EdgeSettingsController_resetAllConfiguredSettings__block_invoke_43_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) resetAttachAPNSettings];
  }

  return [*(a1 + 32) reloadSpecifiers];
}

- (void)resetCarrierSettings:(id)a3
{
  if ([(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] loadGSMASettings:[(EdgeSettingsController *)self context] state:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [EdgeSettingsController resetCarrierSettings:];
  }

  [(EdgeSettingsController *)self resetAllConfiguredSettings];
}

- (id)_getMMSObjectForKey:(id)a3
{
  if ([(CTXPCServiceSubscriptionContext *)[(EdgeSettingsController *)self context] slotID]== 1)
  {
    v5 = @"MMS";
  }

  else
  {
    v5 = @"MMS2";
  }

  v6 = CFPreferencesCopyValue(v5, @"com.apple.mms_override", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (!v6 || (result = [v6 objectForKey:a3]) == 0)
  {
    result = [(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] context:[(EdgeSettingsController *)self context] getCarrierBundleValue:&unk_284EE9BD8 error:0];
    if (result)
    {

      return [result objectForKey:a3];
    }
  }

  return result;
}

- (void)_setMMSOverrideValue:(id)a3 forKey:(id)a4
{
  if (!a3 || (v6 = a3, [a3 isEqual:&stru_284EE8C10]))
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  if ([(CTXPCServiceSubscriptionContext *)[(EdgeSettingsController *)self context] slotID]== 1)
  {
    v8 = @"MMS";
  }

  else
  {
    v8 = @"MMS2";
  }

  v9 = *MEMORY[0x277CBF040];
  v10 = *MEMORY[0x277CBF010];
  v11 = CFPreferencesCopyValue(v8, @"com.apple.mms_override", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v11)
  {
    [v7 addEntriesFromDictionary:v11];
  }

  if (v6)
  {
    [v7 setObject:v6 forKey:a4];
  }

  else
  {
    [v7 removeObjectForKey:a4];
  }

  if ([(CTXPCServiceSubscriptionContext *)[(EdgeSettingsController *)self context] slotID]== 1)
  {
    v12 = @"MMS";
  }

  else
  {
    v12 = @"MMS2";
  }

  CFPreferencesSetValue(v12, v7, @"com.apple.mms_override", v9, v10);
  CFPreferencesSynchronize(@"com.apple.mms_override", v9, v10);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.MMSEnabled.changed", 0, 0, 0);
}

- (id)getMMSValueForSpecifier:(id)a3
{
  result = [a3 propertyForKey:@"key"];
  if (result)
  {

    return [(EdgeSettingsController *)self _getMMSObjectForKey:result];
  }

  return result;
}

- (void)setMMSValue:(id)a3 forSpecifier:(id)a4
{
  v7 = [a4 propertyForKey:@"key"];
  if (v7)
  {
    [(EdgeSettingsController *)self _setMMSOverrideValue:a3 forKey:v7];
    if (!a3 || ![a3 length])
    {

      [(EdgeSettingsController *)self reloadSpecifier:a4];
    }
  }
}

- (id)getMMSNumericValueForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"key"];
  if (!v4)
  {
    return 0;
  }

  v5 = [(EdgeSettingsController *)self _getMMSObjectForKey:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return v5;
  }

  return [v5 stringValue];
}

- (void)setMMSNumericValue:(id)a3 forSpecifier:(id)a4
{
  v7 = [a4 propertyForKey:@"key"];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  if (!a3)
  {
    [(EdgeSettingsController *)self _setMMSOverrideValue:0 forKey:v7];
LABEL_9:

    [(EdgeSettingsController *)self reloadSpecifier:a4];
    return;
  }

  if ([a3 length])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a3, "intValue")}];
  }

  else
  {
    v9 = 0;
  }

  [(EdgeSettingsController *)self _setMMSOverrideValue:v9 forKey:v8];
  if (![a3 length])
  {
    goto LABEL_9;
  }
}

- (id)edgeDNS:(id)a3
{
  v4 = [(PSSystemConfiguration *)self->_systemConfig dataServiceID];
  v5 = [(PSSystemConfiguration *)self->_systemConfig protocolConfigurationValueForKey:*MEMORY[0x277CE1710] protocolType:*MEMORY[0x277CE16E0] serviceID:v4];
  v6 = [v5 count];
  if (!v6)
  {
    return &stru_284EE8C10;
  }

  if (v6 == 1)
  {

    return [v5 objectAtIndex:0];
  }

  else
  {

    return [v5 componentsJoinedByString:{@", "}];
  }
}

- (id)getAttachAPNDataForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"apnItemKey"];
  v5 = &stru_284EE8C10;
  if (v4)
  {
    v6 = [(NSMutableDictionary *)self->_newAttachAPNDict objectForKey:v4];
    if (v6)
    {
      return v6;
    }
  }

  return v5;
}

- (void)setAttachAPNData:(id)a3 forSpecifier:(id)a4
{
  v7 = [a4 propertyForKey:@"apnItemKey"];
  if (a3)
  {
    v8 = v7;
    if (v7)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && (![a3 isEqualToString:&stru_284EE8C10] || -[NSMutableDictionary objectForKey:](self->_newAttachAPNDict, "objectForKey:", v8)))
      {
        [(NSMutableDictionary *)self->_newAttachAPNDict setObject:a3 forKey:v8];
      }
    }
  }

  [(EdgeSettingsController *)self reloadSpecifier:a4];
}

- (BOOL)_shouldShowUIForServiceType:(int)a3
{
  v5 = [(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] context:[(EdgeSettingsController *)self context] getCarrierBundleValue:&unk_284EE9BF0 error:0];
  if (v5 || (v5 = [(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] context:[(EdgeSettingsController *)self context] getCarrierBundleValue:&unk_284EE9C08 error:0]) != 0)
  {
    v6 = [v5 intValue];
  }

  else
  {
    LODWORD(v6) = 5;
  }

  if (a3 == 1 && (v6 & 1) != 0)
  {
    goto LABEL_6;
  }

  if (a3 == 2 && (v6 & 2) != 0)
  {
    v7 = MGGetBoolAnswer();
    if (v7)
    {
      LOBYTE(v7) = [(EdgeSettingsController *)self _APNDictionaryForServiceFromSC:2]!= 0;
    }
  }

  else if (a3 == 4 && (v6 & 4) != 0)
  {

    LOBYTE(v7) = MGGetBoolAnswer();
  }

  else
  {
    if (a3 == 0x20000 && (v6 & 0x20000) != 0)
    {
LABEL_6:
      LOBYTE(v7) = 1;
      return v7;
    }

    if (a3 == 48)
    {
      v9 = 0;
      LOBYTE(v7) = [(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] isTetheringEditingSupported:[(EdgeSettingsController *)self context] error:&v9];
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (id)specifiers
{
  if (!self->_group1Specifiers)
  {
    v3 = [(EdgeSettingsController *)self specifier];
    -[EdgeSettingsController setContext:](self, "setContext:", [v3 propertyForKey:*MEMORY[0x277D40128]]);
    v4 = [(EdgeSettingsController *)self specifier];
    -[EdgeSettingsController setCoreTelephonyClient:](self, "setCoreTelephonyClient:", [v4 propertyForKey:kEdgeSettingsClientConnection]);
    [(CoreTelephonyClient *)self->_coreTelephonyClient setDelegate:self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(EdgeSettingsController *)self specifiers];
    }

    [(EdgeSettingsController *)self resetAttachAPNSettings];
    [(EdgeSettingsController *)self loadCurrentAPNs];
    v5 = [(EdgeSettingsController *)self loadSpecifiersFromPlistName:@"EDGE Settings" target:self];
    if (MGGetBoolAnswer())
    {
      -[EdgeSettingsController setTitle:](self, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"APN_SETTINGS", &stru_284EE8C10, @"Edge"}]);
    }

    v6 = [v5 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *MEMORY[0x277D40138];
      v10 = MEMORY[0x277D3FC90];
      do
      {
        v11 = [v5 objectAtIndex:v8];
        v12 = *v10;
        if (*&v11[v12] == 4)
        {
          *&v11[v12] = 8;
          [v11 setProperty:@"PSEditTextCell" forKey:v9];
        }

        ++v8;
      }

      while (v7 != v8);
    }

    self->_group1Specifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"group_1_header", objc_msgSend(v5, "specifierForID:", @"group_1_edgeproxytype", 0}];
    self->_pacSpecifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"pac_header", objc_msgSend(v5, "specifierForID:", @"pac_file", 0}];
    self->_manualSpecifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"pac_header", objc_msgSend(v5, "specifierForID:", @"pac_proxyserver", objc_msgSend(v5, "specifierForID:", @"pac_port", objc_msgSend(v5, "specifierForID:", @"pac_authentication", 0}];
    self->_proxyAuthSpecifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"pac_username", objc_msgSend(v5, "specifierForID:", @"pac_password", 0}];
    self->_InternetContextSpecifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"internet_header", objc_msgSend(v5, "specifierForID:", @"internet_apn", objc_msgSend(v5, "specifierForID:", @"internet_username", objc_msgSend(v5, "specifierForID:", @"internet_password", 0}];
    self->_VVMContextSpecifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"vvm_header", objc_msgSend(v5, "specifierForID:", @"vvm_apn", objc_msgSend(v5, "specifierForID:", @"vvm_username", objc_msgSend(v5, "specifierForID:", @"vvm_password", 0}];
    if (MGGetBoolAnswer())
    {
      self->_MMSContextSpecifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"mms_header", objc_msgSend(v5, "specifierForID:", @"mms_apn", objc_msgSend(v5, "specifierForID:", @"mms_username", objc_msgSend(v5, "specifierForID:", @"mms_password", objc_msgSend(v5, "specifierForID:", @"mms_mmsc", objc_msgSend(v5, "specifierForID:", @"mms_proxy", objc_msgSend(v5, "specifierForID:", @"mms_maxmessagesize", objc_msgSend(v5, "specifierForID:", @"mms_uaprofurl", 0}];
    }

    self->_tetheringContextSpecifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"tethering_header", objc_msgSend(v5, "specifierForID:", @"tethering_apn", objc_msgSend(v5, "specifierForID:", @"tethering_username", objc_msgSend(v5, "specifierForID:", @"tethering_password", 0}];
    self->_lteAttachAPNSpecifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"lte_attach_apn_header", objc_msgSend(v5, "specifierForID:", @"lte_attach_apn", objc_msgSend(v5, "specifierForID:", @"lte_attach_username", objc_msgSend(v5, "specifierForID:", @"lte_attach_password", 0}];
    self->_IMSContextSpecifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"ims_header", objc_msgSend(v5, "specifierForID:", @"ims_apn", objc_msgSend(v5, "specifierForID:", @"ims_username", objc_msgSend(v5, "specifierForID:", @"ims_password", 0}];
    self->_resetSpecifiers = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{objc_msgSend(v5, "specifierForID:", @"reset_settings_header", objc_msgSend(v5, "specifierForID:", @"reset_settings", 0}];
  }

  v13 = *MEMORY[0x277D3FC48];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [(EdgeSettingsController *)self getGSMASettingsUIControl];
  if (v15)
  {
    [v14 addObjectsFromArray:AutoGsmaSettingsSpecifiers(self)];
  }

  v16 = [(EdgeSettingsController *)self _shouldShowUIForServiceType:1];
  if (v16)
  {
    [v14 addObjectsFromArray:self->_InternetContextSpecifiers];
  }

  if ([(EdgeSettingsController *)self isAttachAPNEditingAllowed])
  {
    [v14 addObjectsFromArray:self->_lteAttachAPNSpecifiers];
  }

  if ([(EdgeSettingsController *)self _shouldShowUIForServiceType:2])
  {
    [v14 addObjectsFromArray:self->_VVMContextSpecifiers];
    v16 = 1;
  }

  if ([(EdgeSettingsController *)self _shouldShowUIForServiceType:4])
  {
    [v14 addObjectsFromArray:self->_MMSContextSpecifiers];
    v16 = 1;
  }

  if ([(EdgeSettingsController *)self _shouldShowUIForServiceType:0x20000])
  {
    [v14 addObjectsFromArray:self->_IMSContextSpecifiers];
    v16 = 1;
  }

  if ([(EdgeSettingsController *)self _shouldShowUIForServiceType:48])
  {
    [v14 addObjectsFromArray:self->_tetheringContextSpecifiers];
    v16 = 1;
  }

  if (v15 != 1 && v16)
  {
    [v14 addObjectsFromArray:self->_resetSpecifiers];
  }

  [(EdgeSettingsController *)self loadCurrentAPNs];
  *(&self->super.super.super.super.super.isa + v13) = v14;
  return v14;
}

- (EdgeSettingsController)init
{
  v4.receiver = self;
  v4.super_class = EdgeSettingsController;
  v2 = [(EdgeSettingsController *)&v4 init];
  if (v2)
  {
    v2->_systemConfig = [MEMORY[0x277D3FB18] sharedInstance];
    v2->_cacheInitialized = 0;
    v2->_internetSettingsDictionary = 0;
    v2->_vvmSettingsDictionary = 0;
    v2->_mmsSettingsDictionary = 0;
    v2->_imsSettingsDictionary = 0;
    v2->_tetheringSettingsDictionary = 0;
  }

  return v2;
}

- (unint64_t)getGSMASettingsUIControl
{
  v4 = 0;
  v2 = [(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] getGSMAUIControlSetting:[(EdgeSettingsController *)self context] error:&v4];
  if (v2 >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [EdgeSettingsController getGSMASettingsUIControl];
  }

  return v2;
}

- (BOOL)isTypeOfService:(id)a3 ofServiceType:(int)a4
{
  v5 = [a3 valueForKey:@"type-mask"];
  result = 0;
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      if ((valuePtr & a4) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)initAPNCacheDictionaries
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23C13C000, MEMORY[0x277D86220], v0, "getUIConfiguredApns failed: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

+ (id)makeUIApnBasedOn:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (a3)
  {
    [v4 setObject:objc_msgSend(a3 forKey:{"objectForKey:", @"apn", @"apn"}];
    [v4 setObject:objc_msgSend(a3 forKey:{"objectForKey:", @"username", @"username"}];
    [v4 setObject:objc_msgSend(a3 forKey:{"objectForKey:", @"password", @"password"}];
    [v4 setObject:objc_msgSend(a3 forKey:{"objectForKey:", @"type-mask", @"type-mask"}];
  }

  return v4;
}

- (void)_updateKey:(id)a3 toValue:(id)a4 forServiceType:(int)a5
{
  if (!self->_cacheInitialized)
  {
    [(EdgeSettingsController *)self initAPNCacheDictionaries];
  }

  if (a5 <= 3)
  {
    if (a5 == 1)
    {
      p_internetSettingsDictionary = &self->_internetSettingsDictionary;
      internetSettingsDictionary = self->_internetSettingsDictionary;
      if (!internetSettingsDictionary)
      {
        v11 = self;
        p_vvmSettingsDictionary = &self->_internetSettingsDictionary;
        v13 = 1;
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (a5 != 2)
    {
      return;
    }

    p_internetSettingsDictionary = &self->_vvmSettingsDictionary;
    internetSettingsDictionary = self->_vvmSettingsDictionary;
    if (internetSettingsDictionary)
    {
      goto LABEL_20;
    }

    v11 = self;
    p_vvmSettingsDictionary = &self->_vvmSettingsDictionary;
    v13 = 2;
LABEL_19:
    [(EdgeSettingsController *)v11 initDictionaryForUIApn:p_vvmSettingsDictionary forServiceType:v13];
    internetSettingsDictionary = *p_internetSettingsDictionary;
    goto LABEL_20;
  }

  if (a5 == 4)
  {
    p_internetSettingsDictionary = &self->_mmsSettingsDictionary;
    internetSettingsDictionary = self->_mmsSettingsDictionary;
    if (internetSettingsDictionary)
    {
      goto LABEL_20;
    }

    v11 = self;
    p_vvmSettingsDictionary = &self->_mmsSettingsDictionary;
    v13 = 4;
    goto LABEL_19;
  }

  if (a5 != 48)
  {
    if (a5 != 0x20000)
    {
      return;
    }

    p_internetSettingsDictionary = &self->_imsSettingsDictionary;
    internetSettingsDictionary = self->_imsSettingsDictionary;
    if (internetSettingsDictionary)
    {
      goto LABEL_20;
    }

    v11 = self;
    p_vvmSettingsDictionary = &self->_imsSettingsDictionary;
    v13 = 0x20000;
    goto LABEL_19;
  }

  p_internetSettingsDictionary = &self->_tetheringSettingsDictionary;
  internetSettingsDictionary = self->_tetheringSettingsDictionary;
  if (!internetSettingsDictionary)
  {
    v11 = self;
    p_vvmSettingsDictionary = &self->_tetheringSettingsDictionary;
    v13 = 48;
    goto LABEL_19;
  }

LABEL_20:

  [(NSMutableDictionary *)internetSettingsDictionary setObject:a4 forKey:a3];
}

- (id)_getAPNDictinaryForService:(int)a3
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v3 = &OBJC_IVAR___EdgeSettingsController__internetSettingsDictionary;
    }

    else
    {
      if (a3 != 2)
      {
        return [(EdgeSettingsController *)self _APNDictionaryForServiceFromSC:?];
      }

      v3 = &OBJC_IVAR___EdgeSettingsController__vvmSettingsDictionary;
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        v3 = &OBJC_IVAR___EdgeSettingsController__mmsSettingsDictionary;
        break;
      case 0x30:
        v3 = &OBJC_IVAR___EdgeSettingsController__tetheringSettingsDictionary;
        break;
      case 0x20000:
        v3 = &OBJC_IVAR___EdgeSettingsController__imsSettingsDictionary;
        break;
      default:
        return [(EdgeSettingsController *)self _APNDictionaryForServiceFromSC:?];
    }
  }

  v4 = *(&self->super.super.super.super.super.isa + *v3);
  if (v4)
  {
    return v4;
  }

  return [(EdgeSettingsController *)self _APNDictionaryForServiceFromSC:?];
}

- (BOOL)_isAPNDictionaryBlank:(id)a3
{
  if ((![a3 objectForKey:@"apn"] || (v4 = objc_msgSend(objc_msgSend(a3, "objectForKey:", @"apn"), "isEqual:", &stru_284EE8C10)) != 0) && (!objc_msgSend(a3, "objectForKey:", @"username") || (v4 = objc_msgSend(objc_msgSend(a3, "objectForKey:", @"username"), "isEqual:", &stru_284EE8C10)) != 0))
  {
    if ([a3 objectForKey:@"password"])
    {
      LOBYTE(v4) = [objc_msgSend(a3 objectForKey:{@"password", "isEqual:", &stru_284EE8C10}];
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4 & 1;
}

- (void)uploadSettingsOnCT:(id)a3
{
  v5 = [(EdgeSettingsController *)self coreTelephonyClient];
  v6 = [(EdgeSettingsController *)self context];

  [(CoreTelephonyClient *)v5 setUIConfiguredApns:v6 apns:a3 completion:&__block_literal_global];
}

void __45__EdgeSettingsController_uploadSettingsOnCT___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __45__EdgeSettingsController_uploadSettingsOnCT___block_invoke_cold_1();
    }
  }
}

- (void)commitAPNsSettings
{
  if (self->_cacheInitialized)
  {
    if ([(EdgeSettingsController *)self _isAPNDictionaryBlank:self->_internetSettingsDictionary])
    {
      -[NSMutableDictionary setObject:forKey:](self->_internetSettingsDictionary, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithInt:0], @"type-mask");
    }

    if ([(EdgeSettingsController *)self _isAPNDictionaryBlank:self->_vvmSettingsDictionary])
    {
      -[NSMutableDictionary setObject:forKey:](self->_vvmSettingsDictionary, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithInt:0], @"type-mask");
    }

    if ([(EdgeSettingsController *)self _isAPNDictionaryBlank:self->_mmsSettingsDictionary])
    {
      -[NSMutableDictionary setObject:forKey:](self->_mmsSettingsDictionary, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithInt:0], @"type-mask");
    }

    if ([(EdgeSettingsController *)self _isAPNDictionaryBlank:self->_imsSettingsDictionary])
    {
      -[NSMutableDictionary setObject:forKey:](self->_imsSettingsDictionary, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithInt:0], @"type-mask");
    }

    if ([(EdgeSettingsController *)self _isAPNDictionaryBlank:self->_tetheringSettingsDictionary])
    {
      -[NSMutableDictionary setObject:forKey:](self->_tetheringSettingsDictionary, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithInt:0], @"type-mask");
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = v4;
    if (self->_internetSettingsDictionary)
    {
      [v4 addObject:?];
    }

    if ((MGGetBoolAnswer() & 1) == 0)
    {
      if (self->_vvmSettingsDictionary)
      {
        [v5 addObject:?];
      }

      if (self->_mmsSettingsDictionary)
      {
        [v5 addObject:?];
      }
    }

    if (self->_tetheringSettingsDictionary)
    {
      [v5 addObject:?];
    }

    if (self->_imsSettingsDictionary)
    {
      [v5 addObject:?];
    }

    v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"usersettings", @"source", v5, @"apns", 0}];
    [(EdgeSettingsController *)self uploadSettingsOnCT:v6];

    [(EdgeSettingsController *)self resetAPNsDictionaries];

    [(EdgeSettingsController *)self loadCurrentAPNs];
  }
}

- (void)resetAPNsDictionaries
{
  internetSettingsDictionary = self->_internetSettingsDictionary;
  if (internetSettingsDictionary)
  {

    self->_internetSettingsDictionary = 0;
  }

  vvmSettingsDictionary = self->_vvmSettingsDictionary;
  if (vvmSettingsDictionary)
  {

    self->_vvmSettingsDictionary = 0;
  }

  mmsSettingsDictionary = self->_mmsSettingsDictionary;
  if (mmsSettingsDictionary)
  {

    self->_mmsSettingsDictionary = 0;
  }

  imsSettingsDictionary = self->_imsSettingsDictionary;
  if (imsSettingsDictionary)
  {

    self->_imsSettingsDictionary = 0;
  }

  tetheringSettingsDictionary = self->_tetheringSettingsDictionary;
  if (tetheringSettingsDictionary)
  {

    self->_tetheringSettingsDictionary = 0;
  }

  self->_cacheInitialized = 0;
}

- (void)loadCurrentAPNs
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23C13C000, MEMORY[0x277D86220], v0, "getConfiguredApns failed: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)resetAttachAPNSettings
{
  lastAttachAPNDict = self->_lastAttachAPNDict;
  if (lastAttachAPNDict)
  {
  }

  newAttachAPNDict = self->_newAttachAPNDict;
  if (newAttachAPNDict)
  {
  }

  v5 = [(EdgeSettingsController *)self attachAPNSettings];
  if (v5)
  {
    v6 = v5;
    self->_lastAttachAPNDict = [v5 mutableCopy];
    v7 = [v6 mutableCopy];
  }

  else
  {
    self->_lastAttachAPNDict = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  self->_newAttachAPNDict = v7;
}

- (id)attachAPNSettings
{
  v4 = 0;
  v2 = [(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] context:[(EdgeSettingsController *)self context] getAttachApnSettings:&v4];
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [EdgeSettingsController attachAPNSettings];
  }

  return v2;
}

- (void)commitAttachAPNSettings
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23C13C000, MEMORY[0x277D86220], v0, "modifyAttachApnSettings failed with %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldResetAttachAPN
{
  if ([(EdgeSettingsController *)self isAttachAPNEditingAllowed])
  {
    [(NSMutableDictionary *)self->_lastAttachAPNDict objectForKey:@"apn"];
  }

  return 0;
}

- (void)applicationWillSuspend
{
  [(EdgeSettingsController *)self commitAttachAPNSettings];
  [(EdgeSettingsController *)self commitAPNsSettings];
  v3.receiver = self;
  v3.super_class = EdgeSettingsController;
  [(EdgeSettingsController *)&v3 applicationWillSuspend];
}

- (void)applicationDidResume
{
  [(EdgeSettingsController *)self resetAttachAPNSettings];
  v3.receiver = self;
  v3.super_class = EdgeSettingsController;
  [(EdgeSettingsController *)&v3 applicationDidResume];
}

- (void)showCarrierSettingsEraseAlert:(BOOL)a3
{
  v5 = MEMORY[0x277D75110];
  v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ERASE_CARRIER_SETTINGS_TITLE", &stru_284EE8C10, @"EDGE Settings"}];
  v7 = [v5 alertControllerWithTitle:v6 message:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] preferredStyle:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ERASE_CARRIER_SETTINGS_CONFIRM_STRING", &stru_284EE8C10, @"EDGE Settings", 1}];
  v8 = MEMORY[0x277D750F8];
  v9 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ERASE_CARRIER_SETTINGS", &stru_284EE8C10, @"EDGE Settings"}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__EdgeSettingsController_showCarrierSettingsEraseAlert___block_invoke;
  v13[3] = &unk_278BB2DF8;
  v13[4] = self;
  v14 = a3;
  [v7 addAction:{objc_msgSend(v8, "actionWithTitle:style:handler:", v9, 0, v13)}];
  v10 = MEMORY[0x277D750F8];
  v11 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"CANCEL", &stru_284EE8C10, @"EDGE Settings"}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__EdgeSettingsController_showCarrierSettingsEraseAlert___block_invoke_248;
  v12[3] = &unk_278BB2E20;
  v12[4] = self;
  [v7 addAction:{objc_msgSend(v10, "actionWithTitle:style:handler:", v11, 0, v12)}];
  [(EdgeSettingsController *)self presentViewController:v7 animated:1 completion:0];
}

uint64_t __56__EdgeSettingsController_showCarrierSettingsEraseAlert___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "coreTelephonyClient")];
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [EdgeSettingsController resetCarrierSettings:];
    }

    return [*(a1 + 32) reloadSpecifiers];
  }

  return result;
}

- (id)getDefaultSettings:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = [(EdgeSettingsController *)self getGSMASettingsUIControl];
  v5 = v4;
  if (v4 == 1)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      v17 = *MEMORY[0x277D3FF38];
      v18 = MEMORY[0x277CBEC38];
      v19 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          if ([v21 identifier] == @"GSMA_SETTING")
          {
            v22 = v18;
          }

          else if ([v21 cellType] == 13)
          {
            v22 = v18;
          }

          else
          {
            v22 = v19;
          }

          [v21 setProperty:v22 forKey:v17];
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v15);
    }
  }

  else if (v4 == 2)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      v10 = *MEMORY[0x277D3FF38];
      v11 = MEMORY[0x277CBEC38];
      do
      {
        for (j = 0; j != v8; ++j)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v29 + 1) + 8 * j) setProperty:v11 forKey:v10];
        }

        v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v8);
    }
  }

  result = [MEMORY[0x277CCABB0] numberWithBool:v5 == 1];
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setDefaultSettings:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    [(EdgeSettingsController *)self resetAllConfiguredSettings];
    if ([(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] loadGSMASettings:[(EdgeSettingsController *)self context] state:1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [EdgeSettingsController resetCarrierSettings:];
      }
    }
  }

  else
  {

    [(EdgeSettingsController *)self showCarrierSettingsEraseAlert:0];
  }
}

- (void)didChangeDeviceManagementSettings:(id)a3
{
  v4 = [a3 slotID];
  if (v4 == [(CTXPCServiceSubscriptionContext *)[(EdgeSettingsController *)self context] slotID])
  {

    [(EdgeSettingsController *)self reloadSpecifiers];
  }
}

- (void)dealloc
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [EdgeSettingsController dealloc];
  }

  [(EdgeSettingsController *)self setCurrectSet:0];
  [(EdgeSettingsController *)self setCoreTelephonyClient:0];
  [(EdgeSettingsController *)self setContext:0];

  lastAttachAPNDict = self->_lastAttachAPNDict;
  if (lastAttachAPNDict)
  {
  }

  newAttachAPNDict = self->_newAttachAPNDict;
  if (newAttachAPNDict)
  {
  }

  [(EdgeSettingsController *)self resetAPNsDictionaries];
  v5.receiver = self;
  v5.super_class = EdgeSettingsController;
  [(EdgeSettingsController *)&v5 dealloc];
}

void __52__EdgeSettingsController_resetAllConfiguredSettings__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23C13C000, MEMORY[0x277D86220], v0, "resetAllUIConfiguredApns failed: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__EdgeSettingsController_resetAllConfiguredSettings__block_invoke_43_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23C13C000, MEMORY[0x277D86220], v0, "modifyAttachApnSettings failed: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)resetCarrierSettings:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23C13C000, MEMORY[0x277D86220], v0, "loadGSMASettings failed: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)specifiers
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 context];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23C13C000, MEMORY[0x277D86220], v1, "EdgeSettingsController context: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getGSMASettingsUIControl
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23C13C000, MEMORY[0x277D86220], v0, "Unexpected value retrieved via getGSMAUIControlSetting: %ld", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__EdgeSettingsController_uploadSettingsOnCT___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23C13C000, MEMORY[0x277D86220], v0, "setUIConfiguredApns failed: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)attachAPNSettings
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23C13C000, MEMORY[0x277D86220], v0, "getAttachApnSettings failed: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end