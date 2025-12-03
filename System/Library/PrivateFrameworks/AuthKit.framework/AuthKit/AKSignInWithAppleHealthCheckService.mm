@interface AKSignInWithAppleHealthCheckService
+ (AKSignInWithAppleHealthCheckService)sharedService;
- (void)registerService;
@end

@implementation AKSignInWithAppleHealthCheckService

+ (AKSignInWithAppleHealthCheckService)sharedService
{
  if (qword_100371BB8 != -1)
  {
    swift_once();
  }

  v3 = qword_100377658;

  return v3;
}

- (void)registerService
{
  selfCopy = self;
  sub_1001E6408();
}

@end