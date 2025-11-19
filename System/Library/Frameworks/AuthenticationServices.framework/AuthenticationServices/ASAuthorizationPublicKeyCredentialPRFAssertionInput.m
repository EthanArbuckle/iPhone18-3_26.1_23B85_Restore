@interface ASAuthorizationPublicKeyCredentialPRFAssertionInput
- (ASAuthorizationPublicKeyCredentialPRFAssertionInput)init;
- (ASAuthorizationPublicKeyCredentialPRFAssertionInput)initWithInputValues:(id)a3 perCredentialInputValues:(id)a4;
- (NSDictionary)perCredentialInputValues;
@end

@implementation ASAuthorizationPublicKeyCredentialPRFAssertionInput

- (NSDictionary)perCredentialInputValues
{
  if (*(self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_perCredentialInputValues))
  {
    type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionInputValues(self);
    sub_1B1D10564();

    v2 = sub_1B1D7BDCC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (ASAuthorizationPublicKeyCredentialPRFAssertionInput)initWithInputValues:(id)a3 perCredentialInputValues:(id)a4
{
  if (a4)
  {
    type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionInputValues(self);
    sub_1B1D10564();
    v6 = sub_1B1D7BDDC();
  }

  else
  {
    v6 = 0;
  }

  *(self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_inputValues) = a3;
  *(self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_perCredentialInputValues) = v6;
  v9.receiver = self;
  v9.super_class = ASAuthorizationPublicKeyCredentialPRFAssertionInput;
  v7 = a3;
  return [(ASAuthorizationPublicKeyCredentialPRFAssertionInput *)&v9 init];
}

- (ASAuthorizationPublicKeyCredentialPRFAssertionInput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end