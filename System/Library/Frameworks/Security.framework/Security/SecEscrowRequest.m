@interface SecEscrowRequest
+ (id)request:(id *)a3;
- (BOOL)cachePrerecord:(id)a3 serializedPrerecord:(id)a4 error:(id *)a5;
- (BOOL)escrowCompletedWithinLastSeconds:(double)a3;
- (BOOL)pendingEscrowUpload:(id *)a3;
- (BOOL)resetAllRequests:(id *)a3;
- (BOOL)triggerEscrowUpdate:(id)a3 options:(id)a4 error:(id *)a5;
- (SecEscrowRequest)initWithConnection:(id)a3;
- (id)fetchPrerecord:(id)a3 error:(id *)a4;
- (id)fetchRequestWaitingOnPasscode:(id *)a3;
- (id)fetchStatuses:(id *)a3;
- (unint64_t)storePrerecordsInEscrow:(id *)a3;
- (void)dealloc;
@end

@implementation SecEscrowRequest

- (BOOL)escrowCompletedWithinLastSeconds:(double)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__3604;
  v9[4] = __Block_byref_object_dispose__3605;
  v10 = 0;
  v4 = [(SecEscrowRequest *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__SecEscrowRequest_escrowCompletedWithinLastSeconds___block_invoke;
  v8[3] = &unk_1E70E0B18;
  v8[4] = v9;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v8];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SecEscrowRequest_escrowCompletedWithinLastSeconds___block_invoke_99;
  v7[3] = &unk_1E70D6E18;
  v7[4] = &v11;
  v7[5] = v9;
  [v5 escrowCompletedWithinLastSeconds:v7 reply:a3];
  LOBYTE(v4) = *(v12 + 24);

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __53__SecEscrowRequest_escrowCompletedWithinLastSeconds___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "resetAllRequests: Failed to get XPC connection: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __53__SecEscrowRequest_escrowCompletedWithinLastSeconds___block_invoke_99(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v7 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "resetAllRequests: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)pendingEscrowUpload:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v4 = [(SecEscrowRequest *)self fetchStatuses:&v22];
  v5 = v22;
  if (v5)
  {
    v6 = secLogObjForScope("escrow");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v5;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "failed to fetch escrow statuses: %@", buf, 0xCu);
    }

    if (a3)
    {
      v7 = v5;
      v8 = 0;
      *a3 = v5;
      goto LABEL_23;
    }

