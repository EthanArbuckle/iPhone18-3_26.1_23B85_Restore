@interface LaunchAngelService
- (_TtC26AppDistributionLaunchAngel18LaunchAngelService)init;
- (void)handleXPCRequest:(id)a3 reply:(id)a4;
@end

@implementation LaunchAngelService

- (void)handleXPCRequest:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_100037A20(v8, v10, sub_1000377FC, v11);

  sub_100015A54(v8, v10);
}

- (_TtC26AppDistributionLaunchAngel18LaunchAngelService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LaunchAngelService();
  return [(LaunchAngelService *)&v3 init];
}

@end