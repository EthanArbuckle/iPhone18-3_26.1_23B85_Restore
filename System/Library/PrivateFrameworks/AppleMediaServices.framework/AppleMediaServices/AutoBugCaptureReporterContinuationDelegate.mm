@interface AutoBugCaptureReporterContinuationDelegate
- (void)reporterConnectionInterrupted:(id)interrupted;
- (void)reporterConnectionInvalidated:(id)invalidated;
@end

@implementation AutoBugCaptureReporterContinuationDelegate

- (void)reporterConnectionInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  selfCopy = self;
  sub_192C04B0C(interrupted);
}

- (void)reporterConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  selfCopy = self;
  sub_192C05358(invalidated);
}

@end