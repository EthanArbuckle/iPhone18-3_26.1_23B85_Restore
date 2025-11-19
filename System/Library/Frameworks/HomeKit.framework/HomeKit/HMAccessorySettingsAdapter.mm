@interface HMAccessorySettingsAdapter
+ (BOOL)defaultSettingsContainsKeyPath:(id)a3;
+ (BOOL)isKeyPathForBooleanSettingType:(id)a3;
+ (BOOL)isKeyPathForConstrainedNumberSettingType:(id)a3;
+ (BOOL)isKeyPathForTapAssistanceSelectionSettingType:(id)a3;
+ (NSArray)languageKeyPaths;
+ (id)defaultSettingsAllKeyPaths;
+ (id)defaultSettingsConstraintsForKeyPath:(id)a3;
+ (id)logCategory;
+ (id)scaleDownNumberSettingValue:(id)a3;
+ (id)scaleUpNumberSettingValue:(id)a3;
+ (id)tapAssistanceSelectionItemWithIndex:(int64_t)a3;
+ (int64_t)itemIndexWithTapAssistanceSelectionItem:(id)a3;
- (BOOL)BOOLeanSettingValueWithKeyPath:(id)a3;
- (BOOL)_addOrUpdateLanguageSetting:(id)a3 availableLanguagesSetting:(id)a4;
- (BOOL)_handleLanguageSettingUpdate:(id)a3;
- (BOOL)isValidSelectionItemNumberConstraintValue:(id)a3 min:(id)a4 max:(id)a5 step:(id)a6;
- (BOOL)settingReflected:(id)a3;
- (BOOL)transformSelectionToInteger:(id)a3 integerValue:(int64_t *)a4;
- (BOOL)updateBooleanSettingWithKeyPath:(id)a3 value:(BOOL)a4;
- (BOOL)updateNumberSettingWithKeyPath:(id)a3 value:(id)a4;
- (BOOL)updateTapAssistanceSelectionSettingWithKeyPath:(id)a3 value:(id)a4;
- (HMAccessorySettingsAdapter)initWithHomeIdentifier:(id)a3 dataSource:(id)a4 controller:(id)a5 workQueue:(id)a6 settingsContainer:(id)a7 containerIdentifier:(id)a8 containerType:(int64_t)a9 settingsControl:(id)a10 context:(id)a11;
- (HMAccessorySettingsAdapterDelegate)delegate;
- (HMAccessorySettingsContainerInternal)settingsContainer;
- (HMControllable)settingsControl;
- (id)_findSettingInGroupForKeyPath:(id)a3 group:(id)a4;
- (id)_transformAccessorySettingToLanguageSetting:(id)a3;
- (id)accessoryLanguageSetting;
- (id)accessoryNumberSettingWithKeyPath:(id)a3;
- (id)accessorySettingWithKeyPath:(id)a3;
- (id)createKeyPathArrayWithKeyPath:(id)a3;
- (id)createTapAssistanceSelectionSettingFromNumberConstraint:(id)a3 properties:(unint64_t)a4 value:(id)a5 min:(id)a6 max:(id)a7 step:(id)a8;
- (id)createTapAssistanceSelections;
- (id)findOrAddAccessorySettingGroupWithKeyPath:(id)a3;
- (id)groupKeyArrayFromKeyPath:(id)a3;
- (id)languageSelectionItemFromValue:(id)a3;
- (id)logIdentifier;
- (id)numberSettingValueWithKeyPath:(id)a3;
- (id)settingKeyFromKeyPath:(id)a3;
- (id)tapAssistanceSelectionSetting:(id)a3;
- (id)tapAssistanceSelectionSettingValue:(id)a3;
- (id)transformIntegerToSelection:(int64_t)a3;
- (void)_configureForAccessoryWithCompletionHandler:(id)a3;
- (void)_configureForMediaSystemWithCompletionHandler:(id)a3;
- (void)accessorySettingsDataSource:(id)a3 didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a4 settings:(id)a5;
- (void)configureWithCompletionHandler:(id)a3;
- (void)createRootSettingGroup;
- (void)unconfigure;
- (void)updateSettingsReflected:(BOOL)a3;
- (void)updateWithKeyPath:(id)a3 value:(id)a4 completionHandler:(id)a5;
@end

@implementation HMAccessorySettingsAdapter

- (HMControllable)settingsControl
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsControl);

  return WeakRetained;
}

- (HMAccessorySettingsContainerInternal)settingsContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsContainer);

  return WeakRetained;
}

- (HMAccessorySettingsAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessorySettingsAdapter *)self containerType];
  if (v3 == 2)
  {
    v4 = [(HMAccessorySettingsAdapter *)self settingsContainer];
    v6 = [v4 containerUUID];
    v5 = [v6 UUIDString];

    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = [(HMAccessorySettingsAdapter *)self settingsContainerIdentifier];
    v5 = [v4 UUIDString];
LABEL_5:

    goto LABEL_9;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unknown settings container type", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v5 = @"wrong-log-identifier";
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)settingReflected:(id)a3
{
  v3 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isReflected];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tapAssistanceSelectionSettingValue:(id)a3
{
  v3 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelectionSetting:a3];
  v4 = [v3 value];
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

  return v5;
}

- (id)tapAssistanceSelectionSetting:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isKeyPathForTapAssistanceSelectionSettingType:v4])
  {
    v5 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)numberSettingValueWithKeyPath:(id)a3
{
  v3 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = [v3 value];
  }

  else
  {
    v6 = &unk_1F0EFD070;
  }

  return v6;
}

- (id)accessoryLanguageSetting
{
  v3 = [objc_opt_class() selectedLanguageSettingKeyPath];
  v4 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:v3];

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (BOOL)BOOLeanSettingValueWithKeyPath:(id)a3
{
  v3 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = [v3 value];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:1];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)transformSelectionToInteger:(id)a3 integerValue:(int64_t *)a4
{
  v6 = a3;
  v7 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];

  if (v7)
  {
    v8 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__HMAccessorySettingsAdapter_transformSelectionToInteger_integerValue___block_invoke;
    v11[3] = &unk_1E7549288;
    v12 = v6;
    *a4 = [v8 indexOfObjectPassingTest:v11];

    v9 = *a4 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __71__HMAccessorySettingsAdapter_transformSelectionToInteger_integerValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (id)transformIntegerToSelection:(int64_t)a3
{
  v5 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];

  v6 = 0;
  if ((a3 & 0x8000000000000000) == 0 && v5)
  {
    v7 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
    v8 = [v7 count];

    if (v8 <= a3)
    {
      v6 = 0;
    }

    else
    {
      v9 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
      v6 = [v9 objectAtIndexedSubscript:a3];
    }
  }

  return v6;
}

