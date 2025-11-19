@interface WeatherSettingsUnits
- (NSUnitTemperature)preferredTemperatureUnit;
- (void)refreshUnits;
- (void)refreshUnitsWithCompletionHandler:(id)a3;
- (void)setPreferredTemperatureUnit:(id)a3;
@end

@implementation WeatherSettingsUnits

- (void)refreshUnits
{
  v2 = self;
  sub_4674();
}

- (void)refreshUnitsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_4AF8(&unk_A8F0, v5);
}

- (void)setPreferredTemperatureUnit:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_4C08(a3);
}

- (NSUnitTemperature)preferredTemperatureUnit
{
  v2 = self;
  v3 = sub_4DB4();

  return v3;
}

@end