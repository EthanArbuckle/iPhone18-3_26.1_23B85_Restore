@interface AVTStickerTaskScheduler
+ (AVTStickerTaskScheduler)schedulerWithRecordDataSource:(id)a3;
- (AVTStickerTaskScheduler)initWithEnvironment:(id)a3 recordDataSource:(id)a4;
- (id)nextPickerThumbnailFromTasksBacklogStorage:(id)a3 allAvatarRecordIdentifiers:(id)a4;
- (id)nextPickerThumbnailFromTasksStorage:(id)a3 allAvatarRecordIdentifiers:(id)a4;
- (id)nextSelectedSheetStickerFromTasksStorage:(id)a3 selectedAvatarRecordIdentifier:(id)a4;
- (id)nextSheetPlaceHolderFromTasksStorage:(id)a3 allAvatarRecordIdentifiers:(id)a4;
- (id)nextSheetStickerFromTasksStorage:(id)a3 allAvatarRecordIdentifiers:(id)a4;
- (id)nextTaskToRunFromStickerPickerTasks:(id)a3 stickerPickerBacklogStorage:(id)a4 stickerSheetPlaceholderTasks:(id)a5 stickerSheetsTasks:(id)a6;
- (id)nextVisibleSelectedSheetStickerFromTasksStorage:(id)a3 selectedAvatarRecordIdentifier:(id)a4 visibleIndexPaths:(id)a5;
- (id)selectedPickerThumbnailFromTasksStorage:(id)a3 selectedAvatarRecordIdentifier:(id)a4;
- (id)selectedSheetPlaceholderFromTasksStorage:(id)a3 selectedAvatarRecordIdentifier:(id)a4;
- (void)cancelAllTasks;
- (void)cancelPickerTask:(id)a3 avatarRecordIdentifier:(id)a4;
- (void)cancelStickerSheetTasksForAvatarRecordIdentifier:(id)a3;
- (void)didCompleteTask:(id)a3;
- (void)lowerStickerPickerTaskPriority:(id)a3 avatarRecordIdentifier:(id)a4;
- (void)performStateWork:(id)a3;
- (void)reloadData;
- (void)scheduleStickerTask:(id)a3;
- (void)setVisibleIndexPaths:(id)a3;
- (void)startTask:(id)a3;
@end

@implementation AVTStickerTaskScheduler

+ (AVTStickerTaskScheduler)schedulerWithRecordDataSource:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[AVTUIEnvironment defaultEnvironment];
  v6 = [v4 initWithEnvironment:v5 recordDataSource:v3];

  return v6;
}

- (AVTStickerTaskScheduler)initWithEnvironment:(id)a3 recordDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = AVTStickerTaskScheduler;
  v8 = [(AVTStickerTaskScheduler *)&v23 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    stickerPickerTasks = v8->_stickerPickerTasks;
    v8->_stickerPickerTasks = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    stickerPickerBacklogTasks = v8->_stickerPickerBacklogTasks;
    v8->_stickerPickerBacklogTasks = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    stickerSheetPlaceholderTasks = v8->_stickerSheetPlaceholderTasks;
    v8->_stickerSheetPlaceholderTasks = v13;

    v15 = [MEMORY[0x1E695DF90] dictionary];
    stickerSheetsTasks = v8->_stickerSheetsTasks;
    v8->_stickerSheetsTasks = v15;

    v17 = [v6 lockProvider];
    v18 = (v17)[2](v17, "com.apple.AvatarUI.AVTStickerScheduler.stateLock");
    stateLock = v8->_stateLock;
    v8->_stateLock = v18;

    v20 = [v6 logger];
    logger = v8->_logger;
    v8->_logger = v20;

    objc_storeStrong(&v8->_recordDataSource, a4);
    [(AVTStickerTaskScheduler *)v8 reloadData];
  }

  return v8;
}

