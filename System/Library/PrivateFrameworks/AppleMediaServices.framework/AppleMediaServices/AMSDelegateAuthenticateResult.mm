@interface AMSDelegateAuthenticateResult
- (AMSDelegateAuthenticateResult)initWithCoder:(id)coder;
- (AMSDelegateAuthenticateResult)initWithServerResponse:(id)response;
- (NSString)token;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSDelegateAuthenticateResult

- (AMSDelegateAuthenticateResult)initWithServerResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = AMSDelegateAuthenticateResult;
  v6 = [(AMSDelegateAuthenticateResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverResponse, response);
  }

  return v7;
}

- (NSString)token
{
  serverResponse = [(AMSDelegateAuthenticateResult *)self serverResponse];
  v3 = [serverResponse objectForKeyedSubscript:@"delegateAuthToken"];

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

- (void)encodeWithCoder:(id)coder
{
  request = self->_request;
  coderCopy = coder;
  [coderCopy encodeObject:request forKey:@"rq"];
  [coderCopy encodeObject:self->_serverResponse forKey:@"sr"];
}

- (AMSDelegateAuthenticateResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AMSDelegateAuthenticateResult;
  v5 = [(AMSDelegateAuthenticateResult *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rq"];
    request = v5->_request;
    v5->_request = v6;

    v8 = objc_opt_class();
    v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"sr"];
    serverResponse = v5->_serverResponse;
    v5->_serverResponse = v9;
  }

  return v5;
}

@end