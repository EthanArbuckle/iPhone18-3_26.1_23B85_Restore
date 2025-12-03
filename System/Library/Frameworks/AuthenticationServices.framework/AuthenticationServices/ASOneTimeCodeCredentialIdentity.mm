@interface ASOneTimeCodeCredentialIdentity
- (ASOneTimeCodeCredentialIdentity)initWithCoder:(id)coder;
- (id)_initWithFoundationCredentialIdentity:(id)identity;
- (id)_initWithServiceIdentifier:(id)identifier label:(id)label recordIdentifier:(id)recordIdentifier rank:(int64_t)rank credentialIdentityStoreIdentifier:(id)storeIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASOneTimeCodeCredentialIdentity

- (id)_initWithServiceIdentifier:(id)identifier label:(id)label recordIdentifier:(id)recordIdentifier rank:(int64_t)rank credentialIdentityStoreIdentifier:(id)storeIdentifier
{
  identifierCopy = identifier;
  labelCopy = label;
  recordIdentifierCopy = recordIdentifier;
  storeIdentifierCopy = storeIdentifier;
  v25.receiver = self;
  v25.super_class = ASOneTimeCodeCredentialIdentity;
  v16 = [(ASOneTimeCodeCredentialIdentity *)&v25 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    serviceIdentifier = v16->_serviceIdentifier;
    v16->_serviceIdentifier = v17;

    v19 = [recordIdentifierCopy copy];
    recordIdentifier = v16->_recordIdentifier;
    v16->_recordIdentifier = v19;

    v16->_rank = rank;
    v21 = [labelCopy copy];
    label = v16->_label;
    v16->_label = v21;

    objc_storeStrong(&v16->_credentialIdentityStoreIdentifier, storeIdentifier);
    v23 = v16;
  }

  return v16;
}

- (id)_initWithFoundationCredentialIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [identityCopy serviceIdentifierType] == 1;
  v6 = [ASCredentialServiceIdentifier alloc];
  serviceIdentifier = [identityCopy serviceIdentifier];
  v8 = [(ASCredentialServiceIdentifier *)v6 initWithIdentifier:serviceIdentifier type:v5];

  user = [identityCopy user];
  externalRecordIdentifier = [identityCopy externalRecordIdentifier];
  rank = [identityCopy rank];
  owningExtensionState = [identityCopy owningExtensionState];

  credentialIdentityStoreIdentifier = [owningExtensionState credentialIdentityStoreIdentifier];
  v14 = [(ASOneTimeCodeCredentialIdentity *)self _initWithServiceIdentifier:v8 label:user recordIdentifier:externalRecordIdentifier rank:rank credentialIdentityStoreIdentifier:credentialIdentityStoreIdentifier];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  credentialIdentityStoreIdentifier = self->_credentialIdentityStoreIdentifier;
  label = self->_label;
  serviceIdentifier = self->_serviceIdentifier;
  recordIdentifier = self->_recordIdentifier;
  rank = self->_rank;

  return [v4 _initWithServiceIdentifier:serviceIdentifier label:label recordIdentifier:recordIdentifier rank:rank credentialIdentityStoreIdentifier:credentialIdentityStoreIdentifier];
}

- (ASOneTimeCodeCredentialIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordIdentifier"];
  v8 = [coderCopy decodeIntegerForKey:@"rank"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentityStoreIdentifier"];

  v10 = [(ASOneTimeCodeCredentialIdentity *)self _initWithServiceIdentifier:v5 label:v6 recordIdentifier:v7 rank:v8 credentialIdentityStoreIdentifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  serviceIdentifier = self->_serviceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:serviceIdentifier forKey:@"serviceIdentifier"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeObject:self->_recordIdentifier forKey:@"recordIdentifier"];
  [coderCopy encodeInteger:self->_rank forKey:@"rank"];
  [coderCopy encodeObject:self->_credentialIdentityStoreIdentifier forKey:@"credentialIdentityStoreIdentifier"];
}

@end