@interface SecCTKKey
- (BOOL)ensureTokenObject:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldRetryOperationForRegisteredSmartcard:(id)a3;
- (SecCTKKey)initWithAttributes:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)ensureTokenObjectForBlock:(id)a3 error:(id *)a4;
- (id)initFromKey:(id)a3;
- (int64_t)algorithmID;
@end

@implementation SecCTKKey

- (int64_t)algorithmID
{
  v3 = [(SecCTKKey *)self tokenObject];
  if (v3)
  {
    v4 = [(SecCTKKey *)self tokenObject];
    v5 = [v4 keychainAttributes];
    v6 = [v5 objectForKeyedSubscript:@"type"];
  }

  else
  {
    v4 = [(SecCTKKey *)self keychainAttributes];
    v6 = [v4 objectForKeyedSubscript:@"type"];
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

- (BOOL)shouldRetryOperationForRegisteredSmartcard:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_9;
  }

  if (![(SecCTKKey *)self isRegisteredSmartcard])
  {
    goto LABEL_9;
  }

  v5 = [v4 domain];
  v6 = getTKErrorDomain();
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    goto LABEL_9;
  }

  if ([v4 code] == -1003)
  {
    v8 = 1;
LABEL_10:

    return v8;
  }

  if ([v4 code] != -5)
  {
    goto LABEL_9;
  }

  if ([(SecCTKKey *)self wasAuthenticationContextProvidedBySecCaller])
  {
    v9 = [(SecCTKKey *)self tokenObject];
    v10 = [v9 session];
    v11 = [v10 LAContext];
    v12 = [v11 isCredentialSet:-3];

    if (v12)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v14 = [v4 userInfo];
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
    v18 = [v14 objectForKeyedSubscript:v17];

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

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getTKUserSecretTriesLeftErrorKey(void)"];
  [v19 handleFailureInFunction:v20 file:@"SecSoftLink.h" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (-[SecCTKKey ensureTokenObject:](self, "ensureTokenObject:", 0) && [v4 ensureTokenObject:0])
  {
    v5 = [(SecCTKKey *)self tokenObject];
    v6 = [v5 session];
    v7 = [v6 token];
    v8 = [v7 tokenID];
    v9 = [v4 tokenObject];
    v10 = [v9 session];
    v11 = [v10 token];
    v12 = [v11 tokenID];
    if ([v8 isEqualToString:v12])
    {
      [(SecCTKKey *)self tokenObject];
      v19 = v22 = v5;
      [v19 objectID];
      v13 = v21 = v6;
      [v4 tokenObject];
      v14 = v20 = v7;
      [v14 objectID];
      v16 = v15 = v8;
      v17 = [v13 isEqualToData:v16];

      v8 = v15;
      v7 = v20;

      v6 = v21;
      v5 = v22;
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

- (id)ensureTokenObjectForBlock:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(SecCTKKey *)self ensureTokenObject:a4])
  {
    v7 = v6[2];
    v25 = 0;
    v8 = v7(v6, &v25);
    v9 = v25;
    v10 = v9;
    if (!v9)
    {
      goto LABEL_15;
    }

    v11 = [v9 domain];
    v12 = getTKErrorDomain();
    if ([v11 isEqual:v12])
    {
      if ([v10 code] == -7 || (v13 = objc_msgSend(v10, "code"), getTKTokenNotFoundAndRegistered(), v13 == v14) || objc_msgSend(v10, "code") == -1003)
      {
        if ([(SecCTKKey *)self isRegisteredSmartcard])
        {
          v15 = [(SecCTKKey *)self tokenOID];
          if (v15)
          {
            v16 = v15;
            v17 = [(SecCTKKey *)self tokenObject];

            if (!v17)
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
            if (![(SecCTKKey *)self ensureTokenObject:a4])
            {
              v21 = 0;
LABEL_19:

              goto LABEL_21;
            }

            v23 = v10;
            v19 = (v6[2])(v6, &v23);
            v12 = v10;
            v11 = v8;
            v10 = v23;
            v8 = v19;
          }
        }
      }
    }

LABEL_15:
    if (a4 && !v8)
    {
      v20 = v10;
      *a4 = v10;
    }

    v8 = v8;
    v21 = v8;
    goto LABEL_19;
  }

  v21 = 0;
LABEL_21:

  return v21;
}

- (BOOL)ensureTokenObject:(id *)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v5 = [(SecCTKKey *)self tokenObject];

  if (v5)
  {
    LOBYTE(a3) = 1;
    goto LABEL_12;
  }

  if (CryptoTokenKitLibraryCore())
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [(SecCTKKey *)self keychainAttributes];
    v8 = SecCTKIsQueryForSystemKeychain(v7);

    if (v8)
    {
      v9 = getTKClientTokenParameterForceSystemSession();
      [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v9];
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[SecCTKKey wasAuthenticationContextProvidedBySecCaller](self, "wasAuthenticationContextProvidedBySecCaller")}];
    [v6 setObject:v10 forKeyedSubscript:@"authenticationContextProvidedBySecCaller"];

    v11 = [v6 copy];
    v12 = objc_alloc(getTKClientTokenClass());
    v13 = [(SecCTKKey *)self keychainAttributes];
    v14 = [v13 objectForKeyedSubscript:@"tkid"];
    v15 = [v12 initWithTokenID:v14];

    [v15 setCanRequireCardInsertion:1];
    v16 = [(SecCTKKey *)self keychainAttributes];
    v17 = [v16 objectForKeyedSubscript:@"u_AuthCtx"];

    v18 = [(SecCTKKey *)self keychainAttributes];
    v19 = v18;
    if (v17)
    {
      v20 = [v18 objectForKeyedSubscript:@"u_AuthCtx"];
    }

    else
    {
      v20 = [v18 objectForKeyedSubscript:@"u_CredRef"];
      if (v20)
      {
        v30 = LocalAuthenticationLibraryCore();

        if (!v30)
        {
          v20 = 0;
          goto LABEL_9;
        }

        v31 = objc_alloc(getLAContextClass());
        v19 = [(SecCTKKey *)self keychainAttributes];
        v32 = [v19 objectForKeyedSubscript:@"u_CredRef"];
        v20 = [v31 initWithExternalizedContext:v32];
      }
    }

