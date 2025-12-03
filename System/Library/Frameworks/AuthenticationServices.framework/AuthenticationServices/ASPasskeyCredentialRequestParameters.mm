@interface ASPasskeyCredentialRequestParameters
- (ASPasskeyCredentialRequestParameters)initWithCoder:(id)coder;
- (ASPasskeyCredentialRequestParameters)initWithRelyingPartyIdentifier:(id)identifier clientDataHash:(id)hash userVerificationPreference:(id)preference allowedCredentials:(id)credentials extensionInput:(id)input;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASPasskeyCredentialRequestParameters

- (ASPasskeyCredentialRequestParameters)initWithRelyingPartyIdentifier:(id)identifier clientDataHash:(id)hash userVerificationPreference:(id)preference allowedCredentials:(id)credentials extensionInput:(id)input
{
  identifierCopy = identifier;
  hashCopy = hash;
  preferenceCopy = preference;
  credentialsCopy = credentials;
  inputCopy = input;
  v30.receiver = self;
  v30.super_class = ASPasskeyCredentialRequestParameters;
  v17 = [(ASPasskeyCredentialRequestParameters *)&v30 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    relyingPartyIdentifier = v17->_relyingPartyIdentifier;
    v17->_relyingPartyIdentifier = v18;

    v20 = [hashCopy copy];
    clientDataHash = v17->_clientDataHash;
    v17->_clientDataHash = v20;

    v22 = [preferenceCopy copy];
    userVerificationPreference = v17->_userVerificationPreference;
    v17->_userVerificationPreference = v22;

    v24 = [credentialsCopy copy];
    allowedCredentials = v17->_allowedCredentials;
    v17->_allowedCredentials = v24;

    v26 = [inputCopy copy];
    extensionInput = v17->_extensionInput;
    v17->_extensionInput = v26;

    v28 = v17;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [coderCopy encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [coderCopy encodeObject:self->_allowedCredentials forKey:@"allowedCredentials"];
  [coderCopy encodeObject:self->_extensionInput forKey:@"extensionInput"];
}

- (ASPasskeyCredentialRequestParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allowedCredentials"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionInput"];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASPasskeyCredentialRequestParameters allocWithZone:zone];
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  clientDataHash = self->_clientDataHash;
  userVerificationPreference = self->_userVerificationPreference;
  allowedCredentials = self->_allowedCredentials;
  extensionInput = self->_extensionInput;

  return [(ASPasskeyCredentialRequestParameters *)v4 initWithRelyingPartyIdentifier:relyingPartyIdentifier clientDataHash:clientDataHash userVerificationPreference:userVerificationPreference allowedCredentials:allowedCredentials extensionInput:extensionInput];
}

@end