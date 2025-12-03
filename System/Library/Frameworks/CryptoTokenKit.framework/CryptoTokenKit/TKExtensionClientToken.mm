@interface TKExtensionClientToken
- (BOOL)ensureConnectionCanRequireCardInsertion:(BOOL)insertion error:(id *)error;
- (TKExtensionClientToken)initWithTokenID:(id)d;
- (TKExtensionClientToken)initWithTokenID:(id)d ctkdConnection:(id)connection;
- (id)withError:(id *)error invoke:(id)invoke;
- (void)dealloc;
- (void)notifyOperation:(int64_t)operation forToken:(id)token withStatus:(int64_t)status;
@end

@implementation TKExtensionClientToken

- (TKExtensionClientToken)initWithTokenID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(TKCTKDConnection);
  v6 = [(TKExtensionClientToken *)self initWithTokenID:dCopy ctkdConnection:v5];

  return v6;
}

- (TKExtensionClientToken)initWithTokenID:(id)d ctkdConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = TKExtensionClientToken;
  v8 = [(TKClientToken *)&v11 _initWithTokenID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, connection);
  }

  return v9;
}

- (BOOL)ensureConnectionCanRequireCardInsertion:(BOOL)insertion error:(id *)error
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
  insertionCopy = insertion;
  v7 = [(TKCTKDConnection *)serverConnection withError:error invoke:v12];
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

- (id)withError:(id *)error invoke:(id)invoke
{
  v51 = *MEMORY[0x1E69E9840];
  invokeCopy = invoke;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0;
  v36 = *MEMORY[0x1E696A250];
  v10 = 0.0;
  *&v11 = 138543618;
  v35 = v11;
  while ([(TKExtensionClientToken *)selfCopy ensureConnectionCanRequireCardInsertion:[(TKClientToken *)selfCopy canRequireCardInsertion] error:error])
  {
    *v45 = 0;
    v46 = v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__4;
    v49 = __Block_byref_object_dispose__4;
    v50 = 0;
    tokenConnection = [(TKExtensionClientToken *)selfCopy tokenConnection];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __43__TKExtensionClientToken_withError_invoke___block_invoke;
    v40[3] = &unk_1E86B7B20;
    v40[4] = v45;
    v13 = [tokenConnection synchronousRemoteObjectProxyWithErrorHandler:v40];

    connectionIdentifier = selfCopy->_connectionIdentifier;
    v39 = 0;
    v15 = invokeCopy[2](invokeCopy, v13, connectionIdentifier, &v39);
    v16 = v39;
    v17 = *(v46 + 5);
    if (!v17)
    {
      if (error && !v15)
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
        *error = v16;
      }

LABEL_22:
      v4 = v15;
      v20 = 0;
      v21 = 0;
      goto LABEL_23;
    }

    if ([v17 code] == 4099 || objc_msgSend(*(v46 + 5), "code") == 4097)
    {
      domain = [*(v46 + 5) domain];
      if ([domain isEqualToString:v36])
      {
        _testing_noAutomaticReconnect = [(TKCTKDConnection *)selfCopy->_serverConnection _testing_noAutomaticReconnect];

        if (!_testing_noAutomaticReconnect)
        {
          if (v10 <= 30.0)
          {
            v25 = TK_LOG_client_0();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              tokenID = [(TKClientToken *)selfCopy tokenID];
              *buf = v35;
              v42 = tokenID;
              v43 = 1024;
              LODWORD(v44) = v9;
              _os_log_debug_impl(&dword_1DF413000, v25, OS_LOG_TYPE_DEBUG, "reconnecting connection to %{public}@, try %d", buf, 0x12u);
            }

            [(NSXPCConnection *)selfCopy->_tokenConnection invalidate];
            tokenConnection = selfCopy->_tokenConnection;
            selfCopy->_tokenConnection = 0;

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
      tokenID2 = [(TKClientToken *)selfCopy tokenID];
      v29 = *(v46 + 5);
      *buf = v35;
      v42 = tokenID2;
      v43 = 2114;
      v44 = v29;
      _os_log_error_impl(&dword_1DF413000, v24, OS_LOG_TYPE_ERROR, "Failed to send request to token %{public}@, error: %{public}@", buf, 0x16u);
    }

    if (!error)
    {
      goto LABEL_22;
    }

    v20 = 0;
    v21 = 0;
    v4 = 0;
    *error = *(v46 + 5);
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
        tokenID3 = [(TKClientToken *)selfCopy tokenID];
        [(TKExtensionClientToken *)tokenID3 withError:v45 invoke:v31];
      }

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
        *error = v4 = 0;
        goto LABEL_37;
      }

      break;
    }
  }

  v4 = 0;
LABEL_37:
  objc_sync_exit(selfCopy);

  v33 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)notifyOperation:(int64_t)operation forToken:(id)token withStatus:(int64_t)status
{
  v26 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  serverConnection = self->_serverConnection;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__TKExtensionClientToken_notifyOperation_forToken_withStatus___block_invoke;
  v15[3] = &unk_1E86B7B48;
  operationCopy = operation;
  v10 = tokenCopy;
  v16 = v10;
  statusCopy = status;
  v11 = [(TKCTKDConnection *)serverConnection withError:&v19 invoke:v15];
  v12 = v19;
  if (!v11)
  {
    v13 = TK_LOG_client_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      operationCopy2 = operation;
      v22 = 2048;
      statusCopy2 = status;
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