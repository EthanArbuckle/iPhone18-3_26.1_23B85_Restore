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
  sub_4674();
}

- (void)refreshUnitsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_4AF8(&unk_A8F0, v5);
}

- (void)setPreferredTemperatureUnit:(id)unit
{
  unitCopy = unit;
  selfCopy = self;
  sub_4C08(unit);
}

- (NSUnitTemperature)preferredTemperatureUnit
{
  selfCopy = self;
  v3 = sub_4DB4();

  return v3;
}

@end