@interface ASAccessoryInfoViewController
- (ASAccessoryInfoViewController)init;
- (ASAccessoryInfoViewController)initWithDevice:(id)device;
- (BOOL)isDeviceArchived;
- (CGSize)preferredContentSize;
- (id)companionAppSpecifiers:(id)specifiers;
- (id)isAppAllowed:(id)allowed;
- (id)specifiers;
- (id)specifiersForAppAccessSection;
- (id)specifiersForArchivedDevice;
- (id)specifiersForForgetDeviceButton;
- (id)specifiersForHeader;
- (id)specifiersForOpenAppButton:(id)button;
- (id)specifiersForPairedDevice;
- (id)specifiersForRenameSection;
- (id)specifiersForResetWiFiButton;
- (id)specifiersForUnpairDeviceButton;
- (id)specifiersForUnpairedDisclaimer;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)unpairedString:(id)string;
- (void)forgetDevice:(id)device;
- (void)handleDAEvent:(id)event;
- (void)openApp:(id)app;
- (void)resetWiFiIdentifier:(id)identifier;
- (void)setAppAllowed:(id)allowed specifier:(id)specifier;
- (void)unpairDevice:(id)device;
- (void)viewDidLoad;
@end

@implementation ASAccessoryInfoViewController

- (ASAccessoryInfoViewController)init
{
  v5.receiver = self;
  v5.super_class = ASAccessoryInfoViewController;
  v2 = [(ASAccessoryInfoViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_useAsHeader = 0;
    v2->_supportsWAPI = MGGetBoolAnswer();
    v3->_didDismiss = 0;
  }

  return v3;
}

- (ASAccessoryInfoViewController)initWithDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v17.receiver = self;
    v17.super_class = ASAccessoryInfoViewController;
    v6 = [(ASAccessoryInfoViewController *)&v17 init];
    v7 = objc_alloc_init(MEMORY[0x277D04780]);
    session = v6->_session;
    v6->_session = v7;

    appAccessInfoMap = [deviceCopy appAccessInfoMap];
    allKeys = [appAccessInfoMap allKeys];
    firstObject = [allKeys firstObject];
    [(DASession *)v6->_session setBundleID:firstObject];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__ASAccessoryInfoViewController_initWithDevice___block_invoke;
    v15[3] = &unk_278A01E50;
    v12 = v6;
    v16 = v12;
    [(DASession *)v6->_session setEventHandler:v15];
    [(DASession *)v6->_session activate];
    objc_storeStrong(&v12->_device, device);
    v12->_useAsHeader = 1;
    self = v12;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ASAccessoryInfoViewController;
  [(ASAccessoryInfoViewController *)&v4 viewDidLoad];
  name = [(DADevice *)self->_device name];
  [(ASAccessoryInfoViewController *)self setTitle:name];
}

- (CGSize)preferredContentSize
{
  +[ASAccessoryInfoHeaderCell headerHeight];
  v4 = v3 + 0.0 + 44.0 + 24.0 + 44.0 + 24.0 + 24.0;
  appAccessInfoMap = [(DADevice *)self->_device appAccessInfoMap];
  v6 = v4 + (44 * [appAccessInfoMap count]);

  view = [(ASAccessoryInfoViewController *)self view];
  [view bounds];
  v9 = v8;

  v10 = v9;
  v11 = v6 + 100.0 + 24.0 + 44.0 + 24.0 + 44.0 + 24.0;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC40];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    if (!self->_device)
    {
      v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD18]) propertyForKey:@"device"];
      device = self->_device;
      self->_device = v6;

      v8 = objc_alloc_init(MEMORY[0x277D04780]);
      session = self->_session;
      self->_session = v8;

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __43__ASAccessoryInfoViewController_specifiers__block_invoke;
      v16[3] = &unk_278A01E50;
      v16[4] = self;
      [(DASession *)self->_session setEventHandler:v16];
      [(DASession *)self->_session activate];
    }

    [(ASAccessoryInfoViewController *)self setTitle:0];
    array = [MEMORY[0x277CBEB18] array];
    specifiersForHeader = [(ASAccessoryInfoViewController *)self specifiersForHeader];
    [array addObjectsFromArray:specifiersForHeader];

    if ([(ASAccessoryInfoViewController *)self isDeviceArchived])
    {
      [(ASAccessoryInfoViewController *)self specifiersForArchivedDevice];
    }

    else
    {
      [(ASAccessoryInfoViewController *)self specifiersForPairedDevice];
    }
    v12 = ;
    [array addObjectsFromArray:v12];

    v13 = [array copy];
    v14 = *(&self->super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.isa + v2) = v13;

    v4 = *(&self->super.super.super.super.super.isa + v2);
  }

  return v4;
}

