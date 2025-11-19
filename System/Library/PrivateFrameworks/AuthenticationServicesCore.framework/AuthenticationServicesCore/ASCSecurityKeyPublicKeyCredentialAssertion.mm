@interface ASCSecurityKeyPublicKeyCredentialAssertion
- (ASCSecurityKeyPublicKeyCredentialAssertion)initWithCoder:(id)a3;
- (ASCSecurityKeyPublicKeyCredentialAssertion)initWithRelyingPartyIdentifier:(id)a3 authenticatorData:(id)a4 signature:(id)a5 userHandle:(id)a6 rawClientDataJSON:(id)a7 credentialID:(id)a8 extensionOutputsCBOR:(id)a9 attachment:(id)a10 appID:(BOOL)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCSecurityKeyPublicKeyCredentialAssertion

- (ASCSecurityKeyPublicKeyCredentialAssertion)initWithRelyingPartyIdentifier:(id)a3 authenticatorData:(id)a4 signature:(id)a5 userHandle:(id)a6 rawClientDataJSON:(id)a7 credentialID:(id)a8 extensionOutputsCBOR:(id)a9 attachment:(id)a10 appID:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v44.receiver = self;
  v44.super_class = ASCSecurityKeyPublicKeyCredentialAssertion;
  v25 = [(ASCSecurityKeyPublicKeyCredentialAssertion *)&v44 init];
  if (v25)
  {
    v26 = [v22 copy];
    credentialID = v25->_credentialID;
    v25->_credentialID = v26;

    v28 = [v17 copy];
    relyingPartyIdentifier = v25->_relyingPartyIdentifier;
    v25->_relyingPartyIdentifier = v28;

    v30 = [v18 copy];
    authenticatorData = v25->_authenticatorData;
    v25->_authenticatorData = v30;

    v32 = [v19 copy];
    signature = v25->_signature;
    v25->_signature = v32;

    v34 = [v20 copy];
    userHandle = v25->_userHandle;
    v25->_userHandle = v34;

    v36 = [v21 copy];
    rawClientDataJSON = v25->_rawClientDataJSON;
    v25->_rawClientDataJSON = v36;

    v38 = [v23 copy];
    extensionOutputsCBOR = v25->_extensionOutputsCBOR;
    v25->_extensionOutputsCBOR = v38;

    v40 = [v24 copy];
    attachment = v25->_attachment;
    v25->_attachment = v40;

    v25->_appID = a11;
    v42 = v25;
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  extensionOutputsCBOR = self->_extensionOutputsCBOR;
  v5 = a3;
  [v5 encodeObject:extensionOutputsCBOR forKey:@"extensionOutputsCBOR"];
  [v5 encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v5 encodeObject:self->_authenticatorData forKey:@"authenticatorData"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeObject:self->_userHandle forKey:@"userHandle"];
  [v5 encodeObject:self->_rawClientDataJSON forKey:@"rawClientDataJSON"];
  [v5 encodeObject:self->_credentialID forKey:@"credentialID"];
  [v5 encodeObject:self->_attachment forKey:@"attachment"];
  [v5 encodeBool:self->_appID forKey:@"appID"];
}

- (ASCSecurityKeyPublicKeyCredentialAssertion)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"authenticatorData"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"rawClientDataJSON"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"extensionOutputsCBOR"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attachment"];
  v12 = [v3 decodeBoolForKey:@"appID"];

  LOBYTE(v15) = v12;
  v13 = [(ASCSecurityKeyPublicKeyCredentialAssertion *)self initWithRelyingPartyIdentifier:v4 authenticatorData:v5 signature:v6 userHandle:v7 rawClientDataJSON:v8 credentialID:v9 extensionOutputsCBOR:v10 attachment:v11 appID:v15];

  return v13;
}

@end