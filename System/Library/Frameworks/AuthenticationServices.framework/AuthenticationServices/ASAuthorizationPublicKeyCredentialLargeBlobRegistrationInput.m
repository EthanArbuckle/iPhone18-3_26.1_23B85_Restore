@interface ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput
- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)initWithCoder:(id)a3;
- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)initWithSupportRequirement:(ASAuthorizationPublicKeyCredentialLargeBlobSupportRequirement)requirement;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput

- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)initWithSupportRequirement:(ASAuthorizationPublicKeyCredentialLargeBlobSupportRequirement)requirement
{
  v8.receiver = self;
  v8.super_class = ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput;
  v4 = [(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_supportRequirement = requirement;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput allocWithZone:a3];
  supportRequirement = self->_supportRequirement;

  return [(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput *)v4 initWithSupportRequirement:supportRequirement];
}

- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"supportRequirementKey"];

  return [(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput *)self initWithSupportRequirement:v4];
}

@end