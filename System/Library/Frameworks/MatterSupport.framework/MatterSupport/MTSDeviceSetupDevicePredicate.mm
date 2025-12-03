@interface MTSDeviceSetupDevicePredicate
- (BOOL)isEqual:(id)equal;
- (MTSDeviceSetupDevicePredicate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSDeviceSetupDevicePredicate

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(MTSDeviceSetupDevicePredicate *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"MTSDSDP.uuid"];

  serialNumber = [(MTSDeviceSetupDevicePredicate *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"MTSDSDP.serialNumber"];

  productID = [(MTSDeviceSetupDevicePredicate *)self productID];
  [coderCopy encodeObject:productID forKey:@"MTSDSDP.productID"];

  vendorID = [(MTSDeviceSetupDevicePredicate *)self vendorID];
  [coderCopy encodeObject:vendorID forKey:@"MTSDSDP.vendorID"];
}

- (MTSDeviceSetupDevicePredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.uuid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.serialNumber"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.productID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.vendorID"];

  v9 = [(MTSDeviceSetupDevicePredicate *)self init];
  [(MTSDeviceSetupDevicePredicate *)v9 setUuid:v5];
  [(MTSDeviceSetupDevicePredicate *)v9 setSerialNumber:v6];
  [(MTSDeviceSetupDevicePredicate *)v9 setProductID:v7];
  [(MTSDeviceSetupDevicePredicate *)v9 setVendorID:v8];

  return v9;
}

- (unint64_t)hash
{
  uuid = [(MTSDeviceSetupDevicePredicate *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_9;
  }

  uuid = [(MTSDeviceSetupDevicePredicate *)self uuid];
  uuid2 = [v6 uuid];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_9;
  }

  serialNumber = [(MTSDeviceSetupDevicePredicate *)self serialNumber];
  serialNumber2 = [v6 serialNumber];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_9;
  }

  vendorID = [(MTSDeviceSetupDevicePredicate *)self vendorID];
  vendorID2 = [v6 vendorID];
  v15 = HMFEqualObjects();

  if (v15)
  {
    productID = [(MTSDeviceSetupDevicePredicate *)self productID];
    productID2 = [v6 productID];
    v18 = HMFEqualObjects();
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTSDeviceSetupDevicePredicate);
  uuid = [(MTSDeviceSetupDevicePredicate *)self uuid];
  [(MTSDeviceSetupDevicePredicate *)v4 setUuid:uuid];

  serialNumber = [(MTSDeviceSetupDevicePredicate *)self serialNumber];
  [(MTSDeviceSetupDevicePredicate *)v4 setSerialNumber:serialNumber];

  vendorID = [(MTSDeviceSetupDevicePredicate *)self vendorID];
  [(MTSDeviceSetupDevicePredicate *)v4 setVendorID:vendorID];

  productID = [(MTSDeviceSetupDevicePredicate *)self productID];
  [(MTSDeviceSetupDevicePredicate *)v4 setProductID:productID];

  return v4;
}

@end