@interface AutoBugCaptureCallbackDelegate
- (void)reporterConnectionInterrupted:(id)a3;
- (void)reporterConnectionInvalidated:(id)a3;
@end

@implementation AutoBugCaptureCallbackDelegate

- (void)reporterConnectionInterrupted:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_192C061EC(a3);
}

- (void)reporterConnectionInvalidated:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_192C06798(a3);
}

@end