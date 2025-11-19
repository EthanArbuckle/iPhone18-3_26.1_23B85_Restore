@interface TKTokenSession
+ (id)_localizedString:(id)a3 value:(id)a4;
- ($115C4C562B26FF47E01F9F4EA65B5887)creatorAuditToken;
- (BOOL)checkOperation:(int64_t)a3 usingKey:(id)a4 algorithm:(id)a5 parameters:(id)a6;
- (TKTokenSession)initWithToken:(TKToken *)token;
- (id)delegate;
- (id)errorWithResult:(id)a3 operation:(id)a4 forError:(id)a5;
- (void)attestKey:(id)a3 usingKey:(id)a4 nonce:(id)a5 reply:(id)a6;
- (void)beginAuthForOperation:(int64_t)a3 constraint:(id)a4 reply:(id)a5;
- (void)bumpKey:(id)a3 reply:(id)a4;
- (void)commitKey:(id)a3 reply:(id)a4;
- (void)createObjectWithAttributes:(id)a3 reply:(id)a4;
- (void)decapsulateSharedKey:(id)a3 usingKey:(id)a4 algorithm:(id)a5 reply:(id)a6;
- (void)decryptData:(id)a3 usingKey:(id)a4 algorithm:(id)a5 parameters:(id)a6 reply:(id)a7;
- (void)deleteObject:(id)a3 reply:(id)a4;
- (void)evaluateAccessControl:(id)a3 forOperation:(id)a4 reply:(id)a5;
- (void)evaluateAuthOperation:(id)a3 tokenOperation:(int64_t)a4 reply:(id)a5;
- (void)evaluateAuthOperation:(id)a3 tokenOperation:(int64_t)a4 retry:(BOOL)a5 reply:(id)a6;
- (void)finalizeAuthOperation:(id)a3 evaluatedAuthOperation:(id)a4 reply:(id)a5;
- (void)getAdvertisedItemsWithReply:(id)a3;
- (void)getAttributesOfObject:(id)a3 isCertificate:(BOOL)a4 reply:(id)a5;
- (void)objectID:(id)a3 operation:(int64_t)a4 inputData:(id)a5 algorithms:(id)a6 parameters:(id)a7 reply:(id)a8;
- (void)performKeyExchangeWithPublicKey:(id)a3 usingKey:(id)a4 algorithm:(id)a5 parameters:(id)a6 reply:(id)a7;
- (void)setCreatorAuditToken:(id *)a3;
- (void)signData:(id)a3 usingKey:(id)a4 algorithm:(id)a5 reply:(id)a6;
- (void)terminate;
@end

@implementation TKTokenSession

- (TKTokenSession)initWithToken:(TKToken *)token
{
  v5 = token;
  v14.receiver = self;
  v14.super_class = TKTokenSession;
  v6 = [(TKTokenSession *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, token);
    if ([(TKTokenSession *)v7 conformsToProtocol:&unk_1F5A90170])
    {
      objc_storeWeak(&v7->_delegate, v7);
    }

    v8 = MEMORY[0x1E696AEC0];
    v9 = [(TKToken *)v5 tokenID];
    v10 = [v8 stringWithFormat:@"session:%@", v9];
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    queue = v7->_queue;
    v7->_queue = v11;
  }

  return v7;
}

+ (id)_localizedString:(id)a3 value:(id)a4
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 bundleWithIdentifier:@"com.apple.CryptoTokenKit"];
  v9 = [v8 localizedStringForKey:v7 value:v6 table:0];

  return v9;
}

