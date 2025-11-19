@interface WeatherSettingsState
+ (_TtC13WeatherWidget20WeatherSettingsState)defaultState;
- (BOOL)areSignificantLocationsFeaturesAvailableInWeather;
- (BOOL)resetIdentifier;
- (BOOL)showHomeWorkLabels;
- (BOOL)useSignificantLocations;
- (_TtC13WeatherWidget20WeatherSettingsUnits)units;
- (void)refreshPredictedLocationsAuthorization;
- (void)setResetIdentifier:(BOOL)a3;
- (void)setShowHomeWorkLabels:(BOOL)a3;
- (void)setUseSignificantLocations:(BOOL)a3;
@end

@implementation WeatherSettingsState

+ (_TtC13WeatherWidget20WeatherSettingsState)defaultState
{
  v2 = sub_100043CE4();

  return v2;
}

- (_TtC13WeatherWidget20WeatherSettingsUnits)units
{
  v2 = sub_100043D9C();

  return v2;
}

- (BOOL)resetIdentifier
{
  v2 = self;
  v3 = sub_100043DE0();

  return v3 & 1;
}

- (void)setResetIdentifier:(BOOL)a3
{
  v3 = self;
  sub_100043E8C();
}

- (BOOL)showHomeWorkLabels
{
  v2 = self;
  v3 = sub_100043F4C();

  return v3 & 1;
}

- (void)setShowHomeWorkLabels:(BOOL)a3
{
  v3 = self;
  sub_100043FF8();
}

- (BOOL)useSignificantLocations
{
  v2 = self;
  v3 = sub_1000440B8();

  return v3 & 1;
}

- (void)setUseSignificantLocations:(BOOL)a3
{
  v3 = self;
  sub_100044164();
}

- (BOOL)areSignificantLocationsFeaturesAvailableInWeather
{
  v2 = self;
  v3 = sub_100044224();

  return v3;
}

- (void)refreshPredictedLocationsAuthorization
{
  v2 = self;
  sub_1000442C0();
}

@end