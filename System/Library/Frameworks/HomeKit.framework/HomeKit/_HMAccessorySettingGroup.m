@interface _HMAccessorySettingGroup
+ (id)logCategory;
+ (id)shortDescription;
+ (id)supportedGroupsClasses;
+ (id)supportedSettingsClasses;
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeGroups:(id)a3;
- (BOOL)mergeObject:(id)a3;
- (BOOL)mergeSettings:(id)a3;
- (HMAccessorySettings)accessorySettings;
- (NSArray)groups;
- (NSArray)settings;
- (_HMAccessorySettingGroup)init;
- (_HMAccessorySettingGroup)initWithCoder:(id)a3;
- (_HMAccessorySettingGroup)initWithName:(id)a3;
- (_HMAccessorySettingGroupDelegate)delegate;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)logIdentifier;
- (id)messageDestination;
- (id)shortDescription;
- (unint64_t)hash;
- (void)_unconfigure;
- (void)_unconfigureContext;
- (void)addGroup:(id)a3;
- (void)addSetting:(id)a3;
- (void)configureWithAccessorySettings:(id)a3 context:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)notifyDelegateOfAddedGroup:(id)a3;
- (void)notifyDelegateOfAddedSetting:(id)a3;
- (void)notifyDelegateOfRemovedGroup:(id)a3;
- (void)notifyDelegateOfRemovedSetting:(id)a3;
- (void)removeGroup:(id)a3;
- (void)removeSetting:(id)a3;
- (void)resetGroups;
- (void)resetSettings;
@end

@implementation _HMAccessorySettingGroup

- (HMAccessorySettings)accessorySettings
{
  WeakRetained = objc_loadWeakRetained(&self->_accessorySettings);

  return WeakRetained;
}

- (_HMAccessorySettingGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HMAccessorySettingGroup *)self identifier];
  [v4 encodeObject:v5 forKey:@"HM.identifier"];

  v6 = [(_HMAccessorySettingGroup *)self name];
  [v4 encodeObject:v6 forKey:@"HM.name"];

  v7 = [(_HMAccessorySettingGroup *)self settings];
  [v4 encodeObject:v7 forKey:@"HM.settings"];

  v8 = [(_HMAccessorySettingGroup *)self groups];
  [v4 encodeObject:v8 forKey:@"HM.groups"];
}

- (_HMAccessorySettingGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];
  v6 = [(_HMAccessorySettingGroup *)self initWithName:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = +[_HMAccessorySettingGroup supportedSettingsClasses];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"HM.settings"];

    if (v10)
    {
      v11 = [MEMORY[0x1E695DFA8] setWithArray:v10];
      settings = v6->_settings;
      v6->_settings = v11;
    }

    v13 = +[_HMAccessorySettingGroup supportedGroupsClasses];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"HM.groups"];

    if (v14)
    {
      v15 = [MEMORY[0x1E695DFA8] setWithArray:v14];
      groups = v6->_groups;
      v6->_groups = v15;
    }
  }

  return v6;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(_HMAccessorySettingGroup *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (BOOL)mergeGroups:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(_HMAccessorySettingGroup *)self groups];
  v7 = [v5 setWithArray:v6];

  v40 = v4;
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v41 = v7;
  v9 = [v7 mutableCopy];
  [v9 minusSet:v8];
  if ([v9 count])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v13;
      v59 = 2112;
      v60 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Removing groups: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v50 objects:v56 count:16];
    v16 = v15 != 0;
    if (v15)
    {
      v17 = v15;
      v18 = *v51;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(v14);
          }

          [(_HMAccessorySettingGroup *)v11 removeGroup:*(*(&v50 + 1) + 8 * i)];
        }

        v17 = [v14 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = [v8 mutableCopy];
  [v20 minusSet:v41];
  if ([v20 count])
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v24;
      v59 = 2112;
      v60 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Adding groups: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v25 = v20;
    v26 = [v25 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v47;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [(_HMAccessorySettingGroup *)v22 addGroup:*(*(&v46 + 1) + 8 * j)];
        }

        v27 = [v25 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v27);
      v16 = 1;
    }
  }

  v30 = [v41 mutableCopy];
  [v30 minusSet:v9];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v43;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v42 + 1) + 8 * k);
        v37 = [v8 member:v36];
        if (v37)
        {
          v16 |= [v36 mergeObject:v37];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v33);
  }

  v38 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