- (void)performStateWork:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerTaskScheduler *)self stateLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AVTStickerTaskScheduler_performStateWork___block_invoke;
  v7[3] = &unk_1E7F3A8A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __44__AVTStickerTaskScheduler_performStateWork___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) stickerPickerTasks];
  v3 = [*(a1 + 32) stickerPickerBacklogTasks];
  v4 = [*(a1 + 32) stickerSheetPlaceholderTasks];
  v5 = [*(a1 + 32) stickerSheetsTasks];
  (*(v2 + 16))(v2, v6, v3, v4, v5);
}

- (void)scheduleStickerTask:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AVTStickerTaskScheduler_scheduleStickerTask___block_invoke;
  v8[3] = &unk_1E7F3CA88;
  v5 = v4;
  v10 = self;
  v11 = &v12;
  v9 = v5;
  [(AVTStickerTaskScheduler *)self performStateWork:v8];
  if (*(v13 + 24) == 1)
  {
    v6 = [(AVTStickerTaskScheduler *)self logger];
    v7 = [v5 description];
    [v6 logStickerSchedulerStartedTask:v7 forSchedulerRule:@"first task to run"];

    [(AVTStickerTaskScheduler *)self startTask:v5];
  }

  _Block_object_dispose(&v12, 8);
}

void __47__AVTStickerTaskScheduler_scheduleStickerTask___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) avatarRecordIdentifier];
  v14 = [*(a1 + 32) stickerType];
  switch(v14)
  {
    case 2:
      v17 = [v12 objectForKeyedSubscript:v13];
      if (!v17)
      {
        v17 = [MEMORY[0x1E695DF70] array];
        [v12 setObject:v17 forKeyedSubscript:v13];
      }

      [v17 addObject:*(a1 + 32)];

      break;
    case 1:
      v15 = *(a1 + 32);
      v16 = v11;
      goto LABEL_6;
    case 0:
      v15 = *(a1 + 32);
      v16 = v9;
LABEL_6:
      [v16 setObject:v15 forKeyedSubscript:v13];
      break;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v18 = [v9 count];
  v25 = [v11 count] + v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __47__AVTStickerTaskScheduler_scheduleStickerTask___block_invoke_2;
  v21[3] = &unk_1E7F3CA60;
  v21[4] = &v22;
  [v12 enumerateKeysAndObjectsUsingBlock:v21];
  *(*(*(a1 + 48) + 8) + 24) = v23[3] == 1;
  v19 = [*(a1 + 40) logger];
  v20 = [*(a1 + 32) description];
  [v19 logStickerSchedulerAddedTask:v20 taskCount:v23[3]];

  _Block_object_dispose(&v22, 8);
}

uint64_t __47__AVTStickerTaskScheduler_scheduleStickerTask___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) = result + v4;
  return result;
}

- (void)lowerStickerPickerTaskPriority:(id)a3 avatarRecordIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__AVTStickerTaskScheduler_lowerStickerPickerTaskPriority_avatarRecordIdentifier___block_invoke;
  v10[3] = &unk_1E7F3CAB0;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(AVTStickerTaskScheduler *)self performStateWork:v10];
}

void __81__AVTStickerTaskScheduler_lowerStickerPickerTaskPriority_avatarRecordIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 objectForKeyedSubscript:*(a1 + 32)];
  v7 = [v6 task];
  v8 = *(a1 + 40);

  if (v7 == v8)
  {
    [v9 removeObjectForKey:*(a1 + 32)];
    [v5 setObject:v6 forKeyedSubscript:*(a1 + 32)];
  }
}

- (void)startTask:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 task];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__AVTStickerTaskScheduler_startTask___block_invoke;
  v7[3] = &unk_1E7F3A990;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  (v5)[2](v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __37__AVTStickerTaskScheduler_startTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didCompleteTask:*(a1 + 32)];
}

- (void)didCompleteTask:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__15;
  v14 = __Block_byref_object_dispose__15;
  v15 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVTStickerTaskScheduler_didCompleteTask___block_invoke;
  v6[3] = &unk_1E7F3CA88;
  v5 = v4;
  v8 = self;
  v9 = &v10;
  v7 = v5;
  [(AVTStickerTaskScheduler *)self performStateWork:v6];
  if (v11[5])
  {
    [(AVTStickerTaskScheduler *)self startTask:?];
  }

  _Block_object_dispose(&v10, 8);
}

