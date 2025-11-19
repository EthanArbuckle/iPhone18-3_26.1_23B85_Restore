@interface LSRLSRAssetInventory
- (void)allocatedLocalesWithReply:(id)a3;
@end

@implementation LSRLSRAssetInventory

- (void)allocatedLocalesWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100017C00(v5, v4);
  _Block_release(v4);
}

@end