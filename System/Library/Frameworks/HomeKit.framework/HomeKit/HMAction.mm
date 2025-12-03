@interface HMAction
+ (HMAction)new;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidWithError:(id *)error;
- (HMAction)initWithCoder:(id)coder;
- (HMAction)initWithDictionary:(id)dictionary home:(id)home;
- (HMAction)initWithUUID:(id)d;
- (HMActionSet)actionSet;
- (NSUUID)uniqueIdentifier;
- (NSUUID)uuid;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)type;
- (void)__configureWithContext:(id)context actionSet:(id)set;
- (void)_unconfigure;
- (void)encodeWithCoder:(id)coder;
- (void)setUuid:(id)uuid;
@end

@implementation HMAction

- (HMActionSet)actionSet
{
  WeakRetained = objc_loadWeakRetained(&self->_actionSet);

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D930];
    v12 = MEMORY[0x1E696AEC0];
    v13 = NSStringFromSelector(a2);
    v14 = [v12 stringWithFormat:@"You must override %@ in a subclass", v13];
    v15 = [v10 exceptionWithName:v11 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  v6 = [HMAction alloc];
  uuid = [(HMAction *)self uuid];
  v8 = [(HMAction *)v6 initWithUUID:uuid];

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    return 0;
  }

  else
  {
    return 1073741789 * [(HMAction *)self type]+ 1073741789;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
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

- (HMAction)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = HMAction;
  v5 = [(HMAction *)&v26 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionUUID"];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
  if (!v7)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v5;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      *buf = 138543618;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive %@, missing uuid", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionActionSet"];
  if (!v9)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v5;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = objc_opt_class();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive %@, missing action set", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
LABEL_12:

    v13 = 0;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v8];
  uuid = v5->_uuid;
  v5->_uuid = v11;

  objc_storeWeak(&v5->_actionSet, v10);
LABEL_5:
  v13 = v5;
LABEL_13:

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_serializeForAdd
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"kActionType";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAction type](self, "type")}];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isValidWithError:(id *)error
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = v5;
  if (error && v4 == v5)
  {
    *error = [MEMORY[0x1E696ABC0] hmErrorWithCode:22];
  }

  return v4 != v6;
}

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  if (!uuidCopy)
  {
    v7 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(&self->_lock);
    _Unwind_Resume(v7);
  }

  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:uuidCopy];
  uuid = self->_uuid;
  self->_uuid = v4;

  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)uuid
{
  os_unfair_lock_lock_with_options();
  v3 = self->_uuid;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)type
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)__configureWithContext:(id)context actionSet:(id)set
{
  contextCopy = context;
  setCopy = set;
  os_unfair_lock_lock_with_options();
  context = self->_context;
  self->_context = contextCopy;

  objc_storeWeak(&self->_actionSet, setCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_unconfigure
{
  os_unfair_lock_lock_with_options();
  context = self->_context;
  self->_context = 0;

  objc_storeWeak(&self->_actionSet, 0);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAction)initWithDictionary:(id)dictionary home:(id)home
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v8 = [dictionaryCopy hmf_numberForKey:@"kActionType"];
  v9 = v8;
  if (!v8)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v16;
      v32 = 2112;
      v33 = objc_opt_class();
      v17 = "%{public}@Unable to decode %@, missing action type";
      v18 = v15;
      v19 = 22;
LABEL_12:
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, v17, &v30, v19);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v10 = HMClassForActionType([v8 unsignedIntegerValue]);
  if (!v10)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v30 = 138543874;
      v31 = v16;
      v32 = 2112;
      v33 = objc_opt_class();
      v34 = 2112;
      v35 = v9;
      v17 = "%{public}@Unable to decode %@, invalid action type: %@";
      goto LABEL_11;
    }

LABEL_13:

    objc_autoreleasePoolPop(v13);
    selfCopy4 = 0;
    goto LABEL_14;
  }

  v11 = v10;
  v12 = objc_opt_class();
  if (v12 == objc_opt_class())
  {
    selfCopy4 = [[v11 alloc] initWithDictionary:dictionaryCopy home:homeCopy];
    goto LABEL_14;
  }

  if (v12 != v11)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v30 = 138543874;
      v31 = v16;
      v32 = 2112;
      v33 = objc_opt_class();
      v34 = 2112;
      v35 = v9;
      v17 = "%{public}@Unable to decode %@, wrong action type: %@";
LABEL_11:
      v18 = v15;
      v19 = 32;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v23 = [dictionaryCopy hmf_UUIDForKey:@"kActionUUID"];
  if (v23)
  {
    v24 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v23];
    uuid = self->_uuid;
    self->_uuid = v24;

    selfCopy4 = self;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v29;
      v32 = 2112;
      v33 = objc_opt_class();
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing uuid", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    selfCopy4 = 0;
  }

LABEL_14:
  v21 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (HMAction)initWithUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = HMAction;
  v5 = [(HMAction *)&v10 init];
  if (v5)
  {
    if (dCopy)
    {
      v6 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:dCopy];
      v7 = 24;
    }

    else
    {
      v7 = 16;
      v6 = HMTransientIdentifier();
    }

    v8 = *(&v5->super.isa + v7);
    *(&v5->super.isa + v7) = v6;
  }

  return v5;
}

+ (HMAction)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___HMAction;
  return objc_msgSendSuper2(&v3, "new");
}

@end