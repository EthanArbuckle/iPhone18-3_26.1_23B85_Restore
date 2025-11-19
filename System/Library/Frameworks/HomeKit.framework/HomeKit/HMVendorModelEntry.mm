@interface HMVendorModelEntry
+ (id)shortDescription;
+ (id)vendorModelEntryFromDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMVendorModelEntry)initWithManufacturer:(id)a3 model:(id)a4 appBundleID:(id)a5 appStoreID:(id)a6 firmwareVersion:(id)a7 productData:(id)a8 productDataAlternates:(id)a9;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation HMVendorModelEntry

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMVendorModelEntry *)self manufacturer];
  v6 = [v4 initWithName:@"Manufacturer" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMVendorModelEntry *)self model];
  v9 = [v7 initWithName:@"Model" value:v8];
  [v3 addObject:v9];

  v10 = [(HMVendorModelEntry *)self appBundleID];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E69A29C8]);
    v12 = [(HMVendorModelEntry *)self appBundleID];
    v13 = [v11 initWithName:@"App Bundle ID" value:v12];
    [v3 addObject:v13];
  }

  v14 = [(HMVendorModelEntry *)self appStoreID];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69A29C8]);
    v16 = [(HMVendorModelEntry *)self appStoreID];
    v17 = [v15 initWithName:@"App Store ID" value:v16];
    [v3 addObject:v17];
  }

  v18 = [(HMVendorModelEntry *)self firmwareVersion];

  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x1E69A29C8]);
    v20 = [(HMVendorModelEntry *)self firmwareVersion];
    v21 = [v19 initWithName:@"Firmware Version" value:v20];
    [v3 addObject:v21];
  }

  v22 = [(HMVendorModelEntry *)self productData];

  if (v22)
  {
    v23 = objc_alloc(MEMORY[0x1E69A29C8]);
    v24 = [(HMVendorModelEntry *)self productData];
    v25 = [v23 initWithName:@"Product Data" value:v24];
    [v3 addObject:v25];
  }

  v26 = [(HMVendorModelEntry *)self productDataAlternates];

  if (v26)
  {
    v27 = objc_alloc(MEMORY[0x1E69A29C8]);
    v28 = [(HMVendorModelEntry *)self productDataAlternates];
    v29 = [v27 initWithName:@"Product Data Alternates" value:v28];
    [v3 addObject:v29];
  }

  v30 = [v3 copy];

  return v30;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  v3 = [(HMVendorModelEntry *)self manufacturer];
  v4 = [v3 hash];
  v5 = [(HMVendorModelEntry *)self model];
  v6 = [v5 hash];

  return v6 ^ v4;
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
    v8 = [v6 manufacturer];
    v9 = [(HMVendorModelEntry *)self manufacturer];
    if ([v8 isEqualToString:v9])
    {
      v10 = [v7 model];
      v11 = [(HMVendorModelEntry *)self model];
      if (![v10 isEqualToString:v11])
      {
        goto LABEL_14;
      }

      v12 = [v7 appBundleID];
      v13 = [(HMVendorModelEntry *)self appBundleID];
      v14 = HMFEqualObjects();

      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = [v7 appStoreID];
      v16 = [(HMVendorModelEntry *)self appStoreID];
      v17 = HMFEqualObjects();

      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = [v7 firmwareVersion];
      v19 = [(HMVendorModelEntry *)self firmwareVersion];
      v20 = HMFEqualObjects();

      if (!v20)
      {
        goto LABEL_14;
      }

      v21 = [v7 productData];
      v22 = [(HMVendorModelEntry *)self productData];
      v23 = HMFEqualObjects();

      if (v23)
      {
        v24 = [v7 productDataAlternates];
        v25 = [(HMVendorModelEntry *)self productDataAlternates];
        v26 = HMFEqualObjects();
      }

      else
      {
LABEL_14:
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (HMVendorModelEntry)initWithManufacturer:(id)a3 model:(id)a4 appBundleID:(id)a5 appStoreID:(id)a6 firmwareVersion:(id)a7 productData:(id)a8 productDataAlternates:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v16)
  {
LABEL_7:
    v39 = _HMFPreconditionFailure();
    return [(HMVendorModelEntry *)v39 dictionaryRepresentation];
  }

  v22 = v21;
  v41.receiver = self;
  v41.super_class = HMVendorModelEntry;
  v23 = [(HMVendorModelEntry *)&v41 init];
  if (v23)
  {
    v24 = [v15 copy];
    manufacturer = v23->_manufacturer;
    v23->_manufacturer = v24;

    v26 = [v16 copy];
    model = v23->_model;
    v23->_model = v26;

    v28 = [v17 copy];
    appBundleID = v23->_appBundleID;
    v23->_appBundleID = v28;

    v30 = [v18 copy];
    appStoreID = v23->_appStoreID;
    v23->_appStoreID = v30;

    v32 = [v19 copy];
    firmwareVersion = v23->_firmwareVersion;
    v23->_firmwareVersion = v32;

    v34 = [v20 copy];
    productData = v23->_productData;
    v23->_productData = v34;

    v36 = [v22 copy];
    productDataAlternates = v23->_productDataAlternates;
    v23->_productDataAlternates = v36;
  }

  return v23;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(HMVendorModelEntry *)self manufacturer];
  [v3 setObject:v4 forKeyedSubscript:@"Manufacturer"];

  v5 = [(HMVendorModelEntry *)self model];
  [v3 setObject:v5 forKeyedSubscript:@"Model"];

  v6 = [(HMVendorModelEntry *)self appBundleID];

  if (v6)
  {
    v7 = [(HMVendorModelEntry *)self appBundleID];
    [v3 setObject:v7 forKeyedSubscript:@"AppBundleID"];
  }

  v8 = [(HMVendorModelEntry *)self appStoreID];

  if (v8)
  {
    v9 = [(HMVendorModelEntry *)self appStoreID];
    [v3 setObject:v9 forKeyedSubscript:@"AppStoreID"];
  }

  v10 = [(HMVendorModelEntry *)self firmwareVersion];

  if (v10)
  {
    v11 = [(HMVendorModelEntry *)self firmwareVersion];
    [v3 setObject:v11 forKeyedSubscript:@"FirmwareVersion"];
  }

  v12 = [(HMVendorModelEntry *)self productData];

  if (v12)
  {
    v13 = [(HMVendorModelEntry *)self productData];
    [v3 setObject:v13 forKeyedSubscript:@"ProductData"];
  }

  v14 = [(HMVendorModelEntry *)self productDataAlternates];

  if (v14)
  {
    v15 = [(HMVendorModelEntry *)self productDataAlternates];
    [v3 setObject:v15 forKeyedSubscript:@"ProductDataAlternates"];
  }

  v16 = [v3 copy];

  return v16;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)vendorModelEntryFromDictionaryRepresentation:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hmf_stringForKey:@"Manufacturer"];
  v6 = [v4 hmf_stringForKey:@"Model"];
  v7 = [v4 hmf_stringForKey:@"AppBundleID"];
  v8 = [v4 hmf_stringForKey:@"AppStoreID"];
  v9 = [v4 hmf_stringForKey:@"FirmwareVersion"];
  v10 = [v4 hmf_stringForKey:@"ProductData"];
  v11 = [v4 hmf_arrayForKey:@"ProductDataAlternates"];
  if (v5 && v6)
  {
    v12 = [[HMVendorModelEntry alloc] initWithManufacturer:v5 model:v6 appBundleID:v7 appStoreID:v8 firmwareVersion:v9 productData:v10 productDataAlternates:v11];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v15 = v18 = v7;
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@vendorModelEntryFromDictionaryRepresentation cannot build object from dictionary %@", buf, 0x16u);

      v7 = v18;
    }

    objc_autoreleasePoolPop(context);
    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

@end