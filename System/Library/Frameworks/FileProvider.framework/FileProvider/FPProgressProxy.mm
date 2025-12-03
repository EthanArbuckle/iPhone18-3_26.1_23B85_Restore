@interface FPProgressProxy
- (id)shortDescription;
- (void)_readPausedProgressFromDisk;
- (void)dealloc;
- (void)setCancellationHandler:(id)handler;
- (void)setProgressDidSetupHandler:(id)handler;
- (void)startTrackingFileURL:(id)l kind:(id)kind allowReadPausedProgressFromDisk:(BOOL)disk;
- (void)stopTrackingIfStarted;
- (void)stopTrackingIfStartedNotSynchronized;
- (void)updateWithProgress:(id)progress;
@end

@implementation FPProgressProxy

- (void)dealloc
{
  if (self->_subscriber)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(FPProgressProxy *)v3 dealloc];
    }

    [(FPProgressProxy *)self stopTrackingIfStartedNotSynchronized];
  }

  v4.receiver = self;
  v4.super_class = FPProgressProxy;
  [(FPProgressProxy *)&v4 dealloc];
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p>", v5, self];

  return v6;
}

- (void)updateWithProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  -[FPProgressProxy setPausable:](selfCopy, "setPausable:", [progressCopy isPausable]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __38__FPProgressProxy_updateWithProgress___block_invoke;
  v23[3] = &unk_1E79399B0;
  v6 = progressCopy;
  v24 = v6;
  [(FPProgressProxy *)selfCopy setPausingHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __38__FPProgressProxy_updateWithProgress___block_invoke_2;
  v21[3] = &unk_1E79399B0;
  v7 = v6;
  v22 = v7;
  [(FPProgressProxy *)selfCopy setResumingHandler:v21];
  -[FPProgressProxy setCancellable:](selfCopy, "setCancellable:", [v7 isCancellable]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__FPProgressProxy_updateWithProgress___block_invoke_3;
  v19[3] = &unk_1E79399B0;
  v8 = v7;
  v20 = v8;
  [(FPProgressProxy *)selfCopy setCancellationHandler:v19];
  if ([(FPProgressProxy *)selfCopy updateFileCount])
  {
    fileTotalCount = [v8 fileTotalCount];
    [(FPProgressProxy *)selfCopy setFileTotalCount:fileTotalCount];

    fileCompletedCount = [v8 fileCompletedCount];
    [(FPProgressProxy *)selfCopy setFileCompletedCount:fileCompletedCount];
  }

  [v8 fractionCompleted];
  v12 = v11;
  -[FPProgressProxy _setCompletedUnitCount:totalUnitCount:](selfCopy, "_setCompletedUnitCount:totalUnitCount:", (v11 * [v8 totalUnitCount]), objc_msgSend(v8, "totalUnitCount"));
  userInfo = [v8 userInfo];
  v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A7F0]];
  [(FPProgressProxy *)selfCopy setByteTotalCount:v14];

  byteTotalCount = [(FPProgressProxy *)selfCopy byteTotalCount];

  if (byteTotalCount)
  {
    v16 = MEMORY[0x1E696AD98];
    byteTotalCount2 = [(FPProgressProxy *)selfCopy byteTotalCount];
    v18 = [v16 numberWithDouble:{v12 * objc_msgSend(byteTotalCount2, "longLongValue")}];
    [(FPProgressProxy *)selfCopy setByteCompletedCount:v18];
  }

  else
  {
    [(FPProgressProxy *)selfCopy setByteCompletedCount:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)setCancellationHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(FPProgressProxy *)self valueForKey:@"_lock"];
  [v6 lock];
  v5 = _Block_copy(handlerCopy);

  [(FPProgressProxy *)self setValue:v5 forKey:@"_cancellationHandler"];
  [v6 unlock];
}

