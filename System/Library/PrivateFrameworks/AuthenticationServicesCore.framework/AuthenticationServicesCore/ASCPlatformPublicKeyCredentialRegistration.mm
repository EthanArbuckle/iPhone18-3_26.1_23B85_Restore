@interface ASCPlatformPublicKeyCredentialRegistration
- (ASCPlatformPublicKeyCredentialRegistration)initWithCoder:(id)coder;
- (ASCPlatformPublicKeyCredentialRegistration)initWithRelyingPartyIdentifier:(id)identifier attestationObject:(id)object rawClientDataJSON:(id)n credentialID:(id)d transports:(id)transports extensions:(id)extensions attachment:(id)attachment isExternal:(BOOL)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPlatformPublicKeyCredentialRegistration

- (ASCPlatformPublicKeyCredentialRegistration)initWithRelyingPartyIdentifier:(id)identifier attestationObject:(id)object rawClientDataJSON:(id)n credentialID:(id)d transports:(id)transports extensions:(id)extensions attachment:(id)attachment isExternal:(BOOL)self0
{
  identifierCopy = identifier;
  objectCopy = object;
  nCopy = n;
  dCopy = d;
  transportsCopy = transports;
  extensionsCopy = extensions;
  attachmentCopy = attachment;
  v38.receiver = self;
  v38.super_class = ASCPlatformPublicKeyCredentialRegistration;
  v23 = [(ASCPlatformPublicKeyCredentialRegistration *)&v38 init];
  if (v23)
  {
    v24 = [dCopy copy];
    credentialID = v23->_credentialID;
    v23->_credentialID = v24;

    v26 = [identifierCopy copy];
    relyingPartyIdentifier = v23->_relyingPartyIdentifier;
    v23->_relyingPartyIdentifier = v26;

    v28 = [objectCopy copy];
    attestationObject = v23->_attestationObject;
    v23->_attestationObject = v28;

    v30 = [nCopy copy];
    rawClientDataJSON = v23->_rawClientDataJSON;
    v23->_rawClientDataJSON = v30;

    v32 = [transportsCopy copy];
    transports = v23->_transports;
    v23->_transports = v32;

    objc_storeStrong(&v23->_extensions, extensions);
    v34 = [attachmentCopy copy];
    attachment = v23->_attachment;
    v23->_attachment = v34;

    v23->_isExternal = external;
    v36 = v23;
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensions forKey:@"extensions"];
  [coderCopy encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_attestationObject forKey:@"attestationObject"];
  [coderCopy encodeObject:self->_rawClientDataJSON forKey:@"rawClientDataJSON"];
  [coderCopy encodeObject:self->_credentialID forKey:@"credentialID"];
  if (+[ASCWebKitSPISupport shouldApplyWorkaroundFor134591531])
  {
    v4 = [ASCWebKitSPISupport wkTransportsFrom:self->_transports];
  }

  else
  {
    v4 = self->_transports;
  }

  v5 = v4;
  [coderCopy encodeObject:v4 forKey:@"transports"];
  [coderCopy encodeObject:self->_attachment forKey:@"attachment"];
  [coderCopy encodeBool:self->_isExternal forKey:@"isExternal"];
}

- (ASCPlatformPublicKeyCredentialRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attestationObject"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawClientDataJSON"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v8 = +[ASCWebKitSPISupport shouldApplyWorkaroundFor134591531];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  if (v8)
    v11 = {;
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"transports"];

    [ASCWebKitSPISupport asTransportsFrom:v12];
  }

  else
    v12 = {;
    [coderCopy decodeObjectOfClasses:v12 forKey:@"transports"];
  }
  v13 = ;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensions"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachment"];
  LOBYTE(v18) = [coderCopy decodeBoolForKey:@"isExternal"];
  v16 = [(ASCPlatformPublicKeyCredentialRegistration *)self initWithRelyingPartyIdentifier:v4 attestationObject:v5 rawClientDataJSON:v6 credentialID:v7 transports:v13 extensions:v14 attachment:v15 isExternal:v18];

  return v16;
}

@end