@interface BUIChartViewConfig.CachedDateFormatter
- (id)stringFromDate:(id)a3;
@end

@implementation BUIChartViewConfig.CachedDateFormatter

- (id)stringFromDate:(id)a3
{
  v4 = sub_115760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115730();
  v9 = self;
  sub_58998(v8);

  (*(v5 + 8))(v8, v4);
  v10 = sub_117170();

  return v10;
}

@end