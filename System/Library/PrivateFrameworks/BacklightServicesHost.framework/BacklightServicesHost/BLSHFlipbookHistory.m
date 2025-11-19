@interface BLSHFlipbookHistory
- (BLSHFlipbookHistory)initWithFrameLimit:(unint64_t)a3 memoryLimit:(unint64_t)a4;
- (NSArray)allFrames;
- (id)frameWithUUID:(id)a3;
- (unint64_t)memoryUsage;
- (void)addRenderedFrameToHistory:(id)a3;
@end

@implementation BLSHFlipbookHistory

- (BLSHFlipbookHistory)initWithFrameLimit:(unint64_t)a3 memoryLimit:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = BLSHFlipbookHistory;
  v6 = [(BLSHFlipbookHistory *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_frameLimit = a3;
    v6->_memoryLimit = a4;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    lock_frames = v7->_lock_frames;
    v7->_lock_frames = v8;

    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:a3];
    lock_framesDict = v7->_lock_framesDict;
    v7->_lock_framesDict = v10;
  }

  return v7;
}

- (unint64_t)memoryUsage
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_lock_frames;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) retainedMemoryUsage];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)addRenderedFrameToHistory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BLSDiagnosticFlipbookFrame *)BLSHFlipbookHistoryFrame createWithFrame:v4];
  [(NSMutableArray *)self->_lock_frames addObject:v5];
  lock_framesDict = self->_lock_framesDict;
  v7 = [v5 uuid];
  [(NSMutableDictionary *)lock_framesDict setObject:v5 forKey:v7];

  if ([(NSMutableArray *)self->_lock_frames count]> self->_frameLimit)
  {
    v8 = [(NSMutableArray *)self->_lock_frames objectAtIndex:0];
    v9 = [v8 uuid];

    [(NSMutableArray *)self->_lock_frames removeObjectAtIndex:0];
    [(NSMutableDictionary *)self->_lock_framesDict removeObjectForKey:v9];
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  lock_frames = self->_lock_frames;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__BLSHFlipbookHistory_addRenderedFrameToHistory___block_invoke;
  v11[3] = &unk_27841FCC8;
  v11[4] = self;
  v11[5] = v15;
  v11[6] = v14;
  v11[7] = v12;
  [(NSMutableArray *)lock_frames enumerateObjectsWithOptions:2 usingBlock:v11];
  os_unfair_lock_unlock(&self->_lock);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
}

void __49__BLSHFlipbookHistory_addRenderedFrameToHistory___block_invoke(void *a1, void *a2, int a3, _BYTE *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [v7 retainedMemoryUsage];
  if (v8)
  {
    v9 = *(a1[5] + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      v10 = *(a1[6] + 8);
      v11 = *(v10 + 24) + v8;
      if (v11 <= *(a1[4] + 16))
      {
        *(v10 + 24) = v11;
        ++*(*(a1[7] + 8) + 24);
      }

      else
      {
        *(v9 + 24) = 1;
      }
    }
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    if ([v7 isRetainingSurface])
    {
      [v7 stopRetainingSurface];
      v12 = bls_diagnostics_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = a1[4];
        v15 = *(*(a1[7] + 8) + 24);
        v16 = [MEMORY[0x277CF0978] sharedFormatter];
        v17 = [v16 stringFromByteCount:*(*(a1[6] + 8) + 24)];
        v18 = [MEMORY[0x277CF0978] sharedFormatter];
        v19 = [v18 stringFromByteCount:*(a1[4] + 16)];
        v20 = [v7 bls_shortLoggingString];
        v21 = 134219266;
        v22 = v14;
        v23 = 1024;
        v24 = a3;
        v25 = 1024;
        v26 = v15;
        v27 = 2114;
        v28 = v17;
        v29 = 2114;
        v30 = v19;
        v31 = 2114;
        v32 = v20;
        _os_log_debug_impl(&dword_21FD11000, v12, OS_LOG_TYPE_DEBUG, "%p frame %u, reached memory limit (%u — %{public}@/%{public}@), purging %{public}@", &v21, 0x36u);
      }
    }

    else
    {
      *a4 = 1;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSArray)allFrames
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_frames bs_reverse];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)frameWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_framesDict objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end