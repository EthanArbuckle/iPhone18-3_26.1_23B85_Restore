@interface BPSStingSetupPrincipalClass
+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)delegate;
+ (BOOL)skipControllerForExpressMode:(id)mode;
+ (id)_stingConfigForDevice:(id)device;
+ (id)expressModeSettingsString:(id)string;
- (BPSStingSetupPrincipalClass)init;
- (void)miniFlowStepComplete:(id)complete;
@end

@implementation BPSStingSetupPrincipalClass

- (BPSStingSetupPrincipalClass)init
{
  v6.receiver = self;
  v6.super_class = BPSStingSetupPrincipalClass;
  v2 = [(BPSStingSetupPrincipalClass *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BPSStingSetupOptInViewController);
    firstController = v2->_firstController;
    v2->_firstController = v3;

    [(BPSStingSetupOptInViewController *)v2->_firstController setMiniFlowDelegate:v2];
  }

  return v2;
}

+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
  firstObject = [v6 firstObject];

  v8 = [[NSUUID alloc] initWithUUIDString:@"15BF559D-D50B-44FE-AC84-DFBA323EC985"];
  v9 = [firstObject supportsCapability:v8];

  if (v9)
  {
    v10 = [BPSStingSetupPrincipalClass _stingConfigForDevice:firstObject];
    setupFlowUserInfo = [delegateCopy setupFlowUserInfo];
    v12 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingDeviceRestoredFrom];

    setupFlowUserInfo2 = [delegateCopy setupFlowUserInfo];
    v14 = [setupFlowUserInfo2 objectForKeyedSubscript:BPSPairingBackupRestoredFrom];

    v15 = bps_setup_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109632;
      *v22 = v10 == 0;
      *&v22[4] = 1024;
      *&v22[6] = v14 != 0;
      v23 = 1024;
      v24 = v12 != 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "controllerNeedsToRunForBuddyControllerDelegate - StingConfig: %{BOOL}d restoredFromBackup: %{BOOL}d restoredFromDevice: %{BOOL}d", &v21, 0x14u);
    }

    v16 = v14 | v12;

    if (v10)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    if (!v17)
    {
      v19 = bps_setup_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        *v22 = v10;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Skipping Sting Controller, Found existing setting: %@", &v21, 0xCu);
      }
    }

    LOBYTE(v9) = v18 ^ 1;
  }

  return v9;
}

+ (BOOL)skipControllerForExpressMode:(id)mode
{
  v3 = [BPSStingSetupPrincipalClass _stingConfigForDevice:mode];
  v4 = v3 != 0;

  return v4;
}

+ (id)expressModeSettingsString:(id)string
{
  v3 = [BPSStingSetupPrincipalClass _stingConfigForDevice:string];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"STING_SETUP_TITLE" value:&stru_C620 table:@"Localizable-N199"];
  v6 = [v3 objectForKey:@"action"];
  v7 = [NSString stringWithFormat:@"%@ %@", v5, v6];

  return v7;
}

+ (id)_stingConfigForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel" pairedDevice:deviceCopy];

  synchronize = [v4 synchronize];
  v6 = [v4 objectForKey:@"StingSettingsConfiguration"];

  return v6;
}

- (void)miniFlowStepComplete:(id)complete
{
  delegate = [(BPSStingSetupPrincipalClass *)self delegate];
  [delegate buddyControllerDone:self];
}

@end