void __43__AVTStickerTaskScheduler_didCompleteTask___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) avatarRecordIdentifier];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __43__AVTStickerTaskScheduler_didCompleteTask___block_invoke_2;
  v25 = &unk_1E7F3CAD8;
  v14 = v13;
  v26 = v14;
  v27 = *(a1 + 32);
  v15 = MEMORY[0x1BFB0DE80](&v22);
  v16 = [*(a1 + 32) stickerType];
  switch(v16)
  {
    case 2:
      v17 = [v12 objectForKeyedSubscript:v14];
      v18 = [v17 indexOfObject:*(a1 + 32)];
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v17 removeObjectAtIndex:v18];
      }

      break;
    case 1:
      (v15)[2](v15, v11);
      break;
    case 0:
      (v15)[2](v15, v9);
      (v15)[2](v15, v10);
      break;
  }

  v19 = [*(a1 + 40) nextTaskToRunFromStickerPickerTasks:v9 stickerPickerBacklogStorage:v10 stickerSheetPlaceholderTasks:v11 stickerSheetsTasks:v12];
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

void __43__AVTStickerTaskScheduler_didCompleteTask___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:*(a1 + 32)];
  if (v3 == *(a1 + 40))
  {
    [v4 removeObjectForKey:*(a1 + 32)];
  }
}

- (void)cancelPickerTask:(id)a3 avatarRecordIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__AVTStickerTaskScheduler_cancelPickerTask_avatarRecordIdentifier___block_invoke;
  v10[3] = &unk_1E7F3CB00;
  v12 = self;
  v13 = v6;
  v11 = v7;
  v8 = v6;
  v9 = v7;
  [(AVTStickerTaskScheduler *)self performStateWork:v10];
}

void __67__AVTStickerTaskScheduler_cancelPickerTask_avatarRecordIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [v17 count];
  if (v6 + [v5 count])
  {
    v7 = [v17 objectForKeyedSubscript:*(a1 + 32)];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 task];
      v10 = *(a1 + 48);

      if (v9 == v10)
      {
        v11 = *(a1 + 32);
        v12 = v17;
LABEL_7:
        [v12 removeObjectForKey:v11];
        v15 = [*(a1 + 40) logger];
        v16 = [v8 description];
        [v15 logStickerSchedulerCancelledTask:v16];
      }
    }

    else
    {
      v8 = [v5 objectForKeyedSubscript:*(a1 + 32)];
      v13 = [v8 task];
      v14 = *(a1 + 48);

      if (v13 == v14)
      {
        v11 = *(a1 + 32);
        v12 = v5;
        goto LABEL_7;
      }
    }
  }
}

- (void)cancelStickerSheetTasksForAvatarRecordIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__AVTStickerTaskScheduler_cancelStickerSheetTasksForAvatarRecordIdentifier___block_invoke;
  v6[3] = &unk_1E7F3CB28;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(AVTStickerTaskScheduler *)self performStateWork:v6];
}

void __76__AVTStickerTaskScheduler_cancelStickerSheetTasksForAvatarRecordIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  [v6 removeObjectForKey:*(a1 + 32)];
  v8 = [*(a1 + 40) logger];
  [v8 logStickerSchedulerCancelledStickerSheetTasksForIdentifier:*(a1 + 32)];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [*(a1 + 40) logger];
        v16 = [v14 description];
        [v15 logStickerSchedulerCancelledTask:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)cancelAllTasks
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__AVTStickerTaskScheduler_cancelAllTasks__block_invoke;
  v2[3] = &unk_1E7F3CB50;
  v2[4] = self;
  [(AVTStickerTaskScheduler *)self performStateWork:v2];
}

void __41__AVTStickerTaskScheduler_cancelAllTasks__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [a2 removeAllObjects];
  [v11 removeAllObjects];

  [v10 removeAllObjects];
  [v9 removeAllObjects];

  v12 = [*(a1 + 32) logger];
  [v12 logStickerSchedulerCancelledAllTasks];
}

