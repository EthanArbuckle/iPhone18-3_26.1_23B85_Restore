@interface ClimateZoneHeatingCoolingVentingPositionView
- (void)fanService:(id)a3 didUpdateFanLevel:(unsigned __int8)a4;
- (void)fanService:(void *)a1 didUpdateOn:;
- (void)heatingCoolingService:(id)a3 didUpdateHeatingCoolingLevel:(int)a4;
- (void)temperatureService:(id)a3 didUpdateCurrentTemperature:(id)a4;
- (void)temperatureService:(id)a3 didUpdateTargetTemperature:(id)a4;
@end

@implementation ClimateZoneHeatingCoolingVentingPositionView

- (void)temperatureService:(id)a3 didUpdateTargetTemperature:(id)a4
{
  v5 = sub_1000040E8(&unk_100114790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000827C(0, &qword_100114AB0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10009114C();

  (*(v6 + 8))(v8, v5);
}

- (void)temperatureService:(id)a3 didUpdateCurrentTemperature:(id)a4
{
  v6 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (a4)
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

  v11 = self;
  sub_10009114C();

  sub_10000D894(v8);
}

- (void)fanService:(void *)a1 didUpdateOn:
{
  v1 = a1;
  sub_10009114C();
}

- (void)heatingCoolingService:(id)a3 didUpdateHeatingCoolingLevel:(int)a4
{
  v4 = self;
  sub_10009114C();
}

- (void)fanService:(id)a3 didUpdateFanLevel:(unsigned __int8)a4
{
  v4 = self;
  sub_10009114C();
}

@end