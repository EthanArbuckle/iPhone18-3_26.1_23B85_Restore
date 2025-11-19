@interface ASAuthorizationPublicKeyCredentialPRFRegistrationInput
+ (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)checkForSupport;
- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)init;
- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)initWithInputValues:(id)a3;
@end

@implementation ASAuthorizationPublicKeyCredentialPRFRegistrationInput

+ (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)checkForSupport
{
  v2 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFRegistrationInput) initWithInputValues_];

  return v2;
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)initWithInputValues:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_shouldCheckForSupport) = 1;
  *(&self->super.isa + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_inputValues) = a3;
  v5.receiver = self;
  v5.super_class = ASAuthorizationPublicKeyCredentialPRFRegistrationInput;
  v3 = a3;
  return [(ASAuthorizationPublicKeyCredentialPRFRegistrationInput *)&v5 init];
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end