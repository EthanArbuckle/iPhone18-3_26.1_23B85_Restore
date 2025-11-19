@interface ClimateTargetTemperatureTracker
- (_TtC7Climate31ClimateTargetTemperatureTracker)init;
- (void)temperatureService:(id)a3 didUpdateCurrentTemperature:(id)a4;
- (void)temperatureService:(id)a3 didUpdateTargetTemperature:(id)a4;
@end

@implementation ClimateTargetTemperatureTracker

- (_TtC7Climate31ClimateTargetTemperatureTracker)init
{
  v3 = OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureTracker_targetTemperatures;
  *(&self->super.isa + v3) = sub_10004FF10(_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClimateTargetTemperatureTracker();
  return [(ClimateTargetTemperatureTracker *)&v5 init];
}

- (void)temperatureService:(id)a3 didUpdateTargetTemperature:(id)a4
{
  v6 = sub_1000040E8(&unk_100114790);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  sub_10007F6E4();
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10007F0FC(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)temperatureService:(id)a3 didUpdateCurrentTemperature:(id)a4
{
  v5 = sub_1000040E8(&unk_1001153F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  if (a4)
  {
    sub_10007F6E4();
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

@end