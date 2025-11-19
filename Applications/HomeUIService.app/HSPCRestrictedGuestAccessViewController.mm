@interface HSPCRestrictedGuestAccessViewController
- (HSPCRestrictedGuestAccessViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
@end

@implementation HSPCRestrictedGuestAccessViewController

- (HSPCRestrictedGuestAccessViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v6 = a3;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004FE98;
  v20[3] = &unk_1000C6648;
  v7 = a4;
  v21 = v7;
  v8 = objc_retainBlock(v20);
  v19.receiver = self;
  v19.super_class = HSPCRestrictedGuestAccessViewController;
  v9 = [(HSPCMVVMShellViewController *)&v19 initWithTableViewStyle:2 moduleCreator:v8 moduleControllerBuilder:&stru_1000C7920];
  v10 = v9;
  if (v9)
  {
    [(HSPCRestrictedGuestAccessViewController *)v9 setConfig:v7];
    [(HSPCRestrictedGuestAccessViewController *)v10 setCoordinator:v6];
    v11 = HULocalizedString();
    [(HSPCRestrictedGuestAccessViewController *)v10 setTitle:v11];

    v12 = [v7 addedAccessory];
    v13 = [v12 hf_categoryOrPrimaryServiceType];

    v14 = +[UIDevice currentDevice];
    v15 = [v14 name];
    v16 = HULocalizedCategoryOrPrimaryServiceTypeStringWithFormat();
    [(HSPCRestrictedGuestAccessViewController *)v10 setSubtitle:v16, v15];

    v17 = [(HSPCRestrictedGuestAccessViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
  }

  return v10;
}

- (id)commitConfiguration
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[HSPCRestrictedGuestAccessViewController commitConfiguration]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'continue' button", &v5, 0xCu);
  }

  v3 = [NAFuture futureWithResult:&off_1000CDA08];

  return v3;
}

@end