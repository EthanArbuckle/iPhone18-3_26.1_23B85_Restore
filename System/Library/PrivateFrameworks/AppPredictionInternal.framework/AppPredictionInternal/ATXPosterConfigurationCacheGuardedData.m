@interface ATXPosterConfigurationCacheGuardedData
- (ATXPosterConfigurationCacheGuardedData)init;
@end

@implementation ATXPosterConfigurationCacheGuardedData

- (ATXPosterConfigurationCacheGuardedData)init
{
  v6.receiver = self;
  v6.super_class = ATXPosterConfigurationCacheGuardedData;
  v2 = [(ATXPosterConfigurationCacheGuardedData *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    observers = v2->observers;
    v2->observers = v3;
  }

  return v2;
}

@end