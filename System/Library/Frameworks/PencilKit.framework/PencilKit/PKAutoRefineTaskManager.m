@interface PKAutoRefineTaskManager
- (BOOL)isTrackingQueryItemIdenticalToQueryItem:(void *)a1;
- (PKAutoRefineTaskManager)init;
- (void)autoRefineTask:(id)a3 isReadyToSynthesizeRefinedDrawingForStrokes:(id)a4 transcription:(id)a5 drawingUUID:(id)a6;
- (void)cancelAllTasks;
- (void)cancelTasksGivenQueryItem:(void *)a1;
- (void)cancelTasksGivenRefinableStroke:(void *)a1;
- (void)dealloc;
- (void)hasOngoingAnimationTask;
- (void)scheduleAutoRefineTaskForItem:(uint64_t)a3 firstColumnToCommit:(uint64_t)a4 lastColumnToCommit:(void *)a5 providerVersion:(void *)a6 delay:(double)a7 taskInitBlock:;
- (void)setCurrentDrawingUUID:(uint64_t)a1;
@end

@implementation PKAutoRefineTaskManager

- (PKAutoRefineTaskManager)init
{
  v11.receiver = self;
  v11.super_class = PKAutoRefineTaskManager;
  v2 = [(PKAutoRefineTaskManager *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
    tasksQueue = v2->_tasksQueue;
    v2->_tasksQueue = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.PencilKit.AutoRefineTaskManager", v5);
    autoRefineQueue = v2->_autoRefineQueue;
    v2->_autoRefineQueue = v6;
  }

  v8 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEBUG, "AutoRefine taskManager created", v10, 2u);
  }

  return v2;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    activeTask = self->_activeTask;
    v6 = [(NSMutableArray *)self->_tasksQueue count];
    *buf = 67109376;
    v9 = activeTask != 0;
    v10 = 2048;
    v11 = v6;
    _os_log_debug_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEBUG, "AutoRefine taskManager destroyed, had active task ? %d, %ld tasks", buf, 0x12u);
  }

  v4 = self->_activeTask;
  self->_activeTask = 0;

  [(NSMutableArray *)self->_tasksQueue removeAllObjects];
  v7.receiver = self;
  v7.super_class = PKAutoRefineTaskManager;
  [(PKAutoRefineTaskManager *)&v7 dealloc];
}

