@interface BKMPBluetoothCompanionLinkAssertion
- (BKMPBluetoothCompanionLinkAssertion)init;
- (void)dealloc;
@end

@implementation BKMPBluetoothCompanionLinkAssertion

- (BKMPBluetoothCompanionLinkAssertion)init
{
  v3.receiver = self;
  v3.super_class = BKMPBluetoothCompanionLinkAssertion;
  return [(BKMPBluetoothCompanionLinkAssertion *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BKMPBluetoothCompanionLinkAssertion;
  [(BKMPBluetoothCompanionLinkAssertion *)&v2 dealloc];
}

@end