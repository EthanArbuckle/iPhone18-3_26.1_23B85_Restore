@interface HMAccessorySettingFetchResult
+ (id)fetchResultsWithKeyPaths:(id)a3 failureType:(int64_t)a4;
+ (id)shortDescription;
- (HMAccessorySettingFetchResult)initWithKeyPath:(id)a3 setting:(id)a4 failureType:(int64_t)a5;
- (HMAccessorySettingFetchResult)initWithSetting:(id)a3;
- (NSArray)attributeDescriptions;
- (NSError)error;
- (NSString)shortDescription;
@end

@implementation HMAccessorySettingFetchResult

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessorySettingFetchResult *)self keyPath];
  v5 = [v3 initWithName:@"keyPath" value:v4];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessorySettingFetchResult *)self setting];
  v8 = [v6 initWithName:@"setting" value:v7];
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
  v3 = [(HMAccessorySettingFetchResult *)self setting];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(HMAccessorySettingFetchResult *)self failureType];
    if (v5 > 3)
    {
      v6 = 15;
    }

    else
    {
      v6 = qword_19BE37740[v5];
    }

    v4 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:v6];
  }

  return v4;
}

- (HMAccessorySettingFetchResult)initWithKeyPath:(id)a3 setting:(id)a4 failureType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v11 = v10;
    v19.receiver = self;
    v19.super_class = HMAccessorySettingFetchResult;
    v12 = [(HMAccessorySettingFetchResult *)&v19 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_keyPath, a3);
      objc_storeStrong(&v13->_setting, a4);
      v13->_failureType = a5;
    }

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return [(HMAccessorySettingFetchResult *)v15 initWithKeyPath:v16 failureType:v17, v18];
  }
}

- (HMAccessorySettingFetchResult)initWithSetting:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 keyPath];
    v7 = [(HMAccessorySettingFetchResult *)self initWithKeyPath:v6 setting:v5 failureType:0];

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

+ (id)fetchResultsWithKeyPaths:(id)a3 failureType:(int64_t)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__HMAccessorySettingFetchResult_fetchResultsWithKeyPaths_failureType___block_invoke;
  v6[3] = &__block_descriptor_40_e49___HMAccessorySettingFetchResult_16__0__NSString_8l;
  v6[4] = a4;
  v4 = [a3 na_map:v6];

  return v4;
}

HMAccessorySettingFetchResult *__70__HMAccessorySettingFetchResult_fetchResultsWithKeyPaths_failureType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMAccessorySettingFetchResult alloc] initWithKeyPath:v3 failureType:*(a1 + 32)];

  return v4;
}

@end