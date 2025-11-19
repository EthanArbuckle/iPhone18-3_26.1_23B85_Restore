@interface MTSDeviceSetupDevicePredicate
- (BOOL)isEqual:(id)a3;
- (MTSDeviceSetupDevicePredicate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTSDeviceSetupDevicePredicate

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MTSDeviceSetupDevicePredicate *)self uuid];
  [v4 encodeObject:v5 forKey:@"MTSDSDP.uuid"];

  v6 = [(MTSDeviceSetupDevicePredicate *)self serialNumber];
  [v4 encodeObject:v6 forKey:@"MTSDSDP.serialNumber"];

  v7 = [(MTSDeviceSetupDevicePredicate *)self productID];
  [v4 encodeObject:v7 forKey:@"MTSDSDP.productID"];

  v8 = [(MTSDeviceSetupDevicePredicate *)self vendorID];
  [v4 encodeObject:v8 forKey:@"MTSDSDP.vendorID"];
}

- (MTSDeviceSetupDevicePredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.uuid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.serialNumber"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.productID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSDP.vendorID"];

  v9 = [(MTSDeviceSetupDevicePredicate *)self init];
  [(MTSDeviceSetupDevicePredicate *)v9 setUuid:v5];
  [(MTSDeviceSetupDevicePredicate *)v9 setSerialNumber:v6];
  [(MTSDeviceSetupDevicePredicate *)v9 setProductID:v7];
  [(MTSDeviceSetupDevicePredicate *)v9 setVendorID:v8];

  return v9;
}

- (unint64_t)hash
{
  v2 = [(MTSDeviceSetupDevicePredicate *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

  v7 = [(MTSDeviceSetupDevicePredicate *)self uuid];
  v8 = [v6 uuid];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(MTSDeviceSetupDevicePredicate *)self serialNumber];
  v11 = [v6 serialNumber];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = [(MTSDeviceSetupDevicePredicate *)self vendorID];
  v14 = [v6 vendorID];
  v15 = HMFEqualObjects();

  if (v15)
  {
    v16 = [(MTSDeviceSetupDevicePredicate *)self productID];
    v17 = [v6 productID];
    v18 = HMFEqualObjects();
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTSDeviceSetupDevicePredicate);
  v5 = [(MTSDeviceSetupDevicePredicate *)self uuid];
  [(MTSDeviceSetupDevicePredicate *)v4 setUuid:v5];

  v6 = [(MTSDeviceSetupDevicePredicate *)self serialNumber];
  [(MTSDeviceSetupDevicePredicate *)v4 setSerialNumber:v6];

  v7 = [(MTSDeviceSetupDevicePredicate *)self vendorID];
  [(MTSDeviceSetupDevicePredicate *)v4 setVendorID:v7];

  v8 = [(MTSDeviceSetupDevicePredicate *)self productID];
  [(MTSDeviceSetupDevicePredicate *)v4 setProductID:v8];

  return v4;
}

@end