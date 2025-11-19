@interface APUISetupViewController
+ (id)_localizedSystemWiFiString;
- (void)_connectToAirPlayReceiverWithDeviceID:(id)a3 andSetupPayload:(id)a4;
- (void)_getSupportedNetworks:(id)a3 withSetupPayload:(id)a4 completion:(id)a5;
- (void)_initializeAirPlayConnectionProxCardManagerWithSetupPayload:(id)a3 andCompletion:(id)a4;
- (void)_joinWiFiAndConnectToReceiverWithSetupPayload:(id)a3;
- (void)_performBrokerAuthenticationWithSetupPayload:(id)a3 switchWiFiIfFailed:(BOOL)a4;
- (void)_presentAirPlayConnectionProxCardWithSetupPayload:(id)a3;
- (void)_presentInvalidCodeAlertWithSetupPayload:(id)a3;
- (void)_presentProxCardFlowForLaunchType:(int64_t)a3 andSetupPayload:(id)a4;
- (void)_presentSetupCompletedProxCard:(id)a3 isAirPlaySetUp:(BOOL)a4;
- (void)_presentUnableToConnectToDeviceAlertWithSetupPayload:(id)a3;
- (void)_presentUnableToConnectToWiFiAlertWithSetupPayload:(id)a3;
- (void)_setUpByURL:(id)a3;
- (void)_setupAirPlayConnectingProxCardManagerWithSetupPayload:(id)a3 withTitle:(id)a4 withSubTitle:(id)a5 withImageName:(id)a6 andCompletion:(id)a7;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)updateBrokerRTCDictionaryBrokerConnectionSuccess:(BOOL)a3 error:(id)a4;
- (void)updateReceiverRTCDictionaryReceiverConnectionSuccess:(BOOL)a3 error:(id)a4;
- (void)updateWiFiRTCDictionaryAlreadyAssociated:(BOOL)a3 associationSucessful:(BOOL)a4 error:(id)a5;
- (void)viewDidLoad;
@end

@implementation APUISetupViewController

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = APUISetupViewController;
  [(APUISetupViewController *)&v23 viewDidLoad];
  IntWithDefault = APSSettingsGetIntWithDefault();
  if (IntWithDefault)
  {
    v4 = IntWithDefault;
    v5 = [[AVOutputDeviceDiscoverySession alloc] initWithDeviceFeatures:8];
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      v17 = v4;
      v18 = v5;
      v16 = self;
      LogPrintF();
    }

    [v5 setDiscoveryMode:{3, v16, v17, v18}];
    objc_initWeak(&location, self);
    v6 = dispatch_time(0, 1000000000 * v4);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000072D4;
    block[3] = &unk_10001C898;
    objc_copyWeak(&v21, &location);
    v7 = v5;
    v20 = v7;
    dispatch_after(v6, &_dispatch_main_q, block);
    discoverySession = self->_discoverySession;
    self->_discoverySession = v7;
    v9 = v7;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  [(APUISetupViewController *)self setShouldSkipInvalidateOnProxCardFlowDidDismiss:0];
  v10 = +[APUIConnectivityManager sharedInstance];
  [v10 startMonitoringWiFiInterfaceChange];

  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C920();
  }

  v11 = +[APUIConnectivityManager sharedInstance];
  [v11 enableCaptiveWebsheet:0];

  v12 = objc_opt_new();
  routeManager = self->_routeManager;
  self->_routeManager = v12;

  APSRTCReportingAgentCreate();
  v14 = objc_alloc_init(NSMutableDictionary);
  rtcReportingDictionary = self->_rtcReportingDictionary;
  self->_rtcReportingDictionary = v14;
}

- (void)invalidate
{
  discoverySession = self->_discoverySession;
  if (discoverySession)
  {
    if (dword_1000226F0 <= 50)
    {
      if (dword_1000226F0 != -1 || (v4 = _LogCategory_Initialize(), discoverySession = self->_discoverySession, v4))
      {
        v17 = self;
        v18 = discoverySession;
        LogPrintF();
        discoverySession = self->_discoverySession;
      }
    }

    [(AVOutputDeviceDiscoverySession *)discoverySession setDiscoveryMode:0, v17, v18];
    v5 = self->_discoverySession;
    self->_discoverySession = 0;
  }

  v6 = +[APUIConnectivityManager sharedInstance];
  [v6 stopMonitoringWiFiInterfaceChange];

  v7 = [(APUISetupViewController *)self _remoteViewControllerProxy];
  [v7 invalidate];
  v8 = +[APUIConnectivityManager sharedInstance];
  [v8 enableCaptiveWebsheet:1];

  [(APUIRouteManager *)self->_routeManager invalidate];
  routeManager = self->_routeManager;
  self->_routeManager = 0;

  if ([(NSMutableDictionary *)self->_rtcReportingDictionary count])
  {
    rtcReportingDictionary = self->_rtcReportingDictionary;
    v11 = dispatch_semaphore_create(0);
    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      v19 = self->_rtcReportingDictionary;
      LogPrintF();
    }

    rtcReportingAgent = self->_rtcReportingAgent;
    v13 = self->_rtcReportingDictionary;
    v20 = v11;
    v14 = v11;
    APSRTCReportingAgentSendEventWithCompletionHandler();
    v15 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v14, v15);
  }

  v16 = self->_rtcReportingDictionary;
  self->_rtcReportingDictionary = 0;

  self->_rtcReportingAgent = 0;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C9C8();
  }
}

