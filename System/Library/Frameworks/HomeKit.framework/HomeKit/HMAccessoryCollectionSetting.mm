@interface HMAccessoryCollectionSetting
+ (id)itemValueClassesForKeyPath:(id)path;
+ (void)removeItemValueClassesForKeyPath:(id)path;
+ (void)setItemValueClass:(Class)class forKeyPath:(id)path;
+ (void)setItemValueClasses:(id)classes forKeyPath:(id)path;
- (HMAccessoryCollectionSetting)initWithInternal:(id)internal;
- (HMAccessoryCollectionSetting)initWithKey:(id)key properties:(unint64_t)properties value:(id)value;
- (NSSet)itemValueClasses;
- (id)value;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_setting:(id)_setting didAddConstraint:(id)constraint;
- (void)_setting:(id)_setting didRemoveConstraint:(id)constraint;
- (void)addItem:(id)item completionHandler:(id)handler;
- (void)removeItem:(id)item completionHandler:(id)handler;
- (void)replaceItem:(id)item withItem:(id)withItem completionHandler:(id)handler;
- (void)replaceItems:(id)items withItems:(id)withItems completionHandler:(id)handler;
- (void)setItemValueClass:(Class)class;
- (void)setItemValueClasses:(id)classes;
- (void)updateValue:(id)value completionHandler:(id)handler;
@end

@implementation HMAccessoryCollectionSetting

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  value = [(HMAccessoryCollectionSetting *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = value;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 countByEnumeratingWithState:state objects:objects count:count];
  return v11;
}

- (void)_setting:(id)_setting didRemoveConstraint:(id)constraint
{
  v5 = [(HMAccessorySetting *)self internal:_setting];
  [(HMAccessorySetting *)self _settingDidUpdateValue:v5];
}

- (void)_setting:(id)_setting didAddConstraint:(id)constraint
{
  value = [constraint value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = value;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 setSetting:self];
  internal = [(HMAccessorySetting *)self internal];
  [(HMAccessorySetting *)self _settingDidUpdateValue:internal];
}

- (void)updateValue:(id)value completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  handlerCopy = handler;
  if (!valueCopy)
  {
    v11 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _HMFPreconditionFailure();
    goto LABEL_25;
  }

  v8 = valueCopy;
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

  if (([v10 hmf_objectsAreKindOfClass:objc_opt_class()] & 1) == 0)
  {
LABEL_25:
    _HMFPreconditionFailure();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v12)
  {
    v13 = *v39;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        [v15 setSetting:self];
        v37 = 0;
        v16 = __validateItem(self, v15, &v37);
        v17 = v37;
        v18 = v17;
        if ((v16 & 1) == 0)
        {
          v19 = objc_autoreleasePoolPush();
          selfCopy = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v22;
            v44 = 2112;
            v45 = v15;
            _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid item: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          internal = [(HMAccessorySetting *)selfCopy internal];
          context = [internal context];
          delegateCaller = [context delegateCaller];
          [delegateCaller callCompletion:handlerCopy error:v18];

          goto LABEL_23;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
  v26 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v29;
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Updating with items: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  objc_initWeak(buf, selfCopy2);
  v30 = __constraintsForItems(selfCopy2, v11);
  internal2 = [(HMAccessorySetting *)selfCopy2 internal];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __62__HMAccessoryCollectionSetting_updateValue_completionHandler___block_invoke;
  v33[3] = &unk_1E754D988;
  objc_copyWeak(&v36, buf);
  v11 = v11;
  v34 = v11;
  v35 = handlerCopy;
  [internal2 updateConstraints:v30 completionHandler:v33];

  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);
LABEL_23:

  v32 = *MEMORY[0x1E69E9840];
}

