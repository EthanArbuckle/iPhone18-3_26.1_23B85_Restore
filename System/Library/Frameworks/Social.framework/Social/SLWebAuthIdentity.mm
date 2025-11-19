@interface SLWebAuthIdentity
- (SLWebAuthIdentity)initWithUsername:(id)a3 token:(id)a4 displayName:(id)a5 refreshToken:(id)a6 youTubeUsername:(id)a7 idToken:(id)a8 grantedDataclasses:(id)a9;
@end

@implementation SLWebAuthIdentity

- (SLWebAuthIdentity)initWithUsername:(id)a3 token:(id)a4 displayName:(id)a5 refreshToken:(id)a6 youTubeUsername:(id)a7 idToken:(id)a8 grantedDataclasses:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = SLWebAuthIdentity;
  v18 = [(SLWebAuthIdentity *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_username, a3);
    objc_storeStrong(&v19->_displayName, a5);
    objc_storeStrong(&v19->_token, a4);
    objc_storeStrong(&v19->_refreshToken, a6);
    objc_storeStrong(&v19->_youTubeUsername, a7);
    objc_storeStrong(&v19->_idToken, a8);
    objc_storeStrong(&v19->_grantedDataclasses, a9);
  }

  return v19;
}

@end