- (id)specifiersForArchivedDevice
{
  array = [MEMORY[0x277CBEB18] array];
  specifiersForUnpairedDisclaimer = [(ASAccessoryInfoViewController *)self specifiersForUnpairedDisclaimer];
  [array addObjectsFromArray:specifiersForUnpairedDisclaimer];
  specifiersForResetWiFiButton = [(ASAccessoryInfoViewController *)self specifiersForResetWiFiButton];
  [array addObjectsFromArray:specifiersForResetWiFiButton];

  return array;
}

- (id)specifiersForPairedDevice
{
  array = [MEMORY[0x277CBEB18] array];
  specifiersForRenameSection = [(ASAccessoryInfoViewController *)self specifiersForRenameSection];
  [array addObjectsFromArray:specifiersForRenameSection];
  specifiersForAppAccessSection = [(ASAccessoryInfoViewController *)self specifiersForAppAccessSection];
  [array addObjectsFromArray:specifiersForAppAccessSection];
  v6 = [specifiersForAppAccessSection objectAtIndexedSubscript:1];
  v7 = [(ASAccessoryInfoViewController *)self specifiersForOpenAppButton:v6];

  [array addObjectsFromArray:v7];
  if (!self->_useAsHeader)
  {
    wifiAwareOTAName = [(DADevice *)self->_device wifiAwareOTAName];

    if (wifiAwareOTAName)
    {
      specifiersForUnpairDeviceButton = [(ASAccessoryInfoViewController *)self specifiersForUnpairDeviceButton];
      [array addObjectsFromArray:specifiersForUnpairDeviceButton];
      specifiersForResetWiFiButton = [(ASAccessoryInfoViewController *)self specifiersForResetWiFiButton];
      [array addObjectsFromArray:specifiersForResetWiFiButton];
    }

    else
    {
      specifiersForUnpairDeviceButton = [(ASAccessoryInfoViewController *)self specifiersForForgetDeviceButton];
      [array addObjectsFromArray:specifiersForUnpairDeviceButton];
    }
  }

  return array;
}

- (id)specifiersForUnpairedDisclaimer
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v4 setIdentifier:@"unpaired"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Unpaired Device Tracking Disclaimer" value:&stru_28499D698 table:0];

  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF80]];
  [array addObject:v4];
  PSSpecifierClass = getPSSpecifierClass();
  name = [(DADevice *)self->_device name];
  v9 = [(objc_class *)PSSpecifierClass preferenceSpecifierNamed:name target:self set:0 get:sel_unpairedString_ detail:0 cell:-1 edit:0];

  [array addObject:v9];

  return array;
}

- (id)specifiersForRenameSection
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v4 setIdentifier:@"rename"];
  bluetoothIdentifier = [(DADevice *)self->_device bluetoothIdentifier];

  if (bluetoothIdentifier)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    sSID2 = [v6 localizedStringForKey:@"Accessory Technology Footer Bluetooth" value:&stru_28499D698 table:0];

    wifiAwareOTAName = [(DADevice *)self->_device wifiAwareOTAName];

    if (wifiAwareOTAName)
    {
      supportsWAPI = self->_supportsWAPI;
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = v10;
      if (supportsWAPI)
      {
        v12 = @"Accessory Technology Footer Bluetooth And WLAN Aware";
      }

      else
      {
        v12 = @"Accessory Technology Footer Bluetooth And WiFi Aware";
      }
    }

    else
    {
      sSID = [(DADevice *)self->_device SSID];

      if (!sSID)
      {
        goto LABEL_27;
      }

      networkUnsecured = [(DADevice *)self->_device networkUnsecured];
      v18 = self->_supportsWAPI;
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = v10;
      if (networkUnsecured)
      {
        if (v18)
        {
          v12 = @"Accessory Technology Footer Bluetooth And WLAN Unsecured";
        }

        else
        {
          v12 = @"Accessory Technology Footer Bluetooth And WiFi Unsecured";
        }
      }

      else if (v18)
      {
        v12 = @"Accessory Technology Footer Bluetooth And WLAN";
      }

      else
      {
        v12 = @"Accessory Technology Footer Bluetooth And WiFi";
      }
    }

    v21 = [v10 localizedStringForKey:v12 value:&stru_28499D698 table:0];

    sSID2 = v21;
  }

  else
  {
    wifiAwareOTAName2 = [(DADevice *)self->_device wifiAwareOTAName];

    if (wifiAwareOTAName2)
    {
      v14 = self->_supportsWAPI;
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v14)
      {
        v15 = @"Accessory Technology Footer WLAN Aware";
      }

      else
      {
        v15 = @"Accessory Technology Footer WiFi Aware";
      }
    }

    else
    {
      sSID2 = [(DADevice *)self->_device SSID];

      if (!sSID2)
      {
        goto LABEL_27;
      }

      networkUnsecured2 = [(DADevice *)self->_device networkUnsecured];
      v20 = self->_supportsWAPI;
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (networkUnsecured2)
      {
        if (v20)
        {
          v15 = @"Accessory Technology Footer WLAN Unsecured";
        }

        else
        {
          v15 = @"Accessory Technology Footer WiFi Unsecured";
        }
      }

      else if (v20)
      {
        v15 = @"Accessory Technology Footer WLAN";
      }

      else
      {
        v15 = @"Accessory Technology Footer WiFi";
      }
    }

    sSID2 = [v11 localizedStringForKey:v15 value:&stru_28499D698 table:0];
  }

