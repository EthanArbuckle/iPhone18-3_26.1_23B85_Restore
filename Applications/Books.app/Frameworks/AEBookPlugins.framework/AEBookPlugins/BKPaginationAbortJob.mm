@interface BKPaginationAbortJob
- (BKPaginationAbortJob)init;
@end

@implementation BKPaginationAbortJob

- (BKPaginationAbortJob)init
{
  v6.receiver = self;
  v6.super_class = BKPaginationAbortJob;
  v2 = [(BKJob *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(BKJob *)v2 setSentinel:1];
    v4 = +[BKPaginationAbortJob jobName];
    [(BKJob *)v3 setName:v4];
  }

  return v3;
}

@end