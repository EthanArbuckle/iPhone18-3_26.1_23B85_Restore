@interface HMAccessoryNetworkProtectionGroup
+ (id)shortDescription;
- (BOOL)mergeFromNewObject:(id)object;
- (HMAccessoryCategory)category;
- (HMAccessoryNetworkProtectionGroup)initWithCoder:(id)coder;
- (HMAccessoryNetworkProtectionGroup)initWithUUID:(id)d manufacturer:(id)manufacturer category:(id)category protectionMode:(int64_t)mode;
- (HMHome)home;
- (NSArray)accessories;
- (NSArray)attributeDescriptions;
- (NSString)manufacturer;
- (NSString)shortDescription;
- (int64_t)targetProtectionMode;
- (void)encodeWithCoder:(id)coder;
- (void)setCategory:(id)category;
- (void)setHome:(id)home;
- (void)setManufacturer:(id)manufacturer;
- (void)setTargetProtectionMode:(int64_t)mode;
- (void)updateProtectionMode:(int64_t)mode completion:(id)completion;
@end

@implementation HMAccessoryNetworkProtectionGroup

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMAccessoryNetworkProtectionGroup *)self uniqueIdentifier];
  v5 = [v3 initWithName:@"uniqueIdentifier" value:uniqueIdentifier];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  manufacturer = [(HMAccessoryNetworkProtectionGroup *)self manufacturer];
  v8 = [v6 initWithName:@"manufacturer" value:manufacturer];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  category = [(HMAccessoryNetworkProtectionGroup *)self category];
  v11 = [v9 initWithName:@"category" value:category];
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

- (void)updateProtectionMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  home = [(HMAccessoryNetworkProtectionGroup *)self home];
  [home updateAccessoryNetworkProtectionGroup:self protectionMode:mode completion:completionCopy];
}

- (NSArray)accessories
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  home = [(HMAccessoryNetworkProtectionGroup *)self home];
  accessories = [home accessories];

  v6 = [accessories countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(accessories);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        networkProtectionGroupUUID = [v10 networkProtectionGroupUUID];
        uuid = [(HMAccessoryNetworkProtectionGroup *)self uuid];
        v13 = [networkProtectionGroupUUID isEqual:uuid];

        if (v13)
        {
          [array addObject:v10];
        }
      }

      v7 = [accessories countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [array copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setTargetProtectionMode:(int64_t)mode
{
  os_unfair_lock_lock_with_options();
  self->_targetProtectionMode = mode;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)targetProtectionMode
{
  os_unfair_lock_lock_with_options();
  targetProtectionMode = self->_targetProtectionMode;
  os_unfair_lock_unlock(&self->_lock);
  return targetProtectionMode;
}

- (void)setCategory:(id)category
{
  categoryCopy = category;
  os_unfair_lock_lock_with_options();
  category = self->_category;
  self->_category = categoryCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessoryCategory)category
{
  os_unfair_lock_lock_with_options();
  v3 = self->_category;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  os_unfair_lock_lock_with_options();
  manufacturer = self->_manufacturer;
  self->_manufacturer = manufacturerCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)manufacturer
{
  os_unfair_lock_lock_with_options();
  v3 = self->_manufacturer;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, homeCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    manufacturer = [(HMAccessoryNetworkProtectionGroup *)self manufacturer];
    manufacturer2 = [v6 manufacturer];
    v9 = HMFEqualObjects();

    if ((v9 & 1) == 0)
    {
      manufacturer3 = [v6 manufacturer];
      [(HMAccessoryNetworkProtectionGroup *)self setManufacturer:manufacturer3];
    }

    category = [(HMAccessoryNetworkProtectionGroup *)self category];
    category2 = [v6 category];
    v13 = HMFEqualObjects();

    if (v13)
    {
      v14 = v9 ^ 1;
    }

    else
    {
      category3 = [v6 category];
      [(HMAccessoryNetworkProtectionGroup *)self setCategory:category3];

      v14 = 1;
    }

    targetProtectionMode = [(HMAccessoryNetworkProtectionGroup *)self targetProtectionMode];
    if (targetProtectionMode != [v6 targetProtectionMode])
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

- (HMAccessoryNetworkProtectionGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryNetworkProtectionGroupUUIDCodingKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryNetworkProtectionGroupManufacturerCodingKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryNetworkProtectionGroupCategoryCodingKey"];
  v8 = [coderCopy decodeIntegerForKey:@"HMAccessoryNetworkProtectionGroupProtectionModeCodingKey"];

  v9 = [(HMAccessoryNetworkProtectionGroup *)self initWithUUID:v5 manufacturer:v6 category:v7 protectionMode:v8];
  return v9;
}

- (HMAccessoryNetworkProtectionGroup)initWithUUID:(id)d manufacturer:(id)manufacturer category:(id)category protectionMode:(int64_t)mode
{
  dCopy = d;
  manufacturerCopy = manufacturer;
  categoryCopy = category;
  v21.receiver = self;
  v21.super_class = HMAccessoryNetworkProtectionGroup;
  v14 = [(HMAccessoryNetworkProtectionGroup *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_uuid, d);
    v16 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:dCopy];
    uniqueIdentifier = v15->_uniqueIdentifier;
    v15->_uniqueIdentifier = v16;

    objc_storeStrong(&v15->_manufacturer, manufacturer);
    v18 = [HMFObjectCacheHMAccessoryCategory cachedInstanceForHMAccessoryCategory:categoryCopy];
    category = v15->_category;
    v15->_category = v18;

    v15->_targetProtectionMode = mode;
  }

  return v15;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end