- (void)reloadData
{
  v12 = [MEMORY[0x1E695DF70] array];
  v3 = [(AVTStickerTaskScheduler *)self recordDataSource];
  objc_sync_enter(v3);
  v4 = [(AVTStickerTaskScheduler *)self recordDataSource];
  v5 = [v4 numberOfRecords];

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [(AVTStickerTaskScheduler *)self recordDataSource];
      v8 = [v7 recordAtIndex:i];

      v9 = [v8 identifier];
      [v12 addObject:v9];
    }
  }

  objc_sync_exit(v3);

  v10 = [(AVTStickerTaskScheduler *)self allAvatarRecordIdentifiers];
  objc_sync_enter(v10);
  v11 = [v12 copy];
  [(AVTStickerTaskScheduler *)self setAllAvatarRecordIdentifiers:v11];

  objc_sync_exit(v10);
}

- (void)setVisibleIndexPaths:(id)a3
{
  v4 = [a3 sortedArrayUsingComparator:&__block_literal_global_22];
  [(AVTStickerTaskScheduler *)self setSortedVisibleIndexPaths:v4];
}

- (id)nextTaskToRunFromStickerPickerTasks:(id)a3 stickerPickerBacklogStorage:(id)a4 stickerSheetPlaceholderTasks:(id)a5 stickerSheetsTasks:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(AVTStickerTaskScheduler *)self selectedAvatarRecordIdentifier];
  v15 = [v14 copy];

  v16 = [(AVTStickerTaskScheduler *)self allAvatarRecordIdentifiers];
  v17 = [v16 copy];

  v18 = [(AVTStickerTaskScheduler *)self sortedVisibleIndexPaths];
  v19 = [v18 copy];

  v20 = [(AVTStickerTaskScheduler *)self selectedPickerThumbnailFromTasksStorage:v10 selectedAvatarRecordIdentifier:v15];
  if (!v20)
  {
    v20 = [(AVTStickerTaskScheduler *)self selectedSheetPlaceholderFromTasksStorage:v12 selectedAvatarRecordIdentifier:v15];
    if (!v20)
    {
      v20 = [(AVTStickerTaskScheduler *)self nextVisibleSelectedSheetStickerFromTasksStorage:v13 selectedAvatarRecordIdentifier:v15 visibleIndexPaths:v19];
      if (!v20)
      {
        v20 = [(AVTStickerTaskScheduler *)self nextPickerThumbnailFromTasksStorage:v10 allAvatarRecordIdentifiers:v17];
        if (!v20)
        {
          v20 = [(AVTStickerTaskScheduler *)self nextSelectedSheetStickerFromTasksStorage:v13 selectedAvatarRecordIdentifier:v15];
          if (!v20)
          {
            v20 = [(AVTStickerTaskScheduler *)self nextPickerThumbnailFromTasksBacklogStorage:v11 allAvatarRecordIdentifiers:v17];
            if (!v20)
            {
              v20 = [(AVTStickerTaskScheduler *)self nextSheetPlaceHolderFromTasksStorage:v12 allAvatarRecordIdentifiers:v17];
              if (!v20)
              {
                v20 = [(AVTStickerTaskScheduler *)self nextSheetStickerFromTasksStorage:v13 allAvatarRecordIdentifiers:v17];
              }
            }
          }
        }
      }
    }
  }

  v21 = v20;

  return v21;
}