- (void)_setupAirPlayConnectingProxCardManagerWithSetupPayload:(id)a3 withTitle:(id)a4 withSubTitle:(id)a5 withImageName:(id)a6 andCompletion:(id)a7
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [AirPlayProxCardViewController alloc];
  v14 = +[UIColor systemGrayColor];
  v15 = [(AirPlayProxCardViewController *)v13 initWithTitle:v12 subTitle:v11 imageName:v10 tintColor:v14 shouldAnimate:0 actionTitle:0 bottomSubtitle:0 completion:&stru_10001C900];

  [(APUISetupViewController *)self setConnectingProxCardController:v15];
  v18 = [(APUISetupViewController *)self connectingProxCardController];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"AirPlaySenderUI_Action_Connecting" value:&stru_10001CEA8 table:0];
  [v18 showActivityIndicatorWithStatus:v17];
}

- (void)_initializeAirPlayConnectionProxCardManagerWithSetupPayload:(id)a3 andCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"AirPlaySenderUI_AirPlayConnect_Title" value:&stru_10001CEA8 table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"AirPlaySenderUI_AirPlayConnect_Subtitle" value:&stru_10001CEA8 table:0];
  v11 = [v5 wifiSSID];
  v12 = [NSString stringWithFormat:v10, v11];

  v20 = [AirPlayProxCardViewController alloc];
  v13 = +[UIColor systemGrayColor];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"AirPlaySenderUI_Action_Continue" value:&stru_10001CEA8 table:0];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100007A80;
  v23[3] = &unk_10001C928;
  v23[4] = self;
  v24 = v5;
  v25 = v8;
  v26 = v12;
  v27 = @"tv.badge.wifi";
  v28 = v6;
  v21 = v6;
  v16 = v12;
  v17 = v8;
  v18 = v5;
  v19 = [(AirPlayProxCardViewController *)v20 initWithTitle:v17 subTitle:v16 imageName:@"tv.badge.wifi" tintColor:v13 shouldAnimate:0 actionTitle:v15 bottomSubtitle:0 completion:v23];
  [(APUISetupViewController *)self setSetupProxCardController:v19];
}

+ (id)_localizedSystemWiFiString
{
  v2 = SFLocalizableWAPIStringKeyForKey();
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:v2 value:&stru_10001CEA8 table:0];

  return v4;
}

- (void)_presentUnableToConnectToWiFiAlertWithSetupPayload:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_WiFi_Title" value:&stru_10001CEA8 table:0];
  v6 = [v3 wifiSSID];
  v7 = [NSString stringWithFormat:v5, v6];

  v8 = +[APUISetupViewController _localizedSystemWiFiString];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_WiFi_Subtitle" value:&stru_10001CEA8 table:0];
  v11 = [v3 wifiSSID];

  v12 = [NSString stringWithFormat:v10, v8, v11];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_WiFi_Action" value:&stru_10001CEA8 table:0];
  v15 = [NSString stringWithFormat:v14, v8];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"AirPlaySenderUI_Action_Dismiss" value:&stru_10001CEA8 table:0];

  v28[0] = v15;
  v28[1] = v17;
  [NSArray arrayWithObjects:v28 count:2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000081B0;
  block[3] = &unk_10001C9A0;
  block[4] = self;
  v24 = v7;
  v26 = v25 = v12;
  v27 = v15;
  v18 = v15;
  v19 = v26;
  v20 = v12;
  v21 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_presentUnableToConnectToDeviceAlertWithSetupPayload:(id)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_Title" value:&stru_10001CEA8 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_HelpContact_FrontDesk" value:&stru_10001CEA8 table:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_Device_Subtitle" value:&stru_10001CEA8 table:0];
  v10 = [NSString stringWithFormat:v9, v7];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"AirPlaySenderUI_Action_Dismiss" value:&stru_10001CEA8 table:0];

  v20 = v12;
  [NSArray arrayWithObjects:&v20 count:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008680;
  block[3] = &unk_10001C9F0;
  block[4] = self;
  v17 = v5;
  v19 = v18 = v10;
  v13 = v19;
  v14 = v10;
  v15 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_presentInvalidCodeAlertWithSetupPayload:(id)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_Title" value:&stru_10001CEA8 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"AirPlaySenderUI_UnableToConnect_InvalidQRCode_Subtitle" value:&stru_10001CEA8 table:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"AirPlaySenderUI_Action_Dismiss" value:&stru_10001CEA8 table:0];

  v17 = v9;
  [NSArray arrayWithObjects:&v17 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008A3C;
  v13[3] = &unk_10001C9F0;
  v13[4] = self;
  v14 = v5;
  v16 = v15 = v7;
  v10 = v16;
  v11 = v7;
  v12 = v5;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)_presentProxCardFlowForLaunchType:(int64_t)a3 andSetupPayload:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = v6;
  if (dword_1000226F0 <= 50)
  {
    if (dword_1000226F0 != -1 || (v6 = _LogCategory_Initialize(), v7 = v8, v6))
    {
      v6 = LogPrintF();
      v7 = v8;
    }
  }

  if (!v7 && dword_1000226F0 <= 90)
  {
    if (dword_1000226F0 != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      v6 = sub_10000CB04();
    }
  }

  if ((a3 - 1) >= 3)
  {
    if (a3)
    {
      if (dword_1000226F0 <= 50)
      {
        if (dword_1000226F0 != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          v6 = LogPrintF();
        }
      }
    }

    else
    {
      v6 = [(APUISetupViewController *)self _setUpByURL:v8];
    }
  }

  _objc_release_x2(v6);
}

