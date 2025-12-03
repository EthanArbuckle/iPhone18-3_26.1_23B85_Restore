@interface MTSDeviceSetupRequestPairingDescription
- (MTSDeviceSetupRequestPairingDescription)initWithRootPublicKey:(id)key nodeID:(id)d;
@end

@implementation MTSDeviceSetupRequestPairingDescription

- (MTSDeviceSetupRequestPairingDescription)initWithRootPublicKey:(id)key nodeID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MTSDeviceSetupRequestPairingDescription;
  v9 = [(MTSDeviceSetupRequestPairingDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rootPublicKey, key);
    objc_storeStrong(&v10->_nodeID, d);
  }

  return v10;
}

@end