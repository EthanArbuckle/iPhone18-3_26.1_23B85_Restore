@interface ASCPlatformPublicKeyCredentialRegistration
- (ASCPlatformPublicKeyCredentialRegistration)initWithCoder:(id)a3;
- (ASCPlatformPublicKeyCredentialRegistration)initWithRelyingPartyIdentifier:(id)a3 attestationObject:(id)a4 rawClientDataJSON:(id)a5 credentialID:(id)a6 transports:(id)a7 extensions:(id)a8 attachment:(id)a9 isExternal:(BOOL)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCPlatformPublicKeyCredentialRegistration

- (ASCPlatformPublicKeyCredentialRegistration)initWithRelyingPartyIdentifier:(id)a3 attestationObject:(id)a4 rawClientDataJSON:(id)a5 credentialID:(id)a6 transports:(id)a7 extensions:(id)a8 attachment:(id)a9 isExternal:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v38.receiver = self;
  v38.super_class = ASCPlatformPublicKeyCredentialRegistration;
  v23 = [(ASCPlatformPublicKeyCredentialRegistration *)&v38 init];
  if (v23)
  {
    v24 = [v19 copy];
    credentialID = v23->_credentialID;
    v23->_credentialID = v24;

    v26 = [v16 copy];
    relyingPartyIdentifier = v23->_relyingPartyIdentifier;
    v23->_relyingPartyIdentifier = v26;

    v28 = [v17 copy];
    attestationObject = v23->_attestationObject;
    v23->_attestationObject = v28;

    v30 = [v18 copy];
    rawClientDataJSON = v23->_rawClientDataJSON;
    v23->_rawClientDataJSON = v30;

    v32 = [v20 copy];
    transports = v23->_transports;
    v23->_transports = v32;

    objc_storeStrong(&v23->_extensions, a8);
    v34 = [v22 copy];
    attachment = v23->_attachment;
    v23->_attachment = v34;

    v23->_isExternal = a10;
    v36 = v23;
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_extensions forKey:@"extensions"];
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
  [v6 encodeBool:self->_isExternal forKey:@"isExternal"];
}

- (ASCPlatformPublicKeyCredentialRegistration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attestationObject"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"rawClientDataJSON"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v8 = +[ASCWebKitSPISupport shouldApplyWorkaroundFor134591531];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  if (v8)
    v11 = {;
    v12 = [v3 decodeObjectOfClasses:v11 forKey:@"transports"];

    [ASCWebKitSPISupport asTransportsFrom:v12];
  }

  else
    v12 = {;
    [v3 decodeObjectOfClasses:v12 forKey:@"transports"];
  }
  v13 = ;

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"extensions"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attachment"];
  LOBYTE(v18) = [v3 decodeBoolForKey:@"isExternal"];
  v16 = [(ASCPlatformPublicKeyCredentialRegistration *)self initWithRelyingPartyIdentifier:v4 attestationObject:v5 rawClientDataJSON:v6 credentialID:v7 transports:v13 extensions:v14 attachment:v15 isExternal:v18];

  return v16;
}

@end