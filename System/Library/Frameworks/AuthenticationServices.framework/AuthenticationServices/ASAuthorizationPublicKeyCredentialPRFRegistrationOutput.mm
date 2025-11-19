@interface ASAuthorizationPublicKeyCredentialPRFRegistrationOutput
- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)init;
- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)initWithIsSupported:(BOOL)a3 first:(id)a4 second:(id)a5;
- (BOOL)isSupported;
- (void)setIsSupported:(BOOL)a3;
@end

@implementation ASAuthorizationPublicKeyCredentialPRFRegistrationOutput

- (BOOL)isSupported
{
  v3 = OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_isSupported;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSupported:(BOOL)a3
{
  v5 = OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_isSupported;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)initWithIsSupported:(BOOL)a3 first:(id)a4 second:(id)a5
{
  v6 = a4;
  if (!a4)
  {
    v15 = a5;
    v11 = 0xF000000000000000;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    v14 = 0xF000000000000000;
    goto LABEL_6;
  }

  v8 = a5;
  v9 = v6;
  v6 = sub_1B1D7B4EC();
  v11 = v10;

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_1B1D7B4EC();
  v14 = v13;

LABEL_6:
  v16 = sub_1B1D11068(a3, v6, v11, v12, v14);
  sub_1B1C91AE4(v12, v14);
  sub_1B1C91AE4(v6, v11);
  return v16;
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationOutput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end