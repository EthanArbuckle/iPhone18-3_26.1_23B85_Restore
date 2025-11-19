@interface BKPaginationBatchEndJob
- (BKPaginationBatchEndJob)init;
@end

@implementation BKPaginationBatchEndJob

- (BKPaginationBatchEndJob)init
{
  v6.receiver = self;
  v6.super_class = BKPaginationBatchEndJob;
  v2 = [(BKJob *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(BKJob *)v2 setSentinel:1];
    v4 = +[BKPaginationBatchEndJob jobName];
    [(BKJob *)v3 setName:v4];
  }

  return v3;
}

@end