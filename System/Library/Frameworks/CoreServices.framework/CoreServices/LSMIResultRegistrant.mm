@interface LSMIResultRegistrant
- (LSMIResultRegistrant)initWithContext:(id)context operationUUID:(id)d itemInfoDict:(id)dict personas:(id)personas;
- (void)_replyWithError:(id)error onQueue:(id)queue block:(id)block;
- (void)runPostProcessingForBundleID:(id)d success:(BOOL)success isSystemApp:(BOOL)app isPlaceholder:(BOOL)placeholder registeredBothFullAppAndPlaceholder:(BOOL)andPlaceholder notificationJournaller:(id)journaller;
- (void)runWithCompletion:(id)completion;
@end

@implementation LSMIResultRegistrant

- (LSMIResultRegistrant)initWithContext:(id)context operationUUID:(id)d itemInfoDict:(id)dict personas:(id)personas
{
  contextCopy = context;
  dCopy = d;
  dictCopy = dict;
  personasCopy = personas;
  v22.receiver = self;
  v22.super_class = LSMIResultRegistrant;
  v15 = [(LSMIResultRegistrant *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_strategy, context);
    objc_storeStrong(&v16->_uuid, d);
    v17 = [dictCopy copy];
    miDict = v16->_miDict;
    v16->_miDict = v17;

    v19 = [personasCopy copy];
    personas = v16->_personas;
    v16->_personas = v19;
  }

  return v16;
}

- (void)_replyWithError:(id)error onQueue:(id)queue block:(id)block
{
  errorCopy = error;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__LSMIResultRegistrant__replyWithError_onQueue_block___block_invoke;
  v11[3] = &unk_1E6A1E260;
  v12 = errorCopy;
  v13 = blockCopy;
  v9 = errorCopy;
  v10 = blockCopy;
  dispatch_async(queue, v11);
}

