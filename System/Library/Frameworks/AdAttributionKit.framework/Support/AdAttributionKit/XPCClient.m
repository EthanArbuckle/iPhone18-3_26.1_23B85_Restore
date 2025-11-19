@interface XPCClient
- (_TtC20AttributionKitCommon9XPCClient)init;
- (void)handleMessages:(id)a3;
@end

@implementation XPCClient

- (void)handleMessages:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  _s20AttributionKitCommon9XPCClientC14handleMessagesyy10Foundation4DataVF_0();
  sub_10001BABC(v5, v7);
}

- (_TtC20AttributionKitCommon9XPCClient)init
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(XPCClient *)&v5 init];
}

@end