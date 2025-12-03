@interface HMAccessoryCollectionSettingItem
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldBlockValueDecode;
- (HMAccessoryCollectionSetting)setting;
- (HMAccessoryCollectionSettingItem)init;
- (HMAccessoryCollectionSettingItem)initWithCoder:(id)coder;
- (HMAccessoryCollectionSettingItem)initWithIdentifier:(id)identifier value:(id)value;
- (HMAccessoryCollectionSettingItem)initWithValue:(id)value;
- (NSData)serializedValue;
- (NSObject)value;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessoryCollectionSettingItem

- (HMAccessoryCollectionSetting)setting
{
  WeakRetained = objc_loadWeakRetained(&self->_setting);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMAccessoryCollectionSettingItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

  serializedValue = [(HMAccessoryCollectionSettingItem *)self serializedValue];
  [coderCopy encodeObject:serializedValue forKey:@"HM.value"];
}

- (HMAccessoryCollectionSettingItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HMAccessoryCollectionSettingItem;
  v5 = [(HMAccessoryCollectionSettingItem *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    v7 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v6];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.value"];
    serializedValue = v5->_serializedValue;
    v5->_serializedValue = v9;
  }

  return v5;
}

- (BOOL)shouldBlockValueDecode
{
  v18 = *MEMORY[0x1E69E9840];
  setting = [(HMAccessoryCollectionSettingItem *)self setting];
  keyPath = [setting keyPath];
  if (!keyPath)
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
      v17 = setting;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to block decode value due to no keypath for setting: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_7;
  }

  if (![HMAccessoryCollectionSettingItem requiresCustomItemValueClassesToDecodeForKeyPath:keyPath])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v5 = +[_HMAccessoryCollectionSettingItemClassManager sharedManager];
  v6 = [v5 hasCustomItemValueClassesForKeyPath:keyPath];

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
      serializedValue = [(HMAccessoryCollectionSettingItem *)self serializedValue];
      selfCopy = self;
      v7 = serializedValue;
      v8 = objc_autoreleasePoolPush();
      setting = [(HMAccessoryCollectionSettingItem *)selfCopy setting];
      v10 = setting;
      if (setting)
      {
        [setting itemValueClasses];
      }

      else
      {
        +[_HMAccessoryCollectionSettingItemClassManager defaultItemValueClasses];
      }
      v23 = ;

      v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:0];
      [v11 setDecodingFailurePolicy:1];
      v12 = [v11 decodeObjectOfClasses:v23 forKey:*MEMORY[0x1E696A508]];
      error = [v11 error];

      if (error)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = selfCopy;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          error2 = [v11 error];
          *buf = 138543618;
          v25 = v17;
          v26 = 2112;
          v27 = error2;
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
    value = [(HMAccessoryCollectionSettingItem *)self value];
    v3 = encodeRootObject(value);
  }

  return v3;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x1E696AEC0];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_1F0E92498;
  }

  identifier = [(HMAccessoryCollectionSettingItem *)self identifier];
  uUIDString = [identifier UUIDString];
  value = [(HMAccessoryCollectionSettingItem *)self value];
  v11 = [v5 stringWithFormat:@"<%@%@, Identifier = %@, Value = %@>", shortDescription, v7, uUIDString, value];

  if (pointerCopy)
  {
  }

  return v11;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMAccessoryCollectionSettingItem *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, identifier];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
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
    if (v6 && (-[HMAccessoryCollectionSettingItem identifier](self, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), -[HMAccessoryCollectionSettingItem identifier](v6, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9))
    {
      value = [(HMAccessoryCollectionSettingItem *)self value];
      value2 = [(HMAccessoryCollectionSettingItem *)v6 value];
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
  identifier = [(HMAccessoryCollectionSettingItem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (HMAccessoryCollectionSettingItem)initWithIdentifier:(id)identifier value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  if (valueCopy)
  {
    v8 = valueCopy;
    v16.receiver = self;
    v16.super_class = HMAccessoryCollectionSettingItem;
    v9 = [(HMAccessoryCollectionSettingItem *)&v16 init];
    if (v9)
    {
      v10 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:identifierCopy];
      identifier = v9->_identifier;
      v9->_identifier = v10;

      objc_storeStrong(&v9->_value, value);
    }

    return v9;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return [(HMAccessoryCollectionSettingItem *)v13 initWithValue:v14, v15];
  }
}

- (HMAccessoryCollectionSettingItem)initWithValue:(id)value
{
  v4 = MEMORY[0x1E696AFB0];
  valueCopy = value;
  uUID = [v4 UUID];
  v7 = [(HMAccessoryCollectionSettingItem *)self initWithIdentifier:uUID value:valueCopy];

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