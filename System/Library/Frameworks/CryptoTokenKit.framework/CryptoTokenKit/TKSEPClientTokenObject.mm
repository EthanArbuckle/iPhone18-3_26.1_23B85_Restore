@interface TKSEPClientTokenObject
- (BOOL)deleteWithError:(id *)error;
- (TKSEPClientTokenObject)initWithSession:(id)session key:(id)key error:(id *)error;
- (id)operation:(int64_t)operation data:(id)data algorithms:(id)algorithms parameters:(id)parameters error:(id *)error;
- (id)withError:(id *)error invoke:(id)invoke;
@end

@implementation TKSEPClientTokenObject

- (TKSEPClientTokenObject)initWithSession:(id)session key:(id)key error:(id *)error
{
  sessionCopy = session;
  keyCopy = key;
  v10 = [keyCopy publicKeyWithError:error];
  if (v10)
  {
    attributes = [keyCopy attributes];
    v12 = [attributes mutableCopy];

    [v12 setObject:v10 forKeyedSubscript:@"pubk"];
    objectID = [keyCopy objectID];
    v14 = [TKTokenID encodedKeyID:objectID];
    v15 = [v12 copy];
    v19.receiver = self;
    v19.super_class = TKSEPClientTokenObject;
    v16 = [(TKClientTokenObject *)&v19 initWithSession:sessionCopy objectID:v14 attributes:v15];

    if (v16)
    {
      objc_storeStrong(&v16->_key, key);
    }

    self = v16;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)withError:(id *)error invoke:(id)invoke
{
  invokeCopy = invoke;
  v7 = invokeCopy[2];
  v37 = 0;
  v8 = v7(invokeCopy, &v37);
  v9 = v37;
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v36 = 0;
    v10 = 0;
    v11 = 17;
    while (1)
    {
      domain = [v9 domain];
      if (![domain isEqualToString:@"CryptoTokenKit"] || objc_msgSend(v9, "code") != -9)
      {
        break;
      }

      session = [(TKClientTokenObject *)self session];
      authenticateWhenNeeded = [session authenticateWhenNeeded];

      if ((authenticateWhenNeeded & 1) == 0)
      {
        goto LABEL_17;
      }

      if (!--v11)
      {
        v32 = TK_LOG_client();
        v33 = v36;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          [(TKSEPClientTokenObject *)self withError:v10 invoke:v32];
        }

        if (error)
        {
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-5 userInfo:0];

          v8 = 0;
          if ((v36 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }

        v8 = 0;
        v16 = v10;
        goto LABEL_35;
      }

      userInfo = [v9 userInfo];
      v16 = [userInfo objectForKeyedSubscript:@"operation"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v34 = TK_LOG_client();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          [TKSEPClientTokenObject withError:v9 invoke:v34];
        }

        if (error)
        {
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-5 userInfo:0];

          v8 = 0;
LABEL_29:
          v10 = v16;
LABEL_30:
          if ((v36 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }

        v8 = 0;
        goto LABEL_34;
      }

      v17 = [(TKSEPClientTokenObject *)self key];
      authContext = [v17 authContext];

      if (!authContext)
      {
        gotLoadHelper_x8__OBJC_CLASS___LAContext(v19);
        v21 = objc_alloc_init(*(v20 + 3664));
        v22 = [(TKSEPClientTokenObject *)self key];
        [v22 setAuthContext:v21];

        v36 = 1;
      }

      session2 = [(TKClientTokenObject *)self session];
      _testing_AuthContextUsed = [session2 _testing_AuthContextUsed];

      if (_testing_AuthContextUsed)
      {
        v25 = [(TKSEPClientTokenObject *)self key];
        authContext2 = [v25 authContext];
        session3 = [(TKClientTokenObject *)self session];
        [session3 set_testing_AuthContextUsed:authContext2];
      }

      v28 = [(TKSEPClientTokenObject *)self key];
      authContext3 = [v28 authContext];
      accessControlRef = [(TKClientTokenObject *)self accessControlRef];
      v8 = [authContext3 evaluateAccessControl:accessControlRef aksOperation:v16 options:MEMORY[0x1E695E0F8] error:error];

      if (!v8)
      {
        goto LABEL_29;
      }

      v37 = 0;
      v8 = (invokeCopy[2])(invokeCopy, &v37);
      v9 = v37;
      v10 = v16;
      if (v8)
      {
        goto LABEL_34;
      }
    }

LABEL_17:
    if (error)
    {
      v31 = v9;
      *error = v9;

      v8 = 0;
      goto LABEL_30;
    }

    v8 = 0;
    v16 = v10;
LABEL_34:
    v33 = v36;
LABEL_35:

    v10 = v16;
    if ((v33 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_36:
    v9 = [(TKSEPClientTokenObject *)self key];
    [v9 setAuthContext:0];
  }

LABEL_38:

  return v8;
}

- (BOOL)deleteWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DF413000, "SEPClientObject: deleteKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__TKSEPClientTokenObject_deleteWithError___block_invoke;
  v8[3] = &unk_1E86B7850;
  v8[4] = self;
  v6 = [(TKSEPClientTokenObject *)self withError:error invoke:v8];
  LOBYTE(error) = [v6 BOOLValue];

  os_activity_scope_leave(&state);
  return error;
}

void *__42__TKSEPClientTokenObject_deleteWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) key];
  if ([v3 deleteWithError:a2])
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)operation:(int64_t)operation data:(id)data algorithms:(id)algorithms parameters:(id)parameters error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  algorithmsCopy = algorithms;
  parametersCopy = parameters;
  v15 = _os_activity_create(&dword_1DF413000, "SEPClientObject: operation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v16 = TK_LOG_client();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    lastObject = [algorithmsCopy lastObject];
    [TKSEPClientTokenObject operation:operation data:lastObject algorithms:buf parameters:v16 error:?];
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __69__TKSEPClientTokenObject_operation_data_algorithms_parameters_error___block_invoke;
  v25[3] = &unk_1E86B7878;
  v25[4] = self;
  operationCopy = operation;
  v18 = algorithmsCopy;
  v26 = v18;
  v19 = dataCopy;
  v27 = v19;
  v20 = parametersCopy;
  v28 = v20;
  v21 = [(TKSEPClientTokenObject *)self withError:error invoke:v25];
  if (!v21)
  {
    v22 = TK_LOG_client();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [TKSEPClientTokenObject operation:operation data:error algorithms:v22 parameters:? error:?];
    }
  }

  os_activity_scope_leave(&state);
  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

