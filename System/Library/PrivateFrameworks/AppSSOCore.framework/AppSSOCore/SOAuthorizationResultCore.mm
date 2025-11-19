@interface SOAuthorizationResultCore
- (SOAuthorizationResultCore)init;
- (SOAuthorizationResultCore)initWithHTTPAuthorizationHeaders:(id)a3;
- (SOAuthorizationResultCore)initWithHTTPResponse:(id)a3 httpBody:(id)a4;
@end

@implementation SOAuthorizationResultCore

- (SOAuthorizationResultCore)init
{
  v6.receiver = self;
  v6.super_class = SOAuthorizationResultCore;
  v2 = [(SOAuthorizationResultCore *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEC8] array];
    privateKeys = v2->_privateKeys;
    v2->_privateKeys = v3;
  }

  return v2;
}

- (SOAuthorizationResultCore)initWithHTTPAuthorizationHeaders:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SOAuthorizationResultCore;
  v6 = [(SOAuthorizationResultCore *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_httpAuthorizationHeaders, a3);
    v8 = [MEMORY[0x1E695DEC8] array];
    privateKeys = v7->_privateKeys;
    v7->_privateKeys = v8;
  }

  return v7;
}

- (SOAuthorizationResultCore)initWithHTTPResponse:(id)a3 httpBody:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SOAuthorizationResultCore;
  v9 = [(SOAuthorizationResultCore *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_httpResponse, a3);
    objc_storeStrong(&v10->_httpBody, a4);
    v11 = [MEMORY[0x1E695DEC8] array];
    privateKeys = v10->_privateKeys;
    v10->_privateKeys = v11;
  }

  return v10;
}

@end