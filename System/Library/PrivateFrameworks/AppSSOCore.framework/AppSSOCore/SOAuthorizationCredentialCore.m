@interface SOAuthorizationCredentialCore
- (SOAuthorizationCredentialCore)initWithAuthorizationCredential:(id)a3;
- (SOAuthorizationCredentialCore)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOAuthorizationCredentialCore

- (SOAuthorizationCredentialCore)initWithAuthorizationCredential:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SOAuthorizationCredentialCore;
  v5 = [(SOAuthorizationCredentialCore *)&v15 init];
  if (v5)
  {
    v6 = [v4 httpAuthorizationHeaders];
    httpAuthorizationHeaders = v5->_httpAuthorizationHeaders;
    v5->_httpAuthorizationHeaders = v6;

    v8 = [v4 httpResponse];
    httpResponse = v5->_httpResponse;
    v5->_httpResponse = v8;

    v10 = [v4 httpBody];
    httpBody = v5->_httpBody;
    v5->_httpBody = v10;

    v12 = [v4 secKeyProxyEndpoints];
    secKeyProxyEndpoints = v5->_secKeyProxyEndpoints;
    v5->_secKeyProxyEndpoints = v12;
  }

  return v5;
}

- (SOAuthorizationCredentialCore)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SOAuthorizationCredentialCore;
  v5 = [(SOAuthorizationCredentialCore *)&v27 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_httpAuthorizationHeaders);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    httpAuthorizationHeaders = v5->_httpAuthorizationHeaders;
    v5->_httpAuthorizationHeaders = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_httpResponse);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    httpResponse = v5->_httpResponse;
    v5->_httpResponse = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_httpBody);
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    httpBody = v5->_httpBody;
    v5->_httpBody = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = NSStringFromSelector(sel_secKeyProxyEndpoints);
    v24 = [v4 decodeObjectOfClasses:v22 forKey:v23];
    secKeyProxyEndpoints = v5->_secKeyProxyEndpoints;
    v5->_secKeyProxyEndpoints = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  httpAuthorizationHeaders = self->_httpAuthorizationHeaders;
  v5 = a3;
  v6 = NSStringFromSelector(sel_httpAuthorizationHeaders);
  [v5 encodeObject:httpAuthorizationHeaders forKey:v6];

  httpResponse = self->_httpResponse;
  v8 = NSStringFromSelector(sel_httpResponse);
  [v5 encodeObject:httpResponse forKey:v8];

  httpBody = self->_httpBody;
  v10 = NSStringFromSelector(sel_httpBody);
  [v5 encodeObject:httpBody forKey:v10];

  secKeyProxyEndpoints = self->_secKeyProxyEndpoints;
  v12 = NSStringFromSelector(sel_secKeyProxyEndpoints);
  [v5 encodeObject:secKeyProxyEndpoints forKey:v12];
}

@end