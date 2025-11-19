@interface ASOneTimeCodeCredentialRequest
+ (id)requestWithCredentialIdentity:(id)a3;
- (ASOneTimeCodeCredentialRequest)initWithCoder:(id)a3;
- (ASOneTimeCodeCredentialRequest)initWithCredentialIdentity:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASOneTimeCodeCredentialRequest

- (ASOneTimeCodeCredentialRequest)initWithCredentialIdentity:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASOneTimeCodeCredentialRequest;
  v5 = [(ASOneTimeCodeCredentialRequest *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    credentialIdentity = v5->_credentialIdentity;
    v5->_credentialIdentity = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)requestWithCredentialIdentity:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCredentialIdentity:v4];

  return v5;
}

- (ASOneTimeCodeCredentialRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentity"];

  v6 = [(ASOneTimeCodeCredentialRequest *)self initWithCredentialIdentity:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ASOneTimeCodeCredentialRequest allocWithZone:a3];
  credentialIdentity = self->_credentialIdentity;

  return [(ASOneTimeCodeCredentialRequest *)v4 initWithCredentialIdentity:credentialIdentity];
}

@end