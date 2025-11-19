@interface VNTrajectoryRequestState
- (VNTrajectoryRequestState)init;
@end

@implementation VNTrajectoryRequestState

- (VNTrajectoryRequestState)init
{
  self->_targetImageDimensionForContourDetection = 320;
  v3.receiver = self;
  v3.super_class = VNTrajectoryRequestState;
  return [(VNTrajectoryRequestState *)&v3 init];
}

@end