id __69__TKSEPClientTokenObject_operation_data_algorithms_parameters_error___block_invoke(uint64_t a1, void *a2)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) session];
  v5 = [v4 _testing_ForceAuthenticationNeeded];

  if (v5)
  {
    v6 = [*(a1 + 32) session];
    [v6 set_testing_ForceAuthenticationNeeded:0];

    if (!a2)
    {
LABEL_53:
      v13 = 0;
      goto LABEL_73;
    }

    v7 = 0;
    v8 = *(a1 + 64);
    if (v8 <= 3)
    {
      if (v8 == 2)
      {
        v61 = @"operation";
        v62[0] = @"osgn";
        v9 = MEMORY[0x1E695DF20];
        v10 = v62;
        v11 = &v61;
        goto LABEL_51;
      }

      if (v8 == 3)
      {
        v57 = @"operation";
        v58 = @"oecd";
        v9 = MEMORY[0x1E695DF20];
        v10 = &v58;
        v11 = &v57;
        goto LABEL_51;
      }
    }

    else
    {
      switch(v8)
      {
        case 4:
          v59 = @"operation";
          v60 = @"ock";
          v9 = MEMORY[0x1E695DF20];
          v10 = &v60;
          v11 = &v59;
          goto LABEL_51;
        case 1000:
          v53 = @"operation";
          v54 = @"oa";
          v9 = MEMORY[0x1E695DF20];
          v10 = &v54;
          v11 = &v53;
          goto LABEL_51;
        case 1003:
          v55 = @"operation";
          v56 = @"okd";
          v9 = MEMORY[0x1E695DF20];
          v10 = &v56;
          v11 = &v55;
LABEL_51:
          v7 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
          break;
      }
    }

    *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-9 userInfo:v7];

    goto LABEL_53;
  }

  v12 = *(a1 + 64);
  if (v12 > 999)
  {
    if (v12 <= 1001)
    {
      if (v12 != 1000)
      {
        v13 = MEMORY[0x1E695E118];
        if (!*(a1 + 48))
        {
          goto LABEL_73;
        }

        v14 = [*(a1 + 32) key];
        v15 = v14;
        v16 = 0;
        goto LABEL_37;
      }

      if (*(a1 + 48))
      {
        v23 = [*(a1 + 32) session];
        v24 = [v23 tokenID];
        v21 = [v24 decodedKeyID:*(a1 + 48) error:a2];

        if (v21)
        {
          v25 = [TKSEPKey alloc];
          v26 = [*(a1 + 32) session];
          v27 = [v26 LAContext];
          v28 = [*(a1 + 56) objectForKeyedSubscript:@"attesteeSystemSession"];
          v29 = -[TKSEPKey initWithObjectID:authContext:forceSystemSession:error:](v25, "initWithObjectID:authContext:forceSystemSession:error:", v21, v27, [v28 BOOLValue], a2);

          if (v29)
          {
            v30 = [*(a1 + 32) key];
            v31 = [*(a1 + 56) objectForKeyedSubscript:@"nonce"];
            v13 = [v30 attestKey:v29 nonce:v31 error:a2];
          }

          else
          {
            v13 = 0;
          }

LABEL_80:

          goto LABEL_61;
        }

        v13 = 0;
LABEL_61:

        goto LABEL_73;
      }

      goto LABEL_70;
    }

    if (v12 == 1002)
    {
      v13 = MEMORY[0x1E695E118];
      if (!*(a1 + 48))
      {
        goto LABEL_73;
      }

      v14 = [*(a1 + 32) key];
      v15 = v14;
      v16 = 1;
LABEL_37:
      if ([v14 lifetimeControlWithType:v16 error:a2])
      {
        v32 = v13;
      }

      else
      {
        v32 = 0;
      }

      v13 = v32;

      goto LABEL_73;
    }

    if (v12 == 1003)
    {
      v18 = [*(a1 + 40) lastObject];
      if ([v18 isEqualToString:*MEMORY[0x1E697B158]])
      {

        goto LABEL_55;
      }

      v37 = [*(a1 + 40) lastObject];
      v38 = [v37 isEqualToString:*MEMORY[0x1E697B160]];

      if (v38)
      {
LABEL_55:
        if (*(a1 + 48))
        {
          v21 = [*(a1 + 32) key];
          v22 = [v21 decapsulateKey:*(a1 + 48) error:a2];
          goto LABEL_60;
        }

LABEL_70:
        v13 = MEMORY[0x1E695E118];
        goto LABEL_73;
      }
    }

    goto LABEL_72;
  }

  switch(v12)
  {
    case 2:
      v19 = [*(a1 + 40) lastObject];
      if (([v19 isEqualToString:*MEMORY[0x1E697B100]] & 1) == 0)
      {
        v20 = [*(a1 + 40) lastObject];
        if (![v20 isEqualToString:*MEMORY[0x1E697B148]])
        {
          v41 = [*(a1 + 40) lastObject];
          v42 = [v41 isEqualToString:*MEMORY[0x1E697B150]];

          if ((v42 & 1) == 0)
          {
            v43 = [*(a1 + 40) lastObject];
            v44 = [v43 isEqualToString:*MEMORY[0x1E697B168]];

            if (v44)
            {
              v45 = *(a1 + 48);
              if (v45)
              {
                v46 = *(a1 + 56);
                if (v46)
                {
                  v47 = [v46 objectForKeyedSubscript:*MEMORY[0x1E697B250]];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v48 = v47;
                  }

                  else
                  {
                    v48 = 0;
                  }

                  v21 = v48;

                  v45 = *(a1 + 48);
                }

                else
                {
                  v21 = 0;
                }

                v51 = [*(a1 + 32) publicKey];
                v29 = [TKMLDSAPrehasher prehashDataWithMessageData:v45 publicKey:v51 context:v21];

                v52 = [*(a1 + 32) key];
                v13 = [v52 signDigest:v29 error:a2];

                goto LABEL_80;
              }

              goto LABEL_70;
            }

            break;
          }

          goto LABEL_29;
        }
      }

