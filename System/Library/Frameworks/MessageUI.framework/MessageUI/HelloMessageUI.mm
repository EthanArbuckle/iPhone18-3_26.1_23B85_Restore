@interface HelloMessageUI
- (NSString)world;
- (id)worldTruncatedToIndex:(int64_t)index;
@end

@implementation HelloMessageUI

- (NSString)world
{
  v2 = objc_alloc_init(_TtC9MessageUI19SwiftHelloMessageUI);
  world = [(SwiftHelloMessageUI *)v2 world];

  return world;
}

- (id)worldTruncatedToIndex:(int64_t)index
{
  v4 = objc_alloc_init(_TtC9MessageUI19SwiftHelloMessageUI);
  v5 = [(SwiftHelloMessageUI *)v4 worldWithTruncated:index];

  return v5;
}

@end