- (void)getAttributesOfObject:(id)a3 isCertificate:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(TKTokenSession *)self privateDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(TKTokenSession *)self privateDelegate];
    v52 = 0;
    v13 = [v12 tokenSession:self attributesOfObject:v8 error:&v52];
    v14 = v52;
    v15 = [v13 mutableCopy];

    if (v15)
    {
      if (v6)
      {
        [TKTokenID encodedCertificateID:v8];
      }

      else
      {
        [TKTokenID encodedKeyID:v8];
      }
      v36 = ;
      [v15 setObject:v36 forKeyedSubscript:*MEMORY[0x1E697AEE8]];

      v37 = *MEMORY[0x1E697ABC8];
      v38 = [v15 objectForKeyedSubscript:*MEMORY[0x1E697ABC8]];
      if (v38)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v39 = SecAccessControlCopyData();

          [v15 setObject:v39 forKeyedSubscript:v37];
          v38 = v39;
        }
      }
    }

    v9[2](v9, v15, v14);
  }

  else
  {
    v42 = self;
    v43 = v9;
    v16 = v8;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = [(TKTokenSession *)self token];
    v18 = [v17 configuration];
    v14 = [v18 keychainItems];

    v19 = [v14 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v49;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v48 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || v6)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || !v6)
            {
              continue;
            }
          }

          v24 = [v23 objectID];
          v25 = [v24 isEqual:v16];

          if (v25)
          {
            v35 = [v23 keychainAttributes];
            v9 = v43;
            v43[2](v43, v35, 0);

            v8 = v16;
            goto LABEL_36;
          }
        }

        v20 = [v14 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v8 = v16;
    if (!v6)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v26 = [(TKTokenSession *)v42 token];
      v27 = [v26 configuration];
      v14 = [v27 keychainItems];

      v28 = [v14 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v45;
        while (2)
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v45 != v30)
            {
              objc_enumerationMutation(v14);
            }

            v32 = *(*(&v44 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [v32 objectID];
              v34 = [v33 isEqual:v8];

              if (v34)
              {
                v41 = [v32 keychainAttributes];
                v9 = v43;
                v43[2](v43, v41, 0);

                goto LABEL_36;
              }
            }
          }

          v29 = [v14 countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:0];
    v9 = v43;
    v43[2](v43, 0, v14);
  }

LABEL_36:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthForOperation:(int64_t)a3 constraint:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(TKTokenSession *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(TKTokenSession *)self delegate];
    v16 = 0;
    v13 = [v12 tokenSession:self beginAuthForOperation:a3 constraint:v8 error:&v16];
    v14 = v16;

    v9[2](v9, v13, v14);
  }

  else
  {
    v15 = TK_LOG_token_4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [TKTokenSession beginAuthForOperation:v8 constraint:v15 reply:?];
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-5 userInfo:0];
    v9[2](v9, 0, v13);
  }
}

- (BOOL)checkOperation:(int64_t)a3 usingKey:(id)a4 algorithm:(id)a5 parameters:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(TKTokenSession *)self privateDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(TKTokenSession *)self privateDelegate];
    v16 = [v15 tokenSession:self supportsOperation:a3 usingKey:v10 algorithm:v11 parameters:v12];
  }

  else
  {
    v17 = [(TKTokenSession *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      v19 = 0;
      goto LABEL_7;
    }

    v15 = [(TKTokenSession *)self delegate];
    v16 = [v15 tokenSession:self supportsOperation:a3 usingKey:v10 algorithm:v11];
  }

  v19 = v16;

LABEL_7:
  return v19;
}

