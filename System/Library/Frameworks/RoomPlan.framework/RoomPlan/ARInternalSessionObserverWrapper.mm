@interface ARInternalSessionObserverWrapper
- (void)replayConfigurationDidFinishReplaying:(id)replaying;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)session:(id)session requestedRunWithConfiguration:(id)configuration options:(unint64_t)options;
- (void)session:(id)session willRunWithConfiguration:(id)configuration;
- (void)sessionWasInterrupted:(id)interrupted;
@end

@implementation ARInternalSessionObserverWrapper

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  sub_23A9D1894(sessionCopy, frameCopy);
}

- (void)replayConfigurationDidFinishReplaying:(id)replaying
{
  replayingCopy = replaying;
  selfCopy = self;
  sub_23A9E19B4();
}

- (void)session:(id)session requestedRunWithConfiguration:(id)configuration options:(unint64_t)options
{
  sessionCopy = session;
  configurationCopy = configuration;
  selfCopy = self;
  sub_23A9E1A6C(sessionCopy);
}

- (void)session:(id)session willRunWithConfiguration:(id)configuration
{
  sessionCopy = session;
  configurationCopy = configuration;
  selfCopy = self;
  sub_23A9E1DBC(configurationCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_23A9E2194(errorCopy);
}

- (void)sessionWasInterrupted:(id)interrupted
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) == 1)
    {
      selfCopy = self;
      sub_23A9CD9A8();
    }

    else
    {
    }
  }
}

@end