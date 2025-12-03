@interface SLWebAuthIdentity
- (SLWebAuthIdentity)initWithUsername:(id)username token:(id)token displayName:(id)name refreshToken:(id)refreshToken youTubeUsername:(id)tubeUsername idToken:(id)idToken grantedDataclasses:(id)dataclasses;
@end

@implementation SLWebAuthIdentity

- (SLWebAuthIdentity)initWithUsername:(id)username token:(id)token displayName:(id)name refreshToken:(id)refreshToken youTubeUsername:(id)tubeUsername idToken:(id)idToken grantedDataclasses:(id)dataclasses
{
  usernameCopy = username;
  tokenCopy = token;
  nameCopy = name;
  refreshTokenCopy = refreshToken;
  tubeUsernameCopy = tubeUsername;
  idTokenCopy = idToken;
  dataclassesCopy = dataclasses;
  v26.receiver = self;
  v26.super_class = SLWebAuthIdentity;
  v18 = [(SLWebAuthIdentity *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_username, username);
    objc_storeStrong(&v19->_displayName, name);
    objc_storeStrong(&v19->_token, token);
    objc_storeStrong(&v19->_refreshToken, refreshToken);
    objc_storeStrong(&v19->_youTubeUsername, tubeUsername);
    objc_storeStrong(&v19->_idToken, idToken);
    objc_storeStrong(&v19->_grantedDataclasses, dataclasses);
  }

  return v19;
}

@end