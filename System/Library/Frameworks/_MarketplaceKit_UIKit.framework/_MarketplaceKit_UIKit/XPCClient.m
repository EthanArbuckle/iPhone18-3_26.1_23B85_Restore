@interface XPCClient
- (_TtC21_MarketplaceKit_UIKit9XPCClient)init;
- (void)handleMessages:(id)a3;
@end

@implementation XPCClient

- (void)handleMessages:(id)a3
{
  v5 = a3;
  v3 = sub_23B7DA0B8();
  sub_23B7D48F8(v3, v4);
}

- (_TtC21_MarketplaceKit_UIKit9XPCClient)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(XPCClient *)&v3 init];
}

@end