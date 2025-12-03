@interface SearchHomeNoDataDataFetcher
- (SearchHomeDataFetcherDelegate)delegate;
- (SearchHomeNoDataDataFetcher)initWithDelegate:(id)delegate isSearchAlongRoute:(BOOL)route;
- (void)fetchContent;
@end

@implementation SearchHomeNoDataDataFetcher

- (SearchHomeDataFetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchContent
{
  dataProviders = [(SearchHomeNoDataDataFetcher *)self dataProviders];

  if (!dataProviders)
  {
    v4 = [SearchHomeNoDataDataProvider alloc];
    v10 = @"SearchHomeNoData";
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    v6 = [(SearchHomeNoDataDataProvider *)v4 initWithObjects:v5 type:0 identifier:@"SearchHomeNoData" title:&stru_1016631F0];

    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
    [(SearchHomeNoDataDataFetcher *)self setDataProviders:v7];
  }

  delegate = [(SearchHomeNoDataDataFetcher *)self delegate];
  [delegate didUpdateDataFetcher:self];
}

- (SearchHomeNoDataDataFetcher)initWithDelegate:(id)delegate isSearchAlongRoute:(BOOL)route
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = SearchHomeNoDataDataFetcher;
  v6 = [(SearchHomeNoDataDataFetcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isFetchingDataComplete = 1;
    objc_storeWeak(&v6->_delegate, delegateCopy);
  }

  return v7;
}

@end