@interface ENAuthCacheEntry
+ (ENAuthCacheEntry)entryWithResult:(id)result;
- (BOOL)isValid;
@end

@implementation ENAuthCacheEntry

- (BOOL)isValid
{
  cachedDate = [(ENAuthCacheEntry *)self cachedDate];
  [cachedDate timeIntervalSinceNow];
  v5 = fabs(v4);

  authResult = [(ENAuthCacheEntry *)self authResult];
  expiration = [authResult expiration];
  longLongValue = [expiration longLongValue];
  authResult2 = [(ENAuthCacheEntry *)self authResult];
  currentTime = [authResult2 currentTime];
  v11 = (longLongValue - [currentTime longLongValue]) / 1000;

  return v5 <= v11 * 0.9;
}

+ (ENAuthCacheEntry)entryWithResult:(id)result
{
  if (result)
  {
    resultCopy = result;
    v4 = objc_alloc_init(ENAuthCacheEntry);
    [(ENAuthCacheEntry *)v4 setAuthResult:resultCopy];

    date = [MEMORY[0x277CBEAA8] date];
    [(ENAuthCacheEntry *)v4 setCachedDate:date];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end