- (void)signData:(id)a3 usingKey:(id)a4 algorithm:(id)a5 reply:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(TKTokenSession *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(TKTokenSession *)self delegate];
    v23 = 0;
    v17 = [v16 tokenSession:self signData:v10 usingKey:v11 algorithm:v12 error:&v23];
    v18 = v23;

    v13[2](v13, v17, v18);
  }

  else
  {
    v19 = TK_LOG_token_4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(TKTokenSession *)self token];
      v21 = [v20 tokenID];
      *buf = 138543362;
      v25 = v21;
      _os_log_impl(&dword_1DF413000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement sign", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    v13[2](v13, 0, v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)decryptData:(id)a3 usingKey:(id)a4 algorithm:(id)a5 parameters:(id)a6 reply:(id)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(TKTokenSession *)self privateDelegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(TKTokenSession *)self privateDelegate];
    v30 = 0;
    v20 = [v19 tokenSession:self decryptData:v12 usingKey:v13 algorithm:v14 parameters:v15 error:&v30];
    v21 = v30;
LABEL_5:
    v24 = v21;

    v16[2](v16, v20, v24);
    goto LABEL_9;
  }

  v22 = [(TKTokenSession *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v19 = [(TKTokenSession *)self delegate];
    v29 = 0;
    v20 = [v19 tokenSession:self decryptData:v12 usingKey:v13 algorithm:v14 error:&v29];
    v21 = v29;
    goto LABEL_5;
  }

  v25 = TK_LOG_token_4();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [(TKTokenSession *)self token];
    v27 = [v26 tokenID];
    *buf = 138543362;
    v32 = v27;
    _os_log_impl(&dword_1DF413000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement decrypt", buf, 0xCu);
  }

  v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  v16[2](v16, 0, v20);
LABEL_9:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)performKeyExchangeWithPublicKey:(id)a3 usingKey:(id)a4 algorithm:(id)a5 parameters:(id)a6 reply:(id)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(TKTokenSession *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(TKTokenSession *)self delegate];
    v26 = 0;
    v20 = [v19 tokenSession:self performKeyExchangeWithPublicKey:v12 usingKey:v13 algorithm:v14 parameters:v15 error:&v26];
    v21 = v26;

    v16[2](v16, v20, v21);
  }

  else
  {
    v22 = TK_LOG_token_4();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(TKTokenSession *)self token];
      v24 = [v23 tokenID];
      *buf = 138543362;
      v28 = v24;
      _os_log_impl(&dword_1DF413000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement key exchange", buf, 0xCu);
    }

    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    v16[2](v16, 0, v20);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)decapsulateSharedKey:(id)a3 usingKey:(id)a4 algorithm:(id)a5 reply:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(TKTokenSession *)self privateDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(TKTokenSession *)self privateDelegate];
    v23 = 0;
    v17 = [v16 tokenSession:self decapsulateSharedKey:v10 usingKey:v11 algorithm:v12 error:&v23];
    v18 = v23;

    v13[2](v13, v17, v18);
  }

  else
  {
    v19 = TK_LOG_token_4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(TKTokenSession *)self token];
      v21 = [v20 tokenID];
      *buf = 138543362;
      v25 = v21;
      _os_log_impl(&dword_1DF413000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement decapsulate", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    v13[2](v13, 0, v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)attestKey:(id)a3 usingKey:(id)a4 nonce:(id)a5 reply:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(TKTokenSession *)self privateDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(TKTokenSession *)self privateDelegate];
    v23 = 0;
    v17 = [v16 tokenSession:self attestKey:v10 usingKey:v11 nonce:v12 error:&v23];
    v18 = v23;

    v13[2](v13, v17, v18);
  }

  else
  {
    v19 = TK_LOG_token_4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(TKTokenSession *)self token];
      v21 = [v20 tokenID];
      *buf = 138543362;
      v25 = v21;
      _os_log_impl(&dword_1DF413000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement attestation", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    v13[2](v13, 0, v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)bumpKey:(id)a3 reply:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TKTokenSession *)self privateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TKTokenSession *)self privateDelegate];
    v18 = 0;
    v11 = [v10 tokenSession:self bumpKey:v6 error:&v18];
    v12 = v18;

    v7[2](v7, v11, v12);
  }

  else
  {
    v13 = TK_LOG_token_4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(TKTokenSession *)self token];
      v15 = [v14 tokenID];
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_1DF413000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement key bumping", buf, 0xCu);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    v7[2](v7, 0, v16);
    v12 = v7;
    v7 = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)commitKey:(id)a3 reply:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TKTokenSession *)self privateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TKTokenSession *)self privateDelegate];
    v18 = 0;
    v11 = [v10 tokenSession:self commitKey:v6 error:&v18];
    v12 = v18;

    v7[2](v7, v11, v12);
  }

  else
  {
    v13 = TK_LOG_token_4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(TKTokenSession *)self token];
      v15 = [v14 tokenID];
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_1DF413000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement key committing", buf, 0xCu);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    v7[2](v7, 0, v16);
    v12 = v7;
    v7 = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)createObjectWithAttributes:(id)a3 reply:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TKTokenSession *)self privateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TKTokenSession *)self privateDelegate];
    v17 = 0;
    v11 = [v10 tokenSession:self createObjectWithAttributes:v6 error:&v17];
    v12 = v17;

    v7[2](v7, v11, v12);
  }

  else
  {
    v13 = TK_LOG_token_4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(TKTokenSession *)self token];
      v15 = [v14 tokenID];
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&dword_1DF413000, v13, OS_LOG_TYPE_INFO, "%{public}@: is read-only token", buf, 0xCu);
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    v7[2](v7, 0, v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)deleteObject:(id)a3 reply:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TKTokenSession *)self privateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TKTokenSession *)self privateDelegate];
    v18 = 0;
    v11 = [v10 tokenSession:self deleteObject:v6 error:&v18];
    v12 = v18;

    v7[2](v7, v11, v12);
  }

  else
  {
    v13 = TK_LOG_token_4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(TKTokenSession *)self token];
      v15 = [v14 tokenID];
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_1DF413000, v13, OS_LOG_TYPE_INFO, "%{public}@: is read-only token", buf, 0xCu);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    v7[2](v7, 0, v16);
    v12 = v7;
    v7 = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)evaluateAuthOperation:(id)a3 tokenOperation:(int64_t)a4 reply:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init([v10 baseClassForUI]);
  v12 = v11;
  if (v11)
  {
    [v11 importOperation:v10];

    v24 = &unk_1F5A851C8;
    v25[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v10 = [v13 mutableCopy];

    v14 = [(TKTokenSession *)self callerPID];

    if (v14)
    {
      v15 = [(TKTokenSession *)self callerPID];
      [v10 setObject:v15 forKeyedSubscript:&unk_1F5A851E0];
    }

    if (a4 == 1)
    {
      v16 = @"READ_DATA";
      v17 = @"read data";
    }

    else if (a4 == 2)
    {
      v16 = @"SIGN_DATA";
      v17 = @"sign data";
    }

    else
    {
      if ((a4 - 3) > 1)
      {
LABEL_12:
        v19 = [(TKTokenSession *)self LAContext];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __61__TKTokenSession_evaluateAuthOperation_tokenOperation_reply___block_invoke;
        v21[3] = &unk_1E86B8218;
        v22 = v9;
        v23 = a2;
        v21[4] = self;
        [v19 evaluatePolicy:1009 options:v10 reply:v21];

        goto LABEL_13;
      }

      v16 = @"DECRYPT_DATA";
      v17 = @"decrypt data";
    }

    v18 = [TKTokenSession _localizedString:v16 value:v17];
    [v10 setObject:v18 forKeyedSubscript:&unk_1F5A851F8];

    goto LABEL_12;
  }

  (*(v9 + 2))(v9, v10, 0);
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];
}

