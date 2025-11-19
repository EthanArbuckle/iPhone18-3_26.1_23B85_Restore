@interface CNAccessAuthorization
+ (BOOL)canSetContactProperty:(id)a3;
+ (id)allAuthorizationKeys;
+ (id)allAuthorizationKeysVector;
+ (id)new;
+ (id)unauthorizedKeysVectorWithAuthorizer:(id)a3;
+ (id)unauthorizedKeysWithAuthorizer:(id)a3;
+ (void)removeUnavailableKeysFromContactKeyVector:(id)a3;
- (BOOL)authorizeFetchRequest:(id)a3 accessError:(id *)a4;
- (CNAccessAuthorization)init;
- (CNAccessAuthorization)initWithAuditToken:(id)a3;
- (CNAccessAuthorization)initWithAuditToken:(id)a3 assumedIdentity:(id)a4;
- (CNAccessAuthorization)initWithAuthorizer:(id)a3;
- (id)authorizedKeysForContactKeys:(id)a3;
- (id)unauthorizedKeysVector;
- (void)performWork:(id)a3 authorizingFetchRequest:(id)a4 failureHandler:(id)a5;
- (void)resetUnauthorizedKeysForFetchRequest:(id)a3;
@end

@implementation CNAccessAuthorization

- (id)unauthorizedKeysVector
{
  v3 = objc_opt_class();
  v4 = [(CNAccessAuthorization *)self authorizer];
  v5 = [v3 unauthorizedKeysVectorWithAuthorizer:v4];

  return v5;
}

void __51__CNAccessAuthorization_allAuthorizationKeysVector__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) allAuthorizationKeys];
  v1 = [CNContactKeyVector keyVectorWithKeys:v4];
  v2 = [v1 copy];
  v3 = allAuthorizationKeysVector_cn_once_object_0;
  allAuthorizationKeysVector_cn_once_object_0 = v2;
}

+ (id)allAuthorizationKeys
{
  if (allAuthorizationKeys_cn_once_token_1 != -1)
  {
    +[CNAccessAuthorization allAuthorizationKeys];
  }

  v3 = allAuthorizationKeys_cn_once_object_1;

  return v3;
}

void __45__CNAccessAuthorization_allAuthorizationKeys__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"note";
  v3[1] = @"addressingGrammars";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [v0 copy];
  v2 = allAuthorizationKeys_cn_once_object_1;
  allAuthorizationKeys_cn_once_object_1 = v1;
}

+ (id)allAuthorizationKeysVector
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CNAccessAuthorization_allAuthorizationKeysVector__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allAuthorizationKeysVector_cn_once_token_0 != -1)
  {
    dispatch_once(&allAuthorizationKeysVector_cn_once_token_0, block);
  }

  v2 = allAuthorizationKeysVector_cn_once_object_0;

  return v2;
}

+ (id)unauthorizedKeysVectorWithAuthorizer:(id)a3
{
  v3 = [a1 unauthorizedKeysWithAuthorizer:a3];
  v4 = [CNContactKeyVector keyVectorWithKeys:v3];

  v5 = +[CNContactKeyVector keyVector];
  v6 = [v4 isEqualToKeyVector:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

+ (id)unauthorizedKeysWithAuthorizer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (([v3 isNotesAccessGranted] & 1) == 0)
  {
    [v4 addObject:@"note"];
  }

  if (([v3 isAddressingGrammarAccessGranted] & 1) == 0)
  {
    [v4 addObject:@"addressingGrammars"];
  }

  return v4;
}

- (CNAccessAuthorization)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (id)new
{
  v2 = a1;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNAccessAuthorization)initWithAuditToken:(id)a3
{
  v4 = MEMORY[0x1E6996648];
  v5 = a3;
  v6 = [[v4 alloc] initWithAuditToken:v5 assumedIdentity:0];

  v7 = [(CNAccessAuthorization *)self initWithAuthorizer:v6];
  return v7;
}

- (CNAccessAuthorization)initWithAuditToken:(id)a3 assumedIdentity:(id)a4
{
  v6 = MEMORY[0x1E6996648];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithAuditToken:v8 assumedIdentity:v7];

  v10 = [(CNAccessAuthorization *)self initWithAuthorizer:v9];
  return v10;
}

- (CNAccessAuthorization)initWithAuthorizer:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNAccessAuthorization;
  v6 = [(CNAccessAuthorization *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authorizer, a3);
    v8 = v7;
  }

  return v7;
}

- (void)performWork:(id)a3 authorizingFetchRequest:(id)a4 failureHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v11 = 0;
  LODWORD(self) = [(CNAccessAuthorization *)self authorizeFetchRequest:a4 accessError:&v11];
  v10 = v11;
  if (self)
  {
    v8[2](v8);
  }

  else
  {
    v9[2](v9, v10);
  }
}