- (void)_setUpByURL:(id)a3
{
  v8 = a3;
  v4 = [v8 wifiSSID];
  if (v4 && (v5 = v4, [v8 wifiSSID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v5, v7))
  {
    [(NSMutableDictionary *)self->_rtcReportingDictionary setValue:@"brokerMethodURL" forKey:@"brokerMethod"];
    [(APUISetupViewController *)self _presentAirPlayConnectionProxCardWithSetupPayload:v8];
  }

  else if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CB40();
  }
}

- (void)_joinWiFiAndConnectToReceiverWithSetupPayload:(id)a3
{
  v4 = a3;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000CB7C();
  }

  v5 = +[APUIConnectivityManager sharedInstance];
  v6 = [v4 wifiSSID];
  v7 = [v4 isNetworkHidden];
  v8 = [v4 wifiPassphrase];
  v9 = [v4 captivePortalAuthToken];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009004;
  v11[3] = &unk_10001CA18;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v5 joinWiFiNetworkWithSSID:v6 isNetworkHidden:v7 passPhrase:v8 captivePortalAuthToken:v9 completion:v11];
}

- (void)_getSupportedNetworks:(id)a3 withSetupPayload:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [v9 wifiSSID];
    v13 = [v12 isEqualToString:v8];

    if (v13)
    {
      if (v11)
      {
        v11[2](v11, 1);
      }
    }

    else
    {
      v14 = +[APUIBrokerHelper sharedInstance];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000092A4;
      v15[3] = &unk_10001CA40;
      v15[4] = self;
      v17 = v11;
      v16 = v8;
      [v14 getBrokerGroupInfo:0 completion:v15];
    }
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (void)_performBrokerAuthenticationWithSetupPayload:(id)a3 switchWiFiIfFailed:(BOOL)a4
{
  v6 = a3;
  v7 = +[APUIBrokerHelper sharedInstance];
  v8 = [v6 brokerToken];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100009534;
  v10[3] = &unk_10001CA68;
  v12 = a4;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 performBrokerAuthenticationForBrokerGroup:0 withBrokerAuth:v8 completion:v10];
}

- (void)_connectToAirPlayReceiverWithDeviceID:(id)a3 andSetupPayload:(id)a4
{
  v6 = a4;
  routeManager = self->_routeManager;
  v8 = a3;
  v9 = [v6 receiverToken];
  v10 = [v6 routeToReceiver];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000980C;
  v12[3] = &unk_10001CA18;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [(APUIRouteManager *)routeManager pickRouteWithRouteID:v8 authString:v9 useRemoteControl:v10 ^ 1 completion:v12];
}

- (void)_presentAirPlayConnectionProxCardWithSetupPayload:(id)a3
{
  v4 = a3;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D114();
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100009AD0;
  v13 = &unk_10001CAB8;
  v5 = v4;
  v14 = v5;
  v15 = self;
  [(APUISetupViewController *)self _initializeAirPlayConnectionProxCardManagerWithSetupPayload:v5 andCompletion:&v10];
  v6 = [(APUISetupViewController *)self setupProxCardController:v10];

  if (v6)
  {
    v7 = [(APUISetupViewController *)self setupProxCardController];
    v8 = +[PRXFlowConfiguration defaultConfiguration];
    v9 = [(APUISetupViewController *)self presentProxCardFlowWithDelegate:self initialViewController:v7 configuration:v8];
    [(APUISetupViewController *)self setProxCardNavigationController:v9];
  }
}