void __61__TKTokenSession_evaluateAuthOperation_tokenOperation_reply___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = [a2 objectForKeyedSubscript:&unk_1F5A85210];
    if (!v5)
    {
      __61__TKTokenSession_evaluateAuthOperation_tokenOperation_reply___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (void)finalizeAuthOperation:(id)a3 evaluatedAuthOperation:(id)a4 reply:(id)a5
{
  v38[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 importOperation:v9];
  v36 = 0;
  v11 = [v8 finishWithError:&v36];
  v12 = v36;
  v13 = [(TKTokenSession *)self caller];
  v14 = v13;
  if (v13)
  {
    [v13 auditToken];
  }

  else
  {
    memset(v35, 0, sizeof(v35));
  }

  [(TKTokenSession *)self auditAuthOperation:v8 auditToken:v35 success:v11];

  if (v11)
  {
    v10[2](v10, 1, 0);
    goto LABEL_25;
  }

  v15 = [v12 domain];
  if (![v15 isEqual:@"CryptoTokenKit"])
  {
    goto LABEL_19;
  }

  v16 = [v12 code];
  if (!v9)
  {
    goto LABEL_19;
  }

  if (v16 != -7)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v17 = [(TKTokenSession *)self LAContext];
  v18 = [v17 isCredentialSet:-3];

  if ((v18 & 1) == 0)
  {
    v15 = v9;
    v19 = [v15 PIN];
    if (v19)
    {
      v20 = v19;
      v34 = [v15 smartCard];
      v33 = [v34 slot];
      v21 = [v33 name];
      if ([v21 isEqualToString:@"Built-in NFC Slot"])
      {

LABEL_15:
        v24 = TK_LOG_token_4();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [TKTokenSession finalizeAuthOperation:v24 evaluatedAuthOperation:? reply:?];
        }

        v25 = [(TKTokenSession *)self LAContext];
        v26 = [v15 PIN];
        v27 = [v26 dataUsingEncoding:4];
        [v25 setCredential:v27 type:-3];

        goto LABEL_18;
      }

      [(TKTokenSession *)self name];
      v22 = v32 = v20;
      v23 = [v22 isEqualToString:@"Built-in NFC Slot"];

      if (v23)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v37 = *MEMORY[0x1E696AA08];
    v38[0] = v12;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1003 userInfo:v28];

    v12 = v29;
LABEL_19:
  }

  if (!v12)
  {
    v30 = TK_LOG_token_4();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [TKTokenSession finalizeAuthOperation:v30 evaluatedAuthOperation:? reply:?];
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
  }

  [v8 setAuthenticationError:v12];
  (v10)[2](v10, 0, v12);
LABEL_25:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)evaluateAuthOperation:(id)a3 tokenOperation:(int64_t)a4 retry:(BOOL)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__TKTokenSession_evaluateAuthOperation_tokenOperation_retry_reply___block_invoke;
  v14[3] = &unk_1E86B8268;
  v14[4] = self;
  v15 = v10;
  v18 = a5;
  v16 = v11;
  v17 = a4;
  v12 = v10;
  v13 = v11;
  [(TKTokenSession *)self evaluateAuthOperation:v12 tokenOperation:a4 reply:v14];
}

