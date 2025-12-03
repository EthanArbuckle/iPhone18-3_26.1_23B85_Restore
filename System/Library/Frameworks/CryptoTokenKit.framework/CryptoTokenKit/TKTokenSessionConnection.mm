@interface TKTokenSessionConnection
- (TKTokenSessionConnection)initWithTokenConnection:(id)connection;
- (void)endSession:(id)session reply:(id)reply;
- (void)session:(id)session createObjectWithAttributes:(id)attributes reply:(id)reply;
- (void)session:(id)session deleteObjectWithObjectID:(id)d reply:(id)reply;
- (void)session:(id)session evaluateAccessControl:(id)control forOperation:(id)operation reply:(id)reply;
- (void)session:(id)session getAdvertisedItemsWithReply:(id)reply;
- (void)session:(id)session getAttributesOfObjectID:(id)d reply:(id)reply;
- (void)session:(id)session objectID:(id)d operation:(int64_t)operation data:(id)data algorithms:(id)algorithms parameters:(id)parameters reply:(id)reply;
- (void)session:(id)session slotNameWithReply:(id)reply;
- (void)startSessionWithLAContext:(id)context parameters:(id)parameters reply:(id)reply;
- (void)withSessionID:(id)d invoke:(id)invoke;
@end

@implementation TKTokenSessionConnection

- (TKTokenSessionConnection)initWithTokenConnection:(id)connection
{
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = TKTokenSessionConnection;
  v6 = [(TKTokenSessionConnection *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenConnection, connection);
    v8 = MEMORY[0x1E695E0F8];
    v9 = [MEMORY[0x1E695E0F8] mutableCopy];
    sessions = v7->_sessions;
    v7->_sessions = v9;

    v11 = [v8 mutableCopy];
    initialKeepAlives = v7->_initialKeepAlives;
    v7->_initialKeepAlives = v11;
  }

  return v7;
}

- (void)startSessionWithLAContext:(id)context parameters:(id)parameters reply:(id)reply
{
  contextCopy = context;
  parametersCopy = parameters;
  replyCopy = reply;
  if (contextCopy)
  {
    tokenConnection = [(TKTokenSessionConnection *)self tokenConnection];
    sessions = [tokenConnection sessions];

    objc_sync_enter(sessions);
    tokenConnection2 = [(TKTokenSessionConnection *)self tokenConnection];
    sessions2 = [tokenConnection2 sessions];
    v14 = [sessions2 objectForKey:contextCopy];

    objc_sync_exit(sessions);
    v15 = [parametersCopy mutableCopy];
    if (v14)
    {
LABEL_24:
      v41 = parametersCopy;
      if ([v15 count])
      {
        [v15 removeObjectForKey:@"PIN"];
        [v15 removeObjectForKey:@"callerPID"];
        parameters = [v14 parameters];
        [v15 addEntriesFromDictionary:parameters];

        [v14 setParameters:v15];
      }

      v43 = MEMORY[0x1E696AD98];
      ++self->_sessionIDCounter;
      token2 = [v43 numberWithInteger:?];
      sessions3 = [(TKTokenSessionConnection *)self sessions];
      [sessions3 setObject:v14 forKey:token2];

      initialKeepAlives = [(TKTokenSessionConnection *)self initialKeepAlives];
      objc_sync_enter(initialKeepAlives);
      initialKeepAlives2 = [(TKTokenSessionConnection *)self initialKeepAlives];
      token = [v14 token];
      tokenDriver = [token tokenDriver];
      keepAlive = [tokenDriver keepAlive];
      [initialKeepAlives2 setObject:keepAlive forKey:token2];

      objc_sync_exit(initialKeepAlives);
      v23 = replyCopy;
      (*(replyCopy + 2))(replyCopy, token2, 0);
      v19 = v14;
      parametersCopy = v41;
      goto LABEL_27;
    }
  }

  else
  {
    v15 = [parametersCopy mutableCopy];
  }

  tokenConnection3 = [(TKTokenSessionConnection *)self tokenConnection];
  token2 = [tokenConnection3 token];

  delegate = [token2 delegate];
  v58 = 0;
  v14 = [delegate token:token2 createSessionWithError:&v58];
  v19 = v58;

  if (v14)
  {
    [v14 setLAContext:contextCopy];
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v21 = currentConnection;
    if (currentConnection)
    {
      [currentConnection auditToken];
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
    }

    v55[0] = v56;
    v55[1] = v57;
    [v14 setCreatorAuditToken:v55];

    v24 = [parametersCopy objectForKey:@"PIN"];
    [v15 removeObjectForKey:@"PIN"];
    if (v24)
    {
      v25 = TK_LOG_token_3();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenSessionConnection startSessionWithLAContext:v25 parameters:? reply:?];
      }

      v26 = [v24 dataUsingEncoding:4];
      [contextCopy setCredential:v26 type:-3];
    }

    v27 = [parametersCopy objectForKey:@"callerPID"];
    [v14 setCallerPID:v27];

    [v15 removeObjectForKey:@"callerPID"];
    if ([v15 count])
    {
      parameters2 = [v14 parameters];
      [v15 addEntriesFromDictionary:parameters2];

      [v14 setParameters:v15];
    }

    if (contextCopy)
    {
      v52 = parametersCopy;
      tokenConnection4 = [(TKTokenSessionConnection *)self tokenConnection];
      sessions4 = [tokenConnection4 sessions];

      obj = sessions4;
      objc_sync_enter(sessions4);
      tokenConnection5 = [(TKTokenSessionConnection *)self tokenConnection];
      sessions5 = [tokenConnection5 sessions];
      v33 = [sessions5 objectForKey:contextCopy];

      if (v33)
      {
        tokenConnection7 = v14;
        v14 = v33;
      }

      else
      {
        tokenConnection6 = [(TKTokenSessionConnection *)self tokenConnection];
        sessions6 = [tokenConnection6 sessions];
        [sessions6 setObject:v14 forKey:contextCopy];

        tokenConnection7 = [(TKTokenSessionConnection *)self tokenConnection];
        token3 = [tokenConnection7 token];
        tokenDriver2 = [token3 tokenDriver];
        keepAlive2 = [tokenDriver2 keepAlive];
        [v14 setKeepAlive:keepAlive2];
      }

      objc_sync_exit(obj);
      parametersCopy = v52;
    }

    tokenConnection8 = [(TKTokenSessionConnection *)self tokenConnection];
    sessions7 = [tokenConnection8 sessions];

    objc_sync_enter(sessions7);
    tokenConnection9 = [(TKTokenSessionConnection *)self tokenConnection];
    [tokenConnection9 setInitialKeepAlive:0];

    objc_sync_exit(sessions7);
    goto LABEL_24;
  }

  v22 = TK_LOG_token_3();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [TKTokenSessionConnection startSessionWithLAContext:token2 parameters:v19 reply:v22];
  }

  v23 = replyCopy;
  (*(replyCopy + 2))(replyCopy, 0, v19);
