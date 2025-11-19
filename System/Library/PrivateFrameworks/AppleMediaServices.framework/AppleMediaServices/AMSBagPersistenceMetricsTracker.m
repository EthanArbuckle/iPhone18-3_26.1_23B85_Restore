@interface AMSBagPersistenceMetricsTracker
+ (id)trackerForCachedValuesCallWithRequestedValueCount:(int64_t)a3 cachedValueCount:(int64_t)a4 cachedBagWasExpired:(BOOL)a5;
@end

@implementation AMSBagPersistenceMetricsTracker

+ (id)trackerForCachedValuesCallWithRequestedValueCount:(int64_t)a3 cachedValueCount:(int64_t)a4 cachedBagWasExpired:(BOOL)a5
{
  swift_getObjCClassMetadata();
  v8 = static BagPersistenceMetricsTracker.trackerForCachedValuesCall(requestedValueCount:cachedValueCount:cachedBagWasExpired:)(a3, a4, a5);

  return v8;
}

@end