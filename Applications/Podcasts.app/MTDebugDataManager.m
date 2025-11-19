@interface MTDebugDataManager
+ (void)setup;
@end

@implementation MTDebugDataManager

+ (void)setup
{
  v2 = objc_alloc_init(MTPodcastDatabaseDebugProvider);
  [IMDebugDataManager registerDataProvider:v2];

  v3 = objc_alloc_init(MTMediaLibraryDebugProvider);
  [IMDebugDataManager registerDataProvider:v3];

  v4 = objc_alloc_init(MTPodcastDatabaseWalDebugProvider);
  [IMDebugDataManager registerDataProvider:v4];

  v5 = objc_alloc_init(MTPodcastDatabaseShmDebugProvider);
  [IMDebugDataManager registerDataProvider:v5];

  v6 = objc_alloc_init(MTDebugSharedUserDefaultsDataProvider);
  [IMDebugDataManager registerDataProvider:v6];
}

@end