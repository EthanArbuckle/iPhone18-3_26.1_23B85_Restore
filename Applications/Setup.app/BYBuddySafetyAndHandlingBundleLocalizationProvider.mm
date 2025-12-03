@interface BYBuddySafetyAndHandlingBundleLocalizationProvider
- (BYBuddySafetyAndHandlingBundleLocalizationProvider)initWithLanguageCode:(id)code;
- (id)localizedStringForKey:(id)key;
@end

@implementation BYBuddySafetyAndHandlingBundleLocalizationProvider

- (BYBuddySafetyAndHandlingBundleLocalizationProvider)initWithLanguageCode:(id)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = BYBuddySafetyAndHandlingBundleLocalizationProvider;
  v4 = [(BYBuddySafetyAndHandlingBundleLocalizationProvider *)&v7 init];
  selfCopy = v4;
  objc_storeStrong(&selfCopy, v4);
  if (v4)
  {
    objc_storeStrong(selfCopy + 1, location[0]);
  }

  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)localizedStringForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v3 = +[NSBundle mainBundle];
  languageCode = [(BYBuddySafetyAndHandlingBundleLocalizationProvider *)selfCopy languageCode];
  v5 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(location, 0);

  return v5;
}

@end