void __67__TKTokenSession_evaluateAuthOperation_tokenOperation_retry_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__TKTokenSession_evaluateAuthOperation_tokenOperation_retry_reply___block_invoke_2;
    v12[3] = &unk_1E86B8240;
    v16 = *(a1 + 64);
    v12[4] = v6;
    v8 = v7;
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v13 = v8;
    v15 = v9;
    v14 = v10;
    [v6 finalizeAuthOperation:v8 evaluatedAuthOperation:a2 reply:v12];
  }

  else
  {
    v11 = [*(a1 + 32) queue];
    dispatch_resume(v11);

    (*(*(a1 + 48) + 16))();
  }
}

void __67__TKTokenSession_evaluateAuthOperation_tokenOperation_retry_reply___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v20 = a3;
  v5 = 0;
  if (*(a1 + 64) == 1 && (a2 & 1) == 0)
  {
    v6 = [v20 domain];
    if ([v6 isEqual:@"CryptoTokenKit"])
    {
      v5 = [v20 code] == -5;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 32) LAContext];
    v9 = [v8 isCredentialSet:-3];

    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = [v20 domain];
    if ([v10 isEqual:@"CryptoTokenKit"])
    {
      v11 = [v20 code];

      if (v11 == -5)
      {
        v12 = [*(a1 + 32) smartCard];
        v13 = [v12 slot];
        v14 = [v13 name];
        v15 = [v14 isEqualToString:@"Built-in NFC Slot"];

        if (((v15 ^ 1) & v5 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

LABEL_13:
      if (!v5)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  if (!v5)
  {
LABEL_19:
    v19 = [*(a1 + 32) queue];
    dispatch_resume(v19);

    (*(*(a1 + 48) + 16))();
    goto LABEL_22;
  }

LABEL_17:
  v16 = [v20 userInfo];
  v17 = [v16 objectForKeyedSubscript:@"userSecretTriesLeft"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 integerValue];

    if (v18 < 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  [*(a1 + 32) evaluateAuthOperation:*(a1 + 40) tokenOperation:*(a1 + 56) retry:*(a1 + 64) reply:*(a1 + 48)];
LABEL_22:
}

- (void)evaluateAccessControl:(id)a3 forOperation:(id)a4 reply:(id)a5
{
  v8 = a5;
  v23 = 0;
  v9 = a4;
  v10 = a3;
  v11 = +[TKTokenKeychainItem operationMap];
  v12 = [v11 objectForKey:v9];
  v13 = [v12 integerValue];

  v14 = SecAccessControlCreateFromData();
  v15 = SecAccessControlGetConstraint();

  if (v15 && ![v15 isEqual:MEMORY[0x1E695E110]])
  {
    if ([v15 isEqual:MEMORY[0x1E695E118]])
    {
      v8[2](v8, 1, 0);
      goto LABEL_4;
    }

    v17 = [(TKTokenSession *)self LAContext];

    if (v17)
    {
      v18 = [(TKTokenSession *)self queue];
      dispatch_suspend(v18);

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__TKTokenSession_evaluateAccessControl_forOperation_reply___block_invoke;
      v20[3] = &unk_1E86B8290;
      v20[4] = self;
      v21 = v8;
      v22 = v13;
      [(TKTokenSession *)self beginAuthForOperation:v13 constraint:v15 reply:v20];

      goto LABEL_4;
    }

    v19 = TK_LOG_token_4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [TKTokenSession evaluateAccessControl:v19 forOperation:? reply:?];
    }
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-5 userInfo:0];
  (v8)[2](v8, 0, v16);

LABEL_4:
}

void __59__TKTokenSession_evaluateAccessControl_forOperation_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [*(a1 + 32) LAContext];
    v7 = [v6 isCredentialSet:-3];

    [*(a1 + 32) evaluateAuthOperation:v9 tokenOperation:*(a1 + 48) retry:v7 ^ 1u reply:*(a1 + 40)];
  }

  else
  {
    if (!v5)
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
    }

    v8 = [*(a1 + 32) queue];
    dispatch_resume(v8);

    (*(*(a1 + 40) + 16))();
  }
}

