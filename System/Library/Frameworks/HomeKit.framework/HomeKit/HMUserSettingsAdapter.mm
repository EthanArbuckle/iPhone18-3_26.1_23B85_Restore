@interface HMUserSettingsAdapter
+ (id)logCategory;
+ (id)privateSettingsSchema;
+ (id)sharedSettingsSchema;
- (BOOL)mergeUsingPreOrder:(id)order withDictionary:(id)dictionary;
- (HMSettingsDelegate)delegate;
- (HMUser)user;
- (HMUserSettingsAdapter)initWithUser:(id)user settingsType:(int64_t)type;
- (id)createKeyPathArrayWithKeyPath:(id)path;
- (id)findOrAddUserSettingGroupWithKeyPath:(id)path;
- (id)groupKeyArrayFromKeyPath:(id)path;
- (id)settingKeyFromKeyPath:(id)path;
- (void)_notifyDelegateDidUpdateKeyPath:(id)path;
- (void)_notifyDelegateSettingsDidUpdate;
- (void)configureWithContext:(id)context;
- (void)createRootSettingGroup;
- (void)mergeWithDictionary:(id)dictionary;
- (void)updateValueForSetting:(id)setting value:(id)value completionHandler:(id)handler;
@end

@implementation HMUserSettingsAdapter

