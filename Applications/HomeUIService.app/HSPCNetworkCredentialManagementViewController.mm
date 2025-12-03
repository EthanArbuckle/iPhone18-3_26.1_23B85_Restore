@interface HSPCNetworkCredentialManagementViewController
+ (BOOL)shouldSkipForConfig:(id)config;
- (HSPCNetworkCredentialManagementViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)_persistOptInState;
- (id)commitConfiguration;
- (void)viewDidLoad;
@end

@implementation HSPCNetworkCredentialManagementViewController

+ (BOOL)shouldSkipForConfig:(id)config
{
  configCopy = config;
  if ([self featureEnabled])
  {
    chipDevicePairingUUID = [configCopy chipDevicePairingUUID];
    if (chipDevicePairingUUID && [configCopy chipDevicePairingIsNew])
    {
      matterCommissioneeInfo = [configCopy matterCommissioneeInfo];
      if (matterCommissioneeInfo)
      {
        v7 = [MTSNetworkCredentialManager threadCredentialManagementSupportedForCommissionee:matterCommissioneeInfo]^ 1;
      }

      else
      {
        NSLog(@"matterCommissioneeInfo not available, incorrect step order?");
        LOBYTE(v7) = 1;
      }
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (HSPCNetworkCredentialManagementViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v30.receiver = self;
  v30.super_class = HSPCNetworkCredentialManagementViewController;
  v9 = [(HSPCNetworkCredentialManagementViewController *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_coordinator, coordinator);
    matterCommissioneeInfo = [configCopy matterCommissioneeInfo];
    rootEndpoint = [matterCommissioneeInfo rootEndpoint];
    v13 = [MTSNetworkCredentialManager threadCredentialManagementEndpoint:rootEndpoint];

    if (v13)
    {
      endpointsById = [matterCommissioneeInfo endpointsById];
      v15 = [endpointsById objectForKeyedSubscript:v13];
      deviceTypes = [v15 deviceTypes];
      [deviceTypes na_any:&stru_1000C6168];
    }

    v17 = HULocalizedString();
    [(HSPCNetworkCredentialManagementViewController *)v10 setTitle:v17];

    v18 = HULocalizedString();
    [(HSPCNetworkCredentialManagementViewController *)v10 setSubtitle:v18];

    tableView = [(HSPCNetworkCredentialManagementViewController *)v10 tableView];
    [tableView setSeparatorStyle:0];

    v20 = [PRXFeature alloc];
    v21 = HULocalizedString();
    v22 = HULocalizedString();
    v23 = +[UIColor systemBlueColor];
    v24 = [v20 initWithTitle:v21 detailText:v22 icon:0 tintColor:v23 valueChangedBlock:&stru_1000C61A8];
    credentialManagementFeature = v10->_credentialManagementFeature;
    v10->_credentialManagementFeature = v24;

    v26 = [(HSPCNetworkCredentialManagementViewController *)v10 addFeature:v10->_credentialManagementFeature];
    v27 = HULocalizedString();
    [(HSPCNetworkCredentialManagementViewController *)v10 setBottomTrayTitle:v27];

    v28 = [(HSPCNetworkCredentialManagementViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
  }

  return v10;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HSPCNetworkCredentialManagementViewController;
  [(HSPCNetworkCredentialManagementViewController *)&v4 viewDidLoad];
  tableView = [(HSPCNetworkCredentialManagementViewController *)self tableView];
  [tableView setSeparatorStyle:0];
}

- (id)_persistOptInState
{
  config = [(HSPCNetworkCredentialManagementViewController *)self config];
  chipDevicePairingUUID = [config chipDevicePairingUUID];

  if (chipDevicePairingUUID && (-[HSPCNetworkCredentialManagementViewController credentialManagementFeature](self, "credentialManagementFeature"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isOn], v5, v6))
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Persisting opt-in for Thread credential management", buf, 2u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001AD24;
    v12[3] = &unk_1000C61D0;
    v13 = chipDevicePairingUUID;
    v8 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v12];
    v9 = +[NAScheduler mainThreadScheduler];
    v10 = [v8 reschedule:v9];
  }

  else
  {
    v10 = +[NAFuture futureWithNoResult];
  }

  return v10;
}

- (id)commitConfiguration
{
  _persistOptInState = [(HSPCNetworkCredentialManagementViewController *)self _persistOptInState];
  v7[0] = _persistOptInState;
  v3 = [NAFuture futureWithResult:&off_1000CD4B0];
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NAFuture chainFutures:v4];

  return v5;
}

@end