- (void)scheduleAutoRefineTaskForItem:(uint64_t)a3 firstColumnToCommit:(uint64_t)a4 lastColumnToCommit:(void *)a5 providerVersion:(void *)a6 delay:(double)a7 taskInitBlock:
{
  v88 = *MEMORY[0x1E69E9840];
  v60 = a2;
  v59 = a5;
  v58 = a6;
  if (a1)
  {
    v13 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v42 = v60;
      if (v60)
      {
        v42 = v60[10];
      }

      v43 = v42;
      v44 = [v43 refinableTranscription];
      v45 = *(a1 + 16);
      v46 = [*(a1 + 24) count];
      *buf = 138740483;
      v79 = v44;
      v80 = 1024;
      *v81 = v45 != 0;
      *&v81[4] = 2048;
      *&v81[6] = v46;
      _os_log_debug_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEBUG, "AutoRefine taskManager creating a new task for transcription %{sensitive}@, has active task ? %d, %ld tasks", buf, 0x1Cu);
    }

    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__140;
    v68 = __Block_byref_object_dispose__141;
    v14 = [PKAutoRefineTask alloc];
    v56 = v60;
    v57 = v59;
    if (v14)
    {
      v77.receiver = v14;
      v77.super_class = PKAutoRefineTask;
      v15 = objc_msgSendSuper2(&v77, sel_init);
      v16 = v15;
      v17 = v15;
      if (v15)
      {
        *(v15 + 52) = 0;
        objc_storeStrong(v15 + 1, a2);
        *(v17 + 32) = a3;
        *(v17 + 40) = a4;
        *(v17 + 16) = a3;
        *(v17 + 24) = a4;
        v18 = v16[1];
        if (v18)
        {
          v18 = v18[10];
        }

        v19 = MEMORY[0x1E696AC90];
        v20 = v18;
        v21 = [v19 indexSetWithIndexesInRange:{0, objc_msgSend(v20, "tokenColumnCount")}];
        v54 = [v21 mutableCopy];

        v22 = [MEMORY[0x1E696AD50] indexSet];
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __93__PKAutoRefineTask_initWithQueryItem_firstColumnToCommit_lastColumnToCommit_providerVersion___block_invoke;
        v74[3] = &unk_1E82DB190;
        v23 = v17;
        v75 = v23;
        v24 = v22;
        v76 = v24;
        [v54 enumerateIndexesUsingBlock:v74];
        v25 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v50 = [v24 description];
          v51 = v16[1];
          v53 = v50;
          if (v51)
          {
            v51 = v51[14];
          }

          v52 = v51;
          *buf = 138412546;
          v79 = v53;
          v80 = 2112;
          *v81 = v52;
          _os_log_debug_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEBUG, "New AutoRefine task with nonRefinableColumns from stroke checks = %@, queryItem.refinableStrokes = %@", buf, 0x16u);
        }

        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __93__PKAutoRefineTask_initWithQueryItem_firstColumnToCommit_lastColumnToCommit_providerVersion___block_invoke_5;
        v72[3] = &unk_1E82DB1B8;
        v26 = v54;
        v73 = v26;
        [v24 enumerateRangesUsingBlock:v72];
        if ([v26 count])
        {
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __93__PKAutoRefineTask_initWithQueryItem_firstColumnToCommit_lastColumnToCommit_providerVersion___block_invoke_2_6;
          v70[3] = &unk_1E82DB1B8;
          v71 = v23;
          [v26 enumerateRangesUsingBlock:v70];
        }

        else
        {
          *(v17 + 32) = 0;
          *(v17 + 40) = 0;
          *(v17 + 104) = 1;
        }

        objc_storeStrong(v23 + 6, a5);
        v27 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v16[1];
          if (v28)
          {
            v28 = v28[10];
          }

          v29 = v28;
          v30 = [v29 topTranscription];
          v31 = *(v17 + 32);
          v32 = *(v17 + 40);
          v33 = *(v17 + 104) ^ 1;
          *buf = 134219523;
          v79 = v23;
          v80 = 2117;
          *v81 = v30;
          *&v81[8] = 2048;
          *&v81[10] = v31;
          *&v81[18] = 2048;
          *&v81[20] = v32;
          v82 = 2048;
          v83 = a3;
          v84 = 2048;
          v85 = a4;
          v86 = 1024;
          v87 = v33;
          _os_log_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_DEFAULT, "New AutoRefine task created %p with text transcription _%{sensitive}@_, columns to commit (%ld-%ld) from initial columns (%ld-%ld), task valid ? %d", buf, 0x44u);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v23[7] = v34;
      }

      [(PKAutoRefineTask *)v17 updateCommittableRange];
      v35 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(v17 + 72);
        *buf = 134218243;
        v79 = v17;
        v80 = 2117;
        *v81 = v36;
        _os_log_impl(&dword_1C7CCA000, v35, OS_LOG_TYPE_DEFAULT, "New AutoRefine task just created %p has committable transcription = _%{sensitive}@_", buf, 0x16u);
      }
    }

    else
    {
      v17 = 0;
    }

    v69 = v17;
    v37 = v65[5];
    if (v37)
    {
      objc_storeWeak((v37 + 112), a1);
    }

    v38 = a1;
    objc_sync_enter(v38);
    [*(v38 + 3) addObject:v65[5]];
    objc_sync_exit(v38);

    v39 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v47 = v65[5];
      v48 = *(v38 + 2);
      v49 = [*(v38 + 3) count];
      *buf = 134218752;
      v79 = v47;
      v80 = 2048;
      *v81 = a7;
      *&v81[8] = 1024;
      *&v81[10] = v48 != 0;
      *&v81[14] = 2048;
      *&v81[16] = v49;
      _os_log_debug_impl(&dword_1C7CCA000, v39, OS_LOG_TYPE_DEBUG, "AutoRefine taskManager scheduling task %p for execution with delay = %.2f, has active task ? %d, %ld tasks", buf, 0x26u);
    }

    v40 = dispatch_time(0, (a7 * 1000000000.0));
    v41 = *(v38 + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __132__PKAutoRefineTaskManager_scheduleAutoRefineTaskForItem_firstColumnToCommit_lastColumnToCommit_providerVersion_delay_taskInitBlock___block_invoke;
    block[3] = &unk_1E82DB280;
    v63 = &v64;
    block[4] = v38;
    v62 = v58;
    dispatch_after(v40, v41, block);

    _Block_object_dispose(&v64, 8);
  }
}

