@interface OnDemandAudioDiagnosticMonitorInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation OnDemandAudioDiagnosticMonitorInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_100006E1C();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6 = sub_100005F28(v4);

  return v6 & 1;
}

@end