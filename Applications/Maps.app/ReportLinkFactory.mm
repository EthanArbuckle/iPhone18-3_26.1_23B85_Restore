@interface ReportLinkFactory
- (id)createModelForType:(int64_t)type;
@end

@implementation ReportLinkFactory

- (id)createModelForType:(int64_t)type
{
  if (type > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_alloc_init(*(&off_101651770)[type]);
  }

  createReportLink = [v3 createReportLink];

  return createReportLink;
}

@end