void __132__PKAutoRefineTaskManager_scheduleAutoRefineTaskForItem_firstColumnToCommit_lastColumnToCommit_providerVersion_delay_taskInitBlock___block_invoke(void *a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(*(a1[6] + 8) + 40);
    *v68 = 134217984;
    v69 = v31;
    _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p becomes current", v68, 0xCu);
  }

  v3 = *(*(a1[6] + 8) + 40);
  if (!v3 || (v3[104] & 1) != 0)
  {
    v4 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v37 = *(*(a1[6] + 8) + 40);
    *v68 = 134217984;
    v69 = v37;
    v14 = "AutoRefine Task %p stopped early";
LABEL_44:
    _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, v14, v68, 0xCu);
    goto LABEL_6;
  }

  v5 = a1[4];
  v6 = v3;
  if (v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    v8 = v7;
    objc_sync_enter(v8);
    v9 = [v8[3] indexesOfObjectsPassingTest:&__block_literal_global_68];
    [v8[3] removeObjectsAtIndexes:v9];

    objc_sync_exit(v8);
    objc_storeStrong(v8 + 2, v3);
    [v8[3] removeObject:v6];
    objc_sync_exit(v8);
  }

  v10 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(*(a1[6] + 8) + 40);
    v39 = a1[4];
    v40 = *(v39 + 16);
    v41 = [*(v39 + 24) count];
    *v68 = 134218496;
    v69 = v38;
    v70 = 2048;
    v71 = v40;
    v72 = 2048;
    v73 = v41;
    _os_log_debug_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p starts execution, active task %p, %ld tasks", v68, 0x20u);
  }

  (*(a1[5] + 16))();
  v11 = a1[4];
  v12 = *(v11 + 16);
  if (!v12)
  {
    v53 = *(v11 + 48);
    v16 = *(v11 + 40);
    v17 = v53;
    goto LABEL_40;
  }

  if (*(v12 + 104))
  {
    v4 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v13 = *(a1[4] + 16);
    *v68 = 134217984;
    v69 = v13;
    v14 = "AutoRefine Task %p canceled in its init block";
    goto LABEL_44;
  }

  v15 = *(v11 + 48);
  v16 = *(v11 + 40);
  v17 = v15;
  v18 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v12 + 32);
    v20 = *(v12 + 40);
    *buf = 134218496;
    v59 = v12;
    v60 = 2048;
    v61 = v19;
    v62 = 2048;
    v63 = v20;
    _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "AutoRefine Task %p running with fresh stroke provider, firstColumnToCommit = %ld, lastColumnToCommit = %ld", buf, 0x20u);
  }

  if (*(v12 + 104))
  {
    v21 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v59 = v12;
      _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "AutoRefine Task %p was canceled.", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v21 = v16;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v22 = *(v12 + 8);
  if (v22)
  {
    v22 = v22[12];
  }

  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v24)
  {
    v25 = *v55;
LABEL_24:
    v26 = 0;
    while (1)
    {
      if (*v55 != v25)
      {
        objc_enumerationMutation(v23);
      }

      if (([v21 isValidStrokeIdentifier:*(*(&v54 + 1) + 8 * v26), v54]& 1) == 0)
      {
        break;
      }

      if (v24 == ++v26)
      {
        v24 = [v23 countByEnumeratingWithState:&v54 objects:v68 count:16];
        if (v24)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }
    }

    WeakRetained = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    *buf = 134217984;
    v59 = v12;
    v30 = "AutoRefine Task %p skipped because the drawing has changed";
    goto LABEL_36;
  }

