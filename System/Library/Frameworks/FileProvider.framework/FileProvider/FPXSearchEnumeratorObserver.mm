@interface FPXSearchEnumeratorObserver
- (FPXSearchEnumeratorObserver)initWithMaximumNumberOfResultsPerPage:(int64_t)page completionHandler:(id)handler;
- (void)didEnumerateSearchResults:(id)results;
@end

@implementation FPXSearchEnumeratorObserver

- (FPXSearchEnumeratorObserver)initWithMaximumNumberOfResultsPerPage:(int64_t)page completionHandler:(id)handler
{
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = FPXSearchEnumeratorObserver;
  v7 = [(FPXSearchEnumeratorObserver *)&v13 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resultsBuffer = v7->_resultsBuffer;
    v7->_resultsBuffer = v8;

    v7->_maximumNumberOfResultsPerPage = page;
    v10 = _Block_copy(handlerCopy);
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v10;
  }

  return v7;
}

- (void)didEnumerateSearchResults:(id)results
{
  resultsCopy = results;
  [(NSMutableArray *)self->_resultsBuffer addObjectsFromArray:?];
  v4 = [(NSMutableArray *)self->_resultsBuffer count];
  maximumNumberOfResultsPerPage = self->_maximumNumberOfResultsPerPage;
  if (v4 > maximumNumberOfResultsPerPage)
  {
    __FILEPROVIDER_SEARCH_OBSERVER_TOO_MANY_ITEMS__(maximumNumberOfResultsPerPage);
  }
}

@end