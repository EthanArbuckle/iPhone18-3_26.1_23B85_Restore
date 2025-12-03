@interface AKAppleIDPasskeyStatusController
- (AKAppleIDPasskeyStatusController)init;
- (AKAppleIDPasskeyStatusController)initWithAccountManager:(id)manager;
@end

@implementation AKAppleIDPasskeyStatusController

- (AKAppleIDPasskeyStatusController)initWithAccountManager:(id)manager
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyStatusController_accountManager) = manager;
  v8.receiver = self;
  v8.super_class = ObjectType;
  managerCopy = manager;
  return [(AKAppleIDPasskeyStatusController *)&v8 init];
}

- (AKAppleIDPasskeyStatusController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end