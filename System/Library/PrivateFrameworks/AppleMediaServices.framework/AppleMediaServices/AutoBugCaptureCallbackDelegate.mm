@interface AutoBugCaptureCallbackDelegate
- (void)reporterConnectionInterrupted:(id)interrupted;
- (void)reporterConnectionInvalidated:(id)invalidated;
@end

@implementation AutoBugCaptureCallbackDelegate

- (void)reporterConnectionInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  selfCopy = self;
  sub_192C061EC(interrupted);
}

- (void)reporterConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  selfCopy = self;
  sub_192C06798(invalidated);
}

@end