- (void)runPostProcessingForBundleID:(id)d success:(BOOL)success isSystemApp:(BOOL)app isPlaceholder:(BOOL)placeholder registeredBothFullAppAndPlaceholder:(BOOL)andPlaceholder notificationJournaller:(id)journaller
{
  andPlaceholderCopy = andPlaceholder;
  placeholderCopy = placeholder;
  appCopy = app;
  successCopy = success;
  v22[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  journallerCopy = journaller;
  if (successCopy)
  {
    if (appCopy)
    {
      v15 = +[LSApplicationRestrictionsManager sharedInstance];
      v16 = [(LSApplicationRestrictionsManager *)v15 setApplication:dCopy removed:0];

      if (v16)
      {
        _LSNoteSystemAppInstallOrUninstall(dCopy, 1u);
      }
    }

    if (placeholderCopy)
    {
      v17 = 1;
    }

    else
    {
      v17 = 7;
    }

    if (andPlaceholderCopy)
    {
      v18 = 15;
    }

    else
    {
      v18 = v17;
    }

    if (!placeholderCopy)
    {
      v19 = +[_LSInstallProgressService sharedInstance];
      [v19 installationEndedForApplication:dCopy withState:5];
    }
  }

  else
  {
    v18 = 11;
  }

  v22[0] = dCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [journallerCopy sendNotification:v18 forApps:v20 withPlugins:0];

  [journallerCopy writeFinalJournal];
  [journallerCopy removeJournalAfterNotificationFence];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)runWithCompletion:(id)completion
{
  v51[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = self->_miDict;
  v5 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"Path"];
  v32 = v6;
  v34 = [(NSDictionary *)v4 objectForKeyedSubscript:@"ParallelPlaceholderPath"];
  v31 = [(NSDictionary *)v4 objectForKey:@"ApplicationType"];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = @"No bundle identifier provided. ";
    if (v5)
    {
      v8 = &stru_1EEF65710;
    }

    v9 = v8;
    v10 = v9;
    if (v6)
    {
      v11 = &stru_1EEF65710;
    }

    else
    {
      v11 = @"No path provided.";
    }

    v12 = [(__CFString *)v9 stringByAppendingString:v11];

    v50 = *MEMORY[0x1E696A278];
    v51[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v30 = v12;
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "[LSMIResultRegistrant runWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 183);

    (*(completionCopy + 2))(completionCopy, 0, 0, v14);
  }

  else
  {
    v15 = [(NSDictionary *)v4 objectForKey:@"ParallelPlaceholderPath"];
    v16 = v15 != 0;

    if (v15)
    {
      bOOLValue = 1;
    }

    else
    {
      v18 = [(NSDictionary *)v4 objectForKey:@"IsPlaceholder"];
      bOOLValue = [v18 BOOLValue];
    }

    v30 = [(LSRegistrantStrategy *)self->_strategy notificationJournallerForBundleIdentifier:v5 registeringPlaceholder:bOOLValue];
    v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v6 isDirectory:1];
    if (v34)
    {
      v29 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v34];
    }

    else
    {
      v29 = 0;
    }

    v49 = 0;
    v28 = [[FSNode alloc] initWithURL:v14 flags:0 error:&v49];
    v19 = v16;
    v20 = v49;
    if (v29)
    {
      v48 = v20;
      v21 = [[FSNode alloc] initWithURL:v29 flags:0 error:&v48];
      v22 = v48;

      v20 = v22;
    }

    else
    {
      v21 = 0;
    }

    if (v28 && (!v34 || v21))
    {
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v28;
      }

      v24 = v23;
      [(LSRegistrantStrategy *)self->_strategy beginModificationOperation];
      strategy = self->_strategy;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __42__LSMIResultRegistrant_runWithCompletion___block_invoke;
      v35[3] = &unk_1E6A1E2D8;
      v36 = v5;
      v37 = v4;
      v46 = bOOLValue;
      v47 = v19;
      v38 = v28;
      selfCopy = self;
      v40 = v34;
      v25 = v24;
      v41 = v25;
      v42 = v20;
      v43 = v31;
      v44 = v30;
      v45 = completionCopy;
      [(LSRegistrantStrategy *)strategy runSyncBlockInWriteContext:v35];
    }

    else
    {
      -[LSMIResultRegistrant runPostProcessingForBundleID:success:isSystemApp:isPlaceholder:registeredBothFullAppAndPlaceholder:notificationJournaller:](self, "runPostProcessingForBundleID:success:isSystemApp:isPlaceholder:registeredBothFullAppAndPlaceholder:notificationJournaller:", v5, 0, [v31 isEqualToString:@"System"], bOOLValue, 0, v30);
      (*(completionCopy + 2))(completionCopy, 0, 0, v20);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __42__LSMIResultRegistrant_runWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _LSLogStepStart(4, 0, *(a1 + 32), &cfstr_RegisteringBun.isa);
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v4 = [*(a1 + 40) mutableCopy];
  v51 = 0;
  v5 = [v3 databaseContextWithError:&v51];
  v6 = v51;
  if (!v5)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = 0;
    goto LABEL_33;
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_21;
  }

  if (*(a1 + 113) == 1)
  {
    if ([v5 fullBundleExistsForIdentifier:*(a1 + 32) matchingNode:*(a1 + 48)])
    {
      v7 = 0;
    }

    else
    {
      v13 = _LSInstallLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138412290;
        v57 = v14;
        _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "%@ registration is for parallel placeholder but full app is not registered; registering it", buf, 0xCu);
      }

      v16 = *(a1 + 40);
      v15 = *(a1 + 48);
      v17 = *(*(a1 + 56) + 32);
      v50 = v6;
      v18 = [v5 registerBundleNodeReinitializingContext:v15 inBundleContainer:1 installDictionary:v16 personasWithAttributes:v17 error:&v50];
      v19 = v50;

      if (v18)
      {
        v20 = _LSInstallLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          *buf = 138412546;
          v57 = v21;
          v58 = 2048;
          v59 = v18;
          _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "Successfully registered full app for %@: %llx", buf, 0x16u);
        }

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }

      v6 = v19;
    }

    [v4 setObject:*(a1 + 64) forKeyedSubscript:@"Path"];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPlaceholder"];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsParallelPlaceholder"];
    goto LABEL_25;
  }

  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPlaceholder"];
  if ([v5 fullBundleExistsForIdentifier:*(a1 + 32) matchingNode:0])
  {
    goto LABEL_18;
  }

  v10 = [*(a1 + 40) objectForKeyedSubscript:@"LSInstallType"];
  v11 = [v10 integerValue];
  v12 = v11;
  if (v11 >= 7)
  {
    if (v11 - 7 >= 4)
    {
      v36 = _LSDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        __42__LSMIResultRegistrant_runWithCompletion___block_invoke_cold_1(v12, v36);
      }

      goto LABEL_9;
    }

