@interface ReportLinkFactory
- (id)createModelForType:(int64_t)a3;
@end

@implementation ReportLinkFactory

- (id)createModelForType:(int64_t)a3
{
  if (a3 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_alloc_init(*(&off_101651770)[a3]);
  }

  v4 = [v3 createReportLink];

  return v4;
}

@end