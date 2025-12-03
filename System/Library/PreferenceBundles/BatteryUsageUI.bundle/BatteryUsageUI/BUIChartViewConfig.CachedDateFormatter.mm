@interface BUIChartViewConfig.CachedDateFormatter
- (id)stringFromDate:(id)date;
@end

@implementation BUIChartViewConfig.CachedDateFormatter

- (id)stringFromDate:(id)date
{
  v4 = sub_115760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115730();
  selfCopy = self;
  sub_58998(v8);

  (*(v5 + 8))(v8, v4);
  v10 = sub_117170();

  return v10;
}

@end