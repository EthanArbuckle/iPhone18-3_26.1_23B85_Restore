@interface WeatherSettingsState
+ (_TtC15WeatherSettings20WeatherSettingsState)defaultState;
- (BOOL)areSignificantLocationsFeaturesAvailableInWeather;
- (BOOL)resetIdentifier;
- (BOOL)showHomeWorkLabels;
- (BOOL)useSignificantLocations;
- (_TtC15WeatherSettings20WeatherSettingsUnits)units;
- (void)refreshPredictedLocationsAuthorization;
- (void)setResetIdentifier:(BOOL)a3;
- (void)setShowHomeWorkLabels:(BOOL)a3;
- (void)setUseSignificantLocations:(BOOL)a3;
@end

@implementation WeatherSettingsState

+ (_TtC15WeatherSettings20WeatherSettingsState)defaultState
{
  v2 = sub_5CAC();

  return v2;
}

- (_TtC15WeatherSettings20WeatherSettingsUnits)units
{
  v2 = sub_5D64();

  return v2;
}

- (BOOL)resetIdentifier
{
  v2 = self;
  v3 = sub_5DA8();

  return v3 & 1;
}

- (void)setResetIdentifier:(BOOL)a3
{
  v3 = self;
  sub_5E54();
}

- (BOOL)showHomeWorkLabels
{
  v2 = self;
  v3 = sub_5F14();

  return v3 & 1;
}

- (void)setShowHomeWorkLabels:(BOOL)a3
{
  v3 = self;
  sub_5FC0();
}

- (BOOL)useSignificantLocations
{
  v2 = self;
  v3 = sub_6080();

  return v3 & 1;
}

- (void)setUseSignificantLocations:(BOOL)a3
{
  v3 = self;
  sub_612C();
}

- (BOOL)areSignificantLocationsFeaturesAvailableInWeather
{
  v2 = self;
  v3 = sub_61EC();

  return v3;
}

- (void)refreshPredictedLocationsAuthorization
{
  v2 = self;
  sub_6288();
}

@end