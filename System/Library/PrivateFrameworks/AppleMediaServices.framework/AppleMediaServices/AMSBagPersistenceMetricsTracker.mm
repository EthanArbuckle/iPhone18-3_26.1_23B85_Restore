@interface AMSBagPersistenceMetricsTracker
+ (id)trackerForCachedValuesCallWithRequestedValueCount:(int64_t)count cachedValueCount:(int64_t)valueCount cachedBagWasExpired:(BOOL)expired;
@end

@implementation AMSBagPersistenceMetricsTracker

+ (id)trackerForCachedValuesCallWithRequestedValueCount:(int64_t)count cachedValueCount:(int64_t)valueCount cachedBagWasExpired:(BOOL)expired
{
  swift_getObjCClassMetadata();
  v8 = static BagPersistenceMetricsTracker.trackerForCachedValuesCall(requestedValueCount:cachedValueCount:cachedBagWasExpired:)(count, valueCount, expired);

  return v8;
}

@end