LABEL_18:
    v22 = _LSInstallLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEFAULT, "while registering placeholder, found existing full bundle but not registering a parallel placeholder; noting placeholder registration is a downgrade", buf, 2u);
    }

    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSAppDowngrade"];
    goto LABEL_21;
  }

LABEL_9:

LABEL_21:
  v7 = 0;
LABEL_25:
  if (v6)
  {

    v9 = 0;
LABEL_34:
    v30 = 0;
    _LSLogStepFinished(4, 0, *(a1 + 32), &cfstr_FailedToRegist.isa, *(a1 + 32));
    v31 = 0;
    goto LABEL_36;
  }

  v23 = *(a1 + 72);
  v24 = *(*(a1 + 56) + 32);
  v49 = 0;
  v8 = [v5 registerBundleNodeReinitializingContext:v23 inBundleContainer:1 installDictionary:v4 personasWithAttributes:v24 error:&v49];
  v25 = v49;
  v26 = v25;
  if (v8)
  {
    v48 = v25;
    v27 = [v5 findContainerizedRecordForBundleUnit:v8 error:&v48];
    v28 = v48;

    if (v27)
    {
      v47 = v28;
      v9 = [[LSRecordPromise alloc] initWithRecord:v27 error:&v47];
      v29 = v47;

      v28 = v29;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v28 = *(a1 + 80);
    v9 = 0;
    v27 = v26;
  }

  v6 = v28;
LABEL_33:

  if (v6)
  {
    goto LABEL_34;
  }

  _LSLogStepFinished(4, 1, *(a1 + 32), &cfstr_FinishedRegist.isa, *(a1 + 32), v8);
  v32 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(*(a1 + 56) + 16)];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __42__LSMIResultRegistrant_runWithCompletion___block_invoke_107;
  v44[3] = &unk_1E6A1E288;
  v46 = v8;
  v30 = v32;
  v45 = v30;
  [v3 armSaveTimerIfNecessary:v44];

  v6 = 0;
  v31 = 1;
LABEL_36:
  [*(*(a1 + 56) + 8) endModificationOperation];
  if ((v31 & 1) == 0)
  {
    [*(*(a1 + 56) + 8) flushModificationState];
  }

  v33 = registrationCleanupQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__LSMIResultRegistrant_runWithCompletion___block_invoke_2;
  block[3] = &unk_1E6A1E2B0;
  block[4] = *(a1 + 56);
  v38 = *(a1 + 32);
  v34 = v6;
  v39 = v34;
  v40 = *(a1 + 88);
  v42 = *(a1 + 112);
  v43 = v7;
  v41 = *(a1 + 96);
  dispatch_async(v33, block);

  (*(*(a1 + 104) + 16))();
  if (v52 && v54 == 1)
  {
    _LSContextDestroy(v52);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __42__LSMIResultRegistrant_runWithCompletion___block_invoke_107(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v13 = 134218498;
    v14 = v8;
    v15 = 1024;
    v16 = a2;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after registration for unit %llx attempted: %d save error: %@", &v13, 0x1Cu);
  }

  v9 = v6;
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[LSMIResultRegistrant runWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 271);

    v10 = v11;
  }

  [*(a1 + 32) saveDidHappen:v10 == 0 error:v10];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __42__LSMIResultRegistrant_runWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48) == 0;
  v5 = [*(a1 + 56) isEqualToString:@"System"];
  v6 = *(a1 + 72);
  v7 = *(a1 + 73);
  v8 = *(a1 + 64);

  return [v2 runPostProcessingForBundleID:v3 success:v4 isSystemApp:v5 isPlaceholder:v6 registeredBothFullAppAndPlaceholder:v7 notificationJournaller:v8];
}

void __42__LSMIResultRegistrant_runWithCompletion___block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "install type %d not handled", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end