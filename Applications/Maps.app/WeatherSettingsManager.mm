@interface WeatherSettingsManager
+ (id)sharedManager;
- (id)initSharedManager;
- (void)_postWeatherConditionsSettingsUpdatedNotification;
- (void)setShouldShowAirQualityConditions:(BOOL)a3;
- (void)setShouldShowWeatherConditions:(BOOL)a3;
@end

@implementation WeatherSettingsManager

+ (id)sharedManager
{
  if (qword_10195E4F8 != -1)
  {
    dispatch_once(&qword_10195E4F8, &stru_101637550);
  }

  v3 = qword_10195E4F0;

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

- (void)_postWeatherConditionsSettingsUpdatedNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"WeatherConditionsNeedsUpdatedNotification" object:self];
}

- (void)setShouldShowWeatherConditions:(BOOL)a3
{
  GEOConfigSetBOOL();

  [(WeatherSettingsManager *)self _postWeatherConditionsSettingsUpdatedNotification];
}

- (void)setShouldShowAirQualityConditions:(BOOL)a3
{
  GEOConfigSetBOOL();

  [(WeatherSettingsManager *)self _postWeatherConditionsSettingsUpdatedNotification];
}

@end