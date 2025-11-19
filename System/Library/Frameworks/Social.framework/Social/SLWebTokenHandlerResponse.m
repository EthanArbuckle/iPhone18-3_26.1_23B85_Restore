@interface SLWebTokenHandlerResponse
- (SLWebTokenHandlerResponse)initWithTokenResponse:(id)a3 usernames:(id)a4 displayname:(id)a5;
@end

@implementation SLWebTokenHandlerResponse

- (SLWebTokenHandlerResponse)initWithTokenResponse:(id)a3 usernames:(id)a4 displayname:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = SLWebTokenHandlerResponse;
  v11 = [(SLWebTokenHandlerResponse *)&v23 init];
  if (v11)
  {
    v12 = [v8 token];
    token = v11->_token;
    v11->_token = v12;

    v14 = [v8 refreshToken];
    refreshToken = v11->_refreshToken;
    v11->_refreshToken = v14;

    v16 = [v8 idToken];
    idToken = v11->_idToken;
    v11->_idToken = v16;

    v18 = [v8 expiryDate];
    expiryDate = v11->_expiryDate;
    v11->_expiryDate = v18;

    v20 = [v8 grantedDataclasses];
    grantedDataclasses = v11->_grantedDataclasses;
    v11->_grantedDataclasses = v20;

    objc_storeStrong(&v11->_displayName, a5);
    objc_storeStrong(&v11->_usernames, a4);
  }

  return v11;
}

@end