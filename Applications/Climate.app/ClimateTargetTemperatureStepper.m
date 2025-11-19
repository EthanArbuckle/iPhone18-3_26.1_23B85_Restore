@interface ClimateTargetTemperatureStepper
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)dimensionManager:(id)a3 didUpdateTemperatureUnit:(id)a4;
- (void)layoutSubviews;
- (void)temperatureService:(id)a3 didUpdateTargetTemperature:(id)a4;
@end

@implementation ClimateTargetTemperatureStepper

- (void)layoutSubviews
{
  v2 = self;
  sub_10002DD2C();
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
  sub_10002E4B0(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ClimateTargetTemperatureStepper();
  v7 = v14.receiver;
  v8 = a4;
  v9 = [(ClimateTargetTemperatureStepper *)&v14 hitTest:v8 withEvent:x, y];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_temperatureButton;
    [*&v7[OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureStepper_temperatureButton] frame];
    v16.x = x;
    v16.y = y;
    v12 = CGRectContainsPoint(v17, v16);

    if (v12)
    {
      v10 = *&v7[v11];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)dimensionManager:(id)a3 didUpdateTemperatureUnit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100030100();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3
{
  v3 = self;
  sub_10002EF9C();
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10002F6D4(v6, v7);
}

@end