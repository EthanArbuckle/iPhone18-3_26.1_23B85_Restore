@interface XPCClient
- (void)handleMessages:(id)a3;
@end

@implementation XPCClient

- (void)handleMessages:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_1D95BFBCC();
  v7 = v6;

  XPCClient.handleMessages(_:)(v5, v7);
  sub_1D955AA18(v5, v7);
}

@end