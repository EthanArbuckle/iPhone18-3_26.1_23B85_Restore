@interface AppInstallationEvent
+ (id)additionalMetricsWithRestoreInstalls:(id)installs;
+ (id)downloadLoadURLEventMetricsOverlayWithInstall:(id)install;
+ (id)downloadLoadURLEventMetricsOverlayWithInstall:(id)install bag:(id)bag;
+ (id)metricsOverlayWithPurchaseInfo:(id)info bag:(id)bag;
- (_TtC9appstored20AppInstallationEvent)init;
@end

@implementation AppInstallationEvent

+ (id)downloadLoadURLEventMetricsOverlayWithInstall:(id)install
{
  swift_getObjCClassMetadata();
  installCopy = install;
  v5 = sub_1001688F0(installCopy);

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

+ (id)downloadLoadURLEventMetricsOverlayWithInstall:(id)install bag:(id)bag
{
  swift_getObjCClassMetadata();
  installCopy = install;
  bagCopy = bag;
  v8 = sub_100168B50(installCopy, bagCopy);

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

+ (id)metricsOverlayWithPurchaseInfo:(id)info bag:(id)bag
{
  swift_getObjCClassMetadata();
  infoCopy = info;
  bagCopy = bag;
  sub_100169860(infoCopy, bagCopy);

  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

+ (id)additionalMetricsWithRestoreInstalls:(id)installs
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