- (id)createTapAssistanceSelections
{
  v2 = [objc_opt_class() tapAssistanceSelectionTitles];
  v3 = [v2 na_map:&__block_literal_global_76];

  return v3;
}

HMAccessorySelectionSettingItem *__59__HMAccessorySettingsAdapter_createTapAssistanceSelections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMAccessorySelectionSettingItem alloc] initWithTitle:v2];

  return v3;
}

- (id)languageSelectionItemFromValue:(id)a3
{
  v3 = a3;
  v4 = [v3 inputLanguageCode];
  v5 = [v3 outputVoiceLanguageCode];
  v6 = [v3 outputVoiceGenderCode];
  v7 = [&stru_1F0E92498 stringByAppendingFormat:@"%@, %@, %@, %@", v4, v5, v6, @"d"];

  v8 = [v3 voiceName];

  if (v8)
  {
    v9 = [v3 voiceName];
    v10 = [v7 stringByAppendingFormat:@", %@", v9];

    v7 = v10;
  }

  v11 = [[HMAccessorySelectionSettingItem alloc] initWithTitle:v7];

  return v11;
}

- (BOOL)_addOrUpdateLanguageSetting:(id)a3 availableLanguagesSetting:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() selectedLanguageSettingKeyPath];
  if (v6 && v7)
  {
    v9 = [(HMAccessorySettingsAdapter *)self rootGroup];
    v10 = [(HMAccessorySettingsAdapter *)self _findSettingInGroupForKeyPath:v8 group:v9];

    v37 = [(HMAccessorySettingsAdapter *)self groupKeyArrayFromKeyPath:v8];
    v38 = [(HMAccessorySettingsAdapter *)self findOrAddAccessorySettingGroupWithKeyPath:?];
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = v13 == 0;
    v15 = v11;
    if (!v13)
    {
      v16 = [(HMAccessorySettingsAdapter *)self legacyLanguageSettingFromSelectedSetting:v6 selections:v7 settingsReflected:[(HMAccessorySettingsAdapter *)self settingsReflected]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v15 = v17;

      v18 = [v15 internal];
      v19 = [(HMAccessorySettingsAdapter *)self accessorySettings];
      v20 = [(HMAccessorySettingsAdapter *)self accessoryContext];
      [v18 configureWithAccessorySettings:v19 context:v20 shouldHandleUpdatedValue:0];

      [v38 addSetting:v15];
    }

    v21 = [(HMAccessorySettingsAdapter *)self legacyLanguageSettingFromSelectedSetting:v6 selections:v7 settingsReflected:[(HMAccessorySettingsAdapter *)self settingsReflected]];
    v22 = [v15 value];
    v23 = [v21 value];
    v24 = [v22 isEqual:v23];

    if ((v24 & 1) == 0)
    {
      v25 = [v21 value];
      [v15 updateValue:v25];

      v14 = 1;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [(HMAccessorySettingsAdapter *)v27 selectedLanguageSetting];
      v31 = MEMORY[0x1E696AD98];
      v32 = [(HMAccessorySettingsAdapter *)v27 availableLanguageSetting];
      [v32 languageValues];
      v33 = v39 = v26;
      v34 = [v31 numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
      *buf = 138543874;
      v41 = v29;
      v42 = 2112;
      v43 = v30;
      v44 = 2112;
      v45 = v34;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Missing selected language: %@ or available language settings (count): %@", buf, 0x20u);

      v26 = v39;
    }

    objc_autoreleasePoolPop(v26);
    v14 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_findSettingInGroupForKeyPath:(id)a3 group:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 settings];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __66__HMAccessorySettingsAdapter__findSettingInGroupForKeyPath_group___block_invoke;
    v18[3] = &unk_1E754B680;
    v10 = v6;
    v19 = v10;
    v11 = [v9 na_firstObjectPassingTest:v18];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v13 = [v8 groups];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __66__HMAccessorySettingsAdapter__findSettingInGroupForKeyPath_group___block_invoke_2;
      v16[3] = &unk_1E7549218;
      v16[4] = self;
      v17 = v10;
      v14 = [v13 na_map:v16];

      if ([v14 count])
      {
        v12 = [v14 firstObject];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __66__HMAccessorySettingsAdapter__findSettingInGroupForKeyPath_group___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 keyPath];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_handleLanguageSettingUpdate:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 keyPath];
  v6 = [objc_opt_class() selectedLanguageSettingKeyPath];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (!v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v27 = 138543874;
        v28 = v14;
        v29 = 2112;
        v30 = 0;
        v31 = 2112;
        v32 = v8;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected setting type for setting = %@, cast from object:%@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }

    [(HMAccessorySettingsAdapter *)self setSelectedLanguageSetting:v10];
LABEL_16:

    goto LABEL_17;
  }

  v15 = [v4 keyPath];
  v16 = [objc_opt_class() availableLanguagesKeyPath];
  v17 = [v15 isEqual:v16];

  if (v17)
  {
    v10 = v4;
    if (!v10)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v21;
        v29 = 2112;
        v30 = 0;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unexpected setting type for setting = %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }

    [(HMAccessorySettingsAdapter *)self setAvailableLanguageSetting:v10];
    goto LABEL_16;
  }

LABEL_17:
  v22 = [(HMAccessorySettingsAdapter *)self selectedLanguageSetting];
  v23 = [(HMAccessorySettingsAdapter *)self availableLanguageSetting];
  v24 = [(HMAccessorySettingsAdapter *)self _addOrUpdateLanguageSetting:v22 availableLanguagesSetting:v23];

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (void)accessorySettingsDataSource:(id)a3 didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a4 settings:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HMAccessorySettingsAdapter *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__HMAccessorySettingsAdapter_accessorySettingsDataSource_didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke;
  block[3] = &unk_1E754E5E8;
  v13 = v8;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

void __119__HMAccessorySettingsAdapter_accessorySettingsDataSource_didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) hmf_isEmpty])
  {
    v6 = [*(a1 + 40) accessorySettings];
    v7 = [v6 settingsContainerInternal];

    if (v7)
    {
      if ([*(a1 + 40) containerType] == 1)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 40);
        v10 = HMFGetOSLogHandle();
        v58 = v7;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          v12 = *(a1 + 48);
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
          *buf = 138543874;
          v70 = v11;
          v71 = 2112;
          v72 = v12;
          v73 = 2112;
          v74 = v13;
          v14 = "%{public}@Adapter did receive setting update: accessory: %@ settings (count): %@";
LABEL_14:
          _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, v14, buf, 0x20u);

          goto LABEL_15;
        }

        goto LABEL_15;
      }

      v17 = [*(a1 + 40) containerType];
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      v10 = v18;
      if (v17 == 2)
      {
        v58 = v7;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          v19 = *(a1 + 48);
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
          *buf = 138543874;
          v70 = v11;
          v71 = 2112;
          v72 = v19;
          v73 = 2112;
          v74 = v13;
          v14 = "%{public}@Adapter did receive setting update: media system: %@ settings (count): %@";
          goto LABEL_14;
        }

