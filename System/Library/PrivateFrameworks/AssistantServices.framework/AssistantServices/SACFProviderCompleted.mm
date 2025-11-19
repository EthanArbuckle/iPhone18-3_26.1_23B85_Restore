@interface SACFProviderCompleted
- (int64_t)resultCallbackCode;
@end

@implementation SACFProviderCompleted

- (int64_t)resultCallbackCode
{
  result = [(SACFProviderCompleted *)self status];
  if (result == SACFSuccessErrorCode)
  {
    return 0;
  }

  return result;
}

@end