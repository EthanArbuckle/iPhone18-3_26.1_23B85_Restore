@interface FPProgressUpdater
- (FPProgressProxy)progress;
- (void)reportProgressUpdate:(int64_t)a3 totalUnitCount:(int64_t)a4 completedFileCount:(int64_t)a5 totalFileCount:(int64_t)a6;
@end

@implementation FPProgressUpdater

- (void)reportProgressUpdate:(int64_t)a3 totalUnitCount:(int64_t)a4 completedFileCount:(int64_t)a5 totalFileCount:(int64_t)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_progress);

  if (WeakRetained)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AE38]);
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
    [v12 setFileTotalCount:v13];

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    [v12 setFileCompletedCount:v14];

    [v12 setTotalUnitCount:a4];
    [v12 setCompletedUnitCount:a3];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __91__FPProgressUpdater_reportProgressUpdate_totalUnitCount_completedFileCount_totalFileCount___block_invoke;
    v16[3] = &unk_1E79390B8;
    v16[4] = self;
    v17 = v12;
    v15 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], v16);
  }
}

void __91__FPProgressUpdater_reportProgressUpdate_totalUnitCount_completedFileCount_totalFileCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained updateWithProgress:*(a1 + 40)];
}

- (FPProgressProxy)progress
{
  WeakRetained = objc_loadWeakRetained(&self->_progress);

  return WeakRetained;
}

@end