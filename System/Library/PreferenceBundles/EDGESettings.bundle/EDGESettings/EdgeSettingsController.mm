@interface EdgeSettingsController
+ (id)makeUIApnBasedOn:(id)on;
- (BOOL)_isAPNDictionaryBlank:(id)blank;
- (BOOL)_shouldShowUIForServiceType:(int)type;
- (BOOL)isTypeOfService:(id)service ofServiceType:(int)type;
- (BOOL)shouldResetAttachAPN;
- (EdgeSettingsController)init;
- (id)_getAPNDictinaryForService:(int)service;
- (id)_getMMSObjectForKey:(id)key;
- (id)attachAPNSettings;
- (id)edgeDNS:(id)s;
- (id)getAPNDataForSpecifier:(id)specifier;
- (id)getAttachAPNDataForSpecifier:(id)specifier;
- (id)getDefaultSettings:(id)settings;
- (id)getMMSNumericValueForSpecifier:(id)specifier;
- (id)getMMSValueForSpecifier:(id)specifier;
- (id)specifiers;
- (unint64_t)getGSMASettingsUIControl;
- (void)_setMMSOverrideValue:(id)value forKey:(id)key;
- (void)_updateKey:(id)key toValue:(id)value forServiceType:(int)type;
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)attachAPNSettings;
- (void)commitAPNsSettings;
- (void)commitAttachAPNSettings;
- (void)dealloc;
- (void)didChangeDeviceManagementSettings:(id)settings;
- (void)getGSMASettingsUIControl;
- (void)initAPNCacheDictionaries;
- (void)loadCurrentAPNs;
- (void)resetAPNsDictionaries;
- (void)resetAllConfiguredSettings;
- (void)resetAttachAPNSettings;
- (void)resetCarrierSettings:(id)settings;
- (void)setAPNData:(id)data forSpecifier:(id)specifier;
- (void)setAttachAPNData:(id)data forSpecifier:(id)specifier;
- (void)setDefaultSettings:(id)settings specifier:(id)specifier;
- (void)setMMSNumericValue:(id)value forSpecifier:(id)specifier;
- (void)setMMSValue:(id)value forSpecifier:(id)specifier;
- (void)showCarrierSettingsEraseAlert:(BOOL)alert;
- (void)specifiers;
- (void)uploadSettingsOnCT:(id)t;
@end

@implementation EdgeSettingsController

