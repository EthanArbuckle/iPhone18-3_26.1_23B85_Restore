@interface SAHACommandCompleted
- (int64_t)resultCallbackCode;
@end

@implementation SAHACommandCompleted

- (int64_t)resultCallbackCode
{
  v2 = [(SAHACommandCompleted *)self commandOutcome];
  v3 = [v2 isEqualToString:SAHACommandOutcomeCOMMAND_SUCCESSValue];

  return v3 - 1;
}

@end