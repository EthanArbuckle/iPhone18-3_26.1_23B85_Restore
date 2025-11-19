@interface HMAccessorySettingGroup
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)isReflectedEqual:(id)a3;
- (HMAccessorySettingGroup)accessorySettingGroupWithKeyPath:(id)a3;
- (HMAccessorySettingGroup)group;
- (HMAccessorySettingGroup)init;
- (HMAccessorySettingGroup)initWithInternal:(id)a3;
- (HMAccessorySettingGroup)initWithKeyPath:(id)a3;
- (NSArray)groups;
- (NSArray)settings;
- (NSString)localizedTitle;
- (id)accessorySettingWithKeyPath:(id)a3;
- (id)keyPath;
- (unint64_t)hash;
- (void)_notifyClientOfAddedGroup:(id)a3;
- (void)_notifyClientOfAddedSetting:(id)a3;
- (void)_notifyClientOfRemovedGroup:(id)a3;
- (void)_notifyClientOfRemovedSetting:(id)a3;
- (void)_settingGroup:(id)a3 didAddSetting:(id)a4;
- (void)_settingGroup:(id)a3 didAddSettingGroup:(id)a4;
- (void)_settingGroup:(id)a3 didRemoveSetting:(id)a4;
- (void)_settingGroup:(id)a3 didRemoveSettingGroup:(id)a4;
- (void)addGroup:(id)a3;
- (void)addSetting:(id)a3;
- (void)mergeReflected:(id)a3;
- (void)removeGroup:(id)a3;
- (void)removeSetting:(id)a3;
@end

@implementation HMAccessorySettingGroup

void __50___HMAccessorySettingGroup_supportedGroupsClasses__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedGroupsClasses_supportedGroupsClasses;
  supportedGroupsClasses_supportedGroupsClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __52___HMAccessorySettingGroup_supportedSettingsClasses__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedSettingsClasses_supportedSettingsClasses;
  supportedSettingsClasses_supportedSettingsClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __39___HMAccessorySettingGroup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_38426;
  logCategory__hmf_once_v17_38426 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (HMAccessorySettingGroup)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

- (id)accessorySettingWithKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySettingGroup *)self settings];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__HMAccessorySettingGroup_accessorySettingWithKeyPath___block_invoke;
  v9[3] = &unk_1E754B680;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __55__HMAccessorySettingGroup_accessorySettingWithKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 keyPath];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (HMAccessorySettingGroup)accessorySettingGroupWithKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySettingGroup *)self groups];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__HMAccessorySettingGroup_accessorySettingGroupWithKeyPath___block_invoke;
  v9[3] = &unk_1E754B658;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __60__HMAccessorySettingGroup_accessorySettingGroupWithKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 keyPath];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)_settingGroup:(id)a3 didRemoveSettingGroup:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(HMAccessorySettingGroup *)self groups];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 internal];
        v13 = [v12 isEqual:v5];

        if (v13)
        {
          [(HMAccessorySettingGroup *)self removeGroup:v11];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_settingGroup:(id)a3 didAddSettingGroup:(id)a4
{
  v5 = a4;
  v6 = [[HMAccessorySettingGroup alloc] initWithInternal:v5];

  [(HMAccessorySettingGroup *)self addGroup:v6];
}

- (void)_settingGroup:(id)a3 didRemoveSetting:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(HMAccessorySettingGroup *)self settings];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 internal];
        v13 = [v12 isEqual:v5];

        if (v13)
        {
          [(HMAccessorySettingGroup *)self removeSetting:v11];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_settingGroup:(id)a3 didAddSetting:(id)a4
{
  v5 = [HMAccessorySetting settingForInternal:a4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v5 = [(HMAccessorySettingGroup *)self addSetting:v5];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_notifyClientOfRemovedGroup:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySettingGroup *)self internal];
  v6 = [v5 context];
  v7 = [v6 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__HMAccessorySettingGroup__notifyClientOfRemovedGroup___block_invoke;
  v9[3] = &unk_1E754E5C0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 invokeBlock:v9];
}

