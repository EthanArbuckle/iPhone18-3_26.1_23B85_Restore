@interface BKPaginationFactory
- (BKPaginationController)paginationController;
- (BKPaginationFactory)initWithPaginationController:(id)a3;
- (id)lookupKeyForStyle:(id)a3 geometry:(id)a4;
- (void)addResultJob:(id)a3;
- (void)addResultSentinel:(id)a3;
@end

@implementation BKPaginationFactory

- (BKPaginationFactory)initWithPaginationController:(id)a3
{
  v4 = a3;
  v5 = [(BKPaginationFactory *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_paginationController, v4);
  }

  return v6;
}

- (id)lookupKeyForStyle:(id)a3 geometry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25 = v6;
  if (v6)
  {
    v24 = [v6 summaryString];
  }

  else
  {
    v24 = @".";
  }

  if ([v7 layout] == &dword_0 + 3)
  {
    v8 = @"-hscroll";
  }

  else
  {
    v9 = [v7 layout];
    v8 = @"-scroll";
    if (v9 != &dword_0 + 2)
    {
      v8 = &stru_1E7188;
    }
  }

  v23 = v8;
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 BOOLForKey:@"BKUseOldFontStepsAndSpacing"];

  if (v11)
  {
    v12 = @"-oldFontSteps";
  }

  else
  {
    v12 = &stru_1E7188;
  }

  v13 = [(BKPaginationFactory *)self paginationController];
  v14 = [v13 bookDatabaseKey];
  v15 = [(BKPaginationFactory *)self paginationController];
  v16 = [v15 isBookSample];
  [v7 layoutSize];
  v17 = NSStringFromCGSize(v27);
  v18 = [v7 usePaginationLineGrid];
  v19 = [(BKPaginationFactory *)self paginationController];
  v20 = [v19 paginationRevision];
  v21 = [NSString stringWithFormat:@"%@-%d%@;%@;%d;%@%@%@", v14, v16, v24, v17, v18, v20, v23, v12];;

  return v21;
}

- (void)addResultSentinel:(id)a3
{
  v4 = a3;
  v5 = [BKPaginationResultsOperation alloc];
  v6 = [(BKPaginationFactory *)self paginationController];
  v7 = [(BKPaginationFactory *)self paginationController];
  v8 = [v7 bookAnnotationProvider];
  v11 = [(BKPaginationOperation *)v5 init:v4 paginationOperationController:v6 annotationProvider:v8];

  v9 = [(BKPaginationFactory *)self paginationController];
  v10 = [v9 resultsQueue];
  [v10 addOperation:v11];
}

- (void)addResultJob:(id)a3
{
  v4 = a3;
  v5 = [BKPaginationResultsOperation alloc];
  v6 = [(BKPaginationFactory *)self paginationController];
  v7 = [(BKPaginationFactory *)self paginationController];
  v8 = [v7 bookAnnotationProvider];
  v11 = [(BKPaginationOperation *)v5 init:v4 paginationOperationController:v6 annotationProvider:v8];

  v9 = [(BKPaginationFactory *)self paginationController];
  v10 = [v9 resultsQueue];
  [v10 addOperation:v11];
}

- (BKPaginationController)paginationController
{
  WeakRetained = objc_loadWeakRetained(&self->_paginationController);

  return WeakRetained;
}

@end