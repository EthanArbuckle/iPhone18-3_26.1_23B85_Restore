@interface AKAppleIDPasskeyUnenrollController
- (AKAppleIDPasskeyUnenrollController)init;
- (AKAppleIDPasskeyUnenrollController)initWithPasskeyValidator:(id)validator unenrollProvider:(id)provider;
@end

@implementation AKAppleIDPasskeyUnenrollController

- (AKAppleIDPasskeyUnenrollController)initWithPasskeyValidator:(id)validator unenrollProvider:(id)provider
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyUnenrollController_passkeyValidator) = validator;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyUnenrollController_unenrollProvider) = provider;
  v9.receiver = self;
  v9.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(AKAppleIDPasskeyUnenrollController *)&v9 init];
}

- (AKAppleIDPasskeyUnenrollController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end