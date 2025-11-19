@interface TKExtensionClientToken
- (BOOL)ensureConnectionCanRequireCardInsertion:(BOOL)a3 error:(id *)a4;
- (TKExtensionClientToken)initWithTokenID:(id)a3;
- (TKExtensionClientToken)initWithTokenID:(id)a3 ctkdConnection:(id)a4;
- (id)withError:(id *)a3 invoke:(id)a4;
- (void)dealloc;
- (void)notifyOperation:(int64_t)a3 forToken:(id)a4 withStatus:(int64_t)a5;
@end

@implementation TKExtensionClientToken

- (TKExtensionClientToken)initWithTokenID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TKCTKDConnection);
  v6 = [(TKExtensionClientToken *)self initWithTokenID:v4 ctkdConnection:v5];

  return v6;
}

- (TKExtensionClientToken)initWithTokenID:(id)a3 ctkdConnection:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TKExtensionClientToken;
  v8 = [(TKClientToken *)&v11 _initWithTokenID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, a4);
  }

  return v9;
}

- (BOOL)ensureConnectionCanRequireCardInsertion:(BOOL)a3 error:(id *)a4
{
  if (self->_tokenConnection)
  {
    return 1;
  }

  serverConnection = self->_serverConnection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__TKExtensionClientToken_ensureConnectionCanRequireCardInsertion_error___block_invoke;
  v12[3] = &unk_1E86B7AF8;
  v12[4] = self;
  v13 = a3;
  v7 = [(TKCTKDConnection *)serverConnection withError:a4 invoke:v12];
  v4 = v7 != 0;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v7];
    tokenConnection = self->_tokenConnection;
    self->_tokenConnection = v8;

    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A8D7B0];
    [(NSXPCConnection *)self->_tokenConnection setRemoteObjectInterface:v10];

    ++self->_connectionIdentifier;
    [(NSXPCConnection *)self->_tokenConnection resume];
  }

  return v4;
}

