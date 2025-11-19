@interface COSSecurePairingPasskeyEntryViewController
- (COSSecurePairingPasskeyEntryViewController)initWithDevice:(id)a3;
- (void)enteredPasskey:(id)a3;
- (void)gotPinAndDevice:(id)a3;
- (void)pressedCancel:(id)a3;
@end

@implementation COSSecurePairingPasskeyEntryViewController

- (COSSecurePairingPasskeyEntryViewController)initWithDevice:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = COSSecurePairingPasskeyEntryViewController;
  v6 = [(COSPasskeyEntryViewController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"gotPinAndDevice:" name:NRPairedDeviceRegistryDeviceNeedsPasscode object:0];

    v9 = [UIApp bridgeController];
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    v20 = NRPairOptionIsAltAccountGizmo;
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isTinkerPairing]);
    v21 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [v10 companionPasscodePairWithDevice:v5 withOptions:v12 operationHasBegun:&stru_10026B450];

    v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v7 action:"pressedCancel:"];
    v14 = [(COSSecurePairingPasskeyEntryViewController *)v7 navigationItem];
    [v14 setHidesBackButton:1];
    [v14 setRightBarButtonItem:v13];
    v15 = [[BRRTCPairingReportManager alloc] initWithPairingBeginsType:1];
    v16 = [v5 valueForProperty:NRDevicePropertyAdvertisedName];
    if (PBIsNetworkRelayPairingFromAdvertisedName())
    {
      [v15 addPairingTimeEventToPairingReportPlist:78 withValue:&__kCFBooleanTrue withError:0];
    }

    v17 = [UIApp setupController];
    [v17 setPairingReportManager:v15];
  }

  return v7;
}

- (void)enteredPasskey:(id)a3
{
  v4 = a3;
  v5 = +[NRPairedDeviceRegistry sharedInstance];
  v6 = [(COSSecurePairingPasskeyEntryViewController *)self device];
  v7 = [v6 valueForProperty:NRDevicePropertyAdvertisedName];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CF0A4;
  v9[3] = &unk_10026B498;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v5 waitForWatchPairingExtendedMetadataForAdvertisedName:v7 completion:v9];
}

- (void)pressedCancel:(id)a3
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

  v4 = [UIApp setupController];
  v5 = [v4 pairingReportManager];

  [v5 addPairingTimeEventToPairingReportPlist:72 withValue:&off_100281D20 withError:0];
  [v5 completePairingMetricWithSuccess:0];
  [UIApp resetSetupFlowAnimated:1 forEvent:43];
}

- (void)gotPinAndDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:NRPairedDeviceRegistryDeviceNeedsPasscode object:0];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:NRPairedDeviceRegistryPasscodeKey];
  v8 = [v6 objectForKey:NRPairedDeviceRegistryDevice];
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
      v18 = [v17 attributesDescription];
      v19 = 138412290;
      v20 = v18;
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