@interface WeatherSettingsManager
+ (id)sharedManager;
- (id)initSharedManager;
- (void)_postWeatherConditionsSettingsUpdatedNotification;
- (void)setShouldShowAirQualityConditions:(BOOL)conditions;
- (void)setShouldShowWeatherConditions:(BOOL)conditions;
@end

@implementation WeatherSettingsManager

+ (id)sharedManager
{
  if (qword_96D98[0] != -1)
  {
    sub_3C54C();
  }

  v3 = qword_96D90;

  return v3;
}

- (id)initSharedManager
{
  v7.receiver = self;
  v7.super_class = WeatherSettingsManager;
  v2 = [(WeatherSettingsManager *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"countryConfigurationDidChange:" name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"countryConfigurationDidChange:" name:GEOCountryConfigurationProvidersDidChangeNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"countryConfigurationDidChange:" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

- (void)setShouldShowAirQualityConditions:(BOOL)conditions
{
  GEOConfigSetBOOL();

  [(WeatherSettingsManager *)self _postWeatherConditionsSettingsUpdatedNotification];
}

- (void)setShouldShowWeatherConditions:(BOOL)conditions
{
  GEOConfigSetBOOL();

  [(WeatherSettingsManager *)self _postWeatherConditionsSettingsUpdatedNotification];
}

- (void)_postWeatherConditionsSettingsUpdatedNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"WeatherConditionsNeedsUpdatedNotification" object:self];
}

@end