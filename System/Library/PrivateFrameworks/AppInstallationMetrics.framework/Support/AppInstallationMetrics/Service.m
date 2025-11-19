@interface Service
- (_TtC28AppInstallationMetricsDaemon7Service)init;
- (void)handleAppInstall:(id)a3 reply:(id)a4;
@end

@implementation Service

- (void)handleAppInstall:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_100015B1C(v8, v10, sub_10001ECFC, v11);

  sub_10000D80C(v8, v10);
}

- (_TtC28AppInstallationMetricsDaemon7Service)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end