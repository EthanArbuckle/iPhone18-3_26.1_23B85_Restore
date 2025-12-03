@interface ASPasswordCredentialIdentity
+ (ASPasswordCredentialIdentity)identityWithServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier user:(NSString *)user recordIdentifier:(NSString *)recordIdentifier;
- (ASPasswordCredentialIdentity)initWithCoder:(id)coder;
- (ASPasswordCredentialIdentity)initWithFoundationCredentialIdentity:(id)identity;
- (ASPasswordCredentialIdentity)initWithServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier user:(NSString *)user recordIdentifier:(NSString *)recordIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASPasswordCredentialIdentity

+ (ASPasswordCredentialIdentity)identityWithServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier user:(NSString *)user recordIdentifier:(NSString *)recordIdentifier
{
  v8 = recordIdentifier;
  v9 = user;
  v10 = serviceIdentifier;
  v11 = [[self alloc] initWithServiceIdentifier:v10 user:v9 recordIdentifier:v8];

  return v11;
}

- (ASPasswordCredentialIdentity)initWithServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier user:(NSString *)user recordIdentifier:(NSString *)recordIdentifier
{
  v9 = serviceIdentifier;
  v10 = user;
  v11 = recordIdentifier;
  v20.receiver = self;
  v20.super_class = ASPasswordCredentialIdentity;
  v12 = [(ASPasswordCredentialIdentity *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceIdentifier, serviceIdentifier);
    v14 = [(NSString *)v10 copy];
    v15 = v13->_user;
    v13->_user = v14;

    v16 = [(NSString *)v11 copy];
    v17 = v13->_recordIdentifier;
    v13->_recordIdentifier = v16;

    v18 = v13;
  }

  return v13;
}

- (ASPasswordCredentialIdentity)initWithFoundationCredentialIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [identityCopy serviceIdentifierType] == 1;
  v6 = [ASCredentialServiceIdentifier alloc];
  serviceIdentifier = [identityCopy serviceIdentifier];
  v8 = [(ASCredentialServiceIdentifier *)v6 initWithIdentifier:serviceIdentifier type:v5];

  user = [identityCopy user];
  externalRecordIdentifier = [identityCopy externalRecordIdentifier];
  v11 = [(ASPasswordCredentialIdentity *)self initWithServiceIdentifier:v8 user:user recordIdentifier:externalRecordIdentifier];

  if (v11)
  {
    owningExtensionState = [identityCopy owningExtensionState];
    credentialIdentityStoreIdentifier = [owningExtensionState credentialIdentityStoreIdentifier];
    credentialIdentityStoreIdentifier = v11->_credentialIdentityStoreIdentifier;
    v11->_credentialIdentityStoreIdentifier = credentialIdentityStoreIdentifier;

    v11->_rank = [identityCopy rank];
    v15 = v11;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithServiceIdentifier:user:recordIdentifier:", self->_serviceIdentifier, self->_user, self->_recordIdentifier}];
  [v4 setRank:self->_rank];
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_credentialIdentityStoreIdentifier);
  }

  return v4;
}

- (ASPasswordCredentialIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"user"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordIdentifier"];
  v8 = [coderCopy decodeIntegerForKey:@"rank"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentityStoreIdentifier"];

  v10 = [(ASPasswordCredentialIdentity *)self initWithServiceIdentifier:v5 user:v6 recordIdentifier:v7];
  v11 = v10;
  if (v10)
  {
    v10->_rank = v8;
    objc_storeStrong(&v10->_credentialIdentityStoreIdentifier, v9);
    v12 = v11;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  serviceIdentifier = self->_serviceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:serviceIdentifier forKey:@"serviceIdentifier"];
  [coderCopy encodeObject:self->_user forKey:@"user"];
  [coderCopy encodeObject:self->_recordIdentifier forKey:@"recordIdentifier"];
  [coderCopy encodeInteger:self->_rank forKey:@"rank"];
  [coderCopy encodeObject:self->_credentialIdentityStoreIdentifier forKey:@"credentialIdentityStoreIdentifier"];
}

@end