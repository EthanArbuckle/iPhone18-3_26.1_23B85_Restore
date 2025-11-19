@interface VNDetectScreenGazeRequestConfiguration
- (VNDetectScreenGazeRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setTemporalSmoothingFrameCount:(int64_t)a3;
@end

@implementation VNDetectScreenGazeRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNDetectScreenGazeRequestConfiguration;
  v4 = [(VNStatefulRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setTemporalSmoothingFrameCount:self->_temporalSmoothingFrameCount];
    [v5 setScreenSize:self->_screenSize];
  }

  return v5;
}

- (VNDetectScreenGazeRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNDetectScreenGazeRequestConfiguration;
  result = [(VNStatefulRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_temporalSmoothingFrameCount = 1;
    result->_screenSize = 1;
  }

  return result;
}

- (void)setTemporalSmoothingFrameCount:(int64_t)a3
{
  if (a3 >= 1)
  {
    self->_temporalSmoothingFrameCount = a3;
  }
}

@end