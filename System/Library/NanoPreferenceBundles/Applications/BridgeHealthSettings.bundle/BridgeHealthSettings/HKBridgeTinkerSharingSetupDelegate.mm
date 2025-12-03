@interface HKBridgeTinkerSharingSetupDelegate
- (HKBridgeTinkerSharingSetupDelegate)initWithPresentingController:(id)controller tinkerDevice:(id)device tinkerMember:(id)member guardianMember:(id)guardianMember;
- (void)sharingSetupDidFailWithError:(id)error;
- (void)sharingSetupDidSucceed;
@end

@implementation HKBridgeTinkerSharingSetupDelegate

- (HKBridgeTinkerSharingSetupDelegate)initWithPresentingController:(id)controller tinkerDevice:(id)device tinkerMember:(id)member guardianMember:(id)guardianMember
{
  controllerCopy = controller;
  deviceCopy = device;
  memberCopy = member;
  guardianMemberCopy = guardianMember;
  v17.receiver = self;
  v17.super_class = HKBridgeTinkerSharingSetupDelegate;
  v14 = [(HKBridgeTinkerSharingSetupDelegate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_presentingController, controllerCopy);
    objc_storeStrong(&v15->_tinkerDevice, device);
    objc_storeStrong(&v15->_tinkerMember, member);
    objc_storeStrong(&v15->_guardianMember, guardianMember);
  }

  return v15;
}

- (void)sharingSetupDidFailWithError:(id)error
{
  errorCopy = error;
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"TINKER_HEALTH_SETUP_FAILED_TITLE" value:&stru_188B0 table:@"HealthUI-Localizable-tinker"];

  v7 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"TINKER_HEALTH_SETUP_FAILED_DEFAULT_MESSAGE" value:&stru_188B0 table:@"HealthUI-Localizable-tinker"];

  domain = [errorCopy domain];
  v10 = [domain isEqualToString:@"HDIDSErrorDomain"];

  if (!v10)
  {
    if ([errorCopy hk_isAuthorizationDeniedError])
    {
      v15 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
      v12 = v15;
      v16 = @"TINKER_HEALTH_SETUP_USER_%@_DENIED";
    }

    else
    {
      if (![errorCopy hk_isDatabaseAccessibilityError])
      {
        if (![errorCopy hk_isHealthKitErrorWithCode:701])
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
    firstName = [(FAFamilyMember *)self->_tinkerMember firstName];
    v14 = [NSString stringWithFormat:v17, firstName];

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
  windows = [v23 windows];
  firstObject = [windows firstObject];
  rootViewController = [firstObject rootViewController];

  presentedViewController = [rootViewController presentedViewController];
  [presentedViewController presentViewController:v19 animated:1 completion:0];
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