LABEL_30:

  v27 = *(v12 + 32);
  if (v27 <= 0x7FFFFFFFFFFFFFFELL && (v28 = *(v12 + 40), v28 >= v27))
  {
    v45 = v28 + 1;
    if ([*(v12 + 72) length] > 1)
    {
      goto LABEL_49;
    }

    v46 = *(v12 + 8);
    if (v46)
    {
      v46 = v46[10];
    }

    v47 = v46;
    v48 = v45 < [v47 tokenColumnCount];

    if (v48)
    {
LABEL_49:
      v49 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v51 = *(v12 + 72);
        v52 = [*(v12 + 80) count];
        *buf = 134219011;
        v59 = v12;
        v60 = 2048;
        v61 = v27;
        v62 = 2048;
        v63 = v45;
        v64 = 2117;
        v65 = v51;
        v66 = 2048;
        v67 = v52;
        _os_log_debug_impl(&dword_1C7CCA000, v49, OS_LOG_TYPE_DEBUG, "AutoRefine task %p triggered (cols: %ld -> %ld) for transcription = %{sensitive}@, strokes to replace: %ld", buf, 0x34u);
      }

      WeakRetained = objc_loadWeakRetained((v12 + 112));
      [WeakRetained autoRefineTask:v12 isReadyToSynthesizeRefinedDrawingForStrokes:*(v12 + 80) transcription:*(v12 + 72) drawingUUID:v17];
      goto LABEL_38;
    }

    WeakRetained = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(v12 + 72);
      *buf = 134218243;
      v59 = v12;
      v60 = 2117;
      v61 = v50;
      v30 = "AutoRefine Task %p skipped because uncertain commit for transcription = %{sensitive}@";
      v32 = WeakRetained;
      v33 = 22;
      goto LABEL_37;
    }
  }

  else
  {
    WeakRetained = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v59 = v12;
      v30 = "AutoRefine Task %p skipped because nothing to commit";
LABEL_36:
      v32 = WeakRetained;
      v33 = 12;
LABEL_37:
      _os_log_impl(&dword_1C7CCA000, v32, OS_LOG_TYPE_DEFAULT, v30, buf, v33);
    }
  }

LABEL_38:

LABEL_39:
LABEL_40:

  v34 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v42 = a1[4];
    v43 = *(v42 + 16);
    v44 = [*(v42 + 24) count];
    *v68 = 134218240;
    v69 = v43;
    v70 = 2048;
    v71 = v44;
    _os_log_debug_impl(&dword_1C7CCA000, v34, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p is done running, %ld tasks", v68, 0x16u);
  }

  v4 = *(a1[4] + 16);
  objc_sync_enter(v4);
  v35 = a1[4];
  v36 = *(v35 + 16);
  *(v35 + 16) = 0;

  objc_sync_exit(v4);
LABEL_6:
}

uint64_t __45__PKAutoRefineTaskManager_updatePendingTasks__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 104);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)cancelAllTasks
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Cancel all tasks", buf, 2u);
    }

    v3 = a1;
    objc_sync_enter(v3);
    [(PKAutoRefineTask *)*(v3 + 2) cancel];
    v4 = *(v3 + 2);
    *(v3 + 2) = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = *(v3 + 3);
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [(PKAutoRefineTask *)*(*(&v10 + 1) + 8 * v8++) cancel];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }

    [*(v3 + 3) removeAllObjects];
    v9 = +[PKHandwritingSynthesisLogger sharedHandwritingSynthesisLogger];
    [(PKHandwritingSynthesisLogger *)v9 clearAllEntries];

    objc_sync_exit(v3);
  }
}