- (BOOL)authorizeFetchRequest:(id)a3 accessError:(id *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v34 = a3;
  [(CNAccessAuthorization *)self resetUnauthorizedKeysForFetchRequest:?];
  v5 = [(CNAccessAuthorization *)self unauthorizedKeysVector];
  if (v5)
  {
    objc_opt_class();
    v6 = v34;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v31 = v6;

    v33 = v8;
    if (v8)
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x3032000000;
      v58 = __Block_byref_object_copy__21;
      v59 = __Block_byref_object_dispose__21;
      v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      v54 = 1;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v9 = [v8 keysToFetch];
      v10 = [v9 countByEnumeratingWithState:&v47 objects:v64 count:16];
      if (v10)
      {
        v11 = *v48;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v48 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v47 + 1) + 8 * i);
            if (_CNIsObject_CNKeyDescriptorPrivate(v13))
            {
              v14 = objc_opt_respondsToSelector();
              v41 = 0;
              v42 = &v41;
              v43 = 0x3032000000;
              v44 = __Block_byref_object_copy__21;
              v45 = __Block_byref_object_dispose__21;
              v46 = objc_alloc_init(CNMutableContactKeyVector);
              v15 = [v13 _cn_requiredKeys];
              v16 = [v15 intersectsKeyVector:v5];

              if (v16)
              {
                v17 = v42[5];
                v18 = [v13 _cn_requiredKeys];
                [v17 unionKeyVector:v18];

                [v42[5] intersectKeyVector:v5];
                if ((v14 & 1) == 0)
                {
                  *(v52 + 24) = 0;
                }
              }

              v19 = [v13 _cn_optionalKeys];
              v20 = +[CNContactKeyVector keyVector];
              v21 = [v19 isEqualToKeyVector:v20];

              if ((v21 & 1) == 0)
              {
                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __59__CNAccessAuthorization_authorizeFetchRequest_accessError___block_invoke;
                v36[3] = &unk_1E7415A40;
                v37 = v5;
                v38 = &v41;
                v40 = (v14 & 1) == 0;
                v39 = &v51;
                [v13 _cn_executeGetterForRepresentedKeys:v36];
              }

              v22 = v42[5];
              if (v14)
              {
                v23 = +[CNContactKeyVector keyVector];
                v24 = [v22 isEqualToKeyVector:v23];

                if ((v24 & 1) == 0)
                {
                  v25 = [v42[5] copy];
                  [v13 _cn_setUnauthorizedKeys:v25];
                }
              }

              else
              {
                v35[0] = MEMORY[0x1E69E9820];
                v35[1] = 3221225472;
                v35[2] = __59__CNAccessAuthorization_authorizeFetchRequest_accessError___block_invoke_2;
                v35[3] = &unk_1E7415A68;
                v35[4] = &v55;
                [v22 enumeratePropertiesUsingBlock:v35];
              }

              _Block_object_dispose(&v41, 8);
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v47 objects:v64 count:16];
        }

        while (v10);
      }

      v26 = *(v52 + 24);
      v63[0] = v56[5];
      v62[0] = @"CNKeyPaths";
      v62[1] = @"CNInvalidRecords";
      v61 = v31;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
      v63[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
      v29 = [CNErrorFactory errorWithCode:102 userInfo:v28];
      if (a4 && (v26 & 1) == 0)
      {
        v29 = v29;
        *a4 = v29;
      }

      _Block_object_dispose(&v51, 8);
      _Block_object_dispose(&v55, 8);
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 1;
  }

  return v26;
}

uint64_t __59__CNAccessAuthorization_authorizeFetchRequest_accessError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNContactKeyVector keyVectorWithKey:v3];
  v5 = [v4 intersectsKeyVector:*(a1 + 32)];

  if (v5)
  {
    [*(*(*(a1 + 40) + 8) + 40) addKey:v3];
    if (*(a1 + 56) == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  return 0;
}

void __59__CNAccessAuthorization_authorizeFetchRequest_accessError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 key];
  [v2 addObject:v3];
}

- (void)resetUnauthorizedKeysForFetchRequest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6 keysToFetch];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 _cn_setUnauthorizedKeys:0];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (id)authorizedKeysForContactKeys:(id)a3
{
  v4 = a3;
  v5 = [(CNAccessAuthorization *)self unauthorizedKeysVector];
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__CNAccessAuthorization_authorizedKeysForContactKeys___block_invoke;
    v9[3] = &unk_1E7415A90;
    v10 = v5;
    v7 = [v4 _cn_filter:v9];
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t __54__CNAccessAuthorization_authorizedKeysForContactKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_CNIsObject_CNKeyDescriptorPrivate(v3))
  {
    v4 = [v3 _cn_requiredKeys];
    v5 = [v4 intersectsKeyVector:*(a1 + 32)] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (void)removeUnavailableKeysFromContactKeyVector:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 authorizationContext];
  v6 = [a1 unauthorizedKeysVectorWithAuthorizer:v5];

  if (v6)
  {
    [v7 minusKeyVector:v6];
  }
}

+ (BOOL)canSetContactProperty:(id)a3
{
  v4 = MEMORY[0x1E69966E8];
  v5 = a3;
  v6 = [v4 currentEnvironment];
  v7 = [v6 authorizationContext];
  v8 = [a1 unauthorizedKeysWithAuthorizer:v7];

  LOBYTE(v6) = [v8 containsObject:v5];
  return v6 ^ 1;
}

@end