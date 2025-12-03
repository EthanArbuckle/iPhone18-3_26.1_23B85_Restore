@interface ASCPlatformPublicKeyCredentialAssertion
- (ASCPlatformPublicKeyCredentialAssertion)initWithCoder:(id)coder;
- (ASCPlatformPublicKeyCredentialAssertion)initWithRelyingPartyIdentifier:(id)identifier authenticatorData:(id)data signature:(id)signature userHandle:(id)handle rawClientDataJSON:(id)n credentialID:(id)d extensions:(id)extensions attachment:(id)self0 isExternal:(BOOL)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPlatformPublicKeyCredentialAssertion

- (ASCPlatformPublicKeyCredentialAssertion)initWithRelyingPartyIdentifier:(id)identifier authenticatorData:(id)data signature:(id)signature userHandle:(id)handle rawClientDataJSON:(id)n credentialID:(id)d extensions:(id)extensions attachment:(id)self0 isExternal:(BOOL)self1
{
  identifierCopy = identifier;
  dataCopy = data;
  signatureCopy = signature;
  handleCopy = handle;
  nCopy = n;
  dCopy = d;
  extensionsCopy = extensions;
  attachmentCopy = attachment;
  v42.receiver = self;
  v42.super_class = ASCPlatformPublicKeyCredentialAssertion;
  v25 = [(ASCPlatformPublicKeyCredentialAssertion *)&v42 init];
  if (v25)
  {
    v26 = [dCopy copy];
    credentialID = v25->_credentialID;
    v25->_credentialID = v26;

    v28 = [nCopy copy];
    rawClientDataJSON = v25->_rawClientDataJSON;
    v25->_rawClientDataJSON = v28;

    v30 = [identifierCopy copy];
    relyingPartyIdentifier = v25->_relyingPartyIdentifier;
    v25->_relyingPartyIdentifier = v30;

    v32 = [dataCopy copy];
    authenticatorData = v25->_authenticatorData;
    v25->_authenticatorData = v32;

    v34 = [signatureCopy copy];
    signature = v25->_signature;
    v25->_signature = v34;

    v36 = [handleCopy copy];
    userHandle = v25->_userHandle;
    v25->_userHandle = v36;

    objc_storeStrong(&v25->_extensions, extensions);
    v38 = [attachmentCopy copy];
    attachment = v25->_attachment;
    v25->_attachment = v38;

    v25->_isExternal = external;
    v40 = v25;
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  extensions = self->_extensions;
  coderCopy = coder;
  [coderCopy encodeObject:extensions forKey:@"extensions"];
  [coderCopy encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_authenticatorData forKey:@"authenticatorData"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_userHandle forKey:@"userHandle"];
  [coderCopy encodeObject:self->_rawClientDataJSON forKey:@"rawClientDataJSON"];
  [coderCopy encodeObject:self->_credentialID forKey:@"credentialID"];
  [coderCopy encodeObject:self->_attachment forKey:@"attachment"];
  [coderCopy encodeBool:self->_isExternal forKey:@"isExternal"];
}

- (ASCPlatformPublicKeyCredentialAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticatorData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawClientDataJSON"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensions"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachment"];
  v12 = [coderCopy decodeBoolForKey:@"isExternal"];

  LOBYTE(v15) = v12;
  v13 = [(ASCPlatformPublicKeyCredentialAssertion *)self initWithRelyingPartyIdentifier:v4 authenticatorData:v5 signature:v6 userHandle:v7 rawClientDataJSON:v8 credentialID:v9 extensions:v10 attachment:v11 isExternal:v15];

  return v13;
}

@end