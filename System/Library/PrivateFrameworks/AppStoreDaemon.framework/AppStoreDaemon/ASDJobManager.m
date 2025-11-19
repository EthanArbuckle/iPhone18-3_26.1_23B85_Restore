@interface ASDJobManager
- (ASDJobManager)init;
- (ASDJobManager)initWithOptions:(id)a3;
- (id)_mapAllJobsToIDs;
- (void)_applyUpdates:(void *)a3 usingBlock:;
- (void)_connectToDaemon;
- (void)_getJobsWithIDs:(void *)a3 usingBlock:;
- (void)_invalidate;
- (void)_sendJobsChanged:(uint64_t)a1;
- (void)_sendJobsCompleted:(uint64_t)a1;
- (void)_sendProgressUpdated:(uint64_t)a1;
- (void)addJobObserver:(id)a3;
- (void)applicationInstallsDidChange:(id)a3;
- (void)cancelJobsWithIDs:(id)a3 completionBlock:(id)a4;
- (void)dealloc;
- (void)didChangeJobs:(id)a3;
- (void)didCompleteJobs:(id)a3 finalPhases:(id)a4;
- (void)didUpdateProgress:(id)a3;
- (void)didUpdateStates:(id)a3;
- (void)finishJobs:(id)a3;
- (void)getJobsUsingBlock:(id)a3;
- (void)getJobsWithIDs:(id)a3 usingBlock:(id)a4;
- (void)invalidate;
- (void)pauseJobsWithIDs:(id)a3 completionBlock:(id)a4;
- (void)removeJobObserver:(id)a3;
- (void)resumeJobsWithIDs:(id)a3 completionBlock:(id)a4;
@end

@implementation ASDJobManager

- (ASDJobManager)init
{
  v3 = objc_alloc_init(ASDJobManagerOptions);
  v4 = [(ASDJobManager *)self initWithOptions:v3];

  return v4;
}

- (ASDJobManager)initWithOptions:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = ASDJobManager;
  v5 = [(ASDJobManager *)&v33 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstoredaemon.ASDJobManager.access", v6);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.appstoredaemon.ASDJobManager.observer", v9);
    observerQueue = v5->_observerQueue;
    v5->_observerQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.appstoredaemon.ASDJobManager.xpc", v12);
    xpcQueue = v5->_xpcQueue;
    v5->_xpcQueue = v13;

    v15 = objc_opt_new();
    jobs = v5->_jobs;
    v5->_jobs = v15;

    v17 = [v4 copy];
    options = v5->_options;
    v5->_options = v17;

    v19 = SecTaskCreateFromSelf(0);
    if (v19)
    {
      v20 = v19;
      error = 0;
      v21 = SecTaskCopyValueForEntitlement(v19, @"com.apple.private.coreservices.canmaplsdatabase", &error);
      if (error)
      {
        CFRelease(error);
      }

      if (v21)
      {
        v22 = CFGetTypeID(v21);
        if (v22 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(v21);
          CFRelease(v21);
          CFRelease(v20);
          v5->_useLaunchServicesProgress = Value != 0;
          if (Value)
          {
            v24 = [getLSApplicationWorkspaceClass() defaultWorkspace];
            [v24 addObserver:v5];
          }

          goto LABEL_12;
        }

        CFRelease(v21);
      }

      CFRelease(v20);
    }

    v5->_useLaunchServicesProgress = 0;
LABEL_12:
    v25 = v5->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__ASDJobManager_initWithOptions___block_invoke;
    block[3] = &unk_1E7CDB930;
    v26 = v5;
    v32 = v26;
    dispatch_async(v25, block);
    objc_initWeak(&error, v26);
    v27 = v5->_accessQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __33__ASDJobManager_initWithOptions___block_invoke_2;
    handler[3] = &unk_1E7CDC170;
    objc_copyWeak(&v30, &error);
    notify_register_dispatch("com.apple.appstored.daemon.launched", v26 + 8, v27, handler);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&error);
  }

  return v5;
}

