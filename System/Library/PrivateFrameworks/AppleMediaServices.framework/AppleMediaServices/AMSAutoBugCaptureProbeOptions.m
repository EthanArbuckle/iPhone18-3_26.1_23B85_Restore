@interface AMSAutoBugCaptureProbeOptions
- (AMSAutoBugCaptureProbeOptions)initWithEnabled:(BOOL)a3 duration:(double)a4 target:(id)a5;
@end

@implementation AMSAutoBugCaptureProbeOptions

- (AMSAutoBugCaptureProbeOptions)initWithEnabled:(BOOL)a3 duration:(double)a4 target:(id)a5
{
  if (a5)
  {
    sub_192F967CC();
  }

  return DiagnosticActionOptions.ProbeOptions.init(enabled:duration:target:)();
}

@end