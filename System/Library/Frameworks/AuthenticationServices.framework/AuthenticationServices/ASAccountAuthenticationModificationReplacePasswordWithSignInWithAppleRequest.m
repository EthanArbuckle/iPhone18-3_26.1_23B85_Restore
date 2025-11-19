@interface ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest
- (ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest)initWithUser:(NSString *)user serviceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier userInfo:(NSDictionary *)userInfo;
- (ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest)initWithUser:(id)a3 password:(id)a4 extension:(id)a5 serviceIdentifier:(id)a6 userInfo:(id)a7;
@end

@implementation ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest

- (ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest)initWithUser:(NSString *)user serviceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier userInfo:(NSDictionary *)userInfo
{
  v8 = user;
  v9 = serviceIdentifier;
  v10 = userInfo;
  v18.receiver = self;
  v18.super_class = ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest;
  v11 = [(ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest *)&v18 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    v13 = v11->_user;
    v11->_user = v12;

    objc_storeStrong(&v11->_serviceIdentifier, serviceIdentifier);
    v14 = [(NSDictionary *)v10 copy];
    v15 = v11->_userInfo;
    v11->_userInfo = v14;

    v16 = v11;
  }

  return v11;
}

- (ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest)initWithUser:(id)a3 password:(id)a4 extension:(id)a5 serviceIdentifier:(id)a6 userInfo:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest;
  v17 = [(ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest *)&v26 init];
  if (v17)
  {
    v18 = [v12 copy];
    user = v17->_user;
    v17->_user = v18;

    v20 = [v13 copy];
    password = v17->_password;
    v17->_password = v20;

    objc_storeStrong(&v17->_extension, a5);
    objc_storeStrong(&v17->_serviceIdentifier, a6);
    v22 = [v16 copy];
    userInfo = v17->_userInfo;
    v17->_userInfo = v22;

    v24 = v17;
  }

  return v17;
}

@end