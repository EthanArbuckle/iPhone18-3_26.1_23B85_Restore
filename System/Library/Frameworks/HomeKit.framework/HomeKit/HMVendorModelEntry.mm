@interface HMVendorModelEntry
+ (id)shortDescription;
+ (id)vendorModelEntryFromDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (HMVendorModelEntry)initWithManufacturer:(id)manufacturer model:(id)model appBundleID:(id)d appStoreID:(id)iD firmwareVersion:(id)version productData:(id)data productDataAlternates:(id)alternates;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation HMVendorModelEntry

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  manufacturer = [(HMVendorModelEntry *)self manufacturer];
  v6 = [v4 initWithName:@"Manufacturer" value:manufacturer];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  model = [(HMVendorModelEntry *)self model];
  v9 = [v7 initWithName:@"Model" value:model];
  [array addObject:v9];

  appBundleID = [(HMVendorModelEntry *)self appBundleID];

  if (appBundleID)
  {
    v11 = objc_alloc(MEMORY[0x1E69A29C8]);
    appBundleID2 = [(HMVendorModelEntry *)self appBundleID];
    v13 = [v11 initWithName:@"App Bundle ID" value:appBundleID2];
    [array addObject:v13];
  }

  appStoreID = [(HMVendorModelEntry *)self appStoreID];

  if (appStoreID)
  {
    v15 = objc_alloc(MEMORY[0x1E69A29C8]);
    appStoreID2 = [(HMVendorModelEntry *)self appStoreID];
    v17 = [v15 initWithName:@"App Store ID" value:appStoreID2];
    [array addObject:v17];
  }

  firmwareVersion = [(HMVendorModelEntry *)self firmwareVersion];

  if (firmwareVersion)
  {
    v19 = objc_alloc(MEMORY[0x1E69A29C8]);
    firmwareVersion2 = [(HMVendorModelEntry *)self firmwareVersion];
    v21 = [v19 initWithName:@"Firmware Version" value:firmwareVersion2];
    [array addObject:v21];
  }

  productData = [(HMVendorModelEntry *)self productData];

  if (productData)
  {
    v23 = objc_alloc(MEMORY[0x1E69A29C8]);
    productData2 = [(HMVendorModelEntry *)self productData];
    v25 = [v23 initWithName:@"Product Data" value:productData2];
    [array addObject:v25];
  }

  productDataAlternates = [(HMVendorModelEntry *)self productDataAlternates];

  if (productDataAlternates)
  {
    v27 = objc_alloc(MEMORY[0x1E69A29C8]);
    productDataAlternates2 = [(HMVendorModelEntry *)self productDataAlternates];
    v29 = [v27 initWithName:@"Product Data Alternates" value:productDataAlternates2];
    [array addObject:v29];
  }

  v30 = [array copy];

  return v30;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  manufacturer = [(HMVendorModelEntry *)self manufacturer];
  v4 = [manufacturer hash];
  model = [(HMVendorModelEntry *)self model];
  v6 = [model hash];

  return v6 ^ v4;
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
  v7 = v6;
  if (v6)
  {
    manufacturer = [v6 manufacturer];
    manufacturer2 = [(HMVendorModelEntry *)self manufacturer];
    if ([manufacturer isEqualToString:manufacturer2])
    {
      model = [v7 model];
      model2 = [(HMVendorModelEntry *)self model];
      if (![model isEqualToString:model2])
      {
        goto LABEL_14;
      }

      appBundleID = [v7 appBundleID];
      appBundleID2 = [(HMVendorModelEntry *)self appBundleID];
      v14 = HMFEqualObjects();

      if (!v14)
      {
        goto LABEL_14;
      }

      appStoreID = [v7 appStoreID];
      appStoreID2 = [(HMVendorModelEntry *)self appStoreID];
      v17 = HMFEqualObjects();

      if (!v17)
      {
        goto LABEL_14;
      }

      firmwareVersion = [v7 firmwareVersion];
      firmwareVersion2 = [(HMVendorModelEntry *)self firmwareVersion];
      v20 = HMFEqualObjects();

      if (!v20)
      {
        goto LABEL_14;
      }

      productData = [v7 productData];
      productData2 = [(HMVendorModelEntry *)self productData];
      v23 = HMFEqualObjects();

      if (v23)
      {
        productDataAlternates = [v7 productDataAlternates];
        productDataAlternates2 = [(HMVendorModelEntry *)self productDataAlternates];
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

- (HMVendorModelEntry)initWithManufacturer:(id)manufacturer model:(id)model appBundleID:(id)d appStoreID:(id)iD firmwareVersion:(id)version productData:(id)data productDataAlternates:(id)alternates
{
  manufacturerCopy = manufacturer;
  modelCopy = model;
  dCopy = d;
  iDCopy = iD;
  versionCopy = version;
  dataCopy = data;
  alternatesCopy = alternates;
  if (!manufacturerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!modelCopy)
  {
LABEL_7:
    v39 = _HMFPreconditionFailure();
    return [(HMVendorModelEntry *)v39 dictionaryRepresentation];
  }

  v22 = alternatesCopy;
  v41.receiver = self;
  v41.super_class = HMVendorModelEntry;
  v23 = [(HMVendorModelEntry *)&v41 init];
  if (v23)
  {
    v24 = [manufacturerCopy copy];
    manufacturer = v23->_manufacturer;
    v23->_manufacturer = v24;

    v26 = [modelCopy copy];
    model = v23->_model;
    v23->_model = v26;

    v28 = [dCopy copy];
    appBundleID = v23->_appBundleID;
    v23->_appBundleID = v28;

    v30 = [iDCopy copy];
    appStoreID = v23->_appStoreID;
    v23->_appStoreID = v30;

    v32 = [versionCopy copy];
    firmwareVersion = v23->_firmwareVersion;
    v23->_firmwareVersion = v32;

    v34 = [dataCopy copy];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  manufacturer = [(HMVendorModelEntry *)self manufacturer];
  [dictionary setObject:manufacturer forKeyedSubscript:@"Manufacturer"];

  model = [(HMVendorModelEntry *)self model];
  [dictionary setObject:model forKeyedSubscript:@"Model"];

  appBundleID = [(HMVendorModelEntry *)self appBundleID];

  if (appBundleID)
  {
    appBundleID2 = [(HMVendorModelEntry *)self appBundleID];
    [dictionary setObject:appBundleID2 forKeyedSubscript:@"AppBundleID"];
  }

  appStoreID = [(HMVendorModelEntry *)self appStoreID];

  if (appStoreID)
  {
    appStoreID2 = [(HMVendorModelEntry *)self appStoreID];
    [dictionary setObject:appStoreID2 forKeyedSubscript:@"AppStoreID"];
  }

  firmwareVersion = [(HMVendorModelEntry *)self firmwareVersion];

  if (firmwareVersion)
  {
    firmwareVersion2 = [(HMVendorModelEntry *)self firmwareVersion];
    [dictionary setObject:firmwareVersion2 forKeyedSubscript:@"FirmwareVersion"];
  }

  productData = [(HMVendorModelEntry *)self productData];

  if (productData)
  {
    productData2 = [(HMVendorModelEntry *)self productData];
    [dictionary setObject:productData2 forKeyedSubscript:@"ProductData"];
  }

  productDataAlternates = [(HMVendorModelEntry *)self productDataAlternates];

  if (productDataAlternates)
  {
    productDataAlternates2 = [(HMVendorModelEntry *)self productDataAlternates];
    [dictionary setObject:productDataAlternates2 forKeyedSubscript:@"ProductDataAlternates"];
  }

  v16 = [dictionary copy];

  return v16;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)vendorModelEntryFromDictionaryRepresentation:(id)representation
{
  v24 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy hmf_stringForKey:@"Manufacturer"];
  v6 = [representationCopy hmf_stringForKey:@"Model"];
  v7 = [representationCopy hmf_stringForKey:@"AppBundleID"];
  v8 = [representationCopy hmf_stringForKey:@"AppStoreID"];
  v9 = [representationCopy hmf_stringForKey:@"FirmwareVersion"];
  v10 = [representationCopy hmf_stringForKey:@"ProductData"];
  v11 = [representationCopy hmf_arrayForKey:@"ProductDataAlternates"];
  if (v5 && v6)
  {
    v12 = [[HMVendorModelEntry alloc] initWithManufacturer:v5 model:v6 appBundleID:v7 appStoreID:v8 firmwareVersion:v9 productData:v10 productDataAlternates:v11];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v15 = v18 = v7;
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = representationCopy;
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