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
  sub_1000D0148();
}

- (void)refreshUnitsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1000D05CC(&unk_1000FA820, v5);
}

- (void)setPreferredTemperatureUnit:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000D06DC(a3);
}

- (NSUnitTemperature)preferredTemperatureUnit
{
  v2 = self;
  v3 = sub_1000D0888();

  return v3;
}

@end