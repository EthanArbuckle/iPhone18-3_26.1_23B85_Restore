@interface COSTinkerHealthSharingSetupDelegate
- (BPSBuddyController)presentingController;
- (COSBuddyControllerDelegate)buddyControllerDelegate;
- (COSTinkerHealthSharingSetupDelegate)init;
- (FAFamilyMember)guardianMember;
- (FAFamilyMember)tinkerMember;
- (void)sharingSetupDidFailWithError:(id)a3;
- (void)sharingSetupDidSucceed;
- (void)tinkerDevice;
@end

@implementation COSTinkerHealthSharingSetupDelegate

- (void)tinkerDevice
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:NRDevicePropertyIsArchived];
  if ([v4 BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (COSTinkerHealthSharingSetupDelegate)init
{
  v5.receiver = self;
  v5.super_class = COSTinkerHealthSharingSetupDelegate;
  v2 = [(COSTinkerHealthSharingSetupDelegate *)&v5 init];
  if (v2)
  {
    v3 = [UIApp setupController];
    objc_storeWeak(&v2->_setupController, v3);
  }

  return v2;
}

- (FAFamilyMember)tinkerMember
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  v3 = [WeakRetained tinkerFamilyMember];

  return v3;
}

- (FAFamilyMember)guardianMember
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  v3 = [WeakRetained pairingParentFamilyMember];

  return v3;
}

- (void)sharingSetupDidFailWithError:(id)a3
{
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v4 localizedStringForKey:@"TINKER_HEALTH_SETUP_FAILED_TITLE" value:&stru_10026E598 table:@"HealthUI-Localizable-tinker"];

  v5 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"TINKER_HEALTH_SETUP_FAILED_DEFAULT_MESSAGE" value:&stru_10026E598 table:@"HealthUI-Localizable-tinker"];

  if (sub_100009A74())
  {

    v6 = @"Apple Internal: Health Sharing Setup failed. Please file a bug against HealthKit | All with a sysdiagnose from both the watch and phone. You can try to enable Health Sharing later.";
  }

  v7 = [UIAlertController alertControllerWithTitle:v12 message:v6 preferredStyle:1];
  v8 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"DISMISS" value:&stru_10026E598 table:@"HealthUI-Localizable-tinker"];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:&stru_1002686C0];
  [v7 addAction:v10];

  WeakRetained = objc_loadWeakRetained(&self->_presentingController);
  [WeakRetained presentViewController:v7 animated:1 completion:0];
}

- (void)sharingSetupDidSucceed
{
  WeakRetained = objc_loadWeakRetained(&self->_buddyControllerDelegate);
  v3 = objc_loadWeakRetained(&self->_presentingController);
  [WeakRetained buddyControllerDone:v3];
}

- (BPSBuddyController)presentingController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingController);

  return WeakRetained;
}

- (COSBuddyControllerDelegate)buddyControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buddyControllerDelegate);

  return WeakRetained;
}

@end