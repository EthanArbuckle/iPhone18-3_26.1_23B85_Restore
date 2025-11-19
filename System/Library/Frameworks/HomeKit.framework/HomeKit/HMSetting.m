@interface HMSetting
- (BOOL)isEqual:(id)a3;
- (HMSetting)initWithCoder:(id)a3;
- (HMSetting)initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5 value:(id)a6 properties:(unint64_t)a7;
- (HMSetting)initWithInternal;
- (HMSettingManager)settingManager;
- (HMSettingValue)internalValue;
- (NSString)localizedTitle;
- (id)_initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5 value:(id)a6 properties:(unint64_t)a7;
- (id)description;
- (id)valueForUpdate:(id)a3;
- (void)merge:(id)a3;
- (void)updateValue:(id)a3 completionHandler:(id)a4;
@end

@implementation HMSetting

- (HMSettingManager)settingManager
{
  WeakRetained = objc_loadWeakRetained(&self->_settingManager);

  return WeakRetained;
}

- (HMSetting)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.type"];
  v6 = [v5 intValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"HM.value"];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.properties"];
  v14 = [v13 integerValue];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];

  v16 = [(HMSetting *)self _initWithIdentifier:v7 name:v15 type:v6 value:v12 properties:v14];
  return v16;
}

- (void)merge:(id)a3
{
  v5 = [a3 value];
  v4 = [v5 copy];
  [(HMSetting *)self setValue:v4];
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
    v7 = [(HMSetting *)self value];
    v8 = [(HMSetting *)v6 value];

    v9 = HMFEqualObjects();
  }

  return v9;
}

- (void)updateValue:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMSetting *)self settingManager];
  v9 = v8;
  if (v8)
  {
    [v8 updateValueForSetting:self value:v6 completionHandler:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
    v7[2](v7, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)valueForUpdate:(id)a3
{
  v4 = a3;
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
  v2 = [(HMSetting *)self keyPath];
  v3 = [HMAccessorySettings localizationKeyForKeyPath:v2];

  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedString:v3];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HMSetting *)self localizedTitle];
  [(HMSetting *)self isWritable];
  v6 = HMFBooleanToString();
  v7 = [(HMSetting *)self value];
  v8 = [v3 stringWithFormat:@"[%@, Title = %@, Writeable = %@, Value = %@]", v4, v5, v6, v7];

  return v8;
}

- (id)_initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5 value:(id)a6 properties:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if ((a5 - 1) > 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = [objc_alloc(*off_1E754BD68[a5 - 1]) initWithIdentifier:v12 name:v13 type:a5 value:v14 properties:a7];
  }

  return v15;
}

- (HMSetting)initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5 value:(id)a6 properties:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = HMSetting;
  v15 = [(HMSetting *)&v21 init];
  if (v15)
  {
    v16 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v12];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v13];
    name = v15->_name;
    v15->_name = v18;

    objc_storeStrong(&v15->_value, a6);
    v15->_type = a5;
    v15->_properties = a7;
    objc_storeStrong(&v15->_keyPath, a4);
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