- (HMUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (HMSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_notifyDelegateSettingsDidUpdate
{
  v13 = *MEMORY[0x1E69E9840];
  context = [(HMUserSettingsAdapter *)self context];
  queue = [context queue];

  if (queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HMUserSettingsAdapter__notifyDelegateSettingsDidUpdate__block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Not notifying for updated settings due to nil queue", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __57__HMUserSettingsAdapter__notifyDelegateSettingsDidUpdate__block_invoke(uint64_t a1)
{
  location[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];

  if (v3)
  {
    objc_initWeak(location, *(a1 + 32));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__HMUserSettingsAdapter__notifyDelegateSettingsDidUpdate__block_invoke_2;
    v9[3] = &unk_1E754E540;
    objc_copyWeak(&v10, location);
    [v3 invokeBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updated settings", location, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __57__HMUserSettingsAdapter__notifyDelegateSettingsDidUpdate__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v4 settings];
    v10 = 138543874;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of did update settings: %@ delegate: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  if (objc_opt_respondsToSelector())
  {
    v8 = [v4 settings];
    [v2 settingsDidUpdate:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateDidUpdateKeyPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  context = [(HMUserSettingsAdapter *)self context];
  queue = [context queue];

  if (queue)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__HMUserSettingsAdapter__notifyDelegateDidUpdateKeyPath___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v12[4] = self;
    v13 = pathCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = pathCopy;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not notifying updated setting keypath: %@ due to nil queue", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __57__HMUserSettingsAdapter__notifyDelegateDidUpdateKeyPath___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];

  if (v3)
  {
    objc_initWeak(location, *(a1 + 32));
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__HMUserSettingsAdapter__notifyDelegateDidUpdateKeyPath___block_invoke_2;
    v10[3] = &unk_1E754D848;
    objc_copyWeak(&v12, location);
    v11 = *(a1 + 40);
    [v3 invokeBlock:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *location = 138543618;
      *&location[4] = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updated setting keypath: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __57__HMUserSettingsAdapter__notifyDelegateDidUpdateKeyPath___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = MEMORY[0x1E696AFB0];
    v5 = [WeakRetained user];
    v6 = [v5 uuid];
    v7 = [v4 hm_deriveUUIDFromBaseUUID:v6];

    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v9 settings];
      v13 = *(a1 + 32);
      v16 = 138544386;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings: %@ didUpdateForIdentifier: %@ keyPath: %@ delegate: %@", &v16, 0x34u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [v9 settings];
    [v3 settings:v14 didUpdateForIdentifier:v7 keyPath:*(a1 + 32)];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeUsingPreOrder:(id)order withDictionary:(id)dictionary
{
  v62 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  dictionaryCopy = dictionary;
  if (orderCopy)
  {
    user = [(HMUserSettingsAdapter *)self user];
    home = [user home];
    homeManager = [home homeManager];

    v38 = user;
    uuid = [user uuid];
    uUIDString = [uuid UUIDString];
    v40 = [@"Home.user.settings." stringByAppendingString:uUIDString];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v39 = orderCopy;
    settings = [orderCopy settings];
    v47 = [settings countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v47)
    {
      v45 = 0;
      v13 = 0;
      v46 = *v53;
      v43 = settings;
      selfCopy = self;
      v42 = dictionaryCopy;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v53 != v46)
          {
            objc_enumerationMutation(settings);
          }

          v15 = *(*(&v52 + 1) + 8 * i);
          keyPath = [v15 keyPath];
          v17 = [dictionaryCopy objectForKeyedSubscript:keyPath];
          if (v17)
          {
            value = [v15 value];
            v19 = HMFEqualObjects();

            if ((v19 & 1) == 0)
            {
              v20 = v15;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v20;
              }

              else
              {
                v21 = 0;
              }

              v22 = v21;

              if (v22)
              {
                if ((v45 & 1) == 0)
                {
                  [homeManager notifyDelegateOfBatchNotificationsStartWithReason:v40];
                }

                [v22 setValue:v17];
                v23 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v25 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  v26 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v58 = v26;
                  v59 = 2112;
                  v60 = v22;
                  _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Merged setting: %@", buf, 0x16u);

                  settings = v43;
                }

                objc_autoreleasePoolPop(v23);
                [(HMUserSettingsAdapter *)selfCopy2 _notifyDelegateDidUpdateKeyPath:keyPath];
                v45 = 1;
                v13 = 1;
              }

              else
              {
                v27 = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v29 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v30 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v58 = v30;
                  v59 = 2112;
                  v60 = v20;
                  _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Looks like we have non number setting. Need to handle that. %@", buf, 0x16u);

                  settings = v43;
                }

                objc_autoreleasePoolPop(v27);
                dictionaryCopy = v42;
              }

              self = selfCopy;
            }
          }
        }

        v47 = [settings countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v47);
    }

    else
    {
      v45 = 0;
      v13 = 0;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    orderCopy = v39;
    groups = [v39 groups];
    v32 = [groups countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v49;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v49 != v34)
          {
            objc_enumerationMutation(groups);
          }

          v13 |= [(HMUserSettingsAdapter *)self mergeUsingPreOrder:*(*(&v48 + 1) + 8 * j) withDictionary:dictionaryCopy];
        }

        v33 = [groups countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v33);
    }

    if (v45)
    {
      [homeManager notifyDelegateOfBatchNotificationsEndWithReason:v40];
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (void)mergeWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(HMUserSettingsAdapter *)self didEverSentOutSettingsDidUpdate])
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    [(HMUserSettingsAdapter *)self setDidEverSentOutSettingsDidUpdate:1];
  }

  rootGroup = [(HMUserSettingsAdapter *)self rootGroup];
  v7 = [(HMUserSettingsAdapter *)self mergeUsingPreOrder:rootGroup withDictionary:dictionaryCopy];

  if (v5 | v7)
  {

    [(HMUserSettingsAdapter *)self _notifyDelegateSettingsDidUpdate];
  }
}

- (void)updateValueForSetting:(id)setting value:(id)value completionHandler:(id)handler
{
  v76 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  valueCopy = value;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v69 = v14;
    v70 = 2112;
    v71 = settingCopy;
    v72 = 2112;
    v73 = valueCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Ask to update value for [%@] to [%@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMUserSettingsAdapter *)selfCopy context];
  if (!handlerCopy)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUserSettingsAdapter updateValueForSetting:value:completionHandler:]", @"completionHandler"];
    v49 = objc_autoreleasePoolPush();
    v50 = selfCopy;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543618;
      v69 = v52;
      v70 = 2112;
      v71 = v48;
      _os_log_impl(&dword_19BB39000, v51, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v49);
    v53 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v48 userInfo:0];
    objc_exception_throw(v53);
  }

  v16 = context;
  if (context)
  {
    user = [(HMUserSettingsAdapter *)selfCopy user];
    if (user)
    {
      if (([settingCopy properties] & 2) == 0)
      {
        delegateCaller = [v16 delegateCaller];
        v19 = MEMORY[0x1E696ABC0];
        v20 = @"User Setting is not writable";
        v21 = @"UserSetting is not writable";
        v22 = 48;
LABEL_19:
        delegateCaller3 = [v19 hmErrorWithCode:v22 description:v20 reason:v21 suggestion:0];
        [delegateCaller callCompletion:handlerCopy error:delegateCaller3];
        goto LABEL_20;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (valueCopy && (isKindOfClass & 1) != 0)
      {
        if ([settingCopy doesValueConformToConstraints:valueCopy])
        {
          value = [settingCopy value];
          v29 = HMFEqualObjects();

          if (v29)
          {
            delegateCaller = [v16 delegateCaller];
            [delegateCaller callCompletion:handlerCopy error:0];
          }

          else
          {
            delegateCaller = [[HMSettingValue alloc] initNumberSettingWithValue:valueCopy];
            v65 = 0;
            v36 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:delegateCaller requiringSecureCoding:1 error:&v65];
            v57 = v36;
            v58 = v65;
            if (v36)
            {
              v67[0] = v36;
              v66[0] = @"value";
              v66[1] = @"keyPath";
              keyPath = [settingCopy keyPath];
              v67[1] = keyPath;
              v66[2] = @"SettingTargetType";
              v54 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMUserSettingsAdapter type](selfCopy, "type")}];
              v67[2] = v54;
              v66[3] = @"kUserUUIDKey";
              uuid = [user uuid];
              uUIDString = [uuid UUIDString];
              v67[3] = uUIDString;
              delegateCaller2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:4];

              home = [user home];
              uuid2 = [home uuid];
              v59[0] = MEMORY[0x1E69E9820];
              v59[1] = 3221225472;
              v59[2] = __71__HMUserSettingsAdapter_updateValueForSetting_value_completionHandler___block_invoke;
              v59[3] = &unk_1E75470B0;
              v59[4] = selfCopy;
              v60 = user;
              v61 = settingCopy;
              v62 = valueCopy;
              v63 = v16;
              v64 = handlerCopy;
              [(_HMContext *)v63 sendMessage:uuid2 target:delegateCaller2 payload:v59 responseHandler:?];

              v42 = v57;
            }

            else
            {
              v43 = objc_autoreleasePoolPush();
              v44 = selfCopy;
              v45 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v46 = v56 = v43;
                *buf = 138544130;
                v69 = v46;
                v70 = 2112;
                v71 = valueCopy;
                v72 = 2112;
                v73 = settingCopy;
                v74 = 2112;
                v75 = v58;
                _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain encoded setting value %@ for setting %@. Error : %@", buf, 0x2Au);

                v43 = v56;
              }

              objc_autoreleasePoolPop(v43);
              delegateCaller2 = [v16 delegateCaller];
              v47 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Could not encode value" reason:@"Could not encode value" suggestion:0];
              [delegateCaller2 callCompletion:handlerCopy error:v47];

              v42 = 0;
            }
          }

          goto LABEL_21;
        }

        v32 = MEMORY[0x1E696AEC0];
        minimumValue = [settingCopy minimumValue];
        maximumValue = [settingCopy maximumValue];
        delegateCaller = [v32 stringWithFormat:@"Value should be between %@ & %@", minimumValue, maximumValue];

        delegateCaller3 = [v16 delegateCaller];
        v35 = [MEMORY[0x1E696ABC0] hmErrorWithCode:43 description:delegateCaller reason:delegateCaller suggestion:0];
        [delegateCaller3 callCompletion:handlerCopy error:v35];