- (BOOL)mergeSettings:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(_HMAccessorySettingGroup *)self settings];
  v7 = [v5 setWithArray:v6];

  v40 = v4;
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v41 = v7;
  v9 = [v7 mutableCopy];
  [v9 minusSet:v8];
  if ([v9 count])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v13;
      v59 = 2112;
      v60 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Removing settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v50 objects:v56 count:16];
    v16 = v15 != 0;
    if (v15)
    {
      v17 = v15;
      v18 = *v51;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(v14);
          }

          [(_HMAccessorySettingGroup *)v11 removeSetting:*(*(&v50 + 1) + 8 * i)];
        }

        v17 = [v14 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = [v8 mutableCopy];
  [v20 minusSet:v41];
  if ([v20 count])
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v24;
      v59 = 2112;
      v60 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Adding settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v25 = v20;
    v26 = [v25 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v47;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [(_HMAccessorySettingGroup *)v22 addSetting:*(*(&v46 + 1) + 8 * j)];
        }

        v27 = [v25 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v27);
      v16 = 1;
    }
  }

  v30 = [v41 mutableCopy];
  [v30 minusSet:v9];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v43;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v42 + 1) + 8 * k);
        v37 = [v8 member:v36];
        if (v37)
        {
          v16 |= [v36 mergeObject:v37];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v33);
  }

  v38 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

- (BOOL)mergeObject:(id)a3
{
  v4 = a3;
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 settings];
    v9 = [(_HMAccessorySettingGroup *)self mergeSettings:v8];

    v10 = [v7 groups];
    v11 = [(_HMAccessorySettingGroup *)self mergeGroups:v10];

    v12 = v11 || v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)logIdentifier
{
  v2 = [(_HMAccessorySettingGroup *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)notifyDelegateOfRemovedGroup:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removed group: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(_HMAccessorySettingGroup *)v6 delegate];
  [v9 _settingGroup:v6 didRemoveSettingGroup:v4];

  v10 = *MEMORY[0x1E69E9840];
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
      os_unfair_lock_unlock(&self->_lock);
      [(_HMAccessorySettingGroup *)self notifyDelegateOfRemovedGroup:v5];
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)notifyDelegateOfAddedGroup:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Added group: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(_HMAccessorySettingGroup *)v6 delegate];
  [v9 _settingGroup:v6 didAddSettingGroup:v4];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addGroup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_groups containsObject:v8]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableSet *)self->_groups addObject:v8];
      v5 = [(_HMAccessorySettingGroup *)self context];
      if (v5)
      {
        v6 = [(_HMAccessorySettingGroup *)self accessorySettings];
        v7 = [(_HMAccessorySettingGroup *)self context];
        [v8 configureWithAccessorySettings:v6 context:v7];
      }

      os_unfair_lock_unlock(&self->_lock);
      [(_HMAccessorySettingGroup *)self notifyDelegateOfAddedGroup:v8];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)resetGroups
{
  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->_groups removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)groups
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_groups allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)notifyDelegateOfRemovedSetting:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removed setting: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(_HMAccessorySettingGroup *)v6 delegate];
  [v9 _settingGroup:v6 didRemoveSetting:v4];

  v10 = *MEMORY[0x1E69E9840];
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
      os_unfair_lock_unlock(&self->_lock);
      [(_HMAccessorySettingGroup *)self notifyDelegateOfRemovedSetting:v5];
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)notifyDelegateOfAddedSetting:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Added setting: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(_HMAccessorySettingGroup *)v6 delegate];
  [v9 _settingGroup:v6 didAddSetting:v4];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addSetting:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_settings containsObject:v7]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableSet *)self->_settings addObject:v7];
      v5 = [(_HMAccessorySettingGroup *)self context];
      if (v5)
      {
        v6 = [(_HMAccessorySettingGroup *)self accessorySettings];
        [v7 configureWithAccessorySettings:v6 context:v5];
      }

      os_unfair_lock_unlock(&self->_lock);
      [(_HMAccessorySettingGroup *)self notifyDelegateOfAddedSetting:v7];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)resetSettings
{
  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->_settings removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)settings
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_settings allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_unconfigure
{
  v33 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring accessorySettingGroup", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [(_HMAccessorySettingGroup *)v5 settings];
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v25 + 1) + 8 * v13++) unconfigure];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v11);
    }

    [(_HMAccessorySettingGroup *)v5 resetSettings];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [(_HMAccessorySettingGroup *)v5 groups];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v21 + 1) + 8 * v18++) _unconfigure];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    [(_HMAccessorySettingGroup *)v5 resetGroups];
    [(_HMAccessorySettingGroup *)v5 _unconfigureContext];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v19;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigureContext
{
  v3 = [(_HMAccessorySettingGroup *)self context];
  v4 = [v3 messageDispatcher];
  [v4 deregisterReceiver:self];

  context = self->_context;
  self->_context = 0;
}

