@interface SOAuthorizationCredential
- (SOAuthorizationCredential)initWithAuthorizationResult:(id)result;
- (SOAuthorizationCredential)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SOAuthorizationCredential

- (SOAuthorizationCredential)initWithAuthorizationResult:(id)result
{
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = SOAuthorizationCredential;
  v5 = [(SOAuthorizationCredential *)&v13 init];
  if (v5)
  {
    httpAuthorizationHeaders = [resultCopy httpAuthorizationHeaders];
    httpAuthorizationHeaders = v5->_httpAuthorizationHeaders;
    v5->_httpAuthorizationHeaders = httpAuthorizationHeaders;

    httpResponse = [resultCopy httpResponse];
    httpResponse = v5->_httpResponse;
    v5->_httpResponse = httpResponse;

    httpBody = [resultCopy httpBody];
    httpBody = v5->_httpBody;
    v5->_httpBody = httpBody;
  }

  return v5;
}

- (SOAuthorizationCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = SOAuthorizationCredential;
  v5 = [(SOAuthorizationCredential *)&v27 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_httpAuthorizationHeaders);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    httpAuthorizationHeaders = v5->_httpAuthorizationHeaders;
    v5->_httpAuthorizationHeaders = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_httpResponse);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    httpResponse = v5->_httpResponse;
    v5->_httpResponse = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_httpBody);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    httpBody = v5->_httpBody;
    v5->_httpBody = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = NSStringFromSelector(sel_secKeyProxyEndpoints);
    v24 = [coderCopy decodeObjectOfClasses:v22 forKey:v23];
    secKeyProxyEndpoints = v5->_secKeyProxyEndpoints;
    v5->_secKeyProxyEndpoints = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  httpAuthorizationHeaders = self->_httpAuthorizationHeaders;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_httpAuthorizationHeaders);
  [coderCopy encodeObject:httpAuthorizationHeaders forKey:v6];

  httpResponse = self->_httpResponse;
  v8 = NSStringFromSelector(sel_httpResponse);
  [coderCopy encodeObject:httpResponse forKey:v8];

  httpBody = self->_httpBody;
  v10 = NSStringFromSelector(sel_httpBody);
  [coderCopy encodeObject:httpBody forKey:v10];

  secKeyProxyEndpoints = self->_secKeyProxyEndpoints;
  v12 = NSStringFromSelector(sel_secKeyProxyEndpoints);
  [coderCopy encodeObject:secKeyProxyEndpoints forKey:v12];
}

@end