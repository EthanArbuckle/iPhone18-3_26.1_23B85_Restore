@interface SACFFlowCompleted
- (int64_t)resultCallbackCode;
@end

@implementation SACFFlowCompleted

- (int64_t)resultCallbackCode
{
  result = [(SACFFlowCompleted *)self status];
  if (result == SACFSuccessErrorCode)
  {
    return 0;
  }

  return result;
}

@end