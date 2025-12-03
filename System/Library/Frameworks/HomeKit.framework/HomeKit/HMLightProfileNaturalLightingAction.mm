@interface HMLightProfileNaturalLightingAction
+ (id)actionWithProtoBuf:(id)buf home:(id)home;
- (BOOL)_handleUpdates:(id)updates;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNaturalLightingEnabled;
- (BOOL)mergeFromNewObject:(id)object;
- (HMLightProfile)lightProfile;
- (HMLightProfileNaturalLightingAction)init;
- (HMLightProfileNaturalLightingAction)initWithCoder:(id)coder;
- (HMLightProfileNaturalLightingAction)initWithDictionary:(id)dictionary home:(id)home;
- (HMLightProfileNaturalLightingAction)initWithUUID:(id)d;
- (_BYTE)initWithLightProfile:(char)profile naturalLightingEnabled:(void *)enabled uuid:;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProtoBuf;
- (void)__configureWithContext:(id)context actionSet:(id)set;
@end

@implementation HMLightProfileNaturalLightingAction

- (HMLightProfile)lightProfile
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lightProfile;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isNaturalLightingEnabled
{
  os_unfair_lock_lock_with_options();
  naturalLightingEnabled = self->_naturalLightingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return naturalLightingEnabled;
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock_with_options();
  v4 = [[HMLightProfileNaturalLightingAction alloc] initWithLightProfile:self->_naturalLightingEnabled naturalLightingEnabled:0 uuid:?];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (_BYTE)initWithLightProfile:(char)profile naturalLightingEnabled:(void *)enabled uuid:
{
  v8 = a2;
  enabledCopy = enabled;
  if (!self)
  {
    goto LABEL_8;
  }

  profileUniqueIdentifier = [v8 profileUniqueIdentifier];
  if (!profileUniqueIdentifier)
  {
    _HMFPreconditionFailure();
LABEL_8:
    v14 = 0;
    goto LABEL_6;
  }

  v11 = profileUniqueIdentifier;
  v16.receiver = self;
  v16.super_class = HMLightProfileNaturalLightingAction;
  v12 = objc_msgSendSuper2(&v16, sel_initWithUUID_, enabledCopy);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 7, a2);
    v13[52] = profile;
  }

  v14 = v13;

