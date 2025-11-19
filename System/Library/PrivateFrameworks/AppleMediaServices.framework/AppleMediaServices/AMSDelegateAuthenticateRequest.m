@interface AMSDelegateAuthenticateRequest
+ (id)preferredUserAgent;
- (AMSDelegateAuthenticateRequest)initWithChallenge:(id)a3;
- (AMSDelegateAuthenticateRequest)initWithChallenge:(id)a3 userAgent:(id)a4;
- (AMSDelegateAuthenticateRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSDelegateAuthenticateRequest

- (AMSDelegateAuthenticateRequest)initWithChallenge:(id)a3 userAgent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AMSDelegateAuthenticateRequest;
  v8 = [(AMSDelegateAuthenticateRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    challenge = v8->_challenge;
    v8->_challenge = v9;

    v11 = [v7 copy];
    userAgent = v8->_userAgent;
    v8->_userAgent = v11;
  }

  return v8;
}

- (AMSDelegateAuthenticateRequest)initWithChallenge:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSDelegateAuthenticateRequest;
  v5 = [(AMSDelegateAuthenticateRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    challenge = v5->_challenge;
    v5->_challenge = v6;
  }

  return v5;
}

+ (id)preferredUserAgent
{
  v2 = +[AMSProcessInfo currentProcess];
  v3 = [AMSUserAgent userAgentForProcessInfo:v2];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  challenge = self->_challenge;
  v5 = a3;
  [v5 encodeObject:challenge forKey:@"ch"];
  [v5 encodeObject:self->_userAgent forKey:@"ua"];
}

- (AMSDelegateAuthenticateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ch"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ua"];

  if (v6)
  {
    v7 = [(AMSDelegateAuthenticateRequest *)self initWithChallenge:v5 userAgent:v6];
  }

  else
  {
    v7 = [(AMSDelegateAuthenticateRequest *)self initWithChallenge:v5];
  }

  v8 = v7;

  return v8;
}

@end