LABEL_15:

        objc_autoreleasePoolPop(v8);
        v61 = [MEMORY[0x1E695DF70] array];
        v60 = [*(a1 + 40) delegate];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        obj = *(a1 + 32);
        v63 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
        if (v63)
        {
          v20 = *v65;
          v21 = off_1E7545000;
          do
          {
            for (i = 0; i != v63; ++i)
            {
              if (*v65 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v64 + 1) + 8 * i);
              v24 = [v23 keyPath];
              if (([*(a1 + 40) didReceiveFirstUpdateEvent] & 1) == 0)
              {
                v25 = [*(a1 + 40) accessorySettings];

                if (v25)
                {
                  v26 = objc_autoreleasePoolPush();
                  v27 = *(a1 + 40);
                  v28 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                  {
                    v29 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v70 = v29;
                    _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Received first update event, notifying delegate we have a valid settings tree.", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v26);
                  v30 = *(a1 + 40);
                  v31 = [v30 accessorySettings];
                  [v60 adapter:v30 didUpdateSettings:v31];

                  [*(a1 + 40) setDidReceiveFirstUpdateEvent:1];
                }
              }

              v32 = v21[88];
              v33 = v23;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v34 = v33;
              }

              else
              {
                v34 = 0;
              }

              v35 = v34;

              if (v35)
              {
                if ([*(a1 + 40) updateBooleanSettingWithKeyPath:v24 value:{objc_msgSend(v35, "BOOLValue")}])
                {
                  [v61 addObject:v24];
                }
              }

              else
              {
                v36 = v33;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v37 = v36;
                }

                else
                {
                  v37 = 0;
                }

                v38 = v37;

                if (v38)
                {
                  v39 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v38, "integerValue")}];
                  v40 = *(a1 + 40);
                  v41 = [objc_opt_class() scaleDownNumberSettingValue:v39];
                  v42 = *(a1 + 40);
                  if ([objc_opt_class() isKeyPathForTapAssistanceSelectionSettingType:v24])
                  {
                    v43 = [*(a1 + 40) transformIntegerToSelection:{objc_msgSend(v41, "integerValue")}];
                    if (v43 && [*(a1 + 40) updateTapAssistanceSelectionSettingWithKeyPath:v24 value:v43])
                    {
                      [v61 addObject:v24];
                    }
                  }

                  else if ([*(a1 + 40) updateNumberSettingWithKeyPath:v24 value:v41])
                  {
                    [v61 addObject:v24];
                  }
                }

                else
                {
                  v44 = *(a1 + 40);
                  v45 = [objc_opt_class() languageKeyPaths];
                  v46 = [v45 containsObject:v24];

                  if (v46)
                  {
                    if ([*(a1 + 40) _handleLanguageSettingUpdate:v36])
                    {
                      [v61 addObject:v24];
                    }
                  }

                  else
                  {
                    v47 = objc_autoreleasePoolPush();
                    v48 = *(a1 + 40);
                    v49 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                    {
                      HMFGetLogIdentifier();
                      v50 = v59 = v47;
                      v51 = [v36 keyPath];
                      *buf = 138543618;
                      v70 = v50;
                      v71 = 2112;
                      v72 = v51;
                      _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_ERROR, "%{public}@The setting object for key path: %@ is not supported in the adapter.", buf, 0x16u);

                      v47 = v59;
                    }

                    objc_autoreleasePoolPop(v47);
                  }
                }

                v21 = off_1E7545000;
              }
            }

            v63 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
          }

          while (v63);
        }

        v7 = v58;
        if ([v61 count])
        {
          v52 = objc_autoreleasePoolPush();
          v53 = *(a1 + 40);
          v54 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = HMFGetLogIdentifier();
            *buf = 138543618;
            v70 = v55;
            v71 = 2112;
            v72 = v61;
            _os_log_impl(&dword_19BB39000, v54, OS_LOG_TYPE_INFO, "%{public}@Adapter did update for settings %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v52);
          [v60 adapter:*(a1 + 40) didUpdateSettingKeyPaths:v61];
        }

        goto LABEL_60;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543362;
        v70 = v56;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unknown settings container type this adapter", buf, 0xCu);
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 40) accessorySettings];
        *buf = 138543618;
        v70 = v15;
        v71 = 2112;
        v72 = v16;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@settings container not found, not processing. settings: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v8);
LABEL_60:

    goto LABEL_61;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v70 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Event delegate call from dataSource has empty settings array.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
LABEL_61:
  v57 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateTapAssistanceSelectionSettingWithKeyPath:(id)a3 value:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelectionSetting:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 value];
    [v9 updateValue:v7];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v9 keyPath];
      v16 = [v9 value];
      v21 = 138544130;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully updated the tap assistance selection setting: %@, old value: %@, new value: %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v17 = [v9 value];
    v18 = [v10 isEqual:v17] ^ 1;
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)updateNumberSettingWithKeyPath:(id)a3 value:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [v10 value];
    v12 = v7;
    [v10 updateValue:v12];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      [v8 keyPath];
      v17 = v22 = v13;
      [v10 value];
      v18 = v23 = v7;
      *buf = 138544130;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully updated the number setting: %@, old value: %@, new value: %@", buf, 0x2Au);

      v7 = v23;
      v13 = v22;
    }

    objc_autoreleasePoolPop(v13);
    v19 = [v11 isEqual:v12] ^ 1;
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)updateBooleanSettingWithKeyPath:(id)a3 value:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 value];
    v11 = &unk_1F0EFCFE0;
    if (v4)
    {
      v11 = &unk_1F0EFCFC8;
    }

    v12 = v11;
    [v9 updateValue:v12];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v7 keyPath];
      [v9 value];
      v18 = v22 = v13;
      *buf = 138544130;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully updated the BOOLean setting: %@, old value: %@, new value: %@", buf, 0x2Au);

      v13 = v22;
    }

    objc_autoreleasePoolPop(v13);
    v19 = [v10 isEqual:v12] ^ 1;
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)accessorySettingWithKeyPath:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessorySettingsAdapter *)self groupKeyArrayFromKeyPath:v4];
  if ([v5 hmf_isEmpty])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(HMAccessorySettingsAdapter *)self rootGroup];
    v8 = [v7 keyPath];
    v9 = [v5 objectAtIndexedSubscript:0];
    v10 = [v9 isEqual:v8];

    if (v10)
    {
      v25 = v4;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        v15 = 1;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if ((v15 & 1) == 0)
            {
              v17 = [(HMAccessorySettingsAdapter *)self appendKeyPath:v8 withNextKey:*(*(&v26 + 1) + 8 * i)];

              v18 = [v7 accessorySettingGroupWithKeyPath:v17];

              if (!v18)
              {
                v19 = objc_autoreleasePoolPush();
                v20 = self;
                v21 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v22 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v31 = v22;
                  v32 = 2112;
                  v33 = v17;
                  _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot find group with the key path: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v19);
                v7 = 0;
                v6 = 0;
                v4 = v25;
                goto LABEL_20;
              }

              v8 = v17;
              v7 = v18;
            }

            v15 = 0;
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          v15 = 0;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v4 = v25;
      v6 = [v7 accessorySettingWithKeyPath:v25];
    }

    else
    {
      v6 = 0;
    }

    v17 = v8;
