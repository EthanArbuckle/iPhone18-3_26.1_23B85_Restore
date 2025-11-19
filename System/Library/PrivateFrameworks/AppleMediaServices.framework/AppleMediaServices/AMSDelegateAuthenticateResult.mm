@interface AMSDelegateAuthenticateResult
- (AMSDelegateAuthenticateResult)initWithCoder:(id)a3;
- (AMSDelegateAuthenticateResult)initWithServerResponse:(id)a3;
- (NSString)token;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSDelegateAuthenticateResult

- (AMSDelegateAuthenticateResult)initWithServerResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSDelegateAuthenticateResult;
  v6 = [(AMSDelegateAuthenticateResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverResponse, a3);
  }

  return v7;
}

- (NSString)token
{
  v2 = [(AMSDelegateAuthenticateResult *)self serverResponse];
  v3 = [v2 objectForKeyedSubscript:@"delegateAuthToken"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  request = self->_request;
  v5 = a3;
  [v5 encodeObject:request forKey:@"rq"];
  [v5 encodeObject:self->_serverResponse forKey:@"sr"];
}

- (AMSDelegateAuthenticateResult)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSDelegateAuthenticateResult;
  v5 = [(AMSDelegateAuthenticateResult *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rq"];
    request = v5->_request;
    v5->_request = v6;

    v8 = objc_opt_class();
    v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"sr"];
    serverResponse = v5->_serverResponse;
    v5->_serverResponse = v9;
  }

  return v5;
}

@end