- (void)_connectToDaemon
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([(ASDBaseClient *)a1 _clientHasEntitlement:?])
    {
      goto LABEL_6;
    }

    v2 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = objc_opt_class();
      v23 = *(&buf + 4);
      _os_log_error_impl(&dword_1B8220000, v2, OS_LOG_TYPE_ERROR, "[%{public}@]: Treating as legacy client", &buf, 0xCu);
    }

    if ([(ASDBaseClient *)a1 _clientHasEntitlement:?])
    {
LABEL_6:
      v3 = *(a1 + 16);
      if (v3)
      {
        [v3 invalidate];
      }

      v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.appstored.xpc.jobmanager" options:0];
      v5 = *(a1 + 16);
      *(a1 + 16) = v4;

      [*(a1 + 16) _setQueue:*(a1 + 80)];
      v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A898];
      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      [v6 setClasses:v9 forSelector:sel_getJobsUsingReplyBlock_ argumentIndex:0 ofReply:1];

      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      [v6 setClasses:v12 forSelector:sel_getJobsWithIDs_usingReplyBlock_ argumentIndex:0 ofReply:1];

      [v6 setClass:objc_opt_class() forSelector:sel_registerJobManagerWithOptions_replyBlock_ argumentIndex:0 ofReply:0];
      [*(a1 + 16) setRemoteObjectInterface:v6];
      v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3042418];
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      [v13 setClasses:v16 forSelector:sel_didChangeJobs_ argumentIndex:0 ofReply:0];

      [*(a1 + 16) setExportedInterface:v13];
      [*(a1 + 16) setExportedObject:a1];
      objc_initWeak(&location, a1);
      objc_initWeak(&from, *(a1 + 16));
      v17 = *(a1 + 16);
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v33 = __33__ASDJobManager__setupConnection__block_invoke;
      v34 = &unk_1E7CDDBA8;
      objc_copyWeak(&v35, &location);
      objc_copyWeak(v36, &from);
      [v17 setInvalidationHandler:&buf];
      v18 = *(a1 + 16);
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __33__ASDJobManager__setupConnection__block_invoke_130;
      v27 = &unk_1E7CDDBA8;
      objc_copyWeak(&v28, &location);
      objc_copyWeak(&v29, &from);
      [v18 setInterruptionHandler:&v24];
      [*(a1 + 16) resume];
      objc_destroyWeak(&v29);
      objc_destroyWeak(&v28);
      objc_destroyWeak(v36);
      objc_destroyWeak(&v35);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    v19 = *(a1 + 56);
    v20 = *(a1 + 16);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v33 = __45__ASDJobManager__registerManagerWithOptions___block_invoke;
    v34 = &unk_1E7CDDAE0;
    v21 = v19;
    v35 = v21;
    v36[0] = a1;
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __45__ASDJobManager__registerManagerWithOptions___block_invoke_39;
    v27 = &unk_1E7CDB980;
    v28 = a1;
    [a1 _call:v20 run:&buf error:&v24];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __33__ASDJobManager_initWithOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(ASDJobManager *)WeakRetained _connectToDaemon];
}

- (void)dealloc
{
  if (self->_useLaunchServicesProgress)
  {
    v3 = [getLSApplicationWorkspaceClass() defaultWorkspace];
    [v3 removeObserver:self];
  }

  [(ASDJobManager *)self _invalidate];
  v4.receiver = self;
  v4.super_class = ASDJobManager;
  [(ASDJobManager *)&v4 dealloc];
}

- (void)_invalidate
{
  if (a1)
  {
    notify_cancel(*(a1 + 32));
    v2 = *(a1 + 16);
    if (v2)
    {
      [v2 invalidate];
      v3 = *(a1 + 16);
      *(a1 + 16) = 0;
    }
  }
}

- (void)addJobObserver:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__ASDJobManager_addJobObserver___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

