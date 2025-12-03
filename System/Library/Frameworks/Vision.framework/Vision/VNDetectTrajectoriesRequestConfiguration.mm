@interface VNDetectTrajectoriesRequestConfiguration
- (VNDetectTrajectoriesRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTargetFrameTime:(id *)time;
@end

@implementation VNDetectTrajectoriesRequestConfiguration

- (void)setTargetFrameTime:(id *)time
{
  var3 = time->var3;
  *&self->_targetFrameTime.value = *&time->var0;
  self->_targetFrameTime.epoch = var3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = VNDetectTrajectoriesRequestConfiguration;
  v4 = [(VNStatefulRequestConfiguration *)&v11 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setTrajectoryLength:self->_trajectoryLength];
    *&v6 = self->_objectMinimumNormalizedRadius;
    [v5 setObjectMinimumNormalizedRadius:v6];
    *&v7 = self->_objectMaximumNormalizedRadius;
    [v5 setObjectMaximumNormalizedRadius:v7];
    v9 = *&self->_targetFrameTime.value;
    epoch = self->_targetFrameTime.epoch;
    [v5 setTargetFrameTime:&v9];
  }

  return v5;
}

- (VNDetectTrajectoriesRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNDetectTrajectoriesRequestConfiguration;
  result = [(VNStatefulRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_objectMinimumNormalizedRadius = 0.0;
    result->_objectMaximumNormalizedRadius = 1.0;
  }

  return result;
}

@end