LABEL_20:
  }

  v23 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)accessoryNumberSettingWithKeyPath:(id)a3
{
  v3 = [(HMAccessorySettingsAdapter *)self accessorySettingWithKeyPath:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)isValidSelectionItemNumberConstraintValue:(id)a3 min:(id)a4 max:(id)a5 step:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v15 = ![v10 integerValue] && objc_msgSend(v11, "integerValue") == 2 && (v13 = objc_msgSend(v9, "integerValue"), v13 >= objc_msgSend(v10, "integerValue")) && (v14 = objc_msgSend(v9, "integerValue"), v14 <= objc_msgSend(v11, "integerValue")) && objc_msgSend(v12, "integerValue") == 1;

  return v15;
}

- (id)createTapAssistanceSelectionSettingFromNumberConstraint:(id)a3 properties:(unint64_t)a4 value:(id)a5 min:(id)a6 max:(id)a7 step:(id)a8
{
  v37 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([(HMAccessorySettingsAdapter *)self isValidSelectionItemNumberConstraintValue:v15 min:v16 max:v17 step:v18])
  {
    v19 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
    if (v19)
    {
      v20 = v19;
      v21 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
      v22 = [v21 count];

      if (v22 == 3)
      {
        v23 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
        v24 = [v23 objectAtIndexedSubscript:{objc_msgSend(v15, "integerValue")}];

        v25 = [HMAccessorySelectionSetting alloc];
        v26 = [(HMAccessorySettingsAdapter *)self tapAssistanceSelections];
        v27 = [(HMAccessorySelectionSetting *)v25 initWithKey:v14 properties:a4 value:v24 items:v26];

        goto LABEL_11;
      }
    }

    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v31;
      v32 = "%{public}@Tab assistance selections array is nil or the number selection items is not 3";
      goto LABEL_9;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v31;
      v32 = "%{public}@Invalid number constraints for tab assistance selection item";
LABEL_9:
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, v32, &v35, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v28);
  v27 = 0;
LABEL_11:

  v33 = *MEMORY[0x1E69E9840];

  return v27;
}

- (void)createRootSettingGroup
{
  v2 = self;
  v72 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessorySettingsAdapter *)self rootGroup];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = v2;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Warning: Settings adapter root group has already been constructed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_35;
  }

  v8 = [(HMAccessorySettingsAdapter *)v2 createTapAssistanceSelections];
  [(HMAccessorySettingsAdapter *)v2 setTapAssistanceSelections:v8];

  v9 = [objc_opt_class() defaultSettings];
  v10 = [v9 allKeys];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v10;
  v59 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (!v59)
  {
    goto LABEL_24;
  }

  v58 = *v62;
  *&v11 = 138543618;
  v52 = v11;
  do
  {
    for (i = 0; i != v59; ++i)
    {
      if (*v62 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v61 + 1) + 8 * i);
      v14 = [(HMAccessorySettingsAdapter *)v2 groupKeyArrayFromKeyPath:v13, v52];
      v60 = [(HMAccessorySettingsAdapter *)v2 findOrAddAccessorySettingGroupWithKeyPath:v14];
      v15 = [(HMAccessorySettingsAdapter *)v2 settingKeyFromKeyPath:v13];
      v16 = [objc_opt_class() defaultSettings];
      v17 = [v16 hmf_arrayForKey:v13];

      if ([v17 count] == 6)
      {
        v18 = [v17 objectAtIndexedSubscript:0];
        v19 = [v17 objectAtIndexedSubscript:1];
        v20 = [v17 objectAtIndexedSubscript:2];
        v21 = [v17 objectAtIndexedSubscript:3];
        v56 = v20;
        v57 = v15;
        v55 = v21;
        if ([objc_opt_class() isKeyPathForTapAssistanceSelectionSettingType:v13])
        {
          v22 = [(HMAccessorySettingsAdapter *)v2 createTapAssistanceSelectionSettingFromNumberConstraint:v15 properties:3 value:v21 min:v18 max:v19 step:v20];
          if (!v22)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = v2;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v53 = HMFGetLogIdentifier();
              *buf = v52;
              v66 = v53;
              v67 = 2112;
              v68 = v13;
              _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Error in creating setting for keypath %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v23);
            v26 = v60;
            goto LABEL_21;
          }
        }

        else
        {
          v22 = [[HMAccessoryNumberSetting alloc] initWithKey:v15 properties:3 value:v21 minimumValue:v18 maximumValue:v19 stepValue:v20];
        }

        v32 = [(HMAccessorySetting *)v22 internal];
        v33 = [(HMAccessorySettingsAdapter *)v2 accessorySettings];
        [(HMAccessorySettingsAdapter *)v2 accessoryContext];
        v34 = v17;
        v35 = v14;
        v36 = v2;
        v37 = v18;
        v39 = v38 = v19;
        [v32 configureWithAccessorySettings:v33 context:v39 shouldHandleUpdatedValue:0];

        v19 = v38;
        v18 = v37;
        v2 = v36;
        v14 = v35;
        v17 = v34;

        v26 = v60;
        [v60 addSetting:v22];

LABEL_21:
        v15 = v57;
        goto LABEL_22;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = v2;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v31 = v30 = v15;
        *buf = 138543362;
        v66 = v31;
        _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Value array size mismatch", buf, 0xCu);

        v15 = v30;
      }

      objc_autoreleasePoolPop(v27);
      v26 = v60;
LABEL_22:
    }

    v59 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  }

  while (v59);
