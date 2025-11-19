@interface ASPasskeyRegistrationCredentialExtensionInput
- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)largeBlob;
- (ASPasskeyRegistrationCredentialExtensionInput)init;
- (ASPasskeyRegistrationCredentialExtensionInput)initWithCoder:(id)a3;
- (ASPasskeyRegistrationCredentialExtensionInput)initWithCoreExtensions:(id)a3;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASPasskeyRegistrationCredentialExtensionInput

- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)largeBlob
{
  v2 = self;
  v3 = sub_1B1D28CF8();

  return v3;
}

- (ASPasskeyRegistrationCredentialExtensionInput)initWithCoreExtensions:(id)a3
{
  v4 = a3;
  v5 = [(ASPasskeyRegistrationCredentialExtensionInput *)self init];
  v6 = *(&v5->super.isa + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions);
  *(&v5->super.isa + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions) = v4;

  return v5;
}

- (ASPasskeyRegistrationCredentialExtensionInput)initWithCoder:(id)a3
{
  sub_1B1D7BC8C();
  v5 = a3;
  v6 = sub_1B1D7C12C();
  if (v6)
  {
    v7 = v6;
    v8 = [(ASPasskeyRegistrationCredentialExtensionInput *)self initWithCoreExtensions:v6];

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
  v4 = *(&self->super.isa + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions);
  v5 = a3;
  v8 = self;
  v6 = v4;
  v7 = sub_1B1D7BE1C();
  [v5 encodeObject:v6 forKey:v7];
}

- (id)copyWithZone:(void *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions);
  v4 = objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionInput);

  return [v4 initWithCoreExtensions_];
}

- (ASPasskeyRegistrationCredentialExtensionInput)init
{
  v3 = OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions;
  *(&self->super.isa + v3) = [objc_allocWithZone(sub_1B1D7BC8C()) init];
  v5.receiver = self;
  v5.super_class = ASPasskeyRegistrationCredentialExtensionInput;
  return [(ASPasskeyRegistrationCredentialExtensionInput *)&v5 init];
}

@end