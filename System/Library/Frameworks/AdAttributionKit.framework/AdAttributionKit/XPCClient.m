@interface XPCClient
- (_TtC20AttributionKitCommon9XPCClient)init;
- (void)handleMessages:(id)a3;
@end

@implementation XPCClient

- (void)handleMessages:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_236A2ED84();
  v7 = v6;

  sub_236A29C78();
  sub_236A08300(v5, v7);
}

- (_TtC20AttributionKitCommon9XPCClient)init
{
  ObjectType = swift_getObjectType();
  sub_236A2EDC4();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(XPCClient *)&v5 init];
}

@end