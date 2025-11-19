@interface QOSMetrics
+ (BOOL)shouldCollectLoadURLMetricsWithBag:(id)a3 clientBundleID:(id)a4;
+ (void)cacheQOSPackageInstallMetricsCollectionChanceFromBag:(id)a3;
- (_TtC9appstored10QOSMetrics)init;
@end

@implementation QOSMetrics

+ (BOOL)shouldCollectLoadURLMetricsWithBag:(id)a3 clientBundleID:(id)a4
{
  if (a4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v9 = sub_1001728D8(v8, v5, v7);

  return v9;
}

+ (void)cacheQOSPackageInstallMetricsCollectionChanceFromBag:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_100171914(v4);
}

- (_TtC9appstored10QOSMetrics)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(QOSMetrics *)&v3 init];
}

@end