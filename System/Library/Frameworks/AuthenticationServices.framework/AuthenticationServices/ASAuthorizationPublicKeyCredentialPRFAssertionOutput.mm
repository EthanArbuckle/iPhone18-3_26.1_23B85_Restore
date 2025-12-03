@interface ASAuthorizationPublicKeyCredentialPRFAssertionOutput
- (ASAuthorizationPublicKeyCredentialPRFAssertionOutput)init;
- (ASAuthorizationPublicKeyCredentialPRFAssertionOutput)initWithFirst:(id)first second:(id)second;
- (NSData)first;
- (void)setFirst:(id)first;
@end

@implementation ASAuthorizationPublicKeyCredentialPRFAssertionOutput

- (NSData)first
{
  v2 = (self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionOutput_first);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_1B1CE111C(v4, v3);
  v5 = sub_1B1D7B4DC();
  sub_1B1CDEFDC(v4, v3);

  return v5;
}

- (void)setFirst:(id)first
{
  firstCopy = first;
  selfCopy = self;
  v6 = sub_1B1D7B4EC();
  v8 = v7;

  v9 = (selfCopy + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionOutput_first);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = v6;
  v9[1] = v8;
  sub_1B1CDEFDC(v10, v11);
}

- (ASAuthorizationPublicKeyCredentialPRFAssertionOutput)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v8 = sub_1B1D7B4EC();
  v10 = v9;

  if (secondCopy)
  {
    v11 = sub_1B1D7B4EC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = (self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionOutput_second);
  *(self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionOutput_second) = xmmword_1B1D857B0;
  v15 = (self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionOutput_first);
  *v15 = v8;
  v15[1] = v10;
  swift_beginAccess();
  v16 = *v14;
  v17 = v14[1];
  *v14 = v11;
  v14[1] = v13;
  sub_1B1CE111C(v8, v10);
  sub_1B1C91B94(v11, v13);
  sub_1B1C91AE4(v16, v17);
  v20.receiver = self;
  v20.super_class = ASAuthorizationPublicKeyCredentialPRFAssertionOutput;
  v18 = [(ASAuthorizationPublicKeyCredentialPRFAssertionOutput *)&v20 init];
  sub_1B1C91AE4(v11, v13);
  sub_1B1CDEFDC(v8, v10);
  return v18;
}

- (ASAuthorizationPublicKeyCredentialPRFAssertionOutput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end