uint64_t __32__ASDJobManager_addJobObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)cancelJobsWithIDs:(id)a3 completionBlock:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [v6 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: cancelJobsWithIDs: %{public}@", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v17 = v6;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(accessQueue, block);

  v15 = *MEMORY[0x1E69E9840];
}

void __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDDB58;
  v9 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_3;
  v6[3] = &unk_1E7CDBDD0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 cancelJobsWithIDs:v4 completionBlock:v6];
}

void __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(*(a1 + 32) + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_4;
    v5[3] = &unk_1E7CDD418;
    v6 = v2;
    v7 = a2;
    dispatch_async(v4, v5);
  }
}

void __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)finishJobs:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&v17 + 1) + 8 * v10), "persistentID")}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__ASDJobManager_finishJobs___block_invoke;
    block[3] = &unk_1E7CDBA20;
    block[4] = self;
    v15 = v6;
    v16 = v5;
    dispatch_async(accessQueue, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __28__ASDJobManager_finishJobs___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(v2 + 64);
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(v2 + 64);
      *(v2 + 64) = v5;

      v4 = *(v2 + 64);
    }

    [v4 addObjectsFromArray:v3];
    v7 = [*(v2 + 24) mutableCopy];
    v8 = [*(v2 + 64) allObjects];
    [v7 removeObjectsInArray:v8];

    v9 = [v7 copy];
    v10 = *(v2 + 24);
    *(v2 + 24) = v9;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = v12;
  if (v11)
  {
    v14 = v11[2];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __36__ASDJobManager__finishJobsWithIDs___block_invoke;
    v16[3] = &unk_1E7CDDAE0;
    v17 = v12;
    v18 = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__ASDJobManager__finishJobsWithIDs___block_invoke_4;
    v15[3] = &unk_1E7CDB980;
    v15[4] = v11;
    [v11 _call:v14 run:v16 error:v15];
  }
}

- (void)getJobsUsingBlock:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__ASDJobManager_getJobsUsingBlock___block_invoke;
  v7[3] = &unk_1E7CDBE48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __35__ASDJobManager_getJobsUsingBlock___block_invoke(uint64_t a1)
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __35__ASDJobManager_getJobsUsingBlock___block_invoke_2;
  v10 = &unk_1E7CDDA48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v3;
  v4 = &v7;
  v5 = v4;
  if (v2)
  {
    v6 = v2[2];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__ASDJobManager__getJobsUsingBlock___block_invoke;
    v15[3] = &unk_1E7CDDB08;
    v15[4] = v2;
    v16 = v4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36__ASDJobManager__getJobsUsingBlock___block_invoke_4;
    v13[3] = &unk_1E7CDBAB8;
    v13[4] = v2;
    v14 = v16;
    [v2 _call:v6 run:v15 error:{v13, v7, v8, v9, v10}];
  }
}

void __35__ASDJobManager_getJobsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__ASDJobManager_getJobsUsingBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)getJobsWithIDs:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ASDJobManager_getJobsWithIDs_usingBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

void __43__ASDJobManager_getJobsWithIDs_usingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__ASDJobManager_getJobsWithIDs_usingBlock___block_invoke_2;
  v5[3] = &unk_1E7CDDA48;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [(ASDJobManager *)v2 _getJobsWithIDs:v3 usingBlock:v5];
}

void __43__ASDJobManager_getJobsWithIDs_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__ASDJobManager_getJobsWithIDs_usingBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)_getJobsWithIDs:(void *)a3 usingBlock:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [v5 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1B8220000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Getting job(s) with IDs: %{public}@", buf, 0x16u);
    }

    v11 = a1[2];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke;
    v15[3] = &unk_1E7CDDB58;
    v16 = v5;
    v17 = a1;
    v18 = v6;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_2_36;
    v13[3] = &unk_1E7CDBAB8;
    v13[4] = a1;
    v14 = v18;
    [a1 _call:v11 run:v15 error:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__ASDJobManager_invalidate__block_invoke;
  block[3] = &unk_1E7CDB930;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)pauseJobsWithIDs:(id)a3 completionBlock:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [v6 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: pauseJobsWithIDs: %{public}@", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v17 = v6;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(accessQueue, block);

  v15 = *MEMORY[0x1E69E9840];
}

