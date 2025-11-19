@interface BKJob
- (BKJob)init;
@end

@implementation BKJob

- (BKJob)init
{
  v5.receiver = self;
  v5.super_class = BKJob;
  v2 = [(BKJob *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BKJob *)v2 setSentinel:0];
  }

  return v3;
}

@end