@interface TreatmentStoreService
- (void)synchronizeTreatmentsWithCachePolicy:(int64_t)a3 completion:(id)a4;
- (void)treatmentsForAreas:(NSSet *)a3 cachePolicy:(int64_t)a4 startDate:(NSDate *)a5 endDate:(NSDate *)a6 completion:(id)a7;
@end

@implementation TreatmentStoreService

- (void)treatmentsForAreas:(NSSet *)a3 cachePolicy:(int64_t)a4 startDate:(NSDate *)a5 endDate:(NSDate *)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a5;
  v16 = a6;

  sub_100009624(&unk_1001F1A48, v13);
}

- (void)synchronizeTreatmentsWithCachePolicy:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;

  sub_100009624(&unk_1001F1AB8, v7);
}

@end