void __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDDB58;
  v9 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_3;
  v6[3] = &unk_1E7CDBDD0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 pauseJobsWithIDs:v4 completionBlock:v6];
}

void __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(*(a1 + 32) + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_4;
    v5[3] = &unk_1E7CDD418;
    v6 = v2;
    v7 = a2;
    dispatch_async(v4, v5);
  }
}

void __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)removeJobObserver:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__ASDJobManager_removeJobObserver___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

uint64_t __35__ASDJobManager_removeJobObserver___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 48))
  {
    return [*(*(result + 32) + 48) removeObject:*(result + 40)];
  }

  return result;
}

- (void)resumeJobsWithIDs:(id)a3 completionBlock:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [v6 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: resumeJobsWithIDs: %{public}@", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v17 = v6;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(accessQueue, block);

  v15 = *MEMORY[0x1E69E9840];
}

void __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDDB58;
  v9 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_3;
  v6[3] = &unk_1E7CDBDD0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 resumeJobsWithIDs:v4 completionBlock:v6];
}

void __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_4;
    block[3] = &unk_1E7CDBB30;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)didChangeJobs:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__ASDJobManager_didChangeJobs___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __31__ASDJobManager_didChangeJobs___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    *buf = 138543618;
    v25 = v4;
    v26 = 2114;
    v27 = v5;
    v6 = v4;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: didChangeJobs: %{public}@", buf, 0x16u);
  }

  v7 = [*(*(a1 + 32) + 24) mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (([*(*(a1 + 32) + 64) containsObject:{v13, v19}] & 1) == 0)
        {
          v14 = [v7 indexOfObject:v13];
          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v7 addObject:v13];
          }

          else
          {
            [v7 replaceObjectAtIndex:v14 withObject:v13];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];
  v16 = *(a1 + 32);
  v17 = *(v16 + 24);
  *(v16 + 24) = v15;

  [(ASDJobManager *)*(a1 + 32) _sendJobsChanged:v7];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_sendJobsChanged:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 48) allObjects];
    v5 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__ASDJobManager__sendJobsChanged___block_invoke;
    block[3] = &unk_1E7CDBA20;
    v8 = v4;
    v9 = a1;
    v10 = v3;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

- (void)didCompleteJobs:(id)a3 finalPhases:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__ASDJobManager_didCompleteJobs_finalPhases___block_invoke;
  block[3] = &unk_1E7CDBA20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

void __45__ASDJobManager_didCompleteJobs_finalPhases___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = [v5 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v32 = v4;
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: didCompleteJobs: %{public}@", buf, 0x16u);
  }

  v8 = [(ASDJobManager *)*(a1 + 32) _mapAllJobsToIDs];
  v9 = objc_opt_new();
  v10 = [*(*(a1 + 32) + 24) mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [v8 objectForKey:v16];
        if (v17)
        {
          [v10 removeObject:v17];
          [*(*(a1 + 32) + 64) removeObject:v17];
          [v9 addObject:v17];
          v18 = [*(a1 + 48) objectForKey:v16];
          v19 = v18;
          if (v18)
          {
            [v17 setPhase:{objc_msgSend(v18, "integerValue")}];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  v20 = [v10 copy];
  v21 = *(a1 + 32);
  v22 = *(v21 + 24);
  *(v21 + 24) = v20;

  v23 = *(a1 + 32);
  v24 = [v9 copy];
  [(ASDJobManager *)v23 _sendJobsCompleted:v24];

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_mapAllJobsToIDs
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v3 = *(a1 + 64);
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
          [v2 setObject:v8 forKey:v9];
        }

        v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v5);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = *(a1 + 24);
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * j);
          v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v15, "persistentID", v19)}];
          [v2 setObject:v15 forKey:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v2 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)_sendJobsCompleted:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    v5 = [*(a1 + 48) allObjects];
    v6 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__ASDJobManager__sendJobsCompleted___block_invoke;
    block[3] = &unk_1E7CDBA20;
    v9 = v5;
    v10 = a1;
    v11 = v4;
    v7 = v5;
    dispatch_async(v6, block);
  }
}

