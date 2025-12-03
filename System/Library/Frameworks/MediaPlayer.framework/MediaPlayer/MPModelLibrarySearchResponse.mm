@interface MPModelLibrarySearchResponse
- (BOOL)hasMoreResultsForSectionAtIndex:(int64_t)index;
- (MPModelLibrarySearchResponse)initWithRequest:(id)request;
- (int64_t)searchWeightForIndexPath:(id)path;
- (void)dealloc;
@end

@implementation MPModelLibrarySearchResponse

- (int64_t)searchWeightForIndexPath:(id)path
{
  pathCopy = path;
  results = [(MPModelResponse *)self results];
  dataSource = [results dataSource];
  v7 = [dataSource searchWeightForIndexPath:pathCopy];

  return v7;
}

- (BOOL)hasMoreResultsForSectionAtIndex:(int64_t)index
{
  results = [(MPModelResponse *)self results];
  dataSource = [results dataSource];
  LOBYTE(index) = [dataSource hasMoreResultsForSectionAtIndex:index];

  return index;
}

- (void)dealloc
{
  request = [(MPModelResponse *)self request];
  mediaLibrary = [request mediaLibrary];
  [mediaLibrary endGeneratingLibraryChangeNotifications];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = MPModelLibrarySearchResponse;
  [(MPModelLibraryResponse *)&v6 dealloc];
}

- (MPModelLibrarySearchResponse)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = MPModelLibrarySearchResponse;
  v5 = [(MPModelLibraryResponse *)&v9 initWithRequest:requestCopy];
  if (v5)
  {
    mediaLibrary = [requestCopy mediaLibrary];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDidChangeNotification" object:mediaLibrary];
    [defaultCenter addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDisplayValuesDidChangeNotification" object:mediaLibrary];
    [defaultCenter addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDynamicPropertiesDidChangeNotification" object:mediaLibrary];
    [defaultCenter addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification" object:0];
    [defaultCenter addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification" object:0];
    [mediaLibrary beginGeneratingLibraryChangeNotifications];
  }

  return v5;
}

@end