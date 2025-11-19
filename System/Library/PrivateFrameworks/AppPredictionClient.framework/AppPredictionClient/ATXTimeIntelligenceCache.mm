@interface ATXTimeIntelligenceCache
- (ATXTimeIntelligenceCache)init;
- (id)cachedEvents;
- (void)cacheEvents:(id)a3;
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
    v3 = [MEMORY[0x1E698B010] appPredictionCacheDirectory];
    v4 = [v3 stringByAppendingPathComponent:@"TimeIntelligence"];

    v5 = objc_alloc(MEMORY[0x1E698AFF0]);
    v6 = __atxlog_handle_time_intelligence();
    v7 = [v5 initWithCacheFilePath:v4 loggingHandle:v6 debugName:@"Time Intelligence"];
    [(ATXTimeIntelligenceCache *)v2 setCache:v7];
  }

  return v2;
}

- (void)cacheEvents:(id)a3
{
  v4 = a3;
  v6 = [(ATXTimeIntelligenceCache *)self cache];
  v5 = [v4 copy];

  [v6 storeSecureCodedObject:v5 error:0];
}

- (id)cachedEvents
{
  v2 = [(ATXTimeIntelligenceCache *)self cache];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v3);
  v7 = [v2 readSecureCodedObjectWithMaxValidAge:v6 allowableClasses:0 error:86400.0];

  return v7;
}

- (void)evictCachedEvents
{
  v2 = [(ATXTimeIntelligenceCache *)self cache];
  [v2 evict];
}

@end