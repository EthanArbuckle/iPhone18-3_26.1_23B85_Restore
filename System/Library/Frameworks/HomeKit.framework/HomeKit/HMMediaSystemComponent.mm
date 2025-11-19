@interface HMMediaSystemComponent
+ (id)logCategory;
+ (id)mediaSystemComponentWithDictionary:(id)a3 home:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)mergeRoleWithComponent:(id)a3;
- (HMAccessory)accessory;
- (HMMediaProfile)mediaProfile;
- (HMMediaSystemComponent)initWithCoder:(id)a3;
- (HMMediaSystemComponent)initWithMediaProfile:(id)a3 role:(id)a4;
- (HMMediaSystemComponent)initWithUUID:(id)a3 mediaProfile:(id)a4 role:(id)a5;
- (HMMediaSystemRole)role;
- (NSString)description;
- (NSUUID)uniqueIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)logIdentifier;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)serialize;
- (unint64_t)hash;
- (void)_unconfigure;
- (void)_updateAccessoryReference:(id)a3;
- (void)setAccessory:(id)a3;
- (void)setRole:(id)a3;
@end

@implementation HMMediaSystemComponent

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableMediaSystemComponent alloc];
  v5 = [(HMMediaSystemComponent *)self mediaProfile];
  v6 = [(HMMediaSystemComponent *)self role];
  v7 = [(HMMediaSystemComponent *)v4 initWithMediaProfile:v5 role:v6];

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

+ (id)mediaSystemComponentWithDictionary:(id)a3 home:(id)a4
{
  v5 = kMediaSystemComponentUUIDCodingKey;
  v6 = a4;
  v7 = a3;
  v8 = [v7 hmf_UUIDForKey:v5];
  v9 = [v7 hmf_UUIDForKey:@"kAccessoryUUID"];
  v10 = [v7 hmf_dictionaryForKey:kMediaSystemComponentRoleCodingKey];

  v11 = [[HMMediaSystemRole alloc] initWithDictionary:v10];
  v12 = [v6 accessories];

  v13 = [v12 hmf_firstObjectWithUUID:v9];

  v14 = [v13 mediaProfile];
  v15 = [[HMMediaSystemComponent alloc] initWithUUID:v8 mediaProfile:v14 role:v11];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMMediaSystemComponent alloc];
  v5 = [(HMMediaSystemComponent *)self mediaProfile];
  v6 = [(HMMediaSystemComponent *)self role];
  v7 = [(HMMediaSystemComponent *)v4 initWithMediaProfile:v5 role:v6];

  return v7;
}

- (BOOL)mergeRoleWithComponent:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystemComponent *)self role];
  v6 = [v4 role];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 role];
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating component role: %@ during merge", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [v4 role];
    [(HMMediaSystemComponent *)v9 setRole:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7 ^ 1;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
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
    v7 = [(HMMediaSystemComponent *)self mergeRoleWithComponent:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(HMMediaSystemComponent *)self uuid];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:kMediaSystemComponentUUIDCodingKey];

  v6 = [(HMMediaSystemComponent *)self accessory];
  v7 = [v6 uuid];
  v8 = [v7 UUIDString];
  [v3 setObject:v8 forKeyedSubscript:@"kAccessoryUUID"];

  v9 = [(HMMediaSystemComponent *)self role];
  v10 = [v9 serialize];
  [v3 setObject:v10 forKeyedSubscript:kMediaSystemComponentRoleCodingKey];

  v11 = [v3 copy];

  return v11;
}

- (void)setAccessory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_accessory, v4);

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

- (void)setRole:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  role = self->_role;
  self->_role = v4;

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
  v4 = [WeakRetained mediaProfile];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (HMMediaSystemComponent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSystemComponent *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemComponentUUIDCodingKey];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    objc_storeWeak(&v5->_accessory, v8);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemComponentRoleCodingKey];
    role = v5->_role;
    v5->_role = v9;
  }

  return v5;
}

- (void)_updateAccessoryReference:(id)a3
{
  v4 = [a3 accessories];
  v5 = [(HMMediaSystemComponent *)self accessory];
  v6 = [v5 uuid];
  v7 = [v4 hmf_firstObjectWithUUID:v6];

  [(HMMediaSystemComponent *)self setAccessory:v7];
}

- (unint64_t)hash
{
  v2 = [(HMMediaSystemComponent *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
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
      v7 = [(HMMediaSystemComponent *)self uuid];
      v8 = [(HMMediaSystemComponent *)v6 uuid];
      if ([v7 hmf_isEqualToUUID:v8])
      {
        v9 = [(HMMediaSystemComponent *)self role];
        v10 = [(HMMediaSystemComponent *)v6 role];
        v11 = [v9 isEqual:v10];
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
  v5 = [(HMMediaSystemComponent *)self uuid];
  v6 = [(HMMediaSystemComponent *)self accessory];
  v7 = [v6 uniqueIdentifier];
  v8 = [(HMMediaSystemComponent *)self role];
  v9 = [v3 stringWithFormat:@"<%@ uuid: %@ accessory identifier: %@ role: %@>", v4, v5, v7, v8];

  return v9;
}

- (id)logIdentifier
{
  v2 = [(HMMediaSystemComponent *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_unconfigure
{
  [(HMMediaSystemComponent *)self setAccessory:0];

  [(HMMediaSystemComponent *)self setRole:0];
}

- (HMMediaSystemComponent)initWithUUID:(id)a3 mediaProfile:(id)a4 role:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = HMMediaSystemComponent;
  v12 = [(HMMediaSystemComponent *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, a3);
    v14 = [v10 accessory];
    objc_storeWeak(&v13->_accessory, v14);

    objc_storeStrong(&v13->_role, a5);
  }

  return v13;
}

- (HMMediaSystemComponent)initWithMediaProfile:(id)a3 role:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [(HMMediaSystemComponent *)self initWithUUID:v9 mediaProfile:v8 role:v7];

  return v10;
}

@end