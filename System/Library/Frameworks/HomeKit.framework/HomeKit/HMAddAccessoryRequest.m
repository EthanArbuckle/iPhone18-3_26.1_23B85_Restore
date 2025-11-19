@interface HMAddAccessoryRequest
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessorySetupPayload)payloadWithOwnershipToken:(HMAccessoryOwnershipToken *)ownershipToken;
- (HMAccessorySetupPayload)payloadWithURL:(NSURL *)setupPayloadURL ownershipToken:(HMAccessoryOwnershipToken *)ownershipToken;
- (HMAddAccessoryRequest)init;
- (HMAddAccessoryRequest)initWithCoder:(id)a3;
- (HMAddAccessoryRequest)initWithIdentifier:(id)a3 accessoryName:(id)a4 accessoryCategory:(id)a5;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAddAccessoryRequest

- (NSArray)attributeDescriptions
{
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v21 = [(HMAddAccessoryRequest *)self requestIdentifier];
  v20 = [v3 initWithName:@"ID" value:v21];
  v22[0] = v20;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMAddAccessoryRequest *)self home];
  v6 = [v5 name];
  v7 = [v4 initWithName:@"Home Name" value:v6];
  v22[1] = v7;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  v9 = [(HMAddAccessoryRequest *)self accessoryName];
  v10 = [v8 initWithName:@"Accessory Name" value:v9];
  v22[2] = v10;
  v11 = objc_alloc(MEMORY[0x1E69A29C8]);
  v12 = [(HMAddAccessoryRequest *)self accessoryCategory];
  v13 = [v11 initWithName:@"Accessory Category" value:v12];
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
  v2 = [(HMAddAccessoryRequest *)self requestIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
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
      v7 = [(HMAddAccessoryRequest *)self requestIdentifier];
      v8 = [(HMAddAccessoryRequest *)v6 requestIdentifier];
      v9 = [v7 hmf_isEqualToUUID:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMAddAccessoryRequest)initWithIdentifier:(id)a3 accessoryName:(id)a4 accessoryCategory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = HMAddAccessoryRequest;
  v11 = [(HMAddAccessoryRequest *)&v20 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v8];
    requestIdentifier = v11->_requestIdentifier;
    v11->_requestIdentifier = v12;

    v14 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v9];
    accessoryName = v11->_accessoryName;
    v11->_accessoryName = v14;

    v16 = [HMFObjectCacheHMAccessoryCategory cachedInstanceForHMAccessoryCategory:v10];
    accessoryCategory = v11->_accessoryCategory;
    v11->_accessoryCategory = v16;

    v18 = v11;
  }

  return v11;
}

- (HMAddAccessoryRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HMAddAccessoryRequest;
  v5 = [(HMAddAccessoryRequest *)&v16 init];
  if (v5)
  {
    v6 = [v4 hm_decodeAndCacheStringForKey:@"HMAAR.accessoryName"];
    accessoryName = v5->_accessoryName;
    v5->_accessoryName = v6;

    v8 = [v4 hm_decodeAndCacheUUIDForKey:@"HMAAR.identifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v8;

    v10 = [v4 hm_decodeHMAccessoryCategoryAndCacheForKey:@"HMAAR.category"];
    accessoryCategory = v5->_accessoryCategory;
    v5->_accessoryCategory = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAAR.accessoryDescription"];
    accessoryDescription = v5->_accessoryDescription;
    v5->_accessoryDescription = v12;

    *&v5->_requiresSetupPayloadURL = 256;
    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
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
  v9 = self;
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
  v6 = self;
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