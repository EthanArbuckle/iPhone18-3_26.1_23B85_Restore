@interface ClimateTemperatureIndicator
- (BOOL)isEnabled;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3;
- (void)dimensionManager:(id)a3 didUpdateTemperatureUnit:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)temperatureService:(id)a3 didUpdateCurrentTemperature:(id)a4;
- (void)temperatureService:(id)a3 didUpdateOn:(BOOL)a4;
- (void)temperatureService:(id)a3 didUpdateTargetTemperature:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ClimateTemperatureIndicator

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateTemperatureIndicator();
  return [(ClimateTemperatureIndicator *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style])
  {
    v3 = a3;
    v4.receiver = self;
    v4.super_class = type metadata accessor for ClimateTemperatureIndicator();
    [(ClimateTemperatureIndicator *)&v4 setEnabled:v3];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000B2398(a3);
}

- (void)temperatureService:(id)a3 didUpdateTargetTemperature:(id)a4
{
  v6 = sub_1000040E8(&unk_100114790);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  sub_10000827C(0, &qword_100114AB0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1000B2DC8(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)temperatureService:(id)a3 didUpdateOn:(BOOL)a4
{
  v4 = self;
  sub_1000B0F6C();
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
  sub_1000B0F6C();

  sub_100008904(v8, &unk_1001153F0);
}

- (void)dimensionManager:(id)a3 didUpdateTemperatureUnit:(id)a4
{
  v4 = self;
  sub_1000B0F6C();
  sub_1000B0684();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3
{
  v3 = self;
  sub_1000B1014();
}

@end