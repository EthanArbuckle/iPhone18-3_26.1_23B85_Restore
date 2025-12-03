@interface HMAccessorySettingFetchResult
+ (id)fetchResultsWithKeyPaths:(id)paths failureType:(int64_t)type;
+ (id)shortDescription;
- (HMAccessorySettingFetchResult)initWithKeyPath:(id)path setting:(id)setting failureType:(int64_t)type;
- (HMAccessorySettingFetchResult)initWithSetting:(id)setting;
- (NSArray)attributeDescriptions;
- (NSError)error;
- (NSString)shortDescription;
@end

@implementation HMAccessorySettingFetchResult

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  keyPath = [(HMAccessorySettingFetchResult *)self keyPath];
  v5 = [v3 initWithName:@"keyPath" value:keyPath];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  setting = [(HMAccessorySettingFetchResult *)self setting];
  v8 = [v6 initWithName:@"setting" value:setting];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = HMAccessorySettingsPartialFetchFailureTypeToString([(HMAccessorySettingFetchResult *)self failureType]);
  v11 = [v9 initWithName:@"failureType" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (NSError)error
{
  setting = [(HMAccessorySettingFetchResult *)self setting];

  if (setting)
  {
    v4 = 0;
  }

  else
  {
    failureType = [(HMAccessorySettingFetchResult *)self failureType];
    if (failureType > 3)
    {
      v6 = 15;
    }

    else
    {
      v6 = qword_19BE37740[failureType];
    }

    v4 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:v6];
  }

  return v4;
}

- (HMAccessorySettingFetchResult)initWithKeyPath:(id)path setting:(id)setting failureType:(int64_t)type
{
  pathCopy = path;
  settingCopy = setting;
  if (pathCopy)
  {
    v11 = settingCopy;
    v19.receiver = self;
    v19.super_class = HMAccessorySettingFetchResult;
    v12 = [(HMAccessorySettingFetchResult *)&v19 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_keyPath, path);
      objc_storeStrong(&v13->_setting, setting);
      v13->_failureType = type;
    }

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return [(HMAccessorySettingFetchResult *)v15 initWithKeyPath:v16 failureType:v17, v18];
  }
}

- (HMAccessorySettingFetchResult)initWithSetting:(id)setting
{
  settingCopy = setting;
  if (settingCopy)
  {
    v5 = settingCopy;
    keyPath = [settingCopy keyPath];
    v7 = [(HMAccessorySettingFetchResult *)self initWithKeyPath:keyPath setting:v5 failureType:0];

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return +[(HMAccessorySettingFetchResult *)v9];
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)fetchResultsWithKeyPaths:(id)paths failureType:(int64_t)type
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__HMAccessorySettingFetchResult_fetchResultsWithKeyPaths_failureType___block_invoke;
  v6[3] = &__block_descriptor_40_e49___HMAccessorySettingFetchResult_16__0__NSString_8l;
  v6[4] = type;
  v4 = [paths na_map:v6];

  return v4;
}

HMAccessorySettingFetchResult *__70__HMAccessorySettingFetchResult_fetchResultsWithKeyPaths_failureType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMAccessorySettingFetchResult alloc] initWithKeyPath:v3 failureType:*(a1 + 32)];

  return v4;
}

@end