@interface ASPasskeyCredentialIdentity
+ (ASPasskeyCredentialIdentity)identityWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier userName:(NSString *)userName credentialID:(NSData *)credentialID userHandle:(NSData *)userHandle recordIdentifier:(NSString *)recordIdentifier;
- (ASCredentialServiceIdentifier)serviceIdentifier;
- (ASPasskeyCredentialIdentity)initWithCoder:(id)coder;
- (ASPasskeyCredentialIdentity)initWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier userName:(NSString *)userName credentialID:(NSData *)credentialID userHandle:(NSData *)userHandle recordIdentifier:(NSString *)recordIdentifier;
- (id)_initWithLoginChoice:(id)choice;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASPasskeyCredentialIdentity

- (id)_initWithLoginChoice:(id)choice
{
  choiceCopy = choice;
  relyingPartyIdentifier = [choiceCopy relyingPartyIdentifier];
  name = [choiceCopy name];
  identifier = [choiceCopy identifier];
  credentialID = [identifier credentialID];
  safari_base64DecodedData = [credentialID safari_base64DecodedData];
  userHandle = [choiceCopy userHandle];
  safari_base64DecodedData2 = [userHandle safari_base64DecodedData];
  credentialIdentity = [choiceCopy credentialIdentity];

  externalRecordIdentifier = [credentialIdentity externalRecordIdentifier];
  v14 = [(ASPasskeyCredentialIdentity *)self initWithRelyingPartyIdentifier:relyingPartyIdentifier userName:name credentialID:safari_base64DecodedData userHandle:safari_base64DecodedData2 recordIdentifier:externalRecordIdentifier];

  return v14;
}

- (ASPasskeyCredentialIdentity)initWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier userName:(NSString *)userName credentialID:(NSData *)credentialID userHandle:(NSData *)userHandle recordIdentifier:(NSString *)recordIdentifier
{
  v12 = relyingPartyIdentifier;
  v13 = userName;
  v14 = credentialID;
  v15 = userHandle;
  v16 = recordIdentifier;
  v30.receiver = self;
  v30.super_class = ASPasskeyCredentialIdentity;
  v17 = [(ASPasskeyCredentialIdentity *)&v30 init];
  if (v17)
  {
    v18 = [(NSString *)v12 copy];
    v19 = v17->_relyingPartyIdentifier;
    v17->_relyingPartyIdentifier = v18;

    v20 = [(NSString *)v13 copy];
    v21 = v17->_userName;
    v17->_userName = v20;

    v22 = [(NSString *)v16 copy];
    v23 = v17->_recordIdentifier;
    v17->_recordIdentifier = v22;

    v24 = [(NSData *)v14 copy];
    v25 = v17->_credentialID;
    v17->_credentialID = v24;

    v26 = [(NSData *)v15 copy];
    v27 = v17->_userHandle;
    v17->_userHandle = v26;

    v28 = v17;
  }

  return v17;
}

+ (ASPasskeyCredentialIdentity)identityWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier userName:(NSString *)userName credentialID:(NSData *)credentialID userHandle:(NSData *)userHandle recordIdentifier:(NSString *)recordIdentifier
{
  v12 = recordIdentifier;
  v13 = userHandle;
  v14 = credentialID;
  v15 = userName;
  v16 = relyingPartyIdentifier;
  v17 = [[self alloc] initWithRelyingPartyIdentifier:v16 userName:v15 credentialID:v14 userHandle:v13 recordIdentifier:v12];

  return v17;
}

- (ASCredentialServiceIdentifier)serviceIdentifier
{
  v2 = [[ASCredentialServiceIdentifier alloc] initWithIdentifier:self->_relyingPartyIdentifier type:0];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithRelyingPartyIdentifier:userName:credentialID:userHandle:recordIdentifier:", self->_relyingPartyIdentifier, self->_userName, self->_credentialID, self->_userHandle, self->_recordIdentifier}];
  [v4 setRank:self->_rank];
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_credentialIdentityStoreIdentifier);
  }

  return v4;
}

- (ASPasskeyCredentialIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
  v10 = [coderCopy decodeIntegerForKey:@"rank"];

  v11 = [(ASPasskeyCredentialIdentity *)self initWithRelyingPartyIdentifier:v5 userName:v6 credentialID:v8 userHandle:v9 recordIdentifier:v7];
  v12 = v11;
  if (v11)
  {
    v11->_rank = v10;
    v13 = v11;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_userName forKey:@"userName"];
  [coderCopy encodeObject:self->_recordIdentifier forKey:@"recordIdentifier"];
  [coderCopy encodeObject:self->_credentialID forKey:@"credentialID"];
  [coderCopy encodeObject:self->_userHandle forKey:@"userHandle"];
  [coderCopy encodeInteger:self->_rank forKey:@"rank"];
}

@end