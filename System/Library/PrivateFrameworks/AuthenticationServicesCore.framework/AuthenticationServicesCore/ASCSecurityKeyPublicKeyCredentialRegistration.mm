@interface ASCSecurityKeyPublicKeyCredentialRegistration
- (ASCSecurityKeyPublicKeyCredentialRegistration)initWithCoder:(id)coder;
- (ASCSecurityKeyPublicKeyCredentialRegistration)initWithRelyingPartyIdentifier:(id)identifier attestationObject:(id)object rawClientDataJSON:(id)n credentialID:(id)d transports:(id)transports extensionOutputsCBOR:(id)r attachment:(id)attachment;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCSecurityKeyPublicKeyCredentialRegistration

- (ASCSecurityKeyPublicKeyCredentialRegistration)initWithRelyingPartyIdentifier:(id)identifier attestationObject:(id)object rawClientDataJSON:(id)n credentialID:(id)d transports:(id)transports extensionOutputsCBOR:(id)r attachment:(id)attachment
{
  identifierCopy = identifier;
  objectCopy = object;
  nCopy = n;
  dCopy = d;
  transportsCopy = transports;
  rCopy = r;
  attachmentCopy = attachment;
  v37.receiver = self;
  v37.super_class = ASCSecurityKeyPublicKeyCredentialRegistration;
  v22 = [(ASCSecurityKeyPublicKeyCredentialRegistration *)&v37 init];
  if (v22)
  {
    v23 = [dCopy copy];
    credentialID = v22->_credentialID;
    v22->_credentialID = v23;

    objc_storeStrong(&v22->_rawClientDataJSON, n);
    v25 = [identifierCopy copy];
    relyingPartyIdentifier = v22->_relyingPartyIdentifier;
    v22->_relyingPartyIdentifier = v25;

    v27 = [objectCopy copy];
    attestationObject = v22->_attestationObject;
    v22->_attestationObject = v27;

    v29 = [transportsCopy copy];
    transports = v22->_transports;
    v22->_transports = v29;

    v31 = [rCopy copy];
    extensionOutputsCBOR = v22->_extensionOutputsCBOR;
    v22->_extensionOutputsCBOR = v31;

    v33 = [attachmentCopy copy];
    attachment = v22->_attachment;
    v22->_attachment = v33;

    v35 = v22;
  }

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensionOutputsCBOR forKey:@"extensionOutputsCBOR"];
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
}

- (ASCSecurityKeyPublicKeyCredentialRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attestationObject"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawClientDataJSON"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v8 = +[ASCWebKitSPISupport shouldApplyWorkaroundFor134591531];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  if (v8)
  {
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"transports"];

    v13 = [ASCWebKitSPISupport asTransportsFrom:v12];
    v14 = 0x1E696A000;
  }

  else
  {
    v14 = 0x1E696A000uLL;
    v12 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"transports"];
  }

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionOutputsCBOR"];
  v16 = *(v14 + 3776);
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachment"];
  v18 = [(ASCSecurityKeyPublicKeyCredentialRegistration *)self initWithRelyingPartyIdentifier:v4 attestationObject:v5 rawClientDataJSON:v6 credentialID:v7 transports:v13 extensionOutputsCBOR:v15 attachment:v17];

  return v18;
}

@end