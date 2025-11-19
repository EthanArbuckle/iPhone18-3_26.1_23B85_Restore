@interface PKLocalStrokeTracker
+ (id)sharedInstance;
- (BOOL)isRecentlyCreatedLocalStroke:(uint64_t)a1;
- (PKLocalStrokeTracker)init;
- (void)addStroke:(uint64_t)a1;
@end

@implementation PKLocalStrokeTracker

+ (id)sharedInstance
{
  objc_opt_self();
  if (qword_1ED6A4F48 != -1)
  {
    dispatch_once(&qword_1ED6A4F48, &__block_literal_global_0);
  }

  v0 = _MergedGlobals_117;

  return v0;
}

void __38__PKLocalStrokeTracker_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKLocalStrokeTracker);
  v1 = _MergedGlobals_117;
  _MergedGlobals_117 = v0;
}

- (PKLocalStrokeTracker)init
{
  v7.receiver = self;
  v7.super_class = PKLocalStrokeTracker;
  v2 = [(PKLocalStrokeTracker *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(PKLRUCache);
    lruCache = v2->_lruCache;
    v2->_lruCache = v3;

    v5 = v2->_lruCache;
    if (v5)
    {
      v5->_totalCostLimit = 50;
    }
  }

  return v2;
}

- (void)addStroke:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = [a2 _strokeUUID];
    [(PKLRUCache *)v2 setObject:v3 forKey:1uLL cost:?];
  }
}

- (BOOL)isRecentlyCreatedLocalStroke:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = [a2 _strokeUUID];
  v4 = [(PKLRUCache *)v2 checkObjectForKey:v3];
  v5 = v4 != 0;

  return v5;
}

@end