LABEL_29:
      if (!*(a1 + 48))
      {
        goto LABEL_70;
      }

      v21 = [*(a1 + 32) key];
      v22 = [v21 signDigest:*(a1 + 48) error:a2];
      goto LABEL_60;
    case 3:
      v33 = [*(a1 + 40) lastObject];
      v34 = [v33 isEqualToString:*MEMORY[0x1E697B140]];
      if ((v34 & 1) == 0)
      {
        v5 = [*(a1 + 40) lastObject];
        if (([v5 isEqualToString:*MEMORY[0x1E697B138]] & 1) == 0)
        {

          break;
        }
      }

      v35 = [*(a1 + 56) objectForKey:*MEMORY[0x1E697B208]];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((v34 & 1) == 0)
      {
      }

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      if (!*(a1 + 48))
      {
        goto LABEL_70;
      }

      v21 = [*(a1 + 32) key];
      v22 = [v21 recryptData:*(a1 + 48) attributes:*(a1 + 56) error:a2];
LABEL_60:
      v13 = v22;
      goto LABEL_61;
    case 4:
      v17 = [*(a1 + 40) lastObject];
      if ([v17 isEqualToString:*MEMORY[0x1E697B0D0]])
      {
      }

      else
      {
        v39 = [*(a1 + 40) lastObject];
        v40 = [v39 isEqualToString:*MEMORY[0x1E697B0C8]];

        if (!v40)
        {
          break;
        }
      }

      if (*(a1 + 48))
      {
        v21 = [*(a1 + 32) key];
        v22 = [v21 computeSharedSecret:*(a1 + 48) error:a2];
        goto LABEL_60;
      }

      goto LABEL_70;
  }