- (id)errorWithResult:(id)a3 operation:(id)a4 forError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (!a3)
  {
    v10 = [v8 domain];
    if ([v10 isEqualToString:@"CryptoTokenKit"] && objc_msgSend(v9, "code") == -9)
    {
      v11 = [v9 userInfo];
      v12 = [v11 objectForKeyedSubscript:@"operation"];

      if (v12)
      {
        goto LABEL_7;
      }

      v13 = [v9 userInfo];
      v10 = [v13 mutableCopy];

      [v10 setObject:v7 forKeyedSubscript:@"operation"];
      v14 = MEMORY[0x1E696ABC0];
      v15 = [v10 copy];
      v16 = [v14 errorWithDomain:@"CryptoTokenKit" code:-9 userInfo:v15];

      v9 = v16;
    }
  }

LABEL_7:

  return v9;
}

- (void)objectID:(id)a3 operation:(int64_t)a4 inputData:(id)a5 algorithms:(id)a6 parameters:(id)a7 reply:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a6;
  v20 = [[TKTokenKeyAlgorithm alloc] initWithAlgorithmsArray:v19];

  if ([(TKTokenSession *)self checkOperation:a4 usingKey:v15 algorithm:v20 parameters:v17])
  {
    if (v16)
    {
      if (a4 > 999)
      {
        if (a4 <= 1001)
        {
          if (a4 != 1000)
          {
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_6;
            v35[3] = &unk_1E86B82E0;
            v35[4] = self;
            v36 = v18;
            [(TKTokenSession *)self bumpKey:v15 reply:v35];
            v21 = v36;
LABEL_22:

            goto LABEL_26;
          }

          v27 = [(TKTokenSession *)self token];
          v28 = [v27 tokenID];
          v39 = 0;
          v29 = [v28 decodedKeyID:v16 error:&v39];
          v26 = v39;

          if (v29)
          {
            v30 = [v17 objectForKeyedSubscript:@"nonce"];
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_5;
            v37[3] = &unk_1E86B82B8;
            v37[4] = self;
            v38 = v18;
            [(TKTokenSession *)self attestKey:v29 usingKey:v15 nonce:v30 reply:v37];
          }

          else
          {
            (*(v18 + 2))(v18, 0, v26);
          }

LABEL_25:
          goto LABEL_26;
        }

        if (a4 == 1002)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_7;
          v33[3] = &unk_1E86B82E0;
          v33[4] = self;
          v34 = v18;
          [(TKTokenSession *)self commitKey:v15 reply:v33];
          v21 = v34;
          goto LABEL_22;
        }

        if (a4 == 1003)
        {
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_4;
          v40[3] = &unk_1E86B82B8;
          v40[4] = self;
          v41 = v18;
          [(TKTokenSession *)self decapsulateSharedKey:v16 usingKey:v15 algorithm:v20 reply:v40];
          v21 = v41;
          goto LABEL_22;
        }

LABEL_17:
        v32 = [MEMORY[0x1E696AAA8] currentHandler];
        v24 = [(TKTokenSession *)self token];
        v25 = [v24 tokenID];
        v31 = a4;
        v26 = v32;
        [v32 handleFailureInMethod:a2 object:self file:@"TKTokenSession.m" lineNumber:583 description:{@"invalid objectOperation %d on token %@", v31, v25}];

        goto LABEL_25;
      }

      if (a4 == 2)
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke;
        v46[3] = &unk_1E86B82B8;
        v46[4] = self;
        v47 = v18;
        [(TKTokenSession *)self signData:v16 usingKey:v15 algorithm:v20 reply:v46];
        v21 = v47;
        goto LABEL_22;
      }

      if (a4 == 3)
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_2;
        v44[3] = &unk_1E86B82B8;
        v44[4] = self;
        v45 = v18;
        [(TKTokenSession *)self decryptData:v16 usingKey:v15 algorithm:v20 parameters:v17 reply:v44];
        v21 = v45;
        goto LABEL_22;
      }

      if (a4 != 4)
      {
        goto LABEL_17;
      }

      v23 = [[TKTokenKeyExchangeParameters alloc] initWithParameters:v17];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_3;
      v42[3] = &unk_1E86B82B8;
      v42[4] = self;
      v43 = v18;
      [(TKTokenSession *)self performKeyExchangeWithPublicKey:v16 usingKey:v15 algorithm:v20 parameters:v23 reply:v42];
    }

    else
    {
      (*(v18 + 2))(v18, MEMORY[0x1E695E118], 0);
    }
  }

  else
  {
    v22 = [MEMORY[0x1E695DFB0] null];
    (*(v18 + 2))(v18, v22, 0);
  }

