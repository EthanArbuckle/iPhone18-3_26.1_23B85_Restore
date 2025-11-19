@interface City
+ (id)currentLocationCity;
@end

@implementation City

+ (id)currentLocationCity
{
  v2 = objc_opt_new();
  [v2 setIsLocalWeatherCity:1];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CURRENT_LOCATION" value:&stru_8488 table:@"WeatherBridgeSettings"];
  [v2 setName:v4];

  return v2;
}

@end