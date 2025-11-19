@interface StopwatchStandbyCompressedController
- (void)didPauseLapTimer;
- (void)didResumeLapTimer;
- (void)didUpdateCurrentInterval:(double)a3 adjustedCurrentInterval:(double)a4 totalInterval:(double)a5 adjustedTotalInterval:(double)a6 isStopwatchRunning:(BOOL)a7 isStopwatchStopped:(BOOL)a8;
@end

@implementation StopwatchStandbyCompressedController

- (void)didUpdateCurrentInterval:(double)a3 adjustedCurrentInterval:(double)a4 totalInterval:(double)a5 adjustedTotalInterval:(double)a6 isStopwatchRunning:(BOOL)a7 isStopwatchStopped:(BOOL)a8
{
  v14 = self;
  sub_100080E9C(a7, a8, a3, a4, a5, a6);
}

- (void)didPauseLapTimer
{
  v2 = self;
  sub_100081060();
}

- (void)didResumeLapTimer
{
  v2 = self;
  sub_100081134();
}

@end