id __72__TKExtensionClientToken_ensureConnectionCanRequireCardInsertion_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v6 = [*(a1 + 32) tokenID];
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__TKExtensionClientToken_ensureConnectionCanRequireCardInsertion_error___block_invoke_1;
  v11[3] = &unk_1E86B7AD0;
  v11[4] = &v18;
  v11[5] = &v12;
  [v5 getTokenEndpointForTokenID:v6 canRequireCardInsertion:v7 reply:v11];

  if (a3)
  {
    v8 = v13[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __72__TKExtensionClientToken_ensureConnectionCanRequireCardInsertion_error___block_invoke_1(uint64_t a1, void *a2, void *a3)
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

- (id)withError:(id *)a3 invoke:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = 0;
  v36 = *MEMORY[0x1E696A250];
  v10 = 0.0;
  *&v11 = 138543618;
  v35 = v11;
  while ([(TKExtensionClientToken *)v8 ensureConnectionCanRequireCardInsertion:[(TKClientToken *)v8 canRequireCardInsertion] error:a3])
  {
    *v45 = 0;
    v46 = v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__4;
    v49 = __Block_byref_object_dispose__4;
    v50 = 0;
    v12 = [(TKExtensionClientToken *)v8 tokenConnection];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __43__TKExtensionClientToken_withError_invoke___block_invoke;
    v40[3] = &unk_1E86B7B20;
    v40[4] = v45;
    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v40];

    connectionIdentifier = v8->_connectionIdentifier;
    v39 = 0;
    v15 = v7[2](v7, v13, connectionIdentifier, &v39);
    v16 = v39;
    v17 = *(v46 + 5);
    if (!v17)
    {
      if (a3 && !v15)
      {
        if (!v16)
        {
          v22 = TK_LOG_client_0();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            [(TKExtensionClientToken *)&v37 withError:v38 invoke:v22];
          }

          v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-2 userInfo:0];
        }

        v23 = v16;
        *a3 = v16;
      }

LABEL_22:
      v4 = v15;
      v20 = 0;
      v21 = 0;
      goto LABEL_23;
    }

    if ([v17 code] == 4099 || objc_msgSend(*(v46 + 5), "code") == 4097)
    {
      v18 = [*(v46 + 5) domain];
      if ([v18 isEqualToString:v36])
      {
        v19 = [(TKCTKDConnection *)v8->_serverConnection _testing_noAutomaticReconnect];

        if (!v19)
        {
          if (v10 <= 30.0)
          {
            v25 = TK_LOG_client_0();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v30 = [(TKClientToken *)v8 tokenID];
              *buf = v35;
              v42 = v30;
              v43 = 1024;
              LODWORD(v44) = v9;
              _os_log_debug_impl(&dword_1DF413000, v25, OS_LOG_TYPE_DEBUG, "reconnecting connection to %{public}@, try %d", buf, 0x12u);
            }

            [(NSXPCConnection *)v8->_tokenConnection invalidate];
            tokenConnection = v8->_tokenConnection;
            v8->_tokenConnection = 0;

            if (v9 * 0.1 <= 1.0)
            {
              v27 = v9 * 0.1;
            }

            else
            {
              v27 = 1.0;
            }

            [MEMORY[0x1E696AF00] sleepForTimeInterval:v27];
            v21 = 0;
            v10 = v10 + v27;
            v20 = 1;
          }

          else
          {
            v20 = 0;
            v21 = 1;
          }

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    v24 = TK_LOG_client_0();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v28 = [(TKClientToken *)v8 tokenID];
      v29 = *(v46 + 5);
      *buf = v35;
      v42 = v28;
      v43 = 2114;
      v44 = v29;
      _os_log_error_impl(&dword_1DF413000, v24, OS_LOG_TYPE_ERROR, "Failed to send request to token %{public}@, error: %{public}@", buf, 0x16u);
    }

    if (!a3)
    {
      goto LABEL_22;
    }

    v20 = 0;
    v21 = 0;
    v4 = 0;
    *a3 = *(v46 + 5);
LABEL_23:

    _Block_object_dispose(v45, 8);
    ++v9;
    if ((v20 & 1) == 0)
    {
      if (!v21)
      {
        goto LABEL_37;
      }

      v31 = TK_LOG_client_0();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        v32 = [(TKClientToken *)v8 tokenID];
        [(TKExtensionClientToken *)v32 withError:v45 invoke:v31];
      }

      if (a3)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
        *a3 = v4 = 0;
        goto LABEL_37;
      }

      break;
    }
  }

  v4 = 0;
LABEL_37:
  objc_sync_exit(v8);

  v33 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)notifyOperation:(int64_t)a3 forToken:(id)a4 withStatus:(int64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a4;
  serverConnection = self->_serverConnection;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__TKExtensionClientToken_notifyOperation_forToken_withStatus___block_invoke;
  v15[3] = &unk_1E86B7B48;
  v17 = a3;
  v10 = v8;
  v16 = v10;
  v18 = a5;
  v11 = [(TKCTKDConnection *)serverConnection withError:&v19 invoke:v15];
  v12 = v19;
  if (!v11)
  {
    v13 = TK_LOG_client_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v21 = a3;
      v22 = 2048;
      v23 = a5;
      v24 = 2114;
      v25 = v12;
      _os_log_error_impl(&dword_1DF413000, v13, OS_LOG_TYPE_ERROR, "Failed notify operation %ld status %ld error %{public}@", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(TKExtensionClientToken *)self invalidate];
  v3.receiver = self;
  v3.super_class = TKExtensionClientToken;
  [(TKExtensionClientToken *)&v3 dealloc];
}

- (void)withError:(os_log_t)log invoke:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_1DF413000, log, OS_LOG_TYPE_FAULT, "TKClientToken operation failed but did not fill any error, substituting TKErrorCodeCommunicationError", buf, 2u);
}

- (void)withError:(os_log_t)log invoke:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1DF413000, log, OS_LOG_TYPE_FAULT, "Unable to connect to %{public}@ even after retries.", buf, 0xCu);
}

@end