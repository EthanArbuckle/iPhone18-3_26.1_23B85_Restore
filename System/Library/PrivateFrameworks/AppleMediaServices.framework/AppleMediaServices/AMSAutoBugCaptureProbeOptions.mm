@interface AMSAutoBugCaptureProbeOptions
- (AMSAutoBugCaptureProbeOptions)initWithEnabled:(BOOL)enabled duration:(double)duration target:(id)target;
@end

@implementation AMSAutoBugCaptureProbeOptions

- (AMSAutoBugCaptureProbeOptions)initWithEnabled:(BOOL)enabled duration:(double)duration target:(id)target
{
  if (target)
  {
    sub_192F967CC();
  }

  return DiagnosticActionOptions.ProbeOptions.init(enabled:duration:target:)();
}

@end