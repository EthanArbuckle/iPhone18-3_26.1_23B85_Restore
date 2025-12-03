@interface NCBSClockSettingsNavigationDonation
+ (id)axBundleURL;
+ (id)cityAbbreviationsSettingsTitle;
+ (id)cityAbbreviationsSettingsURLString;
+ (id)clockSettingsTitle;
+ (id)clockSettingsURLString;
+ (id)currentBundle;
+ (id)soundsSettingsTitle;
+ (id)soundsSettingsURLString;
+ (id)tapticTimeSettingsTitle;
+ (id)tapticTimeSettingsURLString;
+ (void)donateSettingWithTitle:(id)title navigationComponents:(id)components urlString:(id)string;
+ (void)donateUserVisitForCityAbbreviationsSettings;
+ (void)donateUserVisitForClockSettings;
+ (void)donateUserVisitForSoundsSettings;
+ (void)donateUserVisitForTapticTimeSettings;
@end

@implementation NCBSClockSettingsNavigationDonation

+ (void)donateUserVisitForClockSettings
{
  v2 = objc_opt_class();
  clockSettingsTitle = [objc_opt_class() clockSettingsTitle];
  clockSettingsURLString = [objc_opt_class() clockSettingsURLString];
  [v2 donateSettingWithTitle:clockSettingsTitle navigationComponents:&__NSArray0__struct urlString:clockSettingsURLString];
}

+ (void)donateSettingWithTitle:(id)title navigationComponents:(id)components urlString:(id)string
{
  titleCopy = title;
  componentsCopy = components;
  stringCopy = string;
  if (titleCopy)
  {
    currentBundle = [objc_opt_class() currentBundle];
    bundleIdentifier = [currentBundle bundleIdentifier];
    v12 = [NSURL URLWithString:stringCopy];
    [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:bundleIdentifier title:titleCopy localizedNavigationComponents:componentsCopy deepLink:v12];
  }

  else
  {
    currentBundle = NTALogForCategory(5uLL);
    if (os_log_type_enabled(currentBundle, OS_LOG_TYPE_ERROR))
    {
      sub_6008(stringCopy, currentBundle);
    }
  }
}

+ (id)currentBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

+ (id)axBundleURL
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  if (([v2 isLoaded] & 1) == 0)
  {
    [v2 load];
  }

  bundleURL = [v2 bundleURL];

  return bundleURL;
}

+ (id)clockSettingsTitle
{
  v2 = [_NSLocalizedStringResource alloc];
  v3 = +[NSLocale currentLocale];
  currentBundle = [objc_opt_class() currentBundle];
  bundleURL = [currentBundle bundleURL];
  v6 = [v2 initWithKey:@"PANE_TITLE" table:@"NanoClockBridgeSettings" locale:v3 bundleURL:bundleURL];

  return v6;
}

+ (id)clockSettingsURLString
{
  currentBundle = [objc_opt_class() currentBundle];
  bundleIdentifier = [currentBundle bundleIdentifier];
  v4 = [NSString stringWithFormat:@"bridge:root=%@", bundleIdentifier];

  return v4;
}

+ (void)donateUserVisitForSoundsSettings
{
  v2 = objc_opt_class();
  soundsSettingsTitle = [objc_opt_class() soundsSettingsTitle];
  clockSettingsTitle = [objc_opt_class() clockSettingsTitle];
  v7 = clockSettingsTitle;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  soundsSettingsURLString = [objc_opt_class() soundsSettingsURLString];
  [v2 donateSettingWithTitle:soundsSettingsTitle navigationComponents:v5 urlString:soundsSettingsURLString];
}

+ (id)soundsSettingsTitle
{
  axBundleURL = [objc_opt_class() axBundleURL];
  if (axBundleURL)
  {
    v3 = [_NSLocalizedStringResource alloc];
    v4 = +[NSLocale currentLocale];
    v5 = [v3 initWithKey:@"TAPTIC_CHIMES_SOUNDS_TITLE" table:@"Localizable" locale:v4 bundleURL:axBundleURL];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)soundsSettingsURLString
{
  clockSettingsURLString = [objc_opt_class() clockSettingsURLString];
  v3 = [clockSettingsURLString stringByAppendingString:@"&path=CHIMES_SOUNDS_ID"];

  return v3;
}

+ (void)donateUserVisitForTapticTimeSettings
{
  v2 = objc_opt_class();
  tapticTimeSettingsTitle = [objc_opt_class() tapticTimeSettingsTitle];
  clockSettingsTitle = [objc_opt_class() clockSettingsTitle];
  v7 = clockSettingsTitle;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  tapticTimeSettingsURLString = [objc_opt_class() tapticTimeSettingsURLString];
  [v2 donateSettingWithTitle:tapticTimeSettingsTitle navigationComponents:v5 urlString:tapticTimeSettingsURLString];
}

+ (id)tapticTimeSettingsTitle
{
  axBundleURL = [objc_opt_class() axBundleURL];
  if (axBundleURL)
  {
    v3 = [_NSLocalizedStringResource alloc];
    v4 = +[NSLocale currentLocale];
    v5 = [v3 initWithKey:@"TAPTIC_TIME_TITLE" table:@"Localizable" locale:v4 bundleURL:axBundleURL];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tapticTimeSettingsURLString
{
  clockSettingsURLString = [objc_opt_class() clockSettingsURLString];
  v3 = [clockSettingsURLString stringByAppendingString:@"&path=TAPTIC_TIME_IDENTIFIER"];

  return v3;
}

+ (void)donateUserVisitForCityAbbreviationsSettings
{
  v2 = objc_opt_class();
  cityAbbreviationsSettingsTitle = [objc_opt_class() cityAbbreviationsSettingsTitle];
  clockSettingsTitle = [objc_opt_class() clockSettingsTitle];
  v7 = clockSettingsTitle;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  cityAbbreviationsSettingsURLString = [objc_opt_class() cityAbbreviationsSettingsURLString];
  [v2 donateSettingWithTitle:cityAbbreviationsSettingsTitle navigationComponents:v5 urlString:cityAbbreviationsSettingsURLString];
}

+ (id)cityAbbreviationsSettingsTitle
{
  v2 = [_NSLocalizedStringResource alloc];
  v3 = +[NSLocale currentLocale];
  currentBundle = [objc_opt_class() currentBundle];
  bundleURL = [currentBundle bundleURL];
  v6 = [v2 initWithKey:@"CITY_ABBREVIATIONS" table:@"NanoClockBridgeSettings" locale:v3 bundleURL:bundleURL];

  return v6;
}

+ (id)cityAbbreviationsSettingsURLString
{
  clockSettingsURLString = [objc_opt_class() clockSettingsURLString];
  v3 = [clockSettingsURLString stringByAppendingString:@"&path=CITY_ABBREVIATIONS_ID"];

  return v3;
}

@end