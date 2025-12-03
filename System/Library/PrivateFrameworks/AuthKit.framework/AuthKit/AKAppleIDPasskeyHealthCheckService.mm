@interface AKAppleIDPasskeyHealthCheckService
+ (AKAppleIDPasskeyHealthCheckService)sharedService;
- (AKAppleIDPasskeyHealthCheckService)init;
- (void)start;
@end

@implementation AKAppleIDPasskeyHealthCheckService

+ (AKAppleIDPasskeyHealthCheckService)sharedService
{
  if (qword_100371C00 != -1)
  {
    swift_once();
  }

  v3 = qword_1003776D8;

  return v3;
}

- (AKAppleIDPasskeyHealthCheckService)init
{
  sharedInstance = [objc_opt_self() sharedInstance];
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyHealthCheckService_accountManager) = sharedInstance;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppleIDPasskeyHealthCheckService();
  return [(AKAppleIDPasskeyHealthCheckService *)&v5 init];
}

- (void)start
{
  selfCopy = self;
  sub_100249D4C();
}

@end