@interface ENAuthCacheEntry
+ (ENAuthCacheEntry)entryWithResult:(id)a3;
- (BOOL)isValid;
@end

@implementation ENAuthCacheEntry

- (BOOL)isValid
{
  v3 = [(ENAuthCacheEntry *)self cachedDate];
  [v3 timeIntervalSinceNow];
  v5 = fabs(v4);

  v6 = [(ENAuthCacheEntry *)self authResult];
  v7 = [v6 expiration];
  v8 = [v7 longLongValue];
  v9 = [(ENAuthCacheEntry *)self authResult];
  v10 = [v9 currentTime];
  v11 = (v8 - [v10 longLongValue]) / 1000;

  return v5 <= v11 * 0.9;
}

+ (ENAuthCacheEntry)entryWithResult:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(ENAuthCacheEntry);
    [(ENAuthCacheEntry *)v4 setAuthResult:v3];

    v5 = [MEMORY[0x277CBEAA8] date];
    [(ENAuthCacheEntry *)v4 setCachedDate:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end