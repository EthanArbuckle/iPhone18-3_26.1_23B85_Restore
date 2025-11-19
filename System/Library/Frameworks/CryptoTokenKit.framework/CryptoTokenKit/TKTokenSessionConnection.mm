@interface TKTokenSessionConnection
- (TKTokenSessionConnection)initWithTokenConnection:(id)a3;
- (void)endSession:(id)a3 reply:(id)a4;
- (void)session:(id)a3 createObjectWithAttributes:(id)a4 reply:(id)a5;
- (void)session:(id)a3 deleteObjectWithObjectID:(id)a4 reply:(id)a5;
- (void)session:(id)a3 evaluateAccessControl:(id)a4 forOperation:(id)a5 reply:(id)a6;
- (void)session:(id)a3 getAdvertisedItemsWithReply:(id)a4;
- (void)session:(id)a3 getAttributesOfObjectID:(id)a4 reply:(id)a5;
- (void)session:(id)a3 objectID:(id)a4 operation:(int64_t)a5 data:(id)a6 algorithms:(id)a7 parameters:(id)a8 reply:(id)a9;
- (void)session:(id)a3 slotNameWithReply:(id)a4;
- (void)startSessionWithLAContext:(id)a3 parameters:(id)a4 reply:(id)a5;
- (void)withSessionID:(id)a3 invoke:(id)a4;
@end

@implementation TKTokenSessionConnection

- (TKTokenSessionConnection)initWithTokenConnection:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = TKTokenSessionConnection;
  v6 = [(TKTokenSessionConnection *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenConnection, a3);
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

- (void)startSessionWithLAContext:(id)a3 parameters:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v54 = a5;
  if (v8)
  {
    v10 = [(TKTokenSessionConnection *)self tokenConnection];
    v11 = [v10 sessions];

    objc_sync_enter(v11);
    v12 = [(TKTokenSessionConnection *)self tokenConnection];
    v13 = [v12 sessions];
    v14 = [v13 objectForKey:v8];

    objc_sync_exit(v11);
    v15 = [v9 mutableCopy];
    if (v14)
    {
LABEL_24:
      v41 = v9;
      if ([v15 count])
      {
        [v15 removeObjectForKey:@"PIN"];
        [v15 removeObjectForKey:@"callerPID"];
        v42 = [v14 parameters];
        [v15 addEntriesFromDictionary:v42];

        [v14 setParameters:v15];
      }

      v43 = MEMORY[0x1E696AD98];
      ++self->_sessionIDCounter;
      v17 = [v43 numberWithInteger:?];
      v44 = [(TKTokenSessionConnection *)self sessions];
      [v44 setObject:v14 forKey:v17];

      v45 = [(TKTokenSessionConnection *)self initialKeepAlives];
      objc_sync_enter(v45);
      v46 = [(TKTokenSessionConnection *)self initialKeepAlives];
      v47 = [v14 token];
      v48 = [v47 tokenDriver];
      v49 = [v48 keepAlive];
      [v46 setObject:v49 forKey:v17];

      objc_sync_exit(v45);
      v23 = v54;
      (*(v54 + 2))(v54, v17, 0);
      v19 = v14;
      v9 = v41;
      goto LABEL_27;
    }
  }

  else
  {
    v15 = [v9 mutableCopy];
  }

  v16 = [(TKTokenSessionConnection *)self tokenConnection];
  v17 = [v16 token];

  v18 = [v17 delegate];
  v58 = 0;
  v14 = [v18 token:v17 createSessionWithError:&v58];
  v19 = v58;

  if (v14)
  {
    [v14 setLAContext:v8];
    v20 = [MEMORY[0x1E696B0B8] currentConnection];
    v21 = v20;
    if (v20)
    {
      [v20 auditToken];
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
    }

    v55[0] = v56;
    v55[1] = v57;
    [v14 setCreatorAuditToken:v55];

    v24 = [v9 objectForKey:@"PIN"];
    [v15 removeObjectForKey:@"PIN"];
    if (v24)
    {
      v25 = TK_LOG_token_3();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [TKTokenSessionConnection startSessionWithLAContext:v25 parameters:? reply:?];
      }

      v26 = [v24 dataUsingEncoding:4];
      [v8 setCredential:v26 type:-3];
    }

    v27 = [v9 objectForKey:@"callerPID"];
    [v14 setCallerPID:v27];

    [v15 removeObjectForKey:@"callerPID"];
    if ([v15 count])
    {
      v28 = [v14 parameters];
      [v15 addEntriesFromDictionary:v28];

      [v14 setParameters:v15];
    }

    if (v8)
    {
      v52 = v9;
      v29 = [(TKTokenSessionConnection *)self tokenConnection];
      v30 = [v29 sessions];

      obj = v30;
      objc_sync_enter(v30);
      v31 = [(TKTokenSessionConnection *)self tokenConnection];
      v32 = [v31 sessions];
      v33 = [v32 objectForKey:v8];

      if (v33)
      {
        v34 = v14;
        v14 = v33;
      }

      else
      {
        v35 = [(TKTokenSessionConnection *)self tokenConnection];
        v36 = [v35 sessions];
        [v36 setObject:v14 forKey:v8];

        v34 = [(TKTokenSessionConnection *)self tokenConnection];
        v51 = [v34 token];
        v50 = [v51 tokenDriver];
        v37 = [v50 keepAlive];
        [v14 setKeepAlive:v37];
      }

      objc_sync_exit(obj);
      v9 = v52;
    }

    v38 = [(TKTokenSessionConnection *)self tokenConnection];
    v39 = [v38 sessions];

    objc_sync_enter(v39);
    v40 = [(TKTokenSessionConnection *)self tokenConnection];
    [v40 setInitialKeepAlive:0];

    objc_sync_exit(v39);
    goto LABEL_24;
  }

  v22 = TK_LOG_token_3();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [TKTokenSessionConnection startSessionWithLAContext:v17 parameters:v19 reply:v22];
  }

  v23 = v54;
  (*(v54 + 2))(v54, 0, v19);
