@interface HMSetting
- (BOOL)isEqual:(id)equal;
- (HMSetting)initWithCoder:(id)coder;
- (HMSetting)initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type value:(id)value properties:(unint64_t)properties;
- (HMSetting)initWithInternal;
- (HMSettingManager)settingManager;
- (HMSettingValue)internalValue;
- (NSString)localizedTitle;
- (id)_initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type value:(id)value properties:(unint64_t)properties;
- (id)description;
- (id)valueForUpdate:(id)update;
- (void)merge:(id)merge;
- (void)updateValue:(id)value completionHandler:(id)handler;
@end

@implementation HMSetting

- (HMSettingManager)settingManager
{
  WeakRetained = objc_loadWeakRetained(&self->_settingManager);

  return WeakRetained;
}

- (HMSetting)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.type"];
  intValue = [v5 intValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"HM.value"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.properties"];
  integerValue = [v13 integerValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];

  v16 = [(HMSetting *)self _initWithIdentifier:v7 name:v15 type:intValue value:v12 properties:integerValue];
  return v16;
}

- (void)merge:(id)merge
{
  value = [merge value];
  v4 = [value copy];
  [(HMSetting *)self setValue:v4];
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
    value = [(HMSetting *)self value];
    value2 = [(HMSetting *)v6 value];

    v9 = HMFEqualObjects();
  }

  return v9;
}

- (void)updateValue:(id)value completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  handlerCopy = handler;
  settingManager = [(HMSetting *)self settingManager];
  v9 = settingManager;
  if (settingManager)
  {
    [settingManager updateValueForSetting:self value:valueCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@setting does not have manager", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    handlerCopy[2](handlerCopy, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)valueForUpdate:(id)update
{
  updateCopy = update;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMSettingValue)internalValue
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

- (NSString)localizedTitle
{
  keyPath = [(HMSetting *)self keyPath];
  v3 = [HMAccessorySettings localizationKeyForKeyPath:keyPath];

  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedString:v3];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  localizedTitle = [(HMSetting *)self localizedTitle];
  [(HMSetting *)self isWritable];
  v6 = HMFBooleanToString();
  value = [(HMSetting *)self value];
  v8 = [v3 stringWithFormat:@"[%@, Title = %@, Writeable = %@, Value = %@]", v4, localizedTitle, v6, value];

  return v8;
}

- (id)_initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type value:(id)value properties:(unint64_t)properties
{
  identifierCopy = identifier;
  nameCopy = name;
  valueCopy = value;
  if ((type - 1) > 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = [objc_alloc(*off_1E754BD68[type - 1]) initWithIdentifier:identifierCopy name:nameCopy type:type value:valueCopy properties:properties];
  }

  return v15;
}

- (HMSetting)initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type value:(id)value properties:(unint64_t)properties
{
  identifierCopy = identifier;
  nameCopy = name;
  valueCopy = value;
  v21.receiver = self;
  v21.super_class = HMSetting;
  v15 = [(HMSetting *)&v21 init];
  if (v15)
  {
    v16 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:identifierCopy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
    name = v15->_name;
    v15->_name = v18;

    objc_storeStrong(&v15->_value, value);
    v15->_type = type;
    v15->_properties = properties;
    objc_storeStrong(&v15->_keyPath, name);
  }

  return v15;
}

- (HMSetting)initWithInternal
{
  v3.receiver = self;
  v3.super_class = HMSetting;
  return [(HMSetting *)&v3 init];
}

@end