- (void)_readPausedProgressFromDisk
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138412546;
  selfCopy = self;
  v7 = 2048;
  v8 = a4;
  OUTLINED_FUNCTION_2_6(&dword_1AAAE1000, a2, a3, "[DEBUG] %@: reading paused progress from disk: %g", &v5);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)startTrackingFileURL:(id)l kind:(id)kind allowReadPausedProgressFromDisk:(BOOL)disk
{
  diskCopy = disk;
  location[4] = *MEMORY[0x1E69E9840];
  lCopy = l;
  kindCopy = kind;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke;
  aBlock[3] = &unk_1E793B9D0;
  objc_copyWeak(&v28, location);
  v22 = kindCopy;
  v25 = v22;
  v12 = lCopy;
  v29 = diskCopy;
  v26 = v12;
  selfCopy = self;
  v23 = _Block_copy(aBlock);
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  selfCopy2->_isInSetup = 1;
  if (selfCopy2->_subscriber)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    shortDescription = [(FPProgressProxy *)selfCopy2 shortDescription];
    [currentHandler handleFailureInMethod:a2 object:selfCopy2 file:@"FPProgressProxy.m" lineNumber:192 description:{@"%@: startTracking/stopTracking not properly balanced", shortDescription, v22}];

    if (selfCopy2->_subscriber)
    {
      [(FPProgressProxy *)selfCopy2 stopTrackingIfStarted];
    }
  }

  if (selfCopy2->_fileURL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    shortDescription2 = [(FPProgressProxy *)selfCopy2 shortDescription];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy2 file:@"FPProgressProxy.m" lineNumber:197 description:{@"%@: startTracking/stopTracking not properly balanced", shortDescription2}];
  }

  selfCopy2->_shouldStopAccessingURL = [v12 startAccessingSecurityScopedResource];
  objc_storeStrong(&selfCopy2->_fileURL, l);
  [(FPProgressProxy *)selfCopy2 setTotalUnitCount:-1];
  [(FPProgressProxy *)selfCopy2 setCancellable:0];
  if (diskCopy)
  {
    [(FPProgressProxy *)selfCopy2 _readPausedProgressFromDisk];
  }

  v18 = fp_current_or_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(FPProgressProxy *)selfCopy2 shortDescription];
    objc_claimAutoreleasedReturnValue();
    [v12 fp_shortDescription];
    objc_claimAutoreleasedReturnValue();
    [FPProgressProxy startTrackingFileURL:kind:allowReadPausedProgressFromDisk:];
  }

  v19 = [MEMORY[0x1E696AE38] _addSubscriberForFileURL:v12 withPublishingHandler:v23];
  subscriber = selfCopy2->_subscriber;
  selfCopy2->_subscriber = v19;

  selfCopy2->_isInSetup = 0;
  objc_sync_exit(selfCopy2);

  objc_destroyWeak(&v28);
  objc_destroyWeak(location);

  v21 = *MEMORY[0x1E69E9840];
}

id __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([v3 fp_isOfFileOperationKind:*(a1 + 32) strict:0])
    {
      v5 = [v3 fileURL];
      v6 = [v5 fp_relationshipToItemAtURL:*(a1 + 40)];

      if (v6 == 1)
      {
        v7 = WeakRetained;
        objc_sync_enter(v7);
        if (v7[19])
        {
          v8 = fp_current_or_default_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v21 = [v7 shortDescription];
            v22 = [*(a1 + 40) fp_shortDescription];
            *buf = 138412802;
            v33 = v21;
            v34 = 2112;
            v35 = v22;
            v36 = 2112;
            v37 = v3;
            _os_log_debug_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: replace observer for %@, newProgress %@", buf, 0x20u);
          }

          [v7[19] finishObserving];
          v9 = v7[19];
          v7[19] = 0;
        }

        else
        {
          v9 = fp_current_or_default_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v7 shortDescription];
            v24 = [*(a1 + 40) fp_shortDescription];
            *buf = 138412802;
            v33 = v23;
            v34 = 2112;
            v35 = v24;
            v36 = 2112;
            v37 = v3;
            _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: add observer to %@, newProgress %@", buf, 0x20u);
          }
        }

        [v7 updateWithProgress:v3];
        v13 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:v3 path:"fractionCompleted"];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke_18;
        v29[3] = &unk_1E793B980;
        objc_copyWeak(&v31, (a1 + 56));
        v30 = v3;
        v14 = [v13 addObserverBlock:v29];
        v15 = v7[19];
        v7[19] = v14;

        objc_destroyWeak(&v31);
        objc_sync_exit(v7);

        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke_2_20;
        v25[3] = &unk_1E793B9A8;
        v25[4] = v7;
        v16 = *(a1 + 40);
        v28 = *(a1 + 64);
        v17 = *(a1 + 48);
        v26 = v16;
        v27 = v17;
        v18 = _Block_copy(v25);
        v10 = _Block_copy(v18);
      }

      else
      {
        v12 = fp_current_or_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke_cold_2(WeakRetained, v3, v12);
        }

        v10 = &__block_literal_global_15_0;
      }
    }

    else
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke_cold_1(WeakRetained, v3, v11);
      }

      v10 = &__block_literal_global_12_0;
    }
  }

  else
  {
    v10 = &__block_literal_global_18;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

void __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateWithProgress:*(a1 + 32)];
}

