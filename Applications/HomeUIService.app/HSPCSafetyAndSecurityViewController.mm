@interface HSPCSafetyAndSecurityViewController
- (HSPCSafetyAndSecurityViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)_enableSafetyAndSecuritySettings;
- (id)commitConfiguration;
@end

@implementation HSPCSafetyAndSecurityViewController

- (HSPCSafetyAndSecurityViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [UIImageView alloc];
  v10 = +[UIImage hf_safetyAndSecurityImage];
  v11 = [v9 initWithImage:v10];

  [v11 setContentMode:2];
  v22.receiver = self;
  v22.super_class = HSPCSafetyAndSecurityViewController;
  v12 = [(HSPCFixedSizeCenterContentViewController *)&v22 initWithCenterContentView:v11 size:75.0, 75.0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_config, a4);
    objc_storeStrong(&v13->_coordinator, a3);
    v14 = HULocalizedString();
    [(HSPCSafetyAndSecurityViewController *)v13 setTitle:v14];

    v15 = HULocalizedString();
    v16 = [(HSPCSafetyAndSecurityViewController *)v13 addProminentButtonWithLocalizedTitle:v15 target:v13 futureSelector:"_enableSafetyAndSecuritySettings"];

    v17 = HULocalizedString();
    v18 = [(HSPCSafetyAndSecurityViewController *)v13 addOptionalButtonWithLocalizedTitle:v17 target:v13 futureSelector:"commitConfiguration"];

    v19 = HULocalizedString();
    [(HSPCSafetyAndSecurityViewController *)v13 setSubtitle:v19];

    v20 = HULocalizedString();
    [(HSPCSafetyAndSecurityViewController *)v13 setBottomTrayTitle:v20];
  }

  return v13;
}

- (id)_enableSafetyAndSecuritySettings
{
  v3 = objc_alloc_init(NSMutableArray);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100059DFC;
  v29[3] = &unk_1000C6030;
  v29[4] = self;
  v21 = [NAFuture futureWithBlock:v29];
  [v3 na_safeAddObject:?];
  v4 = [(HSPCSafetyAndSecurityViewController *)self config];
  v5 = [v4 home];
  v6 = [v5 hf_allUsersIncludingCurrentUser];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [(HSPCSafetyAndSecurityViewController *)self config];
        v13 = [v12 home];
        v14 = [v13 homeAccessControlForUser:v11];

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100059FE0;
        v23[3] = &unk_1000C6030;
        v24 = v14;
        v15 = v14;
        v16 = [NAFuture futureWithBlock:v23];
        [v3 na_safeAddObject:v16];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v17 = [(HSPCSafetyAndSecurityViewController *)self commitConfiguration];
  [v3 addObject:v17];

  v18 = [v3 copy];
  v19 = [NAFuture chainFutures:v18];

  return v19;
}

- (id)commitConfiguration
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Will set local key for userHasDismissedAudioAnalysisOnboardingOnThisDevice...", buf, 2u);
  }

  v5 = [HFUserItem alloc];
  v6 = [(HSPCSafetyAndSecurityViewController *)self config];
  v7 = [v6 home];
  v8 = [(HSPCSafetyAndSecurityViewController *)self config];
  v9 = [v8 home];
  v10 = [v9 currentUser];
  v11 = [v5 initWithHome:v7 user:v10 nameStyle:0];

  v12 = [v11 setDismissedAudioAnalysisOnboardingOnThisDevice:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005A344;
  v18[3] = &unk_1000C6030;
  v18[4] = self;
  v13 = [NAFuture futureWithBlock:v18];
  [v3 addObject:v13];
  v14 = [NAFuture futureWithResult:&off_1000CDFF0];
  [v3 addObject:v14];

  v15 = [v3 copy];
  v16 = [NAFuture chainFutures:v15];

  return v16;
}

@end