@interface HMAccessoryCollectionSettingItem
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldBlockValueDecode;
- (HMAccessoryCollectionSetting)setting;
- (HMAccessoryCollectionSettingItem)init;
- (HMAccessoryCollectionSettingItem)initWithCoder:(id)a3;
- (HMAccessoryCollectionSettingItem)initWithIdentifier:(id)a3 value:(id)a4;
- (HMAccessoryCollectionSettingItem)initWithValue:(id)a3;
- (NSData)serializedValue;
- (NSObject)value;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessoryCollectionSettingItem

- (HMAccessoryCollectionSetting)setting
{
  WeakRetained = objc_loadWeakRetained(&self->_setting);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessoryCollectionSettingItem *)self identifier];
  [v4 encodeObject:v5 forKey:@"HM.identifier"];

  v6 = [(HMAccessoryCollectionSettingItem *)self serializedValue];
  [v4 encodeObject:v6 forKey:@"HM.value"];
}

- (HMAccessoryCollectionSettingItem)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HMAccessoryCollectionSettingItem;
  v5 = [(HMAccessoryCollectionSettingItem *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    v7 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v6];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.value"];
    serializedValue = v5->_serializedValue;
    v5->_serializedValue = v9;
  }

  return v5;
}

- (BOOL)shouldBlockValueDecode
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessoryCollectionSettingItem *)self setting];
  v4 = [v3 keyPath];
  if (!v4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to block decode value due to no keypath for setting: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_7;
  }

  if (![HMAccessoryCollectionSettingItem requiresCustomItemValueClassesToDecodeForKeyPath:v4])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v5 = +[_HMAccessoryCollectionSettingItemClassManager sharedManager];
  v6 = [v5 hasCustomItemValueClassesForKeyPath:v4];

  v7 = v6 ^ 1;
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSObject)value
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(HMAccessoryCollectionSettingItem *)self shouldBlockValueDecode])
  {
    v3 = 0;
  }

  else
  {
    os_unfair_lock_lock_with_options();
    value = self->_value;
    if (!value)
    {
      v5 = [(HMAccessoryCollectionSettingItem *)self serializedValue];
      v6 = self;
      v7 = v5;
      v8 = objc_autoreleasePoolPush();
      v9 = [(HMAccessoryCollectionSettingItem *)v6 setting];
      v10 = v9;
      if (v9)
      {
        [v9 itemValueClasses];
      }

      else
      {
        +[_HMAccessoryCollectionSettingItemClassManager defaultItemValueClasses];
      }
      v23 = ;

      v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:0];
      [v11 setDecodingFailurePolicy:1];
      v12 = [v11 decodeObjectOfClasses:v23 forKey:*MEMORY[0x1E696A508]];
      v13 = [v11 error];

      if (v13)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = v6;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v18 = [v11 error];
          *buf = 138543618;
          v25 = v17;
          v26 = 2112;
          v27 = v18;
          _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize accessory collection setting item value with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
      }

      [v11 finishDecoding];

      objc_autoreleasePoolPop(context);
      v19 = self->_value;
      self->_value = v12;

      value = self->_value;
    }

    v3 = value;
    os_unfair_lock_unlock(&self->_lock);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSData)serializedValue
{
  serializedValue = self->_serializedValue;
  if (serializedValue)
  {
    v3 = serializedValue;
  }

  else
  {
    v4 = [(HMAccessoryCollectionSettingItem *)self value];
    v3 = encodeRootObject(v4);
  }

  return v3;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [objc_opt_class() shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_1F0E92498;
  }

  v8 = [(HMAccessoryCollectionSettingItem *)self identifier];
  v9 = [v8 UUIDString];
  v10 = [(HMAccessoryCollectionSettingItem *)self value];
  v11 = [v5 stringWithFormat:@"<%@%@, Identifier = %@, Value = %@>", v6, v7, v9, v10];

  if (v3)
  {
  }

  return v11;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMAccessoryCollectionSettingItem *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
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
    if (v6 && (-[HMAccessoryCollectionSettingItem identifier](self, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), -[HMAccessoryCollectionSettingItem identifier](v6, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9))
    {
      v10 = [(HMAccessoryCollectionSettingItem *)self value];
      v11 = [(HMAccessoryCollectionSettingItem *)v6 value];
      v12 = HMFEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(HMAccessoryCollectionSettingItem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (HMAccessoryCollectionSettingItem)initWithIdentifier:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
    v16.receiver = self;
    v16.super_class = HMAccessoryCollectionSettingItem;
    v9 = [(HMAccessoryCollectionSettingItem *)&v16 init];
    if (v9)
    {
      v10 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v6];
      identifier = v9->_identifier;
      v9->_identifier = v10;

      objc_storeStrong(&v9->_value, a4);
    }

    return v9;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return [(HMAccessoryCollectionSettingItem *)v13 initWithValue:v14, v15];
  }
}

- (HMAccessoryCollectionSettingItem)initWithValue:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [(HMAccessoryCollectionSettingItem *)self initWithIdentifier:v6 value:v5];

  return v7;
}

- (HMAccessoryCollectionSettingItem)init
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

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end