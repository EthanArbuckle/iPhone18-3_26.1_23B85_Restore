@interface TransitPreferencesText
+ (id)cellTextForICFares;
+ (id)footerTextForDisabledModes;
+ (id)footerTextForICFares;
+ (id)headerTextForDisabledModes;
@end

@implementation TransitPreferencesText

+ (id)headerTextForDisabledModes
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v3 = [v2 localizedStringForKey:@"Prefer Trips Using" value:@"localized string not found" table:0];

  return v3;
}

+ (id)footerTextForDisabledModes
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v3 = [v2 localizedStringForKey:@"Prefer these vehicles when planning transit trips." value:@"localized string not found" table:0];

  return v3;
}

+ (id)cellTextForICFares
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v3 = [v2 localizedStringForKey:@"[Transit Filter Picker value:Fares] Transit Card Fares" table:{@"localized string not found", 0}];

  return v3;
}

+ (id)footerTextForICFares
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v3 = [v2 localizedStringForKey:@"[Transit Filter Picker value:Fares] Transit Card Fares Footer" table:{@"localized string not found", 0}];

  return v3;
}

@end