- (id)getAPNDataForSpecifier:(id)specifier
{
  v5 = [objc_msgSend(specifier propertyForKey:{@"ServiceTypeUI", "intValue"}] - 1;
  if (v5 > 4)
  {
    return &stru_284EE8C10;
  }

  v6 = dword_23C141D18[v5];
  v7 = [specifier propertyForKey:@"apnItemKey"];
  if (!v7)
  {
    return &stru_284EE8C10;
  }

  v8 = v7;
  v9 = [(EdgeSettingsController *)self _getAPNDictinaryForService:v6];

  return [v9 objectForKey:v8];
}

- (void)setAPNData:(id)data forSpecifier:(id)specifier
{
  v7 = [objc_msgSend(specifier propertyForKey:{@"ServiceTypeUI", "intValue"}] - 1;
  if (v7 >= 5)
  {

    [specifier propertyForKey:@"apnItemKey"];
  }

  else
  {
    v8 = dword_23C141D18[v7];
    v9 = [specifier propertyForKey:@"apnItemKey"];
    if (v9)
    {

      [(EdgeSettingsController *)self _updateKey:v9 toValue:data forServiceType:v8];
    }
  }
}

- (void)resetAllConfiguredSettings
{
  coreTelephonyClient = [(EdgeSettingsController *)self coreTelephonyClient];
  context = [(EdgeSettingsController *)self context];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__EdgeSettingsController_resetAllConfiguredSettings__block_invoke;
  v5[3] = &unk_278BB2DB0;
  v5[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient resetUIConfiguredApns:context completion:v5];
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

- (void)resetCarrierSettings:(id)settings
{
  if ([(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] loadGSMASettings:[(EdgeSettingsController *)self context] state:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [EdgeSettingsController resetCarrierSettings:];
  }

  [(EdgeSettingsController *)self resetAllConfiguredSettings];
}

- (id)_getMMSObjectForKey:(id)key
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
  if (!v6 || (result = [v6 objectForKey:key]) == 0)
  {
    result = [(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] context:[(EdgeSettingsController *)self context] getCarrierBundleValue:&unk_284EE9BD8 error:0];
    if (result)
    {

      return [result objectForKey:key];
    }
  }

  return result;
}

- (void)_setMMSOverrideValue:(id)value forKey:(id)key
{
  if (!value || (v6 = value, [value isEqual:&stru_284EE8C10]))
  {
    v6 = 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
    [dictionary addEntriesFromDictionary:v11];
  }

  if (v6)
  {
    [dictionary setObject:v6 forKey:key];
  }

  else
  {
    [dictionary removeObjectForKey:key];
  }

  if ([(CTXPCServiceSubscriptionContext *)[(EdgeSettingsController *)self context] slotID]== 1)
  {
    v12 = @"MMS";
  }

  else
  {
    v12 = @"MMS2";
  }

  CFPreferencesSetValue(v12, dictionary, @"com.apple.mms_override", v9, v10);
  CFPreferencesSynchronize(@"com.apple.mms_override", v9, v10);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.MMSEnabled.changed", 0, 0, 0);
}

- (id)getMMSValueForSpecifier:(id)specifier
{
  result = [specifier propertyForKey:@"key"];
  if (result)
  {

    return [(EdgeSettingsController *)self _getMMSObjectForKey:result];
  }

  return result;
}

- (void)setMMSValue:(id)value forSpecifier:(id)specifier
{
  v7 = [specifier propertyForKey:@"key"];
  if (v7)
  {
    [(EdgeSettingsController *)self _setMMSOverrideValue:value forKey:v7];
    if (!value || ![value length])
    {

      [(EdgeSettingsController *)self reloadSpecifier:specifier];
    }
  }
}

- (id)getMMSNumericValueForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"key"];
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

- (void)setMMSNumericValue:(id)value forSpecifier:(id)specifier
{
  v7 = [specifier propertyForKey:@"key"];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  if (!value)
  {
    [(EdgeSettingsController *)self _setMMSOverrideValue:0 forKey:v7];
LABEL_9:

    [(EdgeSettingsController *)self reloadSpecifier:specifier];
    return;
  }

  if ([value length])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(value, "intValue")}];
  }

  else
  {
    v9 = 0;
  }

  [(EdgeSettingsController *)self _setMMSOverrideValue:v9 forKey:v8];
  if (![value length])
  {
    goto LABEL_9;
  }
}

- (id)edgeDNS:(id)s
{
  dataServiceID = [(PSSystemConfiguration *)self->_systemConfig dataServiceID];
  v5 = [(PSSystemConfiguration *)self->_systemConfig protocolConfigurationValueForKey:*MEMORY[0x277CE1710] protocolType:*MEMORY[0x277CE16E0] serviceID:dataServiceID];
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

- (id)getAttachAPNDataForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"apnItemKey"];
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

- (void)setAttachAPNData:(id)data forSpecifier:(id)specifier
{
  v7 = [specifier propertyForKey:@"apnItemKey"];
  if (data)
  {
    v8 = v7;
    if (v7)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && (![data isEqualToString:&stru_284EE8C10] || -[NSMutableDictionary objectForKey:](self->_newAttachAPNDict, "objectForKey:", v8)))
      {
        [(NSMutableDictionary *)self->_newAttachAPNDict setObject:data forKey:v8];
      }
    }
  }

  [(EdgeSettingsController *)self reloadSpecifier:specifier];
}

