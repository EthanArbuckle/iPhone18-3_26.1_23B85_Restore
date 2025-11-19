@interface ClimateTargetTemperatureZoneSelectionButton
- (BOOL)isHighlighted;
- (_TtC7Climate43ClimateTargetTemperatureZoneSelectionButton)init;
- (void)dimensionManager:(id)a3 didUpdateTemperatureUnit:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)temperatureService:(id)a3 didUpdateCurrentTemperature:(id)a4;
- (void)temperatureService:(id)a3 didUpdateTargetTemperature:(id)a4;
- (void)zonesSyncedService:(void *)a1 didUpdateOn:;
@end

@implementation ClimateTargetTemperatureZoneSelectionButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateTargetTemperatureZoneSelectionButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateTargetTemperatureZoneSelectionButton();
  v4 = v8.receiver;
  [(ClimateButton *)&v8 setHighlighted:v3];
  v5 = *&v4[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView];
  v6 = [v4 isHighlighted];
  v7 = 0.2;
  if (!v6)
  {
    v7 = 1.0;
  }

  [v5 setAlpha:v7];
}

- (_TtC7Climate43ClimateTargetTemperatureZoneSelectionButton)init
{
  self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_isOn] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)temperatureService:(id)a3 didUpdateTargetTemperature:(id)a4
{
  v5 = sub_1000040E8(&unk_100114790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000827C(0, &qword_100114AB0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10000BF88();

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
  sub_10000BF88();

  sub_10000D894(v8);
}

- (void)zonesSyncedService:(void *)a1 didUpdateOn:
{
  v1 = a1;
  sub_10000BF88();
}

- (void)dimensionManager:(id)a3 didUpdateTemperatureUnit:(id)a4
{
  v4 = self;
  sub_10000BF88();
}

@end