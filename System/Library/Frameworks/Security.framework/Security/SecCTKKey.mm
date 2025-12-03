@interface SecCTKKey
- (BOOL)ensureTokenObject:(id *)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldRetryOperationForRegisteredSmartcard:(id)smartcard;
- (SecCTKKey)initWithAttributes:(id)attributes error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)ensureTokenObjectForBlock:(id)block error:(id *)error;
- (id)initFromKey:(id)key;
- (int64_t)algorithmID;
@end

@implementation SecCTKKey

- (int64_t)algorithmID
{
  tokenObject = [(SecCTKKey *)self tokenObject];
  if (tokenObject)
  {
    tokenObject2 = [(SecCTKKey *)self tokenObject];
    keychainAttributes = [tokenObject2 keychainAttributes];
    v6 = [keychainAttributes objectForKeyedSubscript:@"type"];
  }

  else
  {
    tokenObject2 = [(SecCTKKey *)self keychainAttributes];
    v6 = [tokenObject2 objectForKeyedSubscript:@"type"];
  }

  if ([v6 isEqualToString:@"73"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"2147483678") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"2147483679") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"2147483680"))
  {
    v7 = 3;
  }

  else if ([v6 isEqualToString:@"105"])
  {
    v7 = 4;
  }

  else if ([v6 isEqualToString:@"106"])
  {
    v7 = 5;
  }

  else if ([v6 isEqualToString:@"109"])
  {
    v7 = 8;
  }

  else if ([v6 isEqualToString:@"110"])
  {
    v7 = 9;
  }

  else if ([v6 isEqualToString:@"111"])
  {
    v7 = 10;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldRetryOperationForRegisteredSmartcard:(id)smartcard
{
  smartcardCopy = smartcard;
  if (!smartcardCopy)
  {
    goto LABEL_9;
  }

  if (![(SecCTKKey *)self isRegisteredSmartcard])
  {
    goto LABEL_9;
  }

  domain = [smartcardCopy domain];
  v6 = getTKErrorDomain();
  v7 = [domain isEqual:v6];

  if (!v7)
  {
    goto LABEL_9;
  }

  if ([smartcardCopy code] == -1003)
  {
    v8 = 1;
LABEL_10:

    return v8;
  }

  if ([smartcardCopy code] != -5)
  {
    goto LABEL_9;
  }

  if ([(SecCTKKey *)self wasAuthenticationContextProvidedBySecCaller])
  {
    tokenObject = [(SecCTKKey *)self tokenObject];
    session = [tokenObject session];
    lAContext = [session LAContext];
    v12 = [lAContext isCredentialSet:-3];

    if (v12)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  userInfo = [smartcardCopy userInfo];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v15 = getTKUserSecretTriesLeftErrorKeySymbolLoc_ptr;
  v24 = getTKUserSecretTriesLeftErrorKeySymbolLoc_ptr;
  if (!getTKUserSecretTriesLeftErrorKeySymbolLoc_ptr)
  {
    v16 = CryptoTokenKitLibrary();
    v22[3] = dlsym(v16, "TKUserSecretTriesLeftErrorKey");
    getTKUserSecretTriesLeftErrorKeySymbolLoc_ptr = v22[3];
    v15 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (v15)
  {
    v17 = *v15;
    v18 = [userInfo objectForKeyedSubscript:v17];

    if (v18)
    {
      v8 = [v18 integerValue] > 0;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getTKUserSecretTriesLeftErrorKey(void)"];
  [currentHandler handleFailureInFunction:v20 file:@"SecSoftLink.h" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (-[SecCTKKey ensureTokenObject:](self, "ensureTokenObject:", 0) && [equalCopy ensureTokenObject:0])
  {
    tokenObject = [(SecCTKKey *)self tokenObject];
    session = [tokenObject session];
    token = [session token];
    tokenID = [token tokenID];
    tokenObject2 = [equalCopy tokenObject];
    session2 = [tokenObject2 session];
    token2 = [session2 token];
    tokenID2 = [token2 tokenID];
    if ([tokenID isEqualToString:tokenID2])
    {
      [(SecCTKKey *)self tokenObject];
      v19 = v22 = tokenObject;
      [v19 objectID];
      v13 = v21 = session;
      [equalCopy tokenObject];
      v14 = v20 = token;
      [v14 objectID];
      v16 = v15 = tokenID;
      v17 = [v13 isEqualToData:v16];

      tokenID = v15;
      token = v20;

      session = v21;
      tokenObject = v22;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)ensureTokenObjectForBlock:(id)block error:(id *)error
{
  blockCopy = block;
  if ([(SecCTKKey *)self ensureTokenObject:error])
  {
    v7 = blockCopy[2];
    v25 = 0;
    v8 = v7(blockCopy, &v25);
    v9 = v25;
    v10 = v9;
    if (!v9)
    {
      goto LABEL_15;
    }

    domain = [v9 domain];
    v12 = getTKErrorDomain();
    if ([domain isEqual:v12])
    {
      if ([v10 code] == -7 || (v13 = objc_msgSend(v10, "code"), getTKTokenNotFoundAndRegistered(), v13 == v14) || objc_msgSend(v10, "code") == -1003)
      {
        if ([(SecCTKKey *)self isRegisteredSmartcard])
        {
          tokenOID = [(SecCTKKey *)self tokenOID];
          if (tokenOID)
          {
            v16 = tokenOID;
            tokenObject = [(SecCTKKey *)self tokenObject];

            if (!tokenObject)
            {
              goto LABEL_15;
            }

            v18 = _SECKEY_LOG();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "Registered smart card token not found -> retrying to get the session", buf, 2u);
            }

            [(SecCTKKey *)self setTokenObject:0];
            if (![(SecCTKKey *)self ensureTokenObject:error])
            {
              v21 = 0;
LABEL_19:

              goto LABEL_21;
            }

            v23 = v10;
            v19 = (blockCopy[2])(blockCopy, &v23);
            v12 = v10;
            domain = v8;
            v10 = v23;
            v8 = v19;
          }
        }
      }
    }

LABEL_15:
    if (error && !v8)
    {
      v20 = v10;
      *error = v10;
    }

    v8 = v8;
    v21 = v8;
    goto LABEL_19;
  }

  v21 = 0;
LABEL_21:

  return v21;
}

- (BOOL)ensureTokenObject:(id *)object
{
  v34[1] = *MEMORY[0x1E69E9840];
  tokenObject = [(SecCTKKey *)self tokenObject];

  if (tokenObject)
  {
    LOBYTE(object) = 1;
    goto LABEL_12;
  }

  if (CryptoTokenKitLibraryCore())
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    keychainAttributes = [(SecCTKKey *)self keychainAttributes];
    v8 = SecCTKIsQueryForSystemKeychain(keychainAttributes);

    if (v8)
    {
      v9 = getTKClientTokenParameterForceSystemSession();
      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:v9];
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[SecCTKKey wasAuthenticationContextProvidedBySecCaller](self, "wasAuthenticationContextProvidedBySecCaller")}];
    [dictionary setObject:v10 forKeyedSubscript:@"authenticationContextProvidedBySecCaller"];

    v11 = [dictionary copy];
    v12 = objc_alloc(getTKClientTokenClass());
    keychainAttributes2 = [(SecCTKKey *)self keychainAttributes];
    v14 = [keychainAttributes2 objectForKeyedSubscript:@"tkid"];
    v15 = [v12 initWithTokenID:v14];

    [v15 setCanRequireCardInsertion:1];
    keychainAttributes3 = [(SecCTKKey *)self keychainAttributes];
    v17 = [keychainAttributes3 objectForKeyedSubscript:@"u_AuthCtx"];

    keychainAttributes4 = [(SecCTKKey *)self keychainAttributes];
    keychainAttributes5 = keychainAttributes4;
    if (v17)
    {
      v20 = [keychainAttributes4 objectForKeyedSubscript:@"u_AuthCtx"];
    }

    else
    {
      v20 = [keychainAttributes4 objectForKeyedSubscript:@"u_CredRef"];
      if (v20)
      {
        v30 = LocalAuthenticationLibraryCore();

        if (!v30)
        {
          v20 = 0;
          goto LABEL_9;
        }

        v31 = objc_alloc(getLAContextClass());
        keychainAttributes5 = [(SecCTKKey *)self keychainAttributes];
        v32 = [keychainAttributes5 objectForKeyedSubscript:@"u_CredRef"];
        v20 = [v31 initWithExternalizedContext:v32];
      }
    }

LABEL_9:
    v21 = [objc_alloc(getTKClientTokenSessionClass()) initWithToken:v15 LAContext:v20 parameters:v11 error:object];
    tokenOID = [(SecCTKKey *)self tokenOID];
    v23 = [v21 objectForObjectID:tokenOID error:object];
    tokenObject = self->_tokenObject;
    self->_tokenObject = v23;

    LOBYTE(object) = self->_tokenObject != 0;
    goto LABEL_12;
  }

  if (object)
  {
    v25 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A768];
    v33 = *MEMORY[0x1E696A278];
    v34[0] = @"CryptoTokenKit is not available";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    *object = [v25 errorWithDomain:v26 code:-4 userInfo:v27];

    LOBYTE(object) = 0;
  }

LABEL_12:
  v28 = *MEMORY[0x1E69E9840];
  return object;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SecCTKKey alloc];

  return [(SecCTKKey *)v4 initFromKey:self];
}

- (id)initFromKey:(id)key
{
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = SecCTKKey;
  v5 = [(SecCTKKey *)&v13 init];
  if (v5)
  {
    sessionParameters = [keyCopy sessionParameters];
    sessionParameters = v5->_sessionParameters;
    v5->_sessionParameters = sessionParameters;

    keychainAttributes = [keyCopy keychainAttributes];
    keychainAttributes = v5->_keychainAttributes;
    v5->_keychainAttributes = keychainAttributes;

    tokenObject = [keyCopy tokenObject];
    tokenObject = v5->_tokenObject;
    v5->_tokenObject = tokenObject;

    v5->_isRegisteredSmartcard = [keyCopy isRegisteredSmartcard];
    v5->_wasAuthenticationContextProvidedBySecCaller = [keyCopy wasAuthenticationContextProvidedBySecCaller];
  }

  return v5;
}

- (SecCTKKey)initWithAttributes:(id)attributes error:(id *)error
{
  v93[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v89.receiver = self;
  v89.super_class = SecCTKKey;
  v7 = [(SecCTKKey *)&v89 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_58;
  }

  v7->_isRegisteredSmartcard = 0;
  v9 = [attributesCopy objectForKeyedSubscript:@"u_AuthCtx"];
  if (v9)
  {
  }

  else
  {
    v14 = [attributesCopy objectForKeyedSubscript:@"u_CredRef"];

    if (v14)
    {
      v13 = 1;
      goto LABEL_9;
    }
  }

  v10 = [attributesCopy objectForKeyedSubscript:@"u_AuthCtx"];
  if (v10)
  {
    v11 = v10;
    v12 = [attributesCopy objectForKeyedSubscript:@"u_CredRef"];

    if (v12)
    {
      v13 = 0;
LABEL_9:
      [(SecCTKKey *)v8 setWasAuthenticationContextProvidedBySecCaller:v13];
    }
  }

  if (!v8->_tokenObject)
  {
    v15 = [attributesCopy objectForKeyedSubscript:@"u_TokenSession"];
    if (v15)
    {
      goto LABEL_28;
    }

    if (CryptoTokenKitLibraryCore())
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      if (SecCTKIsQueryForSystemKeychain(attributesCopy))
      {
        v17 = getTKClientTokenParameterForceSystemSession();
        [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:v17];
      }

      v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[SecCTKKey wasAuthenticationContextProvidedBySecCaller](v8, "wasAuthenticationContextProvidedBySecCaller")}];
      [dictionary setObject:v18 forKeyedSubscript:@"authenticationContextProvidedBySecCaller"];

      v19 = [dictionary copy];
      v20 = objc_alloc(getTKClientTokenClass());
      v21 = [attributesCopy objectForKeyedSubscript:@"tkid"];
      v22 = [v20 initWithTokenID:v21];

      v23 = [attributesCopy objectForKeyedSubscript:@"u_AuthCtx"];

      if (v23)
      {
        v24 = [attributesCopy objectForKeyedSubscript:@"u_AuthCtx"];
      }

      else
      {
        v31 = [attributesCopy objectForKeyedSubscript:@"u_CredRef"];
        if (v31 && (v32 = v31, v33 = LocalAuthenticationLibraryCore(), v32, v33))
        {
          v34 = objc_alloc(getLAContextClass());
          v35 = [attributesCopy objectForKeyedSubscript:@"u_CredRef"];
          v24 = [v34 initWithExternalizedContext:v35];
        }

        else
        {
          v24 = 0;
        }
      }

      v88 = 0;
      v15 = [objc_alloc(getTKClientTokenSessionClass()) initWithToken:v22 LAContext:v24 parameters:v19 error:&v88];
      v30 = v88;

      if (v15)
      {
        goto LABEL_27;
      }

      if (v30)
      {
        domain = [v30 domain];
        v76 = getTKErrorDomain();
        if ([domain isEqual:v76])
        {
          code = [v30 code];
          getTKTokenNotFoundAndRegistered();
          v79 = v78;

          if (code == v79)
          {
            v8->_isRegisteredSmartcard = 1;
LABEL_27:

LABEL_28:
            v36 = [attributesCopy objectForKeyedSubscript:@"toid"];
            if (v36)
            {
              v37 = [v15 objectForObjectID:v36 error:error];
              tokenObject = v8->_tokenObject;
              v8->_tokenObject = v37;

              if (!v8->_isRegisteredSmartcard)
              {
                goto LABEL_38;
              }

              v39 = v36;
              tokenOID = v8->_tokenOID;
              v8->_tokenOID = v39;
            }

            else
            {
              tokenOID = [attributesCopy mutableCopy];
              v41 = [attributesCopy objectForKeyedSubscript:@"u_AuthCtx"];

              if (v41)
              {
                [(NSData *)tokenOID removeObjectForKey:@"u_AuthCtx"];
              }

              v42 = [attributesCopy objectForKeyedSubscript:@"accc"];
              v43 = v42;
              if (v42)
              {
                v44 = CFGetTypeID(v42);
                if (v44 == SecAccessControlGetTypeID())
                {
                  v52 = SecAccessControlCopyData(v43, v45, v46, v47, v48, v49, v50, v51);

                  [(NSData *)tokenOID setObject:v52 forKeyedSubscript:@"accc"];
                  v43 = v52;
                }
              }

              v53 = [(NSData *)tokenOID copy];

              v54 = [v15 createObjectWithAttributes:v53 error:error];
              v55 = v8->_tokenObject;
              v8->_tokenObject = v54;

              attributesCopy = v53;
            }

LABEL_38:
            if (v8->_tokenObject || v8->_isRegisteredSmartcard)
            {

              goto LABEL_41;
            }

LABEL_62:
            v62 = 0;
            goto LABEL_59;
          }
        }

        else
        {
        }

        if (error)
        {
          v80 = v30;
          *error = v30;
        }

LABEL_21:

        goto LABEL_62;
      }

      if (!error)
      {
LABEL_20:
        v30 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      if (!error)
      {
        goto LABEL_20;
      }

      v25 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A768];
      v92 = *MEMORY[0x1E696A278];
      v93[0] = @"CryptoTokenKit is not available";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:&v92 count:1];
      *error = [v25 errorWithDomain:v26 code:-4 userInfo:v27];
    }

    v28 = MEMORY[0x1E696ABC0];
    v29 = getTKErrorDomain();
    *error = [v28 errorWithDomain:v29 code:-7 userInfo:0];

    goto LABEL_20;
  }

