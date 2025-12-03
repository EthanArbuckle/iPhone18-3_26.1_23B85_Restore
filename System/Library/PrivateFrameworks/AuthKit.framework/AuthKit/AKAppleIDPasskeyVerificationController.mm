@interface AKAppleIDPasskeyVerificationController
- (AKAppleIDPasskeyVerificationController)init;
- (AKAppleIDPasskeyVerificationController)initWithPasskeyValidator:(id)validator verificationProvider:(id)provider;
@end

@implementation AKAppleIDPasskeyVerificationController

- (AKAppleIDPasskeyVerificationController)initWithPasskeyValidator:(id)validator verificationProvider:(id)provider
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyVerificationController_passkeyValidator) = validator;
  *(&self->super.isa + OBJC_IVAR___AKAppleIDPasskeyVerificationController_verificationProvider) = provider;
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