LABEL_24:

  if ([(HMAccessorySettingsAdapter *)v2 containerType]== 1)
  {
    v40 = objc_autoreleasePoolPush();
    v41 = v2;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      v44 = [(HMAccessorySettingsAdapter *)v41 homeIdentifier];
      v45 = [(HMAccessorySettingsAdapter *)v41 settingsContainerIdentifier];
      *buf = 138543874;
      v66 = v43;
      v67 = 2112;
      v68 = v44;
      v69 = 2112;
      v70 = v45;
      v46 = "%{public}@Root group created for home: %@, accessory: %@";
      goto LABEL_30;
    }
  }

  else
  {
    v47 = [(HMAccessorySettingsAdapter *)v2 containerType];
    v40 = objc_autoreleasePoolPush();
    v48 = v2;
    v49 = HMFGetOSLogHandle();
    v42 = v49;
    if (v47 == 2)
    {
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      v43 = HMFGetLogIdentifier();
      v44 = [(HMAccessorySettingsAdapter *)v48 homeIdentifier];
      v45 = [(HMAccessorySettingsAdapter *)v48 settingsContainerIdentifier];
      *buf = 138543874;
      v66 = v43;
      v67 = 2112;
      v68 = v44;
      v69 = 2112;
      v70 = v45;
      v46 = "%{public}@Root group created for home: %@, media system: %@";
LABEL_30:
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_INFO, v46, buf, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      v43 = HMFGetLogIdentifier();
      v50 = [(HMAccessorySettingsAdapter *)v48 homeIdentifier];
      *buf = 138543618;
      v66 = v43;
      v67 = 2112;
      v68 = v50;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@Error in root group creation for home: %@", buf, 0x16u);
    }
  }

LABEL_34:

  objc_autoreleasePoolPop(v40);
LABEL_35:
  v51 = *MEMORY[0x1E69E9840];
}

- (id)findOrAddAccessorySettingGroupWithKeyPath:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessorySettingsAdapter *)self rootGroup];
  if (v5)
  {
  }

  else
  {
    v6 = [(HMAccessorySettingsAdapter *)self accessorySettings];

    if (!v6)
    {
      v7 = [HMAccessorySettingGroup alloc];
      v8 = [v4 firstObject];
      v9 = [(HMAccessorySettingGroup *)v7 initWithKeyPath:v8];
      [(HMAccessorySettingsAdapter *)self setRootGroup:v9];

      v10 = [HMAccessorySettings alloc];
      v11 = [(HMAccessorySettingsAdapter *)self settingsContainer];
      v12 = [(HMAccessorySettingsAdapter *)self settingsControl];
      v13 = [(HMAccessorySettingsAdapter *)self rootGroup];
      v14 = [(HMAccessorySettings *)v10 initWithSettingsContainer:v11 settingsControl:v12 rootGroup:v13];
      [(HMAccessorySettingsAdapter *)self setAccessorySettings:v14];

      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v18;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Creating RootGroup and AccessorySettings for the adapter", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = [(HMAccessorySettingsAdapter *)self rootGroup];
  if (v19)
  {
    v20 = v19;
    v21 = [(HMAccessorySettingsAdapter *)self accessorySettings];

    if (v21)
    {
      v22 = [(HMAccessorySettingsAdapter *)self rootGroup];
      v23 = [v22 keyPath];
      if ([v4 hmf_isEmpty])
      {
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v53 = v27;
          _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Group key array cannot be empty.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
      }

      else
      {
        v33 = [v4 objectAtIndexedSubscript:0];
        v34 = [v23 isEqual:v33];

        if (v34)
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = v4;
          v35 = v4;
          v36 = [v35 countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v48;
            v39 = 1;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v48 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                if ((v39 & 1) == 0)
                {
                  v41 = *(*(&v47 + 1) + 8 * i);
                  v42 = [(HMAccessorySettingsAdapter *)self appendKeyPath:v23 withNextKey:v41];

                  v43 = [v22 accessorySettingGroupWithKeyPath:v42];
                  if (!v43)
                  {
                    v43 = [[HMAccessorySettingGroup alloc] initWithKeyPath:v41];
                    [v22 addGroup:v43];
                  }

                  v22 = v43;
                  v23 = v42;
                }

                v39 = 0;
              }

              v37 = [v35 countByEnumeratingWithState:&v47 objects:v51 count:16];
              v39 = 0;
            }

            while (v37);
          }

          v22 = v22;
          v32 = v22;
          v4 = v46;
          goto LABEL_30;
        }
      }

      v32 = 0;
LABEL_30:

      goto LABEL_31;
    }
  }

  v28 = objc_autoreleasePoolPush();
  v29 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v31;
    _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Root group or accessory settings object is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
  v32 = 0;
LABEL_31:

  v44 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)settingKeyFromKeyPath:(id)a3
{
  v3 = [(HMAccessorySettingsAdapter *)self createKeyPathArrayWithKeyPath:a3];
  if ([v3 hmf_isEmpty])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 lastObject];
  }

  return v4;
}

- (id)groupKeyArrayFromKeyPath:(id)a3
{
  v3 = [(HMAccessorySettingsAdapter *)self createKeyPathArrayWithKeyPath:a3];
  v4 = [v3 mutableCopy];
  if ([v4 hmf_isEmpty])
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    [v4 removeLastObject];
    v5 = v4;
  }

  return v5;
}

