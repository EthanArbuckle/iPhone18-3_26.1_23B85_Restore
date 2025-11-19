@interface ASCSecurityKeyPublicKeyCredentialRegistration
- (ASCSecurityKeyPublicKeyCredentialRegistration)initWithCoder:(id)a3;
- (ASCSecurityKeyPublicKeyCredentialRegistration)initWithRelyingPartyIdentifier:(id)a3 attestationObject:(id)a4 rawClientDataJSON:(id)a5 credentialID:(id)a6 transports:(id)a7 extensionOutputsCBOR:(id)a8 attachment:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCSecurityKeyPublicKeyCredentialRegistration

- (ASCSecurityKeyPublicKeyCredentialRegistration)initWithRelyingPartyIdentifier:(id)a3 attestationObject:(id)a4 rawClientDataJSON:(id)a5 credentialID:(id)a6 transports:(id)a7 extensionOutputsCBOR:(id)a8 attachment:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v37.receiver = self;
  v37.super_class = ASCSecurityKeyPublicKeyCredentialRegistration;
  v22 = [(ASCSecurityKeyPublicKeyCredentialRegistration *)&v37 init];
  if (v22)
  {
    v23 = [v18 copy];
    credentialID = v22->_credentialID;
    v22->_credentialID = v23;

    objc_storeStrong(&v22->_rawClientDataJSON, a5);
    v25 = [v15 copy];
    relyingPartyIdentifier = v22->_relyingPartyIdentifier;
    v22->_relyingPartyIdentifier = v25;

    v27 = [v16 copy];
    attestationObject = v22->_attestationObject;
    v22->_attestationObject = v27;

    v29 = [v19 copy];
    transports = v22->_transports;
    v22->_transports = v29;

    v31 = [v20 copy];
    extensionOutputsCBOR = v22->_extensionOutputsCBOR;
    v22->_extensionOutputsCBOR = v31;

    v33 = [v21 copy];
    attachment = v22->_attachment;
    v22->_attachment = v33;

    v35 = v22;
  }

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_extensionOutputsCBOR forKey:@"extensionOutputsCBOR"];
  [v6 encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v6 encodeObject:self->_attestationObject forKey:@"attestationObject"];
  [v6 encodeObject:self->_rawClientDataJSON forKey:@"rawClientDataJSON"];
  [v6 encodeObject:self->_credentialID forKey:@"credentialID"];
  if (+[ASCWebKitSPISupport shouldApplyWorkaroundFor134591531])
  {
    v4 = [ASCWebKitSPISupport wkTransportsFrom:self->_transports];
  }

  else
  {
    v4 = self->_transports;
  }

  v5 = v4;
  [v6 encodeObject:v4 forKey:@"transports"];
  [v6 encodeObject:self->_attachment forKey:@"attachment"];
}

- (ASCSecurityKeyPublicKeyCredentialRegistration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attestationObject"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"rawClientDataJSON"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v8 = +[ASCWebKitSPISupport shouldApplyWorkaroundFor134591531];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  if (v8)
  {
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v3 decodeObjectOfClasses:v11 forKey:@"transports"];

    v13 = [ASCWebKitSPISupport asTransportsFrom:v12];
    v14 = 0x1E696A000;
  }

  else
  {
    v14 = 0x1E696A000uLL;
    v12 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v13 = [v3 decodeObjectOfClasses:v12 forKey:@"transports"];
  }

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"extensionOutputsCBOR"];
  v16 = *(v14 + 3776);
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attachment"];
  v18 = [(ASCSecurityKeyPublicKeyCredentialRegistration *)self initWithRelyingPartyIdentifier:v4 attestationObject:v5 rawClientDataJSON:v6 credentialID:v7 transports:v13 extensionOutputsCBOR:v15 attachment:v17];

  return v18;
}

@end