LABEL_27:
  [v4 setObject:sSID2 forKeyedSubscript:*MEMORY[0x277D3FF80]];
  [array addObject:v4];
  PSSpecifierClass = getPSSpecifierClass();
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"Name" value:&stru_28499D698 table:0];
  v25 = [(objc_class *)PSSpecifierClass preferenceSpecifierNamed:v24 target:self set:0 get:sel_deviceName_ detail:objc_opt_class() cell:2 edit:0];

  [v25 setProperty:self->_device forKey:@"device"];
  appAccessInfoMap = [(DADevice *)self->_device appAccessInfoMap];
  allKeys = [appAccessInfoMap allKeys];
  firstObject = [allKeys firstObject];
  [v25 setProperty:firstObject forKey:@"bundleID"];

  [array addObject:v25];

  return array;
}

- (id)specifiersForAppAccessSection
{
  v33 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  appAccessInfoMap = [(DADevice *)self->_device appAccessInfoMap];
  allKeys = [appAccessInfoMap allKeys];

  PSSpecifierClass = getPSSpecifierClass();
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Apps Header" value:&stru_28499D698 table:0];
  selfCopy = self;
  v9 = [(objc_class *)PSSpecifierClass preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:0 edit:0];

  [v9 setIdentifier:@"header_Apps"];
  v27 = array;
  v22 = v9;
  [array addObject:v9];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = allKeys;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v25 = *v29;
    v24 = *MEMORY[0x277D40028];
    v12 = *MEMORY[0x277D40010];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v14 allowPlaceholder:1 error:0];
        localizedName = [v15 localizedName];
        v17 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:localizedName target:selfCopy set:sel_setAppAllowed_specifier_ get:sel_isAppAllowed_ detail:0 cell:6 edit:0];
        v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v17 setProperty:v18 forKey:v24];

        [v17 setProperty:v14 forKey:v12];
        [v17 setProperty:v14 forKey:@"bundleID"];
        [v27 addObject:v17];
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v19 = [v27 sortedArrayUsingComparator:&__block_literal_global_234];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

BOOL __62__ASAccessoryInfoViewController_specifiersForAppAccessSection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  return v5 < v6;
}

- (id)specifiersForOpenAppButton:(id)button
{
  v4 = MEMORY[0x277CBEB18];
  buttonCopy = button;
  array = [v4 array];
  v7 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v7 setIdentifier:@"appLink"];
  [array addObject:v7];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Open App %@" value:&stru_28499D698 table:0];
  name = [buttonCopy name];
  v12 = [v8 stringWithFormat:v10, name];

  v13 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v14 = [buttonCopy propertyForKey:@"bundleID"];

  [v13 setProperty:v14 forKey:@"bundleID"];
  [v13 setButtonAction:sel_openApp_];
  [array addObject:v13];

  return array;
}

