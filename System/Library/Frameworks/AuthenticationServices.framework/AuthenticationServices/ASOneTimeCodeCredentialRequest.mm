@interface ASOneTimeCodeCredentialRequest
+ (id)requestWithCredentialIdentity:(id)identity;
- (ASOneTimeCodeCredentialRequest)initWithCoder:(id)coder;
- (ASOneTimeCodeCredentialRequest)initWithCredentialIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASOneTimeCodeCredentialRequest

- (ASOneTimeCodeCredentialRequest)initWithCredentialIdentity:(id)identity
{
  identityCopy = identity;
  v10.receiver = self;
  v10.super_class = ASOneTimeCodeCredentialRequest;
  v5 = [(ASOneTimeCodeCredentialRequest *)&v10 init];
  if (v5)
  {
    v6 = [identityCopy copy];
    credentialIdentity = v5->_credentialIdentity;
    v5->_credentialIdentity = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)requestWithCredentialIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[self alloc] initWithCredentialIdentity:identityCopy];

  return v5;
}

- (ASOneTimeCodeCredentialRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentity"];

  v6 = [(ASOneTimeCodeCredentialRequest *)self initWithCredentialIdentity:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASOneTimeCodeCredentialRequest allocWithZone:zone];
  credentialIdentity = self->_credentialIdentity;

  return [(ASOneTimeCodeCredentialRequest *)v4 initWithCredentialIdentity:credentialIdentity];
}

@end