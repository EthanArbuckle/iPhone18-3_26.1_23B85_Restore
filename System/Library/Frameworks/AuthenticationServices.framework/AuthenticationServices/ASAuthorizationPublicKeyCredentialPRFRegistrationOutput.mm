@interface ASAuthorizationPublicKeyCredentialPRFRegistrationOutput
- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)init;
- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)initWithIsSupported:(BOOL)supported first:(id)first second:(id)second;
- (BOOL)isSupported;
- (void)setIsSupported:(BOOL)supported;
@end

@implementation ASAuthorizationPublicKeyCredentialPRFRegistrationOutput

- (BOOL)isSupported
{
  v3 = OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_isSupported;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSupported:(BOOL)supported
{
  v5 = OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_isSupported;
  swift_beginAccess();
  *(self + v5) = supported;
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)initWithIsSupported:(BOOL)supported first:(id)first second:(id)second
{
  firstCopy = first;
  if (!first)
  {
    secondCopy = second;
    v11 = 0xF000000000000000;
    if (second)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    v14 = 0xF000000000000000;
    goto LABEL_6;
  }

  secondCopy2 = second;
  v9 = firstCopy;
  firstCopy = sub_1B1D7B4EC();
  v11 = v10;

  if (!second)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_1B1D7B4EC();
  v14 = v13;

LABEL_6:
  v16 = sub_1B1D11068(supported, firstCopy, v11, v12, v14);
  sub_1B1C91AE4(v12, v14);
  sub_1B1C91AE4(firstCopy, v11);
  return v16;
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end