@interface BKWidgetService
+ (BOOL)hasWidgetConfigurations;
- (BKWidgetService)init;
@end

@implementation BKWidgetService

+ (BOOL)hasWidgetConfigurations
{
  if (qword_100AD1538 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_100AE1960;
  v3 = *algn_100AE1968;
  v4 = byte_100AE1970;
  v5 = qword_100AE1978;

  v6 = v5;
  LOBYTE(v2) = sub_100026244(v2, v3, v4, v6);

  return v2 & 1;
}

- (BKWidgetService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end