LABEL_26:
}

void __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 errorWithResult:v6 operation:@"osgn" forError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

void __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 errorWithResult:v6 operation:@"od" forError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

void __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 errorWithResult:v6 operation:@"ock" forError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

void __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 errorWithResult:v6 operation:@"okd" forError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

void __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 errorWithResult:v6 operation:@"oa" forError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

void __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_6(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = [MEMORY[0x1E695DEF0] data];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) errorWithResult:v5 operation:@"oko" forError:v8];
  (*(v6 + 16))(v6, v5, v7);
}

void __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_7(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = [MEMORY[0x1E695DEF0] data];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) errorWithResult:v5 operation:@"oko" forError:v8];
  (*(v6 + 16))(v6, v5, v7);
}

- (void)getAdvertisedItemsWithReply:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(TKTokenSession *)self token];
  v7 = [v6 configuration];
  v8 = [v7 keychainItems];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) keychainAttributes];
        [v5 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v4[2](v4, v5);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)terminate
{
  v3 = [(TKTokenSession *)self token];
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = [(TKTokenSession *)self token];
    v6 = [v8 delegate];
    v7 = [(TKTokenSession *)self token];
    [v6 token:v7 terminateSession:self];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)creatorAuditToken
{
  v3 = *&self[2].var0[6];
  *retstr->var0 = *&self[2].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setCreatorAuditToken:(id *)a3
{
  v3 = *a3->var0;
  *&self->_creatorAuditToken.val[4] = *&a3->var0[4];
  *self->_creatorAuditToken.val = v3;
}

- (void)beginAuthForOperation:(void *)a1 constraint:(uint64_t)a2 reply:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 token];
  v6 = [v5 tokenID];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_1DF413000, a3, OS_LOG_TYPE_ERROR, "%{public}@: does not support auth, failing constraint '%{public}@'", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __61__TKTokenSession_evaluateAuthOperation_tokenOperation_reply___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TKTokenSession.m" lineNumber:375 description:@"LAPolicyTokenAuthentication did not fill in LAResultTKAuthOperation"];
}

@end