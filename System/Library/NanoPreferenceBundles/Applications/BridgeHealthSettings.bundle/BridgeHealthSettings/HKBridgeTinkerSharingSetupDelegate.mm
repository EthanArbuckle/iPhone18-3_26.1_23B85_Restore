@interface HKBridgeTinkerSharingSetupDelegate
- (HKBridgeTinkerSharingSetupDelegate)initWithPresentingController:(id)a3 tinkerDevice:(id)a4 tinkerMember:(id)a5 guardianMember:(id)a6;
- (void)sharingSetupDidFailWithError:(id)a3;
- (void)sharingSetupDidSucceed;
@end

@implementation HKBridgeTinkerSharingSetupDelegate

- (HKBridgeTinkerSharingSetupDelegate)initWithPresentingController:(id)a3 tinkerDevice:(id)a4 tinkerMember:(id)a5 guardianMember:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HKBridgeTinkerSharingSetupDelegate;
  v14 = [(HKBridgeTinkerSharingSetupDelegate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_presentingController, v10);
    objc_storeStrong(&v15->_tinkerDevice, a4);
    objc_storeStrong(&v15->_tinkerMember, a5);
    objc_storeStrong(&v15->_guardianMember, a6);
  }

  return v15;
}

- (void)sharingSetupDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"TINKER_HEALTH_SETUP_FAILED_TITLE" value:&stru_188B0 table:@"HealthUI-Localizable-tinker"];

  v7 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"TINKER_HEALTH_SETUP_FAILED_DEFAULT_MESSAGE" value:&stru_188B0 table:@"HealthUI-Localizable-tinker"];

  v9 = [v4 domain];
  v10 = [v9 isEqualToString:@"HDIDSErrorDomain"];

  if (!v10)
  {
    if ([v4 hk_isAuthorizationDeniedError])
    {
      v15 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
      v12 = v15;
      v16 = @"TINKER_HEALTH_SETUP_USER_%@_DENIED";
    }

    else
    {
      if (![v4 hk_isDatabaseAccessibilityError])
      {
        if (![v4 hk_isHealthKitErrorWithCode:701])
        {
          goto LABEL_10;
        }

        v11 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
        v12 = v11;
        v13 = @"TINKER_HEALTH_SETUP_FAILED_ICLOUD_DISABLED";
        goto LABEL_3;
      }

      v15 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
      v12 = v15;
      v16 = @"TINKER_HEALTH_SETUP_UNLOCK_USER_%@_WATCH";
    }

    v17 = [v15 localizedStringForKey:v16 value:&stru_188B0 table:@"HealthUI-Localizable-tinker"];
    v18 = [(FAFamilyMember *)self->_tinkerMember firstName];
    v14 = [NSString stringWithFormat:v17, v18];

    v8 = v17;
    goto LABEL_9;
  }

  v11 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = v11;
  v13 = @"TINKER_HEALTH_SETUP_FAILED_IDS";
LABEL_3:
  v14 = [v11 localizedStringForKey:v13 value:&stru_188B0 table:@"HealthUI-Localizable-tinker"];
LABEL_9:

  v8 = v14;
LABEL_10:
  v19 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];
  v20 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v21 = [v20 localizedStringForKey:@"DISMISS" value:&stru_188B0 table:@"HealthUI-Localizable-tinker"];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_992C;
  v28[3] = &unk_18630;
  v28[4] = self;
  v22 = [UIAlertAction actionWithTitle:v21 style:0 handler:v28];
  [v19 addAction:v22];

  v23 = +[UIApplication sharedApplication];
  v24 = [v23 windows];
  v25 = [v24 firstObject];
  v26 = [v25 rootViewController];

  v27 = [v26 presentedViewController];
  [v27 presentViewController:v19 animated:1 completion:0];
}

- (void)sharingSetupDidSucceed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9A04;
  block[3] = &unk_18510;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end