- (void)_presentSetupCompletedProxCard:(id)a3 isAirPlaySetUp:(BOOL)a4
{
  v6 = a3;
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009EE0;
  block[3] = &unk_10001CB08;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)proxCardFlowWillPresent
{
  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D318();
  }
}

- (void)proxCardFlowDidDismiss
{
  if (![(APUISetupViewController *)self shouldSkipInvalidateOnProxCardFlowDidDismiss])
  {
    [(APUISetupViewController *)self invalidate];
  }

  if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D354();
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A264;
  v7[3] = &unk_10001CAE0;
  v7[4] = self;
  v6 = [(APUISetupViewController *)self _remoteViewControllerProxyWithErrorHandler:v7];
  [v6 setReachabilityDisabled:1];
  [v6 setAllowsAlertStacking:0];
  [v6 setAllowsBanners:1];
  [v6 setAllowsAlertItems:1];
  [v6 setAllowsControlCenter:1];
  [v6 setAllowsSiri:1];
  [v6 setAllowsMenuButtonDismissal:1];
  if (v5)
  {
    v5[2](v5);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000A560;
  v18[3] = &unk_10001CAE0;
  v18[4] = self;
  v7 = a3;
  v8 = [(APUISetupViewController *)self _remoteViewControllerProxyWithErrorHandler:v18];
  v9 = [v7 userInfo];

  v10 = [v9 objectForKey:@"setupPayload"];

  v11 = objc_opt_class();
  v17 = 0;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClass:v11 fromData:v10 error:&v17];
  v13 = v17;
  if (v12)
  {
    [v8 setStatusBarHidden:1 withDuration:0.4];
    if (v6)
    {
      v6[2](v6);
    }

    if (dword_1000226F0 <= 50 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      [(APUISetupViewController *)self _presentProxCardFlowForLaunchType:0 andSetupPayload:v12, self, 0, v12];
    }

    else
    {
      [(APUISetupViewController *)self _presentProxCardFlowForLaunchType:0 andSetupPayload:v12, v14, v15, v16];
    }
  }

  else
  {
    if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D3F8();
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    else if (!v13)
    {
      goto LABEL_16;
    }

    if (dword_1000226F0 <= 90 && (dword_1000226F0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

LABEL_16:
}

- (void)updateWiFiRTCDictionaryAlreadyAssociated:(BOOL)a3 associationSucessful:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v6 = a3;
  v12 = a5;
  v8 = @"wifiAssociationFail";
  if (v5)
  {
    v8 = @"wifiAssociationSuccess";
  }

  if (v6)
  {
    v9 = @"wifiAssociationAlready";
  }

  else
  {
    v9 = v8;
  }

  [(NSMutableDictionary *)self->_rtcReportingDictionary setValue:v9 forKey:@"wifiAssociationStatus"];
  rtcReportingDictionary = self->_rtcReportingDictionary;
  if (v12)
  {
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 code]);
    [(NSMutableDictionary *)rtcReportingDictionary setValue:v11 forKey:@"wifiAssociationErrorCode"];
  }

  else
  {
    [(NSMutableDictionary *)rtcReportingDictionary removeObjectForKey:@"wifiAssociationErrorCode"];
  }
}

- (void)updateBrokerRTCDictionaryBrokerConnectionSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v9 = a4;
  if (v4)
  {
    v6 = @"brokerSuccess";
  }

  else
  {
    v6 = @"brokerFail";
  }

  [(NSMutableDictionary *)self->_rtcReportingDictionary setValue:v6 forKey:@"brokerStatus"];
  rtcReportingDictionary = self->_rtcReportingDictionary;
  if (v9)
  {
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 code]);
    [(NSMutableDictionary *)rtcReportingDictionary setValue:v8 forKey:@"brokerErrorCode"];
  }

  else
  {
    [(NSMutableDictionary *)rtcReportingDictionary removeObjectForKey:@"brokerErrorCode"];
  }
}

- (void)updateReceiverRTCDictionaryReceiverConnectionSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v9 = a4;
  if (v4)
  {
    v6 = @"receiverSuccess";
  }

  else
  {
    v6 = @"receiverFail";
  }

  [(NSMutableDictionary *)self->_rtcReportingDictionary setValue:v6 forKey:@"receiverStatus"];
  rtcReportingDictionary = self->_rtcReportingDictionary;
  if (v9)
  {
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 code]);
    [(NSMutableDictionary *)rtcReportingDictionary setValue:v8 forKey:@"receiverErrorCode"];
  }

  else
  {
    [(NSMutableDictionary *)rtcReportingDictionary removeObjectForKey:@"receiverErrorCode"];
  }
}

@end