- (id)nextPickerThumbnailFromTasksStorage:(id)a3 allAvatarRecordIdentifiers:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v6 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v18}];
          if (v13)
          {
            v14 = v13;
            v15 = [(AVTStickerTaskScheduler *)self logger];
            v16 = [v14 description];
            [v15 logStickerSchedulerStartedTask:v16 forSchedulerRule:@"next picker thumbnail"];

            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)nextPickerThumbnailFromTasksBacklogStorage:(id)a3 allAvatarRecordIdentifiers:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v6 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v18}];
          if (v13)
          {
            v14 = v13;
            v15 = [(AVTStickerTaskScheduler *)self logger];
            v16 = [v14 description];
            [v15 logStickerSchedulerStartedTask:v16 forSchedulerRule:@"next picker thumbnail"];

            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)selectedPickerThumbnailFromTasksStorage:(id)a3 selectedAvatarRecordIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 objectForKeyedSubscript:v7];
    if (v8)
    {
      v9 = [(AVTStickerTaskScheduler *)self logger];
      v10 = [v8 description];
      [v9 logStickerSchedulerStartedTask:v10 forSchedulerRule:@"selected picker thumbnail"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)selectedSheetPlaceholderFromTasksStorage:(id)a3 selectedAvatarRecordIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 objectForKeyedSubscript:v7];
    if (v8)
    {
      v9 = [(AVTStickerTaskScheduler *)self logger];
      v10 = [v8 description];
      [v9 logStickerSchedulerStartedTask:v10 forSchedulerRule:@"selected sheet placeholder"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)nextVisibleSelectedSheetStickerFromTasksStorage:(id)a3 selectedAvatarRecordIdentifier:(id)a4 visibleIndexPaths:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] && objc_msgSend(v10, "count"))
  {
    v11 = [v8 objectForKeyedSubscript:v9];
    if ([v11 count])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v12 = v10;
      v30 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v30)
      {
        v29 = self;
        v13 = *v40;
        v33 = v11;
        v34 = v9;
        v32 = v12;
        v28 = *v40;
        do
        {
          v14 = 0;
          do
          {
            if (*v40 != v13)
            {
              objc_enumerationMutation(v12);
            }

            v31 = v14;
            v15 = *(*(&v39 + 1) + 8 * v14);
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v16 = v11;
            v17 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v36;
              while (2)
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v36 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v35 + 1) + 8 * i);
                  v22 = [v21 indexPath];
                  v23 = [v22 isEqual:v15];

                  if (v23)
                  {
                    v25 = [(AVTStickerTaskScheduler *)v29 logger];
                    v26 = [v21 description];
                    [v25 logStickerSchedulerStartedTask:v26 forSchedulerRule:@"next visible selected sheet sticker"];

                    v24 = v21;
                    v11 = v33;
                    v9 = v34;
                    v12 = v32;
                    goto LABEL_24;
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

            v14 = v31 + 1;
            v11 = v33;
            v9 = v34;
            v12 = v32;
            v13 = v28;
          }

          while (v31 + 1 != v30);
          v24 = 0;
          v30 = [v32 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v30);
      }

      else
      {
        v24 = 0;
      }

LABEL_24:
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)nextSelectedSheetStickerFromTasksStorage:(id)a3 selectedAvatarRecordIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 objectForKeyedSubscript:v7];
    if ([v8 count])
    {
      v9 = [v8 firstObject];
      if (v9)
      {
        v10 = [(AVTStickerTaskScheduler *)self logger];
        v11 = [v9 description];
        [v10 logStickerSchedulerStartedTask:v11 forSchedulerRule:@"next selected sheet sticker"];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)nextSheetPlaceHolderFromTasksStorage:(id)a3 allAvatarRecordIdentifiers:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v6 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v18}];
          if (v13)
          {
            v14 = v13;
            v15 = [(AVTStickerTaskScheduler *)self logger];
            v16 = [v14 description];
            [v15 logStickerSchedulerStartedTask:v16 forSchedulerRule:@"next sheet placeholder"];

            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)nextSheetStickerFromTasksStorage:(id)a3 allAvatarRecordIdentifiers:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v6 objectForKeyedSubscript:{*(*(&v19 + 1) + 8 * i), v19}];
          if ([v13 count])
          {
            v14 = [v13 firstObject];
            if (v14)
            {
              v15 = v14;
              v16 = [(AVTStickerTaskScheduler *)self logger];
              v17 = [v15 description];
              [v16 logStickerSchedulerStartedTask:v17 forSchedulerRule:@"next sheet sticker"];

              goto LABEL_14;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end