LABEL_27:
}

- (void)endSession:(id)a3 reply:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(TKTokenSessionConnection *)self sessions];
  [v7 removeObjectForKey:v6];

  v8[2]();
}

- (void)withSessionID:(id)a3 invoke:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = TK_LOG_token_3();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(TKTokenSessionConnection *)v7 withSessionID:v9 invoke:?];
  }

  v10 = [(TKTokenSessionConnection *)self sessions];
  v11 = [v10 objectForKey:v7];

  if (!v11)
  {
    [(TKTokenSessionConnection *)self withSessionID:a2 invoke:v7];
  }

  v12 = [MEMORY[0x1E696B0B8] currentConnection];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__7;
  v28[4] = __Block_byref_object_dispose__7;
  v13 = [(TKTokenSessionConnection *)self tokenConnection];
  v14 = [v13 token];
  v15 = [v14 tokenDriver];
  v29 = [v15 keepAlive];

  v16 = [v11 queue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __49__TKTokenSessionConnection_withSessionID_invoke___block_invoke;
  v21[3] = &unk_1E86B8088;
  v22 = v11;
  v23 = v12;
  v26 = v8;
  v27 = v28;
  v24 = self;
  v25 = v7;
  v17 = v7;
  v18 = v8;
  v19 = v12;
  v20 = v11;
  dispatch_async(v16, v21);

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

- (void)session:(id)a3 getAdvertisedItemsWithReply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__TKTokenSessionConnection_session_getAdvertisedItemsWithReply___block_invoke;
  v8[3] = &unk_1E86B80D8;
  v9 = v6;
  v7 = v6;
  [(TKTokenSessionConnection *)self withSessionID:a3 invoke:v8];
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

- (void)session:(id)a3 evaluateAccessControl:(id)a4 forOperation:(id)a5 reply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__TKTokenSessionConnection_session_evaluateAccessControl_forOperation_reply___block_invoke;
  v16[3] = &unk_1E86B8128;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(TKTokenSessionConnection *)self withSessionID:a3 invoke:v16];
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

- (void)session:(id)a3 getAttributesOfObjectID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v10 = a4;
  v11 = [(TKTokenSessionConnection *)self tokenConnection];
  v12 = [v11 token];
  v13 = [v12 tokenID];
  v20 = 0;
  v14 = [v13 decodedObjectID:v10 isCertificate:&v21 error:&v20];

  v15 = v20;
  if (v14)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__TKTokenSessionConnection_session_getAttributesOfObjectID_reply___block_invoke;
    v16[3] = &unk_1E86B8178;
    v17 = v14;
    v19 = v21;
    v18 = v9;
    [(TKTokenSessionConnection *)self withSessionID:v8 invoke:v16];
  }

  else
  {
    (*(v9 + 2))(v9, 0, v15);
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

- (void)session:(id)a3 objectID:(id)a4 operation:(int64_t)a5 data:(id)a6 algorithms:(id)a7 parameters:(id)a8 reply:(id)a9
{
  v26 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a4;
  v19 = [(TKTokenSessionConnection *)self tokenConnection];
  v20 = [v19 token];
  v21 = [v20 tokenID];
  v34 = 0;
  v22 = [v21 decodedKeyID:v18 error:&v34];

  v23 = v34;
  if (v22)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __88__TKTokenSessionConnection_session_objectID_operation_data_algorithms_parameters_reply___block_invoke;
    v27[3] = &unk_1E86B81C8;
    v28 = v22;
    v33 = a5;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v24 = v26;
    [(TKTokenSessionConnection *)self withSessionID:v26 invoke:v27];
  }

  else
  {
    (*(v17 + 2))(v17, 0, v23);
    v24 = v26;
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

- (void)session:(id)a3 createObjectWithAttributes:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__TKTokenSessionConnection_session_createObjectWithAttributes_reply___block_invoke;
  v12[3] = &unk_1E86B81F0;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(TKTokenSessionConnection *)self withSessionID:a3 invoke:v12];
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

- (void)session:(id)a3 deleteObjectWithObjectID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(TKTokenSessionConnection *)self tokenConnection];
  v12 = [v11 token];
  v13 = [v12 tokenID];
  v19 = 0;
  v14 = [v13 decodedKeyID:v10 error:&v19];

  v15 = v19;
  if (v14)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__TKTokenSessionConnection_session_deleteObjectWithObjectID_reply___block_invoke;
    v16[3] = &unk_1E86B81F0;
    v17 = v14;
    v18 = v9;
    [(TKTokenSessionConnection *)self withSessionID:v8 invoke:v16];
  }

  else
  {
    (*(v9 + 2))(v9, 0, v15);
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

- (void)session:(id)a3 slotNameWithReply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__TKTokenSessionConnection_session_slotNameWithReply___block_invoke;
  v8[3] = &unk_1E86B80D8;
  v9 = v6;
  v7 = v6;
  [(TKTokenSessionConnection *)self withSessionID:a3 invoke:v8];
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