void __55__HMAccessorySettingGroup__notifyClientOfRemovedGroup___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of removed group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = @"group";
  v13 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v7 postNotificationName:@"HMAccessorySettingGroupRemovedNotification" object:v9 userInfo:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeGroup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_groups containsObject:v5])
    {
      [(NSMutableSet *)self->_groups removeObject:v5];
      [v5 setGroup:0];
      os_unfair_lock_unlock(&self->_lock);
      [(HMAccessorySettingGroup *)self _notifyClientOfRemovedGroup:v5];
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    v4 = v5;
  }
}

- (void)_notifyClientOfAddedGroup:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySettingGroup *)self internal];
  v6 = [v5 context];
  v7 = [v6 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__HMAccessorySettingGroup__notifyClientOfAddedGroup___block_invoke;
  v9[3] = &unk_1E754E5C0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 invokeBlock:v9];
}

void __53__HMAccessorySettingGroup__notifyClientOfAddedGroup___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of added group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = @"group";
  v13 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v7 postNotificationName:@"HMAccessorySettingGroupAddedNotification" object:v9 userInfo:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addGroup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_groups containsObject:v5]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableSet *)self->_groups addObject:v5];
      [v5 setGroup:self];
      os_unfair_lock_unlock(&self->_lock);
      [(HMAccessorySettingGroup *)self _notifyClientOfAddedGroup:v5];
    }

    v4 = v5;
  }
}

- (NSArray)groups
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_groups allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_notifyClientOfRemovedSetting:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySettingGroup *)self internal];
  v6 = [v5 context];
  v7 = [v6 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__HMAccessorySettingGroup__notifyClientOfRemovedSetting___block_invoke;
  v9[3] = &unk_1E754E5C0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 invokeBlock:v9];
}

void __57__HMAccessorySettingGroup__notifyClientOfRemovedSetting___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of removed setting: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = @"setting";
  v13 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v7 postNotificationName:@"HMAccessorySettingRemovedNotification" object:v9 userInfo:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeSetting:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_settings containsObject:v5])
    {
      [(NSMutableSet *)self->_settings removeObject:v5];
      [v5 setGroup:0];
      os_unfair_lock_unlock(&self->_lock);
      [(HMAccessorySettingGroup *)self _notifyClientOfRemovedSetting:v5];
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    v4 = v5;
  }
}

- (void)_notifyClientOfAddedSetting:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySettingGroup *)self internal];
  v6 = [v5 context];
  v7 = [v6 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__HMAccessorySettingGroup__notifyClientOfAddedSetting___block_invoke;
  v9[3] = &unk_1E754E5C0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 invokeBlock:v9];
}

void __55__HMAccessorySettingGroup__notifyClientOfAddedSetting___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of added setting: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = @"setting";
  v13 = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v7 postNotificationName:@"HMAccessorySettingAddedNotification" object:v9 userInfo:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addSetting:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_settings containsObject:v5]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableSet *)self->_settings addObject:v5];
      [v5 setGroup:self];
      os_unfair_lock_unlock(&self->_lock);
      [(HMAccessorySettingGroup *)self _notifyClientOfAddedSetting:v5];
    }

    v4 = v5;
  }
}

