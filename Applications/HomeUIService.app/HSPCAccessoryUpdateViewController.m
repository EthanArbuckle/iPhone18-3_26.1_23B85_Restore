@interface HSPCAccessoryUpdateViewController
- (HSPCAccessoryUpdateViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)displayAutomaticUpdatesAlert;
- (id)handleInstallUpdate;
- (id)handleNotNowButtonTapped;
- (id)iconDescriptor;
@end

@implementation HSPCAccessoryUpdateViewController

- (HSPCAccessoryUpdateViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HSPCAccessoryUpdateViewController;
  v8 = [(HSPCCenterIconViewController *)&v15 initWithCoordinator:a3 config:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, a4);
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
  v2 = [(HSPCAccessoryUpdateViewController *)self config];
  v3 = [v2 addedAccessory];
  v4 = [v3 hf_startSoftwareUpdate];

  return [NAFuture futureWithResult:&off_1000CE020];
}

- (id)handleNotNowButtonTapped
{
  v3 = [(HSPCAccessoryUpdateViewController *)self config];
  v4 = [v3 home];
  if ([v4 hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter])
  {
    v5 = [(HSPCAccessoryUpdateViewController *)self config];
    v6 = [v5 home];
    v7 = [v6 hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];

    if ((v7 & 1) == 0)
    {
      v8 = [(HSPCAccessoryUpdateViewController *)self displayAutomaticUpdatesAlert];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(HSPCAccessoryUpdateViewController *)self config];
    v11 = [v10 home];
    v12 = [v11 hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter];
    v13 = [(HSPCAccessoryUpdateViewController *)self config];
    v14 = [v13 home];
    v16 = 136315650;
    v17 = "[HSPCAccessoryUpdateViewController handleNotNowButtonTapped]";
    v18 = 1024;
    v19 = v12;
    v20 = 1024;
    v21 = [v14 hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Did not display automatic software updates popup: hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter - [%d], hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled - [%d]", &v16, 0x18u);
  }

  v8 = [NAFuture futureWithResult:&off_1000CE020];
LABEL_8:

  return v8;
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