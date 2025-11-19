@interface PHSettingsThumperProvisioningController
- (BOOL)isThumperProvisioningInProcess;
- (BOOL)shouldShowEmergencyAddress;
- (BOOL)shouldShowUpgradeToThumperButton;
- (PHSettingsThumperProvisioningController)init;
- (void)dealloc;
- (void)enableCapability;
- (void)webSheetCompletion;
@end

@implementation PHSettingsThumperProvisioningController

- (PHSettingsThumperProvisioningController)init
{
  v5.receiver = self;
  v5.super_class = PHSettingsThumperProvisioningController;
  v2 = [(PHSettingsThumperProvisioningController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"provisioningURLChanged:" name:TUCallCapabilitiesThumperCallingProvisioningURLChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHSettingsThumperProvisioningController;
  [(PHSettingsThumperProvisioningController *)&v4 dealloc];
}

- (BOOL)shouldShowEmergencyAddress
{
  v2 = [(PHSettingsThumperProvisioningController *)self callingCapabilityInfo];
  if (+[TUCallCapabilities isThumperCallingEnabled](TUCallCapabilities, "isThumperCallingEnabled") && [v2 provisioningStatus] == 3)
  {
    if ([v2 isProvisioningURLInvalid])
    {
      v3 = 1;
    }

    else
    {
      v5 = [v2 provisioningURL];
      v3 = v5 != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)webSheetCompletion
{
  [TUCallCapabilities setThumperCallingEnabled:1];

  +[TUCallCapabilities invalidateAndRefreshThumperCallingProvisioningURL];
}

- (void)enableCapability
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Enabling Thumper calling", v3, 2u);
  }

  [TUCallCapabilities setThumperCallingEnabled:1];
}

- (BOOL)shouldShowUpgradeToThumperButton
{
  v2 = [(PHSettingsThumperProvisioningController *)self callingCapabilityInfo];
  if (+[TUCallCapabilities isRelayCallingEnabled](TUCallCapabilities, "isRelayCallingEnabled") && +[TUCallCapabilities supportsThumperCalling](TUCallCapabilities, "supportsThumperCalling") && (+[TUCallCapabilities isThumperCallingEnabled]& 1) == 0)
  {
    if ((+[TUCallCapabilities supportsPrimaryCalling]& 1) != 0)
    {
      v3 = 1;
      goto LABEL_5;
    }

    if ((+[TUCallCapabilities supportsPrimaryCalling]& 1) == 0)
    {
      v3 = [v2 provisioningStatus] != 1;
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (BOOL)isThumperProvisioningInProcess
{
  v2 = [(PHSettingsThumperProvisioningController *)self callingCapabilityInfo];
  v3 = [v2 provisioningStatus] == 1;

  return v3;
}

@end