LABEL_6:
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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
    v7 = v6;
    if (v6 && (v8 = [(HMLightProfileNaturalLightingAction *)v6 isNaturalLightingEnabled], v8 == [(HMLightProfileNaturalLightingAction *)self isNaturalLightingEnabled]))
    {
      lightProfile = [(HMLightProfileNaturalLightingAction *)v7 lightProfile];
      lightProfile2 = [(HMLightProfileNaturalLightingAction *)self lightProfile];
      v9 = [lightProfile isEqual:lightProfile2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMLightProfileNaturalLightingAction)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HMLightProfileNaturalLightingAction;
  v5 = [(HMAction *)&v18 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hmlp.lp"];
  if (v6)
  {
    v7 = v6;
    v8 = [[HMLightProfile alloc] initWithLightProfile:v6];
    lightProfile = v5->_lightProfile;
    v5->_lightProfile = v8;

    v5->_naturalLightingEnabled = [coderCopy decodeBoolForKey:@"hmlp.nle"];
LABEL_4:
    v10 = v5;
    goto LABEL_8;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = v5;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = objc_opt_class();
    *buf = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive %@, missing light profile", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return v10;
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
  v7 = v6;
  if (v6)
  {
    isNaturalLightingEnabled = [v6 isNaturalLightingEnabled];
    os_unfair_lock_lock_with_options();
    naturalLightingEnabled = self->_naturalLightingEnabled;
    v10 = naturalLightingEnabled != isNaturalLightingEnabled;
    if (naturalLightingEnabled != isNaturalLightingEnabled)
    {
      self->_naturalLightingEnabled = isNaturalLightingEnabled;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)encodeAsProtoBuf
{
  v22 = *MEMORY[0x1E69E9840];
  lightProfile = [(HMLightProfileNaturalLightingAction *)self lightProfile];
  if (lightProfile)
  {
    v4 = objc_alloc_init(HMPBNaturalLightingAction);
    uuid = [(HMAction *)self uuid];
    hm_convertToData = [uuid hm_convertToData];
    [(HMPBNaturalLightingAction *)v4 setUuid:hm_convertToData];

    profileUniqueIdentifier = [lightProfile profileUniqueIdentifier];
    hm_convertToData2 = [profileUniqueIdentifier hm_convertToData];
    [(HMPBNaturalLightingAction *)v4 setLightProfileUUID:hm_convertToData2];

    [(HMPBNaturalLightingAction *)v4 setNaturalLightingEnabled:[(HMLightProfileNaturalLightingAction *)self isNaturalLightingEnabled]];
    v9 = objc_alloc_init(HMPBActionContainer);
    [(HMPBActionContainer *)v9 setType:3];
    [(HMPBActionContainer *)v9 setNaturalLightingAction:v4];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = selfCopy;
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed encode action as protobuf, light profile is invalid %@:%@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)__configureWithContext:(id)context actionSet:(id)set
{
  contextCopy = context;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = HMLightProfileNaturalLightingAction;
  [(HMAction *)&v12 __configureWithContext:contextCopy actionSet:setCopy];
  home = [setCopy home];
  os_unfair_lock_lock_with_options();
  profileUniqueIdentifier = [(HMAccessoryProfile *)self->_lightProfile profileUniqueIdentifier];
  v10 = [home lightProfileWithProfileUUID:profileUniqueIdentifier];
  lightProfile = self->_lightProfile;
  self->_lightProfile = v10;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_handleUpdates:(id)updates
{
  updatesCopy = updates;
  v5 = [updatesCopy hmf_numberForKey:@"hmlp.nle"];
  if (v5)
  {
    os_unfair_lock_lock_with_options();
    self->_naturalLightingEnabled = [v5 BOOLValue];
    os_unfair_lock_unlock(&self->_lock);
  }

  return 1;
}

- (id)_serializeForAdd
{
  v11.receiver = self;
  v11.super_class = HMLightProfileNaturalLightingAction;
  _serializeForAdd = [(HMAction *)&v11 _serializeForAdd];
  v4 = [_serializeForAdd mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMLightProfileNaturalLightingAction isNaturalLightingEnabled](self, "isNaturalLightingEnabled")}];
  [v4 setObject:v5 forKeyedSubscript:@"hmlp.nle"];

  lightProfile = [(HMLightProfileNaturalLightingAction *)self lightProfile];
  profileUniqueIdentifier = [lightProfile profileUniqueIdentifier];
  uUIDString = [profileUniqueIdentifier UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"hmlp.uuid"];

  v9 = [v4 copy];

  return v9;
}

- (HMLightProfileNaturalLightingAction)initWithDictionary:(id)dictionary home:(id)home
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v25.receiver = self;
  v25.super_class = HMLightProfileNaturalLightingAction;
  v8 = [(HMAction *)&v25 initWithDictionary:dictionaryCopy home:homeCopy];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [dictionaryCopy hmf_UUIDForKey:@"hmlp.uuid"];
  if (!v9)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v8;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = objc_opt_class();
      *buf = 138543618;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v18 = "%{public}@Unable to decode %@, missing light profile id";
      v19 = v15;
      v20 = 22;
LABEL_10:
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    }

LABEL_11:

    objc_autoreleasePoolPop(v13);
    v12 = 0;
    goto LABEL_12;
  }

  v10 = [homeCopy lightProfileWithProfileUUID:v9];
  lightProfile = v8->_lightProfile;
  v8->_lightProfile = v10;

  if (!v8->_lightProfile)
  {
    v13 = objc_autoreleasePoolPush();
    v21 = v8;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v22 = objc_opt_class();
      *buf = 138543874;
      v27 = v16;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v9;
      v18 = "%{public}@Unable to decode %@, failed to resolve light profile %@";
      v19 = v15;
      v20 = 32;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v8->_naturalLightingEnabled = [dictionaryCopy hmf_BOOLForKey:@"hmlp.nle"];

LABEL_5:
  v12 = v8;
LABEL_12:

  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

- (HMLightProfileNaturalLightingAction)initWithUUID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMLightProfileNaturalLightingAction)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)actionWithProtoBuf:(id)buf home:(id)home
{
  v32 = *MEMORY[0x1E69E9840];
  bufCopy = buf;
  homeCopy = home;
  v7 = MEMORY[0x1E696AFB0];
  uuid = [bufCopy uuid];
  v9 = [v7 hmf_UUIDWithBytesAsData:uuid];

  if (v9)
  {
    v10 = MEMORY[0x1E696AFB0];
    lightProfileUUID = [bufCopy lightProfileUUID];
    v12 = [v10 hmf_UUIDWithBytesAsData:lightProfileUUID];

    if (v12)
    {
      v13 = [homeCopy lightProfileWithProfileUUID:v12];
      if (v13)
      {
        v14 = -[HMLightProfileNaturalLightingAction initWithLightProfile:naturalLightingEnabled:uuid:]([HMLightProfileNaturalLightingAction alloc], v13, [bufCopy naturalLightingEnabled], v9);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v26 = 138543874;
          v27 = v23;
          v28 = 2112;
          v29 = bufCopy;
          v30 = 2112;
          v31 = v12;
          _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create natural lighting action from protobuf, light profile with UUID does not exist %@:%@", &v26, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        v14 = 0;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v20;
        v28 = 2112;
        v29 = bufCopy;
        v30 = 2112;
        v31 = 0;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create natural lighting action from protobuf, invalid light profile uuid %@:%@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v14 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v17;
      v28 = 2112;
      v29 = bufCopy;
      v30 = 2112;
      v31 = 0;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create natural lighting action from protobuf, invalid uuid %@:%@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v14;
}

@end