LABEL_41:
  sessionParameters = v8->_sessionParameters;
  v8->_sessionParameters = MEMORY[0x1E695E0F8];

  tokenObject = [(SecCTKKey *)v8 tokenObject];
  if (tokenObject)
  {
    tokenObject2 = [(SecCTKKey *)v8 tokenObject];
    keychainAttributes = [tokenObject2 keychainAttributes];
    v60 = [keychainAttributes mutableCopy];
  }

  else
  {
    v60 = [MEMORY[0x1E695E0F8] mutableCopy];
  }

  [v60 addEntriesFromDictionary:attributesCopy];
  v61 = [v60 objectForKeyedSubscript:@"accc"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v62 = SecAccessControlCreateFromData(*MEMORY[0x1E695E480], v61, error);

    if (!v62)
    {

      goto LABEL_59;
    }

    v81 = attributesCopy;
    v83 = v8;
    [v60 setObject:v62 forKeyedSubscript:@"accc"];
    v61 = v62;
  }

  else
  {
    v81 = attributesCopy;
    v83 = v8;
  }

  [v60 removeObjectForKey:{@"toid", v81}];
  [v60 removeObjectForKey:@"u_TokenSession"];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v90[0] = @"type";
  v90[1] = @"kcls";
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
  v64 = [v63 countByEnumeratingWithState:&v84 objects:v91 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v85;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v85 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v84 + 1) + 8 * i);
        v69 = [v60 objectForKeyedSubscript:v68];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue = [v69 stringValue];
          [v60 setObject:stringValue forKeyedSubscript:v68];
        }
      }

      v65 = [v63 countByEnumeratingWithState:&v84 objects:v91 count:16];
    }

    while (v65);
  }

  [v60 setObject:@"keys" forKeyedSubscript:@"class"];
  [v60 setObject:@"1" forKeyedSubscript:@"kcls"];
  v71 = [v60 copy];
  v8 = v83;
  keychainAttributes = v83->_keychainAttributes;
  v83->_keychainAttributes = v71;

  attributesCopy = v82;
LABEL_58:
  v62 = v8;
LABEL_59:

  v73 = *MEMORY[0x1E69E9840];
  return v62;
}

@end