@interface HMCHIPVendorMetadataProduct
+ (id)productFromDictionaryRepresentation:(id)a3;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCHIPVendorMetadataProduct)initWithIdentifier:(id)a3 categoryNumber:(id)a4 deviceTypeID:(id)a5 name:(id)a6 label:(id)a7 installationGuideURL:(id)a8;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation HMCHIPVendorMetadataProduct

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMCHIPVendorMetadataProduct *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMCHIPVendorMetadataProduct *)self categoryNumber];
  v9 = [v7 initWithName:@"Category" value:v8];
  [v3 addObject:v9];

  v10 = [(HMCHIPVendorMetadataProduct *)self deviceTypeID];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E69A29C8]);
    v12 = [(HMCHIPVendorMetadataProduct *)self deviceTypeID];
    v13 = [v11 initWithName:@"Device Type" value:v12];
    [v3 addObject:v13];
  }

  v14 = [(HMCHIPVendorMetadataProduct *)self name];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69A29C8]);
    v16 = [(HMCHIPVendorMetadataProduct *)self name];
    v17 = [v15 initWithName:@"Name" value:v16];
    [v3 addObject:v17];
  }

  v18 = [(HMCHIPVendorMetadataProduct *)self label];

  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x1E69A29C8]);
    v20 = [(HMCHIPVendorMetadataProduct *)self label];
    v21 = [v19 initWithName:@"Label" value:v20];
    [v3 addObject:v21];
  }

  v22 = [(HMCHIPVendorMetadataProduct *)self installationGuideURL];

  if (v22)
  {
    v23 = objc_alloc(MEMORY[0x1E69A29C8]);
    v24 = [(HMCHIPVendorMetadataProduct *)self installationGuideURL];
    v25 = [v23 initWithName:@"Installation Guide URL" value:v24];
    [v3 addObject:v25];
  }

  v26 = [v3 copy];

  return v26;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  v2 = [(HMCHIPVendorMetadataProduct *)self identifier];
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 identifier];
    v9 = [(HMCHIPVendorMetadataProduct *)self identifier];
    if ([v8 isEqualToNumber:v9])
    {
      v10 = [v7 categoryNumber];
      v11 = [(HMCHIPVendorMetadataProduct *)self categoryNumber];
      if (![v10 isEqualToNumber:v11])
      {
        goto LABEL_13;
      }

      v12 = [v7 deviceTypeID];
      v13 = [(HMCHIPVendorMetadataProduct *)self deviceTypeID];
      v14 = HMFEqualObjects();

      if (!v14)
      {
        goto LABEL_13;
      }

      v15 = [v7 name];
      v16 = [(HMCHIPVendorMetadataProduct *)self name];
      v17 = HMFEqualObjects();

      if (!v17)
      {
        goto LABEL_13;
      }

      v18 = [v7 label];
      v19 = [(HMCHIPVendorMetadataProduct *)self label];
      v20 = HMFEqualObjects();

      if (v20)
      {
        v21 = [v7 installationGuideURL];
        v22 = [(HMCHIPVendorMetadataProduct *)self installationGuideURL];
        v23 = HMFEqualObjects();
      }

      else
      {
LABEL_13:
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (HMCHIPVendorMetadataProduct)initWithIdentifier:(id)a3 categoryNumber:(id)a4 deviceTypeID:(id)a5 name:(id)a6 label:(id)a7 installationGuideURL:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v27 = a6;
  obj = a8;
  v26 = a7;
  v18 = a8;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v16)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v17)
  {
LABEL_9:
    v23 = _HMFPreconditionFailure();
    return [(HMCHIPVendorMetadataProduct *)v23 dictionaryRepresentation];
  }

  v19 = v18;
  v28.receiver = self;
  v28.super_class = HMCHIPVendorMetadataProduct;
  v20 = [(HMCHIPVendorMetadataProduct *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, a3);
    objc_storeStrong(&v21->_categoryNumber, a4);
    objc_storeStrong(&v21->_deviceTypeID, a5);
    objc_storeStrong(&v21->_label, a7);
    objc_storeStrong(&v21->_name, a6);
    objc_storeStrong(&v21->_installationGuideURL, obj);
  }

  return v21;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(HMCHIPVendorMetadataProduct *)self identifier];
  [v3 setObject:v4 forKeyedSubscript:@"ProductID"];

  v5 = [(HMCHIPVendorMetadataProduct *)self categoryNumber];
  [v3 setObject:v5 forKeyedSubscript:@"Category"];

  v6 = [(HMCHIPVendorMetadataProduct *)self deviceTypeID];

  if (v6)
  {
    v7 = [(HMCHIPVendorMetadataProduct *)self deviceTypeID];
    [v3 setObject:v7 forKeyedSubscript:@"DeviceType"];
  }

  v8 = [(HMCHIPVendorMetadataProduct *)self name];
  [v3 setObject:v8 forKeyedSubscript:@"Name"];

  v9 = [(HMCHIPVendorMetadataProduct *)self label];
  [v3 setObject:v9 forKeyedSubscript:@"Label"];

  v10 = [(HMCHIPVendorMetadataProduct *)self installationGuideURL];
  v11 = [v10 absoluteString];
  [v3 setObject:v11 forKeyedSubscript:@"InstallationGuideURL"];

  v12 = [v3 copy];

  return v12;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)productFromDictionaryRepresentation:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hmf_numberForKey:@"ProductID"];
  v6 = [v4 hmf_numberForKey:@"Category"];
  v7 = [v4 hmf_numberForKey:@"DeviceType"];
  v8 = [v4 hmf_stringForKey:@"Label"];
  v9 = [v4 hmf_stringForKey:@"Name"];
  v10 = [v4 hmf_stringForKey:@"InstallationGuideURL"];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (v6 && v7)
  {
    v12 = [[HMCHIPVendorMetadataProduct alloc] initWithIdentifier:v5 categoryNumber:v6 deviceTypeID:v7 name:v9 label:v8 installationGuideURL:v11];
    goto LABEL_11;
  }

LABEL_8:
  context = objc_autoreleasePoolPush();
  v13 = a1;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v15 = v18 = v8;
    *buf = 138543618;
    v21 = v15;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@productFromDictionaryRepresentation cannot build object from dictionary %@", buf, 0x16u);

    v8 = v18;
  }

  objc_autoreleasePoolPop(context);
  v12 = 0;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

@end