- (id)specifiersForForgetDeviceButton
{
  v11[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v4 setIdentifier:@"forget"];
  PSSpecifierClass = getPSSpecifierClass();
  v6 = +[ASAccessoryInfoViewFactory forgetDeviceButtonTitle];
  v7 = [(objc_class *)PSSpecifierClass preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v7 setButtonAction:sel_forgetDevice_];
  v11[0] = v4;
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [array addObjectsFromArray:v8];

  v9 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)specifiersForUnpairDeviceButton
{
  v11[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v4 setIdentifier:@"unpair"];
  PSSpecifierClass = getPSSpecifierClass();
  v6 = +[ASAccessoryInfoViewFactory unpairDeviceButtonTitle];
  v7 = [(objc_class *)PSSpecifierClass preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v7 setButtonAction:sel_unpairDevice_];
  v11[0] = v4;
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [array addObjectsFromArray:v8];

  v9 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)specifiersForResetWiFiButton
{
  v16[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v4 setIdentifier:@"resetWiFiGroup"];
  supportsWAPI = self->_supportsWAPI;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (supportsWAPI)
  {
    v8 = @"Reset WLAN Footer";
  }

  else
  {
    v8 = @"Reset WiFi Footer";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_28499D698 table:0];

  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF80]];
  PSSpecifierClass = getPSSpecifierClass();
  v11 = +[ASAccessoryInfoViewFactory resetWiFiButtonTitle];
  v12 = [(objc_class *)PSSpecifierClass preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v12 setButtonAction:sel_resetWiFiIdentifier_];
  [v12 setIdentifier:@"resetWiFi"];
  v16[0] = v4;
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [array addObjectsFromArray:v13];

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)specifiersForHeader
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  v4 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:&stru_28499D698 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setUserInfo:self->_device];
  [v4 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE60]];
  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF30]];
  v8[0] = v3;
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)companionAppSpecifiers:(id)specifiers
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  specifiersCopy = specifiers;
  array = [v4 array];
  PSSpecifierClass = getPSSpecifierClass();
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Companion App" value:&stru_28499D698 table:0];
  v10 = [(objc_class *)PSSpecifierClass preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v11 = [@"header_companionApp_" stringByAppendingString:specifiersCopy];
  [v10 setIdentifier:v11];

  v12 = [(objc_class *)getPSSpecifierClass() preferenceSpecifierNamed:&stru_28499D698 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  v13 = [@"companionApp_" stringByAppendingString:specifiersCopy];
  [v12 setIdentifier:v13];

  [v12 setUserInfo:specifiersCopy];
  [v12 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE60]];
  [v12 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF30]];
  v17[0] = v10;
  v17[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [array addObjectsFromArray:v14];

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(ASAccessoryInfoViewController *)self specifierAtIndexPath:pathCopy];
  v16.receiver = self;
  v16.super_class = ASAccessoryInfoViewController;
  v9 = [(ASAccessoryInfoViewController *)&v16 tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  identifier = [v8 identifier];
  LODWORD(viewCopy) = [identifier isEqualToString:@"resetWiFi"];

  if (viewCopy)
  {
    defaultContentConfiguration = [v9 defaultContentConfiguration];
    name = [v8 name];
    [defaultContentConfiguration setText:name];

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    textProperties = [defaultContentConfiguration textProperties];
    [textProperties setColor:systemRedColor];

    [v9 setContentConfiguration:defaultContentConfiguration];
  }

  return v9;
}

- (void)setAppAllowed:(id)allowed specifier:(id)specifier
{
  allowedCopy = allowed;
  v10 = [specifier propertyForKey:@"bundleID"];
  appAccessInfoMap = [(DADevice *)self->_device appAccessInfoMap];
  v8 = [appAccessInfoMap objectForKeyedSubscript:v10];

  LODWORD(appAccessInfoMap) = [allowedCopy BOOLValue];
  if (appAccessInfoMap)
  {
    v9 = 25;
  }

  else
  {
    v9 = 28;
  }

  [v8 setState:v9];
  [(DASession *)self->_session setDeviceAppAccessInfo:v8 device:self->_device completionHandler:&__block_literal_global_280];
}

- (id)unpairedString:(id)string
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Unpaired" value:&stru_28499D698 table:0];

  return v4;
}

- (id)isAppAllowed:(id)allowed
{
  v4 = [allowed propertyForKey:@"bundleID"];
  appAccessInfoMap = [(DADevice *)self->_device appAccessInfoMap];
  v6 = [appAccessInfoMap objectForKeyedSubscript:v4];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v6 state] == 20 || objc_msgSend(v6, "state") == 25;
  v9 = [v7 numberWithInt:v8];

  return v9;
}