LABEL_20:
    v8 = 0;
    goto LABEL_23;
  }

  if (!v4 || ![v4 count])
  {
    goto LABEL_20;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = v4;
  v9 = [v4 allValues];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v8 = 0;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (([v14 isEqualToString:@"have_prerecord"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"pending_passcode") & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"pending_certificate"))
        {
          v8 = 1;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v8 = 0;
  }

  v4 = v17;
LABEL_23:

  v15 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (unint64_t)storePrerecordsInEscrow:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3604;
  v19 = __Block_byref_object_dispose__3605;
  v20 = 0;
  v4 = [(SecEscrowRequest *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__SecEscrowRequest_storePrerecordsInEscrow___block_invoke;
  v14[3] = &unk_1E70E0B18;
  v14[4] = &v15;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v14];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SecEscrowRequest_storePrerecordsInEscrow___block_invoke_97;
  v9[3] = &unk_1E70D5160;
  v9[4] = &v10;
  v9[5] = &v15;
  [v5 storePrerecordsInEscrow:v9];
  if (a3)
  {
    v6 = v16[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v15, 8);
  return v7;
}

void __44__SecEscrowRequest_storePrerecordsInEscrow___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "fetchRequestWaitingOnPasscode: Failed to get XPC connection: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __44__SecEscrowRequest_storePrerecordsInEscrow___block_invoke_97(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v7 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Stored %d records: %@", v9, 0x12u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)resetAllRequests:(id *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3604;
  v16 = __Block_byref_object_dispose__3605;
  v17 = 0;
  v4 = [(SecEscrowRequest *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__SecEscrowRequest_resetAllRequests___block_invoke;
  v11[3] = &unk_1E70E0B18;
  v11[4] = &v12;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__SecEscrowRequest_resetAllRequests___block_invoke_96;
  v10[3] = &unk_1E70E0B18;
  v10[4] = &v12;
  [v5 resetAllRequests:v10];
  v6 = v13;
  if (a3)
  {
    v7 = v13[5];
    if (v7)
    {
      *a3 = v7;
      v6 = v13;
    }
  }

  v8 = v6[5] == 0;

  _Block_object_dispose(&v12, 8);
  return v8;
}

void __37__SecEscrowRequest_resetAllRequests___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "resetAllRequests: Failed to get XPC connection: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __37__SecEscrowRequest_resetAllRequests___block_invoke_96(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "resetAllRequests: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)fetchStatuses:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3604;
  v21 = __Block_byref_object_dispose__3605;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3604;
  v15 = __Block_byref_object_dispose__3605;
  v16 = 0;
  v4 = [(SecEscrowRequest *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__SecEscrowRequest_fetchStatuses___block_invoke;
  v10[3] = &unk_1E70E0B18;
  v10[4] = &v17;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__SecEscrowRequest_fetchStatuses___block_invoke_94;
  v9[3] = &unk_1E70D6DC8;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 fetchRequestStatuses:v9];
  if (a3)
  {
    v6 = v18[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  v7 = v12[5];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __34__SecEscrowRequest_fetchStatuses___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "requestStatuses: Failed to get XPC connection: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __34__SecEscrowRequest_fetchStatuses___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v8 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Received statuses: %@ %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)fetchRequestWaitingOnPasscode:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3604;
  v21 = __Block_byref_object_dispose__3605;
  v22 = 0;
  v4 = [(SecEscrowRequest *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__SecEscrowRequest_fetchRequestWaitingOnPasscode___block_invoke;
  v16[3] = &unk_1E70E0B18;
  v16[4] = &v17;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v16];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3604;
  v14 = __Block_byref_object_dispose__3605;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SecEscrowRequest_fetchRequestWaitingOnPasscode___block_invoke_92;
  v9[3] = &unk_1E70D5138;
  v9[4] = &v10;
  v9[5] = &v17;
  [v5 fetchRequestWaitingOnPasscode:v9];
  if (a3)
  {
    v6 = v18[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __50__SecEscrowRequest_fetchRequestWaitingOnPasscode___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "fetchRequestWaitingOnPasscode: Failed to get XPC connection: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __50__SecEscrowRequest_fetchRequestWaitingOnPasscode___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v8 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Received request waiting on passcode: %@ %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)fetchPrerecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3604;
  v28 = __Block_byref_object_dispose__3605;
  v29 = 0;
  v7 = [(SecEscrowRequest *)self connection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41__SecEscrowRequest_fetchPrerecord_error___block_invoke;
  v23[3] = &unk_1E70E0B18;
  v23[4] = &v24;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v23];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3604;
  v21 = __Block_byref_object_dispose__3605;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__SecEscrowRequest_fetchPrerecord_error___block_invoke_90;
  v13[3] = &unk_1E70D5110;
  v15 = &v17;
  v16 = &v24;
  v9 = v6;
  v14 = v9;
  [v8 fetchPrerecord:v9 reply:v13];
  if (a4)
  {
    v10 = v25[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __41__SecEscrowRequest_fetchPrerecord_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "fetchprerecord: Failed to get XPC connection: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __41__SecEscrowRequest_fetchPrerecord_error___block_invoke_90(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  v8 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Received prerecord for %@: %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)cachePrerecord:(id)a3 serializedPrerecord:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3604;
  v25 = __Block_byref_object_dispose__3605;
  v26 = 0;
  v10 = [(SecEscrowRequest *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__SecEscrowRequest_cachePrerecord_serializedPrerecord_error___block_invoke;
  v20[3] = &unk_1E70E0B18;
  v20[4] = &v21;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v20];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__SecEscrowRequest_cachePrerecord_serializedPrerecord_error___block_invoke_89;
  v17[3] = &unk_1E70D6DA0;
  v19 = &v21;
  v12 = v8;
  v18 = v12;
  [v11 cachePrerecord:v12 serializedPrerecord:v9 reply:v17];
  v13 = v22;
  if (a5)
  {
    v14 = v22[5];
    if (v14)
    {
      *a5 = v14;
      v13 = v22;
    }
  }

  v15 = v13[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v15;
}

void __61__SecEscrowRequest_cachePrerecord_serializedPrerecord_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "cachePrerecord: Failed to get XPC connection: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __61__SecEscrowRequest_cachePrerecord_serializedPrerecord_error___block_invoke_89(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Cached prerecord for %@: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)triggerEscrowUpdate:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3604;
  v25 = __Block_byref_object_dispose__3605;
  v26 = 0;
  v10 = [(SecEscrowRequest *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__SecEscrowRequest_triggerEscrowUpdate_options_error___block_invoke;
  v20[3] = &unk_1E70E0B18;
  v20[4] = &v21;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v20];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__SecEscrowRequest_triggerEscrowUpdate_options_error___block_invoke_88;
  v17[3] = &unk_1E70D6DA0;
  v19 = &v21;
  v12 = v8;
  v18 = v12;
  [v11 triggerEscrowUpdate:v12 options:v9 reply:v17];
  v13 = v22;
  if (a5)
  {
    v14 = v22[5];
    if (v14)
    {
      *a5 = v14;
      v13 = v22;
    }
  }

  v15 = v13[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v15;
}

void __54__SecEscrowRequest_triggerEscrowUpdate_options_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "triggerEscrowUpdate: Failed to get XPC connection: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __54__SecEscrowRequest_triggerEscrowUpdate_options_error___block_invoke_88(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = secLogObjForScope("escrow");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Triggered escrow update for '%@': %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = [(SecEscrowRequest *)self connection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = SecEscrowRequest;
  [(SecEscrowRequest *)&v4 dealloc];
}

- (SecEscrowRequest)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SecEscrowRequest;
  v6 = [(SecEscrowRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

+ (id)request:(id *)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.security.escrow-update" options:0];
  if (v4)
  {
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFABB458];
    SecEscrowRequestSetupControlProtocol(v5);
    objc_claimAutoreleasedReturnValue();

    [v4 setRemoteObjectInterface:v5];
    [v4 resume];
    a3 = [[SecEscrowRequest alloc] initWithConnection:v4];
  }

  else if (a3)
  {
    v6 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Couldn't create connection (no reason given)";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a3 = [v6 errorWithDomain:@"securityd" code:-1 userInfo:v7];

    a3 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return a3;
}

@end