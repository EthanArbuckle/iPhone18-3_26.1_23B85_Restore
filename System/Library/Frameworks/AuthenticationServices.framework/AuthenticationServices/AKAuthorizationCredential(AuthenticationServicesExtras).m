@interface AKAuthorizationCredential(AuthenticationServicesExtras)
- (ASAuthorizationAppleIDCredential)authenticationServicesCredential;
- (id)_credentialScopes;
@end

@implementation AKAuthorizationCredential(AuthenticationServicesExtras)

- (ASAuthorizationAppleIDCredential)authenticationServicesCredential
{
  v2 = [ASAuthorizationAppleIDCredential alloc];
  v3 = [a1 userIdentifier];
  v4 = [a1 _credentialScopes];
  v5 = [(ASAuthorizationAppleIDCredential *)v2 initWithUser:v3 authorizedScopes:v4];

  v6 = [a1 identityToken];
  [(ASAuthorizationAppleIDCredential *)v5 setIdentityToken:v6];

  v7 = [a1 authorizationCode];
  [(ASAuthorizationAppleIDCredential *)v5 setAuthorizationCode:v7];

  v8 = [a1 state];
  [(ASAuthorizationAppleIDCredential *)v5 setState:v8];

  v9 = [a1 userInformation];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 selectedEmail];
    [(ASAuthorizationAppleIDCredential *)v5 setEmail:v11];

    v12 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v13 = [v10 familyName];
    [v12 setFamilyName:v13];

    v14 = [v10 givenName];
    [v12 setGivenName:v14];

    [(ASAuthorizationAppleIDCredential *)v5 setFullName:v12];
    if (objc_opt_respondsToSelector())
    {
      -[ASAuthorizationAppleIDCredential setUserAgeRange:](v5, "setUserAgeRange:", [v10 userAgeRange]);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    if ([a1 isLikelyRealUser])
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
  v3 = [a1 authorizedScopes];
  v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a1 authorizedScopes];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
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

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end