- (id)createKeyPathArrayWithKeyPath:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"."];
  if ([v5 count] > 1)
  {
    v10 = v5;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v4;
      v17 = 2048;
      v18 = [v5 count];
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@The keypath %@ needs at least 2 keys, but only has %lu component.", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)updateSettingsReflected:(BOOL)a3
{
  v5 = [(HMAccessorySettingsAdapter *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__HMAccessorySettingsAdapter_updateSettingsReflected___block_invoke;
  v6[3] = &unk_1E7549C80;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __54__HMAccessorySettingsAdapter_updateSettingsReflected___block_invoke(uint64_t a1)
{
  v1 = a1;
  v64 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() defaultSettings];
  v48 = v3;
  if (v3)
  {
    v4 = v3;
    [v3 allKeys];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v5 = v56 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v53 objects:v63 count:16];
    v51 = v5;
    if (v6)
    {
      v8 = v6;
      v9 = *v54;
      *&v7 = 138543874;
      v47 = v7;
      v50 = *v54;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v53 + 1) + 8 * i);
          v12 = [v4 objectForKey:{v11, v47}];
          if (v12)
          {
            v13 = [*(v1 + 32) accessorySettingWithKeyPath:v11];
            v14 = [v12 objectAtIndexedSubscript:5];
            v15 = v14;
            if (v13)
            {
              v16 = v14 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16 && [v14 BOOLValue])
            {
              context = objc_autoreleasePoolPush();
              v17 = *(v1 + 32);
              HMFGetOSLogHandle();
              v19 = v18 = v1;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v49 = HMFGetLogIdentifier();
                v20 = *(v18 + 40);
                v21 = HMFBooleanToString();
                *buf = v47;
                v58 = v49;
                v59 = 2112;
                v60 = v11;
                v61 = 2112;
                v62 = v21;
                v22 = v21;
                _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating setting %@ reflected to: %@", buf, 0x20u);

                v4 = v48;
              }

              objc_autoreleasePoolPop(context);
              [v13 updateReflected:*(v18 + 40)];
              v1 = v18;
              v9 = v50;
              v5 = v51;
            }
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v8);
    }

    v23 = *(v1 + 32);
    v24 = [objc_opt_class() selectedLanguageSettingKeyPath];
    v25 = [v23 accessorySettingWithKeyPath:v24];

    if (v25)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(v1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = *(v1 + 32);
        v31 = [objc_opt_class() selectedLanguageSettingKeyPath];
        v32 = *(v1 + 40);
        v33 = HMFBooleanToString();
        *buf = 138543874;
        v58 = v29;
        v59 = 2112;
        v60 = v31;
        v61 = 2112;
        v62 = v33;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Updating language setting %@ reflected to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      [v25 updateReflected:*(v1 + 40)];
    }

    v34 = objc_autoreleasePoolPush();
    v35 = *(v1 + 32);
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      v38 = *(v1 + 40);
      v39 = HMFBooleanToString();
      *buf = 138543618;
      v58 = v37;
      v59 = 2112;
      v60 = v39;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_INFO, "%{public}@Setting adapter needReflectSettings to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    [*(v1 + 32) setSettingsReflected:*(v1 + 40)];
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    v41 = v1;
    v42 = v40;
    v43 = *(v41 + 32);
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v45;
      _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_ERROR, "%{public}@Default settings do not exist", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)updateWithKeyPath:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([objc_opt_class() defaultSettingsContainsKeyPath:v8] & 1) == 0)
  {
    v11 = [objc_opt_class() languageKeyPaths];
    v12 = [v11 containsObject:v8];

    if ((v12 & 1) == 0)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v20;
        v38 = 2112;
        v39 = v8;
        v40 = 2112;
        v41 = v9;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error in adapter updating keypath: %@ value: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = MEMORY[0x1E696ABC0];
      v22 = @"Setting is not supported in the adapter";
      v23 = @"Only Boolean and Number Settings are supported";
      goto LABEL_21;
    }
  }

  if ([(HMAccessorySettingsAdapter *)self containerType]== 1)
  {
    v13 = [(HMAccessorySettingsAdapter *)self settingsContainerIdentifier];
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ([(HMAccessorySettingsAdapter *)self containerType]!= 2)
    {
      goto LABEL_18;
    }

    v14 = [(HMAccessorySettingsAdapter *)self settingsContainer];
    objc_opt_class();
    v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
    v16 = v15;

    if (v16)
    {
      v13 = [v16 targetAccessoryIdentifierBySerial];
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
LABEL_18:
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v29;
        v38 = 2112;
        v39 = v8;
        v40 = 2112;
        v41 = v9;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Error in updating keypath: %@ value: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v21 = MEMORY[0x1E696ABC0];
      v22 = @"Settings container is not supported in the adapter";
      v23 = @"Only accessory or media system is supported";
LABEL_21:
      v25 = [v21 hmfErrorWithCode:3 reason:v22 suggestion:v23];
      v10[2](v10, v25);
      goto LABEL_22;
    }
  }

  v24 = [(HMAccessorySettingsAdapter *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__HMAccessorySettingsAdapter_updateWithKeyPath_value_completionHandler___block_invoke;
  block[3] = &unk_1E754D7A8;
  block[4] = self;
  v32 = v8;
  v33 = v9;
  v34 = v13;
  v35 = v10;
  v25 = v13;
  dispatch_async(v24, block);

LABEL_22:
  v30 = *MEMORY[0x1E69E9840];
}

void __72__HMAccessorySettingsAdapter_updateWithKeyPath_value_completionHandler___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() languageKeyPaths];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 32) _transformAccessorySettingToLanguageSetting:*(a1 + 48)];
    if (v5)
    {
      v6 = [*(a1 + 32) accessorySettingsController];
      v7 = [*(a1 + 32) homeIdentifier];
      v8 = *(a1 + 56);
      v9 = *(a1 + 40);
      v10 = [v5 languageValue];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __72__HMAccessorySettingsAdapter_updateWithKeyPath_value_completionHandler___block_invoke_33;
      v50[3] = &unk_1E754D898;
      v50[4] = *(a1 + 32);
      v51 = v5;
      v52 = *(a1 + 64);
      [v6 updateAccessorySettingWithHomeIdentifier:v7 accessoryIdentifier:v8 keyPath:v9 settingValue:v10 completionHandler:v50];

LABEL_30:
      goto LABEL_31;
    }

    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v27;
      v55 = 2112;
      v56 = 0;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil setting transformation for setting = %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = *(a1 + 64);
    v29 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8];
    (*(v28 + 16))(v28, v29);
LABEL_29:

    goto LABEL_30;
  }

  if (![objc_opt_class() isKeyPathForBooleanSettingType:*(a1 + 40)])
  {
    v13 = *(a1 + 32);
    if ([objc_opt_class() isKeyPathForConstrainedNumberSettingType:*(a1 + 40)])
    {
      [*(a1 + 48) floatValue];
      v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      v14 = *(a1 + 32);
      v15 = [objc_opt_class() scaleUpNumberSettingValue:v5];
      v12 = -[HMSettingIntegerValue initWithIntegerValue:]([HMSettingIntegerValue alloc], "initWithIntegerValue:", [v15 integerValue]);
      [*(a1 + 32) updateNumberSettingWithKeyPath:*(a1 + 40) value:v5];
LABEL_8:

      goto LABEL_9;
    }

    v30 = *(a1 + 32);
    if ([objc_opt_class() isKeyPathForTapAssistanceSelectionSettingType:*(a1 + 40)])
    {
      v49 = -1;
      v31 = *(a1 + 48);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v5 = v32;

      if (v5 && [*(a1 + 32) transformSelectionToInteger:v5 integerValue:&v49])
      {
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v49];
        v33 = *(a1 + 32);
        v34 = [objc_opt_class() scaleUpNumberSettingValue:v15];
        v12 = -[HMSettingIntegerValue initWithIntegerValue:]([HMSettingIntegerValue alloc], "initWithIntegerValue:", [v34 integerValue]);
        [*(a1 + 32) updateTapAssistanceSelectionSettingWithKeyPath:*(a1 + 40) value:v5];

        goto LABEL_8;
      }

      v41 = objc_autoreleasePoolPush();
      v42 = *(a1 + 32);
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        v45 = *(a1 + 48);
        *buf = 138543618;
        v54 = v44;
        v55 = 2112;
        v56 = v45;
        _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_ERROR, "%{public}@Wrong update value for tap assistance: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
      v29 = [*(a1 + 32) accessoryContext];
      v40 = [v29 delegateCaller];
      v46 = *(a1 + 64);
      v47 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:3];
      [v40 callCompletion:v46 error:v47];
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = *(a1 + 32);
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        v39 = *(a1 + 40);
        *buf = 138543618;
        v54 = v38;
        v55 = 2112;
        v56 = v39;
        _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Keypath is of an unknown type that is not supported: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v5 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:3 reason:@"Keypath is of unknown setting type" suggestion:@"Only Boolean and Number Setting are supported"];
      v29 = [*(a1 + 32) accessoryContext];
      v40 = [v29 delegateCaller];
      [v40 callCompletion:*(a1 + 64) error:v5];
    }

    goto LABEL_29;
  }

  v11 = [*(a1 + 48) BOOLValue];
  v12 = [[HMSettingBooleanValue alloc] initWithBoolValue:v11];
  [*(a1 + 32) updateBooleanSettingWithKeyPath:*(a1 + 40) value:v11];
