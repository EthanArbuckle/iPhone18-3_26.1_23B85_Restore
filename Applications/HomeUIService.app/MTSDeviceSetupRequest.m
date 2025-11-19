@interface MTSDeviceSetupRequest
- (BOOL)hs_shouldShowAccessory:(id)a3;
@end

@implementation MTSDeviceSetupRequest

- (BOOL)hs_shouldShowAccessory:(id)a3
{
  v4 = a3;
  if ([v4 supportsCHIP] && objc_msgSend(v4, "knownToSystemCommissioner"))
  {
    v5 = [v4 commissioningID];
    v6 = [v4 vendorID];
    v7 = [v4 productID];
    v8 = [v4 serialNumber];
    v9 = [v4 rootPublicKey];
    v10 = [v4 nodeID];
    v11 = [(MTSDeviceSetupRequest *)self shouldShowDeviceWithUUID:v5 vendorID:v6 productID:v7 serialNumber:v8 rootPublicKey:v9 nodeID:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end