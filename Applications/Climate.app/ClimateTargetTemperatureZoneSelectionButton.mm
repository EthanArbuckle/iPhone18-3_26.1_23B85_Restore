@interface ClimateTargetTemperatureZoneSelectionButton
- (BOOL)isHighlighted;
- (_TtC7Climate43ClimateTargetTemperatureZoneSelectionButton)init;
- (void)dimensionManager:(id)manager didUpdateTemperatureUnit:(id)unit;
- (void)setHighlighted:(BOOL)highlighted;
- (void)temperatureService:(id)service didUpdateCurrentTemperature:(id)temperature;
- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature;
- (void)zonesSyncedService:(void *)service didUpdateOn:;
@end

@implementation ClimateTargetTemperatureZoneSelectionButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateTargetTemperatureZoneSelectionButton();
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateTargetTemperatureZoneSelectionButton();
  v4 = v8.receiver;
  [(ClimateButton *)&v8 setHighlighted:highlightedCopy];
  v5 = *&v4[OBJC_IVAR____TtC7Climate43ClimateTargetTemperatureZoneSelectionButton_labelsView];
  isHighlighted = [v4 isHighlighted];
  v7 = 0.2;
  if (!isHighlighted)
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

- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature
{
  v5 = sub_1000040E8(&unk_100114790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000827C(0, &qword_100114AB0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10000BF88();

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
  sub_10000BF88();

  sub_10000D894(v8);
}

- (void)zonesSyncedService:(void *)service didUpdateOn:
{
  serviceCopy = service;
  sub_10000BF88();
}

- (void)dimensionManager:(id)manager didUpdateTemperatureUnit:(id)unit
{
  selfCopy = self;
  sub_10000BF88();
}

@end