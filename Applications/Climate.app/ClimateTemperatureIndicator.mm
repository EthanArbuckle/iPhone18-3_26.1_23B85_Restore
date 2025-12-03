@interface ClimateTemperatureIndicator
- (BOOL)isEnabled;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter;
- (void)dimensionManager:(id)manager didUpdateTemperatureUnit:(id)unit;
- (void)setEnabled:(BOOL)enabled;
- (void)temperatureService:(id)service didUpdateCurrentTemperature:(id)temperature;
- (void)temperatureService:(id)service didUpdateOn:(BOOL)on;
- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ClimateTemperatureIndicator

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateTemperatureIndicator();
  return [(ClimateTemperatureIndicator *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style])
  {
    enabledCopy = enabled;
    v4.receiver = self;
    v4.super_class = type metadata accessor for ClimateTemperatureIndicator();
    [(ClimateTemperatureIndicator *)&v4 setEnabled:enabledCopy];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1000B2398(change);
}

- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature
{
  v6 = sub_1000040E8(&unk_100114790);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  sub_10000827C(0, &qword_100114AB0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  sub_1000B2DC8(serviceCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)temperatureService:(id)service didUpdateOn:(BOOL)on
{
  selfCopy = self;
  sub_1000B0F6C();
}

- (void)temperatureService:(id)service didUpdateCurrentTemperature:(id)temperature
{
  v6 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (temperature)
  {
    sub_10000827C(0, &qword_100114AB0);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = sub_1000040E8(&unk_100114790);
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1000040E8(&unk_100114790);
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  sub_1000B0F6C();

  sub_100008904(v8, &unk_1001153F0);
}

- (void)dimensionManager:(id)manager didUpdateTemperatureUnit:(id)unit
{
  selfCopy = self;
  sub_1000B0F6C();
  sub_1000B0684();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter
{
  selfCopy = self;
  sub_1000B1014();
}

@end