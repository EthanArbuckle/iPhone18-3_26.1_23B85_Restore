@interface BKPaginationResultsOperation
- (BOOL)needsBookManagedObjectContext;
- (void)cancel;
- (void)execute;
@end

@implementation BKPaginationResultsOperation

- (BOOL)needsBookManagedObjectContext
{
  v2 = [(BKPaginationOperation *)self job];
  isSentinel = [v2 isSentinel];

  return isSentinel ^ 1;
}

- (void)execute
{
  v3 = [(BKPaginationOperation *)self job];
  name = [v3 name];
  v5 = +[BKPaginationAbortJob jobName];
  v6 = [name isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = _BookEPUBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = [(BKPaginationOperation *)self job];
      name2 = [v8 name];
      v20 = 138412290;
      v21 = name2;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_FAULT, "Only we only expect to get abort jobs in this flow but we got %@", &v20, 0xCu);
    }
  }

  v10 = [(BKPaginationOperation *)self job];
  isSentinel = [v10 isSentinel];

  if (isSentinel)
  {
    v12 = [(BKPaginationOperation *)self job];
    name3 = [v12 name];
    v14 = +[BKPaginationBatchEndJob jobName];
    v15 = [name3 isEqualToString:v14];

    if (v15)
    {
      paginationOperationController = [(BKPaginationOperation *)self paginationOperationController];
      [paginationOperationController batchEnded:{-[BKPaginationOperation isJobGenerationValid](self, "isJobGenerationValid")}];
    }

    else
    {
      v17 = [(BKPaginationOperation *)self job];
      name4 = [v17 name];
      v19 = +[BKPaginationAbortJob jobName];
      [name4 isEqualToString:v19];
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