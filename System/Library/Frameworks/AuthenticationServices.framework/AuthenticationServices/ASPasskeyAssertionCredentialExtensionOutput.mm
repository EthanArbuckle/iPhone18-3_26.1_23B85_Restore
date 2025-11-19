@interface ASPasskeyAssertionCredentialExtensionOutput
- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)largeBlobAssertionOutput;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASPasskeyAssertionCredentialExtensionOutput

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput)largeBlobAssertionOutput
{
  v2 = self;
  v3 = sub_1B1CE08C8();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions);
  v5 = a3;
  v8 = self;
  v6 = v4;
  v7 = sub_1B1D7BE1C();
  [v5 encodeObject:v6 forKey:v7];
}

- (id)copyWithZone:(void *)a3
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