- (BOOL)isDeviceArchived
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(DADevice *)self->_device state]== 1)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    appAccessInfoMap = [(DADevice *)self->_device appAccessInfoMap];
    allValues = [appAccessInfoMap allValues];

    v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v10 + 1) + 8 * i) state] == 1)
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)openApp:(id)app
{
  v3 = MEMORY[0x277CC1E80];
  appCopy = app;
  defaultWorkspace = [v3 defaultWorkspace];
  v5 = [appCopy propertyForKey:@"bundleID"];

  [defaultWorkspace openApplicationWithBundleID:v5];
}

- (void)unpairDevice:(id)device
{
  name = [(DADevice *)self->_device name];
  v5 = MEMORY[0x277D75110];
  v6 = [ASAccessoryInfoViewFactory unpairDeviceAlertTitle:name];
  v7 = +[ASAccessoryInfoViewFactory unpairDeviceAlertBody];
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = +[ASAccessoryInfoViewFactory unpairDeviceAlertConfirm];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__ASAccessoryInfoViewController_unpairDevice___block_invoke;
  v15[3] = &unk_278A01E98;
  v15[4] = self;
  v11 = [v9 actionWithTitle:v10 style:2 handler:v15];

  v12 = MEMORY[0x277D750F8];
  v13 = +[ASAccessoryInfoViewFactory unpairDeviceAlertCancel];
  v14 = [v12 actionWithTitle:v13 style:0 handler:0];

  [v8 addAction:v11];
  [v8 addAction:v14];
  [(ASAccessoryInfoViewController *)self presentViewController:v8 animated:1 completion:0];
}

void __46__ASAccessoryInfoViewController_unpairDevice___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(*(a1 + 32) + 1464) appAccessInfoMap];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = [*(*(a1 + 32) + 1464) appAccessInfoMap];
        v8 = [v7 objectForKeyedSubscript:v6];

        [v8 setState:1];
        [*(*(a1 + 32) + 1464) setState:1];
        v9 = objc_alloc_init(MEMORY[0x277D04780]);
        [v9 setBundleID:@"com.apple.Preferences"];
        v10 = *(*(a1 + 32) + 1464);
        v15 = 0;
        [MEMORY[0x277D04780] setDeviceAppAccessInfo:v8 device:v10 session:v9 error:&v15];
        v11 = v15;
        if (v11 && gLogCategory_ASAccessoryInfoView <= 90 && (gLogCategory_ASAccessoryInfoView != -1 || _LogCategory_Initialize()))
        {
          __46__ASAccessoryInfoViewController_unpairDevice___block_invoke_cold_1();
        }

        ++v5;
      }

      while (v3 != v5);
      v12 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      v3 = v12;
    }

    while (v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)resetWiFiIdentifier:(id)identifier
{
  session = self->_session;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__ASAccessoryInfoViewController_resetWiFiIdentifier___block_invoke;
  v4[3] = &unk_278A01EE0;
  v4[4] = self;
  [(DASession *)session getDevicesWithFlags:1032 completionHandler:v4];
}

void __53__ASAccessoryInfoViewController_resetWiFiIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = [a2 bs_compactMap:&__block_literal_global_294];
    if ([v4 count] < 2)
    {
      v7 = MEMORY[0x277D75110];
      v8 = +[ASAccessoryInfoViewFactory resetWiFiAlertTitle];
      v9 = +[ASAccessoryInfoViewFactory resetWiFiAlertBody];
      v5 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:0];

      v10 = MEMORY[0x277D750F8];
      v11 = +[ASAccessoryInfoViewFactory resetWiFiAlertConfirm];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __53__ASAccessoryInfoViewController_resetWiFiIdentifier___block_invoke_3;
      v15[3] = &unk_278A01E98;
      v15[4] = *(a1 + 32);
      v6 = [v10 actionWithTitle:v11 style:2 handler:v15];

      v12 = MEMORY[0x277D750F8];
      v13 = +[ASAccessoryInfoViewFactory resetWiFiAlertCancel];
      v14 = [v12 actionWithTitle:v13 style:0 handler:0];

      [(ASAccessoryResetWiFiViewController *)v5 addAction:v6];
      [(ASAccessoryResetWiFiViewController *)v5 addAction:v14];
      [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
    }

    else
    {
      v5 = [[ASAccessoryResetWiFiViewController alloc] initWithDevices:v4];
      v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
      [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
    }
  }
}

