@interface AutoBugCaptureReporterContinuationDelegate
- (void)reporterConnectionInterrupted:(id)a3;
- (void)reporterConnectionInvalidated:(id)a3;
@end

@implementation AutoBugCaptureReporterContinuationDelegate

- (void)reporterConnectionInterrupted:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_192C04B0C(a3);
}

- (void)reporterConnectionInvalidated:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_192C05358(a3);
}

@end