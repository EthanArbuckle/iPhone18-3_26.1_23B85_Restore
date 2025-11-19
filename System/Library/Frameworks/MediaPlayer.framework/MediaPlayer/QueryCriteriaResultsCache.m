@interface QueryCriteriaResultsCache
- (QueryCriteriaResultsCache)init;
@end

@implementation QueryCriteriaResultsCache

- (QueryCriteriaResultsCache)init
{
  v4.receiver = self;
  v4.super_class = QueryCriteriaResultsCache;
  v2 = [(QueryCriteriaResultsCache *)&v4 init];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(QueryCriteriaResultsCache *)v2 setEvictsObjectsWhenApplicationEntersBackground:0];
  }

  return v2;
}

@end