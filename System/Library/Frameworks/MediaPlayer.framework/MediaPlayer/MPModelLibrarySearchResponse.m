@interface MPModelLibrarySearchResponse
- (BOOL)hasMoreResultsForSectionAtIndex:(int64_t)a3;
- (MPModelLibrarySearchResponse)initWithRequest:(id)a3;
- (int64_t)searchWeightForIndexPath:(id)a3;
- (void)dealloc;
@end

@implementation MPModelLibrarySearchResponse

- (int64_t)searchWeightForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MPModelResponse *)self results];
  v6 = [v5 dataSource];
  v7 = [v6 searchWeightForIndexPath:v4];

  return v7;
}

- (BOOL)hasMoreResultsForSectionAtIndex:(int64_t)a3
{
  v4 = [(MPModelResponse *)self results];
  v5 = [v4 dataSource];
  LOBYTE(a3) = [v5 hasMoreResultsForSectionAtIndex:a3];

  return a3;
}

- (void)dealloc
{
  v3 = [(MPModelResponse *)self request];
  v4 = [v3 mediaLibrary];
  [v4 endGeneratingLibraryChangeNotifications];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = MPModelLibrarySearchResponse;
  [(MPModelLibraryResponse *)&v6 dealloc];
}

- (MPModelLibrarySearchResponse)initWithRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPModelLibrarySearchResponse;
  v5 = [(MPModelLibraryResponse *)&v9 initWithRequest:v4];
  if (v5)
  {
    v6 = [v4 mediaLibrary];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDidChangeNotification" object:v6];
    [v7 addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDisplayValuesDidChangeNotification" object:v6];
    [v7 addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDynamicPropertiesDidChangeNotification" object:v6];
    [v7 addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification" object:0];
    [v7 addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification" object:0];
    [v6 beginGeneratingLibraryChangeNotifications];
  }

  return v5;
}

@end