LABEL_9:
    v21 = [objc_alloc(getTKClientTokenSessionClass()) initWithToken:v15 LAContext:v20 parameters:v11 error:a3];
    v22 = [(SecCTKKey *)self tokenOID];
    v23 = [v21 objectForObjectID:v22 error:a3];
    tokenObject = self->_tokenObject;
    self->_tokenObject = v23;

    LOBYTE(a3) = self->_tokenObject != 0;
    goto LABEL_12;
  }

  if (a3)
  {
    v25 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A768];
    v33 = *MEMORY[0x1E696A278];
    v34[0] = @"CryptoTokenKit is not available";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    *a3 = [v25 errorWithDomain:v26 code:-4 userInfo:v27];

    LOBYTE(a3) = 0;
  }

LABEL_12:
  v28 = *MEMORY[0x1E69E9840];
  return a3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SecCTKKey alloc];

  return [(SecCTKKey *)v4 initFromKey:self];
}

- (id)initFromKey:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SecCTKKey;
  v5 = [(SecCTKKey *)&v13 init];
  if (v5)
  {
    v6 = [v4 sessionParameters];
    sessionParameters = v5->_sessionParameters;
    v5->_sessionParameters = v6;

    v8 = [v4 keychainAttributes];
    keychainAttributes = v5->_keychainAttributes;
    v5->_keychainAttributes = v8;

    v10 = [v4 tokenObject];
    tokenObject = v5->_tokenObject;
    v5->_tokenObject = v10;

    v5->_isRegisteredSmartcard = [v4 isRegisteredSmartcard];
    v5->_wasAuthenticationContextProvidedBySecCaller = [v4 wasAuthenticationContextProvidedBySecCaller];
  }

  return v5;
}

