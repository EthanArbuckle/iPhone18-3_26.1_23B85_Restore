@interface ClimateSteeringWheelButton
- (_TtC7Climate26ClimateSteeringWheelButton)init;
- (void)steeringWheelHeatingCoolingService:(id)a3 didUpdateAutoMode:(BOOL)a4;
- (void)steeringWheelHeatingCoolingService:(id)a3 didUpdateHeatingCoolingLevel:(int)a4;
@end

@implementation ClimateSteeringWheelButton

- (_TtC7Climate26ClimateSteeringWheelButton)init
{
  *&self->super._TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_currentValue] = 0;
  v2 = OBJC_IVAR____TtC7Climate26ClimateSteeringWheelButton_autoModeGlyph;
  *&self->super._TtC7Climate13ClimateButton_opaque[v2] = [objc_allocWithZone(UIImageView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)steeringWheelHeatingCoolingService:(id)a3 didUpdateHeatingCoolingLevel:(int)a4
{
  v4 = self;
  sub_10005C4F0();
}

- (void)steeringWheelHeatingCoolingService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v4 = self;
  sub_10005C4F0();
}

@end