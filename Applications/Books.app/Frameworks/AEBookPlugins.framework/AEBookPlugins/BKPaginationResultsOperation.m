@interface BKPaginationResultsOperation
- (BOOL)needsBookManagedObjectContext;
- (void)cancel;
- (void)execute;
@end

@implementation BKPaginationResultsOperation

- (BOOL)needsBookManagedObjectContext
{
  v2 = [(BKPaginationOperation *)self job];
  v3 = [v2 isSentinel];

  return v3 ^ 1;
}

- (void)execute
{
  v3 = [(BKPaginationOperation *)self job];
  v4 = [v3 name];
  v5 = +[BKPaginationAbortJob jobName];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = _BookEPUBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = [(BKPaginationOperation *)self job];
      v9 = [v8 name];
      v20 = 138412290;
      v21 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_FAULT, "Only we only expect to get abort jobs in this flow but we got %@", &v20, 0xCu);
    }
  }

  v10 = [(BKPaginationOperation *)self job];
  v11 = [v10 isSentinel];

  if (v11)
  {
    v12 = [(BKPaginationOperation *)self job];
    v13 = [v12 name];
    v14 = +[BKPaginationBatchEndJob jobName];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      v16 = [(BKPaginationOperation *)self paginationOperationController];
      [v16 batchEnded:{-[BKPaginationOperation isJobGenerationValid](self, "isJobGenerationValid")}];
    }

    else
    {
      v17 = [(BKPaginationOperation *)self job];
      v18 = [v17 name];
      v19 = +[BKPaginationAbortJob jobName];
      [v18 isEqualToString:v19];
    }
  }

  else
  {
    [(BKPaginationOperation *)self isJobGenerationValid];
  }
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = BKPaginationResultsOperation;
  [(BKPaginationOperation *)&v2 cancel];
}

@end