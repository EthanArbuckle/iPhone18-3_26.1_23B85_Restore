@interface XPCClient
- (void)handleMessages:(id)messages;
@end

@implementation XPCClient

- (void)handleMessages:(id)messages
{
  messagesCopy = messages;
  selfCopy = self;
  v5 = sub_1D95BFBCC();
  v7 = v6;

  XPCClient.handleMessages(_:)(v5, v7);
  sub_1D955AA18(v5, v7);
}

@end