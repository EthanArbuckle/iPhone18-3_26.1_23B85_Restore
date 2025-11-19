@interface FRCachesClearableReadingHistory
- (FRCachesClearableReadingHistory)init;
- (void)clearHistory;
@end

@implementation FRCachesClearableReadingHistory

- (FRCachesClearableReadingHistory)init
{
  v3.receiver = self;
  v3.super_class = FRCachesClearableReadingHistory;
  return [(FRCachesClearableReadingHistory *)&v3 init];
}

- (void)clearHistory
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"should_clear_cache_on_next_launch"];
}

@end