@interface APBonjourCacheEvictionTTL
- (BOOL)shouldEvict:(id)evict;
@end

@implementation APBonjourCacheEvictionTTL

- (BOOL)shouldEvict:(id)evict
{
  [(APBonjourCacheEvictionTTL *)self timeToLiveSeconds];
  result = 0;
  if (v5 > 0.0)
  {
    v6 = [evict objectForKeyedSubscript:@"lastSeen"];
    if (!v6)
    {
      return 1;
    }

    v7 = v6;
    Current = CFAbsoluteTimeGetCurrent();
    [v7 doubleValue];
    v10 = Current - v9;
    if (v10 <= 0.0)
    {
      return 1;
    }

    [(APBonjourCacheEvictionTTL *)self timeToLiveSeconds];
    if (v10 >= v11)
    {
      return 1;
    }
  }

  return result;
}

@end