- (NSArray)settings
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_settings allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)keyPath
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(HMAccessorySettingGroup *)self group];
  v5 = [v4 keyPath];

  v6 = [(HMAccessorySettingGroup *)self internal];
  v7 = [v6 name];
  v8 = v7;
  if (v5)
  {
    v9 = [v5 stringByAppendingFormat:@".%@", v7];
  }

  else
  {
    v9 = [v7 copy];
  }

  v10 = v9;

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (void)mergeReflected:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v4 = [v24 groups];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(HMAccessorySettingGroup *)self groups];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 keyPath];
        v12 = [v4 hmf_firstObjectWithValue:v11 forKeyPath:@"keyPath"];

        if (v12)
        {
          [v10 mergeReflected:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v13 = [v24 settings];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [(HMAccessorySettingGroup *)self settings];
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * j);
        v20 = [v19 keyPath];
        v21 = [v13 hmf_firstObjectWithValue:v20 forKeyPath:@"keyPath"];

        if (v21)
        {
          v22 = [v19 isReflected];
          if (v22 != [v21 isReflected])
          {
            [v19 updateReflected:{objc_msgSend(v21, "isReflected")}];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)isReflectedEqual:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v26 = v4;
  v5 = [v4 groups];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [(HMAccessorySettingGroup *)self groups];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 keyPath];
        v13 = [v5 hmf_firstObjectWithValue:v12 forKeyPath:@"keyPath"];

        if (v13 && ![v11 isReflectedEqual:v13])
        {
LABEL_21:
          v22 = 0;
          goto LABEL_22;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v6 = [v26 settings];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = [(HMAccessorySettingGroup *)self settings];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    while (2)
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * j);
        v19 = [v18 keyPath];
        v20 = [v6 hmf_firstObjectWithValue:v19 forKeyPath:@"keyPath"];

        if (v20)
        {
          v21 = [v18 isReflected];
          if (v21 != [v20 isReflected])
          {

            goto LABEL_21;
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
      v22 = 1;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v22 = 1;
  }

LABEL_22:

  objc_autoreleasePoolPop(context);
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
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
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [(HMAccessorySettingGroup *)self keyPath];
    v8 = [(HMAccessorySettingGroup *)v6 keyPath];
    v9 = [v7 isEqualToString:v8];

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = [(HMAccessorySettingGroup *)self groups];
    v11 = [(HMAccessorySettingGroup *)v6 groups];
    v12 = [v10 isEqualToArray:v11];

    if (v12)
    {
      v13 = [(HMAccessorySettingGroup *)self settings];
      v14 = [(HMAccessorySettingGroup *)v6 settings];
      v15 = [v13 isEqualToArray:v14];
    }

    else
    {
LABEL_9:
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v2 = [(HMAccessorySettingGroup *)self internal];
  v3 = [v2 name];
  v4 = [v3 hash];

  return v4;
}

- (NSString)localizedTitle
{
  v2 = [(HMAccessorySettingGroup *)self keyPath];
  v3 = [HMAccessorySettings localizationKeyForKeyPath:v2];

  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedString:v3];

  return v5;
}

- (HMAccessorySettingGroup)initWithInternal:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v40.receiver = self;
    v40.super_class = HMAccessorySettingGroup;
    v6 = [(HMAccessorySettingGroup *)&v40 init];
    p_isa = &v6->super.super.isa;
    if (v6)
    {
      objc_storeStrong(&v6->_internal, a3);
      [v5 setDelegate:p_isa];
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = p_isa[8];
      p_isa[8] = v8;

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v10 = [v5 settings];
      v11 = [v10 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v37;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v37 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [HMAccessorySetting settingForInternal:*(*(&v36 + 1) + 8 * i)];
            v16 = v15;
            if (v15)
            {
              [v15 setGroup:p_isa];
              [p_isa[8] addObject:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v12);
      }

      v17 = [MEMORY[0x1E695DFA8] set];
      v18 = p_isa[9];
      p_isa[9] = v17;

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v19 = [v5 groups];
      v20 = [v19 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v33;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [[HMAccessorySettingGroup alloc] initWithInternal:*(*(&v32 + 1) + 8 * j)];
            v25 = v24;
            if (v24)
            {
              [(HMAccessorySettingGroup *)v24 setGroup:p_isa];
              [p_isa[9] addObject:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v21);
      }
    }

    self = p_isa;
    v26 = self;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v29;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Attempt to create setting group controller without internal object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v26;
}

- (HMAccessorySettingGroup)initWithKeyPath:(id)a3
{
  v4 = a3;
  v5 = [[_HMAccessorySettingGroup alloc] initWithName:v4];

  v6 = [(HMAccessorySettingGroup *)self initWithInternal:v5];
  return v6;
}

- (HMAccessorySettingGroup)init
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

+ (id)logCategory
{
  if (logCategory__hmf_once_t35 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t35, &__block_literal_global_212);
  }

  v3 = logCategory__hmf_once_v36;

  return v3;
}

uint64_t __38__HMAccessorySettingGroup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v36;
  logCategory__hmf_once_v36 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end