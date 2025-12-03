@interface HSPCAccessoryUpdateViewController
- (HSPCAccessoryUpdateViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)displayAutomaticUpdatesAlert;
- (id)handleInstallUpdate;
- (id)handleNotNowButtonTapped;
- (id)iconDescriptor;
@end

@implementation HSPCAccessoryUpdateViewController

- (HSPCAccessoryUpdateViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  configCopy = config;
  v15.receiver = self;
  v15.super_class = HSPCAccessoryUpdateViewController;
  v8 = [(HSPCCenterIconViewController *)&v15 initWithCoordinator:coordinator config:configCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, config);
    v10 = HULocalizedString();
    [(HSPCAccessoryUpdateViewController *)v9 setTitle:v10];

    v11 = HULocalizedString();
    [(HSPCAccessoryUpdateViewController *)v9 setSubtitle:v11];

    v12 = [(HSPCAccessoryUpdateViewController *)v9 addProminentButtonWithTitleKey:@"HUInstallUpdateTitle" target:v9 futureSelector:"handleInstallUpdate"];
    v13 = [(HSPCAccessoryUpdateViewController *)v9 addOptionalButtonWithTitleKey:@"HUNotNowTitle" target:v9 futureSelector:"handleNotNowButtonTapped"];
  }

  return v9;
}

- (id)iconDescriptor
{
  v2 = +[UIColor hf_keyColor];
  v8 = v2;
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v4 = [UIImageSymbolConfiguration configurationWithPaletteColors:v3];

  v5 = [HFImageIconDescriptor alloc];
  v6 = [v5 initWithSystemImageNamed:HFSymbolIconIdentifierInstallUpdate configuration:v4];

  return v6;
}

- (id)handleInstallUpdate
{
  config = [(HSPCAccessoryUpdateViewController *)self config];
  addedAccessory = [config addedAccessory];
  hf_startSoftwareUpdate = [addedAccessory hf_startSoftwareUpdate];

  return [NAFuture futureWithResult:&off_1000CE020];
}

- (id)handleNotNowButtonTapped
{
  config = [(HSPCAccessoryUpdateViewController *)self config];
  home = [config home];
  if ([home hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter])
  {
    config2 = [(HSPCAccessoryUpdateViewController *)self config];
    home2 = [config2 home];
    hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = [home2 hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];

    if ((hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled & 1) == 0)
    {
      displayAutomaticUpdatesAlert = [(HSPCAccessoryUpdateViewController *)self displayAutomaticUpdatesAlert];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    config3 = [(HSPCAccessoryUpdateViewController *)self config];
    home3 = [config3 home];
    hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter = [home3 hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter];
    config4 = [(HSPCAccessoryUpdateViewController *)self config];
    home4 = [config4 home];
    v16 = 136315650;
    v17 = "[HSPCAccessoryUpdateViewController handleNotNowButtonTapped]";
    v18 = 1024;
    v19 = hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter;
    v20 = 1024;
    hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled2 = [home4 hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Did not display automatic software updates popup: hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter - [%d], hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled - [%d]", &v16, 0x18u);
  }

  displayAutomaticUpdatesAlert = [NAFuture futureWithResult:&off_1000CE020];
LABEL_8:

  return displayAutomaticUpdatesAlert;
}

- (id)displayAutomaticUpdatesAlert
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005AD0C;
  v4[3] = &unk_1000C6030;
  v4[4] = self;
  v2 = [NAFuture futureWithBlock:v4];

  return v2;
}

@end