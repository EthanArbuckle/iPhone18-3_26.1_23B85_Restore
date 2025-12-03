@interface QOSMetrics
+ (BOOL)shouldCollectLoadURLMetricsWithBag:(id)bag clientBundleID:(id)d;
+ (void)cacheQOSPackageInstallMetricsCollectionChanceFromBag:(id)bag;
- (_TtC9appstored10QOSMetrics)init;
@end

@implementation QOSMetrics

+ (BOOL)shouldCollectLoadURLMetricsWithBag:(id)bag clientBundleID:(id)d
{
  if (d)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bagCopy = bag;
  v9 = sub_1001728D8(bagCopy, v5, v7);

  return v9;
}

+ (void)cacheQOSPackageInstallMetricsCollectionChanceFromBag:(id)bag
{
  swift_getObjCClassMetadata();
  bagCopy = bag;
  sub_100171914(bagCopy);
}

- (_TtC9appstored10QOSMetrics)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(QOSMetrics *)&v3 init];
}

@end