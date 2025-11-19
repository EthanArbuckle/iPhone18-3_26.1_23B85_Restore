@interface ASOneTimeCodeCredentialIdentity
- (ASOneTimeCodeCredentialIdentity)initWithCoder:(id)a3;
- (id)_initWithFoundationCredentialIdentity:(id)a3;
- (id)_initWithServiceIdentifier:(id)a3 label:(id)a4 recordIdentifier:(id)a5 rank:(int64_t)a6 credentialIdentityStoreIdentifier:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASOneTimeCodeCredentialIdentity

- (id)_initWithServiceIdentifier:(id)a3 label:(id)a4 recordIdentifier:(id)a5 rank:(int64_t)a6 credentialIdentityStoreIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = ASOneTimeCodeCredentialIdentity;
  v16 = [(ASOneTimeCodeCredentialIdentity *)&v25 init];
  if (v16)
  {
    v17 = [v12 copy];
    serviceIdentifier = v16->_serviceIdentifier;
    v16->_serviceIdentifier = v17;

    v19 = [v14 copy];
    recordIdentifier = v16->_recordIdentifier;
    v16->_recordIdentifier = v19;

    v16->_rank = a6;
    v21 = [v13 copy];
    label = v16->_label;
    v16->_label = v21;

    objc_storeStrong(&v16->_credentialIdentityStoreIdentifier, a7);
    v23 = v16;
  }

  return v16;
}

- (id)_initWithFoundationCredentialIdentity:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceIdentifierType] == 1;
  v6 = [ASCredentialServiceIdentifier alloc];
  v7 = [v4 serviceIdentifier];
  v8 = [(ASCredentialServiceIdentifier *)v6 initWithIdentifier:v7 type:v5];

  v9 = [v4 user];
  v10 = [v4 externalRecordIdentifier];
  v11 = [v4 rank];
  v12 = [v4 owningExtensionState];

  v13 = [v12 credentialIdentityStoreIdentifier];
  v14 = [(ASOneTimeCodeCredentialIdentity *)self _initWithServiceIdentifier:v8 label:v9 recordIdentifier:v10 rank:v11 credentialIdentityStoreIdentifier:v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  credentialIdentityStoreIdentifier = self->_credentialIdentityStoreIdentifier;
  label = self->_label;
  serviceIdentifier = self->_serviceIdentifier;
  recordIdentifier = self->_recordIdentifier;
  rank = self->_rank;

  return [v4 _initWithServiceIdentifier:serviceIdentifier label:label recordIdentifier:recordIdentifier rank:rank credentialIdentityStoreIdentifier:credentialIdentityStoreIdentifier];
}

- (ASOneTimeCodeCredentialIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordIdentifier"];
  v8 = [v4 decodeIntegerForKey:@"rank"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentityStoreIdentifier"];

  v10 = [(ASOneTimeCodeCredentialIdentity *)self _initWithServiceIdentifier:v5 label:v6 recordIdentifier:v7 rank:v8 credentialIdentityStoreIdentifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  serviceIdentifier = self->_serviceIdentifier;
  v5 = a3;
  [v5 encodeObject:serviceIdentifier forKey:@"serviceIdentifier"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeObject:self->_recordIdentifier forKey:@"recordIdentifier"];
  [v5 encodeInteger:self->_rank forKey:@"rank"];
  [v5 encodeObject:self->_credentialIdentityStoreIdentifier forKey:@"credentialIdentityStoreIdentifier"];
}

@end