- (BOOL)isTrackingQueryItemIdenticalToQueryItem:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = *(v4 + 2);
    if (v5 && (*(v5 + 104) & 1) != 0 || ([(PKAutoRefineTask *)v5 queryItemIsEqualToQueryItem:v3]& 1) == 0)
    {
      for (i = 0; ; ++i)
      {
        v9 = [*(v4 + 3) count];
        v6 = i < v9;
        if (i >= v9)
        {
          break;
        }

        v10 = [*(v4 + 3) objectAtIndex:i];
        v11 = [(PKAutoRefineTask *)v10 queryItemIsEqualToQueryItem:v3];

        if (v11)
        {
          break;
        }
      }
    }

    else
    {
      v6 = 1;
    }

    objc_sync_exit(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)cancelTasksGivenQueryItem:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = *(v4 + 2);
    if (!v5 || (*(v5 + 104) & 1) == 0)
    {
      v14 = 0;
      [(PKAutoRefineTask *)v5 trimTaskForNewItem:v3 shouldCancel:&v14];
      if (v14 == 1)
      {
        v6 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEBUG, "Cancel active task given query item.", buf, 2u);
        }

        [(PKAutoRefineTask *)*(v4 + 2) cancel];
      }
    }

    for (i = 0; i < [*(v4 + 3) count]; ++i)
    {
      v8 = [*(v4 + 3) objectAtIndex:i];
      v9 = v8;
      if (!v8 || (*(v8 + 104) & 1) == 0)
      {
        v12 = 0;
        [(PKAutoRefineTask *)v8 trimTaskForNewItem:v3 shouldCancel:&v12];
        if (v12 == 1)
        {
          v10 = os_log_create("com.apple.pencilkit", "AutoRefine");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *v11 = 0;
            _os_log_debug_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEBUG, "Cancel task given query item.", v11, 2u);
          }

          [(PKAutoRefineTask *)v9 cancel];
        }
      }
    }

    objc_sync_exit(v4);
  }
}

- (void)cancelTasksGivenRefinableStroke:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = *(v4 + 2);
    if (!v5 || (*(v5 + 104) & 1) == 0)
    {
      v14 = 0;
      [(PKAutoRefineTask *)v5 trimTaskForNewStroke:v3 shouldCancel:&v14];
      if (v14 == 1)
      {
        v6 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEBUG, "Cancel active task given refinable stroke.", buf, 2u);
        }

        [(PKAutoRefineTask *)*(v4 + 2) cancel];
      }
    }

    for (i = 0; i < [*(v4 + 3) count]; ++i)
    {
      v8 = [*(v4 + 3) objectAtIndex:i];
      v9 = v8;
      if (!v8 || (*(v8 + 104) & 1) == 0)
      {
        v12 = 0;
        [(PKAutoRefineTask *)v8 trimTaskForNewStroke:v3 shouldCancel:&v12];
        if (v12 == 1)
        {
          v10 = os_log_create("com.apple.pencilkit", "AutoRefine");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *v11 = 0;
            _os_log_debug_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEBUG, "Cancel task given refinable stroke.", v11, 2u);
          }

          [(PKAutoRefineTask *)v9 cancel];
        }
      }
    }

    objc_sync_exit(v4);
  }
}

- (void)hasOngoingAnimationTask
{
  if (result)
  {
    v1 = result;
    objc_sync_enter(v1);
    v2 = [(PKAutoRefineTask *)v1[2] hasOngoingAnimation];
    objc_sync_exit(v1);

    return v2;
  }

  return result;
}

- (void)autoRefineTask:(id)a3 isReadyToSynthesizeRefinedDrawingForStrokes:(id)a4 transcription:(id)a5 drawingUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_146);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __112__PKAutoRefineTaskManager_autoRefineTask_isReadyToSynthesizeRefinedDrawingForStrokes_transcription_drawingUUID___block_invoke_2;
  v20[3] = &unk_1E82DB2C8;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
  dispatch_block_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
}

void __112__PKAutoRefineTaskManager_autoRefineTask_isReadyToSynthesizeRefinedDrawingForStrokes_transcription_drawingUUID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __112__PKAutoRefineTaskManager_autoRefineTask_isReadyToSynthesizeRefinedDrawingForStrokes_transcription_drawingUUID___block_invoke_3;
  v7[3] = &unk_1E82D63B0;
  v8 = *(a1 + 72);
  [WeakRetained autoRefineTask:v3 synthesizeRefinedDrawingForStrokes:v4 transcription:v5 drawingUUID:v6 completionBlock:v7];
}

- (void)setCurrentDrawingUUID:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

@end