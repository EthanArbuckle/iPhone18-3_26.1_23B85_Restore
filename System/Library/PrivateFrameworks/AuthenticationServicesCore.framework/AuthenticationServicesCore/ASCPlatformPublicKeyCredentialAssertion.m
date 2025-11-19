@interface ASCPlatformPublicKeyCredentialAssertion
- (ASCPlatformPublicKeyCredentialAssertion)initWithCoder:(id)a3;
- (ASCPlatformPublicKeyCredentialAssertion)initWithRelyingPartyIdentifier:(id)a3 authenticatorData:(id)a4 signature:(id)a5 userHandle:(id)a6 rawClientDataJSON:(id)a7 credentialID:(id)a8 extensions:(id)a9 attachment:(id)a10 isExternal:(BOOL)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCPlatformPublicKeyCredentialAssertion

- (ASCPlatformPublicKeyCredentialAssertion)initWithRelyingPartyIdentifier:(id)a3 authenticatorData:(id)a4 signature:(id)a5 userHandle:(id)a6 rawClientDataJSON:(id)a7 credentialID:(id)a8 extensions:(id)a9 attachment:(id)a10 isExternal:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v42.receiver = self;
  v42.super_class = ASCPlatformPublicKeyCredentialAssertion;
  v25 = [(ASCPlatformPublicKeyCredentialAssertion *)&v42 init];
  if (v25)
  {
    v26 = [v22 copy];
    credentialID = v25->_credentialID;
    v25->_credentialID = v26;

    v28 = [v21 copy];
    rawClientDataJSON = v25->_rawClientDataJSON;
    v25->_rawClientDataJSON = v28;

    v30 = [v17 copy];
    relyingPartyIdentifier = v25->_relyingPartyIdentifier;
    v25->_relyingPartyIdentifier = v30;

    v32 = [v18 copy];
    authenticatorData = v25->_authenticatorData;
    v25->_authenticatorData = v32;

    v34 = [v19 copy];
    signature = v25->_signature;
    v25->_signature = v34;

    v36 = [v20 copy];
    userHandle = v25->_userHandle;
    v25->_userHandle = v36;

    objc_storeStrong(&v25->_extensions, a9);
    v38 = [v24 copy];
    attachment = v25->_attachment;
    v25->_attachment = v38;

    v25->_isExternal = a11;
    v40 = v25;
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  extensions = self->_extensions;
  v5 = a3;
  [v5 encodeObject:extensions forKey:@"extensions"];
  [v5 encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v5 encodeObject:self->_authenticatorData forKey:@"authenticatorData"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeObject:self->_userHandle forKey:@"userHandle"];
  [v5 encodeObject:self->_rawClientDataJSON forKey:@"rawClientDataJSON"];
  [v5 encodeObject:self->_credentialID forKey:@"credentialID"];
  [v5 encodeObject:self->_attachment forKey:@"attachment"];
  [v5 encodeBool:self->_isExternal forKey:@"isExternal"];
}

- (ASCPlatformPublicKeyCredentialAssertion)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"authenticatorData"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"rawClientDataJSON"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"extensions"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attachment"];
  v12 = [v3 decodeBoolForKey:@"isExternal"];

  LOBYTE(v15) = v12;
  v13 = [(ASCPlatformPublicKeyCredentialAssertion *)self initWithRelyingPartyIdentifier:v4 authenticatorData:v5 signature:v6 userHandle:v7 rawClientDataJSON:v8 credentialID:v9 extensions:v10 attachment:v11 isExternal:v15];

  return v13;
}

@end