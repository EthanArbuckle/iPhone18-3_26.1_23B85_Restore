@interface SLWebTokenHandlerResponse
- (SLWebTokenHandlerResponse)initWithTokenResponse:(id)response usernames:(id)usernames displayname:(id)displayname;
@end

@implementation SLWebTokenHandlerResponse

- (SLWebTokenHandlerResponse)initWithTokenResponse:(id)response usernames:(id)usernames displayname:(id)displayname
{
  responseCopy = response;
  usernamesCopy = usernames;
  displaynameCopy = displayname;
  v23.receiver = self;
  v23.super_class = SLWebTokenHandlerResponse;
  v11 = [(SLWebTokenHandlerResponse *)&v23 init];
  if (v11)
  {
    token = [responseCopy token];
    token = v11->_token;
    v11->_token = token;

    refreshToken = [responseCopy refreshToken];
    refreshToken = v11->_refreshToken;
    v11->_refreshToken = refreshToken;

    idToken = [responseCopy idToken];
    idToken = v11->_idToken;
    v11->_idToken = idToken;

    expiryDate = [responseCopy expiryDate];
    expiryDate = v11->_expiryDate;
    v11->_expiryDate = expiryDate;

    grantedDataclasses = [responseCopy grantedDataclasses];
    grantedDataclasses = v11->_grantedDataclasses;
    v11->_grantedDataclasses = grantedDataclasses;

    objc_storeStrong(&v11->_displayName, displayname);
    objc_storeStrong(&v11->_usernames, usernames);
  }

  return v11;
}

@end