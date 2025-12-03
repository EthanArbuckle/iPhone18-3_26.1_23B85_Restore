@interface COSSecurePairingPasskeyEntryViewController
- (COSSecurePairingPasskeyEntryViewController)initWithDevice:(id)device;
- (void)enteredPasskey:(id)passkey;
- (void)gotPinAndDevice:(id)device;
- (void)pressedCancel:(id)cancel;
@end

@implementation COSSecurePairingPasskeyEntryViewController

- (COSSecurePairingPasskeyEntryViewController)initWithDevice:(id)device
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = COSSecurePairingPasskeyEntryViewController;
  v6 = [(COSPasskeyEntryViewController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"gotPinAndDevice:" name:NRPairedDeviceRegistryDeviceNeedsPasscode object:0];

    bridgeController = [UIApp bridgeController];
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    v20 = NRPairOptionIsAltAccountGizmo;
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [bridgeController isTinkerPairing]);
    v21 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [v10 companionPasscodePairWithDevice:deviceCopy withOptions:v12 operationHasBegun:&stru_10026B450];

    v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v7 action:"pressedCancel:"];
    navigationItem = [(COSSecurePairingPasskeyEntryViewController *)v7 navigationItem];
    [navigationItem setHidesBackButton:1];
    [navigationItem setRightBarButtonItem:v13];
    v15 = [[BRRTCPairingReportManager alloc] initWithPairingBeginsType:1];
    v16 = [deviceCopy valueForProperty:NRDevicePropertyAdvertisedName];
    if (PBIsNetworkRelayPairingFromAdvertisedName())
    {
      [v15 addPairingTimeEventToPairingReportPlist:78 withValue:&__kCFBooleanTrue withError:0];
    }

    setupController = [UIApp setupController];
    [setupController setPairingReportManager:v15];
  }

  return v7;
}

- (void)enteredPasskey:(id)passkey
{
  passkeyCopy = passkey;
  v5 = +[NRPairedDeviceRegistry sharedInstance];
  device = [(COSSecurePairingPasskeyEntryViewController *)self device];
  v7 = [device valueForProperty:NRDevicePropertyAdvertisedName];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CF0A4;
  v9[3] = &unk_10026B498;
  v10 = passkeyCopy;
  selfCopy = self;
  v8 = passkeyCopy;
  [v5 waitForWatchPairingExtendedMetadataForAdvertisedName:v7 completion:v9];
}

- (void)pressedCancel:(id)cancel
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = 97;
    v7 = 2080;
    v8 = "[COSSecurePairingPasskeyEntryViewController pressedCancel:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(NEW UHP) %d %s", v6, 0x12u);
  }

  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  [pairingReportManager addPairingTimeEventToPairingReportPlist:72 withValue:&off_100281D20 withError:0];
  [pairingReportManager completePairingMetricWithSuccess:0];
  [UIApp resetSetupFlowAnimated:1 forEvent:43];
}

- (void)gotPinAndDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:NRPairedDeviceRegistryDeviceNeedsPasscode object:0];

  userInfo = [deviceCopy userInfo];

  v7 = [userInfo objectForKey:NRPairedDeviceRegistryPasscodeKey];
  v8 = [userInfo objectForKey:NRPairedDeviceRegistryDevice];
  v9 = [v8 valueForProperty:NRDevicePropertyAdvertisedName];
  v10 = pbb_setupflow_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(NEW UHP) Setting paired device (%@ -- %@ -- %@)", &v19, 0x20u);
  }

  v11 = PBAdvertisingInfoFromPayload();
  if (v11)
  {
    v12 = +[PBBridgeWatchAttributeController sharedDeviceController];
    v13 = [v11 objectForKey:PBBridgeAdvertisingMaterialKey];
    [v12 setMaterial:{objc_msgSend(v13, "integerValue")}];

    v14 = +[PBBridgeWatchAttributeController sharedDeviceController];
    v15 = [v11 objectForKey:PBBridgeAdvertisingSizeKey];
    [v14 setInternalSize:{objc_msgSend(v15, "integerValue")}];

    v16 = pbb_setupflow_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = +[PBBridgeWatchAttributeController sharedDeviceController];
      attributesDescription = [v17 attributesDescription];
      v19 = 138412290;
      v20 = attributesDescription;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Attempt to pair with: %@", &v19, 0xCu);
    }
  }

  else
  {
    v16 = pbb_setupflow_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100189C88(v16);
    }
  }

  [UIApp updateActiveWatch:v8];
}

@end