- (void)configureWithAccessorySettings:(id)a3 context:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v11;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(_HMAccessorySettingGroup *)v9 setAccessorySettings:v6];
  [(_HMAccessorySettingGroup *)v9 setContext:v7];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [(_HMAccessorySettingGroup *)v9 settings];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v27 + 1) + 8 * v16++) configureWithAccessorySettings:v6 context:v7];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v14);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [(_HMAccessorySettingGroup *)v9 groups];
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v23 + 1) + 8 * v21++) configureWithAccessorySettings:v6 context:v7];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x1E69E9840];
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

  v8 = [(_HMAccessorySettingGroup *)self identifier];
  v9 = [v8 UUIDString];
  v10 = [(_HMAccessorySettingGroup *)self name];
  v11 = [v5 stringWithFormat:@"<%@%@, Identifier = %@, Name = %@>", v6, v7, v9, v10];

  if (v3)
  {
  }

  return v11;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(_HMAccessorySettingGroup *)self name];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
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
    if (v6)
    {
      v7 = [(_HMAccessorySettingGroup *)self identifier];
      v8 = [(_HMAccessorySettingGroup *)v6 identifier];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(_HMAccessorySettingGroup *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (_HMAccessorySettingGroup)initWithName:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v15.receiver = self;
    v15.super_class = _HMAccessorySettingGroup;
    v6 = [(_HMAccessorySettingGroup *)&v15 init];
    if (v6)
    {
      v7 = [MEMORY[0x1E696AFB0] UUID];
      identifier = v6->_identifier;
      v6->_identifier = v7;

      objc_storeStrong(&v6->_name, a3);
      v9 = [MEMORY[0x1E695DFA8] set];
      settings = v6->_settings;
      v6->_settings = v9;

      v11 = [MEMORY[0x1E695DFA8] set];
      groups = v6->_groups;
      v6->_groups = v11;
    }

    self = v6;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_HMAccessorySettingGroup)init
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

+ (id)supportedGroupsClasses
{
  if (supportedGroupsClasses_onceToken != -1)
  {
    dispatch_once(&supportedGroupsClasses_onceToken, &__block_literal_global_58_38420);
  }

  v3 = supportedGroupsClasses_supportedGroupsClasses;

  return v3;
}

+ (id)supportedSettingsClasses
{
  if (supportedSettingsClasses_onceToken != -1)
  {
    dispatch_once(&supportedSettingsClasses_onceToken, &__block_literal_global_54);
  }

  v3 = supportedSettingsClasses_supportedSettingsClasses;

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_38424 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_38424, &__block_literal_global_38425);
  }

  v3 = logCategory__hmf_once_v17_38426;

  return v3;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end