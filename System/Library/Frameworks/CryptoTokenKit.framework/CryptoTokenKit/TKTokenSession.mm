@interface TKTokenSession
+ (id)_localizedString:(id)string value:(id)value;
- ($115C4C562B26FF47E01F9F4EA65B5887)creatorAuditToken;
- (BOOL)checkOperation:(int64_t)operation usingKey:(id)key algorithm:(id)algorithm parameters:(id)parameters;
- (TKTokenSession)initWithToken:(TKToken *)token;
- (id)delegate;
- (id)errorWithResult:(id)result operation:(id)operation forError:(id)error;
- (void)attestKey:(id)key usingKey:(id)usingKey nonce:(id)nonce reply:(id)reply;
- (void)beginAuthForOperation:(int64_t)operation constraint:(id)constraint reply:(id)reply;
- (void)bumpKey:(id)key reply:(id)reply;
- (void)commitKey:(id)key reply:(id)reply;
- (void)createObjectWithAttributes:(id)attributes reply:(id)reply;
- (void)decapsulateSharedKey:(id)key usingKey:(id)usingKey algorithm:(id)algorithm reply:(id)reply;
- (void)decryptData:(id)data usingKey:(id)key algorithm:(id)algorithm parameters:(id)parameters reply:(id)reply;
- (void)deleteObject:(id)object reply:(id)reply;
- (void)evaluateAccessControl:(id)control forOperation:(id)operation reply:(id)reply;
- (void)evaluateAuthOperation:(id)operation tokenOperation:(int64_t)tokenOperation reply:(id)reply;
- (void)evaluateAuthOperation:(id)operation tokenOperation:(int64_t)tokenOperation retry:(BOOL)retry reply:(id)reply;
- (void)finalizeAuthOperation:(id)operation evaluatedAuthOperation:(id)authOperation reply:(id)reply;
- (void)getAdvertisedItemsWithReply:(id)reply;
- (void)getAttributesOfObject:(id)object isCertificate:(BOOL)certificate reply:(id)reply;
- (void)objectID:(id)d operation:(int64_t)operation inputData:(id)data algorithms:(id)algorithms parameters:(id)parameters reply:(id)reply;
- (void)performKeyExchangeWithPublicKey:(id)key usingKey:(id)usingKey algorithm:(id)algorithm parameters:(id)parameters reply:(id)reply;
- (void)setCreatorAuditToken:(id *)token;
- (void)signData:(id)data usingKey:(id)key algorithm:(id)algorithm reply:(id)reply;
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
    tokenID = [(TKToken *)v5 tokenID];
    v10 = [v8 stringWithFormat:@"session:%@", tokenID];
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    queue = v7->_queue;
    v7->_queue = v11;
  }

  return v7;
}

+ (id)_localizedString:(id)string value:(id)value
{
  v5 = MEMORY[0x1E696AAE8];
  valueCopy = value;
  stringCopy = string;
  v8 = [v5 bundleWithIdentifier:@"com.apple.CryptoTokenKit"];
  v9 = [v8 localizedStringForKey:stringCopy value:valueCopy table:0];

  return v9;
}

