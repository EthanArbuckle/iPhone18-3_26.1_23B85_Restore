@interface AXSettings.MotionCues
- (BOOL)motionCuesIncreasedDensityEnabled;
- (BOOL)motionCuesIncreasedSizeEnabled;
- (float)motionCuesDotDensity;
- (float)motionCuesDotSize;
- (void)setMotionCuesDotDensity:(float)density;
- (void)setMotionCuesDotSize:(float)size;
- (void)setMotionCuesIncreasedDensityEnabled:(BOOL)enabled;
- (void)setMotionCuesIncreasedSizeEnabled:(BOOL)enabled;
@end

@implementation AXSettings.MotionCues

- (float)motionCuesDotSize
{
  selfCopy = self;
  v3 = AXSettings.MotionCues.dotSize.getter();

  return v3;
}

- (void)setMotionCuesDotSize:(float)size
{
  selfCopy = self;
  AXSettings.MotionCues.dotSize.setter(size);
}

- (BOOL)motionCuesIncreasedSizeEnabled
{
  selfCopy = self;
  v3 = AXSettings.MotionCues.increasedSizeEnabled.getter();

  return v3;
}

- (void)setMotionCuesIncreasedSizeEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.MotionCues.setIncreasedSizeEnabled(_:)(enabled);
}

- (float)motionCuesDotDensity
{
  selfCopy = self;
  v3 = AXSettings.MotionCues.dotDensity.getter();

  return v3;
}

- (void)setMotionCuesDotDensity:(float)density
{
  selfCopy = self;
  AXSettings.MotionCues.dotDensity.setter(density);
}

- (BOOL)motionCuesIncreasedDensityEnabled
{
  selfCopy = self;
  v3 = AXSettings.MotionCues.increasedDensityEnabled.getter();

  return v3;
}

- (void)setMotionCuesIncreasedDensityEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.MotionCues.setIncreasedDensityEnabled(_:)(enabled);
}

@end