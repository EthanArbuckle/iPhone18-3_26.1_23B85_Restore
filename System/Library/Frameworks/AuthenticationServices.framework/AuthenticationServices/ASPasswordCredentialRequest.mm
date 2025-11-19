@interface ASPasswordCredentialRequest
+ (ASPasswordCredentialRequest)requestWithCredentialIdentity:(ASPasswordCredentialIdentity *)credentialIdentity;
- (ASPasswordCredentialRequest)initWithCoder:(id)a3;
- (ASPasswordCredentialRequest)initWithCredentialIdentity:(ASPasswordCredentialIdentity *)credentialIdentity;
- (id)copyWithZone:(_NSZone *)a3;
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
  v5 = [[a1 alloc] initWithCredentialIdentity:v4];

  return v5;
}

- (ASPasswordCredentialRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentity"];

  v6 = [(ASPasswordCredentialRequest *)self initWithCredentialIdentity:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASPasswordCredentialRequest allocWithZone:a3];
  credentialIdentity = self->_credentialIdentity;

  return [(ASPasswordCredentialRequest *)v4 initWithCredentialIdentity:credentialIdentity];
}

@end