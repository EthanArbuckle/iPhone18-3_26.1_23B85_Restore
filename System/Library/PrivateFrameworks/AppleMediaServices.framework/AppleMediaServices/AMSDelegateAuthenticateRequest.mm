@interface AMSDelegateAuthenticateRequest
+ (id)preferredUserAgent;
- (AMSDelegateAuthenticateRequest)initWithChallenge:(id)challenge;
- (AMSDelegateAuthenticateRequest)initWithChallenge:(id)challenge userAgent:(id)agent;
- (AMSDelegateAuthenticateRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSDelegateAuthenticateRequest

- (AMSDelegateAuthenticateRequest)initWithChallenge:(id)challenge userAgent:(id)agent
{
  challengeCopy = challenge;
  agentCopy = agent;
  v14.receiver = self;
  v14.super_class = AMSDelegateAuthenticateRequest;
  v8 = [(AMSDelegateAuthenticateRequest *)&v14 init];
  if (v8)
  {
    v9 = [challengeCopy copy];
    challenge = v8->_challenge;
    v8->_challenge = v9;

    v11 = [agentCopy copy];
    userAgent = v8->_userAgent;
    v8->_userAgent = v11;
  }

  return v8;
}

- (AMSDelegateAuthenticateRequest)initWithChallenge:(id)challenge
{
  challengeCopy = challenge;
  v9.receiver = self;
  v9.super_class = AMSDelegateAuthenticateRequest;
  v5 = [(AMSDelegateAuthenticateRequest *)&v9 init];
  if (v5)
  {
    v6 = [challengeCopy copy];
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

- (void)encodeWithCoder:(id)coder
{
  challenge = self->_challenge;
  coderCopy = coder;
  [coderCopy encodeObject:challenge forKey:@"ch"];
  [coderCopy encodeObject:self->_userAgent forKey:@"ua"];
}

- (AMSDelegateAuthenticateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ch"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ua"];

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