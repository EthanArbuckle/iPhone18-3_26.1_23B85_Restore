@interface OnDemandAudioDiagnosticMonitorInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation OnDemandAudioDiagnosticMonitorInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  if (parameters)
  {
    v4 = sub_100006E1C();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_100005F28(v4);

  return v6 & 1;
}

@end