LABEL_27:
}

- (void)endSession:(id)session reply:(id)reply
{
  replyCopy = reply;
  sessionCopy = session;
  sessions = [(TKTokenSessionConnection *)self sessions];
  [sessions removeObjectForKey:sessionCopy];

  replyCopy[2]();
}

- (void)withSessionID:(id)d invoke:(id)invoke
{
  dCopy = d;
  invokeCopy = invoke;
  v9 = TK_LOG_token_3();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(TKTokenSessionConnection *)dCopy withSessionID:v9 invoke:?];
  }

  sessions = [(TKTokenSessionConnection *)self sessions];
  v11 = [sessions objectForKey:dCopy];

  if (!v11)
  {
    [(TKTokenSessionConnection *)self withSessionID:a2 invoke:dCopy];
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__7;
  v28[4] = __Block_byref_object_dispose__7;
  tokenConnection = [(TKTokenSessionConnection *)self tokenConnection];
  token = [tokenConnection token];
  tokenDriver = [token tokenDriver];
  keepAlive = [tokenDriver keepAlive];

  queue = [v11 queue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __49__TKTokenSessionConnection_withSessionID_invoke___block_invoke;
  v21[3] = &unk_1E86B8088;
  v22 = v11;
  v23 = currentConnection;
  v26 = invokeCopy;
  v27 = v28;
  selfCopy = self;
  v25 = dCopy;
  v17 = dCopy;
  v18 = invokeCopy;
  v19 = currentConnection;
  v20 = v11;
  dispatch_async(queue, v21);

  _Block_object_dispose(v28, 8);
}

void __49__TKTokenSessionConnection_withSessionID_invoke___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCaller:*(a1 + 40)];
  [*(a1 + 32) beginRequest];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__TKTokenSessionConnection_withSessionID_invoke___block_invoke_2;
  v7[3] = &unk_1E86B8060;
  v4 = v3;
  v11 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  (*(v2 + 16))(v2, v4, v7);
}