void __62__HMAccessoryCollectionSetting_updateValue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 32);
    v18 = 138543874;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v3;
    v11 = "%{public}@Failed to update items, %@, with error: %@";
    v12 = v8;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v9 = HMFGetLogIdentifier();
    v15 = *(a1 + 32);
    v18 = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = v15;
    v11 = "%{public}@Updated item: %@";
    v12 = v8;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 22;
  }

  _os_log_impl(&dword_19BB39000, v12, v13, v11, &v18, v14);

LABEL_7:
  objc_autoreleasePoolPop(v5);
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)value
{
  v22 = *MEMORY[0x1E69E9840];
  internal = [(HMAccessorySetting *)self internal];
  constraints = [internal constraints];
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(constraints, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = constraints;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 type] == 4)
        {
          value = [v10 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = value;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13)
          {
            [v4 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  array = [v4 array];

  v15 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)replaceItems:(id)items withItems:(id)withItems completionHandler:(id)handler
{
  v88 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  withItemsCopy = withItems;
  handlerCopy = handler;
  if (!itemsCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_44;
  }

  if (!withItemsCopy)
  {
LABEL_44:
    _HMFPreconditionFailure();
    goto LABEL_45;
  }

  v51 = itemsCopy;
  v9 = [itemsCopy mutableCopy];
  v52 = withItemsCopy;
  v54 = [withItemsCopy mutableCopy];
  v10 = [MEMORY[0x1E695DFA8] setWithArray:v9];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:v54];
  [v10 intersectSet:v11];

  if ([v10 count])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v80 = v15;
      v81 = 2112;
      v82 = v10;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Ignoring common items: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    allObjects = [v10 allObjects];
    [v9 removeObjectsInArray:allObjects];

    allObjects2 = [v10 allObjects];
    [v54 removeObjectsInArray:allObjects2];
  }

  v57 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  internal = [(HMAccessorySetting *)self internal];
  constraints = [internal constraints];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v9;
  v60 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v60)
  {
    v58 = *v76;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v76 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v75 + 1) + 8 * i);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v21 = constraints;
        v22 = [v21 countByEnumeratingWithState:&v71 objects:v86 count:16];
        if (v22)
        {
          v23 = *v72;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v72 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v71 + 1) + 8 * j);
              value = [v25 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = value;
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;

              if ([v20 isEqual:v28])
              {
                [v57 addObject:v25];

                goto LABEL_25;
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v71 objects:v86 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:
      }

      v60 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v60);
  }

  if (([v54 hmf_objectsAreKindOfClass:objc_opt_class()] & 1) == 0)
  {
LABEL_45:
    _HMFPreconditionFailure();
    __break(1u);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v29 = v54;
  v30 = [v29 countByEnumeratingWithState:&v67 objects:v85 count:16];
  if (v30)
  {
    v31 = *v68;
    while (2)
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v68 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v67 + 1) + 8 * k);
        [v33 setSetting:self];
        v66 = 0;
        v34 = __validateItem(self, v33, &v66);
        v35 = v66;
        v36 = v35;
        if ((v34 & 1) == 0)
        {
          v43 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = HMFGetLogIdentifier();
            *buf = 138543618;
            v80 = v46;
            v81 = 2112;
            v82 = v33;
            _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid item: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v43);
          internal2 = [(HMAccessorySetting *)selfCopy2 internal];
          context = [internal2 context];
          delegateCaller = [context delegateCaller];
          [delegateCaller callCompletion:handlerCopy error:v36];

          v37 = v29;
          goto LABEL_42;
        }
      }

      v30 = [v29 countByEnumeratingWithState:&v67 objects:v85 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v37 = __constraintsForItems(self, v29);
  v38 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = HMFGetLogIdentifier();
    *buf = 138543874;
    v80 = v41;
    v81 = 2112;
    v82 = obj;
    v83 = 2112;
    v84 = v29;
    _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Replacing items, %@, with items, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v38);
  objc_initWeak(buf, selfCopy3);
  internal3 = [(HMAccessorySetting *)selfCopy3 internal];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __73__HMAccessoryCollectionSetting_replaceItems_withItems_completionHandler___block_invoke;
  v61[3] = &unk_1E754D960;
  objc_copyWeak(&v65, buf);
  v62 = obj;
  v63 = v29;
  v64 = handlerCopy;
  [internal3 replaceConstraints:v57 withConstraints:v37 completionHandler:v61];

  objc_destroyWeak(&v65);
  objc_destroyWeak(buf);
