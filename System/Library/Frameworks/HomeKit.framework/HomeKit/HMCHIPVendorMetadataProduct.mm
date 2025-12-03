@interface HMCHIPVendorMetadataProduct
+ (id)productFromDictionaryRepresentation:(id)representation;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCHIPVendorMetadataProduct)initWithIdentifier:(id)identifier categoryNumber:(id)number deviceTypeID:(id)d name:(id)name label:(id)label installationGuideURL:(id)l;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation HMCHIPVendorMetadataProduct

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  identifier = [(HMCHIPVendorMetadataProduct *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:identifier];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  categoryNumber = [(HMCHIPVendorMetadataProduct *)self categoryNumber];
  v9 = [v7 initWithName:@"Category" value:categoryNumber];
  [array addObject:v9];

  deviceTypeID = [(HMCHIPVendorMetadataProduct *)self deviceTypeID];

  if (deviceTypeID)
  {
    v11 = objc_alloc(MEMORY[0x1E69A29C8]);
    deviceTypeID2 = [(HMCHIPVendorMetadataProduct *)self deviceTypeID];
    v13 = [v11 initWithName:@"Device Type" value:deviceTypeID2];
    [array addObject:v13];
  }

  name = [(HMCHIPVendorMetadataProduct *)self name];

  if (name)
  {
    v15 = objc_alloc(MEMORY[0x1E69A29C8]);
    name2 = [(HMCHIPVendorMetadataProduct *)self name];
    v17 = [v15 initWithName:@"Name" value:name2];
    [array addObject:v17];
  }

  label = [(HMCHIPVendorMetadataProduct *)self label];

  if (label)
  {
    v19 = objc_alloc(MEMORY[0x1E69A29C8]);
    label2 = [(HMCHIPVendorMetadataProduct *)self label];
    v21 = [v19 initWithName:@"Label" value:label2];
    [array addObject:v21];
  }

  installationGuideURL = [(HMCHIPVendorMetadataProduct *)self installationGuideURL];

  if (installationGuideURL)
  {
    v23 = objc_alloc(MEMORY[0x1E69A29C8]);
    installationGuideURL2 = [(HMCHIPVendorMetadataProduct *)self installationGuideURL];
    v25 = [v23 initWithName:@"Installation Guide URL" value:installationGuideURL2];
    [array addObject:v25];
  }

  v26 = [array copy];

  return v26;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  identifier = [(HMCHIPVendorMetadataProduct *)self identifier];
  v3 = [identifier hash];

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
  v7 = v6;
  if (v6)
  {
    identifier = [v6 identifier];
    identifier2 = [(HMCHIPVendorMetadataProduct *)self identifier];
    if ([identifier isEqualToNumber:identifier2])
    {
      categoryNumber = [v7 categoryNumber];
      categoryNumber2 = [(HMCHIPVendorMetadataProduct *)self categoryNumber];
      if (![categoryNumber isEqualToNumber:categoryNumber2])
      {
        goto LABEL_13;
      }

      deviceTypeID = [v7 deviceTypeID];
      deviceTypeID2 = [(HMCHIPVendorMetadataProduct *)self deviceTypeID];
      v14 = HMFEqualObjects();

      if (!v14)
      {
        goto LABEL_13;
      }

      name = [v7 name];
      name2 = [(HMCHIPVendorMetadataProduct *)self name];
      v17 = HMFEqualObjects();

      if (!v17)
      {
        goto LABEL_13;
      }

      label = [v7 label];
      label2 = [(HMCHIPVendorMetadataProduct *)self label];
      v20 = HMFEqualObjects();

      if (v20)
      {
        installationGuideURL = [v7 installationGuideURL];
        installationGuideURL2 = [(HMCHIPVendorMetadataProduct *)self installationGuideURL];
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

- (HMCHIPVendorMetadataProduct)initWithIdentifier:(id)identifier categoryNumber:(id)number deviceTypeID:(id)d name:(id)name label:(id)label installationGuideURL:(id)l
{
  identifierCopy = identifier;
  numberCopy = number;
  dCopy = d;
  nameCopy = name;
  obj = l;
  labelCopy = label;
  lCopy = l;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!numberCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dCopy)
  {
LABEL_9:
    v23 = _HMFPreconditionFailure();
    return [(HMCHIPVendorMetadataProduct *)v23 dictionaryRepresentation];
  }

  v19 = lCopy;
  v28.receiver = self;
  v28.super_class = HMCHIPVendorMetadataProduct;
  v20 = [(HMCHIPVendorMetadataProduct *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, identifier);
    objc_storeStrong(&v21->_categoryNumber, number);
    objc_storeStrong(&v21->_deviceTypeID, d);
    objc_storeStrong(&v21->_label, label);
    objc_storeStrong(&v21->_name, name);
    objc_storeStrong(&v21->_installationGuideURL, obj);
  }

  return v21;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identifier = [(HMCHIPVendorMetadataProduct *)self identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"ProductID"];

  categoryNumber = [(HMCHIPVendorMetadataProduct *)self categoryNumber];
  [dictionary setObject:categoryNumber forKeyedSubscript:@"Category"];

  deviceTypeID = [(HMCHIPVendorMetadataProduct *)self deviceTypeID];

  if (deviceTypeID)
  {
    deviceTypeID2 = [(HMCHIPVendorMetadataProduct *)self deviceTypeID];
    [dictionary setObject:deviceTypeID2 forKeyedSubscript:@"DeviceType"];
  }

  name = [(HMCHIPVendorMetadataProduct *)self name];
  [dictionary setObject:name forKeyedSubscript:@"Name"];

  label = [(HMCHIPVendorMetadataProduct *)self label];
  [dictionary setObject:label forKeyedSubscript:@"Label"];

  installationGuideURL = [(HMCHIPVendorMetadataProduct *)self installationGuideURL];
  absoluteString = [installationGuideURL absoluteString];
  [dictionary setObject:absoluteString forKeyedSubscript:@"InstallationGuideURL"];

  v12 = [dictionary copy];

  return v12;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)productFromDictionaryRepresentation:(id)representation
{
  v24 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy hmf_numberForKey:@"ProductID"];
  v6 = [representationCopy hmf_numberForKey:@"Category"];
  v7 = [representationCopy hmf_numberForKey:@"DeviceType"];
  v8 = [representationCopy hmf_stringForKey:@"Label"];
  v9 = [representationCopy hmf_stringForKey:@"Name"];
  v10 = [representationCopy hmf_stringForKey:@"InstallationGuideURL"];
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
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v15 = v18 = v8;
    *buf = 138543618;
    v21 = v15;
    v22 = 2112;
    v23 = representationCopy;
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