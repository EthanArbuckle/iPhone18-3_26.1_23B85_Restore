@interface MTSDeviceSetupRequest
- (BOOL)hs_shouldShowAccessory:(id)accessory;
@end

@implementation MTSDeviceSetupRequest

- (BOOL)hs_shouldShowAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if ([accessoryCopy supportsCHIP] && objc_msgSend(accessoryCopy, "knownToSystemCommissioner"))
  {
    commissioningID = [accessoryCopy commissioningID];
    vendorID = [accessoryCopy vendorID];
    productID = [accessoryCopy productID];
    serialNumber = [accessoryCopy serialNumber];
    rootPublicKey = [accessoryCopy rootPublicKey];
    nodeID = [accessoryCopy nodeID];
    v11 = [(MTSDeviceSetupRequest *)self shouldShowDeviceWithUUID:commissioningID vendorID:vendorID productID:productID serialNumber:serialNumber rootPublicKey:rootPublicKey nodeID:nodeID];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end