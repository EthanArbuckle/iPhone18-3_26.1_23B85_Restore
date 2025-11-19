@interface ASPasskeyCredentialRequestParameters
- (ASPasskeyCredentialRequestParameters)initWithCoder:(id)a3;
- (ASPasskeyCredentialRequestParameters)initWithRelyingPartyIdentifier:(id)a3 clientDataHash:(id)a4 userVerificationPreference:(id)a5 allowedCredentials:(id)a6 extensionInput:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASPasskeyCredentialRequestParameters

- (ASPasskeyCredentialRequestParameters)initWithRelyingPartyIdentifier:(id)a3 clientDataHash:(id)a4 userVerificationPreference:(id)a5 allowedCredentials:(id)a6 extensionInput:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = ASPasskeyCredentialRequestParameters;
  v17 = [(ASPasskeyCredentialRequestParameters *)&v30 init];
  if (v17)
  {
    v18 = [v12 copy];
    relyingPartyIdentifier = v17->_relyingPartyIdentifier;
    v17->_relyingPartyIdentifier = v18;

    v20 = [v13 copy];
    clientDataHash = v17->_clientDataHash;
    v17->_clientDataHash = v20;

    v22 = [v14 copy];
    userVerificationPreference = v17->_userVerificationPreference;
    v17->_userVerificationPreference = v22;

    v24 = [v15 copy];
    allowedCredentials = v17->_allowedCredentials;
    v17->_allowedCredentials = v24;

    v26 = [v16 copy];
    extensionInput = v17->_extensionInput;
    v17->_extensionInput = v26;

    v28 = v17;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  v5 = a3;
  [v5 encodeObject:relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v5 encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [v5 encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [v5 encodeObject:self->_allowedCredentials forKey:@"allowedCredentials"];
  [v5 encodeObject:self->_extensionInput forKey:@"extensionInput"];
}

- (ASPasskeyCredentialRequestParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
  v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allowedCredentials"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionInput"];

  v10 = [(ASPasskeyCredentialRequestParameters *)self initWithRelyingPartyIdentifier:v5 clientDataHash:v6 userVerificationPreference:v7 allowedCredentials:v8 extensionInput:v9];
  if (v10)
  {
    v11 = [v9 copy];
    extensionInput = v10->_extensionInput;
    v10->_extensionInput = v11;

    v13 = v10;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASPasskeyCredentialRequestParameters allocWithZone:a3];
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  clientDataHash = self->_clientDataHash;
  userVerificationPreference = self->_userVerificationPreference;
  allowedCredentials = self->_allowedCredentials;
  extensionInput = self->_extensionInput;

  return [(ASPasskeyCredentialRequestParameters *)v4 initWithRelyingPartyIdentifier:relyingPartyIdentifier clientDataHash:clientDataHash userVerificationPreference:userVerificationPreference allowedCredentials:allowedCredentials extensionInput:extensionInput];
}

@end