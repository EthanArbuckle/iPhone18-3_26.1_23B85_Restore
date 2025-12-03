@interface VLFScanningStateCameraMotionMonitor
- (void)session:(id)session cameraDidChangeTrackingState:(id)state;
@end

@implementation VLFScanningStateCameraMotionMonitor

- (void)session:(id)session cameraDidChangeTrackingState:(id)state
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10056F504;
  v6[3] = &unk_101661A90;
  stateCopy = state;
  selfCopy = self;
  v5 = stateCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

@end