- (void)getAttributesOfObject:(id)object isCertificate:(BOOL)certificate reply:(id)reply
{
  certificateCopy = certificate;
  v55 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  replyCopy = reply;
  privateDelegate = [(TKTokenSession *)self privateDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    privateDelegate2 = [(TKTokenSession *)self privateDelegate];
    v52 = 0;
    v13 = [privateDelegate2 tokenSession:self attributesOfObject:objectCopy error:&v52];
    keychainItems = v52;
    v15 = [v13 mutableCopy];

    if (v15)
    {
      if (certificateCopy)
      {
        [TKTokenID encodedCertificateID:objectCopy];
      }

      else
      {
        [TKTokenID encodedKeyID:objectCopy];
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

    replyCopy[2](replyCopy, v15, keychainItems);
  }

  else
  {
    selfCopy = self;
    v43 = replyCopy;
    v16 = objectCopy;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    token = [(TKTokenSession *)self token];
    configuration = [token configuration];
    keychainItems = [configuration keychainItems];

    v19 = [keychainItems countByEnumeratingWithState:&v48 objects:v54 count:16];
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
            objc_enumerationMutation(keychainItems);
          }

          v23 = *(*(&v48 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || certificateCopy)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || !certificateCopy)
            {
              continue;
            }
          }

          objectID = [v23 objectID];
          v25 = [objectID isEqual:v16];

          if (v25)
          {
            keychainAttributes = [v23 keychainAttributes];
            replyCopy = v43;
            v43[2](v43, keychainAttributes, 0);

            objectCopy = v16;
            goto LABEL_36;
          }
        }

        v20 = [keychainItems countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    objectCopy = v16;
    if (!certificateCopy)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      token2 = [(TKTokenSession *)selfCopy token];
      configuration2 = [token2 configuration];
      keychainItems = [configuration2 keychainItems];

      v28 = [keychainItems countByEnumeratingWithState:&v44 objects:v53 count:16];
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
              objc_enumerationMutation(keychainItems);
            }

            v32 = *(*(&v44 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objectID2 = [v32 objectID];
              v34 = [objectID2 isEqual:objectCopy];

              if (v34)
              {
                keychainAttributes2 = [v32 keychainAttributes];
                replyCopy = v43;
                v43[2](v43, keychainAttributes2, 0);

                goto LABEL_36;
              }
            }
          }

          v29 = [keychainItems countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }
    }

    keychainItems = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:0];
    replyCopy = v43;
    v43[2](v43, 0, keychainItems);
  }

LABEL_36:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthForOperation:(int64_t)operation constraint:(id)constraint reply:(id)reply
{
  constraintCopy = constraint;
  replyCopy = reply;
  delegate = [(TKTokenSession *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(TKTokenSession *)self delegate];
    v16 = 0;
    v13 = [delegate2 tokenSession:self beginAuthForOperation:operation constraint:constraintCopy error:&v16];
    v14 = v16;

    replyCopy[2](replyCopy, v13, v14);
  }

  else
  {
    v15 = TK_LOG_token_4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [TKTokenSession beginAuthForOperation:constraintCopy constraint:v15 reply:?];
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-5 userInfo:0];
    replyCopy[2](replyCopy, 0, v13);
  }
}

