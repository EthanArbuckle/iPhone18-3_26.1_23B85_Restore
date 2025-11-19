@interface ASPasskeyAssertionCredentialExtensionInput
- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput)largeBlob;
- (ASPasskeyAssertionCredentialExtensionInput)init;
- (ASPasskeyAssertionCredentialExtensionInput)initWithCoder:(id)a3;
- (ASPasskeyAssertionCredentialExtensionInput)initWithCoreExtensions:(id)a3;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASPasskeyAssertionCredentialExtensionInput

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput)largeBlob
{
  v2 = self;
  v3 = sub_1B1CDF0D4();

  return v3;
}

- (ASPasskeyAssertionCredentialExtensionInput)initWithCoreExtensions:(id)a3
{
  v4 = a3;
  v5 = [(ASPasskeyAssertionCredentialExtensionInput *)self init];
  v6 = *(&v5->super.isa + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions);
  *(&v5->super.isa + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions) = v4;

  return v5;
}

- (ASPasskeyAssertionCredentialExtensionInput)initWithCoder:(id)a3
{
  sub_1B1D7BAEC();
  v5 = a3;
  v6 = sub_1B1D7C12C();
  if (v6)
  {
    v7 = v6;
    v8 = [(ASPasskeyAssertionCredentialExtensionInput *)self initWithCoreExtensions:v6];

    return v8;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions);
  v5 = a3;
  v8 = self;
  v6 = v4;
  v7 = sub_1B1D7BE1C();
  [v5 encodeObject:v6 forKey:v7];
}

- (id)copyWithZone:(void *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions);
  v4 = objc_allocWithZone(ASPasskeyAssertionCredentialExtensionInput);

  return [v4 initWithCoreExtensions_];
}

- (ASPasskeyAssertionCredentialExtensionInput)init
{
  v3 = OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions;
  *(&self->super.isa + v3) = [objc_allocWithZone(sub_1B1D7BAEC()) init];
  v5.receiver = self;
  v5.super_class = ASPasskeyAssertionCredentialExtensionInput;
  return [(ASPasskeyAssertionCredentialExtensionInput *)&v5 init];
}

@end