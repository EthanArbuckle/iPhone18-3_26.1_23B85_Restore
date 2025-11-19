@interface FPXSearchEnumeratorObserver
- (FPXSearchEnumeratorObserver)initWithMaximumNumberOfResultsPerPage:(int64_t)a3 completionHandler:(id)a4;
- (void)didEnumerateSearchResults:(id)a3;
@end

@implementation FPXSearchEnumeratorObserver

- (FPXSearchEnumeratorObserver)initWithMaximumNumberOfResultsPerPage:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = FPXSearchEnumeratorObserver;
  v7 = [(FPXSearchEnumeratorObserver *)&v13 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resultsBuffer = v7->_resultsBuffer;
    v7->_resultsBuffer = v8;

    v7->_maximumNumberOfResultsPerPage = a3;
    v10 = _Block_copy(v6);
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v10;
  }

  return v7;
}

- (void)didEnumerateSearchResults:(id)a3
{
  v6 = a3;
  [(NSMutableArray *)self->_resultsBuffer addObjectsFromArray:?];
  v4 = [(NSMutableArray *)self->_resultsBuffer count];
  maximumNumberOfResultsPerPage = self->_maximumNumberOfResultsPerPage;
  if (v4 > maximumNumberOfResultsPerPage)
  {
    __FILEPROVIDER_SEARCH_OBSERVER_TOO_MANY_ITEMS__(maximumNumberOfResultsPerPage);
  }
}

@end