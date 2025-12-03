@interface BuddyProximityPairingControllerStringProvider
- (id)textualDescriptionWithDeviceClass:(id)class language:(id)language;
- (id)textualTitleWithDeviceClass:(id)class language:(id)language;
- (id)visualDescriptionWithDeviceClass:(id)class language:(id)language;
- (id)visualTitleWithDeviceClass:(id)class language:(id)language;
@end

@implementation BuddyProximityPairingControllerStringProvider

- (id)visualTitleWithDeviceClass:(id)class language:(id)language
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v9 = 0;
  objc_storeStrong(&v9, language);
  v5 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_SETUP_PAIR_VISUAL_TITLE" deviceClass:location[0]];
  v6 = +[NSBundle mainBundle];
  v7 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)visualDescriptionWithDeviceClass:(id)class language:(id)language
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v9 = 0;
  objc_storeStrong(&v9, language);
  v5 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_SETUP_PAIR_VISUAL_MESSAGE" deviceClass:location[0]];
  v6 = +[NSBundle mainBundle];
  v7 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)textualTitleWithDeviceClass:(id)class language:(id)language
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

- (id)textualDescriptionWithDeviceClass:(id)class language:(id)language
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v9 = 0;
  objc_storeStrong(&v9, language);
  v5 = [BuddyLocalizationUtilities siblingDeviceSpecificLocalizedStringKeyForKey:@"PROXIMITY_SETUP_PAIR_MANUAL_MESSAGE" deviceClass:location[0]];
  v6 = +[NSBundle mainBundle];
  v7 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end