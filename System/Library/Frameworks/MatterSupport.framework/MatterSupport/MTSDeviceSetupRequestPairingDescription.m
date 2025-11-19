@interface MTSDeviceSetupRequestPairingDescription
- (MTSDeviceSetupRequestPairingDescription)initWithRootPublicKey:(id)a3 nodeID:(id)a4;
@end

@implementation MTSDeviceSetupRequestPairingDescription

- (MTSDeviceSetupRequestPairingDescription)initWithRootPublicKey:(id)a3 nodeID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MTSDeviceSetupRequestPairingDescription;
  v9 = [(MTSDeviceSetupRequestPairingDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rootPublicKey, a3);
    objc_storeStrong(&v10->_nodeID, a4);
  }

  return v10;
}

@end