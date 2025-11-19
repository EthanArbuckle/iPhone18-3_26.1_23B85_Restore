@interface AKAppleIDPasskeyUnenrollController
- (AKAppleIDPasskeyUnenrollController)init;
- (AKAppleIDPasskeyUnenrollController)initWithPasskeyValidator:(id)a3 unenrollProvider:(id)a4;
@end

@implementation AKAppleIDPasskeyUnenrollController

- (AKAppleIDPasskeyUnenrollController)initWithPasskeyValidator:(id)a3 unenrollProvider:(id)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyUnenrollController_passkeyValidator) = a3;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyUnenrollController_unenrollProvider) = a4;
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