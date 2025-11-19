@interface ARDaemonReplayBlockDelegate
- (void)replayDidFailWithError:(id)a3;
- (void)replayDidStartWithReplayTime:(double)a3;
- (void)replayDidStop;
- (void)replayDidUpdateResourceWithKey:(id)a3 atTime:(double)a4;
@end

@implementation ARDaemonReplayBlockDelegate

- (void)replayDidFailWithError:(id)a3
{
  v6 = a3;
  v4 = [(ARDaemonReplayBlockDelegate *)self replayFailedBlock];

  if (v4)
  {
    v5 = [(ARDaemonReplayBlockDelegate *)self replayFailedBlock];
    (v5)[2](v5, v6);
  }
}

- (void)replayDidStartWithReplayTime:(double)a3
{
  v5 = [(ARDaemonReplayBlockDelegate *)self replayStartedBlock];

  if (v5)
  {
    v6 = [(ARDaemonReplayBlockDelegate *)self replayStartedBlock];
    v6[2](a3);
  }
}

- (void)replayDidUpdateResourceWithKey:(id)a3 atTime:(double)a4
{
  v8 = a3;
  v6 = [(ARDaemonReplayBlockDelegate *)self replayUpdatedBlock];

  if (v6)
  {
    v7 = [(ARDaemonReplayBlockDelegate *)self replayUpdatedBlock];
    (v7)[2](v7, v8, a4);
  }
}

- (void)replayDidStop
{
  v3 = [(ARDaemonReplayBlockDelegate *)self replayStoppedBlock];

  if (v3)
  {
    v4 = [(ARDaemonReplayBlockDelegate *)self replayStoppedBlock];
    v4[2]();
  }
}

@end