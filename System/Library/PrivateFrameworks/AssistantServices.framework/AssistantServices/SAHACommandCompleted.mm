@interface SAHACommandCompleted
- (int64_t)resultCallbackCode;
@end

@implementation SAHACommandCompleted

- (int64_t)resultCallbackCode
{
  commandOutcome = [(SAHACommandCompleted *)self commandOutcome];
  v3 = [commandOutcome isEqualToString:SAHACommandOutcomeCOMMAND_SUCCESSValue];

  return v3 - 1;
}

@end