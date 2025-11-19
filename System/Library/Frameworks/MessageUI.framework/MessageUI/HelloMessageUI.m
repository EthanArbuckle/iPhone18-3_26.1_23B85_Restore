@interface HelloMessageUI
- (NSString)world;
- (id)worldTruncatedToIndex:(int64_t)a3;
@end

@implementation HelloMessageUI

- (NSString)world
{
  v2 = objc_alloc_init(_TtC9MessageUI19SwiftHelloMessageUI);
  v3 = [(SwiftHelloMessageUI *)v2 world];

  return v3;
}

- (id)worldTruncatedToIndex:(int64_t)a3
{
  v4 = objc_alloc_init(_TtC9MessageUI19SwiftHelloMessageUI);
  v5 = [(SwiftHelloMessageUI *)v4 worldWithTruncated:a3];

  return v5;
}

@end