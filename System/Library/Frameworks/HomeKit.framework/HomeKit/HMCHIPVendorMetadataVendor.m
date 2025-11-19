@interface HMCHIPVendorMetadataVendor
+ (id)shortDescription;
+ (id)vendorFromDictionaryRepresentation:(id)a3;
- (HMCHIPVendorMetadataVendor)initWithIdentifier:(id)a3 name:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
@end

@implementation HMCHIPVendorMetadataVendor

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMCHIPVendorMetadataVendor *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:v5];
  [v3 addObject:v6];

  v7 = [(HMCHIPVendorMetadataVendor *)self name];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69A29C8]);
    v9 = [(HMCHIPVendorMetadataVendor *)self name];
    v10 = [v8 initWithName:@"Name" value:v9];
    [v3 addObject:v10];
  }

  v11 = [v3 copy];

  return v11;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMCHIPVendorMetadataVendor allocWithZone:a3];
  v5 = [(HMCHIPVendorMetadataVendor *)self identifier];
  v6 = [(HMCHIPVendorMetadataVendor *)self name];
  v7 = [(HMCHIPVendorMetadataVendor *)v4 initWithIdentifier:v5 name:v6];

  return v7;
}

- (HMCHIPVendorMetadataVendor)initWithIdentifier:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v8;
    v15.receiver = self;
    v15.super_class = HMCHIPVendorMetadataVendor;
    v10 = [(HMCHIPVendorMetadataVendor *)&v15 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_identifier, a3);
      objc_storeStrong(&v11->_name, a4);
    }

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return [(HMCHIPVendorMetadataVendor *)v13 dictionaryRepresentation];
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(HMCHIPVendorMetadataVendor *)self identifier];
  [v3 setObject:v4 forKeyedSubscript:@"VendorID"];

  v5 = [(HMCHIPVendorMetadataVendor *)self name];
  [v3 setObject:v5 forKeyedSubscript:@"Name"];

  v6 = [v3 copy];

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)vendorFromDictionaryRepresentation:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hmf_numberForKey:@"VendorID"];
  v6 = [v4 hmf_stringForKey:@"Name"];
  if (v5)
  {
    v7 = [[HMCHIPVendorMetadataVendor alloc] initWithIdentifier:v5 name:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@vendorFromDictionaryRepresentation cannot build object from dictionary: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

@end