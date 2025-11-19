@interface AXSettings.MotionCues
- (BOOL)motionCuesIncreasedDensityEnabled;
- (BOOL)motionCuesIncreasedSizeEnabled;
- (float)motionCuesDotDensity;
- (float)motionCuesDotSize;
- (void)setMotionCuesDotDensity:(float)a3;
- (void)setMotionCuesDotSize:(float)a3;
- (void)setMotionCuesIncreasedDensityEnabled:(BOOL)a3;
- (void)setMotionCuesIncreasedSizeEnabled:(BOOL)a3;
@end

@implementation AXSettings.MotionCues

- (float)motionCuesDotSize
{
  v2 = self;
  v3 = AXSettings.MotionCues.dotSize.getter();

  return v3;
}

- (void)setMotionCuesDotSize:(float)a3
{
  v4 = self;
  AXSettings.MotionCues.dotSize.setter(a3);
}

- (BOOL)motionCuesIncreasedSizeEnabled
{
  v2 = self;
  v3 = AXSettings.MotionCues.increasedSizeEnabled.getter();

  return v3;
}

- (void)setMotionCuesIncreasedSizeEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.MotionCues.setIncreasedSizeEnabled(_:)(a3);
}

- (float)motionCuesDotDensity
{
  v2 = self;
  v3 = AXSettings.MotionCues.dotDensity.getter();

  return v3;
}

- (void)setMotionCuesDotDensity:(float)a3
{
  v4 = self;
  AXSettings.MotionCues.dotDensity.setter(a3);
}

- (BOOL)motionCuesIncreasedDensityEnabled
{
  v2 = self;
  v3 = AXSettings.MotionCues.increasedDensityEnabled.getter();

  return v3;
}

- (void)setMotionCuesIncreasedDensityEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.MotionCues.setIncreasedDensityEnabled(_:)(a3);
}

@end