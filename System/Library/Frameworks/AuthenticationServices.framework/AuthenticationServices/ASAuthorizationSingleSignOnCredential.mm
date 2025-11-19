@interface ASAuthorizationSingleSignOnCredential
+ (id)emptyCredential;
- (ASAuthorizationSingleSignOnCredential)init;
- (ASAuthorizationSingleSignOnCredential)initWithAuthenticatedResponse:(id)a3;
- (ASAuthorizationSingleSignOnCredential)initWithAuthenticatedResponse:(id)a3 privateKeys:(id)a4;
- (NSString)description;
- (void)_initWithAuthenticatedResponse:(id)a3;
@end

@implementation ASAuthorizationSingleSignOnCredential

+ (id)emptyCredential
{
  v2 = [[a1 alloc] initWithAuthenticatedResponse:0];

  return v2;
}

- (ASAuthorizationSingleSignOnCredential)init
{
  [(ASAuthorizationSingleSignOnCredential *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ASAuthorizationSingleSignOnCredential)initWithAuthenticatedResponse:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASAuthorizationSingleSignOnCredential;
  v5 = [(ASAuthorizationSingleSignOnCredential *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEC8] array];
    privateKeys = v5->_privateKeys;
    v5->_privateKeys = v6;

    if (v4)
    {
      [(ASAuthorizationSingleSignOnCredential *)v5 _initWithAuthenticatedResponse:v4];
    }

    v8 = v5;
  }

  return v5;
}

- (ASAuthorizationSingleSignOnCredential)initWithAuthenticatedResponse:(id)a3 privateKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ASAuthorizationSingleSignOnCredential;
  v8 = [(ASAuthorizationSingleSignOnCredential *)&v13 init];
  if (v8)
  {
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E695DEC8] array];
    }

    privateKeys = v8->_privateKeys;
    v8->_privateKeys = v9;

    if (v6)
    {
      [(ASAuthorizationSingleSignOnCredential *)v8 _initWithAuthenticatedResponse:v6];
    }

    v11 = v8;
  }

  return v8;
}

- (void)_initWithAuthenticatedResponse:(id)a3
{
  objc_storeStrong(&self->_authenticatedResponse, a3);
  v5 = a3;
  v6 = [v5 allHeaderFields];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ASAuthorizationSingleSignOnCredential__initWithAuthenticatedResponse___block_invoke;
  v7[3] = &unk_1E7AF8A10;
  v7[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

void __72__ASAuthorizationSingleSignOnCredential__initWithAuthenticatedResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  if ([v17 isEqualToString:@"state"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    v6 = *(a1 + 32);
    v7 = v5;
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;
  }

  else if ([v17 isEqualToString:@"access_token"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 dataUsingEncoding:4];
      v10 = *(a1 + 32);
      v8 = *(v10 + 16);
      *(v10 + 16) = v9;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_15;
      }

      v13 = *(a1 + 32);
      v14 = v5;
      v8 = *(v13 + 16);
      *(v13 + 16) = v14;
    }
  }

  else
  {
    if (![v17 isEqualToString:@"id_token"])
    {
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v5 dataUsingEncoding:4];
      v12 = *(a1 + 32);
      v8 = *(v12 + 24);
      *(v12 + 24) = v11;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_15;
      }

      v15 = *(a1 + 32);
      v16 = v5;
      v8 = *(v15 + 24);
      *(v15 + 24) = v16;
    }
  }

LABEL_15:
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"present";
  if (self->_accessToken)
  {
    v8 = @"present";
  }

  else
  {
    v8 = @"not present";
  }

  if (self->_identityToken)
  {
    v9 = @"present";
  }

  else
  {
    v9 = @"not present";
  }

  if (!self->_authenticatedResponse)
  {
    v7 = @"not present";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, state: %@, accessToken: %@, identityToken: %@, authorizedScopes: %@, authenticatedResponse: %@, privateKeys: %@>", v5, self, self->_state, v8, v9, self->_authorizedScopes, v7, self->_privateKeys];

  return v10;
}

@end