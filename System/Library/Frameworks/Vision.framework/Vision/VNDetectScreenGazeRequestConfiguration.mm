@interface VNDetectScreenGazeRequestConfiguration
- (VNDetectScreenGazeRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTemporalSmoothingFrameCount:(int64_t)count;
@end

@implementation VNDetectScreenGazeRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNDetectScreenGazeRequestConfiguration;
  v4 = [(VNStatefulRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setTemporalSmoothingFrameCount:self->_temporalSmoothingFrameCount];
    [v5 setScreenSize:self->_screenSize];
  }

  return v5;
}

- (VNDetectScreenGazeRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNDetectScreenGazeRequestConfiguration;
  result = [(VNStatefulRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_temporalSmoothingFrameCount = 1;
    result->_screenSize = 1;
  }

  return result;
}

- (void)setTemporalSmoothingFrameCount:(int64_t)count
{
  if (count >= 1)
  {
    self->_temporalSmoothingFrameCount = count;
  }
}

@end