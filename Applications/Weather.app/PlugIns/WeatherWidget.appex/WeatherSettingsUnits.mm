@interface WeatherSettingsUnits
- (NSUnitTemperature)preferredTemperatureUnit;
- (void)refreshUnits;
- (void)refreshUnitsWithCompletionHandler:(id)handler;
- (void)setPreferredTemperatureUnit:(id)unit;
@end

@implementation WeatherSettingsUnits

- (void)refreshUnits
{
  selfCopy = self;
  sub_1000D0148();
}

- (void)refreshUnitsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1000D05CC(&unk_1000FA820, v5);
}

- (void)setPreferredTemperatureUnit:(id)unit
{
  unitCopy = unit;
  selfCopy = self;
  sub_1000D06DC(unit);
}

- (NSUnitTemperature)preferredTemperatureUnit
{
  selfCopy = self;
  v3 = sub_1000D0888();

  return v3;
}

@end