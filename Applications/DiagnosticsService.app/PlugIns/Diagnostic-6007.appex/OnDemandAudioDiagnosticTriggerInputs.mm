@interface OnDemandAudioDiagnosticTriggerInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation OnDemandAudioDiagnosticTriggerInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  if (parameters)
  {
    v4 = sub_100003C4C();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_100003498(v4);

  return v6 & 1;
}

@end