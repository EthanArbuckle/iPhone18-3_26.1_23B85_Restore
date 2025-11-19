@interface ASPasskeyCredentialIdentity
+ (ASPasskeyCredentialIdentity)identityWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier userName:(NSString *)userName credentialID:(NSData *)credentialID userHandle:(NSData *)userHandle recordIdentifier:(NSString *)recordIdentifier;
- (ASCredentialServiceIdentifier)serviceIdentifier;
- (ASPasskeyCredentialIdentity)initWithCoder:(id)a3;
- (ASPasskeyCredentialIdentity)initWithRelyingPartyIdentifier:(NSString *)relyingPartyIdentifier userName:(NSString *)userName credentialID:(NSData *)credentialID userHandle:(NSData *)userHandle recordIdentifier:(NSString *)recordIdentifier;
- (id)_initWithLoginChoice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASPasskeyCredentialIdentity

- (id)_initWithLoginChoice:(id)a3
{
  v4 = a3;
  v5 = [v4 relyingPartyIdentifier];
  v6 = [v4 name];
  v7 = [v4 identifier];
  v8 = [v7 credentialID];
  v9 = [v8 safari_base64DecodedData];
  v10 = [v4 userHandle];
  v11 = [v10 safari_base64DecodedData];
  v12 = [v4 credentialIdentity];

  v13 = [v12 externalRecordIdentifier];
  v14 = [(ASPasskeyCredentialIdentity *)self initWithRelyingPartyIdentifier:v5 userName:v6 credentialID:v9 userHandle:v11 recordIdentifier:v13];

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
  v17 = [[a1 alloc] initWithRelyingPartyIdentifier:v16 userName:v15 credentialID:v14 userHandle:v13 recordIdentifier:v12];

  return v17;
}

- (ASCredentialServiceIdentifier)serviceIdentifier
{
  v2 = [[ASCredentialServiceIdentifier alloc] initWithIdentifier:self->_relyingPartyIdentifier type:0];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithRelyingPartyIdentifier:userName:credentialID:userHandle:recordIdentifier:", self->_relyingPartyIdentifier, self->_userName, self->_credentialID, self->_userHandle, self->_recordIdentifier}];
  [v4 setRank:self->_rank];
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_credentialIdentityStoreIdentifier);
  }

  return v4;
}

- (ASPasskeyCredentialIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
  v10 = [v4 decodeIntegerForKey:@"rank"];

  v11 = [(ASPasskeyCredentialIdentity *)self initWithRelyingPartyIdentifier:v5 userName:v6 credentialID:v8 userHandle:v9 recordIdentifier:v7];
  v12 = v11;
  if (v11)
  {
    v11->_rank = v10;
    v13 = v11;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  v5 = a3;
  [v5 encodeObject:relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v5 encodeObject:self->_userName forKey:@"userName"];
  [v5 encodeObject:self->_recordIdentifier forKey:@"recordIdentifier"];
  [v5 encodeObject:self->_credentialID forKey:@"credentialID"];
  [v5 encodeObject:self->_userHandle forKey:@"userHandle"];
  [v5 encodeInteger:self->_rank forKey:@"rank"];
}

@end