void __49__TKTokenSessionConnection_withSessionID_invoke___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) endRequest];
  [*(a1 + 32) setCaller:0];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = [*(a1 + 40) initialKeepAlives];
  objc_sync_enter(v5);
  v6 = [*(a1 + 40) initialKeepAlives];
  [v6 removeObjectForKey:*(a1 + 48)];

  objc_sync_exit(v5);

  objc_autoreleasePoolPop(v2);
}

- (void)session:(id)session getAdvertisedItemsWithReply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__TKTokenSessionConnection_session_getAdvertisedItemsWithReply___block_invoke;
  v8[3] = &unk_1E86B80D8;
  v9 = replyCopy;
  v7 = replyCopy;
  [(TKTokenSessionConnection *)self withSessionID:session invoke:v8];
}

void __64__TKTokenSessionConnection_session_getAdvertisedItemsWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__TKTokenSessionConnection_session_getAdvertisedItemsWithReply___block_invoke_2;
  v7[3] = &unk_1E86B80B0;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 getAdvertisedItemsWithReply:v7];
}

uint64_t __64__TKTokenSessionConnection_session_getAdvertisedItemsWithReply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)session:(id)session evaluateAccessControl:(id)control forOperation:(id)operation reply:(id)reply
{
  controlCopy = control;
  operationCopy = operation;
  replyCopy = reply;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__TKTokenSessionConnection_session_evaluateAccessControl_forOperation_reply___block_invoke;
  v16[3] = &unk_1E86B8128;
  v17 = controlCopy;
  v18 = operationCopy;
  v19 = replyCopy;
  v13 = replyCopy;
  v14 = operationCopy;
  v15 = controlCopy;
  [(TKTokenSessionConnection *)self withSessionID:session invoke:v16];
}

void __77__TKTokenSessionConnection_session_evaluateAccessControl_forOperation_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__TKTokenSessionConnection_session_evaluateAccessControl_forOperation_reply___block_invoke_2;
  v9[3] = &unk_1E86B8100;
  v10 = *(a1 + 48);
  v11 = v5;
  v8 = v5;
  [a2 evaluateAccessControl:v6 forOperation:v7 reply:v9];
}

uint64_t __77__TKTokenSessionConnection_session_evaluateAccessControl_forOperation_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)session:(id)session getAttributesOfObjectID:(id)d reply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  v21 = 0;
  dCopy = d;
  tokenConnection = [(TKTokenSessionConnection *)self tokenConnection];
  token = [tokenConnection token];
  tokenID = [token tokenID];
  v20 = 0;
  v14 = [tokenID decodedObjectID:dCopy isCertificate:&v21 error:&v20];

  v15 = v20;
  if (v14)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__TKTokenSessionConnection_session_getAttributesOfObjectID_reply___block_invoke;
    v16[3] = &unk_1E86B8178;
    v17 = v14;
    v19 = v21;
    v18 = replyCopy;
    [(TKTokenSessionConnection *)self withSessionID:sessionCopy invoke:v16];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v15);
  }
}

void __66__TKTokenSessionConnection_session_getAttributesOfObjectID_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__TKTokenSessionConnection_session_getAttributesOfObjectID_reply___block_invoke_2;
  v9[3] = &unk_1E86B8150;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v5;
  v8 = v5;
  [a2 getAttributesOfObject:v7 isCertificate:v6 reply:v9];
}

uint64_t __66__TKTokenSessionConnection_session_getAttributesOfObjectID_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)session:(id)session objectID:(id)d operation:(int64_t)operation data:(id)data algorithms:(id)algorithms parameters:(id)parameters reply:(id)reply
{
  sessionCopy = session;
  dataCopy = data;
  algorithmsCopy = algorithms;
  parametersCopy = parameters;
  replyCopy = reply;
  dCopy = d;
  tokenConnection = [(TKTokenSessionConnection *)self tokenConnection];
  token = [tokenConnection token];
  tokenID = [token tokenID];
  v34 = 0;
  v22 = [tokenID decodedKeyID:dCopy error:&v34];

  v23 = v34;
  if (v22)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __88__TKTokenSessionConnection_session_objectID_operation_data_algorithms_parameters_reply___block_invoke;
    v27[3] = &unk_1E86B81C8;
    v28 = v22;
    operationCopy = operation;
    v29 = dataCopy;
    v30 = algorithmsCopy;
    v31 = parametersCopy;
    v32 = replyCopy;
    v24 = sessionCopy;
    [(TKTokenSessionConnection *)self withSessionID:sessionCopy invoke:v27];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v23);
    v24 = sessionCopy;
  }
}

