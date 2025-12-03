@interface BKPaginationFactory
- (BKPaginationController)paginationController;
- (BKPaginationFactory)initWithPaginationController:(id)controller;
- (id)lookupKeyForStyle:(id)style geometry:(id)geometry;
- (void)addResultJob:(id)job;
- (void)addResultSentinel:(id)sentinel;
@end

@implementation BKPaginationFactory

- (BKPaginationFactory)initWithPaginationController:(id)controller
{
  controllerCopy = controller;
  v5 = [(BKPaginationFactory *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_paginationController, controllerCopy);
  }

  return v6;
}

- (id)lookupKeyForStyle:(id)style geometry:(id)geometry
{
  styleCopy = style;
  geometryCopy = geometry;
  v25 = styleCopy;
  if (styleCopy)
  {
    summaryString = [styleCopy summaryString];
  }

  else
  {
    summaryString = @".";
  }

  if ([geometryCopy layout] == &dword_0 + 3)
  {
    v8 = @"-hscroll";
  }

  else
  {
    layout = [geometryCopy layout];
    v8 = @"-scroll";
    if (layout != &dword_0 + 2)
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

  paginationController = [(BKPaginationFactory *)self paginationController];
  bookDatabaseKey = [paginationController bookDatabaseKey];
  paginationController2 = [(BKPaginationFactory *)self paginationController];
  isBookSample = [paginationController2 isBookSample];
  [geometryCopy layoutSize];
  v17 = NSStringFromCGSize(v27);
  usePaginationLineGrid = [geometryCopy usePaginationLineGrid];
  paginationController3 = [(BKPaginationFactory *)self paginationController];
  paginationRevision = [paginationController3 paginationRevision];
  v21 = [NSString stringWithFormat:@"%@-%d%@;%@;%d;%@%@%@", bookDatabaseKey, isBookSample, summaryString, v17, usePaginationLineGrid, paginationRevision, v23, v12];;

  return v21;
}

- (void)addResultSentinel:(id)sentinel
{
  sentinelCopy = sentinel;
  v5 = [BKPaginationResultsOperation alloc];
  paginationController = [(BKPaginationFactory *)self paginationController];
  paginationController2 = [(BKPaginationFactory *)self paginationController];
  bookAnnotationProvider = [paginationController2 bookAnnotationProvider];
  v11 = [(BKPaginationOperation *)v5 init:sentinelCopy paginationOperationController:paginationController annotationProvider:bookAnnotationProvider];

  paginationController3 = [(BKPaginationFactory *)self paginationController];
  resultsQueue = [paginationController3 resultsQueue];
  [resultsQueue addOperation:v11];
}

- (void)addResultJob:(id)job
{
  jobCopy = job;
  v5 = [BKPaginationResultsOperation alloc];
  paginationController = [(BKPaginationFactory *)self paginationController];
  paginationController2 = [(BKPaginationFactory *)self paginationController];
  bookAnnotationProvider = [paginationController2 bookAnnotationProvider];
  v11 = [(BKPaginationOperation *)v5 init:jobCopy paginationOperationController:paginationController annotationProvider:bookAnnotationProvider];

  paginationController3 = [(BKPaginationFactory *)self paginationController];
  resultsQueue = [paginationController3 resultsQueue];
  [resultsQueue addOperation:v11];
}

- (BKPaginationController)paginationController
{
  WeakRetained = objc_loadWeakRetained(&self->_paginationController);

  return WeakRetained;
}

@end