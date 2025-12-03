@interface ASPasswordCredentialRequest
+ (ASPasswordCredentialRequest)requestWithCredentialIdentity:(ASPasswordCredentialIdentity *)credentialIdentity;
- (ASPasswordCredentialRequest)initWithCoder:(id)coder;
- (ASPasswordCredentialRequest)initWithCredentialIdentity:(ASPasswordCredentialIdentity *)credentialIdentity;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASPasswordCredentialRequest

- (ASPasswordCredentialRequest)initWithCredentialIdentity:(ASPasswordCredentialIdentity *)credentialIdentity
{
  v4 = credentialIdentity;
  v10.receiver = self;
  v10.super_class = ASPasswordCredentialRequest;
  v5 = [(ASPasswordCredentialRequest *)&v10 init];
  if (v5)
  {
    v6 = [(ASPasswordCredentialIdentity *)v4 copy];
    v7 = v5->_credentialIdentity;
    v5->_credentialIdentity = v6;

    v8 = v5;
  }

  return v5;
}

+ (ASPasswordCredentialRequest)requestWithCredentialIdentity:(ASPasswordCredentialIdentity *)credentialIdentity
{
  v4 = credentialIdentity;
  v5 = [[self alloc] initWithCredentialIdentity:v4];

  return v5;
}

- (ASPasswordCredentialRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentity"];

  v6 = [(ASPasswordCredentialRequest *)self initWithCredentialIdentity:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ASPasswordCredentialRequest allocWithZone:zone];
  credentialIdentity = self->_credentialIdentity;

  return [(ASPasswordCredentialRequest *)v4 initWithCredentialIdentity:credentialIdentity];
}

@end