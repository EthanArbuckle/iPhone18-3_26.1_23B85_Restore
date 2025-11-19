@interface AKAppleIDPasskeyVerificationController
- (AKAppleIDPasskeyVerificationController)init;
- (AKAppleIDPasskeyVerificationController)initWithPasskeyValidator:(id)a3 verificationProvider:(id)a4;
@end

@implementation AKAppleIDPasskeyVerificationController

- (AKAppleIDPasskeyVerificationController)initWithPasskeyValidator:(id)a3 verificationProvider:(id)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyVerificationController_passkeyValidator) = a3;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyVerificationController_verificationProvider) = a4;
  v9.receiver = self;
  v9.super_class = ObjectType;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(AKAppleIDPasskeyVerificationController *)&v9 init];
}

- (AKAppleIDPasskeyVerificationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end