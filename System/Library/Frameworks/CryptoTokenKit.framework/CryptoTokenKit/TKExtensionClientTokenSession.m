@interface TKExtensionClientTokenSession
- (BOOL)ensureSessionWithClient:(id)a3 connectionIdentifier:(int64_t)a4 error:(id *)a5;
- (BOOL)evaluateAccessControl:(id)a3 forOperation:(id)a4 error:(id *)a5;
- (BOOL)isValidWithError:(id *)a3;
- (TKExtensionClientTokenSession)initWithToken:(id)a3 LAContext:(id)a4 parameters:(id)a5 error:(id *)a6;
- (TKExtensionClientTokenSession)initWithToken:(id)a3 LAContext:(id)a4 parameters:(id)a5 tokenManager:(id)a6 error:(id *)a7;
- (id)advertisedItems;
- (id)createObjectWithAttributes:(id)a3 error:(id *)a4;
- (id)identities;
- (id)itemsOfClass:(id)a3;
- (id)objectForObjectID:(id)a3 error:(id *)a4;
- (id)slotName;
- (id)withError:(id *)a3 accessControl:(__SecAccessControl *)a4 invoke:(id)a5;
- (void)_clearCredentialIfNeededForTokenID:(id)a3 inContext:(id)a4;
- (void)_updatePINInitialStateWithContext:(id)a3 forToken:(id)a4;
- (void)dealloc;
- (void)handleErrorForRegisteredSmartcards:(id)a3 forToken:(id)a4;
- (void)terminate;
@end

@implementation TKExtensionClientTokenSession

- (TKExtensionClientTokenSession)initWithToken:(id)a3 LAContext:(id)a4 parameters:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[TKRegisteredTokenManager sharedInstance];
  v14 = [(TKExtensionClientTokenSession *)self initWithToken:v12 LAContext:v11 parameters:v10 tokenManager:v13 error:a6];

  return v14;
}

- (TKExtensionClientTokenSession)initWithToken:(id)a3 LAContext:(id)a4 parameters:(id)a5 tokenManager:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v21.receiver = self;
  v21.super_class = TKExtensionClientTokenSession;
  v16 = [(TKClientTokenSession *)&v21 _initWithToken:v12 LAContext:v13 parameters:v14 error:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(v16 + 14, a6);
    v18 = [v14 objectForKeyedSubscript:@"authenticationContextProvidedBySecCaller"];

    if (v18)
    {
      v19 = [v14 objectForKeyedSubscript:@"authenticationContextProvidedBySecCaller"];
      v17->_authenticationContextWasProvidedByCaller = [v19 BOOLValue];
    }

    if (v13 && v17->_authenticationContextWasProvidedByCaller)
    {
      [(TKExtensionClientTokenSession *)v17 _updatePINInitialStateWithContext:v13 forToken:v12];
    }
  }

  return v17;
}

- (void)terminate
{
  v3 = [(TKExtensionClientTokenSession *)self sessionID];

  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__TKExtensionClientTokenSession_terminate__block_invoke;
    v5[3] = &unk_1E86B7BE8;
    v5[4] = self;
    v4 = [(TKExtensionClientTokenSession *)self withError:0 accessControl:0 invoke:v5];
  }
}

uint64_t __42__TKExtensionClientTokenSession_terminate__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sessionID];
  [v3 endSession:v4 reply:&__block_literal_global_11];

  return MEMORY[0x1E695E118];
}

