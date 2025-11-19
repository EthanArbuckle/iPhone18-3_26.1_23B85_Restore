@interface ASAuthorizationPublicKeyCredentialPRFAssertionInputValues
- (ASAuthorizationPublicKeyCredentialPRFAssertionInputValues)init;
- (ASAuthorizationPublicKeyCredentialPRFAssertionInputValues)initWithSaltInput1:(id)a3 saltInput2:(id)a4;
- (NSData)saltInput1;
- (NSData)saltInput2;
@end

@implementation ASAuthorizationPublicKeyCredentialPRFAssertionInputValues

- (NSData)saltInput1
{
  v2 = *(self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput1);
  v3 = *(self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput1 + 8);
  sub_1B1CE111C(v2, v3);
  v4 = sub_1B1D7B4DC();
  sub_1B1CDEFDC(v2, v3);

  return v4;
}

- (NSData)saltInput2
{
  v2 = (self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput2);
  v3 = *(self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput2 + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    sub_1B1CE111C(*v2, v3);
    v6 = sub_1B1D7B4DC();
    sub_1B1C91AE4(v5, v3);
    v4 = v6;
  }

  return v4;
}

- (ASAuthorizationPublicKeyCredentialPRFAssertionInputValues)initWithSaltInput1:(id)a3 saltInput2:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1B1D7B4EC();
  v10 = v9;

  if (v7)
  {
    v11 = sub_1B1D7B4EC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = (self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput1);
  *v14 = v8;
  v14[1] = v10;
  v15 = (self + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput2);
  *v15 = v11;
  v15[1] = v13;
  v17.receiver = self;
  v17.super_class = ASAuthorizationPublicKeyCredentialPRFAssertionInputValues;
  return [(ASAuthorizationPublicKeyCredentialPRFAssertionInputValues *)&v17 init];
}

- (ASAuthorizationPublicKeyCredentialPRFAssertionInputValues)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end