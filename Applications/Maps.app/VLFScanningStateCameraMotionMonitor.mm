@interface VLFScanningStateCameraMotionMonitor
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
@end

@implementation VLFScanningStateCameraMotionMonitor

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10056F504;
  v6[3] = &unk_101661A90;
  v7 = a4;
  v8 = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

@end