- (BOOL)isValidWithError:(id *)a3
{
  v3 = [(TKExtensionClientTokenSession *)self withError:a3 accessControl:0 invoke:&__block_literal_global_115];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)ensureSessionWithClient:(id)a3 connectionIdentifier:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (self->_connectionIdentifier == a4)
  {
    goto LABEL_7;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v9 = [(TKClientTokenSession *)self LAContext];
  v10 = [(TKClientTokenSession *)self parameters];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__TKExtensionClientTokenSession_ensureSessionWithClient_connectionIdentifier_error___block_invoke;
  v14[3] = &unk_1E86B7C30;
  v14[4] = self;
  v14[5] = &v15;
  [v8 startSessionWithLAContext:v9 parameters:v10 reply:v14];

  sessionID = self->_sessionID;
  if (sessionID)
  {
    self->_connectionIdentifier = a4;
  }

  else if (a5)
  {
    *a5 = v16[5];
  }

  _Block_object_dispose(&v15, 8);

  if (sessionID)
  {
LABEL_7:
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __84__TKExtensionClientTokenSession_ensureSessionWithClient_connectionIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 120);
  *(v7 + 120) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)_updatePINInitialStateWithContext:(id)a3 forToken:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 isCredentialSet:-3];
  v11 = [(TKExtensionClientTokenSession *)self lastUsedRegisteredTokenID];
  v9 = (v11 == 0) | ![(TKExtensionClientTokenSession *)self wasPINCredentialProvidedByPINUI];
  if (!v8)
  {
    LOBYTE(v9) = 0;
  }

  [(TKExtensionClientTokenSession *)self setWasPINCredentialInitiallySet:v9 & 1];
  v10 = [v6 tokenID];

  [(TKExtensionClientTokenSession *)self _clearCredentialIfNeededForTokenID:v10 inContext:v7];
}

- (void)_clearCredentialIfNeededForTokenID:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && self->_authenticationContextWasProvidedByCaller)
  {
    v9 = [v7 isCredentialSet:-3];
    v10 = [(TKExtensionClientTokenSession *)self lastUsedRegisteredTokenID];
    v11 = [(TKExtensionClientTokenSession *)self wasPINCredentialProvidedByPINUI];
    if (v9)
    {
      if (v10)
      {
        v12 = v11;
        if (([v10 isEqual:v6] & 1) == 0 && (v12 || !-[TKExtensionClientTokenSession wasPINCredentialInitiallySet](self, "wasPINCredentialInitiallySet")))
        {
          v13 = TK_LOG_client_0();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [TKExtensionClientTokenSession _clearCredentialIfNeededForTokenID:v13 inContext:?];
          }

          [v8 setCredential:0 type:-3];
          [(TKExtensionClientTokenSession *)self setLastUsedRegisteredTokenID:0];
          [(TKExtensionClientTokenSession *)self setWasPINCredentialProvidedByPINUI:0];
        }
      }
    }
  }
}

