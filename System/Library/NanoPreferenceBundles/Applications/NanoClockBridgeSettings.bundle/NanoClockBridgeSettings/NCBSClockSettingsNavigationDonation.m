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
+ (void)donateSettingWithTitle:(id)a3 navigationComponents:(id)a4 urlString:(id)a5;
+ (void)donateUserVisitForCityAbbreviationsSettings;
+ (void)donateUserVisitForClockSettings;
+ (void)donateUserVisitForSoundsSettings;
+ (void)donateUserVisitForTapticTimeSettings;
@end

@implementation NCBSClockSettingsNavigationDonation

+ (void)donateUserVisitForClockSettings
{
  v2 = objc_opt_class();
  v4 = [objc_opt_class() clockSettingsTitle];
  v3 = [objc_opt_class() clockSettingsURLString];
  [v2 donateSettingWithTitle:v4 navigationComponents:&__NSArray0__struct urlString:v3];
}

+ (void)donateSettingWithTitle:(id)a3 navigationComponents:(id)a4 urlString:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [objc_opt_class() currentBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [NSURL URLWithString:v9];
    [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:v11 title:v7 localizedNavigationComponents:v8 deepLink:v12];
  }

  else
  {
    v10 = NTALogForCategory(5uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_6008(v9, v10);
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

  v3 = [v2 bundleURL];

  return v3;
}

+ (id)clockSettingsTitle
{
  v2 = [_NSLocalizedStringResource alloc];
  v3 = +[NSLocale currentLocale];
  v4 = [objc_opt_class() currentBundle];
  v5 = [v4 bundleURL];
  v6 = [v2 initWithKey:@"PANE_TITLE" table:@"NanoClockBridgeSettings" locale:v3 bundleURL:v5];

  return v6;
}

+ (id)clockSettingsURLString
{
  v2 = [objc_opt_class() currentBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [NSString stringWithFormat:@"bridge:root=%@", v3];

  return v4;
}

+ (void)donateUserVisitForSoundsSettings
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() soundsSettingsTitle];
  v4 = [objc_opt_class() clockSettingsTitle];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [objc_opt_class() soundsSettingsURLString];
  [v2 donateSettingWithTitle:v3 navigationComponents:v5 urlString:v6];
}

+ (id)soundsSettingsTitle
{
  v2 = [objc_opt_class() axBundleURL];
  if (v2)
  {
    v3 = [_NSLocalizedStringResource alloc];
    v4 = +[NSLocale currentLocale];
    v5 = [v3 initWithKey:@"TAPTIC_CHIMES_SOUNDS_TITLE" table:@"Localizable" locale:v4 bundleURL:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)soundsSettingsURLString
{
  v2 = [objc_opt_class() clockSettingsURLString];
  v3 = [v2 stringByAppendingString:@"&path=CHIMES_SOUNDS_ID"];

  return v3;
}

+ (void)donateUserVisitForTapticTimeSettings
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() tapticTimeSettingsTitle];
  v4 = [objc_opt_class() clockSettingsTitle];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [objc_opt_class() tapticTimeSettingsURLString];
  [v2 donateSettingWithTitle:v3 navigationComponents:v5 urlString:v6];
}

+ (id)tapticTimeSettingsTitle
{
  v2 = [objc_opt_class() axBundleURL];
  if (v2)
  {
    v3 = [_NSLocalizedStringResource alloc];
    v4 = +[NSLocale currentLocale];
    v5 = [v3 initWithKey:@"TAPTIC_TIME_TITLE" table:@"Localizable" locale:v4 bundleURL:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tapticTimeSettingsURLString
{
  v2 = [objc_opt_class() clockSettingsURLString];
  v3 = [v2 stringByAppendingString:@"&path=TAPTIC_TIME_IDENTIFIER"];

  return v3;
}

+ (void)donateUserVisitForCityAbbreviationsSettings
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() cityAbbreviationsSettingsTitle];
  v4 = [objc_opt_class() clockSettingsTitle];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [objc_opt_class() cityAbbreviationsSettingsURLString];
  [v2 donateSettingWithTitle:v3 navigationComponents:v5 urlString:v6];
}

+ (id)cityAbbreviationsSettingsTitle
{
  v2 = [_NSLocalizedStringResource alloc];
  v3 = +[NSLocale currentLocale];
  v4 = [objc_opt_class() currentBundle];
  v5 = [v4 bundleURL];
  v6 = [v2 initWithKey:@"CITY_ABBREVIATIONS" table:@"NanoClockBridgeSettings" locale:v3 bundleURL:v5];

  return v6;
}

+ (id)cityAbbreviationsSettingsURLString
{
  v2 = [objc_opt_class() clockSettingsURLString];
  v3 = [v2 stringByAppendingString:@"&path=CITY_ABBREVIATIONS_ID"];

  return v3;
}

@end