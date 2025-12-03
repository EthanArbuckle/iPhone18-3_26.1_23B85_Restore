@interface PKLocalStrokeTracker
+ (id)sharedInstance;
- (BOOL)isRecentlyCreatedLocalStroke:(uint64_t)stroke;
- (PKLocalStrokeTracker)init;
- (void)addStroke:(uint64_t)stroke;
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

- (void)addStroke:(uint64_t)stroke
{
  if (stroke)
  {
    v2 = *(stroke + 8);
    _strokeUUID = [a2 _strokeUUID];
    [(PKLRUCache *)v2 setObject:_strokeUUID forKey:1uLL cost:?];
  }
}

- (BOOL)isRecentlyCreatedLocalStroke:(uint64_t)stroke
{
  if (!stroke)
  {
    return 0;
  }

  v2 = *(stroke + 8);
  _strokeUUID = [a2 _strokeUUID];
  v4 = [(PKLRUCache *)v2 checkObjectForKey:_strokeUUID];
  v5 = v4 != 0;

  return v5;
}

@end