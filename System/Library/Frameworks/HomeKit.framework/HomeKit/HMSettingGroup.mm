@interface HMSettingGroup
- (HMSettingGroup)initWithCoder:(id)coder;
- (HMSettingGroup)initWithIdentifier:(id)identifier name:(id)name groups:(id)groups settings:(id)settings;
- (HMSettingGroup)settingGroupWithKeyPath:(id)path;
- (NSArray)groups;
- (NSArray)settings;
- (NSString)keyPath;
- (NSString)localizedTitle;
- (id)description;
- (id)longDescription;
- (unint64_t)hash;
- (void)_longDescriptionWithCurrentGroup:(id)group currentSettings:(id)settings;
- (void)addGroup:(id)group;
- (void)addSetting:(id)setting;
- (void)fixNestedKeyPaths;
- (void)setKeyPath:(id)path;
@end

@implementation HMSettingGroup

- (HMSettingGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HM.groups"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"HM.settings"];

  v15 = [(HMSettingGroup *)self initWithIdentifier:v6 name:v5 groups:v10 settings:v14];
  return v15;
}

- (void)_longDescriptionWithCurrentGroup:(id)group currentSettings:(id)settings
{
  settingsCopy = settings;
  groupCopy = group;
  settings = [groupCopy settings];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__HMSettingGroup__longDescriptionWithCurrentGroup_currentSettings___block_invoke;
  v14[3] = &unk_1E7548A38;
  v9 = settingsCopy;
  v15 = v9;
  [settings na_each:v14];

  groups = [groupCopy groups];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__HMSettingGroup__longDescriptionWithCurrentGroup_currentSettings___block_invoke_2;
  v12[3] = &unk_1E7548A88;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [groups na_each:v12];
}

void __67__HMSettingGroup__longDescriptionWithCurrentGroup_currentSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 value];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v7 = [v8 keyPath];
  [v4 setObject:v6 forKey:v7];

  if (!v5)
  {
  }
}

- (id)longDescription
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(HMSettingGroup *)self _longDescriptionWithCurrentGroup:self currentSettings:dictionary];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ settings: %@]", objc_opt_class(), dictionary];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  keyPath = [(HMSettingGroup *)self keyPath];
  v6 = [v3 stringWithFormat:@"[%@ keyPath: %@]", v4, keyPath];

  return v6;
}

- (void)fixNestedKeyPaths
{
  groups = [(HMSettingGroup *)self groups];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__HMSettingGroup_fixNestedKeyPaths__block_invoke;
  v6[3] = &unk_1E7548A10;
  v6[4] = self;
  [groups na_each:v6];

  settings = [(HMSettingGroup *)self settings];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__HMSettingGroup_fixNestedKeyPaths__block_invoke_2;
  v5[3] = &unk_1E7548A38;
  v5[4] = self;
  [settings na_each:v5];
}

void __35__HMSettingGroup_fixNestedKeyPaths__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 keyPath];
  v5 = [v7 name];
  v6 = [v2 stringWithFormat:@"%@.%@", v4, v5];
  [v7 setKeyPath:v6];

  [v7 fixNestedKeyPaths];
}

void __35__HMSettingGroup_fixNestedKeyPaths__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 keyPath];
  v5 = [v4 name];
  v6 = [v2 stringWithFormat:@"%@.%@", v7, v5];
  [v4 setKeyPath:v6];
}

- (void)setKeyPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock_with_options();
  keyPath = self->_keyPath;
  self->_keyPath = pathCopy;

  os_unfair_lock_unlock(&self->_lock);

  [(HMSettingGroup *)self fixNestedKeyPaths];
}

- (NSString)keyPath
{
  os_unfair_lock_lock_with_options();
  v3 = self->_keyPath;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMSettingGroup)settingGroupWithKeyPath:(id)path
{
  pathCopy = path;
  groups = [(HMSettingGroup *)self groups];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__HMSettingGroup_settingGroupWithKeyPath___block_invoke;
  v9[3] = &unk_1E7548A60;
  v10 = pathCopy;
  v6 = pathCopy;
  v7 = [groups na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __42__HMSettingGroup_settingGroupWithKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 keyPath];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)addSetting:(id)setting
{
  settingCopy = setting;
  v4 = MEMORY[0x1E696AEC0];
  keyPath = [(HMSettingGroup *)self keyPath];
  name = [settingCopy name];
  v7 = [v4 stringWithFormat:@"%@.%@", keyPath, name];
  [settingCopy setKeyPath:v7];

  os_unfair_lock_lock_with_options();
  settings = self->_settings;
  name2 = [settingCopy name];
  [(NSMutableDictionary *)settings setObject:settingCopy forKey:name2];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addGroup:(id)group
{
  groupCopy = group;
  v4 = MEMORY[0x1E696AEC0];
  keyPath = [(HMSettingGroup *)self keyPath];
  name = [groupCopy name];
  v7 = [v4 stringWithFormat:@"%@.%@", keyPath, name];
  [groupCopy setKeyPath:v7];

  os_unfair_lock_lock_with_options();
  groups = self->_groups;
  name2 = [groupCopy name];
  [(NSMutableDictionary *)groups setObject:groupCopy forKey:name2];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)settings
{
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_settings allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (NSArray)groups
{
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_groups allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (unint64_t)hash
{
  name = [(HMSettingGroup *)self name];
  v3 = [name hash];

  return v3;
}

- (NSString)localizedTitle
{
  keyPath = [(HMSettingGroup *)self keyPath];
  v3 = [HMAccessorySettings localizationKeyForKeyPath:keyPath];

  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedString:v3];

  return v5;
}

- (HMSettingGroup)initWithIdentifier:(id)identifier name:(id)name groups:(id)groups settings:(id)settings
{
  identifierCopy = identifier;
  nameCopy = name;
  groupsCopy = groups;
  settingsCopy = settings;
  v28.receiver = self;
  v28.super_class = HMSettingGroup;
  v15 = [(HMSettingGroup *)&v28 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    settings = v16->_settings;
    v16->_settings = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    groups = v16->_groups;
    v16->_groups = v19;

    objc_storeStrong(&v16->_identifier, identifier);
    objc_storeStrong(&v16->_name, name);
    keyPath = v16->_keyPath;
    v16->_keyPath = @"root";

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __58__HMSettingGroup_initWithIdentifier_name_groups_settings___block_invoke;
    v26[3] = &unk_1E7548A10;
    v22 = v16;
    v27 = v22;
    [groupsCopy na_each:v26];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__HMSettingGroup_initWithIdentifier_name_groups_settings___block_invoke_3;
    v24[3] = &unk_1E7548A38;
    v25 = v22;
    [settingsCopy na_each:v24];
  }

  return v16;
}

void __58__HMSettingGroup_initWithIdentifier_name_groups_settings___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v3 && (isKindOfClass & 1) != 0)
  {
    [*(a1 + 32) addGroup:v3];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type found while decoding group", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __58__HMSettingGroup_initWithIdentifier_name_groups_settings___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v3 && (isKindOfClass & 1) != 0)
  {
    [*(a1 + 32) addSetting:v3];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type found while decoding setting", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end