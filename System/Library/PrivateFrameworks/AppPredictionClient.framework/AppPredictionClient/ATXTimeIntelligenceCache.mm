@interface ATXTimeIntelligenceCache
- (ATXTimeIntelligenceCache)init;
- (id)cachedEvents;
- (void)cacheEvents:(id)events;
- (void)evictCachedEvents;
@end

@implementation ATXTimeIntelligenceCache

- (ATXTimeIntelligenceCache)init
{
  v9.receiver = self;
  v9.super_class = ATXTimeIntelligenceCache;
  v2 = [(ATXTimeIntelligenceCache *)&v9 init];
  if (v2)
  {
    appPredictionCacheDirectory = [MEMORY[0x1E698B010] appPredictionCacheDirectory];
    v4 = [appPredictionCacheDirectory stringByAppendingPathComponent:@"TimeIntelligence"];

    v5 = objc_alloc(MEMORY[0x1E698AFF0]);
    v6 = __atxlog_handle_time_intelligence();
    v7 = [v5 initWithCacheFilePath:v4 loggingHandle:v6 debugName:@"Time Intelligence"];
    [(ATXTimeIntelligenceCache *)v2 setCache:v7];
  }

  return v2;
}

- (void)cacheEvents:(id)events
{
  eventsCopy = events;
  cache = [(ATXTimeIntelligenceCache *)self cache];
  v5 = [eventsCopy copy];

  [cache storeSecureCodedObject:v5 error:0];
}

- (id)cachedEvents
{
  cache = [(ATXTimeIntelligenceCache *)self cache];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v3);
  v7 = [cache readSecureCodedObjectWithMaxValidAge:v6 allowableClasses:0 error:86400.0];

  return v7;
}

- (void)evictCachedEvents
{
  cache = [(ATXTimeIntelligenceCache *)self cache];
  [cache evict];
}

@end