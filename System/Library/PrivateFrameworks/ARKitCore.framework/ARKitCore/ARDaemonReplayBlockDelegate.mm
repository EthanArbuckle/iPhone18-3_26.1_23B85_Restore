@interface ARDaemonReplayBlockDelegate
- (void)replayDidFailWithError:(id)error;
- (void)replayDidStartWithReplayTime:(double)time;
- (void)replayDidStop;
- (void)replayDidUpdateResourceWithKey:(id)key atTime:(double)time;
@end

@implementation ARDaemonReplayBlockDelegate

- (void)replayDidFailWithError:(id)error
{
  errorCopy = error;
  replayFailedBlock = [(ARDaemonReplayBlockDelegate *)self replayFailedBlock];

  if (replayFailedBlock)
  {
    replayFailedBlock2 = [(ARDaemonReplayBlockDelegate *)self replayFailedBlock];
    (replayFailedBlock2)[2](replayFailedBlock2, errorCopy);
  }
}

- (void)replayDidStartWithReplayTime:(double)time
{
  replayStartedBlock = [(ARDaemonReplayBlockDelegate *)self replayStartedBlock];

  if (replayStartedBlock)
  {
    replayStartedBlock2 = [(ARDaemonReplayBlockDelegate *)self replayStartedBlock];
    replayStartedBlock2[2](time);
  }
}

- (void)replayDidUpdateResourceWithKey:(id)key atTime:(double)time
{
  keyCopy = key;
  replayUpdatedBlock = [(ARDaemonReplayBlockDelegate *)self replayUpdatedBlock];

  if (replayUpdatedBlock)
  {
    replayUpdatedBlock2 = [(ARDaemonReplayBlockDelegate *)self replayUpdatedBlock];
    (replayUpdatedBlock2)[2](replayUpdatedBlock2, keyCopy, time);
  }
}

- (void)replayDidStop
{
  replayStoppedBlock = [(ARDaemonReplayBlockDelegate *)self replayStoppedBlock];

  if (replayStoppedBlock)
  {
    replayStoppedBlock2 = [(ARDaemonReplayBlockDelegate *)self replayStoppedBlock];
    replayStoppedBlock2[2]();
  }
}

@end