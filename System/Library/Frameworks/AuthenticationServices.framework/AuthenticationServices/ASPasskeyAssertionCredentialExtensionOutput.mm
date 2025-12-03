@interface ASPasskeyAssertionCredentialExtensionOutput
- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)largeBlobAssertionOutput;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASPasskeyAssertionCredentialExtensionOutput

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)largeBlobAssertionOutput
{
  selfCopy = self;
  v3 = sub_1B1CE08C8();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions);
  coderCopy = coder;
  selfCopy = self;
  v6 = v4;
  v7 = sub_1B1D7BE1C();
  [coderCopy encodeObject:v6 forKey:v7];
}

- (id)copyWithZone:(void *)zone
{
  v3 = *(&self->super.isa + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions);
  v4 = objc_allocWithZone(ASPasskeyAssertionCredentialExtensionOutput);
  v5 = v3;
  v6 = [v4 init];
  v7 = *&v6[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions];
  *&v6[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions] = v5;

  return v6;
}

@end