void __88__TKTokenSessionConnection_session_objectID_operation_data_algorithms_parameters_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__TKTokenSessionConnection_session_objectID_operation_data_algorithms_parameters_reply___block_invoke_2;
  v12[3] = &unk_1E86B81A0;
  v10 = *(a1 + 72);
  v13 = *(a1 + 64);
  v14 = v5;
  v11 = v5;
  [a2 objectID:v6 operation:v10 inputData:v7 algorithms:v8 parameters:v9 reply:v12];
}

uint64_t __88__TKTokenSessionConnection_session_objectID_operation_data_algorithms_parameters_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)session:(id)session createObjectWithAttributes:(id)attributes reply:(id)reply
{
  attributesCopy = attributes;
  replyCopy = reply;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__TKTokenSessionConnection_session_createObjectWithAttributes_reply___block_invoke;
  v12[3] = &unk_1E86B81F0;
  v13 = attributesCopy;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = attributesCopy;
  [(TKTokenSessionConnection *)self withSessionID:session invoke:v12];
}

void __69__TKTokenSessionConnection_session_createObjectWithAttributes_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__TKTokenSessionConnection_session_createObjectWithAttributes_reply___block_invoke_2;
  v8[3] = &unk_1E86B8150;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 createObjectWithAttributes:v6 reply:v8];
}

void __69__TKTokenSessionConnection_session_createObjectWithAttributes_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *MEMORY[0x1E697AEE8];
  v7 = [v13 objectForKeyedSubscript:*MEMORY[0x1E697AEE8]];
  if (v7)
  {
    v8 = v7;
    v9 = [TKTokenID encodedKeyID:v7];

    v10 = [v13 mutableCopy];
    [v10 setObject:v9 forKeyedSubscript:v6];
    v11 = [v10 copy];

    v12 = v11;
  }

  else
  {
    v9 = 0;
    v12 = v13;
  }

  v14 = v12;
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

- (void)session:(id)session deleteObjectWithObjectID:(id)d reply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  dCopy = d;
  tokenConnection = [(TKTokenSessionConnection *)self tokenConnection];
  token = [tokenConnection token];
  tokenID = [token tokenID];
  v19 = 0;
  v14 = [tokenID decodedKeyID:dCopy error:&v19];

  v15 = v19;
  if (v14)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__TKTokenSessionConnection_session_deleteObjectWithObjectID_reply___block_invoke;
    v16[3] = &unk_1E86B81F0;
    v17 = v14;
    v18 = replyCopy;
    [(TKTokenSessionConnection *)self withSessionID:sessionCopy invoke:v16];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, v15);
  }
}

void __67__TKTokenSessionConnection_session_deleteObjectWithObjectID_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__TKTokenSessionConnection_session_deleteObjectWithObjectID_reply___block_invoke_2;
  v8[3] = &unk_1E86B8100;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 deleteObject:v6 reply:v8];
}

uint64_t __67__TKTokenSessionConnection_session_deleteObjectWithObjectID_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)session:(id)session slotNameWithReply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__TKTokenSessionConnection_session_slotNameWithReply___block_invoke;
  v8[3] = &unk_1E86B80D8;
  v9 = replyCopy;
  v7 = replyCopy;
  [(TKTokenSessionConnection *)self withSessionID:session invoke:v8];
}

void __54__TKTokenSessionConnection_session_slotNameWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [a2 name];
  (*(v4 + 16))(v4, v5);

  v6[2]();
}

- (void)startSessionWithLAContext:(void *)a1 parameters:(uint64_t)a2 reply:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 tokenID];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1DF413000, a3, OS_LOG_TYPE_ERROR, "Token %{public}@ failed to create new session, error %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)withSessionID:(NSObject *)a3 invoke:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a2 tokenConnection];
  v6 = [v5 token];
  v7 = [v6 tokenID];
  v9 = 138543618;
  v10 = a1;
  v11 = 2114;
  v12 = v7;
  _os_log_debug_impl(&dword_1DF413000, a3, OS_LOG_TYPE_DEBUG, "with session %{public}@ on token %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)withSessionID:(uint64_t)a3 invoke:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [a1 tokenConnection];
  v8 = [v7 token];
  v9 = [v8 tokenID];
  [v6 handleFailureInMethod:a2 object:a1 file:@"TKTokenConnection.m" lineNumber:114 description:{@"An attempt to reference nonexistent session %@ on token %@", a3, v9}];
}

@end