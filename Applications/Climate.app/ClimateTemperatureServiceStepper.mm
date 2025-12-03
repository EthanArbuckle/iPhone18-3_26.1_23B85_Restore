@interface ClimateTemperatureServiceStepper
- (CAFTemperature)temperature;
- (void)setTemperature:(id)temperature;
- (void)temperatureService:(id)service didUpdateCurrentTemperature:(id)temperature;
- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature;
@end

@implementation ClimateTemperatureServiceStepper

- (CAFTemperature)temperature
{
  v3 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  swift_beginAccess();
  return *&self->_TtC7Climate14ClimateStepper_opaque[v3];
}

- (void)setTemperature:(id)temperature
{
  v5 = OBJC_IVAR____TtC7Climate32ClimateTemperatureServiceStepper_temperature;
  swift_beginAccess();
  v6 = *&self->_TtC7Climate14ClimateStepper_opaque[v5];
  temperatureCopy = temperature;
  selfCopy = self;
  [v6 unregisterObserver:selfCopy];
  v9 = *&self->_TtC7Climate14ClimateStepper_opaque[v5];
  *&self->_TtC7Climate14ClimateStepper_opaque[v5] = temperatureCopy;
  v10 = temperatureCopy;

  [v10 registerObserver:selfCopy];
}

- (void)temperatureService:(id)service didUpdateCurrentTemperature:(id)temperature
{
  v5 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  if (temperature)
  {
    sub_10000827C(0, &qword_100114AB0);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_1000040E8(&unk_100114790);
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1000040E8(&unk_100114790);
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  sub_10000D894(v7);
}

- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature
{
  v4 = sub_1000040E8(&unk_100114790);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - v6;
  sub_10000827C(0, &qword_100114AB0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
}

@end