id __53__ASAccessoryInfoViewController_resetWiFiIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 wifiAwareOTAName];

  if (v3)
  {
    v3 = v2;
  }

  return v3;
}

void __53__ASAccessoryInfoViewController_resetWiFiIdentifier___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1456) resetWiFiIdentifier:&__block_literal_global_298];
  *(*(a1 + 32) + 1489) = 1;
  v3 = [*(a1 + 32) navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (void)forgetDevice:(id)device
{
  v4 = MEMORY[0x277D75110];
  v5 = +[ASAccessoryInfoViewFactory forgetDeviceAlertTitle];
  v6 = +[ASAccessoryInfoViewFactory forgetDeviceAlertBody];
  v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:0];

  v8 = MEMORY[0x277D750F8];
  v9 = +[ASAccessoryInfoViewFactory forgetDeviceAlertConfirm];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__ASAccessoryInfoViewController_forgetDevice___block_invoke;
  v14[3] = &unk_278A01E98;
  v14[4] = self;
  v10 = [v8 actionWithTitle:v9 style:2 handler:v14];

  v11 = MEMORY[0x277D750F8];
  v12 = +[ASAccessoryInfoViewFactory forgetDeviceAlertCancel];
  v13 = [v11 actionWithTitle:v12 style:0 handler:0];

  [v7 addAction:v10];
  [v7 addAction:v13];
  [(ASAccessoryInfoViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __46__ASAccessoryInfoViewController_forgetDevice___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D04780]);
  [v2 setBundleID:@"com.apple.Preferences"];
  v3 = [*(*(a1 + 32) + 1464) appAccessInfoMap];
  v4 = [v3 allValues];
  v5 = [v4 firstObject];

  [v5 setState:0];
  v6 = *(*(a1 + 32) + 1464);
  v10 = 0;
  [MEMORY[0x277D04780] setDeviceAppAccessInfo:v5 device:v6 session:v2 error:&v10];
  v7 = v10;
  if (v7 && gLogCategory_ASAccessoryInfoView <= 90 && (gLogCategory_ASAccessoryInfoView != -1 || _LogCategory_Initialize()))
  {
    __46__ASAccessoryInfoViewController_forgetDevice___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 1489) = 1;
  v8 = [*(a1 + 32) navigationController];
  v9 = [v8 popViewControllerAnimated:1];
}

- (void)handleDAEvent:(id)event
{
  eventCopy = event;
  eventType = [eventCopy eventType];
  if (eventType == 41)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_didDismiss)
    {
      v15 = eventCopy;
      identifier = [(DADevice *)self->_device identifier];
      device = [v15 device];
      identifier2 = [device identifier];
      v18 = [identifier2 isEqualToString:identifier];

      if (!v18)
      {
        goto LABEL_12;
      }

      device2 = [v15 device];
      device = self->_device;
      self->_device = device2;

      if ([(ASAccessoryInfoViewController *)self isDeviceArchived])
      {
        v13 = v22;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v14 = __47__ASAccessoryInfoViewController_handleDAEvent___block_invoke_2;
      }

      else
      {
        self->_didDismiss = 1;
        v13 = v21;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v14 = __47__ASAccessoryInfoViewController_handleDAEvent___block_invoke_3;
      }

      goto LABEL_6;
    }
  }

  else if (eventType == 42)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = eventCopy;
      identifier = [(DADevice *)self->_device identifier];
      device3 = [v6 device];
      identifier3 = [device3 identifier];
      v10 = [identifier3 isEqualToString:identifier];

      if (!v10)
      {
LABEL_12:

        goto LABEL_13;
      }

      device4 = [v6 device];
      v12 = self->_device;
      self->_device = device4;

      v13 = block;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v14 = __47__ASAccessoryInfoViewController_handleDAEvent___block_invoke;
LABEL_6:
      v13[2] = v14;
      v13[3] = &unk_278A01AC8;
      v13[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v13);
      goto LABEL_12;
    }
  }

LABEL_13:
}

void __47__ASAccessoryInfoViewController_handleDAEvent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = [*(*(a1 + 32) + 1464) name];
  [*(a1 + 32) setTitle:v2];
}

void __47__ASAccessoryInfoViewController_handleDAEvent___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

@end