- (SecCTKKey)initWithAttributes:(id)a3 error:(id *)a4
{
  v93[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v89.receiver = self;
  v89.super_class = SecCTKKey;
  v7 = [(SecCTKKey *)&v89 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_58;
  }

  v7->_isRegisteredSmartcard = 0;
  v9 = [v6 objectForKeyedSubscript:@"u_AuthCtx"];
  if (v9)
  {
  }

  else
  {
    v14 = [v6 objectForKeyedSubscript:@"u_CredRef"];

    if (v14)
    {
      v13 = 1;
      goto LABEL_9;
    }
  }

  v10 = [v6 objectForKeyedSubscript:@"u_AuthCtx"];
  if (v10)
  {
    v11 = v10;
    v12 = [v6 objectForKeyedSubscript:@"u_CredRef"];

    if (v12)
    {
      v13 = 0;
LABEL_9:
      [(SecCTKKey *)v8 setWasAuthenticationContextProvidedBySecCaller:v13];
    }
  }

  if (!v8->_tokenObject)
  {
    v15 = [v6 objectForKeyedSubscript:@"u_TokenSession"];
    if (v15)
    {
      goto LABEL_28;
    }

    if (CryptoTokenKitLibraryCore())
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
      if (SecCTKIsQueryForSystemKeychain(v6))
      {
        v17 = getTKClientTokenParameterForceSystemSession();
        [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v17];
      }

      v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[SecCTKKey wasAuthenticationContextProvidedBySecCaller](v8, "wasAuthenticationContextProvidedBySecCaller")}];
      [v16 setObject:v18 forKeyedSubscript:@"authenticationContextProvidedBySecCaller"];

      v19 = [v16 copy];
      v20 = objc_alloc(getTKClientTokenClass());
      v21 = [v6 objectForKeyedSubscript:@"tkid"];
      v22 = [v20 initWithTokenID:v21];

      v23 = [v6 objectForKeyedSubscript:@"u_AuthCtx"];

      if (v23)
      {
        v24 = [v6 objectForKeyedSubscript:@"u_AuthCtx"];
      }

      else
      {
        v31 = [v6 objectForKeyedSubscript:@"u_CredRef"];
        if (v31 && (v32 = v31, v33 = LocalAuthenticationLibraryCore(), v32, v33))
        {
          v34 = objc_alloc(getLAContextClass());
          v35 = [v6 objectForKeyedSubscript:@"u_CredRef"];
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
        v75 = [v30 domain];
        v76 = getTKErrorDomain();
        if ([v75 isEqual:v76])
        {
          v77 = [v30 code];
          getTKTokenNotFoundAndRegistered();
          v79 = v78;

          if (v77 == v79)
          {
            v8->_isRegisteredSmartcard = 1;
LABEL_27:

LABEL_28:
            v36 = [v6 objectForKeyedSubscript:@"toid"];
            if (v36)
            {
              v37 = [v15 objectForObjectID:v36 error:a4];
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
              tokenOID = [v6 mutableCopy];
              v41 = [v6 objectForKeyedSubscript:@"u_AuthCtx"];

              if (v41)
              {
                [(NSData *)tokenOID removeObjectForKey:@"u_AuthCtx"];
              }

              v42 = [v6 objectForKeyedSubscript:@"accc"];
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

              v54 = [v15 createObjectWithAttributes:v53 error:a4];
              v55 = v8->_tokenObject;
              v8->_tokenObject = v54;

              v6 = v53;
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

        if (a4)
        {
          v80 = v30;
          *a4 = v30;
        }

LABEL_21:

        goto LABEL_62;
      }

      if (!a4)
      {
LABEL_20:
        v30 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      if (!a4)
      {
        goto LABEL_20;
      }

      v25 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A768];
      v92 = *MEMORY[0x1E696A278];
      v93[0] = @"CryptoTokenKit is not available";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:&v92 count:1];
      *a4 = [v25 errorWithDomain:v26 code:-4 userInfo:v27];
    }

    v28 = MEMORY[0x1E696ABC0];
    v29 = getTKErrorDomain();
    *a4 = [v28 errorWithDomain:v29 code:-7 userInfo:0];

    goto LABEL_20;
  }

LABEL_41:
  sessionParameters = v8->_sessionParameters;
  v8->_sessionParameters = MEMORY[0x1E695E0F8];

  v57 = [(SecCTKKey *)v8 tokenObject];
  if (v57)
  {
    v58 = [(SecCTKKey *)v8 tokenObject];
    v59 = [v58 keychainAttributes];
    v60 = [v59 mutableCopy];
  }

  else
  {
    v60 = [MEMORY[0x1E695E0F8] mutableCopy];
  }

  [v60 addEntriesFromDictionary:v6];
  v61 = [v60 objectForKeyedSubscript:@"accc"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v62 = SecAccessControlCreateFromData(*MEMORY[0x1E695E480], v61, a4);

    if (!v62)
    {

      goto LABEL_59;
    }

    v81 = v6;
    v83 = v8;
    [v60 setObject:v62 forKeyedSubscript:@"accc"];
    v61 = v62;
  }

  else
  {
    v81 = v6;
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
          v70 = [v69 stringValue];
          [v60 setObject:v70 forKeyedSubscript:v68];
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

  v6 = v82;
LABEL_58:
  v62 = v8;
LABEL_59:

  v73 = *MEMORY[0x1E69E9840];
  return v62;
}

@end