@interface COSAppleIDServiceState
- (COSAppleIDServiceState)initWithServiceType:(int64_t)type;
@end

@implementation COSAppleIDServiceState

- (COSAppleIDServiceState)initWithServiceType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = COSAppleIDServiceState;
  result = [(COSAppleIDServiceState *)&v5 init];
  if (result)
  {
    result->_serviceType = type;
    result->_waitingForSilentSigninToComplete = 1;
  }

  return result;
}

@end