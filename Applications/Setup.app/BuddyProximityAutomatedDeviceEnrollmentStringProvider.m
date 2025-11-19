@interface BuddyProximityAutomatedDeviceEnrollmentStringProvider
- (id)_titleWithLocalDeviceClass:(id)a3 language:(id)a4;
- (id)textualDescriptionWithDeviceClass:(id)a3 language:(id)a4;
- (id)textualPairingButtonTitleWithLanguage:(id)a3;
- (id)textualTitleWithDeviceClass:(id)a3 language:(id)a4;
- (id)visualDescriptionWithDeviceClass:(id)a3 language:(id)a4;
- (id)visualPairingButtonTitleWithLanguage:(id)a3;
- (id)visualTitleWithDeviceClass:(id)a3 language:(id)a4;
@end

@implementation BuddyProximityAutomatedDeviceEnrollmentStringProvider

- (id)visualTitleWithDeviceClass:(id)a3 language:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = [(BuddyProximityAutomatedDeviceEnrollmentStringProvider *)v9 _titleWithLocalDeviceClass:location[0] language:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)visualDescriptionWithDeviceClass:(id)a3 language:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = +[NSBundle mainBundle];
  v6 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)textualTitleWithDeviceClass:(id)a3 language:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = [(BuddyProximityAutomatedDeviceEnrollmentStringProvider *)v9 _titleWithLocalDeviceClass:location[0] language:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)textualDescriptionWithDeviceClass:(id)a3 language:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = +[NSBundle mainBundle];
  v6 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)visualPairingButtonTitleWithLanguage:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[NSBundle mainBundle];
  v4 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(location, 0);

  return v4;
}

- (id)textualPairingButtonTitleWithLanguage:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[NSBundle mainBundle];
  v4 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(location, 0);

  return v4;
}

- (id)_titleWithLocalDeviceClass:(id)a3 language:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = @"PROXIMITY_AUTOMATED_DEVICE_ENROLLMENT_PAIRING_TITLE";
  v5 = [BuddyLocalizationUtilities modelSpecificLocalizedStringKeyForKey:v9 deviceClass:location[0]];
  v6 = +[NSBundle mainBundle];
  v7 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end