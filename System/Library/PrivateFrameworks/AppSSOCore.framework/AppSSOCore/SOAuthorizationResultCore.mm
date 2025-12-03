@interface SOAuthorizationResultCore
- (SOAuthorizationResultCore)init;
- (SOAuthorizationResultCore)initWithHTTPAuthorizationHeaders:(id)headers;
- (SOAuthorizationResultCore)initWithHTTPResponse:(id)response httpBody:(id)body;
@end

@implementation SOAuthorizationResultCore

- (SOAuthorizationResultCore)init
{
  v6.receiver = self;
  v6.super_class = SOAuthorizationResultCore;
  v2 = [(SOAuthorizationResultCore *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DEC8] array];
    privateKeys = v2->_privateKeys;
    v2->_privateKeys = array;
  }

  return v2;
}

- (SOAuthorizationResultCore)initWithHTTPAuthorizationHeaders:(id)headers
{
  headersCopy = headers;
  v11.receiver = self;
  v11.super_class = SOAuthorizationResultCore;
  v6 = [(SOAuthorizationResultCore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_httpAuthorizationHeaders, headers);
    array = [MEMORY[0x1E695DEC8] array];
    privateKeys = v7->_privateKeys;
    v7->_privateKeys = array;
  }

  return v7;
}

- (SOAuthorizationResultCore)initWithHTTPResponse:(id)response httpBody:(id)body
{
  responseCopy = response;
  bodyCopy = body;
  v14.receiver = self;
  v14.super_class = SOAuthorizationResultCore;
  v9 = [(SOAuthorizationResultCore *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_httpResponse, response);
    objc_storeStrong(&v10->_httpBody, body);
    array = [MEMORY[0x1E695DEC8] array];
    privateKeys = v10->_privateKeys;
    v10->_privateKeys = array;
  }

  return v10;
}

@end