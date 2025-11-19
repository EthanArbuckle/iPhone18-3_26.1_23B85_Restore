@interface BYBuddySafetyAndHandlingBundleLocalizationProvider
- (BYBuddySafetyAndHandlingBundleLocalizationProvider)initWithLanguageCode:(id)a3;
- (id)localizedStringForKey:(id)a3;
@end

@implementation BYBuddySafetyAndHandlingBundleLocalizationProvider

- (BYBuddySafetyAndHandlingBundleLocalizationProvider)initWithLanguageCode:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = BYBuddySafetyAndHandlingBundleLocalizationProvider;
  v4 = [(BYBuddySafetyAndHandlingBundleLocalizationProvider *)&v7 init];
  v9 = v4;
  objc_storeStrong(&v9, v4);
  if (v4)
  {
    objc_storeStrong(v9 + 1, location[0]);
  }

  v5 = v9;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)localizedStringForKey:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[NSBundle mainBundle];
  v4 = [(BYBuddySafetyAndHandlingBundleLocalizationProvider *)v8 languageCode];
  v5 = SFLocalizedStringFromTableInBundleForLanguage();

  objc_storeStrong(location, 0);

  return v5;
}

@end