LABEL_9:
  v16 = [*(a1 + 32) accessorySettingsController];
  v17 = [*(a1 + 32) homeIdentifier];
  [v16 updateAccessorySettingWithHomeIdentifier:v17 accessoryIdentifier:*(a1 + 56) keyPath:*(a1 + 40) settingValue:v12 completionHandler:*(a1 + 64)];

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 32);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    *buf = 138543874;
    v54 = v21;
    v55 = 2112;
    v56 = v22;
    v57 = 2112;
    v58 = v23;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Update setting keypath: %@ value: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
LABEL_31:
  v48 = *MEMORY[0x1E69E9840];
}

void __72__HMAccessorySettingsAdapter_updateWithKeyPath_value_completionHandler___block_invoke_33(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) setSelectedLanguageSetting:*(a1 + 40)];
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() selectedLanguageSettingKeyPath];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v4 adapter:v5 didUpdateSettingKeyPaths:v7];

    v8 = *(a1 + 32);
    v9 = [v8 selectedLanguageSetting];
    v10 = [*(a1 + 32) availableLanguageSetting];
    [v8 _addOrUpdateLanguageSetting:v9 availableLanguagesSetting:v10];
  }

  v11 = [*(a1 + 32) accessoryContext];
  v12 = [v11 delegateCaller];
  [v12 callCompletion:*(a1 + 48) error:v3];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_transformAccessorySettingToLanguageSetting:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 title];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 componentsSeparatedByString:{@", "}];
      if ([v10 count] >= 3)
      {
        v12 = [v10 objectAtIndex:0];
        v13 = [v10 objectAtIndex:1];
        v14 = [v10 objectAtIndex:2];
        v15 = 0;
        if ([v10 count] >= 5)
        {
          v15 = [v10 objectAtIndex:4];
        }

        v16 = [[HMSettingLanguageValue alloc] initWithInputLanguageCode:v12 outputVoiceLanguageCode:v13 outputVoiceGenderCode:v14 voiceName:v15];
        v21 = v12;
        v17 = [HMLanguageSetting alloc];
        [objc_opt_class() selectedLanguageSettingKeyPath];
        v18 = v20 = v13;
        v11 = [(HMLanguageSetting *)v17 initWithKeyPath:v18 readOnly:0 languageValue:v16];
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

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_configureForMediaSystemWithCompletionHandler:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() defaultSettings];
  v6 = [v5 allKeys];

  v7 = [objc_opt_class() languageKeyPaths];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMAccessorySettingsAdapter *)v10 homeIdentifier];
    v14 = [(HMAccessorySettingsAdapter *)v10 settingsContainerIdentifier];
    *buf = 138544130;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Adapter subscribes to media system settings, home identifier: %@, media system identifier: %@, key paths: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  v15 = [(HMAccessorySettingsAdapter *)v10 accessoryDataSource];
  v16 = [(HMAccessorySettingsAdapter *)v10 homeIdentifier];
  v17 = [(HMAccessorySettingsAdapter *)v10 settingsContainerIdentifier];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__HMAccessorySettingsAdapter__configureForMediaSystemWithCompletionHandler___block_invoke;
  v21[3] = &unk_1E754D898;
  v21[4] = v10;
  v22 = v8;
  v23 = v4;
  v18 = v4;
  v19 = v8;
  [v15 subscribeToMediaSystemSettingsWithHomeIdentifier:v16 mediaSystemIdentifier:v17 keyPaths:v19 options:0 completionHandler:v21];

  v20 = *MEMORY[0x1E69E9840];
}

void __76__HMAccessorySettingsAdapter__configureForMediaSystemWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 40);
    v17 = 138543874;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v3;
    v10 = "%{public}@Failed to subscribe to media system settings with key paths: %@ :%@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v14;
    v10 = "%{public}@Successfully subscribed to media system settings with key paths: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
  }

  _os_log_impl(&dword_19BB39000, v11, v12, v10, &v17, v13);

LABEL_7:
  objc_autoreleasePoolPop(v4);
  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_configureForAccessoryWithCompletionHandler:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() defaultSettings];
  v6 = [v5 allKeys];

  v7 = [objc_opt_class() languageKeyPaths];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMAccessorySettingsAdapter *)v10 homeIdentifier];
    v14 = [(HMAccessorySettingsAdapter *)v10 settingsContainerIdentifier];
    *buf = 138544130;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Adapter subscribes to accessory settings, home identifier: %@, accessory identifier: %@, key paths: %@\a", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  v15 = [(HMAccessorySettingsAdapter *)v10 accessoryDataSource];
  v16 = [(HMAccessorySettingsAdapter *)v10 homeIdentifier];
  v17 = [(HMAccessorySettingsAdapter *)v10 settingsContainerIdentifier];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__HMAccessorySettingsAdapter__configureForAccessoryWithCompletionHandler___block_invoke;
  v21[3] = &unk_1E754D898;
  v21[4] = v10;
  v22 = v8;
  v23 = v4;
  v18 = v4;
  v19 = v8;
  [v15 subscribeToAccessorySettingsWithHomeIdentifier:v16 accessoryIdentifier:v17 keyPaths:v19 options:0 completionHandler:v21];

  v20 = *MEMORY[0x1E69E9840];
}

