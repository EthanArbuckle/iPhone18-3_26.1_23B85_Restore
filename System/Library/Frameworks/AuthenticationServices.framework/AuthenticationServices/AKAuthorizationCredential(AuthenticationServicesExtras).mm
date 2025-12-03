@interface AKAuthorizationCredential(AuthenticationServicesExtras)
- (ASAuthorizationAppleIDCredential)authenticationServicesCredential;
- (id)_credentialScopes;
@end

@implementation AKAuthorizationCredential(AuthenticationServicesExtras)

- (ASAuthorizationAppleIDCredential)authenticationServicesCredential
{
  v2 = [ASAuthorizationAppleIDCredential alloc];
  userIdentifier = [self userIdentifier];
  _credentialScopes = [self _credentialScopes];
  v5 = [(ASAuthorizationAppleIDCredential *)v2 initWithUser:userIdentifier authorizedScopes:_credentialScopes];

  identityToken = [self identityToken];
  [(ASAuthorizationAppleIDCredential *)v5 setIdentityToken:identityToken];

  authorizationCode = [self authorizationCode];
  [(ASAuthorizationAppleIDCredential *)v5 setAuthorizationCode:authorizationCode];

  state = [self state];
  [(ASAuthorizationAppleIDCredential *)v5 setState:state];

  userInformation = [self userInformation];
  v10 = userInformation;
  if (userInformation)
  {
    selectedEmail = [userInformation selectedEmail];
    [(ASAuthorizationAppleIDCredential *)v5 setEmail:selectedEmail];

    v12 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    familyName = [v10 familyName];
    [v12 setFamilyName:familyName];

    givenName = [v10 givenName];
    [v12 setGivenName:givenName];

    [(ASAuthorizationAppleIDCredential *)v5 setFullName:v12];
    if (objc_opt_respondsToSelector())
    {
      -[ASAuthorizationAppleIDCredential setUserAgeRange:](v5, "setUserAgeRange:", [v10 userAgeRange]);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    if ([self isLikelyRealUser])
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    [(ASAuthorizationAppleIDCredential *)v5 setRealUserStatus:v15];
  }

  return v5;
}

- (id)_credentialScopes
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  authorizedScopes = [self authorizedScopes];
  v4 = [v2 initWithCapacity:{objc_msgSend(authorizedScopes, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  authorizedScopes2 = [self authorizedScopes];
  v6 = [authorizedScopes2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = *MEMORY[0x1E698DC00];
    v10 = *MEMORY[0x1E698DBF8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(authorizedScopes2);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 isEqualToString:v9];
        v14 = @"full_name";
        if ((v13 & 1) == 0)
        {
          v15 = [v12 isEqualToString:v10];
          v14 = @"email";
          if (!v15)
          {
            continue;
          }
        }

        [v4 addObject:v14];
      }

      v7 = [authorizedScopes2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end