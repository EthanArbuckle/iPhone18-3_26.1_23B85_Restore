@interface BuddyProximityAutomatedDeviceEnrollmentStringProvider
- (id)_titleWithLocalDeviceClass:(id)class language:(id)language;
- (id)textualDescriptionWithDeviceClass:(id)class language:(id)language;
- (id)textualPairingButtonTitleWithLanguage:(id)language;
- (id)textualTitleWithDeviceClass:(id)class language:(id)language;
- (id)visualDescriptionWithDeviceClass:(id)class language:(id)language;
- (id)visualPairingButtonTitleWithLanguage:(id)language;
- (id)visualTitleWithDeviceClass:(id)class language:(id)language;
@end

@implementation BuddyProximityAutomatedDeviceEnrollmentStringProvider

- (id)visualTitleWithDeviceClass:(id)class language:(id)language
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v7 = 0;
  objc_storeStrong(&v7, language);
  v5 = [(BuddyProximityAutomatedDeviceEnrollmentStringProvider *)selfCopy _titleWithLocalDeviceClass:location[0] language:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)visualDescriptionWithDeviceClass:(id)class language:(id)language
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v8 = 0;
  objc_storeStrong(&v8, language);
  v5 = +[NSBundle mainBundle];
  v6 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)textualTitleWithDeviceClass:(id)class language:(id)language
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v7 = 0;
  objc_storeStrong(&v7, language);
  v5 = [(BuddyProximityAutomatedDeviceEnrollmentStringProvider *)selfCopy _titleWithLocalDeviceClass:location[0] language:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)textualDescriptionWithDeviceClass:(id)class language:(id)language
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v8 = 0;
  objc_storeStrong(&v8, language);
  v5 = +[NSBundle mainBundle];
  v6 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)visualPairingButtonTitleWithLanguage:(id)language
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  v3 = +[NSBundle mainBundle];
  v4 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(location, 0);

  return v4;
}

- (id)textualPairingButtonTitleWithLanguage:(id)language
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  v3 = +[NSBundle mainBundle];
  v4 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(location, 0);

  return v4;
}

- (id)_titleWithLocalDeviceClass:(id)class language:(id)language
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v10 = 0;
  objc_storeStrong(&v10, language);
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