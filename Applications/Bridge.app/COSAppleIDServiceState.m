@interface COSAppleIDServiceState
- (COSAppleIDServiceState)initWithServiceType:(int64_t)a3;
@end

@implementation COSAppleIDServiceState

- (COSAppleIDServiceState)initWithServiceType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = COSAppleIDServiceState;
  result = [(COSAppleIDServiceState *)&v5 init];
  if (result)
  {
    result->_serviceType = a3;
    result->_waitingForSilentSigninToComplete = 1;
  }

  return result;
}

@end