- (BOOL)checkOperation:(int64_t)operation usingKey:(id)key algorithm:(id)algorithm parameters:(id)parameters
{
  keyCopy = key;
  algorithmCopy = algorithm;
  parametersCopy = parameters;
  privateDelegate = [(TKTokenSession *)self privateDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    privateDelegate2 = [(TKTokenSession *)self privateDelegate];
    v16 = [privateDelegate2 tokenSession:self supportsOperation:operation usingKey:keyCopy algorithm:algorithmCopy parameters:parametersCopy];
  }

  else
  {
    delegate = [(TKTokenSession *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      v19 = 0;
      goto LABEL_7;
    }

    privateDelegate2 = [(TKTokenSession *)self delegate];
    v16 = [privateDelegate2 tokenSession:self supportsOperation:operation usingKey:keyCopy algorithm:algorithmCopy];
  }

  v19 = v16;

LABEL_7:
  return v19;
}

- (void)signData:(id)data usingKey:(id)key algorithm:(id)algorithm reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  algorithmCopy = algorithm;
  replyCopy = reply;
  delegate = [(TKTokenSession *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate2 = [(TKTokenSession *)self delegate];
    v23 = 0;
    v17 = [delegate2 tokenSession:self signData:dataCopy usingKey:keyCopy algorithm:algorithmCopy error:&v23];
    v18 = v23;

    replyCopy[2](replyCopy, v17, v18);
  }

  else
  {
    v19 = TK_LOG_token_4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      token = [(TKTokenSession *)self token];
      tokenID = [token tokenID];
      *buf = 138543362;
      v25 = tokenID;
      _os_log_impl(&dword_1DF413000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement sign", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    replyCopy[2](replyCopy, 0, v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)decryptData:(id)data usingKey:(id)key algorithm:(id)algorithm parameters:(id)parameters reply:(id)reply
{
  v33 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  algorithmCopy = algorithm;
  parametersCopy = parameters;
  replyCopy = reply;
  privateDelegate = [(TKTokenSession *)self privateDelegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    privateDelegate2 = [(TKTokenSession *)self privateDelegate];
    v30 = 0;
    v20 = [privateDelegate2 tokenSession:self decryptData:dataCopy usingKey:keyCopy algorithm:algorithmCopy parameters:parametersCopy error:&v30];
    v21 = v30;
LABEL_5:
    v24 = v21;

    replyCopy[2](replyCopy, v20, v24);
    goto LABEL_9;
  }

  delegate = [(TKTokenSession *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    privateDelegate2 = [(TKTokenSession *)self delegate];
    v29 = 0;
    v20 = [privateDelegate2 tokenSession:self decryptData:dataCopy usingKey:keyCopy algorithm:algorithmCopy error:&v29];
    v21 = v29;
    goto LABEL_5;
  }

  v25 = TK_LOG_token_4();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    token = [(TKTokenSession *)self token];
    tokenID = [token tokenID];
    *buf = 138543362;
    v32 = tokenID;
    _os_log_impl(&dword_1DF413000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement decrypt", buf, 0xCu);
  }

  v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  replyCopy[2](replyCopy, 0, v20);
LABEL_9:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)performKeyExchangeWithPublicKey:(id)key usingKey:(id)usingKey algorithm:(id)algorithm parameters:(id)parameters reply:(id)reply
{
  v29 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  usingKeyCopy = usingKey;
  algorithmCopy = algorithm;
  parametersCopy = parameters;
  replyCopy = reply;
  delegate = [(TKTokenSession *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    delegate2 = [(TKTokenSession *)self delegate];
    v26 = 0;
    v20 = [delegate2 tokenSession:self performKeyExchangeWithPublicKey:keyCopy usingKey:usingKeyCopy algorithm:algorithmCopy parameters:parametersCopy error:&v26];
    v21 = v26;

    replyCopy[2](replyCopy, v20, v21);
  }

  else
  {
    v22 = TK_LOG_token_4();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      token = [(TKTokenSession *)self token];
      tokenID = [token tokenID];
      *buf = 138543362;
      v28 = tokenID;
      _os_log_impl(&dword_1DF413000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement key exchange", buf, 0xCu);
    }

    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    replyCopy[2](replyCopy, 0, v20);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)decapsulateSharedKey:(id)key usingKey:(id)usingKey algorithm:(id)algorithm reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  usingKeyCopy = usingKey;
  algorithmCopy = algorithm;
  replyCopy = reply;
  privateDelegate = [(TKTokenSession *)self privateDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    privateDelegate2 = [(TKTokenSession *)self privateDelegate];
    v23 = 0;
    v17 = [privateDelegate2 tokenSession:self decapsulateSharedKey:keyCopy usingKey:usingKeyCopy algorithm:algorithmCopy error:&v23];
    v18 = v23;

    replyCopy[2](replyCopy, v17, v18);
  }

  else
  {
    v19 = TK_LOG_token_4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      token = [(TKTokenSession *)self token];
      tokenID = [token tokenID];
      *buf = 138543362;
      v25 = tokenID;
      _os_log_impl(&dword_1DF413000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement decapsulate", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    replyCopy[2](replyCopy, 0, v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)attestKey:(id)key usingKey:(id)usingKey nonce:(id)nonce reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  usingKeyCopy = usingKey;
  nonceCopy = nonce;
  replyCopy = reply;
  privateDelegate = [(TKTokenSession *)self privateDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    privateDelegate2 = [(TKTokenSession *)self privateDelegate];
    v23 = 0;
    v17 = [privateDelegate2 tokenSession:self attestKey:keyCopy usingKey:usingKeyCopy nonce:nonceCopy error:&v23];
    v18 = v23;

    replyCopy[2](replyCopy, v17, v18);
  }

  else
  {
    v19 = TK_LOG_token_4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      token = [(TKTokenSession *)self token];
      tokenID = [token tokenID];
      *buf = 138543362;
      v25 = tokenID;
      _os_log_impl(&dword_1DF413000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement attestation", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    replyCopy[2](replyCopy, 0, v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)bumpKey:(id)key reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  replyCopy = reply;
  privateDelegate = [(TKTokenSession *)self privateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    privateDelegate2 = [(TKTokenSession *)self privateDelegate];
    v18 = 0;
    v11 = [privateDelegate2 tokenSession:self bumpKey:keyCopy error:&v18];
    v12 = v18;

    replyCopy[2](replyCopy, v11, v12);
  }

  else
  {
    v13 = TK_LOG_token_4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      token = [(TKTokenSession *)self token];
      tokenID = [token tokenID];
      *buf = 138543362;
      v20 = tokenID;
      _os_log_impl(&dword_1DF413000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement key bumping", buf, 0xCu);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    replyCopy[2](replyCopy, 0, v16);
    v12 = replyCopy;
    replyCopy = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)commitKey:(id)key reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  replyCopy = reply;
  privateDelegate = [(TKTokenSession *)self privateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    privateDelegate2 = [(TKTokenSession *)self privateDelegate];
    v18 = 0;
    v11 = [privateDelegate2 tokenSession:self commitKey:keyCopy error:&v18];
    v12 = v18;

    replyCopy[2](replyCopy, v11, v12);
  }

  else
  {
    v13 = TK_LOG_token_4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      token = [(TKTokenSession *)self token];
      tokenID = [token tokenID];
      *buf = 138543362;
      v20 = tokenID;
      _os_log_impl(&dword_1DF413000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: does not implement key committing", buf, 0xCu);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    replyCopy[2](replyCopy, 0, v16);
    v12 = replyCopy;
    replyCopy = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)createObjectWithAttributes:(id)attributes reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  replyCopy = reply;
  privateDelegate = [(TKTokenSession *)self privateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    privateDelegate2 = [(TKTokenSession *)self privateDelegate];
    v17 = 0;
    v11 = [privateDelegate2 tokenSession:self createObjectWithAttributes:attributesCopy error:&v17];
    v12 = v17;

    replyCopy[2](replyCopy, v11, v12);
  }

  else
  {
    v13 = TK_LOG_token_4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      token = [(TKTokenSession *)self token];
      tokenID = [token tokenID];
      *buf = 138543362;
      v19 = tokenID;
      _os_log_impl(&dword_1DF413000, v13, OS_LOG_TYPE_INFO, "%{public}@: is read-only token", buf, 0xCu);
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    replyCopy[2](replyCopy, 0, v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)deleteObject:(id)object reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  replyCopy = reply;
  privateDelegate = [(TKTokenSession *)self privateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    privateDelegate2 = [(TKTokenSession *)self privateDelegate];
    v18 = 0;
    v11 = [privateDelegate2 tokenSession:self deleteObject:objectCopy error:&v18];
    v12 = v18;

    replyCopy[2](replyCopy, v11, v12);
  }

  else
  {
    v13 = TK_LOG_token_4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      token = [(TKTokenSession *)self token];
      tokenID = [token tokenID];
      *buf = 138543362;
      v20 = tokenID;
      _os_log_impl(&dword_1DF413000, v13, OS_LOG_TYPE_INFO, "%{public}@: is read-only token", buf, 0xCu);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    replyCopy[2](replyCopy, 0, v16);
    v12 = replyCopy;
    replyCopy = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)evaluateAuthOperation:(id)operation tokenOperation:(int64_t)tokenOperation reply:(id)reply
{
  v25[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  operationCopy = operation;
  v11 = objc_alloc_init([operationCopy baseClassForUI]);
  v12 = v11;
  if (v11)
  {
    [v11 importOperation:operationCopy];

    v24 = &unk_1F5A851C8;
    v25[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    operationCopy = [v13 mutableCopy];

    callerPID = [(TKTokenSession *)self callerPID];

    if (callerPID)
    {
      callerPID2 = [(TKTokenSession *)self callerPID];
      [operationCopy setObject:callerPID2 forKeyedSubscript:&unk_1F5A851E0];
    }

    if (tokenOperation == 1)
    {
      v16 = @"READ_DATA";
      v17 = @"read data";
    }

    else if (tokenOperation == 2)
    {
      v16 = @"SIGN_DATA";
      v17 = @"sign data";
    }

    else
    {
      if ((tokenOperation - 3) > 1)
      {
LABEL_12:
        lAContext = [(TKTokenSession *)self LAContext];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __61__TKTokenSession_evaluateAuthOperation_tokenOperation_reply___block_invoke;
        v21[3] = &unk_1E86B8218;
        v22 = replyCopy;
        v23 = a2;
        v21[4] = self;
        [lAContext evaluatePolicy:1009 options:operationCopy reply:v21];

        goto LABEL_13;
      }

      v16 = @"DECRYPT_DATA";
      v17 = @"decrypt data";
    }

    v18 = [TKTokenSession _localizedString:v16 value:v17];
    [operationCopy setObject:v18 forKeyedSubscript:&unk_1F5A851F8];

    goto LABEL_12;
  }

  (*(replyCopy + 2))(replyCopy, operationCopy, 0);
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

- (void)finalizeAuthOperation:(id)operation evaluatedAuthOperation:(id)authOperation reply:(id)reply
{
  v38[1] = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  authOperationCopy = authOperation;
  replyCopy = reply;
  [operationCopy importOperation:authOperationCopy];
  v36 = 0;
  v11 = [operationCopy finishWithError:&v36];
  v12 = v36;
  caller = [(TKTokenSession *)self caller];
  v14 = caller;
  if (caller)
  {
    [caller auditToken];
  }

  else
  {
    memset(v35, 0, sizeof(v35));
  }

  [(TKTokenSession *)self auditAuthOperation:operationCopy auditToken:v35 success:v11];

  if (v11)
  {
    replyCopy[2](replyCopy, 1, 0);
    goto LABEL_25;
  }

  domain = [v12 domain];
  if (![domain isEqual:@"CryptoTokenKit"])
  {
    goto LABEL_19;
  }

  code = [v12 code];
  if (!authOperationCopy)
  {
    goto LABEL_19;
  }

  if (code != -7)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  lAContext = [(TKTokenSession *)self LAContext];
  v18 = [lAContext isCredentialSet:-3];

  if ((v18 & 1) == 0)
  {
    domain = authOperationCopy;
    v19 = [domain PIN];
    if (v19)
    {
      v20 = v19;
      smartCard = [domain smartCard];
      slot = [smartCard slot];
      name = [slot name];
      if ([name isEqualToString:@"Built-in NFC Slot"])
      {

LABEL_15:
        v24 = TK_LOG_token_4();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [TKTokenSession finalizeAuthOperation:v24 evaluatedAuthOperation:? reply:?];
        }

        lAContext2 = [(TKTokenSession *)self LAContext];
        v26 = [domain PIN];
        v27 = [v26 dataUsingEncoding:4];
        [lAContext2 setCredential:v27 type:-3];

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

  [operationCopy setAuthenticationError:v12];
  (replyCopy)[2](replyCopy, 0, v12);
LABEL_25:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)evaluateAuthOperation:(id)operation tokenOperation:(int64_t)tokenOperation retry:(BOOL)retry reply:(id)reply
{
  operationCopy = operation;
  replyCopy = reply;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__TKTokenSession_evaluateAuthOperation_tokenOperation_retry_reply___block_invoke;
  v14[3] = &unk_1E86B8268;
  v14[4] = self;
  v15 = operationCopy;
  retryCopy = retry;
  v16 = replyCopy;
  tokenOperationCopy = tokenOperation;
  v12 = operationCopy;
  v13 = replyCopy;
  [(TKTokenSession *)self evaluateAuthOperation:v12 tokenOperation:tokenOperation reply:v14];
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

- (void)evaluateAccessControl:(id)control forOperation:(id)operation reply:(id)reply
{
  replyCopy = reply;
  v23 = 0;
  operationCopy = operation;
  controlCopy = control;
  v11 = +[TKTokenKeychainItem operationMap];
  v12 = [v11 objectForKey:operationCopy];
  integerValue = [v12 integerValue];

  v14 = SecAccessControlCreateFromData();
  v15 = SecAccessControlGetConstraint();

  if (v15 && ![v15 isEqual:MEMORY[0x1E695E110]])
  {
    if ([v15 isEqual:MEMORY[0x1E695E118]])
    {
      replyCopy[2](replyCopy, 1, 0);
      goto LABEL_4;
    }

    lAContext = [(TKTokenSession *)self LAContext];

    if (lAContext)
    {
      queue = [(TKTokenSession *)self queue];
      dispatch_suspend(queue);

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__TKTokenSession_evaluateAccessControl_forOperation_reply___block_invoke;
      v20[3] = &unk_1E86B8290;
      v20[4] = self;
      v21 = replyCopy;
      v22 = integerValue;
      [(TKTokenSession *)self beginAuthForOperation:integerValue constraint:v15 reply:v20];

      goto LABEL_4;
    }

    v19 = TK_LOG_token_4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [TKTokenSession evaluateAccessControl:v19 forOperation:? reply:?];
    }
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-5 userInfo:0];
  (replyCopy)[2](replyCopy, 0, v16);

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

- (id)errorWithResult:(id)result operation:(id)operation forError:(id)error
{
  operationCopy = operation;
  errorCopy = error;
  v9 = errorCopy;
  if (!result)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"CryptoTokenKit"] && objc_msgSend(v9, "code") == -9)
    {
      userInfo = [v9 userInfo];
      v12 = [userInfo objectForKeyedSubscript:@"operation"];

      if (v12)
      {
        goto LABEL_7;
      }

      userInfo2 = [v9 userInfo];
      domain = [userInfo2 mutableCopy];

      [domain setObject:operationCopy forKeyedSubscript:@"operation"];
      v14 = MEMORY[0x1E696ABC0];
      v15 = [domain copy];
      v16 = [v14 errorWithDomain:@"CryptoTokenKit" code:-9 userInfo:v15];

      v9 = v16;
    }
  }

LABEL_7:

  return v9;
}

- (void)objectID:(id)d operation:(int64_t)operation inputData:(id)data algorithms:(id)algorithms parameters:(id)parameters reply:(id)reply
{
  dCopy = d;
  dataCopy = data;
  parametersCopy = parameters;
  replyCopy = reply;
  algorithmsCopy = algorithms;
  v20 = [[TKTokenKeyAlgorithm alloc] initWithAlgorithmsArray:algorithmsCopy];

  if ([(TKTokenSession *)self checkOperation:operation usingKey:dCopy algorithm:v20 parameters:parametersCopy])
  {
    if (dataCopy)
    {
      if (operation > 999)
      {
        if (operation <= 1001)
        {
          if (operation != 1000)
          {
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_6;
            v35[3] = &unk_1E86B82E0;
            v35[4] = self;
            v36 = replyCopy;
            [(TKTokenSession *)self bumpKey:dCopy reply:v35];
            v21 = v36;
LABEL_22:

            goto LABEL_26;
          }

          token = [(TKTokenSession *)self token];
          tokenID = [token tokenID];
          v39 = 0;
          v29 = [tokenID decodedKeyID:dataCopy error:&v39];
          v26 = v39;

          if (v29)
          {
            v30 = [parametersCopy objectForKeyedSubscript:@"nonce"];
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_5;
            v37[3] = &unk_1E86B82B8;
            v37[4] = self;
            v38 = replyCopy;
            [(TKTokenSession *)self attestKey:v29 usingKey:dCopy nonce:v30 reply:v37];
          }

          else
          {
            (*(replyCopy + 2))(replyCopy, 0, v26);
          }

LABEL_25:
          goto LABEL_26;
        }

        if (operation == 1002)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_7;
          v33[3] = &unk_1E86B82E0;
          v33[4] = self;
          v34 = replyCopy;
          [(TKTokenSession *)self commitKey:dCopy reply:v33];
          v21 = v34;
          goto LABEL_22;
        }

        if (operation == 1003)
        {
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_4;
          v40[3] = &unk_1E86B82B8;
          v40[4] = self;
          v41 = replyCopy;
          [(TKTokenSession *)self decapsulateSharedKey:dataCopy usingKey:dCopy algorithm:v20 reply:v40];
          v21 = v41;
          goto LABEL_22;
        }

LABEL_17:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        token2 = [(TKTokenSession *)self token];
        tokenID2 = [token2 tokenID];
        operationCopy = operation;
        v26 = currentHandler;
        [currentHandler handleFailureInMethod:a2 object:self file:@"TKTokenSession.m" lineNumber:583 description:{@"invalid objectOperation %d on token %@", operationCopy, tokenID2}];

        goto LABEL_25;
      }

      if (operation == 2)
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke;
        v46[3] = &unk_1E86B82B8;
        v46[4] = self;
        v47 = replyCopy;
        [(TKTokenSession *)self signData:dataCopy usingKey:dCopy algorithm:v20 reply:v46];
        v21 = v47;
        goto LABEL_22;
      }

      if (operation == 3)
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_2;
        v44[3] = &unk_1E86B82B8;
        v44[4] = self;
        v45 = replyCopy;
        [(TKTokenSession *)self decryptData:dataCopy usingKey:dCopy algorithm:v20 parameters:parametersCopy reply:v44];
        v21 = v45;
        goto LABEL_22;
      }

      if (operation != 4)
      {
        goto LABEL_17;
      }

      v23 = [[TKTokenKeyExchangeParameters alloc] initWithParameters:parametersCopy];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __75__TKTokenSession_objectID_operation_inputData_algorithms_parameters_reply___block_invoke_3;
      v42[3] = &unk_1E86B82B8;
      v42[4] = self;
      v43 = replyCopy;
      [(TKTokenSession *)self performKeyExchangeWithPublicKey:dataCopy usingKey:dCopy algorithm:v20 parameters:v23 reply:v42];
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, MEMORY[0x1E695E118], 0);
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    (*(replyCopy + 2))(replyCopy, null, 0);
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

- (void)getAdvertisedItemsWithReply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  token = [(TKTokenSession *)self token];
  configuration = [token configuration];
  keychainItems = [configuration keychainItems];

  v9 = [keychainItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(keychainItems);
        }

        keychainAttributes = [*(*(&v15 + 1) + 8 * v12) keychainAttributes];
        [array addObject:keychainAttributes];

        ++v12;
      }

      while (v10 != v12);
      v10 = [keychainItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  replyCopy[2](replyCopy, array);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)terminate
{
  token = [(TKTokenSession *)self token];
  delegate = [token delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    token2 = [(TKTokenSession *)self token];
    delegate2 = [token2 delegate];
    token3 = [(TKTokenSession *)self token];
    [delegate2 token:token3 terminateSession:self];
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

- (void)setCreatorAuditToken:(id *)token
{
  v3 = *token->var0;
  *&self->_creatorAuditToken.val[4] = *&token->var0[4];
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