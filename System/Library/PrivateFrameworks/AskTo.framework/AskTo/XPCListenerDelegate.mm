@interface XPCListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC5AskToP33_294E6D7167BEA82A4564BFE645DC4E8319XPCListenerDelegate)init;
@end

@implementation XPCListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2258DB738(v7);

  return v9 & 1;
}

- (_TtC5AskToP33_294E6D7167BEA82A4564BFE645DC4E8319XPCListenerDelegate)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(XPCListenerDelegate *)&v5 init];
}

@end