void __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke_2_20(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if (*(*(a1 + 32) + 152))
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 32) shortDescription];
      objc_claimAutoreleasedReturnValue();
      [*(a1 + 40) fp_shortDescription];
      objc_claimAutoreleasedReturnValue();
      __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke_2_20_cold_1();
    }

    [*(*(a1 + 32) + 152) finishObserving];
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = 0;
  }

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 48) _readPausedProgressFromDisk];
  }

  objc_sync_exit(v2);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)stopTrackingIfStarted
{
  obj = self;
  objc_sync_enter(obj);
  [(FPProgressProxy *)obj stopTrackingIfStartedNotSynchronized];
  objc_sync_exit(obj);
}

- (void)stopTrackingIfStartedNotSynchronized
{
  if (self->_subscriber)
  {
    [MEMORY[0x1E696AE38] _removeSubscriber:?];
    subscriber = self->_subscriber;
    self->_subscriber = 0;
  }

  if (self->_shouldStopAccessingURL)
  {
    [(NSURL *)self->_fileURL stopAccessingSecurityScopedResource];
  }

  totalUnitCountObservation = self->_totalUnitCountObservation;
  if (totalUnitCountObservation)
  {
    [(NSObservation *)totalUnitCountObservation finishObserving];
    v5 = self->_totalUnitCountObservation;
    self->_totalUnitCountObservation = 0;
  }

  fractionCompletedObservation = self->_fractionCompletedObservation;
  if (fractionCompletedObservation)
  {
    [(NSObservation *)fractionCompletedObservation finishObserving];
    v7 = self->_fractionCompletedObservation;
    self->_fractionCompletedObservation = 0;
  }

  fileURL = self->_fileURL;
  self->_fileURL = 0;
}

- (void)setProgressDidSetupHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  totalUnitCountObservation = selfCopy->_totalUnitCountObservation;
  if (totalUnitCountObservation)
  {
    [(NSObservation *)totalUnitCountObservation finishObserving];
    v7 = selfCopy->_totalUnitCountObservation;
    selfCopy->_totalUnitCountObservation = 0;
  }

  objc_initWeak(&location, selfCopy);
  v8 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:selfCopy path:"totalUnitCount"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__FPProgressProxy_setProgressDidSetupHandler___block_invoke;
  v12[3] = &unk_1E793B9F8;
  objc_copyWeak(&v14, &location);
  v9 = handlerCopy;
  v13 = v9;
  v10 = [v8 addObserverBlock:v12];
  v11 = selfCopy->_totalUnitCountObservation;
  selfCopy->_totalUnitCountObservation = v10;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  objc_sync_exit(selfCopy);
}

void __46__FPProgressProxy_setProgressDidSetupHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    if ((v6[20] & 1) == 0 && [v6 totalUnitCount] >= 1)
    {
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __46__FPProgressProxy_setProgressDidSetupHandler___block_invoke_cold_1(v6, v7);
      }

      *(v6 + 160) = 1;
      v8 = *(v6 + 161);
      (*(*(a1 + 32) + 16))();
      [v6[18] finishObserving];
      v9 = v6[18];
      v6[18] = 0;
    }

    objc_sync_exit(v6);
  }
}

- (void)startTrackingFileURL:kind:allowReadPausedProgressFromDisk:.cold.1()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_9_0(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_2_6(&dword_1AAAE1000, v7, v5, "[DEBUG] %@: Trying to listen to %@", v6);
}

void __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 shortDescription];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  OUTLINED_FUNCTION_2_6(&dword_1AAAE1000, a3, v6, "[DEBUG] %@: ignoring published progress of a different kind %@", &v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke_cold_2(void *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [a1 shortDescription];
  v6 = [a2 fileURL];
  v7 = [v6 fp_shortDescription];
  v9 = 138412802;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: ignoring published progress of a different URL (%@) %@", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __77__FPProgressProxy_startTrackingFileURL_kind_allowReadPausedProgressFromDisk___block_invoke_2_20_cold_1()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_9_0(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_2_6(&dword_1AAAE1000, v7, v5, "[DEBUG] %@: remove observer for %@", v6);
}

void __46__FPProgressProxy_setProgressDidSetupHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] FPProgressProxy: calling parent setup handler for: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end