- (void)didUpdateProgress:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__ASDJobManager_didUpdateProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __35__ASDJobManager_didUpdateProgress___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 72);
  v3 = ASDLogHandleForCategory(13);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v13 = v11;
      _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@]: didUpdateProgress, but using LaunchServices: %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v14 = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      v8 = v6;
      _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: didUpdateProgress: %{public}@", &v14, 0x16u);
    }

    [(ASDJobManager *)*(a1 + 32) _applyUpdates:&__block_literal_global_28 usingBlock:?];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __35__ASDJobManager_didUpdateProgress___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 doubleValue];
  [v4 setPercentComplete:?];
}

- (void)_applyUpdates:(void *)a3 usingBlock:
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v28 = v5;
    v7 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = *(a1 + 24);
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "persistentID", v28)}];
          [v7 setObject:v13 forKey:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v10);
    }

    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __42__ASDJobManager__applyUpdates_usingBlock___block_invoke;
    v30[3] = &unk_1E7CDDA90;
    v17 = v7;
    v31 = v17;
    v34 = v6;
    v18 = v15;
    v32 = v18;
    v19 = v16;
    v33 = v19;
    v5 = v28;
    [v28 enumerateKeysAndObjectsUsingBlock:v30];
    if ([v19 count])
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __42__ASDJobManager__applyUpdates_usingBlock___block_invoke_2;
      v29[3] = &unk_1E7CDDAB8;
      v29[4] = a1;
      [(ASDJobManager *)a1 _getJobsWithIDs:v19 usingBlock:v29];
    }

    v20 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      *buf = 138543618;
      v40 = v21;
      v41 = 2114;
      v42 = v18;
      v22 = v21;
      _os_log_impl(&dword_1B8220000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Sending updated jobs: %{public}@", buf, 0x16u);
    }

    v23 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = *(a1 + 24);
      *buf = 138543618;
      v40 = v24;
      v41 = 2114;
      v42 = v25;
      v26 = v24;
      _os_log_impl(&dword_1B8220000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Our jobs are: %{public}@", buf, 0x16u);
    }

    [(ASDJobManager *)a1 _sendProgressUpdated:v18];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateStates:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__ASDJobManager_didUpdateStates___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __33__ASDJobManager_didUpdateStates___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    v6 = v4;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: didUpdateStates: %{public}@", &v8, 0x16u);
  }

  [(ASDJobManager *)*(a1 + 32) _applyUpdates:&__block_literal_global_24_0 usingBlock:?];
  v7 = *MEMORY[0x1E69E9840];
}

void __33__ASDJobManager_didUpdateStates___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [v4 setPhase:{objc_msgSend(a3, "integerValue")}];
}

- (void)applicationInstallsDidChange:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ASDJobManager_applicationInstallsDidChange___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __46__ASDJobManager_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v29;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = *(*(a1 + 40) + 24);
        v8 = MEMORY[0x1E696AE18];
        v9 = [v6 bundleIdentifier];
        v10 = [v8 predicateWithFormat:@"%K == %@", @"bundleID", v9];
        v11 = [v7 filteredArrayUsingPredicate:v10];

        v12 = [v6 installProgress];
        [v12 fractionCompleted];
        v14 = v13;

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v15 = v11;
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v24 + 1) + 8 * j);
              [v20 percentComplete];
              if (v14 > v21)
              {
                [v20 setPercentComplete:v14];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v17);
        }

        [(ASDJobManager *)*(a1 + 40) _sendProgressUpdated:v15];
      }

      v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v3);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_sendProgressUpdated:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 48) allObjects];
    v5 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__ASDJobManager__sendProgressUpdated___block_invoke;
    block[3] = &unk_1E7CDBA20;
    v8 = v4;
    v9 = a1;
    v10 = v3;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

