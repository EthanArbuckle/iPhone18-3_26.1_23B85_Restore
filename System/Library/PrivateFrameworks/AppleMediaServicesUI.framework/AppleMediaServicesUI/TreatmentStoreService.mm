@interface TreatmentStoreService
- (void)synchronizeTreatmentsWithCachePolicy:(int64_t)policy completion:(id)completion;
- (void)treatmentsForAreas:(NSSet *)areas cachePolicy:(int64_t)policy startDate:(NSDate *)date endDate:(NSDate *)endDate completion:(id)completion;
@end

@implementation TreatmentStoreService

- (void)treatmentsForAreas:(NSSet *)areas cachePolicy:(int64_t)policy startDate:(NSDate *)date endDate:(NSDate *)endDate completion:(id)completion
{
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = areas;
  v13[3] = policy;
  v13[4] = date;
  v13[5] = endDate;
  v13[6] = v12;
  v13[7] = self;
  areasCopy = areas;
  dateCopy = date;
  endDateCopy = endDate;

  sub_100009624(&unk_1001F1A48, v13);
}

- (void)synchronizeTreatmentsWithCachePolicy:(int64_t)policy completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = policy;
  v7[3] = v6;
  v7[4] = self;

  sub_100009624(&unk_1001F1AB8, v7);
}

@end