@interface ASAuthorizationPublicKeyCredentialPRFRegistrationInput
+ (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)checkForSupport;
- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)init;
- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)initWithInputValues:(id)values;
@end

@implementation ASAuthorizationPublicKeyCredentialPRFRegistrationInput

+ (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)checkForSupport
{
  initWithInputValues_ = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFRegistrationInput) initWithInputValues_];

  return initWithInputValues_;
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)initWithInputValues:(id)values
{
  *(&self->super.isa + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_shouldCheckForSupport) = 1;
  *(&self->super.isa + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_inputValues) = values;
  v5.receiver = self;
  v5.super_class = ASAuthorizationPublicKeyCredentialPRFRegistrationInput;
  valuesCopy = values;
  return [(ASAuthorizationPublicKeyCredentialPRFRegistrationInput *)&v5 init];
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end