LABEL_20:
LABEL_21:

        goto LABEL_22;
      }

      delegateCaller = [v16 delegateCaller];
      v19 = MEMORY[0x1E696ABC0];
      v20 = @"Either value is nil or not of type NSNumber";
      v22 = 43;
    }

    else
    {
      delegateCaller = [v16 delegateCaller];
      v19 = MEMORY[0x1E696ABC0];
      v20 = @"User object is nil";
      v22 = 20;
    }

    v21 = v20;
    goto LABEL_19;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = selfCopy;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543618;
    v69 = v26;
    v70 = 2080;
    v71 = "[HMUserSettingsAdapter updateValueForSetting:value:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  user = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(handlerCopy + 2))(handlerCopy, user);
LABEL_22:

  v31 = *MEMORY[0x1E69E9840];
}

void __71__HMUserSettingsAdapter_updateValueForSetting_value_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v26 = 138544130;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating of setting for user [%@] finished with : %@, error %@", &v26, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (!v5)
  {
    v12 = *(a1 + 48);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      [v14 setValue:*(a1 + 56)];
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v18;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Updated setting: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v5 = 0;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = *(a1 + 48);
        v26 = 138543618;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Looks like we have non number setting. Need to handle that. %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    }
  }

  v24 = [*(a1 + 64) delegateCaller];
  [v24 callCompletion:*(a1 + 72) error:v5];

  v25 = *MEMORY[0x1E69E9840];
}

