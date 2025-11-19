@interface ARInternalSessionObserverWrapper
- (void)replayConfigurationDidFinishReplaying:(id)a3;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)session:(id)a3 requestedRunWithConfiguration:(id)a4 options:(unint64_t)a5;
- (void)session:(id)a3 willRunWithConfiguration:(id)a4;
- (void)sessionWasInterrupted:(id)a3;
@end

@implementation ARInternalSessionObserverWrapper

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23A9D1894(v6, v7);
}

- (void)replayConfigurationDidFinishReplaying:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23A9E19B4();
}

- (void)session:(id)a3 requestedRunWithConfiguration:(id)a4 options:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_23A9E1A6C(v7);
}

- (void)session:(id)a3 willRunWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23A9E1DBC(v7);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_23A9E2194(v8);
}

- (void)sessionWasInterrupted:(id)a3
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) == 1)
    {
      v5 = self;
      sub_23A9CD9A8();
    }

    else
    {
    }
  }
}

@end