LABEL_42:

  v50 = *MEMORY[0x1E69E9840];
}

void __73__HMAccessoryCollectionSetting_replaceItems_withItems_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138544130;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v3;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to replace items, %@, with items, %@, with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      *buf = 138543874;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Replaced items, %@, with items, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = *(a1 + 32);
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v22 + 1) + 8 * v19++) setSetting:{0, v22}];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, v3);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)replaceItem:(id)item withItem:(id)withItem completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  withItemCopy = withItem;
  handlerCopy = handler;
  if (!itemCopy)
  {
    _HMFPreconditionFailure();
LABEL_5:
    _HMFPreconditionFailure();
  }

  if (!withItemCopy)
  {
    goto LABEL_5;
  }

  v11 = handlerCopy;
  v16[0] = itemCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v15 = withItemCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  [(HMAccessoryCollectionSetting *)self replaceItems:v12 withItems:v13 completionHandler:v11];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeItem:(id)item completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  if (itemCopy)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    internal = [(HMAccessorySetting *)self internal];
    constraints = [internal constraints];

    v9 = [constraints countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v9)
    {
      v10 = *v35;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(constraints);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          value = [v12 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = value;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if ([itemCopy isEqual:v15])
          {
            v9 = v12;

            goto LABEL_15;
          }
        }

        v9 = [constraints countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v19;
      v40 = 2112;
      v41 = itemCopy;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Removing item: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    objc_initWeak(buf, selfCopy);
    objc_initWeak(&location, itemCopy);
    internal2 = [(HMAccessorySetting *)selfCopy internal];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __61__HMAccessoryCollectionSetting_removeItem_completionHandler___block_invoke;
    v28[3] = &unk_1E754D938;
    objc_copyWeak(&v31, buf);
    v29 = itemCopy;
    objc_copyWeak(&v32, &location);
    v30 = handlerCopy;
    [internal2 removeConstraint:v9 completionHandler:v28];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);

    v21 = handlerCopy;
  }

  else
  {
    internal3 = [(HMAccessorySetting *)self internal];
    context = [internal3 context];
    delegateCaller = [context delegateCaller];
    v25 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    v21 = handlerCopy;
    [delegateCaller callCompletion:handlerCopy error:v25];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __61__HMAccessoryCollectionSetting_removeItem_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v16 = 138543874;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to remove item, %@, with error: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed item: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v13 = objc_loadWeakRetained((a1 + 56));
    [v13 setSetting:0];
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v3);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addItem:(id)item completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  if (itemCopy)
  {
    [itemCopy setSetting:self];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v11;
      v35 = 2112;
      v36 = itemCopy;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Adding item: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v32 = 0;
    v12 = __validateItem(selfCopy, itemCopy, &v32);
    v13 = v32;
    if (v12)
    {
      internal2 = [[HMAccessorySettingConstraint alloc] initWithType:4 value:itemCopy];
      objc_initWeak(buf, selfCopy);
      objc_initWeak(&location, itemCopy);
      internal = [(HMAccessorySetting *)selfCopy internal];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __58__HMAccessoryCollectionSetting_addItem_completionHandler___block_invoke;
      v27[3] = &unk_1E754D8E8;
      objc_copyWeak(&v29, buf);
      objc_copyWeak(&v30, &location);
      v28 = handlerCopy;
      [internal addConstraint:internal2 completionHandler:v27];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v23;
        v35 = 2112;
        v36 = itemCopy;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid item: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      internal2 = [(HMAccessorySetting *)v21 internal];
      context = [(HMAccessorySettingConstraint *)internal2 context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:v13];
    }
  }

  else
  {
    internal3 = [(HMAccessorySetting *)self internal];
    context2 = [internal3 context];
    delegateCaller2 = [context2 delegateCaller];
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [delegateCaller2 callCompletion:handlerCopy error:v19];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __58__HMAccessoryCollectionSetting_addItem_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = objc_autoreleasePoolPush();
  v7 = WeakRetained;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v3)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v10;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v3;
    v11 = "%{public}@Failed to add item, %@, with error: %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v10 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v5;
    v11 = "%{public}@Added item: %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 22;
  }

  _os_log_impl(&dword_19BB39000, v12, v13, v11, &v17, v14);