LABEL_72:
  v13 = [MEMORY[0x1E695DFB0] null];
LABEL_73:
  v49 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)withError:(uint64_t)a1 invoke:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1DF413000, a2, OS_LOG_TYPE_FAULT, "TKErrorCodeAuthenticationNeeded does not have operation set: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)withError:(NSObject *)a3 invoke:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [a1 session];
  v7 = [v6 token];
  v8 = [v7 tokenID];
  v9 = [a1 accessControl];
  v11 = 138543874;
  v12 = v8;
  v13 = 2114;
  v14 = v9;
  v15 = 2114;
  v16 = a2;
  _os_log_fault_impl(&dword_1DF413000, a3, OS_LOG_TYPE_FAULT, "authentication failed repeatedly: tkid=%{public}@, ac=%{public}@, op=%{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)operation:(uint8_t *)buf data:(os_log_t)log algorithms:parameters:error:.cold.1(int a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a1;
  *(buf + 4) = 2114;
  *(buf + 10) = a2;
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "operation:%d algo:%{public}@", buf, 0x12u);
}

- (void)operation:(os_log_t)log data:algorithms:parameters:error:.cold.2(int a1, __CFString **a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = &stru_1F5A7A8A8;
  }

  v5[0] = 67109378;
  v5[1] = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "operation:%d failed, error: %{public}@", v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

@end