- (void)handleErrorForRegisteredSmartcards:(id)a3 forToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 domain];
    if ([v8 isEqual:@"CryptoTokenKit"] && (objc_msgSend(v7, "canRequireCardInsertion") & 1) != 0)
    {
      v9 = [(TKClientTokenSession *)self LAContext];

      if (v9)
      {
        if ([v6 code] == -1003)
        {
          v10 = [(TKClientTokenSession *)self LAContext];
          v11 = [v10 isCredentialSet:-3];

          if (v11)
          {
            [(TKExtensionClientTokenSession *)self setWasPINCredentialProvidedByPINUI:1];
            if (![(TKExtensionClientTokenSession *)self wasPINCredentialInitiallySet])
            {
              v12 = [v7 tokenID];
              [(TKExtensionClientTokenSession *)self setLastUsedRegisteredTokenID:v12];
            }
          }
        }

        if ([v6 code] == -5 && !-[TKExtensionClientTokenSession wasPINCredentialInitiallySet](self, "wasPINCredentialInitiallySet"))
        {
          if ([(TKExtensionClientTokenSession *)self wasPINCredentialProvidedByPINUI])
          {
            v13 = [(TKClientTokenSession *)self LAContext];
            v14 = [v13 isCredentialSet:-3];

            if (v14)
            {
              v15 = TK_LOG_client_0();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                [TKExtensionClientTokenSession handleErrorForRegisteredSmartcards:v6 forToken:v15];
              }

              v16 = [(TKClientTokenSession *)self LAContext];
              [v16 setCredential:0 type:-3];
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

- (id)withError:(id *)a3 accessControl:(__SecAccessControl *)a4 invoke:(id)a5
{
  v8 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__4;
  v35 = __Block_byref_object_dispose__4;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v9 = [(TKClientTokenSession *)self token];
  v10 = [v9 tokenID];
  v11 = [(TKClientTokenSession *)self LAContext];
  [(TKExtensionClientTokenSession *)self _clearCredentialIfNeededForTokenID:v10 inContext:v11];

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __64__TKExtensionClientTokenSession_withError_accessControl_invoke___block_invoke;
  v20 = &unk_1E86B7C58;
  v21 = self;
  v12 = v8;
  v23 = v12;
  v24 = &v31;
  v25 = &v27;
  v26 = a4;
  v13 = v9;
  v22 = v13;
  v14 = [v13 withError:a3 invoke:&v17];
  v15 = v32[5];
  if (v15)
  {
    if (([v15 isEqual:{self->_sessionID, v17, v18, v19, v20, v21}] & 1) == 0)
    {
      [(TKExtensionClientTokenSession *)self terminate];
      objc_storeStrong(&self->_sessionID, v32[5]);
      self->_connectionIdentifier = v28[3];
    }

    [(TKClientTokenSession *)self setLAContext:0];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

id __64__TKExtensionClientTokenSession_withError_accessControl_invoke___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = 0;
  v35 = @"CryptoTokenKit";
  v9 = 16;
  do
  {
    if (![*(a1 + 32) ensureSessionWithClient:v7 connectionIdentifier:a3 error:{a4, v35}])
    {
      v10 = 0;
      goto LABEL_36;
    }

    v10 = (*(*(a1 + 48) + 16))();
    v11 = 0;
    v12 = v11;
    if (v10)
    {
      goto LABEL_25;
    }

    v13 = [v11 domain];
    if (![v13 isEqualToString:v35] || objc_msgSend(v12, "code") != -9 || !*(a1 + 72))
    {

LABEL_23:
      if (a4)
      {
        v27 = v12;
        *a4 = v12;
      }

LABEL_25:
      v28 = v10;
      goto LABEL_35;
    }

    v14 = [*(a1 + 32) authenticateWhenNeeded];

    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }

    v15 = [*(a1 + 32) LAContext];

    if (!v15)
    {
      gotLoadHelper_x8__OBJC_CLASS___LAContext(v16);
      v18 = objc_alloc_init(*(v17 + 3664));
      [*(a1 + 32) setLAContext:v18];

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 120));
      *(*(*(a1 + 64) + 8) + 24) = *(*(a1 + 32) + 80);
      *(*(a1 + 32) + 80) = 0;
      if (![*(a1 + 32) ensureSessionWithClient:v7 connectionIdentifier:a3 error:a4])
      {
        goto LABEL_35;
      }
    }

    v19 = [v12 userInfo];
    v20 = [v19 objectForKeyedSubscript:@"operation"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = TK_LOG_client_0();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        [TKSEPClientTokenObject withError:v12 invoke:v29];
      }

      if (a4)
      {
        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:v35 code:-5 userInfo:0];
      }

LABEL_34:
      v8 = v20;
LABEL_35:

      goto LABEL_36;
    }

    if ([*(a1 + 32) _testing_AuthenticateInternally])
    {
      v21 = *(a1 + 72);
      v22 = SecAccessControlCopyData();
      v23 = [*(a1 + 32) evaluateAccessControl:v22 forOperation:v20 error:a4];

      if ((v23 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v24 = [*(a1 + 32) LAContext];
      v25 = [v24 evaluateAccessControl:*(a1 + 72) aksOperation:v20 options:MEMORY[0x1E695E0F8] error:a4];

      if (a4 && !v25)
      {
        if (*a4 && [*(a1 + 40) canRequireCardInsertion])
        {
          [*(a1 + 32) handleErrorForRegisteredSmartcards:*a4 forToken:*(a1 + 40)];
        }

        goto LABEL_34;
      }

      if (!v25)
      {
        goto LABEL_34;
      }
    }

    v8 = v20;
    --v9;
  }

  while (v9);
  v26 = TK_LOG_client_0();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    v32 = [*(a1 + 32) token];
    v33 = [v32 tokenID];
    v34 = *(a1 + 72);
    *buf = 138543874;
    v37 = v33;
    v38 = 2114;
    v39 = v34;
    v40 = 2114;
    v41 = v20;
    _os_log_fault_impl(&dword_1DF413000, v26, OS_LOG_TYPE_FAULT, "authentication failed repeatedly: tkid=%{public}@, ac=%{public}@, op=%{public}@", buf, 0x20u);
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:v35 code:-5 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  v8 = v20;
LABEL_36:

  v30 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)evaluateAccessControl:(id)a3 forOperation:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&dword_1DF413000, "ExtClientObject: evaluateAccessControl", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__TKExtensionClientTokenSession_evaluateAccessControl_forOperation_error___block_invoke;
  v15[3] = &unk_1E86B7C80;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v13 = [(TKExtensionClientTokenSession *)self withError:a5 accessControl:0 invoke:v15];
  LOBYTE(a5) = [v13 BOOLValue];

  os_activity_scope_leave(&state);
  return a5;
}

id __74__TKExtensionClientTokenSession_evaluateAccessControl_forOperation_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  v6 = [*(a1 + 32) sessionID];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__TKExtensionClientTokenSession_evaluateAccessControl_forOperation_error___block_invoke_2;
  v12[3] = &unk_1E86B7178;
  v12[4] = &v19;
  v12[5] = &v13;
  [v5 session:v6 evaluateAccessControl:v7 forOperation:v8 reply:v12];

  v9 = v20[5];
  if (a3 && !v9)
  {
    *a3 = v14[5];
    v9 = v20[5];
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __74__TKExtensionClientTokenSession_evaluateAccessControl_forOperation_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (id)objectForObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = _os_activity_create(&dword_1DF413000, "ExtClientObject: getObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __57__TKExtensionClientTokenSession_objectForObjectID_error___block_invoke;
  v16 = &unk_1E86B7BC0;
  v17 = self;
  v8 = v6;
  v18 = v8;
  v9 = [(TKExtensionClientTokenSession *)self withError:a4 accessControl:0 invoke:&v13];
  if (v9)
  {
    v10 = [TKExtensionClientTokenObject alloc];
    v11 = [(TKClientTokenObject *)v10 initWithSession:self objectID:v8 attributes:v9, v13, v14, v15, v16, v17];
  }

  else
  {
    v11 = 0;
  }

  os_activity_scope_leave(&state);

  return v11;
}

id __57__TKExtensionClientTokenSession_objectForObjectID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v6 = [*(a1 + 32) sessionID];
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__TKExtensionClientTokenSession_objectForObjectID_error___block_invoke_2;
  v11[3] = &unk_1E86B7CA8;
  v11[4] = &v18;
  v11[5] = &v12;
  [v5 session:v6 getAttributesOfObjectID:v7 reply:v11];

  v8 = v19[5];
  if (a3 && !v8)
  {
    *a3 = v13[5];
    v8 = v19[5];
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __57__TKExtensionClientTokenSession_objectForObjectID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)createObjectWithAttributes:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = _os_activity_create(&dword_1DF413000, "ExtClientObject: createObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__4;
  v40 = __Block_byref_object_dispose__4;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4;
  v30 = __Block_byref_object_dispose__4;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__4;
  v24[4] = __Block_byref_object_dispose__4;
  v25 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __66__TKExtensionClientTokenSession_createObjectWithAttributes_error___block_invoke;
  v17 = &unk_1E86B7CF8;
  v20 = v24;
  v18 = self;
  v8 = v6;
  v19 = v8;
  v21 = &v36;
  v22 = &v32;
  v23 = &v26;
  v9 = [(TKExtensionClientTokenSession *)self withError:a4 accessControl:0 invoke:&v14];
  v10 = v37[5];
  if (v10)
  {
    if (([v10 isEqual:{self->_sessionID, v14, v15, v16, v17, v18}] & 1) == 0)
    {
      [(TKExtensionClientTokenSession *)self terminate];
      objc_storeStrong(&self->_sessionID, v37[5]);
      self->_connectionIdentifier = v33[3];
    }

    [(TKClientTokenSession *)self setLAContext:0];
  }

  if (v27[5])
  {
    v11 = [TKExtensionClientTokenObject alloc];
    v12 = [(TKClientTokenObject *)v11 initWithSession:self objectID:v27[5] attributes:v9];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  os_activity_scope_leave(&state);

  return v12;
}

id __66__TKExtensionClientTokenSession_createObjectWithAttributes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v33 = 0;
    v8 = [v6 processObjectCreationAttributes:v7 authContext:&v33 error:a3];
    v9 = v33;
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v8;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      goto LABEL_16;
    }

    v12 = [*(a1 + 32) LAContext];

    if (!v12)
    {
      if (v9)
      {
        [*(a1 + 32) setLAContext:v9];
      }

      else
      {
        gotLoadHelper_x8__OBJC_CLASS___LAContext(v13);
        v15 = objc_alloc_init(*(v14 + 3664));
        [*(a1 + 32) setLAContext:v15];
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 120));
      *(*(*(a1 + 64) + 8) + 24) = *(*(a1 + 32) + 80);
      *(*(a1 + 32) + 80) = 0;
      if (![*(a1 + 32) ensureSessionWithClient:v5 connectionIdentifier:*(*(*(a1 + 64) + 8) + 24) error:a3])
      {
LABEL_16:

        v18 = 0;
        goto LABEL_13;
      }
    }
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v16 = [*(a1 + 32) sessionID];
  v17 = *(*(*(a1 + 48) + 8) + 40);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__TKExtensionClientTokenSession_createObjectWithAttributes_error___block_invoke_2;
  v20[3] = &unk_1E86B7CD0;
  v20[4] = *(a1 + 72);
  v20[5] = &v27;
  v20[6] = &v21;
  [v5 session:v16 createObjectWithAttributes:v17 reply:v20];

  if (a3 && !*(*(*(a1 + 72) + 8) + 40))
  {
    *a3 = v22[5];
  }

  v18 = v28[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
LABEL_13:

  return v18;
}

void __66__TKExtensionClientTokenSession_createObjectWithAttributes_error___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

- (void)dealloc
{
  [(TKExtensionClientTokenSession *)self terminate];
  v3.receiver = self;
  v3.super_class = TKExtensionClientTokenSession;
  [(TKExtensionClientTokenSession *)&v3 dealloc];
}

- (id)advertisedItems
{
  advertisedItems = self->_advertisedItems;
  if (!advertisedItems)
  {
    v4 = _os_activity_create(&dword_1DF413000, "ExtClientObject: advertisedItems", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__TKExtensionClientTokenSession_advertisedItems__block_invoke;
    v7[3] = &unk_1E86B7BE8;
    v7[4] = self;
    v5 = [(TKExtensionClientTokenSession *)self withError:0 accessControl:0 invoke:v7];
    os_activity_scope_leave(&state);

    advertisedItems = self->_advertisedItems;
  }

  return advertisedItems;
}

id __48__TKExtensionClientTokenSession_advertisedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sessionID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__TKExtensionClientTokenSession_advertisedItems__block_invoke_2;
  v7[3] = &unk_1E86B7598;
  v7[4] = *(a1 + 32);
  [v4 session:v5 getAdvertisedItemsWithReply:v7];

  return *(*(a1 + 32) + 88);
}

- (id)itemsOfClass:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = [MEMORY[0x1E695E0F0] mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self;
  v6 = [(TKExtensionClientTokenSession *)self advertisedItems];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = *MEMORY[0x1E697AFF8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:v10];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          v15 = [[TKClientTokenAdvertisedItem alloc] initWithSession:v5 keychainAttributes:v12 secRef:0];
          [v19 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = [v19 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)identities
{
  v47 = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E695E0F0] mutableCopy];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = self;
  obj = [(TKExtensionClientTokenSession *)self keys];
  v31 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v31)
  {
    v30 = *v42;
    v35 = *MEMORY[0x1E697AE60];
    v34 = *MEMORY[0x1E697AC40];
    v28 = *MEMORY[0x1E697B010];
    v26 = *MEMORY[0x1E697ADC8];
    v27 = *MEMORY[0x1E697AFF8];
    v25 = *MEMORY[0x1E695E480];
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v4 = [(TKExtensionClientTokenSession *)v32 certificates];
        v5 = [v4 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v5)
        {
          v6 = v5;
          v33 = i;
          v7 = *v38;
LABEL_8:
          v8 = 0;
          while (1)
          {
            if (*v38 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v37 + 1) + 8 * v8);
            v10 = [v9 keychainAttributes];
            v11 = [v10 objectForKeyedSubscript:v35];
            v12 = [v36 keychainAttributes];
            v13 = [v12 objectForKeyedSubscript:v34];
            v14 = [v11 isEqual:v13];

            if (v14)
            {
              break;
            }

            if (v6 == ++v8)
            {
              v6 = [v4 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v6)
              {
                goto LABEL_8;
              }

              v15 = v4;
              i = v33;
              goto LABEL_23;
            }
          }

          v15 = v9;

          i = v33;
          if (!v15)
          {
            continue;
          }

          v16 = [v36 keychainAttributes];
          v17 = [v16 mutableCopy];

          [v17 setObject:v28 forKeyedSubscript:v27];
          v18 = [v15 localizedName];
          [v17 setObject:v18 forKeyedSubscript:v26];

          if ([v36 keyRef] && objc_msgSend(v15, "certificateRef"))
          {
            [v15 certificateRef];
            [v36 keyRef];
            v19 = SecIdentityCreate();
            if (v19)
            {
              v20 = [[TKClientTokenAdvertisedItem alloc] initWithSession:v32 keychainAttributes:v17 secRef:v19];
              [v24 addObject:v20];
            }
          }
        }

        else
        {
          v15 = v4;
        }

LABEL_23:
      }

      v31 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v31);
  }

  v21 = [v24 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)slotName
{
  slotName = self->_slotName;
  if (!slotName)
  {
    v4 = _os_activity_create(&dword_1DF413000, "ExtClientObject: slotName", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__TKExtensionClientTokenSession_slotName__block_invoke;
    v7[3] = &unk_1E86B7BE8;
    v7[4] = self;
    v5 = [(TKExtensionClientTokenSession *)self withError:0 accessControl:0 invoke:v7];
    os_activity_scope_leave(&state);

    slotName = self->_slotName;
  }

  return slotName;
}

id __41__TKExtensionClientTokenSession_slotName__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sessionID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__TKExtensionClientTokenSession_slotName__block_invoke_2;
  v7[3] = &unk_1E86B7D20;
  v7[4] = *(a1 + 32);
  [v4 session:v5 slotNameWithReply:v7];

  return *(*(a1 + 32) + 96);
}

- (void)handleErrorForRegisteredSmartcards:(uint64_t)a1 forToken:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "Deleting set PIN credential due to auth error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end