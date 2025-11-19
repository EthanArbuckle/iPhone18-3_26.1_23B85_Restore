@interface HMCHIPAccessorySetupPayload
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCHIPAccessorySetupPayload)initWithCoder:(id)a3;
- (HMCHIPAccessorySetupPayload)initWithSetupCode:(id)a3 discriminator:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCHIPAccessorySetupPayload

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(HMCHIPAccessorySetupPayload *)self hasShortDiscriminator])
  {
    v4 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMCHIPAccessorySetupPayload *)self hasShortDiscriminator];
    v5 = HMFBooleanToString();
    v6 = [v4 initWithName:@"Has Short Discriminator" value:v5];
    [v3 addObject:v6];
  }

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMCHIPAccessorySetupPayload *)self discriminator];
  v9 = [v7 initWithName:@"Discriminator" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [(HMCHIPAccessorySetupPayload *)self setupCode];
  v12 = [v10 initWithName:@"Setup Code" value:v11];
  [v3 addObject:v12];

  v13 = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E69A29C8]);
    v15 = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];
    v16 = [v14 initWithName:@"Setup Payload String" value:v15];
    [v3 addObject:v16];
  }

  v17 = [(HMCHIPAccessorySetupPayload *)self vendorID];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E69A29C8]);
    v19 = [(HMCHIPAccessorySetupPayload *)self vendorID];
    v20 = [v18 initWithName:@"Vendor ID" value:v19];
    [v3 addObject:v20];
  }

  v21 = [(HMCHIPAccessorySetupPayload *)self productID];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x1E69A29C8]);
    v23 = [(HMCHIPAccessorySetupPayload *)self productID];
    v24 = [v22 initWithName:@"Product ID" value:v23];
    [v3 addObject:v24];
  }

  v25 = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x1E69A29C8]);
    v27 = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];
    v28 = [v26 initWithName:@"Device Type ID" value:v27];
    [v3 addObject:v28];
  }

  v29 = [(HMCHIPAccessorySetupPayload *)self serialNumber];

  if (v29)
  {
    v30 = objc_alloc(MEMORY[0x1E69A29C8]);
    v31 = [(HMCHIPAccessorySetupPayload *)self serialNumber];
    v32 = [v30 initWithName:@"Serial Number" value:v31];
    [v3 addObject:v32];
  }

  if ([(HMCHIPAccessorySetupPayload *)self requiresCustomFlow])
  {
    v33 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMCHIPAccessorySetupPayload *)self requiresCustomFlow];
    v34 = HMFBooleanToString();
    v35 = [v33 initWithName:@"Requires Custom Flow" value:v34];
    [v3 addObject:v35];
  }

  v36 = [v3 copy];

  return v36;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCHIPAccessorySetupPayload)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.setupCode"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.discriminator"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v12 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded setupCode: %@ discriminator: %@ ", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v18 = 0;
  }

  else
  {
    v12 = [(HMCHIPAccessorySetupPayload *)self initWithSetupCode:v5 discriminator:v6];
    -[HMCHIPAccessorySetupPayload setHasShortDiscriminator:](v12, "setHasShortDiscriminator:", [v4 decodeBoolForKey:@"HMCASP.ck.hasShortDiscriminator"]);
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.setupPayloadString"];
    [(HMCHIPAccessorySetupPayload *)v12 setSetupPayloadString:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.vendorID"];
    [(HMCHIPAccessorySetupPayload *)v12 setVendorID:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.productID"];
    [(HMCHIPAccessorySetupPayload *)v12 setProductID:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.deviceTypeID"];
    [(HMCHIPAccessorySetupPayload *)v12 setDeviceTypeID:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCASP.ck.serialNumber"];
    [(HMCHIPAccessorySetupPayload *)v12 setSerialNumber:v17];

    -[HMCHIPAccessorySetupPayload setRequiresCustomFlow:](v12, "setRequiresCustomFlow:", [v4 decodeBoolForKey:@"HMCASP.ck.requiresCustomFlow"]);
    v18 = v12;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(HMCHIPAccessorySetupPayload *)self setupCode];
  [v11 encodeObject:v4 forKey:@"HMCASP.ck.setupCode"];

  [v11 encodeBool:-[HMCHIPAccessorySetupPayload hasShortDiscriminator](self forKey:{"hasShortDiscriminator"), @"HMCASP.ck.hasShortDiscriminator"}];
  v5 = [(HMCHIPAccessorySetupPayload *)self discriminator];
  [v11 encodeObject:v5 forKey:@"HMCASP.ck.discriminator"];

  v6 = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];
  [v11 encodeObject:v6 forKey:@"HMCASP.ck.setupPayloadString"];

  v7 = [(HMCHIPAccessorySetupPayload *)self vendorID];
  [v11 encodeObject:v7 forKey:@"HMCASP.ck.vendorID"];

  v8 = [(HMCHIPAccessorySetupPayload *)self productID];
  [v11 encodeObject:v8 forKey:@"HMCASP.ck.productID"];

  v9 = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];
  [v11 encodeObject:v9 forKey:@"HMCASP.ck.deviceTypeID"];

  v10 = [(HMCHIPAccessorySetupPayload *)self serialNumber];
  [v11 encodeObject:v10 forKey:@"HMCASP.ck.serialNumber"];

  [v11 encodeBool:-[HMCHIPAccessorySetupPayload requiresCustomFlow](self forKey:{"requiresCustomFlow"), @"HMCASP.ck.requiresCustomFlow"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableCHIPAccessorySetupPayload allocWithZone:a3];
  v5 = [(HMCHIPAccessorySetupPayload *)self setupCode];
  v6 = [(HMCHIPAccessorySetupPayload *)self discriminator];
  v7 = [(HMCHIPAccessorySetupPayload *)v4 initWithSetupCode:v5 discriminator:v6];

  v8 = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];
  [(HMCHIPAccessorySetupPayload *)v7 setSetupPayloadString:v8];

  v9 = [(HMCHIPAccessorySetupPayload *)self vendorID];
  [(HMCHIPAccessorySetupPayload *)v7 setVendorID:v9];

  v10 = [(HMCHIPAccessorySetupPayload *)self productID];
  [(HMCHIPAccessorySetupPayload *)v7 setProductID:v10];

  v11 = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];
  [(HMCHIPAccessorySetupPayload *)v7 setDeviceTypeID:v11];

  v12 = [(HMCHIPAccessorySetupPayload *)self serialNumber];
  [(HMCHIPAccessorySetupPayload *)v7 setSerialNumber:v12];

  [(HMCHIPAccessorySetupPayload *)v7 setRequiresCustomFlow:[(HMCHIPAccessorySetupPayload *)self requiresCustomFlow]];
  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v2 = [(HMCHIPAccessorySetupPayload *)self setupCode];
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
  if (v6)
  {
    v7 = [(HMCHIPAccessorySetupPayload *)self setupCode];
    v8 = [v6 setupCode];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(HMCHIPAccessorySetupPayload *)self discriminator];
      v10 = [v6 discriminator];
      if (![v9 isEqualToNumber:v10])
      {
        goto LABEL_12;
      }

      v11 = [(HMCHIPAccessorySetupPayload *)self setupPayloadString];
      v12 = [v6 setupPayloadString];
      v13 = HMFEqualObjects();

      if (!v13)
      {
        goto LABEL_12;
      }

      v14 = [(HMCHIPAccessorySetupPayload *)self vendorID];
      v15 = [v6 vendorID];
      v16 = HMFEqualObjects();

      if (!v16)
      {
        goto LABEL_12;
      }

      v17 = [(HMCHIPAccessorySetupPayload *)self productID];
      v18 = [v6 productID];
      v19 = HMFEqualObjects();

      if (!v19)
      {
        goto LABEL_12;
      }

      v20 = [(HMCHIPAccessorySetupPayload *)self serialNumber];
      v21 = [v6 serialNumber];
      v22 = HMFEqualObjects();

      if (!v22)
      {
        goto LABEL_12;
      }

      v23 = [(HMCHIPAccessorySetupPayload *)self requiresCustomFlow];
      if (v23 == [v6 requiresCustomFlow])
      {
        v26 = [(HMCHIPAccessorySetupPayload *)self deviceTypeID];
        v27 = [v6 deviceTypeID];
        v24 = HMFEqualObjects();
      }

      else
      {
LABEL_12:
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (HMCHIPAccessorySetupPayload)initWithSetupCode:(id)a3 discriminator:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    [(HMUserCloudShareRepairInfo *)v13 .cxx_destruct];
    return result;
  }

  v15.receiver = self;
  v15.super_class = HMCHIPAccessorySetupPayload;
  v10 = [(HMCHIPAccessorySetupPayload *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_setupCode, a3);
    objc_storeStrong(&v11->_discriminator, a4);
  }

  return v11;
}

@end