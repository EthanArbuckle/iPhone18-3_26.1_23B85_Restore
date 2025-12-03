@interface HMCHIPVendorMetadataVendor
+ (id)shortDescription;
+ (id)vendorFromDictionaryRepresentation:(id)representation;
- (HMCHIPVendorMetadataVendor)initWithIdentifier:(id)identifier name:(id)name;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
@end

@implementation HMCHIPVendorMetadataVendor

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  identifier = [(HMCHIPVendorMetadataVendor *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:identifier];
  [array addObject:v6];

  name = [(HMCHIPVendorMetadataVendor *)self name];

  if (name)
  {
    v8 = objc_alloc(MEMORY[0x1E69A29C8]);
    name2 = [(HMCHIPVendorMetadataVendor *)self name];
    v10 = [v8 initWithName:@"Name" value:name2];
    [array addObject:v10];
  }

  v11 = [array copy];

  return v11;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMCHIPVendorMetadataVendor allocWithZone:zone];
  identifier = [(HMCHIPVendorMetadataVendor *)self identifier];
  name = [(HMCHIPVendorMetadataVendor *)self name];
  v7 = [(HMCHIPVendorMetadataVendor *)v4 initWithIdentifier:identifier name:name];

  return v7;
}

- (HMCHIPVendorMetadataVendor)initWithIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if (identifierCopy)
  {
    v9 = nameCopy;
    v15.receiver = self;
    v15.super_class = HMCHIPVendorMetadataVendor;
    v10 = [(HMCHIPVendorMetadataVendor *)&v15 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_identifier, identifier);
      objc_storeStrong(&v11->_name, name);
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identifier = [(HMCHIPVendorMetadataVendor *)self identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"VendorID"];

  name = [(HMCHIPVendorMetadataVendor *)self name];
  [dictionary setObject:name forKeyedSubscript:@"Name"];

  v6 = [dictionary copy];

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)vendorFromDictionaryRepresentation:(id)representation
{
  v18 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy hmf_numberForKey:@"VendorID"];
  v6 = [representationCopy hmf_stringForKey:@"Name"];
  if (v5)
  {
    v7 = [[HMCHIPVendorMetadataVendor alloc] initWithIdentifier:v5 name:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = representationCopy;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@vendorFromDictionaryRepresentation cannot build object from dictionary: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

@end