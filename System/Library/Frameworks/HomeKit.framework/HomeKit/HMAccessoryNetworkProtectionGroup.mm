@interface HMAccessoryNetworkProtectionGroup
+ (id)shortDescription;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMAccessoryCategory)category;
- (HMAccessoryNetworkProtectionGroup)initWithCoder:(id)a3;
- (HMAccessoryNetworkProtectionGroup)initWithUUID:(id)a3 manufacturer:(id)a4 category:(id)a5 protectionMode:(int64_t)a6;
- (HMHome)home;
- (NSArray)accessories;
- (NSArray)attributeDescriptions;
- (NSString)manufacturer;
- (NSString)shortDescription;
- (int64_t)targetProtectionMode;
- (void)encodeWithCoder:(id)a3;
- (void)setCategory:(id)a3;
- (void)setHome:(id)a3;
- (void)setManufacturer:(id)a3;
- (void)setTargetProtectionMode:(int64_t)a3;
- (void)updateProtectionMode:(int64_t)a3 completion:(id)a4;
@end

@implementation HMAccessoryNetworkProtectionGroup

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessoryNetworkProtectionGroup *)self uniqueIdentifier];
  v5 = [v3 initWithName:@"uniqueIdentifier" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessoryNetworkProtectionGroup *)self manufacturer];
  v8 = [v6 initWithName:@"manufacturer" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMAccessoryNetworkProtectionGroup *)self category];
  v11 = [v9 initWithName:@"category" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessoryNetworkProtectionGroup targetProtectionMode](self, "targetProtectionMode")}];
  v14 = [v12 initWithName:@"targetProtectionMode" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)updateProtectionMode:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(HMAccessoryNetworkProtectionGroup *)self home];
  [v7 updateAccessoryNetworkProtectionGroup:self protectionMode:a3 completion:v6];
}

- (NSArray)accessories
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(HMAccessoryNetworkProtectionGroup *)self home];
  v5 = [v4 accessories];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 networkProtectionGroupUUID];
        v12 = [(HMAccessoryNetworkProtectionGroup *)self uuid];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v3 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setTargetProtectionMode:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_targetProtectionMode = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)targetProtectionMode
{
  os_unfair_lock_lock_with_options();
  targetProtectionMode = self->_targetProtectionMode;
  os_unfair_lock_unlock(&self->_lock);
  return targetProtectionMode;
}

- (void)setCategory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  category = self->_category;
  self->_category = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessoryCategory)category
{
  os_unfair_lock_lock_with_options();
  v3 = self->_category;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setManufacturer:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  manufacturer = self->_manufacturer;
  self->_manufacturer = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)manufacturer
{
  os_unfair_lock_lock_with_options();
  v3 = self->_manufacturer;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHome:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BOOL)mergeFromNewObject:(id)a3
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
    v7 = [(HMAccessoryNetworkProtectionGroup *)self manufacturer];
    v8 = [v6 manufacturer];
    v9 = HMFEqualObjects();

    if ((v9 & 1) == 0)
    {
      v10 = [v6 manufacturer];
      [(HMAccessoryNetworkProtectionGroup *)self setManufacturer:v10];
    }

    v11 = [(HMAccessoryNetworkProtectionGroup *)self category];
    v12 = [v6 category];
    v13 = HMFEqualObjects();

    if (v13)
    {
      v14 = v9 ^ 1;
    }

    else
    {
      v15 = [v6 category];
      [(HMAccessoryNetworkProtectionGroup *)self setCategory:v15];

      v14 = 1;
    }

    v16 = [(HMAccessoryNetworkProtectionGroup *)self targetProtectionMode];
    if (v16 != [v6 targetProtectionMode])
    {
      -[HMAccessoryNetworkProtectionGroup setTargetProtectionMode:](self, "setTargetProtectionMode:", [v6 targetProtectionMode]);
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
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

- (HMAccessoryNetworkProtectionGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryNetworkProtectionGroupUUIDCodingKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryNetworkProtectionGroupManufacturerCodingKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryNetworkProtectionGroupCategoryCodingKey"];
  v8 = [v4 decodeIntegerForKey:@"HMAccessoryNetworkProtectionGroupProtectionModeCodingKey"];

  v9 = [(HMAccessoryNetworkProtectionGroup *)self initWithUUID:v5 manufacturer:v6 category:v7 protectionMode:v8];
  return v9;
}

- (HMAccessoryNetworkProtectionGroup)initWithUUID:(id)a3 manufacturer:(id)a4 category:(id)a5 protectionMode:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = HMAccessoryNetworkProtectionGroup;
  v14 = [(HMAccessoryNetworkProtectionGroup *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_uuid, a3);
    v16 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:v11];
    uniqueIdentifier = v15->_uniqueIdentifier;
    v15->_uniqueIdentifier = v16;

    objc_storeStrong(&v15->_manufacturer, a4);
    v18 = [HMFObjectCacheHMAccessoryCategory cachedInstanceForHMAccessoryCategory:v13];
    category = v15->_category;
    v15->_category = v18;

    v15->_targetProtectionMode = a6;
  }

  return v15;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end