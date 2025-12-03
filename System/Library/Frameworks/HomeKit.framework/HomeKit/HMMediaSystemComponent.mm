@interface HMMediaSystemComponent
+ (id)logCategory;
+ (id)mediaSystemComponentWithDictionary:(id)dictionary home:(id)home;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)mergeRoleWithComponent:(id)component;
- (HMAccessory)accessory;
- (HMMediaProfile)mediaProfile;
- (HMMediaSystemComponent)initWithCoder:(id)coder;
- (HMMediaSystemComponent)initWithMediaProfile:(id)profile role:(id)role;
- (HMMediaSystemComponent)initWithUUID:(id)d mediaProfile:(id)profile role:(id)role;
- (HMMediaSystemRole)role;
- (NSString)description;
- (NSUUID)uniqueIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)logIdentifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)serialize;
- (unint64_t)hash;
- (void)_unconfigure;
- (void)_updateAccessoryReference:(id)reference;
- (void)setAccessory:(id)accessory;
- (void)setRole:(id)role;
@end

@implementation HMMediaSystemComponent

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableMediaSystemComponent alloc];
  mediaProfile = [(HMMediaSystemComponent *)self mediaProfile];
  role = [(HMMediaSystemComponent *)self role];
  v7 = [(HMMediaSystemComponent *)v4 initWithMediaProfile:mediaProfile role:role];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_63457 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_63457, &__block_literal_global_63458);
  }

  v3 = logCategory__hmf_once_v1_63459;

  return v3;
}

uint64_t __37__HMMediaSystemComponent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_63459;
  logCategory__hmf_once_v1_63459 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)mediaSystemComponentWithDictionary:(id)dictionary home:(id)home
{
  v5 = kMediaSystemComponentUUIDCodingKey;
  homeCopy = home;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy hmf_UUIDForKey:v5];
  v9 = [dictionaryCopy hmf_UUIDForKey:@"kAccessoryUUID"];
  v10 = [dictionaryCopy hmf_dictionaryForKey:kMediaSystemComponentRoleCodingKey];

  v11 = [[HMMediaSystemRole alloc] initWithDictionary:v10];
  accessories = [homeCopy accessories];

  v13 = [accessories hmf_firstObjectWithUUID:v9];

  mediaProfile = [v13 mediaProfile];
  v15 = [[HMMediaSystemComponent alloc] initWithUUID:v8 mediaProfile:mediaProfile role:v11];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMMediaSystemComponent alloc];
  mediaProfile = [(HMMediaSystemComponent *)self mediaProfile];
  role = [(HMMediaSystemComponent *)self role];
  v7 = [(HMMediaSystemComponent *)v4 initWithMediaProfile:mediaProfile role:role];

  return v7;
}

- (BOOL)mergeRoleWithComponent:(id)component
{
  v20 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  role = [(HMMediaSystemComponent *)self role];
  role2 = [componentCopy role];
  v7 = [role isEqual:role2];

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      role3 = [componentCopy role];
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = role3;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating component role: %@ during merge", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    role4 = [componentCopy role];
    [(HMMediaSystemComponent *)selfCopy setRole:role4];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7 ^ 1;
}

- (BOOL)mergeFromNewObject:(id)object
{
  v16 = *MEMORY[0x1E69E9840];
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
    v7 = [(HMMediaSystemComponent *)self mergeRoleWithComponent:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get component for merge", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)serialize
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  uuid = [(HMMediaSystemComponent *)self uuid];
  uUIDString = [uuid UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:kMediaSystemComponentUUIDCodingKey];

  accessory = [(HMMediaSystemComponent *)self accessory];
  uuid2 = [accessory uuid];
  uUIDString2 = [uuid2 UUIDString];
  [dictionary setObject:uUIDString2 forKeyedSubscript:@"kAccessoryUUID"];

  role = [(HMMediaSystemComponent *)self role];
  serialize = [role serialize];
  [dictionary setObject:serialize forKeyedSubscript:kMediaSystemComponentRoleCodingKey];

  v11 = [dictionary copy];

  return v11;
}

- (void)setAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_accessory, accessoryCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessory)accessory
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_uuid];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)setRole:(id)role
{
  roleCopy = role;
  os_unfair_lock_lock_with_options();
  role = self->_role;
  self->_role = roleCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaSystemRole)role
{
  os_unfair_lock_lock_with_options();
  v3 = self->_role;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMMediaProfile)mediaProfile
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  mediaProfile = [WeakRetained mediaProfile];

  os_unfair_lock_unlock(&self->_lock);

  return mediaProfile;
}

- (HMMediaSystemComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMMediaSystemComponent *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemComponentUUIDCodingKey];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    objc_storeWeak(&v5->_accessory, v8);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemComponentRoleCodingKey];
    role = v5->_role;
    v5->_role = v9;
  }

  return v5;
}

- (void)_updateAccessoryReference:(id)reference
{
  accessories = [reference accessories];
  accessory = [(HMMediaSystemComponent *)self accessory];
  uuid = [accessory uuid];
  v7 = [accessories hmf_firstObjectWithUUID:uuid];

  [(HMMediaSystemComponent *)self setAccessory:v7];
}

- (unint64_t)hash
{
  uuid = [(HMMediaSystemComponent *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
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
      uuid = [(HMMediaSystemComponent *)self uuid];
      uuid2 = [(HMMediaSystemComponent *)v6 uuid];
      if ([uuid hmf_isEqualToUUID:uuid2])
      {
        role = [(HMMediaSystemComponent *)self role];
        role2 = [(HMMediaSystemComponent *)v6 role];
        v11 = [role isEqual:role2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uuid = [(HMMediaSystemComponent *)self uuid];
  accessory = [(HMMediaSystemComponent *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  role = [(HMMediaSystemComponent *)self role];
  v9 = [v3 stringWithFormat:@"<%@ uuid: %@ accessory identifier: %@ role: %@>", v4, uuid, uniqueIdentifier, role];

  return v9;
}

- (id)logIdentifier
{
  uuid = [(HMMediaSystemComponent *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)_unconfigure
{
  [(HMMediaSystemComponent *)self setAccessory:0];

  [(HMMediaSystemComponent *)self setRole:0];
}

- (HMMediaSystemComponent)initWithUUID:(id)d mediaProfile:(id)profile role:(id)role
{
  dCopy = d;
  profileCopy = profile;
  roleCopy = role;
  v16.receiver = self;
  v16.super_class = HMMediaSystemComponent;
  v12 = [(HMMediaSystemComponent *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, d);
    accessory = [profileCopy accessory];
    objc_storeWeak(&v13->_accessory, accessory);

    objc_storeStrong(&v13->_role, role);
  }

  return v13;
}

- (HMMediaSystemComponent)initWithMediaProfile:(id)profile role:(id)role
{
  v6 = MEMORY[0x1E696AFB0];
  roleCopy = role;
  profileCopy = profile;
  uUID = [v6 UUID];
  v10 = [(HMMediaSystemComponent *)self initWithUUID:uUID mediaProfile:profileCopy role:roleCopy];

  return v10;
}

@end