void __42__ASDJobManager__applyUpdates_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v9];
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
    v7 = *(a1 + 40);
    v8 = v6;
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = v9;
  }

  [v7 addObject:v8];
}

void __42__ASDJobManager__applyUpdates_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__ASDJobManager__applyUpdates_usingBlock___block_invoke_3;
  v7[3] = &unk_1E7CDB868;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __36__ASDJobManager__finishJobsWithIDs___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__ASDJobManager__finishJobsWithIDs___block_invoke_2;
  v4[3] = &unk_1E7CDB930;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 finishJobsWithIDs:v2 replyBlock:v4];
}

void __36__ASDJobManager__finishJobsWithIDs___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDJobManager__finishJobsWithIDs___block_invoke_3;
  block[3] = &unk_1E7CDB930;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __36__ASDJobManager__finishJobsWithIDs___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

void __36__ASDJobManager__finishJobsWithIDs___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDJobManager__finishJobsWithIDs___block_invoke_5;
  block[3] = &unk_1E7CDB930;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __36__ASDJobManager__finishJobsWithIDs___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

void __36__ASDJobManager__getJobsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__ASDJobManager__getJobsUsingBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCA68;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 getJobsUsingReplyBlock:v4];
}

void __36__ASDJobManager__getJobsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDJobManager__getJobsUsingBlock___block_invoke_3;
  block[3] = &unk_1E7CDBF88;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __36__ASDJobManager__getJobsUsingBlock___block_invoke_3(uint64_t a1)
{
  v7 = [*(a1 + 32) mutableCopy];
  v2 = [*(*(a1 + 40) + 64) allObjects];
  [v7 removeObjectsInArray:v2];

  v3 = [v7 copy];
  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = *(*(a1 + 40) + 24);
  (*(*(a1 + 48) + 16))();
}

void __36__ASDJobManager__getJobsUsingBlock___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDJobManager__getJobsUsingBlock___block_invoke_5;
  block[3] = &unk_1E7CDCD70;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_2;
  v5[3] = &unk_1E7CDCA68;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 getJobsWithIDs:v3 usingReplyBlock:v5];
}

void __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_3;
  block[3] = &unk_1E7CDBF88;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_3(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    *buf = 138543618;
    v30 = v4;
    v31 = 2114;
    v32 = v5;
    v6 = v4;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Additional jobs arrived: %{public}@", buf, 0x16u);
  }

  v7 = [*(a1 + 40) mutableCopy];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_34;
  v27[3] = &unk_1E7CDDB30;
  v27[4] = *(a1 + 32);
  v8 = [v7 indexesOfObjectsPassingTest:v27];
  [v7 removeObjectsAtIndexes:v8];
  v9 = [*(*(a1 + 32) + 24) mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v9 indexOfObject:{v15, v23}];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 addObject:v15];
        }

        else
        {
          [v9 replaceObjectAtIndex:v16 withObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v12);
  }

  v17 = [v9 copy];
  v18 = *(a1 + 32);
  v19 = *(v18 + 24);
  *(v18 + 24) = v17;

  v20 = *(a1 + 48);
  v21 = [v10 copy];
  (*(v20 + 16))(v20, v21);

  v22 = *MEMORY[0x1E69E9840];
}

void __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_2_36(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_3_37;
  block[3] = &unk_1E7CDCD70;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

uint64_t __46__ASDJobManager__handleInterruptedConnection___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = result;
    result = [*(v1 + 24) count];
    if (result)
    {
      v3 = *(v2 + 32);

      return [(ASDJobManager *)v3 _connectToDaemon];
    }
  }

  return result;
}

