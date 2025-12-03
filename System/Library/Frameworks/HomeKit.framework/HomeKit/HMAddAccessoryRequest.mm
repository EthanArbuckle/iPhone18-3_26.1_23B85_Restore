@interface HMAddAccessoryRequest
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessorySetupPayload)payloadWithOwnershipToken:(HMAccessoryOwnershipToken *)ownershipToken;
- (HMAccessorySetupPayload)payloadWithURL:(NSURL *)setupPayloadURL ownershipToken:(HMAccessoryOwnershipToken *)ownershipToken;
- (HMAddAccessoryRequest)init;
- (HMAddAccessoryRequest)initWithCoder:(id)coder;
- (HMAddAccessoryRequest)initWithIdentifier:(id)identifier accessoryName:(id)name accessoryCategory:(id)category;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAddAccessoryRequest

- (NSArray)attributeDescriptions
{
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  requestIdentifier = [(HMAddAccessoryRequest *)self requestIdentifier];
  v20 = [v3 initWithName:@"ID" value:requestIdentifier];
  v22[0] = v20;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  home = [(HMAddAccessoryRequest *)self home];
  name = [home name];
  v7 = [v4 initWithName:@"Home Name" value:name];
  v22[1] = v7;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryName = [(HMAddAccessoryRequest *)self accessoryName];
  v10 = [v8 initWithName:@"Accessory Name" value:accessoryName];
  v22[2] = v10;
  v11 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryCategory = [(HMAddAccessoryRequest *)self accessoryCategory];
  v13 = [v11 initWithName:@"Accessory Category" value:accessoryCategory];
  v22[3] = v13;
  v14 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMAddAccessoryRequest *)self requiresSetupPayloadURL];
  v15 = HMFBooleanToString();
  v16 = [v14 initWithName:@"Requires Setup Payload URL" value:v15];
  v22[4] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  requestIdentifier = [(HMAddAccessoryRequest *)self requestIdentifier];
  v3 = [requestIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
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
    if (v6)
    {
      requestIdentifier = [(HMAddAccessoryRequest *)self requestIdentifier];
      requestIdentifier2 = [(HMAddAccessoryRequest *)v6 requestIdentifier];
      v9 = [requestIdentifier hmf_isEqualToUUID:requestIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMAddAccessoryRequest)initWithIdentifier:(id)identifier accessoryName:(id)name accessoryCategory:(id)category
{
  identifierCopy = identifier;
  nameCopy = name;
  categoryCopy = category;
  v20.receiver = self;
  v20.super_class = HMAddAccessoryRequest;
  v11 = [(HMAddAccessoryRequest *)&v20 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:identifierCopy];
    requestIdentifier = v11->_requestIdentifier;
    v11->_requestIdentifier = v12;

    v14 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
    accessoryName = v11->_accessoryName;
    v11->_accessoryName = v14;

    v16 = [HMFObjectCacheHMAccessoryCategory cachedInstanceForHMAccessoryCategory:categoryCopy];
    accessoryCategory = v11->_accessoryCategory;
    v11->_accessoryCategory = v16;

    v18 = v11;
  }

  return v11;
}

- (HMAddAccessoryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HMAddAccessoryRequest;
  v5 = [(HMAddAccessoryRequest *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy hm_decodeAndCacheStringForKey:@"HMAAR.accessoryName"];
    accessoryName = v5->_accessoryName;
    v5->_accessoryName = v6;

    v8 = [coderCopy hm_decodeAndCacheUUIDForKey:@"HMAAR.identifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v8;

    v10 = [coderCopy hm_decodeHMAccessoryCategoryAndCacheForKey:@"HMAAR.category"];
    accessoryCategory = v5->_accessoryCategory;
    v5->_accessoryCategory = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAAR.accessoryDescription"];
    accessoryDescription = v5->_accessoryDescription;
    v5->_accessoryDescription = v12;

    *&v5->_requiresSetupPayloadURL = 256;
    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMAccessorySetupPayload)payloadWithURL:(NSURL *)setupPayloadURL ownershipToken:(HMAccessoryOwnershipToken *)ownershipToken
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = setupPayloadURL;
  v7 = ownershipToken;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2080;
    v17 = "[HMAddAccessoryRequest payloadWithURL:ownershipToken:]";
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@%s is not supported", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (HMAccessorySetupPayload)payloadWithOwnershipToken:(HMAccessoryOwnershipToken *)ownershipToken
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = ownershipToken;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2080;
    v14 = "[HMAddAccessoryRequest payloadWithOwnershipToken:]";
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@%s is not supported", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (HMAddAccessoryRequest)init
{
  v3.receiver = self;
  v3.super_class = HMAddAccessoryRequest;
  return [(HMAddAccessoryRequest *)&v3 init];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end