void __74__HMAccessorySettingsAdapter__configureForAccessoryWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 40);
    v17 = 138543874;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v3;
    v10 = "%{public}@Failed to subscribe to the accessory settings with key paths: %@ :%@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v14;
    v10 = "%{public}@Successfully subscribed to the accessory settings with key paths: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
  }

  _os_log_impl(&dword_19BB39000, v11, v12, v10, &v17, v13);

LABEL_7:
  objc_autoreleasePoolPop(v4);
  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)unconfigure
{
  v2 = [(HMAccessorySettingsAdapter *)self accessoryDataSource];
  [v2 resetSubscriptions];
}

- (void)configureWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySettingsAdapter *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__HMAccessorySettingsAdapter_configureWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E754E458;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__HMAccessorySettingsAdapter_configureWithCompletionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) createRootSettingGroup];
  v2 = *(a1 + 32);
  v3 = [v2 accessoryDataSource];
  [v3 setDelegate:v2];

  v4 = [*(a1 + 32) containerType];
  v5 = *(a1 + 32);
  if (v4 == 1)
  {
    v6 = *(a1 + 40);
    v7 = *MEMORY[0x1E69E9840];

    [v5 _configureForAccessoryWithCompletionHandler:v6];
  }

  else if ([v5 containerType] == 2)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *MEMORY[0x1E69E9840];

    [v8 _configureForMediaSystemWithCompletionHandler:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 32) settingsContainer];
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown settings container: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:3 reason:@"Unknown settings container" suggestion:@"Only accessory or media system can be container"];
      (*(v16 + 16))(v16, v17);
    }

    v18 = *MEMORY[0x1E69E9840];
  }
}

- (HMAccessorySettingsAdapter)initWithHomeIdentifier:(id)a3 dataSource:(id)a4 controller:(id)a5 workQueue:(id)a6 settingsContainer:(id)a7 containerIdentifier:(id)a8 containerType:(int64_t)a9 settingsControl:(id)a10 context:(id)a11
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v18 = a7;
  v27 = a8;
  v19 = a10;
  v20 = a11;
  v32.receiver = self;
  v32.super_class = HMAccessorySettingsAdapter;
  v21 = [(HMAccessorySettingsAdapter *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_homeIdentifier, a3);
    objc_storeStrong(&v22->_accessoryDataSource, a4);
    objc_storeStrong(&v22->_accessorySettingsController, a5);
    objc_storeStrong(&v22->_workQueue, a6);
    objc_storeWeak(&v22->_settingsContainer, v18);
    objc_storeWeak(&v22->_settingsControl, v19);
    objc_storeStrong(&v22->_accessoryContext, a11);
    accessorySettings = v22->_accessorySettings;
    v22->_accessorySettings = 0;

    rootGroup = v22->_rootGroup;
    v22->_rootGroup = 0;

    tapAssistanceSelections = v22->_tapAssistanceSelections;
    v22->_tapAssistanceSelections = 0;

    objc_storeStrong(&v22->_settingsContainerIdentifier, a8);
    v22->_containerType = a9;
    *&v22->_didReceiveFirstUpdateEvent = 0;
  }

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t64 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t64, &__block_literal_global_258);
  }

  v3 = logCategory__hmf_once_v65;

  return v3;
}

uint64_t __41__HMAccessorySettingsAdapter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v65;
  logCategory__hmf_once_v65 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)scaleDownNumberSettingValue:(id)a3
{
  [a3 floatValue];
  v5 = v4;
  v6 = MEMORY[0x1E696AD98];
  [a1 constraintSettingScaleFactor];
  *&v7 = v5 / *&v7;

  return [v6 numberWithFloat:v7];
}

+ (id)scaleUpNumberSettingValue:(id)a3
{
  [a3 floatValue];
  v5 = v4;
  v6 = MEMORY[0x1E696AD98];
  [a1 constraintSettingScaleFactor];
  *&v7 = v5 * *&v7;

  return [v6 numberWithFloat:v7];
}

+ (id)defaultSettingsAllKeyPaths
{
  v2 = [a1 defaultSettings];
  v3 = [v2 allKeys];

  return v3;
}

+ (id)defaultSettingsConstraintsForKeyPath:(id)a3
{
  v4 = a3;
  if ([a1 defaultSettingsContainsKeyPath:v4])
  {
    v5 = [a1 defaultSettings];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isKeyPathForTapAssistanceSelectionSettingType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 defaultSettings];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6 && [v6 count] == 6)
    {
      v7 = [v6 objectAtIndexedSubscript:4];
      v8 = [v7 isEqual:&unk_1F0EFD058];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isKeyPathForConstrainedNumberSettingType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 defaultSettings];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6 && [v6 count] == 6)
    {
      v7 = [v6 objectAtIndexedSubscript:4];
      v8 = [v7 isEqual:&unk_1F0EFD010];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isKeyPathForBooleanSettingType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 defaultSettings];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6 && [v6 count] == 6)
    {
      v7 = [v6 objectAtIndexedSubscript:4];
      v8 = [v7 isEqual:&unk_1F0EFCFF8];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)defaultSettingsContainsKeyPath:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSettings];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

+ (int64_t)itemIndexWithTapAssistanceSelectionItem:(id)a3
{
  v4 = a3;
  v5 = [a1 tapAssistanceSelectionTitles];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__HMAccessorySettingsAdapter_itemIndexWithTapAssistanceSelectionItem___block_invoke;
  v10[3] = &unk_1E75492B0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v10];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

uint64_t __70__HMAccessorySettingsAdapter_itemIndexWithTapAssistanceSelectionItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 title];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

+ (id)tapAssistanceSelectionItemWithIndex:(int64_t)a3
{
  if (a3 < 0 || ([a1 tapAssistanceSelectionTitles], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 <= a3))
  {
    v10 = 0;
  }

  else
  {
    v7 = [HMAccessorySelectionSettingItem alloc];
    v8 = [a1 tapAssistanceSelectionTitles];
    v9 = [v8 objectAtIndexedSubscript:a3];
    v10 = [(HMAccessorySelectionSettingItem *)v7 initWithTitle:v9];
  }

  return v10;
}

+ (NSArray)languageKeyPaths
{
  if (languageKeyPaths__hmf_once_t0 != -1)
  {
    dispatch_once(&languageKeyPaths__hmf_once_t0, &__block_literal_global_29899);
  }

  v3 = languageKeyPaths__hmf_once_v1;

  return v3;
}

uint64_t __46__HMAccessorySettingsAdapter_languageKeyPaths__block_invoke()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"root.siri.language", @"root.siri.availableLanguages", 0}];
  v1 = languageKeyPaths__hmf_once_v1;
  languageKeyPaths__hmf_once_v1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end