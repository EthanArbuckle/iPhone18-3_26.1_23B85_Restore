@interface HSPCNetworkCredentialManagementViewController
+ (BOOL)shouldSkipForConfig:(id)a3;
- (HSPCNetworkCredentialManagementViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)_persistOptInState;
- (id)commitConfiguration;
- (void)viewDidLoad;
@end

@implementation HSPCNetworkCredentialManagementViewController

+ (BOOL)shouldSkipForConfig:(id)a3
{
  v4 = a3;
  if ([a1 featureEnabled])
  {
    v5 = [v4 chipDevicePairingUUID];
    if (v5 && [v4 chipDevicePairingIsNew])
    {
      v6 = [v4 matterCommissioneeInfo];
      if (v6)
      {
        v7 = [MTSNetworkCredentialManager threadCredentialManagementSupportedForCommissionee:v6]^ 1;
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

- (HSPCNetworkCredentialManagementViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = HSPCNetworkCredentialManagementViewController;
  v9 = [(HSPCNetworkCredentialManagementViewController *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, a4);
    objc_storeStrong(&v10->_coordinator, a3);
    v11 = [v8 matterCommissioneeInfo];
    v12 = [v11 rootEndpoint];
    v13 = [MTSNetworkCredentialManager threadCredentialManagementEndpoint:v12];

    if (v13)
    {
      v14 = [v11 endpointsById];
      v15 = [v14 objectForKeyedSubscript:v13];
      v16 = [v15 deviceTypes];
      [v16 na_any:&stru_1000C6168];
    }

    v17 = HULocalizedString();
    [(HSPCNetworkCredentialManagementViewController *)v10 setTitle:v17];

    v18 = HULocalizedString();
    [(HSPCNetworkCredentialManagementViewController *)v10 setSubtitle:v18];

    v19 = [(HSPCNetworkCredentialManagementViewController *)v10 tableView];
    [v19 setSeparatorStyle:0];

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
  v3 = [(HSPCNetworkCredentialManagementViewController *)self tableView];
  [v3 setSeparatorStyle:0];
}

- (id)_persistOptInState
{
  v3 = [(HSPCNetworkCredentialManagementViewController *)self config];
  v4 = [v3 chipDevicePairingUUID];

  if (v4 && (-[HSPCNetworkCredentialManagementViewController credentialManagementFeature](self, "credentialManagementFeature"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isOn], v5, v6))
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
    v13 = v4;
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
  v2 = [(HSPCNetworkCredentialManagementViewController *)self _persistOptInState];
  v7[0] = v2;
  v3 = [NAFuture futureWithResult:&off_1000CD4B0];
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NAFuture chainFutures:v4];

  return v5;
}

@end