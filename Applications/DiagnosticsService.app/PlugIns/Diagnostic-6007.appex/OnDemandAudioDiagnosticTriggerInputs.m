@interface OnDemandAudioDiagnosticTriggerInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation OnDemandAudioDiagnosticTriggerInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_100003C4C();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6 = sub_100003498(v4);

  return v6 & 1;
}

@end