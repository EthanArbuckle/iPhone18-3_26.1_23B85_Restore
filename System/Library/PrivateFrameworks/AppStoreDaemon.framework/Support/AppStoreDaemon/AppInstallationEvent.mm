@interface AppInstallationEvent
+ (id)additionalMetricsWithRestoreInstalls:(id)a3;
+ (id)downloadLoadURLEventMetricsOverlayWithInstall:(id)a3;
+ (id)downloadLoadURLEventMetricsOverlayWithInstall:(id)a3 bag:(id)a4;
+ (id)metricsOverlayWithPurchaseInfo:(id)a3 bag:(id)a4;
- (_TtC9appstored20AppInstallationEvent)init;
@end

@implementation AppInstallationEvent

+ (id)downloadLoadURLEventMetricsOverlayWithInstall:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_1001688F0(v4);

  if (v5)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

+ (id)downloadLoadURLEventMetricsOverlayWithInstall:(id)a3 bag:(id)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = a4;
  v8 = sub_100168B50(v6, v7);

  if (v8)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

+ (id)metricsOverlayWithPurchaseInfo:(id)a3 bag:(id)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = a4;
  sub_100169860(v6, v7);

  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

+ (id)additionalMetricsWithRestoreInstalls:(id)a3
{
  sub_10009FAD4(0, &qword_10059E848);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10016FE40(v3);

  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (_TtC9appstored20AppInstallationEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end