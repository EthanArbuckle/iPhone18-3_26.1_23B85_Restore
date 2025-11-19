@interface LSMIResultUnregistrant
- (LSMIResultUnregistrant)initWithContext:(id)a3 operationUUID:(id)a4 bundleIdentifier:(id)a5 precondition:(id)a6 type:(unsigned int)a7;
- (void)runWithCompletion:(id)a3;
@end

@implementation LSMIResultUnregistrant

- (LSMIResultUnregistrant)initWithContext:(id)a3 operationUUID:(id)a4 bundleIdentifier:(id)a5 precondition:(id)a6 type:(unsigned int)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v24.receiver = self;
  v24.super_class = LSMIResultUnregistrant;
  v17 = [(LSMIResultUnregistrant *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_strategy, a3);
    objc_storeStrong(&v18->_uuid, a4);
    v19 = [v15 copy];
    bundleID = v18->_bundleID;
    v18->_bundleID = v19;

    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = +[LSPrecondition emptyPrecondition];
    }

    precondition = v18->_precondition;
    v18->_precondition = v21;

    v18->_type = a7;
  }

  return v18;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(LSRegistrantStrategy *)self->_strategy preUnregistrationContextForBundleIdentifier:self->_bundleID];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__49;
  v28 = __Block_byref_object_dispose__49;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__49;
  v22 = __Block_byref_object_dispose__49;
  v23 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__136;
  v16[4] = __Block_byref_object_dispose__137;
  v17 = 0;
  [(LSRegistrantStrategy *)self->_strategy beginModificationOperation];
  strategy = self->_strategy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__LSMIResultUnregistrant_runWithCompletion___block_invoke;
  v15[3] = &unk_1E6A1E328;
  v15[4] = self;
  v15[5] = &v24;
  v15[6] = v16;
  v15[7] = &v18;
  [(LSRegistrantStrategy *)strategy runSyncBlockInWriteContext:v15];
  v7 = registrationCleanupQueue();
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __44__LSMIResultUnregistrant_runWithCompletion___block_invoke_2;
  v12 = &unk_1E6A1AE60;
  v14 = v16;
  v8 = v5;
  v13 = v8;
  dispatch_async(v7, &v9);

  _LSLogStepFinished(6, v25[5] == 0, self->_bundleID, &cfstr_UnregisterBund_0.isa, v9, v10, v11, v12);
  v4[2](v4, v19[5], v25[5]);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
}

void __44__LSMIResultUnregistrant_runWithCompletion___block_invoke(void *a1, void *a2)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  _LSLogStepStart(6, 0, *(a1[4] + 24), &cfstr_UnregisterBund.isa);
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 databaseContextWithError:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = *(a1[5] + 8);
    v9 = *(v6 + 40);
    v7 = (v6 + 40);
    v8 = v9;
    v10 = *(a1[4] + 32);
    if ([v10 isMet])
    {

      objc_storeStrong(v7, v8);
      v11 = a1[4];
      v12 = *(v11 + 24);
      v13 = *(v11 + 40);
      v14 = *(a1[5] + 8);
      v34 = *(v14 + 40);
      v15 = [v5 unregisterApplicationWithBundleIdentifier:v12 type:v13 error:&v34];
      objc_storeStrong((v14 + 40), v34);
      v16 = *(a1[6] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Precondition not met: %@", v10];
      v37[0] = *MEMORY[0x1E696A278];
      *buf = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v37 count:1];
      v20 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 117, v19, "validatePrecondition", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 325);
      v21 = v20;

      objc_storeStrong(v7, v20);
      v17 = _LSInstallLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1[4] + 32);
        *buf = 138412290;
        *&buf[4] = v22;
        _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "Unregistration precondition not met: %@", buf, 0xCu);
      }
    }

    [*(a1[4] + 8) endModificationOperation];
    v23 = a1[4];
    if (*(*(a1[6] + 8) + 40))
    {
      v24 = *(v23 + 24);
      v25 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(a1[4] + 16)];
      v26 = *(a1[7] + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __44__LSMIResultUnregistrant_runWithCompletion___block_invoke_141;
      v31[3] = &unk_1E6A1E300;
      v28 = v24;
      v29 = a1[7];
      v32 = v28;
      v33 = v29;
      [v3 armSaveTimerIfNecessary:v31];
    }

    else
    {
      [*(v23 + 8) flushModificationState];
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __44__LSMIResultUnregistrant_runWithCompletion___block_invoke_141(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v13 = 138412802;
    v14 = v8;
    v15 = 1024;
    v16 = a2;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after unregistration for %@ attempted: %d save error: %@", &v13, 0x1Cu);
  }

  v9 = v6;
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[LSMIResultUnregistrant runWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 355);

    v10 = v11;
  }

  [*(*(*(a1 + 40) + 8) + 40) saveDidHappen:v10 == 0 error:v10];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __44__LSMIResultUnregistrant_runWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

@end