- (id)settingKeyFromKeyPath:(id)path
{
  v3 = [(HMUserSettingsAdapter *)self createKeyPathArrayWithKeyPath:path];
  if ([v3 hmf_isEmpty])
  {
    lastObject = 0;
  }

  else
  {
    lastObject = [v3 lastObject];
  }

  return lastObject;
}

- (id)createKeyPathArrayWithKeyPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [pathCopy componentsSeparatedByString:@"."];
  if ([v5 count] > 1)
  {
    v11 = v5;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = pathCopy;
      v19 = 2048;
      v20 = [v5 count];
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@The keypath %@ needs at least 2 keys, but only has %lu component.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    firstObject = [v5 firstObject];
    v14 = firstObject;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)findOrAddUserSettingGroupWithKeyPath:(id)path
{
  v55 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  rootGroup = [(HMUserSettingsAdapter *)self rootGroup];

  if (!rootGroup)
  {
    v6 = [HMSettingGroup alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    firstObject = [pathCopy firstObject];
    v9 = [(HMSettingGroup *)v6 initWithIdentifier:uUID name:firstObject groups:MEMORY[0x1E695E0F0] settings:MEMORY[0x1E695E0F0]];
    [(HMUserSettingsAdapter *)self setRootGroup:v9];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = pathCopy;
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMUserSettingsAdapter type](selfCopy, "type")}];
      *buf = 138543618;
      v52 = v13;
      v53 = 2112;
      v54 = v15;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@User settings group created for : %@", buf, 0x16u);

      pathCopy = v14;
    }

    objc_autoreleasePoolPop(v10);
  }

  rootGroup2 = [(HMUserSettingsAdapter *)self rootGroup];

  if (rootGroup2)
  {
    rootGroup3 = [(HMUserSettingsAdapter *)self rootGroup];
    keyPath = [rootGroup3 keyPath];
    if ([pathCopy hmf_isEmpty])
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v23 = v22 = pathCopy;
        *buf = 138543362;
        v52 = v23;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Group key array cannot be empty.", buf, 0xCu);

        pathCopy = v22;
      }

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v29 = [pathCopy objectAtIndexedSubscript:0];
      v30 = [keyPath isEqual:v29];

      if (v30)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = pathCopy;
        obj = pathCopy;
        v31 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v47;
          v34 = 1;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v47 != v33)
              {
                objc_enumerationMutation(obj);
              }

              if ((v34 & 1) == 0)
              {
                v36 = *(*(&v46 + 1) + 8 * i);
                selfCopy3 = self;
                v38 = [(HMUserSettingsAdapter *)self appendKeyPath:keyPath withNextKey:v36];

                v39 = [rootGroup3 settingGroupWithKeyPath:v38];
                if (!v39)
                {
                  v40 = [HMSettingGroup alloc];
                  uUID2 = [MEMORY[0x1E696AFB0] UUID];
                  v39 = [(HMSettingGroup *)v40 initWithIdentifier:uUID2 name:v36 groups:MEMORY[0x1E695E0F0] settings:MEMORY[0x1E695E0F0]];

                  [rootGroup3 addGroup:v39];
                }

                keyPath = v38;
                rootGroup3 = v39;
                self = selfCopy3;
              }

              v34 = 0;
            }

            v32 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
            v34 = 0;
          }

          while (v32);
        }

        rootGroup3 = rootGroup3;
        v28 = rootGroup3;
        pathCopy = v44;
        goto LABEL_27;
      }
    }

    v28 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v27;
    _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Root group for user settings object is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
  v28 = 0;