- (BOOL)_shouldShowUIForServiceType:(int)type
{
  v5 = [(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] context:[(EdgeSettingsController *)self context] getCarrierBundleValue:&unk_284EE9BF0 error:0];
  if (v5 || (v5 = [(CoreTelephonyClient *)[(EdgeSettingsController *)self coreTelephonyClient] context:[(EdgeSettingsController *)self context] getCarrierBundleValue:&unk_284EE9C08 error:0]) != 0)
  {
    intValue = [v5 intValue];
  }

  else
  {
    LODWORD(intValue) = 5;
  }

  if (type == 1 && (intValue & 1) != 0)
  {
    goto LABEL_6;
  }

  if (type == 2 && (intValue & 2) != 0)
  {
    v7 = MGGetBoolAnswer();
    if (v7)
    {
      LOBYTE(v7) = [(EdgeSettingsController *)self _APNDictionaryForServiceFromSC:2]!= 0;
    }
  }

  else if (type == 4 && (intValue & 4) != 0)
  {

    LOBYTE(v7) = MGGetBoolAnswer();
  }

  else
  {
    if (type == 0x20000 && (intValue & 0x20000) != 0)
    {
LABEL_6:
      LOBYTE(v7) = 1;
      return v7;
    }

    if (type == 48)
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
    specifier = [(EdgeSettingsController *)self specifier];
    -[EdgeSettingsController setContext:](self, "setContext:", [specifier propertyForKey:*MEMORY[0x277D40128]]);
    specifier2 = [(EdgeSettingsController *)self specifier];
    -[EdgeSettingsController setCoreTelephonyClient:](self, "setCoreTelephonyClient:", [specifier2 propertyForKey:kEdgeSettingsClientConnection]);
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
  getGSMASettingsUIControl = [(EdgeSettingsController *)self getGSMASettingsUIControl];
  if (getGSMASettingsUIControl)
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

  if (getGSMASettingsUIControl != 1 && v16)
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

- (BOOL)isTypeOfService:(id)service ofServiceType:(int)type
{
  v5 = [service valueForKey:@"type-mask"];
  result = 0;
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      if ((valuePtr & type) != 0)
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

+ (id)makeUIApnBasedOn:(id)on
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (on)
  {
    [v4 setObject:objc_msgSend(on forKey:{"objectForKey:", @"apn", @"apn"}];
    [v4 setObject:objc_msgSend(on forKey:{"objectForKey:", @"username", @"username"}];
    [v4 setObject:objc_msgSend(on forKey:{"objectForKey:", @"password", @"password"}];
    [v4 setObject:objc_msgSend(on forKey:{"objectForKey:", @"type-mask", @"type-mask"}];
  }

  return v4;
}

- (void)_updateKey:(id)key toValue:(id)value forServiceType:(int)type
{
  if (!self->_cacheInitialized)
  {
    [(EdgeSettingsController *)self initAPNCacheDictionaries];
  }

  if (type <= 3)
  {
    if (type == 1)
    {
      p_internetSettingsDictionary = &self->_internetSettingsDictionary;
      internetSettingsDictionary = self->_internetSettingsDictionary;
      if (!internetSettingsDictionary)
      {
        selfCopy5 = self;
        p_vvmSettingsDictionary = &self->_internetSettingsDictionary;
        v13 = 1;
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (type != 2)
    {
      return;
    }

    p_internetSettingsDictionary = &self->_vvmSettingsDictionary;
    internetSettingsDictionary = self->_vvmSettingsDictionary;
    if (internetSettingsDictionary)
    {
      goto LABEL_20;
    }

    selfCopy5 = self;
    p_vvmSettingsDictionary = &self->_vvmSettingsDictionary;
    v13 = 2;
LABEL_19:
    [(EdgeSettingsController *)selfCopy5 initDictionaryForUIApn:p_vvmSettingsDictionary forServiceType:v13];
    internetSettingsDictionary = *p_internetSettingsDictionary;
    goto LABEL_20;
  }

  if (type == 4)
  {
    p_internetSettingsDictionary = &self->_mmsSettingsDictionary;
    internetSettingsDictionary = self->_mmsSettingsDictionary;
    if (internetSettingsDictionary)
    {
      goto LABEL_20;
    }

    selfCopy5 = self;
    p_vvmSettingsDictionary = &self->_mmsSettingsDictionary;
    v13 = 4;
    goto LABEL_19;
  }

  if (type != 48)
  {
    if (type != 0x20000)
    {
      return;
    }

    p_internetSettingsDictionary = &self->_imsSettingsDictionary;
    internetSettingsDictionary = self->_imsSettingsDictionary;
    if (internetSettingsDictionary)
    {
      goto LABEL_20;
    }

    selfCopy5 = self;
    p_vvmSettingsDictionary = &self->_imsSettingsDictionary;
    v13 = 0x20000;
    goto LABEL_19;
  }

  p_internetSettingsDictionary = &self->_tetheringSettingsDictionary;
  internetSettingsDictionary = self->_tetheringSettingsDictionary;
  if (!internetSettingsDictionary)
  {
    selfCopy5 = self;
    p_vvmSettingsDictionary = &self->_tetheringSettingsDictionary;
    v13 = 48;
    goto LABEL_19;
  }

LABEL_20:

  [(NSMutableDictionary *)internetSettingsDictionary setObject:value forKey:key];
}

- (id)_getAPNDictinaryForService:(int)service
{
  if (service <= 3)
  {
    if (service == 1)
    {
      v3 = &OBJC_IVAR___EdgeSettingsController__internetSettingsDictionary;
    }

    else
    {
      if (service != 2)
      {
        return [(EdgeSettingsController *)self _APNDictionaryForServiceFromSC:?];
      }

      v3 = &OBJC_IVAR___EdgeSettingsController__vvmSettingsDictionary;
    }
  }

  else
  {
    switch(service)
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

- (BOOL)_isAPNDictionaryBlank:(id)blank
{
  if ((![blank objectForKey:@"apn"] || (v4 = objc_msgSend(objc_msgSend(blank, "objectForKey:", @"apn"), "isEqual:", &stru_284EE8C10)) != 0) && (!objc_msgSend(blank, "objectForKey:", @"username") || (v4 = objc_msgSend(objc_msgSend(blank, "objectForKey:", @"username"), "isEqual:", &stru_284EE8C10)) != 0))
  {
    if ([blank objectForKey:@"password"])
    {
      LOBYTE(v4) = [objc_msgSend(blank objectForKey:{@"password", "isEqual:", &stru_284EE8C10}];
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4 & 1;
}

- (void)uploadSettingsOnCT:(id)t
{
  coreTelephonyClient = [(EdgeSettingsController *)self coreTelephonyClient];
  context = [(EdgeSettingsController *)self context];

  [(CoreTelephonyClient *)coreTelephonyClient setUIConfiguredApns:context apns:t completion:&__block_literal_global];
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

  attachAPNSettings = [(EdgeSettingsController *)self attachAPNSettings];
  if (attachAPNSettings)
  {
    v6 = attachAPNSettings;
    self->_lastAttachAPNDict = [attachAPNSettings mutableCopy];
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

- (void)showCarrierSettingsEraseAlert:(BOOL)alert
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
  alertCopy = alert;
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

- (id)getDefaultSettings:(id)settings
{
  v35 = *MEMORY[0x277D85DE8];
  getGSMASettingsUIControl = [(EdgeSettingsController *)self getGSMASettingsUIControl];
  v5 = getGSMASettingsUIControl;
  if (getGSMASettingsUIControl == 1)
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

  else if (getGSMASettingsUIControl == 2)
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

- (void)setDefaultSettings:(id)settings specifier:(id)specifier
{
  if ([settings BOOLValue])
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

- (void)didChangeDeviceManagementSettings:(id)settings
{
  slotID = [settings slotID];
  if (slotID == [(CTXPCServiceSubscriptionContext *)[(EdgeSettingsController *)self context] slotID])
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
  [self context];
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