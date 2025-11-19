@interface AKAppleIDPasskeyStatusController
- (AKAppleIDPasskeyStatusController)init;
- (AKAppleIDPasskeyStatusController)initWithAccountManager:(id)a3;
@end

@implementation AKAppleIDPasskeyStatusController

- (AKAppleIDPasskeyStatusController)initWithAccountManager:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyStatusController_accountManager) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(AKAppleIDPasskeyStatusController *)&v8 init];
}

- (AKAppleIDPasskeyStatusController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end