LABEL_28:

  v42 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)groupKeyArrayFromKeyPath:(id)path
{
  v3 = [(HMUserSettingsAdapter *)self createKeyPathArrayWithKeyPath:path];
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

- (void)createRootSettingGroup
{
  v55 = *MEMORY[0x1E69E9840];
  rootGroup = [(HMUserSettingsAdapter *)self rootGroup];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (rootGroup)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v8;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Warning: Settings adapter root group has already been constructed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      user = [(HMUserSettingsAdapter *)selfCopy user];
      *buf = 138543618;
      v52 = v9;
      v53 = 2112;
      v54 = user;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating settings for user %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    user2 = [(HMUserSettingsAdapter *)selfCopy user];
    isCurrentUser = [user2 isCurrentUser];

    type = [(HMUserSettingsAdapter *)selfCopy type];
    if (type == 2)
    {
      sharedSettingsSchema = [objc_opt_class() sharedSettingsSchema];
    }

    else if (type == 1 && isCurrentUser)
    {
      sharedSettingsSchema = [objc_opt_class() privateSettingsSchema];
    }

    else
    {
      sharedSettingsSchema = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = sharedSettingsSchema;
    v44 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v44)
    {
      v43 = *v47;
      v15 = 3;
      if (!isCurrentUser)
      {
        v15 = 1;
      }

      v38 = v15;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v47 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v46 + 1) + 8 * i);
          keyPath = [v17 keyPath];
          v19 = [(HMUserSettingsAdapter *)selfCopy groupKeyArrayFromKeyPath:keyPath];
          v20 = [(HMUserSettingsAdapter *)selfCopy findOrAddUserSettingGroupWithKeyPath:v19];
          constraints = [v17 constraints];
          if ([constraints count] == 5)
          {
            v45 = [(HMUserSettingsAdapter *)selfCopy settingKeyFromKeyPath:keyPath];
            v22 = [constraints objectAtIndexedSubscript:0];
            [constraints objectAtIndexedSubscript:1];
            v23 = v40 = v20;
            v24 = [constraints objectAtIndexedSubscript:2];
            [constraints objectAtIndexedSubscript:3];
            v25 = v42 = v19;
            v41 = keyPath;
            v26 = [HMUserNumberSetting alloc];
            [MEMORY[0x1E696AFB0] UUID];
            v28 = v27 = selfCopy;
            v29 = [(HMNumberSetting *)v26 initWithIdentifier:v28 name:v45 type:2 value:v25 properties:v38 minimumValue:v22 maximumValue:v23 stepValue:v24];

            selfCopy = v27;
            [(HMSetting *)v29 setSettingManager:v27];
            v30 = v40;
            [v40 addSetting:v29];

            keyPath = v41;
            v19 = v42;
          }

          else
          {
            v31 = objc_autoreleasePoolPush();
            v32 = selfCopy;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = HMFGetLogIdentifier();
              *buf = 138543362;
              v52 = v34;
              _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_INFO, "%{public}@Only number settings are supported and the value array size must be 5", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v31);
            v30 = v20;
          }
        }

        v44 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v44);
    }

    v35 = [[HMSettings alloc] initWithSettingsOwner:selfCopy];
    settings = selfCopy->_settings;
    selfCopy->_settings = v35;
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)configureWithContext:(id)context
{
  contextCopy = context;
  [(HMUserSettingsAdapter *)self setContext:contextCopy];
  v4 = objc_autoreleasePoolPush();
  [(HMUserSettingsAdapter *)self createRootSettingGroup];
  objc_autoreleasePoolPop(v4);
}

