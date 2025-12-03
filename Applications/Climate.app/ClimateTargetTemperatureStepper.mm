@interface ClimateTargetTemperatureStepper
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)dimensionManager:(id)manager didUpdateTemperatureUnit:(id)unit;
- (void)layoutSubviews;
- (void)temperatureService:(id)service didUpdateTargetTemperature:(id)temperature;
@end

@implementation ClimateTargetTemperatureStepper

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10002DD2C();
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
  sub_10002E4B0(serviceCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ClimateTargetTemperatureStepper();
  v7 = v14.receiver;
  eventCopy = event;
  v9 = [(ClimateTargetTemperatureStepper *)&v14 hitTest:eventCopy withEvent:x, y];
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

- (void)dimensionManager:(id)manager didUpdateTemperatureUnit:(id)unit
{
  managerCopy = manager;
  unitCopy = unit;
  selfCopy = self;
  sub_100030100();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter
{
  selfCopy = self;
  sub_10002EF9C();
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_10002F6D4(contextCopy, coordinatorCopy);
}

@end