LABEL_7:
  objc_autoreleasePoolPop(v6);
  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setItemValueClasses:(id)classes
{
  classesCopy = classes;
  keyPath = [(HMAccessorySetting *)self keyPath];
  [HMAccessoryCollectionSetting setItemValueClasses:classesCopy forKeyPath:keyPath];
}

- (void)setItemValueClass:(Class)class
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:class];
  [(HMAccessoryCollectionSetting *)self setItemValueClasses:v4];
}

- (NSSet)itemValueClasses
{
  keyPath = [(HMAccessorySetting *)self keyPath];
  v3 = [HMAccessoryCollectionSetting itemValueClassesForKeyPath:keyPath];

  return v3;
}

- (HMAccessoryCollectionSetting)initWithInternal:(id)internal
{
  v22 = *MEMORY[0x1E69E9840];
  internalCopy = internal;
  v20.receiver = self;
  v20.super_class = HMAccessoryCollectionSetting;
  v5 = [(HMAccessorySetting *)&v20 initWithInternal:internalCopy];
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    constraints = [internalCopy constraints];
    v7 = [constraints countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(constraints);
          }

          value = [*(*(&v16 + 1) + 8 * v10) value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = value;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          [v13 setSetting:v5];
          ++v10;
        }

        while (v8 != v10);
        v8 = [constraints countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (HMAccessoryCollectionSetting)initWithKey:(id)key properties:(unint64_t)properties value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if ([v12 hmf_objectsAreKindOfClass:objc_opt_class()])
    {
      goto LABEL_9;
    }

    _HMFPreconditionFailure();
LABEL_8:
    v12 = 0;
LABEL_9:
    v13 = __constraintsForItems(self, v12);
    v14 = [[_HMAccessorySetting alloc] initWithType:5 properties:properties name:keyCopy constraints:v13];
    v15 = [(HMAccessoryCollectionSetting *)self initWithInternal:v14];

    return v15;
  }

  v17 = _HMFPreconditionFailure();
  [(HMAccessoryCollectionSetting *)v17 removeItemValueClassesForKeyPath:v18, v19];
  return result;
}

+ (void)removeItemValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  v4 = +[_HMAccessoryCollectionSettingItemClassManager sharedManager];
  [v4 removeItemValueClassesForKeyPath:pathCopy];
}

+ (void)setItemValueClasses:(id)classes forKeyPath:(id)path
{
  pathCopy = path;
  classesCopy = classes;
  v7 = +[_HMAccessoryCollectionSettingItemClassManager sharedManager];
  [v7 setItemValueClasses:classesCopy forKeyPath:pathCopy];
}

+ (void)setItemValueClass:(Class)class forKeyPath:(id)path
{
  v6 = MEMORY[0x1E695DFD8];
  pathCopy = path;
  v8 = [v6 setWithObject:class];
  [self setItemValueClasses:v8 forKeyPath:pathCopy];
}

+ (id)itemValueClassesForKeyPath:(id)path
{
  pathCopy = path;
  v4 = +[_HMAccessoryCollectionSettingItemClassManager sharedManager];
  v5 = [v4 itemValueClassesForKeyPath:pathCopy];

  return v5;
}

@end