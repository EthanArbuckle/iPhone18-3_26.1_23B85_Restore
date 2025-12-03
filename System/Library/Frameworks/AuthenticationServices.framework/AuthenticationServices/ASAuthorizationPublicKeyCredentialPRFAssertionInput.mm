@interface ASAuthorizationPublicKeyCredentialPRFAssertionInput
- (ASAuthorizationPublicKeyCredentialPRFAssertionInput)init;
- (ASAuthorizationPublicKeyCredentialPRFAssertionInput)initWithInputValues:(id)values perCredentialInputValues:(id)inputValues;
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

- (ASAuthorizationPublicKeyCredentialPRFAssertionInput)initWithInputValues:(id)values perCredentialInputValues:(id)inputValues
{
  if (inputValues)
  {
    type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionInputValues(self);
    sub_1B1D10564();
    v6 = sub_1B1D7BDDC();
  }

  else
  {
    v6 = 0;
  }

  *(self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_inputValues) = values;
  *(self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_perCredentialInputValues) = v6;
  v9.receiver = self;
  v9.super_class = ASAuthorizationPublicKeyCredentialPRFAssertionInput;
  valuesCopy = values;
  return [(ASAuthorizationPublicKeyCredentialPRFAssertionInput *)&v9 init];
}

- (ASAuthorizationPublicKeyCredentialPRFAssertionInput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end