void __46__ASDJobManager__handleInvalidatedConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 16);
  if (v3 == v2)
  {
    *(v1 + 16) = 0;
  }
}

uint64_t __45__ASDJobManager__registerManagerWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__ASDJobManager__registerManagerWithOptions___block_invoke_2;
  v4[3] = &unk_1E7CDDB80;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 registerJobManagerWithOptions:v2 replyBlock:v4];
}

void __45__ASDJobManager__registerManagerWithOptions___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = ASDLogHandleForCategory(13);
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *v19 = 138543362;
      *&v19[4] = objc_opt_class();
      v12 = *&v19[4];
      _os_log_impl(&dword_1B8220000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Registration completed successfully", v19, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = v8;
    v10 = v14;
    if (v13)
    {
      v15 = *(v13 + 8);
      *v19 = MEMORY[0x1E69E9820];
      *&v19[8] = 3221225472;
      *&v19[16] = __34__ASDJobManager__updateActiveIDs___block_invoke;
      v20 = &unk_1E7CDB868;
      v21 = v13;
      v22 = v14;
      dispatch_async(v15, v19);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    *v19 = 138543618;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2114;
    *&v19[14] = v7;
    v18 = *&v19[4];
    _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "[%{public}@]: Registration failed with error: %{public}@", v19, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __45__ASDJobManager__registerManagerWithOptions___block_invoke_39(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Registration failed with connection error: %{public}@", &v8, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __34__ASDJobManager__sendJobsChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 jobManager:*(a1 + 40) changedJobs:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __36__ASDJobManager__sendJobsCompleted___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 jobManager:*(a1 + 40) completedJobs:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __38__ASDJobManager__sendProgressUpdated___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 jobManager:*(a1 + 40) updatedProgressOfJobs:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __33__ASDJobManager__setupConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEFAULT, "[ASDJobManager]: Server connection was invalidated", v8, 2u);
  }

  v5 = v3;
  v6 = v5;
  if (WeakRetained)
  {
    v7 = WeakRetained[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__ASDJobManager__handleInvalidatedConnection___block_invoke;
    v8[3] = &unk_1E7CDB868;
    v8[4] = WeakRetained;
    v9 = v5;
    dispatch_async(v7, v8);
  }
}

void __33__ASDJobManager__setupConnection__block_invoke_130(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEFAULT, "[ASDJobManager]: Server connection was interrupted", v6, 2u);
  }

  if (WeakRetained)
  {
    v5 = WeakRetained[1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__ASDJobManager__handleInterruptedConnection___block_invoke;
    v6[3] = &unk_1E7CDB930;
    v6[4] = WeakRetained;
    dispatch_async(v5, v6);
  }
}

void __34__ASDJobManager__updateActiveIDs___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = [v5 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v33 = v4;
    v34 = 2114;
    v35 = v7;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: updateActiveIDs: %{public}@", buf, 0x16u);
  }

  v8 = [(ASDJobManager *)*(a1 + 32) _mapAllJobsToIDs];
  v9 = MEMORY[0x1E695DFA8];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  [v11 minusSet:v12];

  v13 = objc_opt_new();
  v14 = [*(*(a1 + 32) + 24) mutableCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v8 objectForKey:{*(*(&v27 + 1) + 8 * v19), v27}];
        if (v20)
        {
          [v14 removeObject:v20];
          [*(*(a1 + 32) + 64) removeObject:v20];
          [v13 addObject:v20];
          [v20 setPhase:4];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = [v14 copy];
  v22 = *(a1 + 32);
  v23 = *(v22 + 24);
  *(v22 + 24) = v21;

  v24 = *(a1 + 32);
  v25 = [v13 copy];
  [(ASDJobManager *)v24 _sendJobsCompleted:v25];

  v26 = *MEMORY[0x1E69E9840];
}

@end