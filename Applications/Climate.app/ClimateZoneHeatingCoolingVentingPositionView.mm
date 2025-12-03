@interface ClimateZoneHeatingCoolingVentingPositionView
- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level;
- (void)fanService:(void *)service didUpdateOn:;
- (void)heatingCoolingService:(id)service didUpdateHeatingCoolingLevel:(int)level;
- (void)temperatureService:(id)service didUpdateCurrentTemperature:(id)temperature;
- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature;
@end

@implementation ClimateZoneHeatingCoolingVentingPositionView

- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature
{
  v5 = sub_1000040E8(&unk_100114790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000827C(0, &qword_100114AB0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10009114C();

  (*(v6 + 8))(v8, v5);
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
  sub_10009114C();

  sub_10000D894(v8);
}

- (void)fanService:(void *)service didUpdateOn:
{
  serviceCopy = service;
  sub_10009114C();
}

- (void)heatingCoolingService:(id)service didUpdateHeatingCoolingLevel:(int)level
{
  selfCopy = self;
  sub_10009114C();
}

- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level
{
  selfCopy = self;
  sub_10009114C();
}

@end