@interface LSBuiltinApplicationRegistrant
- (LSBuiltinApplicationRegistrant)initWithStrategy:(id)a3 operationUUID:(id)a4 itemInfoDict:(id)a5 personas:(id)a6;
- (void)runWithCompletion:(id)a3;
@end

@implementation LSBuiltinApplicationRegistrant

- (LSBuiltinApplicationRegistrant)initWithStrategy:(id)a3 operationUUID:(id)a4 itemInfoDict:(id)a5 personas:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = LSBuiltinApplicationRegistrant;
  v15 = [(LSBuiltinApplicationRegistrant *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_strategy, a3);
    objc_storeStrong(&v16->_uuid, a4);
    v17 = [v13 copy];
    miDict = v16->_miDict;
    v16->_miDict = v17;

    v19 = [v14 copy];
    personas = v16->_personas;
    v16->_personas = v19;
  }

  return v16;
}

- (void)runWithCompletion:(id)a3
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_miDict;
  v6 = [(NSDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:@"Path"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = @"No bundle identifier provided. ";
    if (v6)
    {
      v10 = &stru_1EEF65710;
    }

    v11 = v10;
    v12 = v11;
    if (v8)
    {
      v13 = &stru_1EEF65710;
    }

    else
    {
      v13 = @"No path provided.";
    }

    v14 = [(__CFString *)v11 stringByAppendingString:v13];

    v43 = *MEMORY[0x1E696A278];
    v44[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "[LSBuiltinApplicationRegistrant runWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 527);

    v4[2](v4, 0, v16);
  }

  else
  {
    v17 = [(NSDictionary *)v5 objectForKey:@"ParallelPlaceholderPath"];

    if (v17 || (-[NSDictionary objectForKey:](v5, "objectForKey:", @"IsPlaceholder"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 BOOLValue], v18, v19))
    {
      v41 = *MEMORY[0x1E696A278];
      v42 = @"Cannot register parallel placeholders or standalone placeholders with this interface.";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v20, "[LSBuiltinApplicationRegistrant runWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 538);

      v4[2](v4, 0, v14);
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v8 isDirectory:1];
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__49;
      v39 = __Block_byref_object_dispose__49;
      v40 = 0;
      v22 = [FSNode alloc];
      v23 = (v36 + 5);
      obj = v36[5];
      v24 = [(FSNode *)v22 initWithURL:v14 flags:0 error:&obj];
      objc_storeStrong(v23, obj);
      if (v24)
      {
        [(LSRegistrantStrategy *)self->_strategy beginModificationOperation];
        strategy = self->_strategy;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke;
        v26[3] = &unk_1E6A1E3F0;
        v33 = &v35;
        v27 = v6;
        v28 = v24;
        v29 = v5;
        v30 = self;
        v31 = v14;
        v32 = v4;
        [(LSRegistrantStrategy *)strategy runSyncBlockInWriteContext:v26];
      }

      else
      {
        v4[2](v4, 0, v36[5]);
      }

      _Block_object_dispose(&v35, 8);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 80) + 8);
  v27 = *(v4 + 40);
  v5 = [v3 databaseContextWithError:&v27];
  objc_storeStrong((v4 + 40), v27);
  if (v5)
  {
    if ([v5 containerizedBundleExistsForIdentifier:*(a1 + 32)])
    {
      v6 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 119, 0, "[LSBuiltinApplicationRegistrant runWithCompletion:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 572);
      v7 = 0;
      v8 = *(*(a1 + 80) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v6;
LABEL_6:

      goto LABEL_8;
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 56) + 32);
    v13 = *(*(a1 + 80) + 8);
    v26 = *(v13 + 40);
    v14 = [v5 registerBundleNodeReinitializingContext:v10 inBundleContainer:0 installDictionary:v11 personasWithAttributes:v12 error:&v26];
    objc_storeStrong((v13 + 40), v26);
    if (v14)
    {
      v15 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(*(a1 + 56) + 16)];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke_2;
      v22[3] = &unk_1E6A1E3C8;
      v23 = *(a1 + 64);
      v25 = v14;
      v7 = v15;
      v24 = v7;
      [v3 armSaveTimerIfNecessary:v22];

      v16 = [*(*(a1 + 56) + 8) notificationJournallerForBundleIdentifier:*(a1 + 32) registeringPlaceholder:0];
      v17 = registrationCleanupQueue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke_3;
      block[3] = &unk_1E6A1ABE8;
      v20 = v16;
      v21 = *(a1 + 32);
      v5 = v16;
      dispatch_async(v17, block);

      v9 = v20;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:

  [*(*(a1 + 56) + 8) endModificationOperation];
  if (!v7)
  {
    [*(*(a1 + 56) + 8) flushModificationState];
  }

  v18 = *(*(*(a1 + 80) + 8) + 40);
  (*(*(a1 + 72) + 16))();
}

void __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke_2(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v14 = 138413058;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 1024;
    v19 = a2;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after unregistration for register builtin app url %@ (unit %llx) attempted: %d save error: %@", &v14, 0x26u);
  }

  v10 = v6;
  v11 = v10;
  if ((a2 & 1) == 0)
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[LSBuiltinApplicationRegistrant runWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 566);

    v11 = v12;
  }

  [*(a1 + 40) saveDidHappen:v11 == 0 error:v11];

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __52__LSBuiltinApplicationRegistrant_runWithCompletion___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v6[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v2 sendNotification:7 forApps:v3 withPlugins:0];

  [*(a1 + 32) writeFinalJournal];
  result = [*(a1 + 32) removeJournalAfterNotificationFence];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end