- (HMUserSettingsAdapter)initWithUser:(id)user settingsType:(int64_t)type
{
  userCopy = user;
  v10.receiver = self;
  v10.super_class = HMUserSettingsAdapter;
  v7 = [(HMUserSettingsAdapter *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_user, userCopy);
    v8->_type = type;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24, &__block_literal_global_8551);
  }

  v3 = logCategory__hmf_once_v25;

  return v3;
}

uint64_t __36__HMUserSettingsAdapter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v25 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedSettingsSchema
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.allowExplicitContent" constraintArray:&unk_1F0EFDD68];
  v13[0] = v2;
  v3 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.allowiTunesAccount" constraintArray:&unk_1F0EFDD80];
  v13[1] = v3;
  v4 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.crossfadeEnabled" constraintArray:&unk_1F0EFDD98];
  v13[2] = v4;
  v5 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.crossfadeDuration" constraintArray:&unk_1F0EFDDB0];
  v13[3] = v5;
  v6 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.dolbyAtmos" constraintArray:&unk_1F0EFDDC8];
  v13[4] = v6;
  v7 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.lossless" constraintArray:&unk_1F0EFDDE0];
  v13[5] = v7;
  v8 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.music.playbackInfluencesForYou" constraintArray:&unk_1F0EFDDF8];
  v13[6] = v8;
  v9 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.siri.identifyVoice" constraintArray:&unk_1F0EFDE10];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)privateSettingsSchema
{
  v25[20] = *MEMORY[0x1E69E9840];
  v24 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.addSceneButtonPresentedCount" constraintArray:&unk_1F0EFDB88];
  v25[0] = v24;
  v23 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.completedSwitchingHomesOnboardingUI" constraintArray:&unk_1F0EFDBA0];
  v25[1] = v23;
  v22 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissed2024EnergyOnboarding" constraintArray:&unk_1F0EFDBB8];
  v25[2] = v22;
  v21 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedAccessCodeOnboarding" constraintArray:&unk_1F0EFDBD0];
  v25[3] = v21;
  v20 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedAccessoryAnalyticsOnboarding" constraintArray:&unk_1F0EFDBE8];
  v25[4] = v20;
  v19 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedAccessoryFirmwareUpdateOnboarding" constraintArray:&unk_1F0EFDC00];
  v25[5] = v19;
  v18 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedAnnounceOnboarding" constraintArray:&unk_1F0EFDC18];
  v25[6] = v18;
  v17 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedCameraRecordingOnboarding" constraintArray:&unk_1F0EFDC30];
  v25[7] = v17;
  v16 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedCameraRecordingSetupBanner" constraintArray:&unk_1F0EFDC48];
  v25[8] = v16;
  v15 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedCameraUpgradeOfferBanner" constraintArray:&unk_1F0EFDC60];
  v25[9] = v15;
  v14 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedHomeTheaterOnboarding" constraintArray:&unk_1F0EFDC78];
  v25[10] = v14;
  v2 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedIdentifyVoiceOnboarding" constraintArray:&unk_1F0EFDC90];
  v25[11] = v2;
  v3 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedIdentifyVoiceSetupBanner" constraintArray:&unk_1F0EFDCA8];
  v25[12] = v3;
  v4 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedLocationServicesOnboarding" constraintArray:&unk_1F0EFDCC0];
  v25[13] = v4;
  v5 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedNaturalLightingOnboarding" constraintArray:&unk_1F0EFDCD8];
  v25[14] = v5;
  v6 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedTVViewingProfileOnboarding" constraintArray:&unk_1F0EFDCF0];
  v25[15] = v6;
  v7 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedTVViewingProfileSetupBanner" constraintArray:&unk_1F0EFDD08];
  v25[16] = v7;
  v8 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedUserSplitMediaAccountWarning" constraintArray:&unk_1F0EFDD20];
  v25[17] = v8;
  v9 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedWalletKeyExpressModeOnboarding" constraintArray:&unk_1F0EFDD38];
  v25[18] = v9;
  v10 = [[_HMUserSettingEntry alloc] initWithKeyPath:@"root.home.dismissedWelcomeUI" constraintArray:&unk_1F0EFDD50];
  v25[19] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:20];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end