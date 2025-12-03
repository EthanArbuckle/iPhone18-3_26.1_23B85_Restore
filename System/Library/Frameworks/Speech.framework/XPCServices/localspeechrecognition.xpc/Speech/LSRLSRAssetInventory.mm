@interface LSRLSRAssetInventory
- (void)allocatedLocalesWithReply:(id)reply;
@end

@implementation LSRLSRAssetInventory

- (void)allocatedLocalesWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_100017C00(selfCopy, v4);
  _Block_release(v4);
}

@end