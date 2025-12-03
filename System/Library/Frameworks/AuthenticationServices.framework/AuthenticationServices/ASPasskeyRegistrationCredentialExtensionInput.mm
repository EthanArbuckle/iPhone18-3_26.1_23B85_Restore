@interface ASPasskeyRegistrationCredentialExtensionInput
- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)largeBlob;
- (ASPasskeyRegistrationCredentialExtensionInput)init;
- (ASPasskeyRegistrationCredentialExtensionInput)initWithCoder:(id)coder;
- (ASPasskeyRegistrationCredentialExtensionInput)initWithCoreExtensions:(id)extensions;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASPasskeyRegistrationCredentialExtensionInput

- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)largeBlob
{
  selfCopy = self;
  v3 = sub_1B1D28CF8();

  return v3;
}

- (ASPasskeyRegistrationCredentialExtensionInput)initWithCoreExtensions:(id)extensions
{
  extensionsCopy = extensions;
  v5 = [(ASPasskeyRegistrationCredentialExtensionInput *)self init];
  v6 = *(&v5->super.isa + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions);
  *(&v5->super.isa + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions) = extensionsCopy;

  return v5;
}

- (ASPasskeyRegistrationCredentialExtensionInput)initWithCoder:(id)coder
{
  sub_1B1D7BC8C();
  coderCopy = coder;
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

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions);
  coderCopy = coder;
  selfCopy = self;
  v6 = v4;
  v7 = sub_1B1D7BE1C();
  [coderCopy encodeObject:v6 forKey:v7];
}

- (id)copyWithZone:(void *)zone
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